	.file	"libclamav_autoit.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function cli_scanautoit
.LCPI0_0:
	.word	24                              # 0x18
	.word	26                              # 0x1a
	.word	28                              # 0x1c
	.word	30                              # 0x1e
.LCPI0_1:
	.word	16                              # 0x10
	.word	18                              # 0x12
	.word	20                              # 0x14
	.word	22                              # 0x16
.LCPI0_2:
	.word	8                               # 0x8
	.word	10                              # 0xa
	.word	12                              # 0xc
	.word	14                              # 0xe
.LCPI0_3:
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	4                               # 0x4
	.word	6                               # 0x6
	.text
	.globl	cli_scanautoit
	.p2align	5
	.type	cli_scanautoit,@function
cli_scanautoit:                         # @cli_scanautoit
# %bb.0:
	addi.d	$sp, $sp, -2016
	st.d	$ra, $sp, 2008                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1944                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1936                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1928                  # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	move	$a1, $a2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 303
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $fp, .LBB0_4
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_5
# %bb.2:
	move	$fp, $a0
	ori	$a1, $zero, 448
	pcaddu18i	$ra, %call36(mkdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_6
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$s0, $zero, -118
	b	.LBB0_388
.LBB0_4:
	addi.w	$a0, $zero, -123
	b	.LBB0_389
.LBB0_5:
	addi.w	$a0, $zero, -118
	b	.LBB0_389
.LBB0_6:
	pcalau12i	$a0, %got_pc_hi20(cli_leavetemps_flag)
	ld.d	$s6, $a0, %got_pc_lo12(cli_leavetemps_flag)
	ld.bu	$a0, $s6, 0
	beqz	$a0, .LBB0_8
# %bb.7:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_8:
	ld.bu	$a0, $sp, 303
	ori	$a1, $zero, 54
	beq	$a0, $a1, .LBB0_12
# %bb.9:
	ori	$a1, $zero, 53
	bne	$a0, $a1, .LBB0_383
# %bb.10:
	addi.d	$s5, $sp, 1328
	addi.d	$a1, $sp, 1328
	ori	$a2, $zero, 16
	ori	$s2, $zero, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB0_385
# %bb.11:                               # %.preheader474.preheader.i
	move	$s7, $zero
	ld.bu	$a0, $sp, 1328
	ld.bu	$a1, $sp, 1329
	ld.bu	$a2, $sp, 1330
	ld.bu	$a3, $sp, 1331
	ld.bu	$a4, $sp, 1332
	ld.bu	$a5, $sp, 1333
	ld.bu	$a6, $sp, 1334
	ld.bu	$a7, $sp, 1335
	ld.bu	$t0, $sp, 1336
	ld.bu	$t1, $sp, 1337
	ld.bu	$t2, $sp, 1338
	ld.bu	$t3, $sp, 1339
	ld.bu	$t4, $sp, 1340
	ld.bu	$t5, $sp, 1341
	ld.bu	$t6, $sp, 1342
	ld.bu	$t7, $sp, 1343
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
	add.d	$a0, $a0, $t3
	add.d	$a0, $a0, $t4
	add.d	$a0, $a0, $t5
	add.d	$a0, $a0, $t6
	add.d	$a0, $a0, $t7
	lu12i.w	$a1, 2
	ori	$a2, $a1, 687
	add.w	$a0, $a0, $a2
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ori	$s8, $zero, 8
	lu12i.w	$a0, -201978
	ori	$a0, $a0, 3583
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	ori	$a0, $a1, 2492
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cli_debug_flag)
	ld.d	$s2, $a0, %got_pc_lo12(cli_debug_flag)
	lu12i.w	$a0, 10
	ori	$a0, $a0, 606
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ori	$a0, $a1, 2476
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	lu12i.w	$a0, 15
	ori	$a0, $a0, 606
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	lu12i.w	$a0, 4
	ori	$s4, $a0, 1450
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	lu12i.w	$a0, 12
	ori	$a0, $a0, 978
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	lu12i.w	$a0, 217860
	ori	$a0, $a0, 325
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s2, $sp, 256                   # 8-byte Folded Spill
	st.d	$zero, $sp, 200                 # 8-byte Folded Spill
	b	.LBB0_391
.LBB0_12:
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	ori	$s8, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$s7, $zero
	addi.d	$s3, $sp, 1328
	lu12i.w	$a0, 339108
	ori	$a0, $a0, 875
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	lu12i.w	$a1, 10
	ori	$a0, $a1, 3516
	st.d	$a0, $sp, 280                   # 8-byte Folded Spill
	lu12i.w	$a0, -5
	ori	$a0, $a0, 831
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ori	$a0, $a1, 3503
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	lu12i.w	$a0, 15
	ori	$a0, $a0, 2080
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	lu12i.w	$a0, 8
	ori	$a0, $a0, 1980
	st.d	$a0, $sp, 264                   # 8-byte Folded Spill
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1143
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	lu12i.w	$a0, 221956
	ori	$a0, $a0, 325
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 176                  # 16-byte Folded Spill
.LBB0_13:                               # %.outer.i22
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #       Child Loop BB0_29 Depth 3
                                        #       Child Loop BB0_33 Depth 3
                                        #       Child Loop BB0_50 Depth 3
                                        #       Child Loop BB0_54 Depth 3
                                        #     Child Loop BB0_74 Depth 2
                                        #       Child Loop BB0_240 Depth 3
                                        #       Child Loop BB0_169 Depth 3
                                        #       Child Loop BB0_174 Depth 3
                                        #     Child Loop BB0_279 Depth 2
                                        #       Child Loop BB0_352 Depth 3
                                        #       Child Loop BB0_356 Depth 3
                                        #       Child Loop BB0_300 Depth 3
                                        #       Child Loop BB0_309 Depth 3
                                        #       Child Loop BB0_313 Depth 3
	st.d	$s7, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a0, $s0, 32
	beqz	$a0, .LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_13 Depth=1
	ld.w	$a1, $a0, 4
	addi.w	$a0, $a1, -1
	bltu	$a0, $s7, .LBB0_647
.LBB0_15:                               # %.critedge.i24
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_29 Depth 3
                                        #       Child Loop BB0_33 Depth 3
                                        #       Child Loop BB0_50 Depth 3
                                        #       Child Loop BB0_54 Depth 3
	addi.d	$a1, $sp, 1328
	ori	$a2, $zero, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB0_385
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a0, $sp, 1328
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_646
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=2
	ld.w	$s5, $sp, 1332
	ld.d	$a0, $sp, 280                   # 8-byte Folded Reload
	xor	$s2, $s5, $a0
	slli.w	$s4, $s2, 1
	bltz	$s4, .LBB0_385
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a0, $zero, 299
	bltu	$a0, $s2, .LBB0_26
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $sp, 1328
	move	$a0, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s4, .LBB0_385
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	add.d	$a0, $s2, $a0
	bstrpick.d	$a2, $a0, 15, 0
	addi.d	$a0, $sp, 1328
	move	$a1, $s4
	pcaddu18i	$ra, %call36(LAME_decrypt)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB0_34
# %bb.21:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a0, $zero, 5
	bltu	$s4, $a0, .LBB0_27
# %bb.22:                               #   in Loop: Header=BB0_15 Depth=2
	ld.bu	$a0, $sp, 1328
	ori	$a1, $zero, 255
	bne	$a0, $a1, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	ld.bu	$a0, $sp, 1329
	ori	$a1, $zero, 254
	bne	$a0, $a1, .LBB0_27
# %bb.24:                               #   in Loop: Header=BB0_15 Depth=2
	ld.bu	$a0, $sp, 1330
	beqz	$a0, .LBB0_27
# %bb.25:                               # %.thread.i.i43
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.w	$s4, $s4, -2
	addi.d	$a0, $sp, 1330
	b	.LBB0_32
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	ori	$s2, $zero, 1
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	b	.LBB0_36
.LBB0_27:                               # %.lr.ph.preheader.i.i52
                                        #   in Loop: Header=BB0_15 Depth=2
	move	$a2, $zero
	move	$a0, $zero
	sltui	$a1, $s4, 20
	ori	$a3, $zero, 20
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $s4, $a1
	or	$a1, $a1, $a3
	b	.LBB0_29
	.p2align	4, , 16
.LBB0_28:                               #   in Loop: Header=BB0_29 Depth=3
	move	$a3, $zero
	addi.d	$a2, $a2, 2
	add.d	$a0, $a3, $a0
	bgeu	$a2, $a1, .LBB0_31
.LBB0_29:                               # %.lr.ph.i.i53
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a3, $a2, $s3
	beqz	$a3, .LBB0_28
# %bb.30:                               #   in Loop: Header=BB0_29 Depth=3
	add.d	$a3, $s3, $a2
	ld.bu	$a3, $a3, 1
	sltui	$a3, $a3, 1
	addi.d	$a2, $a2, 2
	add.d	$a0, $a3, $a0
	bltu	$a2, $a1, .LBB0_29
.LBB0_31:                               # %._crit_edge.loopexit.i.i59
                                        #   in Loop: Header=BB0_15 Depth=2
	slli.w	$a2, $a0, 2
	addi.d	$a0, $sp, 1328
	bltu	$a2, $a1, .LBB0_34
.LBB0_32:                               # %.lr.ph49.preheader.i.i44
                                        #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 2
	sltu	$a1, $a2, $s4
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $s4, $a1
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a1, $a1, -1
	srli.d	$a1, $a1, 1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $sp, 1328
	.p2align	4, , 16
.LBB0_33:                               # %.lr.ph49.i.i47
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$a3, $a0, 0
	st.b	$a3, $a2, 0
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 2
	bnez	$a1, .LBB0_33
.LBB0_34:                               # %u2a.exit.i51
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $sp, 1328
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$s2, $zero, 1
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	bne	$s5, $a0, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $sp, 1328
	ori	$a2, $zero, 19
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltu	$s2, $zero, $a0
.LBB0_36:                               #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $sp, 1328
	ori	$a2, $zero, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB0_385
# %bb.37:                               #   in Loop: Header=BB0_15 Depth=2
	st.d	$s2, $sp, 256                   # 8-byte Folded Spill
	ld.w	$a0, $sp, 1328
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	xor	$s2, $a0, $a1
	slli.w	$s4, $s2, 1
	bltz	$s4, .LBB0_385
# %bb.38:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a0, $zero, 299
	bltu	$a0, $s2, .LBB0_47
# %bb.39:                               #   in Loop: Header=BB0_15 Depth=2
	pcalau12i	$a0, %got_pc_hi20(cli_debug_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_debug_flag)
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB0_47
# %bb.40:                               #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $sp, 1328
	move	$a0, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s4, .LBB0_385
# %bb.41:                               #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a0, $s2, -2048
	addi.d	$a0, $a0, -903
	bstrpick.d	$a2, $a0, 15, 0
	addi.d	$a0, $sp, 1328
	move	$a1, $s4
	pcaddu18i	$ra, %call36(LAME_decrypt)
	jirl	$ra, $ra, 0
	stx.h	$zero, $s4, $s3
	beqz	$s4, .LBB0_55
# %bb.42:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a0, $zero, 5
	bltu	$s4, $a0, .LBB0_48
# %bb.43:                               #   in Loop: Header=BB0_15 Depth=2
	ld.bu	$a0, $sp, 1328
	ori	$a1, $zero, 255
	bne	$a0, $a1, .LBB0_48
# %bb.44:                               #   in Loop: Header=BB0_15 Depth=2
	ld.bu	$a0, $sp, 1329
	ori	$a1, $zero, 254
	bne	$a0, $a1, .LBB0_48
# %bb.45:                               #   in Loop: Header=BB0_15 Depth=2
	ld.bu	$a0, $sp, 1330
	beqz	$a0, .LBB0_48
# %bb.46:                               # %.thread.i352.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.w	$s4, $s4, -2
	addi.d	$a0, $sp, 1330
	b	.LBB0_53
.LBB0_47:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	b	.LBB0_56
.LBB0_48:                               # %.lr.ph.preheader.i333.i
                                        #   in Loop: Header=BB0_15 Depth=2
	move	$a2, $zero
	move	$a0, $zero
	sltui	$a1, $s4, 20
	ori	$a3, $zero, 20
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $s4, $a1
	or	$a1, $a1, $a3
	b	.LBB0_50
	.p2align	4, , 16
.LBB0_49:                               #   in Loop: Header=BB0_50 Depth=3
	move	$a3, $zero
	addi.d	$a2, $a2, 2
	add.d	$a0, $a3, $a0
	bgeu	$a2, $a1, .LBB0_52
.LBB0_50:                               # %.lr.ph.i335.i
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a3, $a2, $s3
	beqz	$a3, .LBB0_49
# %bb.51:                               #   in Loop: Header=BB0_50 Depth=3
	add.d	$a3, $s3, $a2
	ld.bu	$a3, $a3, 1
	sltui	$a3, $a3, 1
	addi.d	$a2, $a2, 2
	add.d	$a0, $a3, $a0
	bltu	$a2, $a1, .LBB0_50
.LBB0_52:                               # %._crit_edge.loopexit.i341.i
                                        #   in Loop: Header=BB0_15 Depth=2
	slli.w	$a2, $a0, 2
	addi.d	$a0, $sp, 1328
	bltu	$a2, $a1, .LBB0_55
.LBB0_53:                               # %.lr.ph49.preheader.i343.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 2
	sltu	$a1, $a2, $s4
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $s4, $a1
	or	$a1, $a1, $a2
	addi.d	$a1, $a1, -1
	srli.d	$a1, $a1, 1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $sp, 1328
	.p2align	4, , 16
.LBB0_54:                               # %.lr.ph49.i346.i
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_15 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$a3, $a0, 0
	st.b	$a3, $a2, 0
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 2
	bnez	$a1, .LBB0_54
.LBB0_55:                               # %u2a.exit353.i
                                        #   in Loop: Header=BB0_15 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	addi.d	$a1, $sp, 1328
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_56:                               #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $sp, 1328
	ori	$a2, $zero, 13
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 13
	bne	$a0, $a1, .LBB0_385
# %bb.57:                               #   in Loop: Header=BB0_15 Depth=2
	ld.w	$s4, $sp, 1329
	addi.w	$s5, $zero, -1
	bge	$s5, $s4, .LBB0_645
# %bb.58:                               #   in Loop: Header=BB0_15 Depth=2
	ld.bu	$s2, $sp, 1328
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	bne	$s4, $a0, .LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_15 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	bnez	$a0, .LBB0_14
	b	.LBB0_15
.LBB0_60:                               #   in Loop: Header=BB0_15 Depth=2
	xor	$s7, $s4, $a0
	move	$s4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	move	$a1, $s7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1333
	xor	$a1, $a0, $s4
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1337
	lu12i.w	$a1, 10
	ori	$a1, $a1, 1669
	xor	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	beqz	$a0, .LBB0_64
# %bb.61:                               #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a2, $a0, 24
	beqz	$a2, .LBB0_64
# %bb.62:                               #   in Loop: Header=BB0_15 Depth=2
	bgeu	$a2, $s7, .LBB0_64
# %bb.63:                               #   in Loop: Header=BB0_15 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $s7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $s0, 32
	bnez	$a0, .LBB0_14
	b	.LBB0_15
.LBB0_64:                               #   in Loop: Header=BB0_13 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.w	$a0, $zero, -114
	beqz	$s4, .LBB0_386
# %bb.65:                               #   in Loop: Header=BB0_13 Depth=1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	move	$a0, $s1
	move	$a1, $s4
	move	$a2, $s7
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s7, .LBB0_652
# %bb.66:                               #   in Loop: Header=BB0_13 Depth=1
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	move	$a0, $s4
	move	$a1, $s7
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(LAME_decrypt)
	jirl	$ra, $ra, 0
	bne	$s2, $s8, .LBB0_265
# %bb.67:                               #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_274
# %bb.68:                               #   in Loop: Header=BB0_13 Depth=1
	ld.w	$a0, $s4, 4
	revb.2w	$a1, $a0
	sltui	$a2, $a0, 1
	ld.d	$a3, $s0, 32
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s7, $a2
	or	$a1, $a2, $a1
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a1, 31, 0
	beqz	$a3, .LBB0_71
# %bb.69:                               #   in Loop: Header=BB0_13 Depth=1
	ld.d	$a1, $a3, 24
	beqz	$a1, .LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_13 Depth=1
	bltu	$a1, $a0, .LBB0_275
.LBB0_71:                               #   in Loop: Header=BB0_13 Depth=1
	st.d	$s6, $sp, 160                   # 8-byte Folded Spill
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_664
# %bb.72:                               #   in Loop: Header=BB0_13 Depth=1
	move	$s6, $a0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	addi.w	$s2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	st.d	$s2, $sp, 144                   # 8-byte Folded Spill
	beqz	$s2, .LBB0_358
# %bb.73:                               # %.lr.ph834.i
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$s8, $zero
	move	$t2, $zero
	move	$a2, $zero
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	add.d	$a0, $s6, $a0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$a4, $zero, 8
	st.d	$s4, $sp, 128                   # 8-byte Folded Spill
.LBB0_74:                               #   Parent Loop BB0_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_240 Depth 3
                                        #       Child Loop BB0_169 Depth 3
                                        #       Child Loop BB0_174 Depth 3
	bstrpick.d	$s4, $a2, 15, 0
	bnez	$t2, .LBB0_82
# %bb.75:                               #   in Loop: Header=BB0_74 Depth=2
	sub.w	$a0, $s7, $a4
	ori	$a1, $zero, 2
	bgeu	$a0, $a1, .LBB0_82
# %bb.76:                               # %.thread.i41
                                        #   in Loop: Header=BB0_74 Depth=2
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s2, $zero
.LBB0_77:                               #   in Loop: Header=BB0_74 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$t1, $zero
	ori	$a0, $zero, 1
	ori	$t0, $zero, 1
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	bstrpick.d	$a2, $s4, 15, 0
	ori	$a1, $zero, 1
	bltu	$a1, $s2, .LBB0_149
.LBB0_78:                               # %getbits.exit359.i
                                        #   in Loop: Header=BB0_74 Depth=2
	beqz	$a0, .LBB0_149
# %bb.79:                               #   in Loop: Header=BB0_74 Depth=2
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	st.d	$t1, $sp, 104                   # 8-byte Folded Spill
	move	$a7, $zero
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
.LBB0_80:                               # %.loopexit743.sink.split.i
                                        #   in Loop: Header=BB0_74 Depth=2
	st.d	$s2, $sp, 112                   # 8-byte Folded Spill
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	move	$s2, $a7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a7, $s2
	move	$a0, $zero
	ori	$t0, $zero, 1
.LBB0_81:                               # %.loopexit743.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	b	.LBB0_158
.LBB0_82:                               # %.preheader750.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=2
	bnez	$t2, .LBB0_84
# %bb.83:                               #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	slli.d	$a1, $a1, 8
	addi.w	$a4, $a4, 2
	or	$a0, $a1, $a0
	or	$s4, $a0, $s4
	ori	$t2, $zero, 16
.LBB0_84:                               # %getbits.exit.i33
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $s4, 1
	addi.w	$s2, $t2, -1
	bstrpick.d	$a2, $s4, 31, 15
	sub.w	$a1, $s7, $a4
	bnez	$a2, .LBB0_88
# %bb.85:                               #   in Loop: Header=BB0_74 Depth=2
	ori	$a2, $zero, 15
	bltu	$a2, $t2, .LBB0_91
# %bb.86:                               #   in Loop: Header=BB0_74 Depth=2
	ori	$a2, $zero, 2
	bgeu	$a1, $a2, .LBB0_91
# %bb.87:                               #   in Loop: Header=BB0_74 Depth=2
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	move	$s4, $a0
	b	.LBB0_77
.LBB0_88:                               #   in Loop: Header=BB0_74 Depth=2
	bstrpick.d	$a0, $a0, 15, 1
	slli.d	$a2, $a0, 1
	ori	$a0, $zero, 8
	bltu	$a0, $t2, .LBB0_94
# %bb.89:                               #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 2
	bgeu	$a1, $a0, .LBB0_94
# %bb.90:                               #   in Loop: Header=BB0_74 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	move	$s4, $a2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a2, $s4
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	move	$a0, $zero
	ori	$t0, $zero, 1
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	b	.LBB0_197
.LBB0_91:                               # %.preheader748.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=2
	beqz	$s2, .LBB0_97
# %bb.92:                               # %.preheader748.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 2
	bne	$t2, $a0, .LBB0_105
# %bb.93:                               #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ldx.bu	$a1, $a3, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a3, $a0
	slli.d	$a2, $s4, 2
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
	b	.LBB0_98
.LBB0_94:                               # %.preheader749.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	beqz	$s2, .LBB0_101
# %bb.95:                               # %.preheader749.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 2
	bne	$t2, $a0, .LBB0_108
# %bb.96:                               #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s4, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s4, $a0
	slli.d	$a2, $a2, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
	b	.LBB0_102
.LBB0_97:                               # %.preheader748.1.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
.LBB0_98:                               # %.preheader748.3.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_126
.LBB0_99:                               # %.preheader748.4.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_111
# %bb.100:                              # %.preheader748.5.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_127
.LBB0_101:                              # %.preheader749.1.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s4, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s4, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $a2
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
.LBB0_102:                              # %.preheader749.3.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_192
.LBB0_103:                              # %.preheader749.4.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_112
# %bb.104:                              # %.preheader749.5.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s4, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s4, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_193
.LBB0_105:                              # %.preheader748.2.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 4
	beq	$t2, $a0, .LBB0_113
# %bb.106:                              # %.preheader748.2.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $s4, 3
	ori	$a1, $zero, 3
	bne	$t2, $a1, .LBB0_125
# %bb.107:                              # %.preheader748.3.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_114
.LBB0_108:                              # %.preheader749.2.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 4
	beq	$t2, $a0, .LBB0_121
# %bb.109:                              # %.preheader749.2.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $a2, 2
	ori	$a1, $zero, 3
	bne	$t2, $a1, .LBB0_191
# %bb.110:                              # %.preheader749.3.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s4, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s4, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_122
.LBB0_111:                              #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -2
	b	.LBB0_115
.LBB0_112:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a1, -2
	b	.LBB0_123
.LBB0_113:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ldx.bu	$a1, $a3, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a3, $a0
	slli.d	$a2, $s4, 4
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_114:                              # %.preheader748.5.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
.LBB0_115:                              # %.preheader748.6.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_118
# %bb.116:                              # %.preheader748.6.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_120
# %bb.117:                              # %.preheader748.7.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_119
.LBB0_118:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_119:                              # %.preheader748.9.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_134
.LBB0_120:                              #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -2
	b	.LBB0_128
.LBB0_121:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s4, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s4, $a0
	slli.d	$a2, $a2, 3
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_122:                              # %.preheader749.5.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
.LBB0_123:                              # %.preheader749.6.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_194
# %bb.124:                              # %.preheader749.7.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s4, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s4, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 15
	b	.LBB0_196
.LBB0_125:                              #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $t2, -3
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_99
.LBB0_126:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_127:                              # %.preheader748.7.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
.LBB0_128:                              # %.preheader748.8.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_131
# %bb.129:                              # %.preheader748.8.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_133
# %bb.130:                              # %.preheader748.9.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_132
.LBB0_131:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_132:                              # %.preheader748.11.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_140
.LBB0_133:                              #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -2
.LBB0_134:                              # %.preheader748.10.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_137
# %bb.135:                              # %.preheader748.10.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_139
# %bb.136:                              # %.preheader748.11.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_138
.LBB0_137:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_138:                              # %.preheader748.13.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_146
.LBB0_139:                              #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -2
.LBB0_140:                              # %.preheader748.12.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_143
# %bb.141:                              # %.preheader748.12.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_145
# %bb.142:                              # %.preheader748.13.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_144
.LBB0_143:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_144:                              # %.preheader748.14.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_148
.LBB0_145:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a1, -2
.LBB0_146:                              # %.preheader748.14.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_148
# %bb.147:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_148:                              #   in Loop: Header=BB0_74 Depth=2
	move	$t0, $zero
	slli.d	$s4, $a0, 1
	addi.w	$s2, $a1, -1
	bstrpick.d	$t1, $a0, 31, 15
	sub.w	$a0, $s7, $a4
	sltui	$a0, $a0, 2
	bstrpick.d	$a2, $s4, 15, 0
	ori	$a1, $zero, 1
	bgeu	$a1, $s2, .LBB0_78
.LBB0_149:                              # %.preheader747.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=2
	beqz	$s2, .LBB0_152
# %bb.150:                              # %.preheader747.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $s2, -1
	slli.d	$a0, $a2, 1
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	bnez	$a1, .LBB0_153
# %bb.151:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s4, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s4, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
	b	.LBB0_153
.LBB0_152:                              # %.preheader747.1.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	ldx.bu	$a1, $s4, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s4, $a0
	slli.d	$a1, $a1, 8
	addi.w	$a4, $a4, 2
	or	$a0, $a1, $a0
	or	$a0, $a0, $a2
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 15
.LBB0_153:                              # %getbits.exit364.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a3, $a0, 1
	bstrpick.d	$a0, $a0, 31, 15
	addi.w	$s2, $a1, -1
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB0_157
# %bb.154:                              #   in Loop: Header=BB0_74 Depth=2
	bstrpick.d	$a0, $a3, 15, 1
	ori	$a7, $zero, 3
	slli.d	$a3, $a0, 1
	bltu	$a7, $a1, .LBB0_176
# %bb.155:                              #   in Loop: Header=BB0_74 Depth=2
	sub.w	$a0, $s7, $a4
	ori	$a2, $zero, 2
	bgeu	$a0, $a2, .LBB0_176
# %bb.156:                              #   in Loop: Header=BB0_74 Depth=2
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	st.d	$t1, $sp, 104                   # 8-byte Folded Spill
	b	.LBB0_80
.LBB0_157:                              #   in Loop: Header=BB0_74 Depth=2
	st.d	$s2, $sp, 112                   # 8-byte Folded Spill
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	move	$a7, $zero
.LBB0_158:                              # %.loopexit743.i
                                        #   in Loop: Header=BB0_74 Depth=2
	add.d	$a0, $a7, $a0
	addi.w	$a1, $a0, 2
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	bgeu	$a1, $a2, .LBB0_276
# %bb.159:                              #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a0, $a0, 3
	bstrpick.d	$a2, $s8, 31, 0
	add.d	$a3, $s6, $a2
	bstrpick.d	$a5, $a0, 31, 0
	add.d	$a3, $a3, $a5
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	bltu	$a4, $a3, .LBB0_276
# %bb.160:                              #   in Loop: Header=BB0_74 Depth=2
	bgeu	$s6, $a3, .LBB0_276
# %bb.161:                              #   in Loop: Header=BB0_74 Depth=2
	sub.w	$a4, $s8, $t1
	bstrpick.d	$a3, $a4, 31, 0
	add.d	$a6, $s6, $a3
	add.d	$a5, $a6, $a5
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	bltu	$a6, $a5, .LBB0_276
# %bb.162:                              #   in Loop: Header=BB0_74 Depth=2
	bgeu	$s6, $a5, .LBB0_276
# %bb.163:                              # %.lr.ph.i38.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a5, $zero, 32
	bgeu	$a0, $a5, .LBB0_165
# %bb.164:                              #   in Loop: Header=BB0_74 Depth=2
	move	$a1, $a0
	move	$a2, $s8
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	b	.LBB0_173
.LBB0_165:                              # %vector.scevcheck606
                                        #   in Loop: Header=BB0_74 Depth=2
	nor	$a5, $s8, $zero
	addi.w	$a5, $a5, 0
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	bltu	$a5, $a1, .LBB0_172
# %bb.166:                              # %vector.scevcheck606
                                        #   in Loop: Header=BB0_74 Depth=2
	nor	$a4, $a4, $zero
	bltu	$a4, $a1, .LBB0_172
# %bb.167:                              # %vector.scevcheck606
                                        #   in Loop: Header=BB0_74 Depth=2
	sub.d	$a1, $a2, $a3
	ori	$a2, $zero, 32
	bltu	$a1, $a2, .LBB0_172
# %bb.168:                              # %vector.ph609
                                        #   in Loop: Header=BB0_74 Depth=2
	move	$a3, $a0
	bstrins.d	$a3, $zero, 4, 0
	andi	$a1, $a0, 31
	add.w	$a2, $s8, $a3
	sub.w	$a4, $zero, $t1
	move	$a5, $a3
.LBB0_169:                              # %vector.body612
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a6, $a4, $s8
	bstrpick.d	$a6, $a6, 31, 0
	add.d	$a7, $s6, $a6
	vldx	$vr0, $s6, $a6
	vld	$vr1, $a7, 16
	bstrpick.d	$a6, $s8, 31, 0
	add.d	$a7, $s6, $a6
	vstx	$vr0, $s6, $a6
	vst	$vr1, $a7, 16
	addi.w	$a5, $a5, -32
	addi.w	$s8, $s8, 32
	bnez	$a5, .LBB0_169
# %bb.170:                              # %middle.block616
                                        #   in Loop: Header=BB0_74 Depth=2
	bne	$a0, $a3, .LBB0_173
# %bb.171:                              #   in Loop: Header=BB0_74 Depth=2
	move	$s8, $a2
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	b	.LBB0_175
.LBB0_172:                              #   in Loop: Header=BB0_74 Depth=2
	move	$a1, $a0
	move	$a2, $s8
.LBB0_173:                              # %.lr.ph.i38.preheader670
                                        #   in Loop: Header=BB0_74 Depth=2
	sub.w	$a0, $zero, $t1
	move	$s8, $a2
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
.LBB0_174:                              # %.lr.ph.i38
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $a0, $s8
	bstrpick.d	$a2, $a2, 31, 0
	ldx.b	$a2, $s6, $a2
	addi.w	$a1, $a1, -1
	bstrpick.d	$a3, $s8, 31, 0
	stx.b	$a2, $s6, $a3
	addi.w	$s8, $s8, 1
	bnez	$a1, .LBB0_174
.LBB0_175:                              #   in Loop: Header=BB0_74 Depth=2
	ld.d	$s2, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	b	.LBB0_198
.LBB0_176:                              # %.preheader746.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=2
	beqz	$s2, .LBB0_179
# %bb.177:                              # %.preheader746.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB0_181
# %bb.178:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s4, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s4, $a0
	slli.d	$a2, $a3, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
	b	.LBB0_180
.LBB0_179:                              # %.preheader746.1.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s4, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s4, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $a3
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
.LBB0_180:                              # %.preheader746.2.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_183
.LBB0_181:                              # %.preheader746.2.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -3
	slli.d	$a0, $a3, 2
	bnez	$a1, .LBB0_183
# %bb.182:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s4, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s4, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_183:                              # %getbits.exit369.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a3, $a0, 1
	addi.w	$s2, $a1, -1
	bstrpick.d	$a0, $a0, 31, 15
	ori	$a7, $zero, 3
	ori	$a2, $zero, 7
	bne	$a0, $a2, .LBB0_187
# %bb.184:                              #   in Loop: Header=BB0_74 Depth=2
	bstrpick.d	$a0, $a3, 15, 1
	slli.d	$a3, $a0, 1
	ori	$a0, $zero, 5
	st.d	$t1, $sp, 104                   # 8-byte Folded Spill
	bltu	$a0, $a1, .LBB0_188
# %bb.185:                              #   in Loop: Header=BB0_74 Depth=2
	sub.w	$a0, $s7, $a4
	ori	$a7, $zero, 10
	ori	$a2, $zero, 2
	bgeu	$a0, $a2, .LBB0_188
# %bb.186:                              #   in Loop: Header=BB0_74 Depth=2
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	b	.LBB0_80
.LBB0_187:                              #   in Loop: Header=BB0_74 Depth=2
	st.d	$s2, $sp, 112                   # 8-byte Folded Spill
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	b	.LBB0_158
.LBB0_188:                              # %.preheader745.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=2
	move	$a5, $t0
	beqz	$s2, .LBB0_200
# %bb.189:                              # %.preheader745.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB0_203
# %bb.190:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s4, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s4, $a0
	slli.d	$a2, $a3, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
	b	.LBB0_201
.LBB0_191:                              #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $t2, -3
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_103
.LBB0_192:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s4, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s4, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_193:                              # %.preheader749.6.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
.LBB0_194:                              # %.preheader749.7.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -1
	slli.d	$a0, $a0, 1
	bnez	$a1, .LBB0_196
# %bb.195:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s4, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s4, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_196:                              #   in Loop: Header=BB0_74 Depth=2
	move	$t0, $zero
	slli.d	$a2, $a0, 1
	addi.w	$s2, $a1, -1
	bstrpick.d	$a0, $a0, 31, 15
.LBB0_197:                              # %getbits.exit389.i
                                        #   in Loop: Header=BB0_74 Depth=2
	bstrpick.d	$a1, $s8, 31, 0
	stx.b	$a0, $s6, $a1
	addi.w	$s8, $s8, 1
	move	$t2, $s2
	ld.d	$s2, $sp, 256                   # 8-byte Folded Reload
.LBB0_198:                              # %.loopexit.i34
                                        #   in Loop: Header=BB0_74 Depth=2
	bnez	$t0, .LBB0_360
# %bb.199:                              # %.loopexit.i34
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	bltu	$s8, $a0, .LBB0_74
	b	.LBB0_360
.LBB0_200:                              # %.preheader745.1.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s4, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s4, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $a3
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
.LBB0_201:                              # %.preheader745.3.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_209
.LBB0_202:                              #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
	b	.LBB0_209
.LBB0_203:                              # %.preheader745.2.i
                                        #   in Loop: Header=BB0_74 Depth=2
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	ori	$a0, $zero, 4
	beq	$a1, $a0, .LBB0_206
# %bb.204:                              # %.preheader745.2.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $a3, 2
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_208
# %bb.205:                              # %.preheader745.3.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_207
.LBB0_206:                              #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	slli.d	$a2, $a3, 3
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_207:                              # %.preheader745.4.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	b	.LBB0_209
.LBB0_208:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a1, -3
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	beqz	$a1, .LBB0_202
.LBB0_209:                              # %getbits.exit374.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a3, $a0, 1
	addi.w	$s2, $a1, -1
	bstrpick.d	$a0, $a0, 31, 15
	ori	$a7, $zero, 10
	ori	$a2, $zero, 31
	bne	$a0, $a2, .LBB0_213
# %bb.210:                              #   in Loop: Header=BB0_74 Depth=2
	bstrpick.d	$a0, $a3, 15, 1
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ori	$a0, $zero, 8
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	bltu	$a0, $a1, .LBB0_214
# %bb.211:                              #   in Loop: Header=BB0_74 Depth=2
	sub.w	$a0, $s7, $a4
	ori	$a2, $zero, 2
	bgeu	$a0, $a2, .LBB0_214
# %bb.212:                              #   in Loop: Header=BB0_74 Depth=2
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	ori	$a7, $zero, 41
	b	.LBB0_80
.LBB0_213:                              #   in Loop: Header=BB0_74 Depth=2
	st.d	$s2, $sp, 112                   # 8-byte Folded Spill
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	move	$t0, $a5
	b	.LBB0_81
.LBB0_214:                              # %.preheader744.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=2
	beqz	$s2, .LBB0_217
# %bb.215:                              # %.preheader744.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB0_221
# %bb.216:                              #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
	b	.LBB0_218
.LBB0_217:                              # %.preheader744.1.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	or	$a0, $a0, $a1
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
.LBB0_218:                              # %.preheader744.3.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_230
.LBB0_219:                              # %.preheader744.4.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_224
# %bb.220:                              # %.preheader744.5.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_231
.LBB0_221:                              # %.preheader744.2.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 4
	beq	$a1, $a0, .LBB0_225
# %bb.222:                              # %.preheader744.2.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_229
# %bb.223:                              # %.preheader744.3.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_226
.LBB0_224:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a1, -2
	b	.LBB0_227
.LBB0_225:                              #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 3
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_226:                              # %.preheader744.5.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
.LBB0_227:                              # %.preheader744.6.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_232
# %bb.228:                              # %.preheader744.7.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 15
	b	.LBB0_234
.LBB0_229:                              #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -3
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_219
.LBB0_230:                              #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_231:                              # %.preheader744.6.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
.LBB0_232:                              # %.preheader744.7.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -1
	slli.d	$a0, $a0, 1
	bnez	$a1, .LBB0_234
# %bb.233:                              #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_234:                              # %getbits.exit379.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a2, $a0, 1
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	addi.w	$a2, $a1, -1
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 15
	ori	$a2, $zero, 255
	bne	$a0, $a2, .LBB0_238
# %bb.235:                              # %.preheader742.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 15, 1
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ori	$a0, $zero, 8
	bltu	$a0, $a1, .LBB0_239
# %bb.236:                              # %.preheader742.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	sub.w	$a0, $s7, $a0
	ori	$a1, $zero, 2
	bgeu	$a0, $a1, .LBB0_239
# %bb.237:                              #   in Loop: Header=BB0_74 Depth=2
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ori	$a7, $zero, 296
	b	.LBB0_80
.LBB0_238:                              #   in Loop: Header=BB0_74 Depth=2
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	move	$t0, $a5
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	ori	$a7, $zero, 41
	b	.LBB0_158
.LBB0_239:                              # %.preheader.i39.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a7, $zero, 296
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
.LBB0_240:                              # %.preheader.i39
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ori	$a0, $zero, 1
	beq	$s2, $a0, .LBB0_243
# %bb.241:                              # %.preheader.i39
                                        #   in Loop: Header=BB0_240 Depth=3
	bnez	$s2, .LBB0_247
# %bb.242:                              # %.thread1081.i
                                        #   in Loop: Header=BB0_240 Depth=3
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s4, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s4, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	or	$a0, $a0, $a1
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_244
.LBB0_243:                              #   in Loop: Header=BB0_240 Depth=3
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s4, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s4, $a0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_244:                              # %.thread172
                                        #   in Loop: Header=BB0_240 Depth=3
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_256
.LBB0_245:                              #   in Loop: Header=BB0_240 Depth=3
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_250
# %bb.246:                              # %.thread1100.i
                                        #   in Loop: Header=BB0_240 Depth=3
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_257
.LBB0_247:                              #   in Loop: Header=BB0_240 Depth=3
	ori	$a0, $zero, 3
	beq	$s2, $a0, .LBB0_251
# %bb.248:                              #   in Loop: Header=BB0_240 Depth=3
	move	$a2, $s2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	ori	$a1, $zero, 2
	bne	$s2, $a1, .LBB0_255
# %bb.249:                              # %.thread1090.i
                                        #   in Loop: Header=BB0_240 Depth=3
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_252
.LBB0_250:                              #   in Loop: Header=BB0_240 Depth=3
	addi.d	$a1, $a1, -2
	b	.LBB0_253
.LBB0_251:                              #   in Loop: Header=BB0_240 Depth=3
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 3
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_252:                              # %.thread178
                                        #   in Loop: Header=BB0_240 Depth=3
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
.LBB0_253:                              #   in Loop: Header=BB0_240 Depth=3
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_258
# %bb.254:                              # %.thread1110.i
                                        #   in Loop: Header=BB0_240 Depth=3
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	ldx.bu	$a2, $s4, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s4, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 15
	b	.LBB0_261
.LBB0_255:                              #   in Loop: Header=BB0_240 Depth=3
	addi.w	$a1, $a2, -2
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_245
.LBB0_256:                              #   in Loop: Header=BB0_240 Depth=3
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_257:                              # %.thread1106.i
                                        #   in Loop: Header=BB0_240 Depth=3
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
.LBB0_258:                              #   in Loop: Header=BB0_240 Depth=3
	addi.w	$a1, $a1, -1
	slli.d	$a0, $a0, 1
	beqz	$a1, .LBB0_260
# %bb.259:                              #   in Loop: Header=BB0_240 Depth=3
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	b	.LBB0_261
.LBB0_260:                              #   in Loop: Header=BB0_240 Depth=3
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	ldx.bu	$a2, $s4, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s4, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_261:                              # %getbits.exit384.i
                                        #   in Loop: Header=BB0_240 Depth=3
	slli.d	$a3, $a0, 1
	bstrpick.d	$a0, $a0, 31, 15
	addi.w	$s2, $a1, -1
	ori	$a2, $zero, 255
	bne	$a0, $a2, .LBB0_264
# %bb.262:                              #   in Loop: Header=BB0_240 Depth=3
	addi.d	$a7, $a7, 255
	bstrpick.d	$a0, $a3, 15, 1
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	ori	$a0, $zero, 8
	bltu	$a0, $a1, .LBB0_240
# %bb.263:                              #   in Loop: Header=BB0_240 Depth=3
	sub.w	$a0, $s7, $a4
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB0_240
	b	.LBB0_80
.LBB0_264:                              #   in Loop: Header=BB0_74 Depth=2
	st.d	$s2, $sp, 112                   # 8-byte Folded Spill
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	move	$t0, $a5
	b	.LBB0_81
.LBB0_265:                              #   in Loop: Header=BB0_13 Depth=1
	st.d	$s6, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	st.d	$s7, $sp, 152                   # 8-byte Folded Spill
	move	$s6, $s4
.LBB0_266:                              # %.sink.split.i26
                                        #   in Loop: Header=BB0_13 Depth=1
	ld.d	$s2, $sp, 256                   # 8-byte Folded Reload
.LBB0_267:                              # %.sink.split.i26
                                        #   in Loop: Header=BB0_13 Depth=1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_268:                              #   in Loop: Header=BB0_13 Depth=1
	ld.d	$s7, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	addi.w	$a1, $a0, 0
	ori	$a0, $zero, 3
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	bltu	$a0, $a1, .LBB0_270
.LBB0_269:                              #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	b	.LBB0_13
.LBB0_270:                              #   in Loop: Header=BB0_13 Depth=1
	bnez	$s2, .LBB0_371
# %bb.271:                              #   in Loop: Header=BB0_13 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_665
# %bb.272:                              #   in Loop: Header=BB0_13 Depth=1
	move	$s2, $a0
	ld.w	$s4, $s6, 0
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	st.d	$s4, $sp, 136                   # 8-byte Folded Spill
	beqz	$s4, .LBB0_359
# %bb.273:                              # %.lr.ph845.i
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$t2, $zero
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	addi.w	$a1, $a0, -4
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	addi.w	$a1, $a0, -8
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a1, $s6, 1
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	ori	$s4, $zero, 4
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	b	.LBB0_279
.LBB0_274:                              #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_275:                              #   in Loop: Header=BB0_13 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 248                   # 8-byte Folded Reload
	b	.LBB0_13
.LBB0_276:                              # %.thread683.i
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	ori	$s8, $zero, 1
	b	.LBB0_266
.LBB0_277:                              #   in Loop: Header=BB0_279 Depth=2
	move	$s7, $t2
	move	$a3, $s8
.LBB0_278:                              # %.thread691.i
                                        #   in Loop: Header=BB0_279 Depth=2
	move	$s2, $a3
	move	$t2, $s7
	move	$s4, $t3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_370
.LBB0_279:                              #   Parent Loop BB0_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_352 Depth 3
                                        #       Child Loop BB0_356 Depth 3
                                        #       Child Loop BB0_300 Depth 3
                                        #       Child Loop BB0_309 Depth 3
                                        #       Child Loop BB0_313 Depth 3
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	bgeu	$s4, $a0, .LBB0_362
# %bb.280:                              #   in Loop: Header=BB0_279 Depth=2
	bstrpick.d	$a0, $s4, 31, 0
	ldx.bu	$s7, $s6, $a0
	addi.d	$a0, $s7, -5
	ori	$a1, $zero, 122
	bltu	$a1, $a0, .LBB0_379
# %bb.281:                              #   in Loop: Header=BB0_279 Depth=2
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI0_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	addi.w	$s8, $s4, 1
	jr	$a0
.LBB0_282:                              #   in Loop: Header=BB0_279 Depth=2
	addi.w	$a0, $t2, 4
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a1, $a2, 0
	bgeu	$a0, $a1, .LBB0_284
# %bb.283:                              #   in Loop: Header=BB0_279 Depth=2
	move	$a4, $s2
	b	.LBB0_285
.LBB0_284:                              #   in Loop: Header=BB0_279 Depth=2
	addi.w	$a2, $a2, 512
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	bstrpick.d	$a1, $a2, 31, 0
	move	$a0, $s2
	move	$s4, $t2
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	move	$t2, $s4
	move	$a4, $a0
	beqz	$a0, .LBB0_368
.LBB0_285:                              # %.thread702.i
                                        #   in Loop: Header=BB0_279 Depth=2
	pcalau12i	$a0, %pc_hi20(.L__const.ea06.opers)
	addi.d	$a0, $a0, %pc_lo12(.L__const.ea06.opers)
	alsl.d	$a0, $s7, $a0, 3
	ld.d	$a3, $a0, -512
	bstrpick.d	$a0, $t2, 31, 0
	add.d	$a0, $a4, $a0
	pcalau12i	$a1, %pc_hi20(.L.str.62)
	addi.d	$a2, $a1, %pc_lo12(.L.str.62)
	ori	$a1, $zero, 4
	move	$s4, $t2
	move	$s2, $a4
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	move	$a3, $s2
	add.w	$s7, $a0, $s4
.LBB0_286:                              # %.thread691.i
                                        #   in Loop: Header=BB0_279 Depth=2
	move	$t3, $s8
	b	.LBB0_278
.LBB0_287:                              #   in Loop: Header=BB0_279 Depth=2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	bgeu	$s8, $a0, .LBB0_364
# %bb.288:                              #   in Loop: Header=BB0_279 Depth=2
	bstrpick.d	$a0, $s8, 31, 0
	ldx.wu	$t4, $s6, $a0
	slli.d	$a4, $t4, 1
	addi.w	$t5, $a4, 0
	addi.w	$a1, $s4, 5
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	bltu	$a0, $t5, .LBB0_366
# %bb.289:                              #   in Loop: Header=BB0_279 Depth=2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	sub.w	$a0, $a0, $a4
	bgeu	$a1, $a0, .LBB0_366
# %bb.290:                              #   in Loop: Header=BB0_279 Depth=2
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	add.d	$a0, $t2, $t4
	addi.w	$a0, $a0, 3
	addi.w	$a1, $a2, 0
	st.d	$a4, $sp, 120                   # 8-byte Folded Spill
	bgeu	$a0, $a1, .LBB0_292
# %bb.291:                              #   in Loop: Header=BB0_279 Depth=2
	move	$a0, $s2
	b	.LBB0_293
.LBB0_292:                              #   in Loop: Header=BB0_279 Depth=2
	add.d	$a0, $a2, $t4
	addi.w	$a0, $a0, 512
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	bstrpick.d	$a1, $a0, 31, 0
	move	$a0, $s2
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	st.d	$t2, $sp, 96                    # 8-byte Folded Spill
	move	$s8, $t4
	move	$s7, $t5
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	move	$t5, $s7
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	move	$t4, $s8
	ld.d	$t2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_368
.LBB0_293:                              #   in Loop: Header=BB0_279 Depth=2
	addi.d	$a2, $s7, -48
	ori	$a1, $zero, 1
	sll.d	$a1, $a1, $a2
	andi	$a1, $a1, 19
	bnez	$a1, .LBB0_295
# %bb.294:                              #   in Loop: Header=BB0_279 Depth=2
	pcalau12i	$a1, %pc_hi20(.L__const.ea06.prefixes)
	addi.d	$a1, $a1, %pc_lo12(.L__const.ea06.prefixes)
	ldx.b	$a3, $a1, $a2
	bstrpick.d	$a1, $t2, 31, 0
	addi.w	$t2, $t2, 1
	stx.b	$a3, $a0, $a1
.LBB0_295:                              #   in Loop: Header=BB0_279 Depth=2
	ori	$a1, $zero, 54
	ld.d	$t3, $sp, 128                   # 8-byte Folded Reload
	beqz	$t4, .LBB0_306
# %bb.296:                              # %.preheader740.i
                                        #   in Loop: Header=BB0_279 Depth=2
	bstrpick.d	$t6, $t3, 31, 0
	beqz	$t5, .LBB0_315
# %bb.297:                              # %iter.check
                                        #   in Loop: Header=BB0_279 Depth=2
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	srli.d	$a2, $t4, 8
	bstrpick.d	$s7, $a4, 31, 0
	ori	$a1, $zero, 17
	bgeu	$t5, $a1, .LBB0_321
.LBB0_298:                              #   in Loop: Header=BB0_279 Depth=2
	move	$a6, $zero
.LBB0_299:                              # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB0_279 Depth=2
	add.d	$a1, $s4, $a6
	addi.w	$a3, $a1, 6
.LBB0_300:                              # %vec.epilog.scalar.ph
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_279 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a1, $a3, -1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.b	$a4, $s6, $a1
	bstrpick.d	$a5, $a3, 31, 0
	ldx.b	$a7, $s6, $a5
	xor	$a4, $a4, $t4
	stx.b	$a4, $s6, $a1
	xor	$a1, $a7, $a2
	stx.b	$a1, $s6, $a5
	addi.d	$a6, $a6, 2
	addi.w	$a3, $a3, 2
	bltu	$a6, $s7, .LBB0_300
# %bb.301:                              #   in Loop: Header=BB0_279 Depth=2
	add.d	$a1, $s6, $t6
	ori	$a2, $zero, 5
	bltu	$t5, $a2, .LBB0_307
# %bb.302:                              #   in Loop: Header=BB0_279 Depth=2
	ld.bu	$a2, $a1, 0
	ori	$a3, $zero, 255
	bne	$a2, $a3, .LBB0_307
# %bb.303:                              #   in Loop: Header=BB0_279 Depth=2
	ld.bu	$a2, $a1, 1
	ori	$a3, $zero, 254
	bne	$a2, $a3, .LBB0_307
# %bb.304:                              #   in Loop: Header=BB0_279 Depth=2
	ld.bu	$a2, $a1, 2
	beqz	$a2, .LBB0_307
# %bb.305:                              # %.thread.i409.i
                                        #   in Loop: Header=BB0_279 Depth=2
	addi.d	$a2, $a1, 2
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	addi.d	$a3, $a3, -2
	bstrpick.d	$s7, $a3, 31, 0
	b	.LBB0_312
.LBB0_306:                              #   in Loop: Header=BB0_279 Depth=2
	move	$s8, $a0
	b	.LBB0_317
.LBB0_307:                              # %.lr.ph.preheader.i390.i
                                        #   in Loop: Header=BB0_279 Depth=2
	move	$a3, $zero
	move	$a2, $zero
	sltui	$a4, $t5, 20
	ori	$a5, $zero, 20
	masknez	$a5, $a5, $a4
	maskeqz	$a4, $t5, $a4
	or	$a4, $a4, $a5
	b	.LBB0_309
.LBB0_308:                              #   in Loop: Header=BB0_309 Depth=3
	move	$a5, $zero
	addi.d	$a3, $a3, 2
	add.d	$a2, $a5, $a2
	bgeu	$a3, $a4, .LBB0_311
.LBB0_309:                              # %.lr.ph.i392.i
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_279 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a5, $a1, $a3
	beqz	$a5, .LBB0_308
# %bb.310:                              #   in Loop: Header=BB0_309 Depth=3
	add.d	$a5, $a1, $a3
	ld.bu	$a5, $a5, 1
	sltui	$a5, $a5, 1
	addi.d	$a3, $a3, 2
	add.d	$a2, $a5, $a2
	bltu	$a3, $a4, .LBB0_309
.LBB0_311:                              # %._crit_edge.loopexit.i398.i
                                        #   in Loop: Header=BB0_279 Depth=2
	slli.w	$a3, $a2, 2
	move	$a2, $a1
	bltu	$a3, $a4, .LBB0_314
.LBB0_312:                              # %.lr.ph49.preheader.i400.i
                                        #   in Loop: Header=BB0_279 Depth=2
	move	$a3, $zero
	move	$a4, $a1
.LBB0_313:                              # %.lr.ph49.i403.i
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_279 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.b	$a5, $a2, $a3
	addi.d	$a6, $a4, 1
	addi.d	$a3, $a3, 2
	st.b	$a5, $a4, 0
	move	$a4, $a6
	bltu	$a3, $s7, .LBB0_313
.LBB0_314:                              #   in Loop: Header=BB0_279 Depth=2
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	b	.LBB0_316
.LBB0_315:                              # %._crit_edge838.thread.i
                                        #   in Loop: Header=BB0_279 Depth=2
	add.d	$a1, $s6, $t6
.LBB0_316:                              # %u2a.exit410.i
                                        #   in Loop: Header=BB0_279 Depth=2
	bstrpick.d	$a2, $t2, 31, 0
	move	$s8, $a0
	add.d	$a0, $a0, $a2
	move	$a2, $t4
	move	$s4, $t2
	move	$s2, $t4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	add.w	$t2, $s4, $s2
	ld.d	$t3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	add.w	$t3, $a0, $t3
	ori	$a1, $zero, 54
.LBB0_317:                              #   in Loop: Header=BB0_279 Depth=2
	ori	$a0, $zero, 52
	beq	$s7, $a0, .LBB0_277
# %bb.318:                              #   in Loop: Header=BB0_279 Depth=2
	move	$a3, $s8
	bne	$s7, $a1, .LBB0_320
# %bb.319:                              #   in Loop: Header=BB0_279 Depth=2
	bstrpick.d	$a0, $t2, 31, 0
	addi.w	$t2, $t2, 1
	ori	$a2, $zero, 34
	stx.b	$a2, $a3, $a0
.LBB0_320:                              #   in Loop: Header=BB0_279 Depth=2
	addi.w	$s7, $t2, 1
	bstrpick.d	$a0, $t2, 31, 0
	ori	$a1, $zero, 32
	stx.b	$a1, $a3, $a0
	b	.LBB0_278
.LBB0_321:                              # %vector.scevcheck
                                        #   in Loop: Header=BB0_279 Depth=2
	addi.d	$a5, $s7, -1
	move	$a4, $a5
	bstrins.d	$a4, $zero, 0, 0
	addi.w	$a7, $a4, 0
	addi.d	$a3, $zero, -6
	sub.w	$a3, $a3, $s4
	move	$a6, $zero
	bltu	$a3, $a7, .LBB0_299
# %bb.322:                              # %vector.scevcheck
                                        #   in Loop: Header=BB0_279 Depth=2
	srli.d	$a3, $a5, 1
	addi.w	$t0, $a3, 0
	bltz	$t0, .LBB0_299
# %bb.323:                              # %vector.scevcheck
                                        #   in Loop: Header=BB0_279 Depth=2
	addi.d	$t1, $zero, -7
	sub.w	$t1, $t1, $s4
	bltu	$t1, $a7, .LBB0_299
# %bb.324:                              # %vector.scevcheck
                                        #   in Loop: Header=BB0_279 Depth=2
	bltz	$t0, .LBB0_299
# %bb.325:                              # %vector.scevcheck
                                        #   in Loop: Header=BB0_279 Depth=2
	srli.d	$a5, $a5, 33
	bnez	$a5, .LBB0_299
# %bb.326:                              # %vector.memcheck
                                        #   in Loop: Header=BB0_279 Depth=2
	addi.d	$a5, $s4, 6
	add.d	$a7, $s6, $t6
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	add.d	$a4, $a1, $a4
	bstrpick.d	$a6, $a5, 31, 0
	add.d	$t0, $a4, $a6
	bgeu	$a7, $t0, .LBB0_328
# %bb.327:                              # %vector.memcheck
                                        #   in Loop: Header=BB0_279 Depth=2
	add.d	$a4, $a4, $t6
	add.d	$a6, $s6, $a6
	bltu	$a6, $a4, .LBB0_298
.LBB0_328:                              # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB0_279 Depth=2
	st.d	$t6, $sp, 40                    # 8-byte Folded Spill
	st.d	$t4, $sp, 72                    # 8-byte Folded Spill
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$t2, $sp, 96                    # 8-byte Folded Spill
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a0, $a3, 1
	vreplgr2vr.w	$vr0, $t3
	vreplgr2vr.w	$vr1, $a5
	pcalau12i	$a1, %pc_hi20(.LCPI0_2)
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI0_3)
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ori	$a1, $zero, 33
	st.d	$t5, $sp, 48                    # 8-byte Folded Spill
	bgeu	$t5, $a1, .LBB0_351
# %bb.329:                              #   in Loop: Header=BB0_279 Depth=2
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	st.d	$zero, $sp, 8                   # 8-byte Folded Spill
	b	.LBB0_355
.LBB0_330:                              #   in Loop: Header=BB0_279 Depth=2
	ori	$a0, $zero, 8
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB0_381
# %bb.331:                              #   in Loop: Header=BB0_279 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	bgeu	$s8, $a0, .LBB0_381
# %bb.332:                              #   in Loop: Header=BB0_279 Depth=2
	addi.w	$a0, $t2, 40
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a1, $a2, 0
	bgeu	$a0, $a1, .LBB0_345
# %bb.333:                              #   in Loop: Header=BB0_279 Depth=2
	move	$a4, $s2
	b	.LBB0_346
.LBB0_334:                              #   in Loop: Header=BB0_279 Depth=2
	ori	$a0, $zero, 8
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB0_380
# %bb.335:                              #   in Loop: Header=BB0_279 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	bgeu	$s8, $a0, .LBB0_380
# %bb.336:                              #   in Loop: Header=BB0_279 Depth=2
	addi.w	$a0, $t2, 20
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a1, $a2, 0
	bgeu	$a0, $a1, .LBB0_347
# %bb.337:                              #   in Loop: Header=BB0_279 Depth=2
	move	$a4, $s2
	b	.LBB0_348
.LBB0_338:                              #   in Loop: Header=BB0_279 Depth=2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	bgeu	$s8, $a0, .LBB0_382
# %bb.339:                              #   in Loop: Header=BB0_279 Depth=2
	addi.w	$a0, $t2, 12
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a1, $a2, 0
	bgeu	$a0, $a1, .LBB0_349
# %bb.340:                              #   in Loop: Header=BB0_279 Depth=2
	move	$a4, $s2
	b	.LBB0_350
.LBB0_341:                              #   in Loop: Header=BB0_279 Depth=2
	addi.w	$s7, $t2, 1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	bgeu	$s7, $a0, .LBB0_343
# %bb.342:                              #   in Loop: Header=BB0_279 Depth=2
	move	$a3, $s2
	b	.LBB0_344
.LBB0_343:                              #   in Loop: Header=BB0_279 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 512
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	bstrpick.d	$a1, $a0, 31, 0
	move	$a0, $s2
	move	$s4, $t2
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	move	$t2, $s4
	move	$a3, $a0
	beqz	$a0, .LBB0_368
.LBB0_344:                              # %.thread707.i30
                                        #   in Loop: Header=BB0_279 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	bstrpick.d	$a0, $t2, 31, 0
	ori	$a1, $zero, 10
	stx.b	$a1, $a3, $a0
	b	.LBB0_286
.LBB0_345:                              #   in Loop: Header=BB0_279 Depth=2
	addi.w	$a2, $a2, 512
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	bstrpick.d	$a1, $a2, 31, 0
	move	$a0, $s2
	move	$s7, $t2
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	move	$t2, $s7
	move	$a4, $a0
	beqz	$a0, .LBB0_368
.LBB0_346:                              # %.thread694.i
                                        #   in Loop: Header=BB0_279 Depth=2
	bstrpick.d	$a0, $s8, 31, 0
	ldx.d	$a3, $s6, $a0
	bstrpick.d	$a0, $t2, 31, 0
	add.d	$s7, $a4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a2, $a0, %pc_lo12(.L.str.59)
	ori	$a1, $zero, 39
	move	$a0, $s7
	move	$s8, $t2
	move	$s2, $a4
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s8, 38
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 32
	stx.b	$a1, $s2, $a0
	addi.d	$a0, $s8, 39
	bstrpick.d	$a0, $a0, 31, 0
	stx.b	$zero, $s2, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a3, $s2
	add.w	$s7, $s8, $a0
	addi.w	$t3, $s4, 9
	b	.LBB0_278
.LBB0_347:                              #   in Loop: Header=BB0_279 Depth=2
	addi.w	$a2, $a2, 512
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	bstrpick.d	$a1, $a2, 31, 0
	move	$a0, $s2
	move	$s7, $t2
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	move	$t2, $s7
	move	$a4, $a0
	beqz	$a0, .LBB0_368
.LBB0_348:                              #   in Loop: Header=BB0_279 Depth=2
	addi.d	$a0, $s4, 5
	bstrpick.d	$a0, $a0, 31, 0
	ldx.w	$a0, $s6, $a0
	bstrpick.d	$a1, $s8, 31, 0
	ldx.w	$a1, $s6, $a1
	slli.d	$a0, $a0, 32
	add.d	$a3, $a0, $a1
	bstrpick.d	$a0, $t2, 31, 0
	add.d	$a0, $a4, $a0
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a2, $a1, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 20
	move	$s7, $t2
	move	$s2, $a4
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	move	$a3, $s2
	addi.w	$s7, $s7, 19
	addi.w	$t3, $s4, 9
	b	.LBB0_278
.LBB0_349:                              #   in Loop: Header=BB0_279 Depth=2
	addi.w	$a2, $a2, 512
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	bstrpick.d	$a1, $a2, 31, 0
	move	$a0, $s2
	move	$s7, $t2
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	move	$t2, $s7
	move	$a4, $a0
	beqz	$a0, .LBB0_368
.LBB0_350:                              # %.thread686.i
                                        #   in Loop: Header=BB0_279 Depth=2
	bstrpick.d	$a0, $s8, 31, 0
	ldx.w	$a3, $s6, $a0
	bstrpick.d	$a0, $t2, 31, 0
	add.d	$a0, $a4, $a0
	pcalau12i	$a1, %pc_hi20(.L.str.55)
	addi.d	$a2, $a1, %pc_lo12(.L.str.55)
	ori	$a1, $zero, 12
	move	$s7, $t2
	move	$s2, $a4
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	move	$a3, $s2
	addi.w	$s7, $s7, 11
	addi.w	$t3, $s4, 5
	b	.LBB0_278
.LBB0_351:                              # %vector.ph
                                        #   in Loop: Header=BB0_279 Depth=2
	move	$t2, $a0
	andi	$a7, $a0, 15
	sltui	$t0, $a7, 1
	masknez	$a7, $a7, $t0
	ori	$a1, $zero, 16
	maskeqz	$t0, $a1, $t0
	or	$t1, $t0, $a7
	sub.d	$a3, $a0, $t1
	pcalau12i	$t0, %pc_hi20(.LCPI0_0)
	vld	$vr2, $t0, %pc_lo12(.LCPI0_0)
	pcalau12i	$t0, %pc_hi20(.LCPI0_1)
	vld	$vr3, $t0, %pc_lo12(.LCPI0_1)
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	vld	$vr4, $a1, %pc_lo12(.LCPI0_2)
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	vld	$vr5, $a1, %pc_lo12(.LCPI0_3)
	st.d	$a3, $sp, 24                    # 8-byte Folded Spill
	slli.d	$a1, $a3, 1
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	vreplgr2vr.b	$vr6, $a1
	vreplgr2vr.b	$vr7, $a2
	vld	$vr16, $sp, 176                 # 16-byte Folded Reload
.LBB0_352:                              # %vector.body
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_279 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vadd.w	$vr8, $vr0, $vr5
	vadd.w	$vr9, $vr0, $vr4
	vadd.w	$vr10, $vr0, $vr3
	vadd.w	$vr11, $vr0, $vr2
	vilvh.w	$vr12, $vr16, $vr11
	vilvl.w	$vr11, $vr16, $vr11
	vilvh.w	$vr13, $vr16, $vr10
	vilvl.w	$vr10, $vr16, $vr10
	vilvh.w	$vr14, $vr16, $vr9
	vilvl.w	$vr9, $vr16, $vr9
	vilvh.w	$vr15, $vr16, $vr8
	vilvl.w	$vr8, $vr16, $vr8
	vpickve2gr.d	$t3, $vr8, 0
	add.d	$t4, $s6, $t3
	vpickve2gr.d	$t5, $vr8, 1
	add.d	$t5, $s6, $t5
	vpickve2gr.d	$t6, $vr15, 0
	add.d	$t6, $s6, $t6
	vpickve2gr.d	$t7, $vr15, 1
	add.d	$t7, $s6, $t7
	vpickve2gr.d	$t8, $vr9, 0
	add.d	$t8, $s6, $t8
	vpickve2gr.d	$s2, $vr9, 1
	add.d	$s2, $s6, $s2
	vpickve2gr.d	$s8, $vr14, 0
	add.d	$s8, $s6, $s8
	vpickve2gr.d	$ra, $vr14, 1
	add.d	$ra, $s6, $ra
	vpickve2gr.d	$t0, $vr10, 0
	add.d	$t0, $s6, $t0
	vpickve2gr.d	$a4, $vr10, 1
	add.d	$a4, $s6, $a4
	vpickve2gr.d	$a5, $vr13, 0
	add.d	$a5, $s6, $a5
	vpickve2gr.d	$a7, $vr13, 1
	add.d	$a7, $s6, $a7
	vpickve2gr.d	$a6, $vr11, 0
	add.d	$a6, $s6, $a6
	vpickve2gr.d	$a3, $vr11, 1
	add.d	$a3, $s6, $a3
	vpickve2gr.d	$a1, $vr12, 0
	vldx	$vr8, $s6, $t3
	vld	$vr9, $t4, 16
	add.d	$a1, $s6, $a1
	vpickve2gr.d	$t3, $vr12, 1
	add.d	$t3, $s6, $t3
	vpickev.b	$vr8, $vr9, $vr8
	vxor.v	$vr8, $vr8, $vr6
	vstelm.b	$vr8, $t4, 0, 0
	vstelm.b	$vr8, $t5, 0, 1
	vstelm.b	$vr8, $t6, 0, 2
	vstelm.b	$vr8, $t7, 0, 3
	vstelm.b	$vr8, $t8, 0, 4
	vstelm.b	$vr8, $s2, 0, 5
	vstelm.b	$vr8, $s8, 0, 6
	vstelm.b	$vr8, $ra, 0, 7
	vstelm.b	$vr8, $t0, 0, 8
	vstelm.b	$vr8, $a4, 0, 9
	vstelm.b	$vr8, $a5, 0, 10
	vstelm.b	$vr8, $a7, 0, 11
	vstelm.b	$vr8, $a6, 0, 12
	vstelm.b	$vr8, $a3, 0, 13
	vstelm.b	$vr8, $a1, 0, 14
	vstelm.b	$vr8, $t3, 0, 15
	vadd.w	$vr8, $vr1, $vr5
	vadd.w	$vr9, $vr1, $vr4
	vadd.w	$vr10, $vr1, $vr3
	vadd.w	$vr11, $vr1, $vr2
	vilvh.w	$vr12, $vr16, $vr11
	vilvl.w	$vr11, $vr16, $vr11
	vilvh.w	$vr13, $vr16, $vr10
	vilvl.w	$vr10, $vr16, $vr10
	vilvh.w	$vr14, $vr16, $vr9
	vilvl.w	$vr9, $vr16, $vr9
	vilvh.w	$vr15, $vr16, $vr8
	vilvl.w	$vr8, $vr16, $vr8
	vpickve2gr.d	$a1, $vr8, 0
	add.d	$a3, $s6, $a1
	vpickve2gr.d	$a4, $vr8, 1
	add.d	$a4, $s6, $a4
	vpickve2gr.d	$a5, $vr15, 0
	add.d	$a5, $s6, $a5
	vpickve2gr.d	$a6, $vr15, 1
	add.d	$a6, $s6, $a6
	vpickve2gr.d	$a7, $vr9, 0
	add.d	$a7, $s6, $a7
	vpickve2gr.d	$t0, $vr9, 1
	add.d	$t0, $s6, $t0
	vpickve2gr.d	$t3, $vr14, 0
	add.d	$t3, $s6, $t3
	vpickve2gr.d	$t4, $vr14, 1
	add.d	$t4, $s6, $t4
	vpickve2gr.d	$t5, $vr10, 0
	add.d	$t5, $s6, $t5
	vpickve2gr.d	$t6, $vr10, 1
	add.d	$t6, $s6, $t6
	vpickve2gr.d	$t7, $vr13, 0
	add.d	$t7, $s6, $t7
	vpickve2gr.d	$t8, $vr13, 1
	add.d	$t8, $s6, $t8
	vpickve2gr.d	$s2, $vr11, 0
	add.d	$s2, $s6, $s2
	vpickve2gr.d	$s8, $vr11, 1
	add.d	$s8, $s6, $s8
	vpickve2gr.d	$ra, $vr12, 0
	vldx	$vr8, $s6, $a1
	vld	$vr9, $a3, 16
	add.d	$a1, $s6, $ra
	vpickve2gr.d	$ra, $vr12, 1
	add.d	$ra, $s6, $ra
	vpickev.b	$vr8, $vr9, $vr8
	vxor.v	$vr8, $vr8, $vr7
	vstelm.b	$vr8, $a3, 0, 0
	vstelm.b	$vr8, $a4, 0, 1
	vstelm.b	$vr8, $a5, 0, 2
	vstelm.b	$vr8, $a6, 0, 3
	vstelm.b	$vr8, $a7, 0, 4
	vstelm.b	$vr8, $t0, 0, 5
	vstelm.b	$vr8, $t3, 0, 6
	vstelm.b	$vr8, $t4, 0, 7
	vstelm.b	$vr8, $t5, 0, 8
	vstelm.b	$vr8, $t6, 0, 9
	vstelm.b	$vr8, $t7, 0, 10
	vstelm.b	$vr8, $t8, 0, 11
	vstelm.b	$vr8, $s2, 0, 12
	vstelm.b	$vr8, $s8, 0, 13
	vstelm.b	$vr8, $a1, 0, 14
	vstelm.b	$vr8, $ra, 0, 15
	vrepli.w	$vr8, 32
	vadd.w	$vr5, $vr5, $vr8
	vadd.w	$vr4, $vr4, $vr8
	vadd.w	$vr3, $vr3, $vr8
	addi.d	$t2, $t2, -16
	vadd.w	$vr2, $vr2, $vr8
	bne	$t1, $t2, .LBB0_352
# %bb.353:                              # %vec.epilog.iter.check
                                        #   in Loop: Header=BB0_279 Depth=2
	ori	$a1, $zero, 9
	bgeu	$t1, $a1, .LBB0_355
# %bb.354:                              #   in Loop: Header=BB0_279 Depth=2
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	slli.d	$a6, $a0, 1
	b	.LBB0_357
.LBB0_355:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB0_279 Depth=2
	andi	$a1, $a0, 7
	sltui	$a3, $a1, 1
	masknez	$a1, $a1, $a3
	ori	$a4, $zero, 8
	maskeqz	$a3, $a4, $a3
	or	$a1, $a3, $a1
	sub.d	$a3, $a0, $a1
	slli.d	$a6, $a3, 1
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	vinsgr2vr.b	$vr2, $a3, 0
	vreplvei.b	$vr2, $vr2, 0
	vinsgr2vr.b	$vr3, $a2, 0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	vld	$vr4, $a3, %pc_lo12(.LCPI0_2)
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	vld	$vr5, $a3, %pc_lo12(.LCPI0_3)
	vreplvei.b	$vr3, $vr3, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	vreplgr2vr.w	$vr6, $a0
	vadd.w	$vr4, $vr6, $vr4
	vadd.w	$vr5, $vr6, $vr5
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	nor	$a3, $a0, $zero
	add.d	$a3, $a3, $a1
	vld	$vr10, $sp, 176                 # 16-byte Folded Reload
.LBB0_356:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_279 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vadd.w	$vr6, $vr0, $vr5
	vadd.w	$vr7, $vr0, $vr4
	vilvh.w	$vr8, $vr10, $vr7
	vilvl.w	$vr7, $vr10, $vr7
	vilvh.w	$vr9, $vr10, $vr6
	vilvl.w	$vr6, $vr10, $vr6
	vpickve2gr.d	$a1, $vr6, 0
	add.d	$a4, $s6, $a1
	vpickve2gr.d	$a5, $vr6, 1
	add.d	$a5, $s6, $a5
	vpickve2gr.d	$a7, $vr9, 0
	add.d	$a7, $s6, $a7
	vpickve2gr.d	$t0, $vr9, 1
	add.d	$t0, $s6, $t0
	vpickve2gr.d	$t1, $vr7, 0
	add.d	$t1, $s6, $t1
	vpickve2gr.d	$t2, $vr7, 1
	add.d	$t2, $s6, $t2
	vpickve2gr.d	$t3, $vr8, 0
	vldx	$vr6, $s6, $a1
	add.d	$a1, $s6, $t3
	vpickve2gr.d	$t3, $vr8, 1
	add.d	$t3, $s6, $t3
	vpickev.b	$vr6, $vr6, $vr6
	vxor.v	$vr6, $vr6, $vr2
	vstelm.b	$vr6, $a4, 0, 0
	vstelm.b	$vr6, $a5, 0, 1
	vstelm.b	$vr6, $a7, 0, 2
	vstelm.b	$vr6, $t0, 0, 3
	vstelm.b	$vr6, $t1, 0, 4
	vstelm.b	$vr6, $t2, 0, 5
	vstelm.b	$vr6, $a1, 0, 6
	vstelm.b	$vr6, $t3, 0, 7
	vadd.w	$vr6, $vr1, $vr5
	vadd.w	$vr7, $vr1, $vr4
	vilvh.w	$vr8, $vr10, $vr7
	vilvl.w	$vr7, $vr10, $vr7
	vilvh.w	$vr9, $vr10, $vr6
	vilvl.w	$vr6, $vr10, $vr6
	vpickve2gr.d	$a1, $vr6, 0
	add.d	$a4, $s6, $a1
	vpickve2gr.d	$a5, $vr6, 1
	add.d	$a5, $s6, $a5
	vpickve2gr.d	$a7, $vr9, 0
	add.d	$a7, $s6, $a7
	vpickve2gr.d	$t0, $vr9, 1
	add.d	$t0, $s6, $t0
	vpickve2gr.d	$t1, $vr7, 0
	add.d	$t1, $s6, $t1
	vpickve2gr.d	$t2, $vr7, 1
	add.d	$t2, $s6, $t2
	vpickve2gr.d	$t3, $vr8, 0
	vldx	$vr6, $s6, $a1
	add.d	$a1, $s6, $t3
	vpickve2gr.d	$t3, $vr8, 1
	add.d	$t3, $s6, $t3
	vpickev.b	$vr6, $vr6, $vr6
	vxor.v	$vr6, $vr6, $vr3
	vstelm.b	$vr6, $a4, 0, 0
	vstelm.b	$vr6, $a5, 0, 1
	vstelm.b	$vr6, $a7, 0, 2
	vstelm.b	$vr6, $t0, 0, 3
	vstelm.b	$vr6, $t1, 0, 4
	vstelm.b	$vr6, $t2, 0, 5
	vstelm.b	$vr6, $a1, 0, 6
	vstelm.b	$vr6, $t3, 0, 7
	vaddi.wu	$vr5, $vr5, 16
	addi.d	$a3, $a3, 8
	vaddi.wu	$vr4, $vr4, 16
	bnez	$a3, .LBB0_356
.LBB0_357:                              #   in Loop: Header=BB0_279 Depth=2
	ld.d	$t2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 40                    # 8-byte Folded Reload
	b	.LBB0_299
.LBB0_358:                              # %.thread1139.i
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 248                   # 8-byte Folded Reload
	b	.LBB0_269
.LBB0_359:                              #   in Loop: Header=BB0_13 Depth=1
	move	$s7, $zero
	b	.LBB0_369
.LBB0_360:                              # %._crit_edge.i35
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$a0, $s4
	move	$s4, $t0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	beqz	$s4, .LBB0_363
# %bb.361:                              #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	ori	$s8, $zero, 1
	b	.LBB0_267
.LBB0_362:                              #   in Loop: Header=BB0_13 Depth=1
	move	$s7, $t2
	b	.LBB0_369
.LBB0_363:                              #   in Loop: Header=BB0_13 Depth=1
	ori	$s8, $zero, 1
	b	.LBB0_268
.LBB0_364:                              #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
.LBB0_365:                              # %.critedge14.i
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$s4, $t2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_367
.LBB0_366:                              #   in Loop: Header=BB0_13 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	sub.w	$a3, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	move	$a1, $t5
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	move	$s4, $t2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_367:                              # %.critedge14.i
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$t2, $s4
.LBB0_368:                              # %.critedge14.i
                                        #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	move	$s7, $t2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_369:                              # %.critedge14.thread.i
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$a3, $s2
.LBB0_370:                              # %.critedge14.thread.i
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$a0, $s6
	move	$s6, $a3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$s7, $sp, 152                   # 8-byte Folded Spill
	ori	$s8, $zero, 1
	ld.d	$s7, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 256                   # 8-byte Folded Reload
.LBB0_371:                              #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a2, $a0, %pc_lo12(.L.str.19)
	addi.d	$a0, $sp, 304
	ori	$a1, $zero, 1023
	move	$a3, $fp
	move	$a4, $s7
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	st.b	$zero, $sp, 1327
	addi.d	$a0, $sp, 304
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	bge	$s5, $a0, .LBB0_653
# %bb.372:                              #   in Loop: Header=BB0_13 Depth=1
	move	$s4, $a0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	addi.w	$s5, $a0, 0
	move	$a0, $s4
	move	$a1, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB0_654
# %bb.373:                              #   in Loop: Header=BB0_13 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	ld.bu	$a0, $s6, 0
	pcalau12i	$a1, %pc_hi20(.L.str.66)
	addi.d	$a1, $a1, %pc_lo12(.L.str.66)
	masknez	$a1, $a1, $s2
	pcalau12i	$a2, %pc_hi20(.L.str.67)
	addi.d	$a2, $a2, %pc_lo12(.L.str.67)
	maskeqz	$a2, $a2, $s2
	or	$a1, $a2, $a1
	beqz	$a0, .LBB0_375
# %bb.374:                              #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	addi.d	$a2, $sp, 304
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_376
.LBB0_375:                              #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_376:                              #   in Loop: Header=BB0_13 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s6, 0
	beq	$s5, $s8, .LBB0_656
# %bb.377:                              #   in Loop: Header=BB0_13 Depth=1
	bnez	$a0, .LBB0_13
# %bb.378:                              #   in Loop: Header=BB0_13 Depth=1
	addi.d	$a0, $sp, 304
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	b	.LBB0_13
.LBB0_379:                              #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a0, $a0, %pc_lo12(.L.str.63)
	move	$a1, $s7
	move	$s4, $t2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_367
.LBB0_380:                              #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	b	.LBB0_365
.LBB0_381:                              #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	b	.LBB0_365
.LBB0_382:                              #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	b	.LBB0_365
.LBB0_383:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
.LBB0_384:
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_385:
	move	$a0, $zero
.LBB0_386:
	move	$s0, $a0
	ld.bu	$a0, $s6, 0
	bnez	$a0, .LBB0_388
# %bb.387:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_rmdirs)
	jirl	$ra, $ra, 0
.LBB0_388:                              # %.sink.split
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB0_389:
	ld.d	$s8, $sp, 1928                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1936                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2008                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2016
	ret
.LBB0_390:                              #   in Loop: Header=BB0_391 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 256                   # 8-byte Folded Reload
.LBB0_391:                              # %.backedge.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_435 Depth 2
                                        #       Child Loop BB0_598 Depth 3
                                        #       Child Loop BB0_538 Depth 3
                                        #       Child Loop BB0_543 Depth 3
                                        #     Child Loop BB0_625 Depth 2
                                        #     Child Loop BB0_629 Depth 2
	ld.d	$a0, $s0, 32
	beqz	$a0, .LBB0_393
# %bb.392:                              #   in Loop: Header=BB0_391 Depth=1
	ld.w	$a1, $a0, 4
	addi.w	$a0, $a1, -1
	bltu	$a0, $s7, .LBB0_649
.LBB0_393:                              # %.critedge.i
                                        #   in Loop: Header=BB0_391 Depth=1
	addi.d	$a1, $sp, 1328
	ori	$a2, $zero, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s8, .LBB0_385
# %bb.394:                              #   in Loop: Header=BB0_391 Depth=1
	ld.w	$a0, $sp, 1328
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_648
# %bb.395:                              #   in Loop: Header=BB0_391 Depth=1
	ld.w	$a0, $sp, 1332
	bltz	$a0, .LBB0_385
# %bb.396:                              #   in Loop: Header=BB0_391 Depth=1
	ld.d	$a1, $sp, 280                   # 8-byte Folded Reload
	xor	$s3, $a0, $a1
	ori	$a0, $zero, 299
	bltu	$a0, $s3, .LBB0_400
# %bb.397:                              #   in Loop: Header=BB0_391 Depth=1
	ld.bu	$a0, $s2, 0
	beqz	$a0, .LBB0_400
# %bb.398:                              #   in Loop: Header=BB0_391 Depth=1
	addi.d	$a1, $sp, 1328
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_385
# %bb.399:                              #   in Loop: Header=BB0_391 Depth=1
	stx.b	$zero, $s3, $s5
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	add.w	$a2, $s3, $a0
	addi.d	$a0, $sp, 1328
	move	$a1, $s3
	pcaddu18i	$ra, %call36(MT_decrypt)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 1328
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_401
.LBB0_400:                              #   in Loop: Header=BB0_391 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
.LBB0_401:                              #   in Loop: Header=BB0_391 Depth=1
	addi.d	$a1, $sp, 1328
	ori	$a2, $zero, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB0_385
# %bb.402:                              #   in Loop: Header=BB0_391 Depth=1
	ld.w	$a0, $sp, 1328
	bltz	$a0, .LBB0_385
# %bb.403:                              #   in Loop: Header=BB0_391 Depth=1
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	xor	$s3, $a0, $a1
	ori	$a0, $zero, 299
	bltu	$a0, $s3, .LBB0_407
# %bb.404:                              #   in Loop: Header=BB0_391 Depth=1
	ld.bu	$a0, $s2, 0
	beqz	$a0, .LBB0_407
# %bb.405:                              #   in Loop: Header=BB0_391 Depth=1
	addi.d	$a1, $sp, 1328
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_385
# %bb.406:                              #   in Loop: Header=BB0_391 Depth=1
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	add.w	$a2, $s3, $a0
	addi.d	$a0, $sp, 1328
	move	$a1, $s3
	pcaddu18i	$ra, %call36(MT_decrypt)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s3, $s5
	addi.d	$a1, $sp, 1328
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_408
.LBB0_407:                              #   in Loop: Header=BB0_391 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
.LBB0_408:                              #   in Loop: Header=BB0_391 Depth=1
	addi.d	$a1, $sp, 1328
	ori	$a2, $zero, 13
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 13
	bne	$a0, $a1, .LBB0_385
# %bb.409:                              #   in Loop: Header=BB0_391 Depth=1
	ld.w	$s3, $sp, 1329
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	bge	$a0, $s3, .LBB0_645
# %bb.410:                              #   in Loop: Header=BB0_391 Depth=1
	ld.bu	$s2, $sp, 1328
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	beq	$s3, $s4, .LBB0_390
# %bb.411:                              #   in Loop: Header=BB0_391 Depth=1
	xor	$s8, $s3, $s4
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1333
	xor	$a1, $a0, $s4
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1337
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	xor	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	beqz	$a0, .LBB0_415
# %bb.412:                              #   in Loop: Header=BB0_391 Depth=1
	ld.d	$a2, $a0, 24
	beqz	$a2, .LBB0_415
# %bb.413:                              #   in Loop: Header=BB0_391 Depth=1
	bgeu	$a2, $s8, .LBB0_415
# %bb.414:                              #   in Loop: Header=BB0_391 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	b	.LBB0_424
.LBB0_415:                              #   in Loop: Header=BB0_391 Depth=1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.w	$a0, $zero, -114
	beqz	$s7, .LBB0_386
# %bb.416:                              #   in Loop: Header=BB0_391 Depth=1
	move	$s5, $a0
	move	$a0, $s1
	move	$a1, $s7
	move	$a2, $s8
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s8, .LBB0_651
# %bb.417:                              #   in Loop: Header=BB0_391 Depth=1
	move	$a0, $s7
	move	$a1, $s8
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(MT_decrypt)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	bne	$s2, $a0, .LBB0_425
# %bb.418:                              #   in Loop: Header=BB0_391 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_423
# %bb.419:                              #   in Loop: Header=BB0_391 Depth=1
	st.d	$s6, $sp, 160                   # 8-byte Folded Spill
	ld.w	$a0, $s7, 4
	revb.2w	$a1, $a0
	sltui	$a2, $a0, 1
	ld.d	$a0, $s0, 32
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s8, $a2
	or	$a1, $a2, $a1
	bstrpick.d	$s6, $a1, 31, 0
	ld.d	$s2, $sp, 256                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_432
# %bb.420:                              #   in Loop: Header=BB0_391 Depth=1
	ld.d	$a2, $a0, 24
	beqz	$a2, .LBB0_432
# %bb.421:                              #   in Loop: Header=BB0_391 Depth=1
	bgeu	$a2, $s6, .LBB0_432
# %bb.422:                              #   in Loop: Header=BB0_391 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	addi.d	$s5, $sp, 1328
	ld.d	$s7, $sp, 200                   # 8-byte Folded Reload
	ori	$s8, $zero, 8
	b	.LBB0_391
.LBB0_423:                              #   in Loop: Header=BB0_391 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$s5, $sp, 1328
	ld.d	$s7, $sp, 200                   # 8-byte Folded Reload
.LBB0_424:                              # %.backedge.i
                                        #   in Loop: Header=BB0_391 Depth=1
	ori	$s8, $zero, 8
	ld.d	$s2, $sp, 256                   # 8-byte Folded Reload
	b	.LBB0_391
.LBB0_425:                              #   in Loop: Header=BB0_391 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	move	$s3, $s7
.LBB0_426:                              # %.sink.split.i
                                        #   in Loop: Header=BB0_391 Depth=1
	addi.d	$s5, $sp, 1328
	ld.d	$s7, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	addi.w	$a2, $a6, 0
	ori	$a0, $zero, 2
	bltu	$a2, $a0, .LBB0_632
.LBB0_427:                              #   in Loop: Header=BB0_391 Depth=1
	ori	$a0, $zero, 5
	bltu	$a2, $a0, .LBB0_623
# %bb.428:                              #   in Loop: Header=BB0_391 Depth=1
	ld.bu	$a0, $s3, 0
	ori	$a1, $zero, 255
	bne	$a0, $a1, .LBB0_623
# %bb.429:                              #   in Loop: Header=BB0_391 Depth=1
	ld.bu	$a0, $s3, 1
	ori	$a1, $zero, 254
	bne	$a0, $a1, .LBB0_623
# %bb.430:                              #   in Loop: Header=BB0_391 Depth=1
	ld.bu	$a0, $s3, 2
	beqz	$a0, .LBB0_623
# %bb.431:                              # %.thread.i.i
                                        #   in Loop: Header=BB0_391 Depth=1
	addi.d	$a0, $s3, 2
	addi.w	$a6, $a6, -2
	b	.LBB0_628
.LBB0_432:                              # %split.i
                                        #   in Loop: Header=BB0_391 Depth=1
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	move	$a0, $s6
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_667
# %bb.433:                              #   in Loop: Header=BB0_391 Depth=1
	move	$s3, $a0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.w	$s2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	beqz	$s2, .LBB0_631
# %bb.434:                              # %.lr.ph537.i
                                        #   in Loop: Header=BB0_391 Depth=1
	move	$s2, $zero
	move	$s5, $zero
	move	$a0, $zero
	add.d	$a1, $s3, $s6
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	ori	$t0, $zero, 8
	st.d	$s4, $sp, 144                   # 8-byte Folded Spill
.LBB0_435:                              #   Parent Loop BB0_391 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_598 Depth 3
                                        #       Child Loop BB0_538 Depth 3
                                        #       Child Loop BB0_543 Depth 3
	bstrpick.d	$s5, $s5, 15, 0
	bnez	$a0, .LBB0_440
# %bb.436:                              #   in Loop: Header=BB0_435 Depth=2
	sub.w	$a1, $s8, $t0
	ori	$a2, $zero, 2
	bgeu	$a1, $a2, .LBB0_440
# %bb.437:                              # %.thread721.i
                                        #   in Loop: Header=BB0_435 Depth=2
	move	$s6, $s5
	move	$s5, $t0
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s4, $zero
.LBB0_438:                              #   in Loop: Header=BB0_435 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ori	$t1, $zero, 1
	move	$t0, $s5
	move	$s5, $s6
	move	$a2, $s4
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
.LBB0_439:                              # %getbits.exit233.i
                                        #   in Loop: Header=BB0_435 Depth=2
	bstrpick.d	$a1, $s2, 31, 0
	stx.b	$a0, $s3, $a1
	addi.w	$s2, $s2, 1
	move	$a0, $a2
	b	.LBB0_545
.LBB0_440:                              # %.preheader471.preheader.i
                                        #   in Loop: Header=BB0_435 Depth=2
	bnez	$a0, .LBB0_442
# %bb.441:                              #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a0, $t0, 1
	bstrpick.d	$a1, $t0, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a1, $a1, 8
	addi.w	$t0, $t0, 2
	or	$a0, $a1, $a0
	or	$s5, $a0, $s5
	ori	$a0, $zero, 16
.LBB0_442:                              # %getbits.exit.i
                                        #   in Loop: Header=BB0_435 Depth=2
	slli.d	$s6, $s5, 1
	bstrpick.d	$a2, $s5, 31, 15
	addi.w	$s4, $a0, -1
	bnez	$a2, .LBB0_446
# %bb.443:                              #   in Loop: Header=BB0_435 Depth=2
	ori	$a2, $zero, 8
	bltu	$a2, $a0, .LBB0_449
# %bb.444:                              #   in Loop: Header=BB0_435 Depth=2
	sub.w	$a2, $s8, $t0
	ori	$a3, $zero, 2
	bgeu	$a2, $a3, .LBB0_449
# %bb.445:                              #   in Loop: Header=BB0_435 Depth=2
	move	$s5, $t0
	b	.LBB0_438
.LBB0_446:                              #   in Loop: Header=BB0_435 Depth=2
	bstrpick.d	$a1, $s6, 15, 1
	slli.d	$a3, $a1, 1
	ori	$a1, $zero, 15
	bltu	$a1, $a0, .LBB0_452
# %bb.447:                              #   in Loop: Header=BB0_435 Depth=2
	sub.w	$a1, $s8, $t0
	ori	$a2, $zero, 2
	bgeu	$a1, $a2, .LBB0_452
# %bb.448:                              #   in Loop: Header=BB0_435 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	move	$s5, $t0
	move	$s6, $a3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a3, $s4
	move	$a2, $s6
	move	$t0, $s5
	move	$t3, $zero
	ori	$a0, $zero, 1
	ori	$t1, $zero, 1
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	b	.LBB0_513
.LBB0_449:                              # %.preheader462.preheader.i
                                        #   in Loop: Header=BB0_435 Depth=2
	beqz	$s4, .LBB0_455
# %bb.450:                              # %.preheader462.1.i
                                        #   in Loop: Header=BB0_435 Depth=2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_463
# %bb.451:                              #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a0, $t0, 1
	bstrpick.d	$a1, $t0, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a2, $s5, 2
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a1, $a0, $a1
	ori	$a0, $zero, 15
	b	.LBB0_456
.LBB0_452:                              # %.preheader470.preheader.i
                                        #   in Loop: Header=BB0_435 Depth=2
	beqz	$s4, .LBB0_459
# %bb.453:                              # %.preheader470.1.i
                                        #   in Loop: Header=BB0_435 Depth=2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_466
# %bb.454:                              #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a0, $t0, 1
	bstrpick.d	$a1, $t0, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a2, $a3, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a2, $zero, 15
	b	.LBB0_460
.LBB0_455:                              # %.preheader462.1.thread.i
                                        #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a0, $t0, 1
	bstrpick.d	$a2, $t0, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a2, $a2, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $s6
	slli.d	$a1, $a0, 1
	ori	$a0, $zero, 14
.LBB0_456:                              # %.preheader462.3.i.thread
                                        #   in Loop: Header=BB0_435 Depth=2
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	addi.w	$t0, $t0, 2
	slli.d	$a1, $a1, 1
	ori	$a2, $zero, 3
	beq	$a0, $a2, .LBB0_484
.LBB0_457:                              # %.preheader462.4.i
                                        #   in Loop: Header=BB0_435 Depth=2
	slli.d	$a1, $a1, 2
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_469
# %bb.458:                              # %.preheader462.5.thread.i
                                        #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a0, $t0, 1
	bstrpick.d	$a2, $t0, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a2, $a2, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	slli.d	$a0, $a0, 1
	ori	$a2, $zero, 14
	b	.LBB0_485
.LBB0_459:                              # %.preheader470.1.thread.i
                                        #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a0, $t0, 1
	bstrpick.d	$a1, $t0, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $a3
	slli.d	$a0, $a0, 1
	ori	$a2, $zero, 14
.LBB0_460:                              # %.preheader470.3.i.thread
                                        #   in Loop: Header=BB0_435 Depth=2
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	addi.w	$t0, $t0, 2
	slli.d	$a1, $a0, 1
	ori	$a0, $zero, 3
	beq	$a2, $a0, .LBB0_490
.LBB0_461:                              # %.preheader470.4.i
                                        #   in Loop: Header=BB0_435 Depth=2
	slli.d	$a0, $a1, 2
	ori	$a1, $zero, 2
	bne	$a2, $a1, .LBB0_470
# %bb.462:                              # %.preheader470.5.thread.i
                                        #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a1, $t0, 1
	bstrpick.d	$a2, $t0, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_491
.LBB0_463:                              # %.preheader462.2.i
                                        #   in Loop: Header=BB0_435 Depth=2
	ori	$a1, $zero, 4
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_471
# %bb.464:                              # %.preheader462.2.i
                                        #   in Loop: Header=BB0_435 Depth=2
	slli.d	$a1, $s5, 3
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB0_483
# %bb.465:                              # %.preheader462.3.thread.i
                                        #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a0, $t0, 1
	bstrpick.d	$a2, $t0, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a2, $a2, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	slli.d	$a1, $a0, 1
	ori	$a0, $zero, 14
	b	.LBB0_472
.LBB0_466:                              # %.preheader470.2.i
                                        #   in Loop: Header=BB0_435 Depth=2
	ori	$a1, $zero, 4
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_475
# %bb.467:                              # %.preheader470.2.i
                                        #   in Loop: Header=BB0_435 Depth=2
	slli.d	$a1, $a3, 2
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB0_489
# %bb.468:                              # %.preheader470.3.thread.i
                                        #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a0, $t0, 1
	bstrpick.d	$a2, $t0, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a2, $a2, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_476
.LBB0_469:                              #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a0, $a0, -2
	b	.LBB0_473
.LBB0_470:                              #   in Loop: Header=BB0_435 Depth=2
	addi.w	$a1, $a2, -2
	b	.LBB0_477
.LBB0_471:                              #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a0, $t0, 1
	bstrpick.d	$a1, $t0, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a2, $s5, 4
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a1, $a0, $a1
	ori	$a0, $zero, 15
.LBB0_472:                              # %.preheader462.5.i.thread
                                        #   in Loop: Header=BB0_435 Depth=2
	addi.w	$t0, $t0, 2
	slli.d	$a1, $a1, 1
.LBB0_473:                              # %.preheader462.6.i
                                        #   in Loop: Header=BB0_435 Depth=2
	addi.w	$a2, $a0, -2
	slli.d	$a0, $a1, 2
	bnez	$a2, .LBB0_486
# %bb.474:                              # %.preheader462.7.thread.i
                                        #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a1, $t0, 1
	bstrpick.d	$a2, $t0, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	addi.w	$t0, $t0, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 15
	b	.LBB0_488
.LBB0_475:                              #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a0, $t0, 1
	bstrpick.d	$a1, $t0, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a2, $a3, 3
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_476:                              # %.preheader470.5.i.thread
                                        #   in Loop: Header=BB0_435 Depth=2
	addi.w	$t0, $t0, 2
	slli.d	$a0, $a0, 1
.LBB0_477:                              # %.preheader470.6.i
                                        #   in Loop: Header=BB0_435 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_480
# %bb.478:                              # %.preheader470.6.i
                                        #   in Loop: Header=BB0_435 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_482
# %bb.479:                              # %.preheader470.7.thread.i
                                        #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a1, $t0, 1
	bstrpick.d	$a2, $t0, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_481
.LBB0_480:                              #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a1, $t0, 1
	bstrpick.d	$a2, $t0, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_481:                              # %.preheader470.9.i.thread
                                        #   in Loop: Header=BB0_435 Depth=2
	addi.w	$t0, $t0, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_498
.LBB0_482:                              #   in Loop: Header=BB0_435 Depth=2
	addi.w	$a1, $a1, -2
	b	.LBB0_492
.LBB0_483:                              #   in Loop: Header=BB0_435 Depth=2
	addi.w	$a0, $a0, -3
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB0_457
.LBB0_484:                              #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a0, $t0, 1
	bstrpick.d	$a2, $t0, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a1, $a1, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $a2
	ori	$a2, $zero, 15
.LBB0_485:                              # %.preheader462.6.thread.i
                                        #   in Loop: Header=BB0_435 Depth=2
	addi.w	$t0, $t0, 2
	slli.d	$a0, $a0, 1
.LBB0_486:                              # %.preheader462.7.i
                                        #   in Loop: Header=BB0_435 Depth=2
	addi.w	$a1, $a2, -1
	slli.d	$a0, $a0, 1
	bnez	$a1, .LBB0_488
# %bb.487:                              #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a1, $t0, 1
	bstrpick.d	$a2, $t0, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	addi.w	$t0, $t0, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_488:                              #   in Loop: Header=BB0_435 Depth=2
	move	$t1, $zero
	slli.d	$s5, $a0, 1
	addi.w	$a2, $a1, -1
	bstrpick.d	$a0, $a0, 31, 15
	b	.LBB0_439
.LBB0_489:                              #   in Loop: Header=BB0_435 Depth=2
	addi.w	$a2, $a0, -3
	ori	$a0, $zero, 3
	bne	$a2, $a0, .LBB0_461
.LBB0_490:                              #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a0, $t0, 1
	bstrpick.d	$a2, $t0, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a1, $a1, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_491:                              # %.preheader470.7.i.thread
                                        #   in Loop: Header=BB0_435 Depth=2
	addi.w	$t0, $t0, 2
	slli.d	$a0, $a0, 1
.LBB0_492:                              # %.preheader470.8.i
                                        #   in Loop: Header=BB0_435 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_495
# %bb.493:                              # %.preheader470.8.i
                                        #   in Loop: Header=BB0_435 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_497
# %bb.494:                              # %.preheader470.9.thread.i
                                        #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a1, $t0, 1
	bstrpick.d	$a2, $t0, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_496
.LBB0_495:                              #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a1, $t0, 1
	bstrpick.d	$a2, $t0, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_496:                              # %.preheader470.11.i.thread
                                        #   in Loop: Header=BB0_435 Depth=2
	addi.w	$t0, $t0, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_504
.LBB0_497:                              #   in Loop: Header=BB0_435 Depth=2
	addi.w	$a1, $a1, -2
.LBB0_498:                              # %.preheader470.10.i
                                        #   in Loop: Header=BB0_435 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_501
# %bb.499:                              # %.preheader470.10.i
                                        #   in Loop: Header=BB0_435 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_503
# %bb.500:                              # %.preheader470.11.thread.i
                                        #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a1, $t0, 1
	bstrpick.d	$a2, $t0, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_502
.LBB0_501:                              #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a1, $t0, 1
	bstrpick.d	$a2, $t0, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_502:                              # %.preheader470.13.i.thread
                                        #   in Loop: Header=BB0_435 Depth=2
	addi.w	$t0, $t0, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_510
.LBB0_503:                              #   in Loop: Header=BB0_435 Depth=2
	addi.w	$a1, $a1, -2
.LBB0_504:                              # %.preheader470.12.i
                                        #   in Loop: Header=BB0_435 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_507
# %bb.505:                              # %.preheader470.12.i
                                        #   in Loop: Header=BB0_435 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_509
# %bb.506:                              # %.preheader470.13.thread.i
                                        #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a1, $t0, 1
	bstrpick.d	$a2, $t0, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_508
.LBB0_507:                              #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a1, $t0, 1
	bstrpick.d	$a2, $t0, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_508:                              # %.preheader470.14.thread.i
                                        #   in Loop: Header=BB0_435 Depth=2
	addi.w	$t0, $t0, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_512
.LBB0_509:                              #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a1, $a1, -2
.LBB0_510:                              # %.preheader470.14.i
                                        #   in Loop: Header=BB0_435 Depth=2
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_512
# %bb.511:                              #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a1, $t0, 1
	bstrpick.d	$a2, $t0, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	addi.w	$t0, $t0, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_512:                              #   in Loop: Header=BB0_435 Depth=2
	move	$t1, $zero
	slli.d	$a2, $a0, 1
	addi.w	$a3, $a1, -1
	bstrpick.d	$t3, $a0, 31, 15
	bstrpick.d	$a0, $a2, 15, 1
	slli.d	$a2, $a0, 1
	sub.w	$a0, $s8, $t0
	sltui	$a0, $a0, 2
.LBB0_513:                              # %getbits.exit203.i
                                        #   in Loop: Header=BB0_435 Depth=2
	ori	$a1, $zero, 1
	bltu	$a1, $a3, .LBB0_518
# %bb.514:                              # %getbits.exit203.i
                                        #   in Loop: Header=BB0_435 Depth=2
	beqz	$a0, .LBB0_518
# %bb.515:                              #   in Loop: Header=BB0_435 Depth=2
	st.d	$t3, $sp, 104                   # 8-byte Folded Spill
	move	$s6, $a3
	move	$s5, $a2
	st.d	$t0, $sp, 128                   # 8-byte Folded Spill
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
.LBB0_516:                              # %.loopexit465.sink.split.i
                                        #   in Loop: Header=BB0_435 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ori	$t1, $zero, 1
.LBB0_517:                              # %.loopexit465.i
                                        #   in Loop: Header=BB0_435 Depth=2
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	b	.LBB0_527
.LBB0_518:                              # %.preheader469.preheader.i
                                        #   in Loop: Header=BB0_435 Depth=2
	beqz	$a3, .LBB0_521
# %bb.519:                              # %.preheader469.1.i
                                        #   in Loop: Header=BB0_435 Depth=2
	addi.w	$a1, $a3, -1
	slli.d	$a0, $a2, 1
	bnez	$a1, .LBB0_522
# %bb.520:                              #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a1, $t0, 1
	bstrpick.d	$a2, $t0, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	addi.w	$t0, $t0, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
	b	.LBB0_522
.LBB0_521:                              # %.preheader469.1.thread.i
                                        #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a0, $t0, 1
	bstrpick.d	$a1, $t0, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a1, $a1, 8
	addi.w	$t0, $t0, 2
	or	$a0, $a1, $a0
	or	$a0, $a0, $a2
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 15
.LBB0_522:                              # %getbits.exit208.i
                                        #   in Loop: Header=BB0_435 Depth=2
	slli.d	$s5, $a0, 1
	bstrpick.d	$a0, $a0, 31, 15
	addi.w	$s6, $a1, -1
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB0_526
# %bb.523:                              #   in Loop: Header=BB0_435 Depth=2
	bstrpick.d	$a0, $s5, 15, 1
	ori	$a2, $zero, 3
	slli.d	$s5, $a0, 1
	bltu	$a2, $a1, .LBB0_547
# %bb.524:                              #   in Loop: Header=BB0_435 Depth=2
	sub.w	$a0, $s8, $t0
	ori	$a2, $zero, 2
	bgeu	$a0, $a2, .LBB0_547
# %bb.525:                              #   in Loop: Header=BB0_435 Depth=2
	ori	$a0, $zero, 3
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	st.d	$t3, $sp, 104                   # 8-byte Folded Spill
	st.d	$t0, $sp, 128                   # 8-byte Folded Spill
	b	.LBB0_516
.LBB0_526:                              #   in Loop: Header=BB0_435 Depth=2
	st.d	$t0, $sp, 128                   # 8-byte Folded Spill
	move	$a3, $zero
.LBB0_527:                              # %.loopexit465.i
                                        #   in Loop: Header=BB0_435 Depth=2
	add.d	$a0, $a0, $a3
	addi.w	$a1, $a0, 2
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	bgeu	$a1, $a2, .LBB0_643
# %bb.528:                              #   in Loop: Header=BB0_435 Depth=2
	addi.w	$a0, $a0, 3
	bstrpick.d	$a2, $s2, 31, 0
	add.d	$a3, $s3, $a2
	bstrpick.d	$a5, $a0, 31, 0
	add.d	$a3, $a3, $a5
	ld.d	$a4, $sp, 120                   # 8-byte Folded Reload
	bltu	$a4, $a3, .LBB0_643
# %bb.529:                              #   in Loop: Header=BB0_435 Depth=2
	bgeu	$s3, $a3, .LBB0_643
# %bb.530:                              #   in Loop: Header=BB0_435 Depth=2
	sub.w	$a4, $s2, $t3
	bstrpick.d	$a3, $a4, 31, 0
	add.d	$a6, $s3, $a3
	add.d	$a5, $a6, $a5
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	bltu	$a6, $a5, .LBB0_643
# %bb.531:                              #   in Loop: Header=BB0_435 Depth=2
	bgeu	$s3, $a5, .LBB0_643
# %bb.532:                              # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB0_435 Depth=2
	ori	$a5, $zero, 32
	bgeu	$a0, $a5, .LBB0_534
# %bb.533:                              #   in Loop: Header=BB0_435 Depth=2
	move	$a1, $a0
	move	$a2, $s2
	ld.d	$t0, $sp, 128                   # 8-byte Folded Reload
	b	.LBB0_542
.LBB0_534:                              # %vector.scevcheck619
                                        #   in Loop: Header=BB0_435 Depth=2
	nor	$a5, $s2, $zero
	addi.w	$a5, $a5, 0
	ld.d	$t0, $sp, 128                   # 8-byte Folded Reload
	bltu	$a5, $a1, .LBB0_541
# %bb.535:                              # %vector.scevcheck619
                                        #   in Loop: Header=BB0_435 Depth=2
	nor	$a4, $a4, $zero
	bltu	$a4, $a1, .LBB0_541
# %bb.536:                              # %vector.scevcheck619
                                        #   in Loop: Header=BB0_435 Depth=2
	sub.d	$a1, $a2, $a3
	ori	$a2, $zero, 32
	bltu	$a1, $a2, .LBB0_541
# %bb.537:                              # %vector.ph624
                                        #   in Loop: Header=BB0_435 Depth=2
	move	$a3, $a0
	bstrins.d	$a3, $zero, 4, 0
	andi	$a1, $a0, 31
	add.w	$a2, $s2, $a3
	sub.w	$a4, $zero, $t3
	move	$a5, $a3
.LBB0_538:                              # %vector.body627
                                        #   Parent Loop BB0_391 Depth=1
                                        #     Parent Loop BB0_435 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a6, $a4, $s2
	bstrpick.d	$a6, $a6, 31, 0
	add.d	$a7, $s3, $a6
	vldx	$vr0, $s3, $a6
	vld	$vr1, $a7, 16
	bstrpick.d	$a6, $s2, 31, 0
	add.d	$a7, $s3, $a6
	vstx	$vr0, $s3, $a6
	vst	$vr1, $a7, 16
	addi.w	$a5, $a5, -32
	addi.w	$s2, $s2, 32
	bnez	$a5, .LBB0_538
# %bb.539:                              # %middle.block633
                                        #   in Loop: Header=BB0_435 Depth=2
	bne	$a0, $a3, .LBB0_542
# %bb.540:                              #   in Loop: Header=BB0_435 Depth=2
	move	$a0, $s6
	move	$s2, $a2
	b	.LBB0_545
.LBB0_541:                              #   in Loop: Header=BB0_435 Depth=2
	move	$a1, $a0
	move	$a2, $s2
.LBB0_542:                              # %.lr.ph.i.preheader638
                                        #   in Loop: Header=BB0_435 Depth=2
	sub.w	$a0, $zero, $t3
	move	$s2, $a2
.LBB0_543:                              # %.lr.ph.i
                                        #   Parent Loop BB0_391 Depth=1
                                        #     Parent Loop BB0_435 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $a0, $s2
	bstrpick.d	$a2, $a2, 31, 0
	ldx.b	$a2, $s3, $a2
	addi.w	$a1, $a1, -1
	bstrpick.d	$a3, $s2, 31, 0
	stx.b	$a2, $s3, $a3
	addi.w	$s2, $s2, 1
	bnez	$a1, .LBB0_543
# %bb.544:                              #   in Loop: Header=BB0_435 Depth=2
	move	$a0, $s6
.LBB0_545:                              # %.loopexit.i
                                        #   in Loop: Header=BB0_435 Depth=2
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	bnez	$t1, .LBB0_641
# %bb.546:                              # %.loopexit.i
                                        #   in Loop: Header=BB0_435 Depth=2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	bltu	$s2, $a1, .LBB0_435
	b	.LBB0_641
.LBB0_547:                              # %.preheader468.preheader.i
                                        #   in Loop: Header=BB0_435 Depth=2
	beqz	$s6, .LBB0_550
# %bb.548:                              # %.preheader468.1.i
                                        #   in Loop: Header=BB0_435 Depth=2
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB0_552
# %bb.549:                              #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a0, $t0, 1
	bstrpick.d	$a1, $t0, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a2, $s5, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
	b	.LBB0_551
.LBB0_550:                              # %.preheader468.1.thread.i
                                        #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a0, $t0, 1
	bstrpick.d	$a1, $t0, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $s5
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
.LBB0_551:                              # %.preheader468.2.thread.i
                                        #   in Loop: Header=BB0_435 Depth=2
	addi.w	$t0, $t0, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_554
.LBB0_552:                              # %.preheader468.2.i
                                        #   in Loop: Header=BB0_435 Depth=2
	addi.w	$a1, $a1, -3
	slli.d	$a0, $s5, 2
	bnez	$a1, .LBB0_554
# %bb.553:                              #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a1, $t0, 1
	bstrpick.d	$a2, $t0, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	addi.w	$t0, $t0, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_554:                              # %getbits.exit213.i
                                        #   in Loop: Header=BB0_435 Depth=2
	slli.d	$s5, $a0, 1
	addi.w	$s6, $a1, -1
	bstrpick.d	$a0, $a0, 31, 15
	ori	$a3, $zero, 3
	ori	$a2, $zero, 7
	st.d	$t0, $sp, 128                   # 8-byte Folded Spill
	bne	$a0, $a2, .LBB0_527
# %bb.555:                              #   in Loop: Header=BB0_435 Depth=2
	st.d	$t3, $sp, 104                   # 8-byte Folded Spill
	move	$a4, $t1
	bstrpick.d	$a0, $s5, 15, 1
	slli.d	$s5, $a0, 1
	ori	$a0, $zero, 5
	bltu	$a0, $a1, .LBB0_557
# %bb.556:                              #   in Loop: Header=BB0_435 Depth=2
	sub.w	$a0, $s8, $t0
	ori	$a2, $zero, 10
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	ori	$a2, $zero, 2
	bltu	$a0, $a2, .LBB0_516
.LBB0_557:                              # %.preheader467.preheader.i
                                        #   in Loop: Header=BB0_435 Depth=2
	move	$a5, $s4
	beqz	$s6, .LBB0_560
# %bb.558:                              # %.preheader467.1.i
                                        #   in Loop: Header=BB0_435 Depth=2
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB0_563
# %bb.559:                              #   in Loop: Header=BB0_435 Depth=2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a2, $s5, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
	b	.LBB0_561
.LBB0_560:                              # %.preheader467.1.thread.i
                                        #   in Loop: Header=BB0_435 Depth=2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $s5
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
.LBB0_561:                              # %.preheader467.3.i.thread
                                        #   in Loop: Header=BB0_435 Depth=2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_569
.LBB0_562:                              #   in Loop: Header=BB0_435 Depth=2
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a1, $a3, 1
	bstrpick.d	$a2, $a3, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a3, $a3, 2
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
	b	.LBB0_569
.LBB0_563:                              # %.preheader467.2.i
                                        #   in Loop: Header=BB0_435 Depth=2
	ori	$a0, $zero, 4
	beq	$a1, $a0, .LBB0_566
# %bb.564:                              # %.preheader467.2.i
                                        #   in Loop: Header=BB0_435 Depth=2
	slli.d	$a0, $s5, 2
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_568
# %bb.565:                              # %.preheader467.3.thread.i
                                        #   in Loop: Header=BB0_435 Depth=2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_567
.LBB0_566:                              #   in Loop: Header=BB0_435 Depth=2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a2, $s5, 3
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_567:                              # %.preheader467.4.thread.i
                                        #   in Loop: Header=BB0_435 Depth=2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	b	.LBB0_569
.LBB0_568:                              #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a1, $a1, -3
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	beqz	$a1, .LBB0_562
.LBB0_569:                              # %getbits.exit218.i
                                        #   in Loop: Header=BB0_435 Depth=2
	slli.d	$s5, $a0, 1
	addi.w	$s6, $a1, -1
	bstrpick.d	$a0, $a0, 31, 15
	ori	$a2, $zero, 31
	bne	$a0, $a2, .LBB0_573
# %bb.570:                              #   in Loop: Header=BB0_435 Depth=2
	bstrpick.d	$a0, $s5, 15, 1
	slli.d	$s5, $a0, 1
	ori	$a0, $zero, 8
	bltu	$a0, $a1, .LBB0_574
# %bb.571:                              #   in Loop: Header=BB0_435 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	sub.w	$a0, $s8, $a0
	ori	$a2, $zero, 41
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	ori	$a2, $zero, 2
	bgeu	$a0, $a2, .LBB0_574
.LBB0_572:                              #   in Loop: Header=BB0_435 Depth=2
	move	$s4, $a5
	b	.LBB0_516
.LBB0_573:                              #   in Loop: Header=BB0_435 Depth=2
	move	$t1, $a4
	move	$s4, $a5
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	ori	$a3, $zero, 10
	b	.LBB0_527
.LBB0_574:                              # %.preheader466.preheader.i
                                        #   in Loop: Header=BB0_435 Depth=2
	beqz	$s6, .LBB0_577
# %bb.575:                              # %.preheader466.1.i
                                        #   in Loop: Header=BB0_435 Depth=2
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB0_581
# %bb.576:                              #   in Loop: Header=BB0_435 Depth=2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a2, $s5, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
	b	.LBB0_578
.LBB0_577:                              # %.preheader466.1.thread.i
                                        #   in Loop: Header=BB0_435 Depth=2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $s5
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
.LBB0_578:                              # %.preheader466.3.i.thread
                                        #   in Loop: Header=BB0_435 Depth=2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_590
.LBB0_579:                              # %.preheader466.4.i
                                        #   in Loop: Header=BB0_435 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_584
# %bb.580:                              # %.preheader466.5.thread.i
                                        #   in Loop: Header=BB0_435 Depth=2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_591
.LBB0_581:                              # %.preheader466.2.i
                                        #   in Loop: Header=BB0_435 Depth=2
	ori	$a0, $zero, 4
	beq	$a1, $a0, .LBB0_585
# %bb.582:                              # %.preheader466.2.i
                                        #   in Loop: Header=BB0_435 Depth=2
	slli.d	$a0, $s5, 2
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_589
# %bb.583:                              # %.preheader466.3.thread.i
                                        #   in Loop: Header=BB0_435 Depth=2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_586
.LBB0_584:                              #   in Loop: Header=BB0_435 Depth=2
	addi.d	$a1, $a1, -2
	b	.LBB0_587
.LBB0_585:                              #   in Loop: Header=BB0_435 Depth=2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a2, $s5, 3
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_586:                              # %.preheader466.5.i.thread
                                        #   in Loop: Header=BB0_435 Depth=2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
.LBB0_587:                              # %.preheader466.6.i
                                        #   in Loop: Header=BB0_435 Depth=2
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_592
# %bb.588:                              # %.preheader466.7.thread.i
                                        #   in Loop: Header=BB0_435 Depth=2
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a1, $a3, 1
	bstrpick.d	$a2, $a3, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a3, $a3, 2
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 15
	b	.LBB0_594
.LBB0_589:                              #   in Loop: Header=BB0_435 Depth=2
	addi.w	$a1, $a1, -3
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_579
.LBB0_590:                              #   in Loop: Header=BB0_435 Depth=2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_591:                              # %.preheader466.6.thread.i
                                        #   in Loop: Header=BB0_435 Depth=2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
.LBB0_592:                              # %.preheader466.7.i
                                        #   in Loop: Header=BB0_435 Depth=2
	addi.w	$a1, $a1, -1
	slli.d	$a0, $a0, 1
	bnez	$a1, .LBB0_594
# %bb.593:                              #   in Loop: Header=BB0_435 Depth=2
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a1, $a3, 1
	bstrpick.d	$a2, $a3, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a3, $a3, 2
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_594:                              # %getbits.exit223.i
                                        #   in Loop: Header=BB0_435 Depth=2
	slli.d	$s5, $a0, 1
	addi.w	$s6, $a1, -1
	bstrpick.d	$a0, $a0, 31, 15
	ori	$a2, $zero, 255
	bne	$a0, $a2, .LBB0_621
# %bb.595:                              # %.preheader464.i
                                        #   in Loop: Header=BB0_435 Depth=2
	bstrpick.d	$a0, $s5, 15, 1
	slli.d	$s5, $a0, 1
	ori	$a0, $zero, 8
	bltu	$a0, $a1, .LBB0_597
# %bb.596:                              # %.preheader464.i
                                        #   in Loop: Header=BB0_435 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	sub.w	$a0, $s8, $a0
	ori	$a1, $zero, 296
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB0_572
.LBB0_597:                              # %.preheader.i.preheader
                                        #   in Loop: Header=BB0_435 Depth=2
	ori	$a0, $zero, 296
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
.LBB0_598:                              # %.preheader.i
                                        #   Parent Loop BB0_391 Depth=1
                                        #     Parent Loop BB0_435 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ori	$a0, $zero, 1
	beq	$s6, $a0, .LBB0_601
# %bb.599:                              # %.preheader.i
                                        #   in Loop: Header=BB0_598 Depth=3
	bnez	$s6, .LBB0_605
# %bb.600:                              # %.thread.i
                                        #   in Loop: Header=BB0_598 Depth=3
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $s5
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_602
.LBB0_601:                              #   in Loop: Header=BB0_598 Depth=3
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a2, $s5, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_602:                              # %.thread
                                        #   in Loop: Header=BB0_598 Depth=3
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_614
.LBB0_603:                              #   in Loop: Header=BB0_598 Depth=3
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_608
# %bb.604:                              # %.thread707.i
                                        #   in Loop: Header=BB0_598 Depth=3
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_615
.LBB0_605:                              #   in Loop: Header=BB0_598 Depth=3
	ori	$a0, $zero, 3
	beq	$s6, $a0, .LBB0_609
# %bb.606:                              #   in Loop: Header=BB0_598 Depth=3
	slli.d	$a0, $s5, 2
	ori	$a1, $zero, 2
	bne	$s6, $a1, .LBB0_613
# %bb.607:                              # %.thread697.i
                                        #   in Loop: Header=BB0_598 Depth=3
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_610
.LBB0_608:                              #   in Loop: Header=BB0_598 Depth=3
	addi.d	$a1, $a1, -2
	b	.LBB0_611
.LBB0_609:                              #   in Loop: Header=BB0_598 Depth=3
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s7, $a0
	slli.d	$a2, $s5, 3
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_610:                              # %.thread111
                                        #   in Loop: Header=BB0_598 Depth=3
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
.LBB0_611:                              #   in Loop: Header=BB0_598 Depth=3
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_616
# %bb.612:                              # %.thread717.i
                                        #   in Loop: Header=BB0_598 Depth=3
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a1, $a3, 1
	bstrpick.d	$a2, $a3, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a3, $a3, 2
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 15
	b	.LBB0_618
.LBB0_613:                              #   in Loop: Header=BB0_598 Depth=3
	addi.w	$a1, $s6, -2
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_603
.LBB0_614:                              #   in Loop: Header=BB0_598 Depth=3
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_615:                              # %.thread713.i
                                        #   in Loop: Header=BB0_598 Depth=3
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
.LBB0_616:                              #   in Loop: Header=BB0_598 Depth=3
	addi.w	$a1, $a1, -1
	slli.d	$a0, $a0, 1
	bnez	$a1, .LBB0_618
# %bb.617:                              #   in Loop: Header=BB0_598 Depth=3
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a1, $a3, 1
	bstrpick.d	$a2, $a3, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a3, $a3, 2
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_618:                              # %getbits.exit228.i
                                        #   in Loop: Header=BB0_598 Depth=3
	slli.d	$s5, $a0, 1
	bstrpick.d	$a0, $a0, 31, 15
	addi.w	$s6, $a1, -1
	ori	$a2, $zero, 255
	bne	$a0, $a2, .LBB0_622
# %bb.619:                              #   in Loop: Header=BB0_598 Depth=3
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 255
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	bstrpick.d	$a0, $s5, 15, 1
	slli.d	$s5, $a0, 1
	ori	$a0, $zero, 8
	bltu	$a0, $a1, .LBB0_598
# %bb.620:                              #   in Loop: Header=BB0_598 Depth=3
	move	$s4, $a5
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	sub.w	$a0, $s8, $a0
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB0_598
	b	.LBB0_516
.LBB0_621:                              #   in Loop: Header=BB0_435 Depth=2
	move	$t1, $a4
	move	$s4, $a5
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	ori	$a3, $zero, 41
	b	.LBB0_527
.LBB0_622:                              #   in Loop: Header=BB0_435 Depth=2
	move	$t1, $a4
	move	$s4, $a5
	b	.LBB0_517
.LBB0_623:                              # %.lr.ph.preheader.i.i
                                        #   in Loop: Header=BB0_391 Depth=1
	move	$a1, $zero
	move	$a0, $zero
	sltui	$a3, $a2, 20
	ori	$a4, $zero, 20
	masknez	$a4, $a4, $a3
	maskeqz	$a2, $a2, $a3
	or	$a2, $a2, $a4
	andi	$a2, $a2, 30
	b	.LBB0_625
.LBB0_624:                              #   in Loop: Header=BB0_625 Depth=2
	move	$a3, $zero
	addi.d	$a1, $a1, 2
	add.d	$a0, $a3, $a0
	bgeu	$a1, $a2, .LBB0_627
.LBB0_625:                              # %.lr.ph.i.i
                                        #   Parent Loop BB0_391 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a3, $s3, $a1
	beqz	$a3, .LBB0_624
# %bb.626:                              #   in Loop: Header=BB0_625 Depth=2
	add.d	$a3, $s3, $a1
	ld.bu	$a3, $a3, 1
	sltui	$a3, $a3, 1
	addi.d	$a1, $a1, 2
	add.d	$a0, $a3, $a0
	bltu	$a1, $a2, .LBB0_625
.LBB0_627:                              # %._crit_edge.loopexit.i.i
                                        #   in Loop: Header=BB0_391 Depth=1
	slli.w	$a1, $a0, 2
	move	$a0, $s3
	bltu	$a1, $a2, .LBB0_632
.LBB0_628:                              # %.lr.ph49.preheader.i.i
                                        #   in Loop: Header=BB0_391 Depth=1
	move	$a1, $zero
	bstrpick.d	$a2, $a6, 31, 0
	move	$a3, $s3
.LBB0_629:                              # %.lr.ph49.i.i
                                        #   Parent Loop BB0_391 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.b	$a4, $a0, $a1
	addi.d	$a5, $a3, 1
	addi.d	$a1, $a1, 2
	st.b	$a4, $a3, 0
	move	$a3, $a5
	bltu	$a1, $a2, .LBB0_629
# %bb.630:                              # %u2a.exit.loopexit.i
                                        #   in Loop: Header=BB0_391 Depth=1
	bstrpick.d	$a6, $a6, 31, 1
	st.d	$a6, $sp, 136                   # 8-byte Folded Spill
	b	.LBB0_632
.LBB0_631:                              # %.thread783.i
                                        #   in Loop: Header=BB0_391 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	addi.d	$s5, $sp, 1328
	ld.d	$s7, $sp, 200                   # 8-byte Folded Reload
.LBB0_632:                              # %u2a.exit.i
                                        #   in Loop: Header=BB0_391 Depth=1
	move	$s2, $s6
	addi.w	$s7, $s7, 1
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a2, $a0, %pc_lo12(.L.str.19)
	addi.d	$a0, $sp, 304
	ori	$a1, $zero, 1023
	move	$a3, $fp
	move	$s8, $s7
	move	$a4, $s7
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	st.b	$zero, $sp, 1327
	addi.d	$a0, $sp, 304
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	bge	$a0, $s7, .LBB0_658
# %bb.633:                              #   in Loop: Header=BB0_391 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.w	$s6, $a0, 0
	move	$a0, $s7
	move	$a1, $s3
	move	$a2, $s6
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	bne	$a0, $s6, .LBB0_659
# %bb.634:                              #   in Loop: Header=BB0_391 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s6, $s2
	ld.bu	$a0, $s2, 0
	beqz	$a0, .LBB0_636
# %bb.635:                              #   in Loop: Header=BB0_391 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	addi.d	$a1, $sp, 304
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_637
.LBB0_636:                              #   in Loop: Header=BB0_391 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_637:                              #   in Loop: Header=BB0_391 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s6, 0
	ori	$a1, $zero, 1
	beq	$s3, $a1, .LBB0_661
# %bb.638:                              #   in Loop: Header=BB0_391 Depth=1
	move	$s7, $s8
	ori	$s8, $zero, 8
	ld.d	$s2, $sp, 256                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_640
# %bb.639:                              #   in Loop: Header=BB0_391 Depth=1
	addi.d	$a0, $sp, 304
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_640:                              # %.outer.i
                                        #   in Loop: Header=BB0_391 Depth=1
	st.d	$s7, $sp, 200                   # 8-byte Folded Spill
	b	.LBB0_391
.LBB0_641:                              # %._crit_edge.i
                                        #   in Loop: Header=BB0_391 Depth=1
	move	$a0, $s7
	move	$s2, $t1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB0_644
# %bb.642:                              #   in Loop: Header=BB0_391 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	b	.LBB0_426
.LBB0_643:                              # %.thread442.i
                                        #   in Loop: Header=BB0_391 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	b	.LBB0_426
.LBB0_644:                              #   in Loop: Header=BB0_391 Depth=1
	addi.d	$s5, $sp, 1328
	ld.d	$s7, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	addi.w	$a2, $a6, 0
	ori	$a0, $zero, 2
	bgeu	$a2, $a0, .LBB0_427
	b	.LBB0_632
.LBB0_645:
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	b	.LBB0_384
.LBB0_646:
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	b	.LBB0_384
.LBB0_647:
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	b	.LBB0_650
.LBB0_648:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	b	.LBB0_384
.LBB0_649:
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
.LBB0_650:
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -102
	b	.LBB0_386
.LBB0_651:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_385
.LBB0_652:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_385
.LBB0_653:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	addi.d	$a1, $sp, 304
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_655
.LBB0_654:
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
.LBB0_655:                              # %ea06.exit
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -123
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	b	.LBB0_386
.LBB0_656:
	beqz	$a0, .LBB0_668
# %bb.657:
	ori	$a0, $zero, 1
	b	.LBB0_386
.LBB0_658:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	addi.d	$a1, $sp, 304
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_660
.LBB0_659:
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
.LBB0_660:                              # %ea05.exit
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -123
	move	$s6, $s2
	b	.LBB0_386
.LBB0_661:
	bnez	$a0, .LBB0_663
# %bb.662:
	addi.d	$a0, $sp, 304
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_663:
	ori	$a0, $zero, 1
	move	$s6, $s2
	b	.LBB0_386
.LBB0_664:
	move	$a0, $s4
	b	.LBB0_666
.LBB0_665:
	move	$a0, $s6
.LBB0_666:                              # %ea06.exit
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	b	.LBB0_386
.LBB0_667:
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	ld.d	$s6, $sp, 160                   # 8-byte Folded Reload
	b	.LBB0_386
.LBB0_668:
	addi.d	$a0, $sp, 304
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB0_386
.Lfunc_end0:
	.size	cli_scanautoit, .Lfunc_end0-cli_scanautoit
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_338-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_334-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_330-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_287-.LJTI0_0
	.word	.LBB0_287-.LJTI0_0
	.word	.LBB0_287-.LJTI0_0
	.word	.LBB0_287-.LJTI0_0
	.word	.LBB0_287-.LJTI0_0
	.word	.LBB0_287-.LJTI0_0
	.word	.LBB0_287-.LJTI0_0
	.word	.LBB0_287-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_282-.LJTI0_0
	.word	.LBB0_282-.LJTI0_0
	.word	.LBB0_282-.LJTI0_0
	.word	.LBB0_282-.LJTI0_0
	.word	.LBB0_282-.LJTI0_0
	.word	.LBB0_282-.LJTI0_0
	.word	.LBB0_282-.LJTI0_0
	.word	.LBB0_282-.LJTI0_0
	.word	.LBB0_282-.LJTI0_0
	.word	.LBB0_282-.LJTI0_0
	.word	.LBB0_282-.LJTI0_0
	.word	.LBB0_282-.LJTI0_0
	.word	.LBB0_282-.LJTI0_0
	.word	.LBB0_282-.LJTI0_0
	.word	.LBB0_282-.LJTI0_0
	.word	.LBB0_282-.LJTI0_0
	.word	.LBB0_282-.LJTI0_0
	.word	.LBB0_282-.LJTI0_0
	.word	.LBB0_282-.LJTI0_0
	.word	.LBB0_282-.LJTI0_0
	.word	.LBB0_282-.LJTI0_0
	.word	.LBB0_282-.LJTI0_0
	.word	.LBB0_282-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_379-.LJTI0_0
	.word	.LBB0_341-.LJTI0_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function MT_decrypt
	.type	MT_decrypt,@function
MT_decrypt:                             # @MT_decrypt
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$fp, $sp, 2024                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2016                  # 8-byte Folded Spill
	addi.d	$sp, $sp, -512
	st.w	$a2, $sp, 16
	ori	$a3, $zero, 1
	lu12i.w	$a4, -1
	ori	$a4, $a4, 1604
	lu12i.w	$a5, 442488
	ori	$a5, $a5, 2405
	addi.d	$a6, $sp, 16
	move	$t0, $a2
	ori	$a7, $zero, 1
	.p2align	4, , 16
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t1, $t0, 31, 30
	xor	$t0, $t1, $t0
	mul.d	$t1, $t0, $a5
	add.w	$t0, $t1, $a7
	add.d	$t1, $a3, $t1
	add.d	$t2, $a6, $a4
	stptr.w	$t1, $t2, 2496
	addi.d	$a7, $a7, 1
	addi.d	$a4, $a4, 4
	addi.d	$a3, $a3, 1
	bnez	$a4, .LBB1_1
# %bb.2:
	ori	$a3, $zero, 1
	ori	$a4, $zero, 2512
	add.d	$a4, $sp, $a4
	stptr.w	$a3, $a4, 0
	beqz	$a1, .LBB1_12
# %bb.3:                                # %.lr.ph
	ori	$a3, $zero, 2520
	add.d	$a3, $sp, $a3
	ldptr.d	$t7, $a3, 0
	addi.d	$a3, $sp, 16
	ori	$a4, $zero, 2496
	ori	$a5, $zero, 624
	lu12i.w	$a6, 524287
	ori	$a6, $a6, 4094
	vreplgr2vr.w	$vr0, $a6
	lu12i.w	$a6, -524288
	vreplgr2vr.w	$vr1, $a6
	vrepli.w	$vr2, 1
	vrepli.b	$vr3, 0
	lu12i.w	$a7, -421749
	ori	$a7, $a7, 223
	vreplgr2vr.w	$vr4, $a7
	ori	$t0, $zero, 896
	lu32i.d	$a6, 0
	lu32i.d	$a7, 0
	ori	$t1, $zero, 2484
	ori	$t2, $zero, 2488
	ori	$t3, $zero, 2492
	ori	$t4, $zero, 1584
	lu12i.w	$t5, -404795
	ori	$t5, $t5, 1664
	lu12i.w	$t6, 31744
	b	.LBB1_6
	.p2align	4, , 16
.LBB1_4:                                # %._crit_edge56.i
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.w	$t8, $t7, 0
.LBB1_5:                                # %MT_getnext.exit
                                        #   in Loop: Header=BB1_6 Depth=1
	addi.w	$a1, $a1, -1
	bstrpick.d	$fp, $t8, 31, 11
	xor	$t8, $fp, $t8
	slli.d	$fp, $t8, 7
	and	$fp, $fp, $t5
	xor	$t8, $fp, $t8
	slli.d	$fp, $t8, 15
	and	$fp, $fp, $t6
	xor	$fp, $fp, $t8
	ld.b	$s0, $a0, 0
	srli.d	$fp, $fp, 19
	srli.d	$t8, $t8, 1
	xor	$t8, $fp, $t8
	xor	$t8, $s0, $t8
	st.b	$t8, $a0, 0
	addi.d	$a0, $a0, 1
	addi.d	$t7, $t7, 4
	beqz	$a1, .LBB1_12
.LBB1_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
                                        #     Child Loop BB1_10 Depth 2
	ldx.w	$t8, $a4, $a3
	addi.w	$t8, $t8, -1
	ori	$fp, $zero, 2512
	add.d	$fp, $sp, $fp
	stptr.w	$t8, $fp, 0
	bnez	$t8, .LBB1_4
# %bb.7:                                # %vector.ph23
                                        #   in Loop: Header=BB1_6 Depth=1
	move	$t7, $zero
	ori	$t8, $zero, 2512
	add.d	$t8, $sp, $t8
	stptr.w	$a5, $t8, 0
	vinsgr2vr.w	$vr5, $a2, 0
	vreplvei.w	$vr5, $vr5, 0
	.p2align	4, , 16
.LBB1_8:                                # %vector.body24
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vori.b	$vr6, $vr5, 0
	add.d	$a2, $a3, $t7
	vld	$vr5, $a2, 4
	vbsrl.v	$vr6, $vr6, 12
	vbsll.v	$vr7, $vr5, 4
	vor.v	$vr6, $vr7, $vr6
	vand.v	$vr7, $vr5, $vr0
	vand.v	$vr6, $vr6, $vr1
	vor.v	$vr6, $vr7, $vr6
	vsrli.w	$vr6, $vr6, 1
	vld	$vr7, $a2, 1588
	vand.v	$vr8, $vr5, $vr2
	vseqi.w	$vr8, $vr8, 0
	vbitsel.v	$vr8, $vr4, $vr3, $vr8
	vxor.v	$vr7, $vr8, $vr7
	vxor.v	$vr6, $vr7, $vr6
	vstx	$vr6, $t7, $a3
	addi.d	$t7, $t7, 16
	bne	$t7, $t0, .LBB1_8
# %bb.9:                                # %vector.ph
                                        #   in Loop: Header=BB1_6 Depth=1
	ld.wu	$t7, $sp, 916
	move	$a2, $zero
	vpickve2gr.w	$t8, $vr5, 3
	and	$t8, $t8, $a6
	srli.d	$fp, $t7, 1
	bstrins.d	$t8, $fp, 30, 1
	srli.d	$t8, $t8, 1
	ldx.w	$fp, $t1, $a3
	andi	$s0, $t7, 1
	sub.d	$s0, $zero, $s0
	and	$s0, $s0, $a7
	xor	$fp, $s0, $fp
	ld.wu	$s0, $sp, 920
	xor	$t8, $fp, $t8
	st.w	$t8, $sp, 912
	and	$t7, $t7, $a6
	srli.d	$t8, $s0, 1
	bstrins.d	$t7, $t8, 30, 1
	srli.d	$t7, $t7, 1
	ldx.w	$t8, $t2, $a3
	andi	$fp, $s0, 1
	sub.d	$fp, $zero, $fp
	and	$fp, $fp, $a7
	xor	$t8, $fp, $t8
	ld.wu	$fp, $sp, 924
	xor	$t7, $t8, $t7
	st.w	$t7, $sp, 916
	and	$t7, $s0, $a6
	srli.d	$t8, $fp, 1
	bstrins.d	$t7, $t8, 30, 1
	ldx.w	$t8, $t3, $a3
	andi	$s0, $fp, 1
	sub.d	$s0, $zero, $s0
	and	$s0, $s0, $a7
	xor	$t8, $s0, $t8
	srli.d	$t7, $t7, 1
	xor	$t7, $t8, $t7
	st.w	$t7, $sp, 920
	vinsgr2vr.w	$vr5, $fp, 0
	vreplvei.w	$vr5, $vr5, 0
	.p2align	4, , 16
.LBB1_10:                               # %vector.body
                                        #   Parent Loop BB1_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$t7, $a3, $a2
	vld	$vr6, $t7, 912
	vbsrl.v	$vr5, $vr5, 12
	vbsll.v	$vr7, $vr6, 4
	vor.v	$vr5, $vr7, $vr5
	vand.v	$vr7, $vr6, $vr0
	vand.v	$vr5, $vr5, $vr1
	vor.v	$vr5, $vr7, $vr5
	vsrli.w	$vr5, $vr5, 1
	vldx	$vr7, $a2, $a3
	vand.v	$vr8, $vr6, $vr2
	vseqi.w	$vr8, $vr8, 0
	vbitsel.v	$vr8, $vr4, $vr3, $vr8
	vxor.v	$vr7, $vr8, $vr7
	vxor.v	$vr5, $vr7, $vr5
	addi.d	$a2, $a2, 16
	vst	$vr5, $t7, 908
	vori.b	$vr5, $vr6, 0
	bne	$a2, $t4, .LBB1_10
# %bb.11:                               # %._crit_edge.i
                                        #   in Loop: Header=BB1_6 Depth=1
	addi.d	$t7, $sp, 16
	ldx.wu	$t8, $t3, $t7
	ld.wu	$a2, $sp, 16
	and	$t8, $t8, $a6
	srli.d	$fp, $a2, 1
	bstrins.d	$t8, $fp, 30, 1
	srli.d	$t8, $t8, 1
	ld.w	$fp, $sp, 1600
	andi	$s0, $a2, 1
	sub.d	$s0, $zero, $s0
	and	$s0, $s0, $a7
	xor	$fp, $s0, $fp
	xor	$t8, $fp, $t8
	ori	$fp, $zero, 2508
	add.d	$fp, $sp, $fp
	stptr.w	$t8, $fp, 0
	move	$t8, $a2
	b	.LBB1_5
.LBB1_12:                               # %._crit_edge
	addi.d	$sp, $sp, 512
	ld.d	$s0, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end1:
	.size	MT_decrypt, .Lfunc_end1-MT_decrypt
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function LAME_decrypt
.LCPI2_0:
	.dword	0x4070000000000000              # double 256
	.text
	.p2align	5
	.type	LAME_decrypt,@function
LAME_decrypt:                           # @LAME_decrypt
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$fp, $sp, 88                    # 8-byte Folded Spill
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	lu12i.w	$a3, -342684
	ori	$a6, $a3, 2821
	mul.d	$a2, $a2, $a6
	addi.d	$a2, $a2, 1
	mul.d	$a3, $a2, $a6
	addi.d	$a3, $a3, 1
	st.w	$a3, $sp, 16
	mul.d	$a3, $a3, $a6
	rotri.w	$a7, $a2, 23
	addi.d	$a2, $a3, 1
	st.w	$a2, $sp, 20
	mul.d	$a3, $a2, $a6
	addi.d	$a3, $a3, 1
	st.w	$a3, $sp, 24
	mul.d	$a4, $a3, $a6
	addi.d	$a4, $a4, 1
	st.w	$a4, $sp, 28
	mul.d	$a5, $a4, $a6
	addi.d	$a5, $a5, 1
	st.w	$a5, $sp, 32
	mul.d	$t0, $a5, $a6
	addi.d	$t0, $t0, 1
	st.w	$t0, $sp, 36
	mul.d	$t1, $t0, $a6
	addi.d	$t1, $t1, 1
	st.w	$t1, $sp, 40
	mul.d	$t2, $t1, $a6
	addi.d	$t2, $t2, 1
	st.w	$t2, $sp, 44
	mul.d	$t3, $t2, $a6
	addi.d	$t3, $t3, 1
	mul.d	$t4, $t3, $a6
	addi.d	$t4, $t4, 1
	mul.d	$t5, $t4, $a6
	addi.d	$t5, $t5, 1
	mul.d	$t6, $t5, $a6
	addi.d	$t6, $t6, 1
	mul.d	$t7, $t6, $a6
	addi.d	$t7, $t7, 1
	mul.d	$t8, $t7, $a6
	addi.d	$t8, $t8, 1
	mul.d	$fp, $t8, $a6
	addi.d	$fp, $fp, 1
	mul.d	$a6, $fp, $a6
	addi.d	$a6, $a6, 1
	rotri.w	$s0, $t4, 19
	add.d	$a7, $s0, $a7
	st.w	$a7, $sp, 12
	vinsgr2vr.w	$vr0, $t7, 0
	vinsgr2vr.w	$vr0, $t8, 1
	vinsgr2vr.w	$vr0, $fp, 2
	vinsgr2vr.w	$vr0, $a6, 3
	vsrli.w	$vr1, $vr0, 23
	vslli.w	$vr0, $vr0, 9
	vor.v	$vr0, $vr0, $vr1
	vinsgr2vr.w	$vr1, $t0, 0
	vinsgr2vr.w	$vr1, $t1, 1
	vinsgr2vr.w	$vr1, $t2, 2
	vinsgr2vr.w	$vr1, $t3, 3
	vsrli.w	$vr2, $vr1, 19
	vslli.w	$vr1, $vr1, 13
	vor.v	$vr1, $vr1, $vr2
	vadd.w	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 64
	vinsgr2vr.w	$vr0, $t3, 0
	vinsgr2vr.w	$vr0, $t4, 1
	vinsgr2vr.w	$vr0, $t5, 2
	vinsgr2vr.w	$vr0, $t6, 3
	vsrli.w	$vr1, $vr0, 23
	vslli.w	$vr0, $vr0, 9
	vor.v	$vr0, $vr0, $vr1
	vinsgr2vr.w	$vr1, $a2, 0
	vinsgr2vr.w	$vr1, $a3, 1
	vinsgr2vr.w	$vr1, $a4, 2
	vinsgr2vr.w	$vr1, $a5, 3
	vsrli.w	$vr2, $vr1, 19
	vslli.w	$vr1, $vr1, 13
	vor.v	$vr1, $vr1, $vr2
	vadd.w	$vr0, $vr0, $vr1
	vst	$vr0, $sp, 48
	beqz	$a1, .LBB2_3
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$a2, $sp, 12
	ori	$a3, $zero, 8
	lu32i.d	$a3, 1
	vreplgr2vr.d	$vr4, $a3
	vrepli.b	$vr0, -1
	vrepli.w	$vr1, 16
	lu12i.w	$a3, -1
	lu32i.d	$a3, 0
	pcalau12i	$a4, %pc_hi20(.LCPI2_0)
	fld.d	$fa2, $a4, %pc_lo12(.LCPI2_0)
	lu52i.d	$a4, $zero, 1023
	vldi	$vr3, -784
	addi.d	$a5, $zero, -1
	.p2align	4, , 16
.LBB2_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	vpickve2gr.w	$a6, $vr4, 0
	bstrpick.d	$a6, $a6, 31, 0
	slli.d	$a6, $a6, 2
	ldx.w	$a7, $a2, $a6
	vpickve2gr.w	$t0, $vr4, 1
	bstrpick.d	$t0, $t0, 31, 0
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a2, $t0
	rotri.w	$a7, $a7, 23
	rotri.w	$t0, $t0, 19
	add.d	$a7, $t0, $a7
	stx.w	$a7, $a2, $a6
	vadd.w	$vr5, $vr4, $vr0
	vseqi.w	$vr4, $vr4, 0
	vbitsel.v	$vr4, $vr5, $vr1, $vr4
	vpickve2gr.w	$a6, $vr4, 0
	bstrpick.d	$a6, $a6, 31, 0
	slli.d	$a6, $a6, 2
	ldx.w	$a7, $a2, $a6
	vpickve2gr.w	$t0, $vr4, 1
	bstrpick.d	$t0, $t0, 31, 0
	slli.d	$t0, $t0, 2
	ldx.w	$t0, $a2, $t0
	addi.w	$a1, $a1, -1
	rotri.w	$a7, $a7, 23
	rotri.w	$t0, $t0, 19
	add.d	$a7, $t0, $a7
	and	$t0, $a7, $a3
	stx.w	$a7, $a2, $a6
	slli.d	$a6, $t0, 20
	bstrins.d	$a6, $a7, 31, 20
	or	$a6, $a6, $a4
	movgr2fr.d	$fa5, $a6
	fadd.d	$fa5, $fa5, $fa3
	fmul.d	$fa5, $fa5, $fa2
	ftintrz.w.d	$fa6, $fa5
	movfr2gr.s	$a6, $fa6
	vadd.w	$vr6, $vr4, $vr0
	vseqi.w	$vr4, $vr4, 0
	slti	$a6, $a6, 256
	ftintrz.l.d	$fa5, $fa5
	movfr2gr.d	$a7, $fa5
	ld.b	$t0, $a0, 0
	maskeqz	$a7, $a7, $a6
	masknez	$a6, $a5, $a6
	or	$a6, $a7, $a6
	xor	$a6, $a6, $t0
	st.b	$a6, $a0, 0
	addi.d	$a0, $a0, 1
	vbitsel.v	$vr4, $vr6, $vr1, $vr4
	bnez	$a1, .LBB2_2
.LBB2_3:                                # %._crit_edge
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.Lfunc_end2:
	.size	LAME_decrypt, .Lfunc_end2-LAME_decrypt
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"in scanautoit()\n"
	.size	.L.str, 17

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"autoit: Can't create temporary directory %s\n"
	.size	.L.str.1, 45

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"autoit: Extracting files to %s\n"
	.size	.L.str.2, 32

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"autoit: unknown method\n"
	.size	.L.str.3, 24

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"autoit: no FILE magic found, extraction complete\n"
	.size	.L.str.4, 50

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"autoit: magic string '%s'\n"
	.size	.L.str.5, 27

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"autoit: original filename '%s'\n"
	.size	.L.str.6, 32

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"autoit: bad file size - giving up\n"
	.size	.L.str.7, 35

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"autoit: skipping empty file\n"
	.size	.L.str.8, 29

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"autoit: compressed size: %x\n"
	.size	.L.str.9, 29

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"autoit: advertised uncompressed size %x\n"
	.size	.L.str.10, 41

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"autoit: ref chksum: %x\n"
	.size	.L.str.11, 24

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"autoit: skipping file due to size limit (%u, max: %lu)\n"
	.size	.L.str.12, 56

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"autoit: failed to read compressed stream. broken/truncated file?\n"
	.size	.L.str.13, 66

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"autoit: file is compressed\n"
	.size	.L.str.14, 28

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"autoit: bad magic or unsupported version\n"
	.size	.L.str.15, 42

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"autoit: uncompressed size again: %x\n"
	.size	.L.str.16, 37

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"autoit: decompression error - partial file may exist\n"
	.size	.L.str.17, 54

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"autoit: file is not compressed\n"
	.size	.L.str.18, 32

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"%s/autoit.%.3u"
	.size	.L.str.19, 15

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"autoit: Can't create file %s\n"
	.size	.L.str.20, 30

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"autoit: cannot write %d bytes\n"
	.size	.L.str.21, 31

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"autoit: file extracted to %s\n"
	.size	.L.str.22, 30

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"autoit: file successfully extracted\n"
	.size	.L.str.23, 37

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"autoit: files limit reached (max: %u)\n"
	.size	.L.str.24, 39

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"autoit: getbits() - not enough bits available\n"
	.size	.L.str.25, 47

	.type	.L__const.ea06.prefixes,@object # @__const.ea06.prefixes
	.section	.rodata.cst8,"aM",@progbits,8
.L__const.ea06.prefixes:
	.ascii	"\000\000@$\000.\"#"
	.size	.L__const.ea06.prefixes, 8

	.type	.L.str.26,@object               # @.str.26
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.26:
	.asciz	","
	.size	.L.str.26, 2

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"="
	.size	.L.str.27, 2

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	">"
	.size	.L.str.28, 2

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"<"
	.size	.L.str.29, 2

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"<>"
	.size	.L.str.30, 3

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	">="
	.size	.L.str.31, 3

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"<="
	.size	.L.str.32, 3

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"("
	.size	.L.str.33, 2

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	")"
	.size	.L.str.34, 2

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"+"
	.size	.L.str.35, 2

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"-"
	.size	.L.str.36, 2

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"/"
	.size	.L.str.37, 2

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"*"
	.size	.L.str.38, 2

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"&"
	.size	.L.str.39, 2

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"["
	.size	.L.str.40, 2

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"]"
	.size	.L.str.41, 2

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"=="
	.size	.L.str.42, 3

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"^"
	.size	.L.str.43, 2

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"+="
	.size	.L.str.44, 3

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"-="
	.size	.L.str.45, 3

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"/="
	.size	.L.str.46, 3

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"*="
	.size	.L.str.47, 3

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"&="
	.size	.L.str.48, 3

	.type	.L__const.ea06.opers,@object    # @__const.ea06.opers
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.L__const.ea06.opers:
	.dword	.L.str.26
	.dword	.L.str.27
	.dword	.L.str.28
	.dword	.L.str.29
	.dword	.L.str.30
	.dword	.L.str.31
	.dword	.L.str.32
	.dword	.L.str.33
	.dword	.L.str.34
	.dword	.L.str.35
	.dword	.L.str.36
	.dword	.L.str.37
	.dword	.L.str.38
	.dword	.L.str.39
	.dword	.L.str.40
	.dword	.L.str.41
	.dword	.L.str.42
	.dword	.L.str.43
	.dword	.L.str.44
	.dword	.L.str.45
	.dword	.L.str.46
	.dword	.L.str.47
	.dword	.L.str.48
	.size	.L__const.ea06.opers, 184

	.type	.L.str.49,@object               # @.str.49
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.49:
	.asciz	"autoit: no FILE magic found, giving up\n"
	.size	.L.str.49, 40

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	">>>AUTOIT SCRIPT<<<"
	.size	.L.str.50, 20

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"autoit: magic string too long to print\n"
	.size	.L.str.51, 40

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"autoit: file is too short\n"
	.size	.L.str.52, 27

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"autoit: script has got %u lines\n"
	.size	.L.str.53, 33

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"autoit: not enough space for an int\n"
	.size	.L.str.54, 37

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"0x%08x "
	.size	.L.str.55, 8

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"autoit: not enough space for an int64\n"
	.size	.L.str.56, 39

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"0x%016lx "
	.size	.L.str.57, 10

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"autoit: not enough space for a double\n"
	.size	.L.str.58, 39

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"%g "
	.size	.L.str.59, 4

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"autoit: not enough space for size\n"
	.size	.L.str.60, 35

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"autoit: size too big - needed %d, total %d, avail %d\n"
	.size	.L.str.61, 54

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"%s "
	.size	.L.str.62, 4

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"autoit: found unknown op (%x)\n"
	.size	.L.str.63, 31

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"autoit: decompilation aborted - partial script may exist\n"
	.size	.L.str.64, 58

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"autoit: %s extracted to %s\n"
	.size	.L.str.65, 28

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"script"
	.size	.L.str.66, 7

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"file"
	.size	.L.str.67, 5

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"autoit: %s successfully extracted\n"
	.size	.L.str.68, 35

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"autoit: Files limit reached (max: %u)\n"
	.size	.L.str.69, 39

	.section	".note.GNU-stack","",@progbits
	.addrsig
