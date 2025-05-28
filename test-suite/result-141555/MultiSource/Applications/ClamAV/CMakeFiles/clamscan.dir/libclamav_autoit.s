	.file	"libclamav_autoit.c"
	.text
	.globl	cli_scanautoit                  # -- Begin function cli_scanautoit
	.p2align	5
	.type	cli_scanautoit,@function
cli_scanautoit:                         # @cli_scanautoit
# %bb.0:
	addi.d	$sp, $sp, -1920
	st.d	$ra, $sp, 1912                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1904                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1896                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1888                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1880                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1872                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1864                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1856                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1848                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1840                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1832                  # 8-byte Folded Spill
	move	$s0, $a1
	move	$s1, $a0
	move	$a1, $a2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 207
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
	b	.LBB0_366
.LBB0_4:
	addi.w	$a0, $zero, -123
	b	.LBB0_367
.LBB0_5:
	addi.w	$a0, $zero, -118
	b	.LBB0_367
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
	ld.bu	$a0, $sp, 207
	ori	$a1, $zero, 54
	beq	$a0, $a1, .LBB0_12
# %bb.9:
	ori	$a1, $zero, 53
	bne	$a0, $a1, .LBB0_361
# %bb.10:
	addi.d	$s5, $sp, 1232
	addi.d	$a1, $sp, 1232
	ori	$a2, $zero, 16
	ori	$s2, $zero, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB0_363
# %bb.11:                               # %.preheader474.preheader.i
	move	$s7, $zero
	ld.bu	$a0, $sp, 1232
	ld.bu	$a1, $sp, 1233
	ld.bu	$a2, $sp, 1234
	ld.bu	$a3, $sp, 1235
	ld.bu	$a4, $sp, 1236
	ld.bu	$a5, $sp, 1237
	ld.bu	$a6, $sp, 1238
	ld.bu	$a7, $sp, 1239
	ld.bu	$t0, $sp, 1240
	ld.bu	$t1, $sp, 1241
	ld.bu	$t2, $sp, 1242
	ld.bu	$t3, $sp, 1243
	ld.bu	$t4, $sp, 1244
	ld.bu	$t5, $sp, 1245
	ld.bu	$t6, $sp, 1246
	ld.bu	$t7, $sp, 1247
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
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ori	$s8, $zero, 8
	lu12i.w	$a0, -201978
	ori	$a0, $a0, 3583
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ori	$a0, $a1, 2492
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cli_debug_flag)
	ld.d	$s2, $a0, %got_pc_lo12(cli_debug_flag)
	lu12i.w	$a0, 10
	ori	$a0, $a0, 606
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ori	$a0, $a1, 2476
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	lu12i.w	$a0, 15
	ori	$a0, $a0, 606
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	lu12i.w	$a0, 4
	ori	$s4, $a0, 1450
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	lu12i.w	$a0, 12
	ori	$a0, $a0, 978
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	lu12i.w	$a0, 217860
	ori	$a0, $a0, 325
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s2, $sp, 160                   # 8-byte Folded Spill
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	b	.LBB0_369
.LBB0_12:
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$s7, $zero
	addi.d	$s2, $sp, 1232
	lu12i.w	$a0, 339108
	ori	$a0, $a0, 875
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	lu12i.w	$a1, 10
	ori	$a0, $a1, 3516
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ori	$s8, $zero, 299
	lu12i.w	$a0, -5
	ori	$a0, $a0, 831
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$a0, $a1, 3503
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	lu12i.w	$a0, 15
	ori	$a0, $a0, 2080
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	lu12i.w	$a0, 8
	ori	$s5, $a0, 1980
	lu12i.w	$a0, 2
	ori	$a0, $a0, 1143
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	lu12i.w	$a0, 221956
	ori	$a0, $a0, 325
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
.LBB0_13:                               # %.outer.i22
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_15 Depth 2
                                        #       Child Loop BB0_29 Depth 3
                                        #       Child Loop BB0_33 Depth 3
                                        #       Child Loop BB0_50 Depth 3
                                        #       Child Loop BB0_54 Depth 3
                                        #     Child Loop BB0_74 Depth 2
                                        #       Child Loop BB0_239 Depth 3
                                        #       Child Loop BB0_169 Depth 3
                                        #       Child Loop BB0_174 Depth 3
                                        #     Child Loop BB0_281 Depth 2
                                        #       Child Loop BB0_300 Depth 3
                                        #       Child Loop BB0_308 Depth 3
                                        #       Child Loop BB0_312 Depth 3
	st.d	$s7, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $s0, 32
	beqz	$a0, .LBB0_15
.LBB0_14:                               #   in Loop: Header=BB0_13 Depth=1
	ld.w	$a1, $a0, 4
	addi.w	$a0, $a1, -1
	bltu	$a0, $s7, .LBB0_625
.LBB0_15:                               # %.critedge.i24
                                        #   Parent Loop BB0_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_29 Depth 3
                                        #       Child Loop BB0_33 Depth 3
                                        #       Child Loop BB0_50 Depth 3
                                        #       Child Loop BB0_54 Depth 3
	addi.d	$a1, $sp, 1232
	ori	$a2, $zero, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 8
	bne	$a0, $a1, .LBB0_363
# %bb.16:                               #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a0, $sp, 1232
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_624
# %bb.17:                               #   in Loop: Header=BB0_15 Depth=2
	ld.w	$s4, $sp, 1236
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	xor	$s5, $s4, $a0
	slli.w	$s3, $s5, 1
	bltz	$s3, .LBB0_363
# %bb.18:                               #   in Loop: Header=BB0_15 Depth=2
	bltu	$s8, $s5, .LBB0_26
# %bb.19:                               #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $sp, 1232
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_363
# %bb.20:                               #   in Loop: Header=BB0_15 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.d	$a0, $s5, $a0
	bstrpick.d	$a2, $a0, 15, 0
	addi.d	$a0, $sp, 1232
	move	$a1, $s3
	pcaddu18i	$ra, %call36(LAME_decrypt)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	beqz	$s3, .LBB0_34
# %bb.21:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a0, $zero, 5
	bltu	$s3, $a0, .LBB0_27
# %bb.22:                               #   in Loop: Header=BB0_15 Depth=2
	ld.bu	$a0, $sp, 1232
	ori	$a1, $zero, 255
	bne	$a0, $a1, .LBB0_27
# %bb.23:                               #   in Loop: Header=BB0_15 Depth=2
	ld.bu	$a0, $sp, 1233
	ori	$a1, $zero, 254
	bne	$a0, $a1, .LBB0_27
# %bb.24:                               #   in Loop: Header=BB0_15 Depth=2
	ld.bu	$a0, $sp, 1234
	beqz	$a0, .LBB0_27
# %bb.25:                               # %.thread.i.i43
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.w	$s3, $s3, -2
	addi.d	$a0, $sp, 1234
	b	.LBB0_32
.LBB0_26:                               #   in Loop: Header=BB0_15 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	b	.LBB0_36
.LBB0_27:                               # %.lr.ph.preheader.i.i52
                                        #   in Loop: Header=BB0_15 Depth=2
	move	$a2, $zero
	move	$a0, $zero
	sltui	$a1, $s3, 20
	ori	$a3, $zero, 20
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $s3, $a1
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
	ldx.bu	$a3, $a2, $s2
	beqz	$a3, .LBB0_28
# %bb.30:                               #   in Loop: Header=BB0_29 Depth=3
	add.d	$a3, $s2, $a2
	ld.bu	$a3, $a3, 1
	sltui	$a3, $a3, 1
	addi.d	$a2, $a2, 2
	add.d	$a0, $a3, $a0
	bltu	$a2, $a1, .LBB0_29
.LBB0_31:                               # %._crit_edge.loopexit.i.i59
                                        #   in Loop: Header=BB0_15 Depth=2
	slli.w	$a2, $a0, 2
	addi.d	$a0, $sp, 1232
	bltu	$a2, $a1, .LBB0_34
.LBB0_32:                               # %.lr.ph49.preheader.i.i44
                                        #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 2
	sltu	$a1, $a2, $s3
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $s3, $a1
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a1, $a1, -1
	srli.d	$a1, $a1, 1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $sp, 1232
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
	addi.d	$a1, $sp, 1232
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bne	$s4, $a0, .LBB0_36
# %bb.35:                               #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $sp, 1232
	ori	$a2, $zero, 19
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltu	$a0, $zero, $a0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
.LBB0_36:                               #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $sp, 1232
	ori	$a2, $zero, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB0_363
# %bb.37:                               #   in Loop: Header=BB0_15 Depth=2
	ld.w	$a0, $sp, 1232
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	xor	$s4, $a0, $a1
	slli.w	$s3, $s4, 1
	bltz	$s3, .LBB0_363
# %bb.38:                               #   in Loop: Header=BB0_15 Depth=2
	bltu	$s8, $s4, .LBB0_47
# %bb.39:                               #   in Loop: Header=BB0_15 Depth=2
	pcalau12i	$a0, %got_pc_hi20(cli_debug_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_debug_flag)
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB0_47
# %bb.40:                               #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $sp, 1232
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_363
# %bb.41:                               #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a0, $s4, -2048
	addi.d	$a0, $a0, -903
	bstrpick.d	$a2, $a0, 15, 0
	addi.d	$a0, $sp, 1232
	move	$a1, $s3
	pcaddu18i	$ra, %call36(LAME_decrypt)
	jirl	$ra, $ra, 0
	stx.h	$zero, $s3, $s2
	beqz	$s3, .LBB0_55
# %bb.42:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a0, $zero, 5
	bltu	$s3, $a0, .LBB0_48
# %bb.43:                               #   in Loop: Header=BB0_15 Depth=2
	ld.bu	$a0, $sp, 1232
	ori	$a1, $zero, 255
	bne	$a0, $a1, .LBB0_48
# %bb.44:                               #   in Loop: Header=BB0_15 Depth=2
	ld.bu	$a0, $sp, 1233
	ori	$a1, $zero, 254
	bne	$a0, $a1, .LBB0_48
# %bb.45:                               #   in Loop: Header=BB0_15 Depth=2
	ld.bu	$a0, $sp, 1234
	beqz	$a0, .LBB0_48
# %bb.46:                               # %.thread.i352.i
                                        #   in Loop: Header=BB0_15 Depth=2
	addi.w	$s3, $s3, -2
	addi.d	$a0, $sp, 1234
	b	.LBB0_53
.LBB0_47:                               #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	b	.LBB0_56
.LBB0_48:                               # %.lr.ph.preheader.i333.i
                                        #   in Loop: Header=BB0_15 Depth=2
	move	$a2, $zero
	move	$a0, $zero
	sltui	$a1, $s3, 20
	ori	$a3, $zero, 20
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $s3, $a1
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
	ldx.bu	$a3, $a2, $s2
	beqz	$a3, .LBB0_49
# %bb.51:                               #   in Loop: Header=BB0_50 Depth=3
	add.d	$a3, $s2, $a2
	ld.bu	$a3, $a3, 1
	sltui	$a3, $a3, 1
	addi.d	$a2, $a2, 2
	add.d	$a0, $a3, $a0
	bltu	$a2, $a1, .LBB0_50
.LBB0_52:                               # %._crit_edge.loopexit.i341.i
                                        #   in Loop: Header=BB0_15 Depth=2
	slli.w	$a2, $a0, 2
	addi.d	$a0, $sp, 1232
	bltu	$a2, $a1, .LBB0_55
.LBB0_53:                               # %.lr.ph49.preheader.i343.i
                                        #   in Loop: Header=BB0_15 Depth=2
	ori	$a2, $zero, 2
	sltu	$a1, $a2, $s3
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $s3, $a1
	or	$a1, $a1, $a2
	addi.d	$a1, $a1, -1
	srli.d	$a1, $a1, 1
	addi.d	$a1, $a1, 1
	addi.d	$a2, $sp, 1232
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
	addi.d	$a1, $sp, 1232
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_56:                               #   in Loop: Header=BB0_15 Depth=2
	addi.d	$a1, $sp, 1232
	ori	$a2, $zero, 13
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 13
	bne	$a0, $a1, .LBB0_363
# %bb.57:                               #   in Loop: Header=BB0_15 Depth=2
	ld.w	$s4, $sp, 1233
	addi.w	$s8, $zero, -1
	bge	$s8, $s4, .LBB0_623
# %bb.58:                               #   in Loop: Header=BB0_15 Depth=2
	ld.bu	$s3, $sp, 1232
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	bne	$s4, $s5, .LBB0_60
# %bb.59:                               #   in Loop: Header=BB0_15 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$s8, $zero, 299
	ld.d	$a0, $s0, 32
	bnez	$a0, .LBB0_14
	b	.LBB0_15
.LBB0_60:                               #   in Loop: Header=BB0_15 Depth=2
	xor	$s7, $s4, $s5
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	move	$a1, $s7
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1237
	xor	$a1, $a0, $s5
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1241
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
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	ori	$s8, $zero, 299
	ld.d	$a0, $s0, 32
	bnez	$a0, .LBB0_14
	b	.LBB0_15
.LBB0_64:                               #   in Loop: Header=BB0_13 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.w	$a0, $zero, -114
	beqz	$s4, .LBB0_364
# %bb.65:                               #   in Loop: Header=BB0_13 Depth=1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$a0, $s1
	move	$a1, $s4
	move	$a2, $s7
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s7, .LBB0_630
# %bb.66:                               #   in Loop: Header=BB0_13 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	move	$a0, $s4
	move	$a1, $s7
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(LAME_decrypt)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	bne	$s3, $a0, .LBB0_264
# %bb.67:                               #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_267
# %bb.68:                               #   in Loop: Header=BB0_13 Depth=1
	ld.w	$a0, $s4, 4
	revb.2w	$a1, $a0
	sltui	$a2, $a0, 1
	ld.d	$a3, $s0, 32
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s7, $a2
	or	$a1, $a2, $a1
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a1, 31, 0
	beqz	$a3, .LBB0_71
# %bb.69:                               #   in Loop: Header=BB0_13 Depth=1
	ld.d	$a1, $a3, 24
	beqz	$a1, .LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_13 Depth=1
	bltu	$a1, $a0, .LBB0_268
.LBB0_71:                               #   in Loop: Header=BB0_13 Depth=1
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s6, $sp, 80                    # 8-byte Folded Spill
	move	$s4, $a0
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_642
# %bb.72:                               #   in Loop: Header=BB0_13 Depth=1
	move	$s6, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.w	$s3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	st.d	$s3, $sp, 88                    # 8-byte Folded Spill
	beqz	$s3, .LBB0_270
# %bb.73:                               # %.lr.ph834.i
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$s5, $zero
	move	$t3, $zero
	move	$s3, $zero
	add.d	$a0, $s6, $s4
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$a4, $zero, 8
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
.LBB0_74:                               #   Parent Loop BB0_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_239 Depth 3
                                        #       Child Loop BB0_169 Depth 3
                                        #       Child Loop BB0_174 Depth 3
	bstrpick.d	$s3, $s3, 15, 0
	bnez	$t3, .LBB0_82
# %bb.75:                               #   in Loop: Header=BB0_74 Depth=2
	sub.w	$a0, $s7, $a4
	ori	$a1, $zero, 2
	bgeu	$a0, $a1, .LBB0_82
# %bb.76:                               # %.thread.i41
                                        #   in Loop: Header=BB0_74 Depth=2
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s4, $zero
.LBB0_77:                               #   in Loop: Header=BB0_74 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$t1, $zero
	ori	$a0, $zero, 1
	move	$a3, $s4
	ori	$t0, $zero, 1
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	bstrpick.d	$s3, $s3, 15, 0
	ori	$a1, $zero, 1
	bltu	$a1, $a3, .LBB0_149
.LBB0_78:                               # %getbits.exit359.i
                                        #   in Loop: Header=BB0_74 Depth=2
	beqz	$a0, .LBB0_149
# %bb.79:                               #   in Loop: Header=BB0_74 Depth=2
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	st.d	$t1, $sp, 40                    # 8-byte Folded Spill
	move	$a6, $zero
.LBB0_80:                               # %.loopexit743.sink.split.i
                                        #   in Loop: Header=BB0_74 Depth=2
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	move	$s3, $a6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a6, $s3
	move	$a0, $zero
	ori	$t0, $zero, 1
.LBB0_81:                               # %.loopexit743.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$t1, $sp, 40                    # 8-byte Folded Reload
	b	.LBB0_158
.LBB0_82:                               # %.preheader750.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=2
	bnez	$t3, .LBB0_84
# %bb.83:                               #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s4, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s4, $a0
	slli.d	$a1, $a1, 8
	addi.w	$a4, $a4, 2
	or	$a0, $a1, $a0
	or	$s3, $a0, $s3
	ori	$t3, $zero, 16
.LBB0_84:                               # %getbits.exit.i33
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $s3, 1
	addi.w	$s4, $t3, -1
	bstrpick.d	$a2, $s3, 31, 15
	sub.w	$a1, $s7, $a4
	bnez	$a2, .LBB0_88
# %bb.85:                               #   in Loop: Header=BB0_74 Depth=2
	ori	$a2, $zero, 15
	bltu	$a2, $t3, .LBB0_91
# %bb.86:                               #   in Loop: Header=BB0_74 Depth=2
	ori	$a2, $zero, 2
	bgeu	$a1, $a2, .LBB0_91
# %bb.87:                               #   in Loop: Header=BB0_74 Depth=2
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	move	$s3, $a0
	b	.LBB0_77
.LBB0_88:                               #   in Loop: Header=BB0_74 Depth=2
	bstrpick.d	$a0, $a0, 15, 1
	slli.d	$s3, $a0, 1
	ori	$a0, $zero, 8
	bltu	$a0, $t3, .LBB0_94
# %bb.89:                               #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 2
	bgeu	$a1, $a0, .LBB0_94
# %bb.90:                               #   in Loop: Header=BB0_74 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	move	$a0, $zero
	ori	$t0, $zero, 1
	b	.LBB0_196
.LBB0_91:                               # %.preheader748.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=2
	beqz	$s4, .LBB0_97
# %bb.92:                               # %.preheader748.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 2
	bne	$t3, $a0, .LBB0_105
# %bb.93:                               #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a1, $s4, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s4, $a0
	slli.d	$a2, $s3, 2
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
	b	.LBB0_98
.LBB0_94:                               # %.preheader749.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=2
	beqz	$s4, .LBB0_101
# %bb.95:                               # %.preheader749.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 2
	bne	$t3, $a0, .LBB0_108
# %bb.96:                               #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a1, $a3, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a3, $a0
	slli.d	$a2, $s3, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
	b	.LBB0_102
.LBB0_97:                               # %.preheader748.1.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a2, $s4, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s4, $a1
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
	ldx.bu	$a2, $s4, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s4, $a1
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
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a1, $a3, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a3, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $s3
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
.LBB0_102:                              # %.preheader749.3.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_191
.LBB0_103:                              # %.preheader749.4.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_112
# %bb.104:                              # %.preheader749.5.thread.i
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
	b	.LBB0_192
.LBB0_105:                              # %.preheader748.2.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 4
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	beq	$t3, $a0, .LBB0_113
# %bb.106:                              # %.preheader748.2.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $s3, 3
	ori	$a1, $zero, 3
	bne	$t3, $a1, .LBB0_125
# %bb.107:                              # %.preheader748.3.thread.i
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
	b	.LBB0_114
.LBB0_108:                              # %.preheader749.2.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 4
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	beq	$t3, $a0, .LBB0_121
# %bb.109:                              # %.preheader749.2.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $s3, 2
	ori	$a1, $zero, 3
	bne	$t3, $a1, .LBB0_190
# %bb.110:                              # %.preheader749.3.thread.i
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
	ldx.bu	$a1, $s4, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s4, $a0
	slli.d	$a2, $s3, 4
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
	ldx.bu	$a2, $s4, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s4, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_119
.LBB0_118:                              #   in Loop: Header=BB0_74 Depth=2
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
	ldx.bu	$a1, $a3, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a3, $a0
	slli.d	$a2, $s3, 3
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
	bnez	$a1, .LBB0_193
# %bb.124:                              # %.preheader749.7.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 15
	b	.LBB0_195
.LBB0_125:                              #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $t3, -3
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_99
.LBB0_126:                              #   in Loop: Header=BB0_74 Depth=2
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
	ldx.bu	$a2, $s4, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s4, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_132
.LBB0_131:                              #   in Loop: Header=BB0_74 Depth=2
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
	ldx.bu	$a2, $s4, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s4, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_138
.LBB0_137:                              #   in Loop: Header=BB0_74 Depth=2
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
	ldx.bu	$a2, $s4, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s4, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_144
.LBB0_143:                              #   in Loop: Header=BB0_74 Depth=2
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
	ldx.bu	$a2, $s4, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s4, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_148:                              #   in Loop: Header=BB0_74 Depth=2
	move	$t0, $zero
	slli.d	$s3, $a0, 1
	addi.w	$a3, $a1, -1
	bstrpick.d	$t1, $a0, 31, 15
	sub.w	$a0, $s7, $a4
	sltui	$a0, $a0, 2
	bstrpick.d	$s3, $s3, 15, 0
	ori	$a1, $zero, 1
	bgeu	$a1, $a3, .LBB0_78
.LBB0_149:                              # %.preheader747.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=2
	beqz	$a3, .LBB0_152
# %bb.150:                              # %.preheader747.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a3, -1
	slli.d	$a0, $s3, 1
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
	ldx.bu	$a1, $s4, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s4, $a0
	slli.d	$a1, $a1, 8
	addi.w	$a4, $a4, 2
	or	$a0, $a1, $a0
	or	$a0, $a0, $s3
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 15
.LBB0_153:                              # %getbits.exit364.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$s3, $a0, 1
	bstrpick.d	$a0, $a0, 31, 15
	addi.w	$a3, $a1, -1
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB0_157
# %bb.154:                              #   in Loop: Header=BB0_74 Depth=2
	bstrpick.d	$a0, $s3, 15, 1
	ori	$a6, $zero, 3
	slli.d	$s3, $a0, 1
	bltu	$a6, $a1, .LBB0_175
# %bb.155:                              #   in Loop: Header=BB0_74 Depth=2
	sub.w	$a0, $s7, $a4
	ori	$a2, $zero, 2
	bgeu	$a0, $a2, .LBB0_175
# %bb.156:                              #   in Loop: Header=BB0_74 Depth=2
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	st.d	$t1, $sp, 40                    # 8-byte Folded Spill
	b	.LBB0_80
.LBB0_157:                              #   in Loop: Header=BB0_74 Depth=2
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	move	$a6, $zero
.LBB0_158:                              # %.loopexit743.i
                                        #   in Loop: Header=BB0_74 Depth=2
	add.d	$a0, $a6, $a0
	addi.w	$a1, $a0, 2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	bgeu	$a1, $a2, .LBB0_269
# %bb.159:                              #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a0, $a0, 3
	bstrpick.d	$a2, $s5, 31, 0
	add.d	$a3, $s6, $a2
	bstrpick.d	$a5, $a0, 31, 0
	add.d	$a3, $a3, $a5
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	bltu	$a4, $a3, .LBB0_269
# %bb.160:                              #   in Loop: Header=BB0_74 Depth=2
	bgeu	$s6, $a3, .LBB0_269
# %bb.161:                              #   in Loop: Header=BB0_74 Depth=2
	sub.w	$a4, $s5, $t1
	bstrpick.d	$a3, $a4, 31, 0
	add.d	$a6, $s6, $a3
	add.d	$a5, $a6, $a5
	ld.d	$a6, $sp, 64                    # 8-byte Folded Reload
	bltu	$a6, $a5, .LBB0_269
# %bb.162:                              #   in Loop: Header=BB0_74 Depth=2
	bgeu	$s6, $a5, .LBB0_269
# %bb.163:                              # %.lr.ph.i38.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a5, $zero, 32
	bgeu	$a0, $a5, .LBB0_165
# %bb.164:                              #   in Loop: Header=BB0_74 Depth=2
	move	$a1, $a0
	move	$a2, $s5
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 48                    # 8-byte Folded Reload
	b	.LBB0_173
.LBB0_165:                              # %vector.scevcheck
                                        #   in Loop: Header=BB0_74 Depth=2
	nor	$a5, $s5, $zero
	addi.w	$a5, $a5, 0
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 48                    # 8-byte Folded Reload
	bltu	$a5, $a1, .LBB0_172
# %bb.166:                              # %vector.scevcheck
                                        #   in Loop: Header=BB0_74 Depth=2
	nor	$a4, $a4, $zero
	bltu	$a4, $a1, .LBB0_172
# %bb.167:                              # %vector.scevcheck
                                        #   in Loop: Header=BB0_74 Depth=2
	sub.d	$a1, $a2, $a3
	ori	$a2, $zero, 32
	bltu	$a1, $a2, .LBB0_172
# %bb.168:                              # %vector.ph
                                        #   in Loop: Header=BB0_74 Depth=2
	move	$a3, $a0
	bstrins.d	$a3, $zero, 4, 0
	andi	$a1, $a0, 31
	add.w	$a2, $s5, $a3
	sub.w	$a4, $zero, $t1
	move	$a5, $a3
.LBB0_169:                              # %vector.body
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a6, $a4, $s5
	bstrpick.d	$a6, $a6, 31, 0
	add.d	$a7, $s6, $a6
	vldx	$vr0, $s6, $a6
	vld	$vr1, $a7, 16
	bstrpick.d	$a6, $s5, 31, 0
	add.d	$a7, $s6, $a6
	vstx	$vr0, $s6, $a6
	vst	$vr1, $a7, 16
	addi.w	$a5, $a5, -32
	addi.w	$s5, $s5, 32
	bnez	$a5, .LBB0_169
# %bb.170:                              # %middle.block
                                        #   in Loop: Header=BB0_74 Depth=2
	bne	$a0, $a3, .LBB0_173
# %bb.171:                              #   in Loop: Header=BB0_74 Depth=2
	move	$s5, $a2
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	b	.LBB0_197
.LBB0_172:                              #   in Loop: Header=BB0_74 Depth=2
	move	$a1, $a0
	move	$a2, $s5
.LBB0_173:                              # %.lr.ph.i38.preheader623
                                        #   in Loop: Header=BB0_74 Depth=2
	sub.w	$a0, $zero, $t1
	move	$s5, $a2
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
.LBB0_174:                              # %.lr.ph.i38
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $a0, $s5
	bstrpick.d	$a2, $a2, 31, 0
	ldx.b	$a2, $s6, $a2
	addi.w	$a1, $a1, -1
	bstrpick.d	$a3, $s5, 31, 0
	stx.b	$a2, $s6, $a3
	addi.w	$s5, $s5, 1
	bnez	$a1, .LBB0_174
	b	.LBB0_197
.LBB0_175:                              # %.preheader746.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=2
	beqz	$a3, .LBB0_178
# %bb.176:                              # %.preheader746.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB0_180
# %bb.177:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s4, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s4, $a0
	slli.d	$a2, $s3, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
	b	.LBB0_179
.LBB0_178:                              # %.preheader746.1.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s4, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s4, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $s3
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
.LBB0_179:                              # %.preheader746.2.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_182
.LBB0_180:                              # %.preheader746.2.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -3
	slli.d	$a0, $s3, 2
	bnez	$a1, .LBB0_182
# %bb.181:                              #   in Loop: Header=BB0_74 Depth=2
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
.LBB0_182:                              # %getbits.exit369.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$s3, $a0, 1
	addi.w	$a3, $a1, -1
	bstrpick.d	$a0, $a0, 31, 15
	ori	$a6, $zero, 3
	ori	$a2, $zero, 7
	bne	$a0, $a2, .LBB0_186
# %bb.183:                              #   in Loop: Header=BB0_74 Depth=2
	bstrpick.d	$a0, $s3, 15, 1
	slli.d	$s3, $a0, 1
	ori	$a0, $zero, 5
	st.d	$t1, $sp, 40                    # 8-byte Folded Spill
	bltu	$a0, $a1, .LBB0_187
# %bb.184:                              #   in Loop: Header=BB0_74 Depth=2
	sub.w	$a0, $s7, $a4
	ori	$a6, $zero, 10
	ori	$a2, $zero, 2
	bgeu	$a0, $a2, .LBB0_187
# %bb.185:                              #   in Loop: Header=BB0_74 Depth=2
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	b	.LBB0_80
.LBB0_186:                              #   in Loop: Header=BB0_74 Depth=2
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	b	.LBB0_158
.LBB0_187:                              # %.preheader745.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=2
	move	$a5, $t0
	beqz	$a3, .LBB0_199
# %bb.188:                              # %.preheader745.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB0_202
# %bb.189:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s4, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s4, $a0
	slli.d	$a2, $s3, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
	b	.LBB0_200
.LBB0_190:                              #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $t3, -3
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_103
.LBB0_191:                              #   in Loop: Header=BB0_74 Depth=2
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
.LBB0_192:                              # %.preheader749.6.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
.LBB0_193:                              # %.preheader749.7.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -1
	slli.d	$a0, $a0, 1
	bnez	$a1, .LBB0_195
# %bb.194:                              #   in Loop: Header=BB0_74 Depth=2
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
.LBB0_195:                              #   in Loop: Header=BB0_74 Depth=2
	move	$t0, $zero
	slli.d	$s3, $a0, 1
	addi.w	$s4, $a1, -1
	bstrpick.d	$a0, $a0, 31, 15
.LBB0_196:                              # %getbits.exit389.i
                                        #   in Loop: Header=BB0_74 Depth=2
	bstrpick.d	$a1, $s5, 31, 0
	stx.b	$a0, $s6, $a1
	addi.w	$s5, $s5, 1
	move	$t3, $s4
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
.LBB0_197:                              # %.loopexit.i34
                                        #   in Loop: Header=BB0_74 Depth=2
	bnez	$t0, .LBB0_271
# %bb.198:                              # %.loopexit.i34
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	bltu	$s5, $a0, .LBB0_74
	b	.LBB0_271
.LBB0_199:                              # %.preheader745.1.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s4, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s4, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $s3
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
.LBB0_200:                              # %.preheader745.3.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_208
.LBB0_201:                              #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
	b	.LBB0_208
.LBB0_202:                              # %.preheader745.2.i
                                        #   in Loop: Header=BB0_74 Depth=2
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	ori	$a0, $zero, 4
	beq	$a1, $a0, .LBB0_205
# %bb.203:                              # %.preheader745.2.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $s3, 2
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_207
# %bb.204:                              # %.preheader745.3.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_206
.LBB0_205:                              #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	slli.d	$a2, $s3, 3
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_206:                              # %.preheader745.4.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	b	.LBB0_208
.LBB0_207:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a1, -3
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	beqz	$a1, .LBB0_201
.LBB0_208:                              # %getbits.exit374.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$s3, $a0, 1
	addi.w	$a3, $a1, -1
	bstrpick.d	$a0, $a0, 31, 15
	ori	$a6, $zero, 10
	ori	$a2, $zero, 31
	bne	$a0, $a2, .LBB0_212
# %bb.209:                              #   in Loop: Header=BB0_74 Depth=2
	bstrpick.d	$a0, $s3, 15, 1
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$a0, $zero, 8
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	bltu	$a0, $a1, .LBB0_213
# %bb.210:                              #   in Loop: Header=BB0_74 Depth=2
	sub.w	$a0, $s7, $a4
	ori	$a2, $zero, 2
	bgeu	$a0, $a2, .LBB0_213
# %bb.211:                              #   in Loop: Header=BB0_74 Depth=2
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ori	$a6, $zero, 41
	b	.LBB0_80
.LBB0_212:                              #   in Loop: Header=BB0_74 Depth=2
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	move	$t0, $a5
	b	.LBB0_81
.LBB0_213:                              # %.preheader744.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=2
	beqz	$a3, .LBB0_216
# %bb.214:                              # %.preheader744.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB0_220
# %bb.215:                              #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a2, $a2, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
	b	.LBB0_217
.LBB0_216:                              # %.preheader744.1.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	or	$a0, $a0, $a1
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
.LBB0_217:                              # %.preheader744.3.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_229
.LBB0_218:                              # %.preheader744.4.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_223
# %bb.219:                              # %.preheader744.5.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_230
.LBB0_220:                              # %.preheader744.2.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 4
	beq	$a1, $a0, .LBB0_224
# %bb.221:                              # %.preheader744.2.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_228
# %bb.222:                              # %.preheader744.3.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_225
.LBB0_223:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a1, -2
	b	.LBB0_226
.LBB0_224:                              #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a2, $a2, 3
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_225:                              # %.preheader744.5.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
.LBB0_226:                              # %.preheader744.6.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_231
# %bb.227:                              # %.preheader744.7.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 15
	b	.LBB0_233
.LBB0_228:                              #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -3
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_218
.LBB0_229:                              #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_230:                              # %.preheader744.6.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
.LBB0_231:                              # %.preheader744.7.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -1
	slli.d	$a0, $a0, 1
	bnez	$a1, .LBB0_233
# %bb.232:                              #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_233:                              # %getbits.exit379.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a2, $a0, 1
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	addi.w	$a2, $a1, -1
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 15
	ori	$a2, $zero, 255
	bne	$a0, $a2, .LBB0_237
# %bb.234:                              # %.preheader742.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 15, 1
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$a0, $zero, 8
	bltu	$a0, $a1, .LBB0_238
# %bb.235:                              # %.preheader742.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	sub.w	$a0, $s7, $a0
	ori	$a1, $zero, 2
	bgeu	$a0, $a1, .LBB0_238
# %bb.236:                              #   in Loop: Header=BB0_74 Depth=2
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ori	$a6, $zero, 296
	b	.LBB0_80
.LBB0_237:                              #   in Loop: Header=BB0_74 Depth=2
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	move	$t0, $a5
	ld.d	$t1, $sp, 40                    # 8-byte Folded Reload
	ori	$a6, $zero, 41
	b	.LBB0_158
.LBB0_238:                              # %.preheader.i39.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a6, $zero, 296
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
.LBB0_239:                              # %.preheader.i39
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ori	$a0, $zero, 1
	beq	$a3, $a0, .LBB0_242
# %bb.240:                              # %.preheader.i39
                                        #   in Loop: Header=BB0_239 Depth=3
	bnez	$a3, .LBB0_246
# %bb.241:                              # %.thread1081.i
                                        #   in Loop: Header=BB0_239 Depth=3
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s4, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s4, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	or	$a0, $a0, $a1
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_243
.LBB0_242:                              #   in Loop: Header=BB0_239 Depth=3
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s4, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s4, $a0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a2, $a2, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_243:                              # %.thread172
                                        #   in Loop: Header=BB0_239 Depth=3
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_255
.LBB0_244:                              #   in Loop: Header=BB0_239 Depth=3
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_249
# %bb.245:                              # %.thread1100.i
                                        #   in Loop: Header=BB0_239 Depth=3
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_256
.LBB0_246:                              #   in Loop: Header=BB0_239 Depth=3
	ori	$a0, $zero, 3
	beq	$a3, $a0, .LBB0_250
# %bb.247:                              #   in Loop: Header=BB0_239 Depth=3
	move	$a2, $a3
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	ori	$a1, $zero, 2
	bne	$a3, $a1, .LBB0_254
# %bb.248:                              # %.thread1090.i
                                        #   in Loop: Header=BB0_239 Depth=3
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_251
.LBB0_249:                              #   in Loop: Header=BB0_239 Depth=3
	addi.d	$a1, $a1, -2
	b	.LBB0_252
.LBB0_250:                              #   in Loop: Header=BB0_239 Depth=3
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a2, $a2, 3
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_251:                              # %.thread178
                                        #   in Loop: Header=BB0_239 Depth=3
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
.LBB0_252:                              #   in Loop: Header=BB0_239 Depth=3
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_257
# %bb.253:                              # %.thread1110.i
                                        #   in Loop: Header=BB0_239 Depth=3
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a2, $s4, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s4, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 15
	b	.LBB0_260
.LBB0_254:                              #   in Loop: Header=BB0_239 Depth=3
	addi.w	$a1, $a2, -2
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_244
.LBB0_255:                              #   in Loop: Header=BB0_239 Depth=3
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_256:                              # %.thread1106.i
                                        #   in Loop: Header=BB0_239 Depth=3
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
.LBB0_257:                              #   in Loop: Header=BB0_239 Depth=3
	addi.w	$a1, $a1, -1
	slli.d	$a0, $a0, 1
	beqz	$a1, .LBB0_259
# %bb.258:                              #   in Loop: Header=BB0_239 Depth=3
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	b	.LBB0_260
.LBB0_259:                              #   in Loop: Header=BB0_239 Depth=3
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a2, $s4, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s4, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_260:                              # %getbits.exit384.i
                                        #   in Loop: Header=BB0_239 Depth=3
	slli.d	$s3, $a0, 1
	bstrpick.d	$a0, $a0, 31, 15
	addi.w	$a3, $a1, -1
	ori	$a2, $zero, 255
	bne	$a0, $a2, .LBB0_263
# %bb.261:                              #   in Loop: Header=BB0_239 Depth=3
	addi.d	$a6, $a6, 255
	bstrpick.d	$a0, $s3, 15, 1
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$a0, $zero, 8
	bltu	$a0, $a1, .LBB0_239
# %bb.262:                              #   in Loop: Header=BB0_239 Depth=3
	sub.w	$a0, $s7, $a4
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB0_239
	b	.LBB0_80
.LBB0_263:                              #   in Loop: Header=BB0_74 Depth=2
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	move	$t0, $a5
	b	.LBB0_81
.LBB0_264:                              #   in Loop: Header=BB0_13 Depth=1
	st.d	$s6, $sp, 80                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	move	$s3, $s7
	move	$s6, $s4
.LBB0_265:                              # %.sink.split.i26
                                        #   in Loop: Header=BB0_13 Depth=1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	addi.w	$a1, $s3, 0
	ori	$a0, $zero, 3
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	bltu	$a0, $a1, .LBB0_274
.LBB0_266:                              #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	ori	$s8, $zero, 299
	b	.LBB0_13
.LBB0_267:                              #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_268:                              #   in Loop: Header=BB0_13 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	ori	$s8, $zero, 299
	b	.LBB0_13
.LBB0_269:                              # %.thread683.i
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_272
.LBB0_270:                              # %.thread1139.i
                                        #   in Loop: Header=BB0_13 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	b	.LBB0_266
.LBB0_271:                              # %._crit_edge.i35
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$a0, $s4
	move	$s3, $t0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB0_273
.LBB0_272:                              #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	b	.LBB0_265
.LBB0_273:                              #   in Loop: Header=BB0_13 Depth=1
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	addi.w	$a1, $s3, 0
	ori	$a0, $zero, 3
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	bgeu	$a0, $a1, .LBB0_266
.LBB0_274:                              #   in Loop: Header=BB0_13 Depth=1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_276
# %bb.275:                              #   in Loop: Header=BB0_13 Depth=1
	move	$s4, $s3
	b	.LBB0_349
.LBB0_276:                              #   in Loop: Header=BB0_13 Depth=1
	bstrpick.d	$a0, $s3, 31, 0
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_643
# %bb.277:                              #   in Loop: Header=BB0_13 Depth=1
	move	$s7, $a0
	ld.w	$s4, $s6, 0
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	beqz	$s4, .LBB0_341
# %bb.278:                              # %.lr.ph845.i
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$t1, $zero
	addi.w	$a0, $s3, -4
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.w	$a0, $s3, -8
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$a0, $s3
	ori	$s3, $zero, 4
	move	$a2, $s7
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$a3, $a0
	b	.LBB0_281
.LBB0_279:                              #   in Loop: Header=BB0_281 Depth=2
	move	$a5, $t1
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
.LBB0_280:                              # %.thread691.i
                                        #   in Loop: Header=BB0_281 Depth=2
	move	$a2, $a4
	move	$t1, $a5
	move	$s3, $s7
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_348
.LBB0_281:                              #   Parent Loop BB0_13 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_300 Depth 3
                                        #       Child Loop BB0_308 Depth 3
                                        #       Child Loop BB0_312 Depth 3
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bgeu	$s3, $a0, .LBB0_342
# %bb.282:                              #   in Loop: Header=BB0_281 Depth=2
	bstrpick.d	$a0, $s3, 31, 0
	ldx.bu	$s5, $s6, $a0
	addi.d	$a0, $s5, -5
	ori	$a1, $zero, 122
	bltu	$a1, $a0, .LBB0_357
# %bb.283:                              #   in Loop: Header=BB0_281 Depth=2
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI0_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	addi.w	$s4, $s3, 1
	jr	$a0
.LBB0_284:                              #   in Loop: Header=BB0_281 Depth=2
	addi.w	$a0, $t1, 4
	addi.w	$a1, $a3, 0
	bgeu	$a0, $a1, .LBB0_286
# %bb.285:                              #   in Loop: Header=BB0_281 Depth=2
	move	$s7, $a3
	move	$a4, $a2
	b	.LBB0_287
.LBB0_286:                              #   in Loop: Header=BB0_281 Depth=2
	addi.w	$a3, $a3, 512
	move	$s7, $a3
	bstrpick.d	$a1, $a3, 31, 0
	move	$a0, $a2
	move	$s3, $t1
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	move	$t1, $s3
	move	$a4, $a0
	beqz	$a0, .LBB0_347
.LBB0_287:                              # %.thread702.i
                                        #   in Loop: Header=BB0_281 Depth=2
	pcalau12i	$a0, %pc_hi20(.L__const.ea06.opers)
	addi.d	$a0, $a0, %pc_lo12(.L__const.ea06.opers)
	alsl.d	$a0, $s5, $a0, 3
	ld.d	$a3, $a0, -512
	bstrpick.d	$a0, $t1, 31, 0
	add.d	$a0, $a4, $a0
	pcalau12i	$a1, %pc_hi20(.L.str.62)
	addi.d	$a2, $a1, %pc_lo12(.L.str.62)
	ori	$a1, $zero, 4
	move	$s3, $t1
	move	$s5, $a4
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	move	$a4, $s5
	add.w	$a5, $a0, $s3
.LBB0_288:                              # %.thread691.i
                                        #   in Loop: Header=BB0_281 Depth=2
	move	$a3, $s7
	move	$s7, $s4
	b	.LBB0_280
.LBB0_289:                              #   in Loop: Header=BB0_281 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bgeu	$s4, $a0, .LBB0_343
# %bb.290:                              #   in Loop: Header=BB0_281 Depth=2
	bstrpick.d	$a0, $s4, 31, 0
	ldx.wu	$s4, $s6, $a0
	slli.d	$t3, $s4, 1
	addi.w	$t4, $t3, 0
	addi.w	$s7, $s3, 5
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bltu	$a0, $t4, .LBB0_345
# %bb.291:                              #   in Loop: Header=BB0_281 Depth=2
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	sub.w	$a0, $a0, $t3
	bgeu	$s7, $a0, .LBB0_345
# %bb.292:                              #   in Loop: Header=BB0_281 Depth=2
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	add.d	$a0, $t1, $s4
	addi.w	$a0, $a0, 3
	addi.w	$a1, $a3, 0
	st.d	$t3, $sp, 56                    # 8-byte Folded Spill
	bgeu	$a0, $a1, .LBB0_294
# %bb.293:                              #   in Loop: Header=BB0_281 Depth=2
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	move	$a0, $a2
	b	.LBB0_295
.LBB0_294:                              #   in Loop: Header=BB0_281 Depth=2
	add.d	$a0, $a3, $s4
	addi.w	$a0, $a0, 512
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	bstrpick.d	$a1, $a0, 31, 0
	move	$a0, $a2
	st.d	$t1, $sp, 32                    # 8-byte Folded Spill
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	move	$s7, $t4
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	move	$t4, $s7
	ld.d	$t3, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 32                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_347
.LBB0_295:                              #   in Loop: Header=BB0_281 Depth=2
	addi.d	$a2, $s5, -48
	ori	$a1, $zero, 1
	sll.d	$a1, $a1, $a2
	andi	$a1, $a1, 19
	bnez	$a1, .LBB0_297
# %bb.296:                              #   in Loop: Header=BB0_281 Depth=2
	pcalau12i	$a1, %pc_hi20(.L__const.ea06.prefixes)
	addi.d	$a1, $a1, %pc_lo12(.L__const.ea06.prefixes)
	ldx.b	$a3, $a1, $a2
	bstrpick.d	$a1, $t1, 31, 0
	addi.w	$t1, $t1, 1
	stx.b	$a3, $a0, $a1
.LBB0_297:                              #   in Loop: Header=BB0_281 Depth=2
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	beqz	$s4, .LBB0_315
# %bb.298:                              # %.preheader740.i
                                        #   in Loop: Header=BB0_281 Depth=2
	bstrpick.d	$a1, $s7, 31, 0
	beqz	$t4, .LBB0_313
# %bb.299:                              # %.lr.ph837.i
                                        #   in Loop: Header=BB0_281 Depth=2
	move	$a2, $zero
	srli.d	$a3, $s4, 8
	bstrpick.d	$t2, $t3, 31, 0
	addi.w	$a4, $s3, 6
.LBB0_300:                              #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_281 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a5, $a4, -1
	bstrpick.d	$a5, $a5, 31, 0
	ldx.b	$a6, $s6, $a5
	bstrpick.d	$a7, $a4, 31, 0
	ldx.b	$t0, $s6, $a7
	xor	$a6, $a6, $s4
	stx.b	$a6, $s6, $a5
	xor	$a5, $t0, $a3
	stx.b	$a5, $s6, $a7
	addi.d	$a2, $a2, 2
	addi.w	$a4, $a4, 2
	bltu	$a2, $t2, .LBB0_300
# %bb.301:                              #   in Loop: Header=BB0_281 Depth=2
	add.d	$a1, $s6, $a1
	ori	$a2, $zero, 5
	bltu	$t4, $a2, .LBB0_306
# %bb.302:                              #   in Loop: Header=BB0_281 Depth=2
	ld.bu	$a2, $a1, 0
	ori	$a3, $zero, 255
	bne	$a2, $a3, .LBB0_306
# %bb.303:                              #   in Loop: Header=BB0_281 Depth=2
	ld.bu	$a2, $a1, 1
	ori	$a3, $zero, 254
	bne	$a2, $a3, .LBB0_306
# %bb.304:                              #   in Loop: Header=BB0_281 Depth=2
	ld.bu	$a2, $a1, 2
	beqz	$a2, .LBB0_306
# %bb.305:                              # %.thread.i409.i
                                        #   in Loop: Header=BB0_281 Depth=2
	addi.d	$a2, $a1, 2
	addi.d	$a3, $t3, -2
	bstrpick.d	$t2, $a3, 31, 0
	b	.LBB0_311
.LBB0_306:                              # %.lr.ph.preheader.i390.i
                                        #   in Loop: Header=BB0_281 Depth=2
	move	$a3, $zero
	move	$a2, $zero
	sltui	$a4, $t4, 20
	ori	$a5, $zero, 20
	masknez	$a5, $a5, $a4
	maskeqz	$a4, $t4, $a4
	or	$a4, $a4, $a5
	b	.LBB0_308
.LBB0_307:                              #   in Loop: Header=BB0_308 Depth=3
	move	$a5, $zero
	addi.d	$a3, $a3, 2
	add.d	$a2, $a5, $a2
	bgeu	$a3, $a4, .LBB0_310
.LBB0_308:                              # %.lr.ph.i392.i
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_281 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a5, $a1, $a3
	beqz	$a5, .LBB0_307
# %bb.309:                              #   in Loop: Header=BB0_308 Depth=3
	add.d	$a5, $a1, $a3
	ld.bu	$a5, $a5, 1
	sltui	$a5, $a5, 1
	addi.d	$a3, $a3, 2
	add.d	$a2, $a5, $a2
	bltu	$a3, $a4, .LBB0_308
.LBB0_310:                              # %._crit_edge.loopexit.i398.i
                                        #   in Loop: Header=BB0_281 Depth=2
	slli.w	$a3, $a2, 2
	move	$a2, $a1
	bltu	$a3, $a4, .LBB0_314
.LBB0_311:                              # %.lr.ph49.preheader.i400.i
                                        #   in Loop: Header=BB0_281 Depth=2
	move	$a3, $zero
	move	$a4, $a1
.LBB0_312:                              # %.lr.ph49.i403.i
                                        #   Parent Loop BB0_13 Depth=1
                                        #     Parent Loop BB0_281 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.b	$a5, $a2, $a3
	addi.d	$a6, $a4, 1
	addi.d	$a3, $a3, 2
	st.b	$a5, $a4, 0
	move	$a4, $a6
	bltu	$a3, $t2, .LBB0_312
	b	.LBB0_314
.LBB0_313:                              # %._crit_edge838.thread.i
                                        #   in Loop: Header=BB0_281 Depth=2
	add.d	$a1, $s6, $a1
.LBB0_314:                              # %u2a.exit410.i
                                        #   in Loop: Header=BB0_281 Depth=2
	bstrpick.d	$a2, $t1, 31, 0
	add.d	$a0, $a0, $a2
	move	$a2, $s4
	move	$s3, $t1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	add.w	$t1, $s3, $s4
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	add.w	$s7, $a0, $s7
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
.LBB0_315:                              #   in Loop: Header=BB0_281 Depth=2
	ori	$a0, $zero, 52
	beq	$s5, $a0, .LBB0_279
# %bb.316:                              #   in Loop: Header=BB0_281 Depth=2
	ori	$a0, $zero, 54
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	bne	$s5, $a0, .LBB0_318
# %bb.317:                              #   in Loop: Header=BB0_281 Depth=2
	bstrpick.d	$a0, $t1, 31, 0
	addi.w	$t1, $t1, 1
	ori	$a2, $zero, 34
	stx.b	$a2, $a4, $a0
.LBB0_318:                              #   in Loop: Header=BB0_281 Depth=2
	addi.w	$a5, $t1, 1
	bstrpick.d	$a0, $t1, 31, 0
	ori	$a1, $zero, 32
	stx.b	$a1, $a4, $a0
	b	.LBB0_280
.LBB0_319:                              #   in Loop: Header=BB0_281 Depth=2
	ori	$a0, $zero, 8
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB0_359
# %bb.320:                              #   in Loop: Header=BB0_281 Depth=2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bgeu	$s4, $a0, .LBB0_359
# %bb.321:                              #   in Loop: Header=BB0_281 Depth=2
	move	$s5, $s4
	addi.w	$a0, $t1, 40
	addi.w	$a1, $a3, 0
	bgeu	$a0, $a1, .LBB0_334
# %bb.322:                              #   in Loop: Header=BB0_281 Depth=2
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	move	$a4, $a2
	b	.LBB0_335
.LBB0_323:                              #   in Loop: Header=BB0_281 Depth=2
	ori	$a0, $zero, 8
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB0_358
# %bb.324:                              #   in Loop: Header=BB0_281 Depth=2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bgeu	$s4, $a0, .LBB0_358
# %bb.325:                              #   in Loop: Header=BB0_281 Depth=2
	move	$s5, $s4
	addi.w	$a0, $t1, 20
	addi.w	$a1, $a3, 0
	bgeu	$a0, $a1, .LBB0_336
# %bb.326:                              #   in Loop: Header=BB0_281 Depth=2
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	move	$a4, $a2
	b	.LBB0_337
.LBB0_327:                              #   in Loop: Header=BB0_281 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bgeu	$s4, $a0, .LBB0_360
# %bb.328:                              #   in Loop: Header=BB0_281 Depth=2
	move	$s5, $s4
	addi.w	$a0, $t1, 12
	addi.w	$a1, $a3, 0
	bgeu	$a0, $a1, .LBB0_339
# %bb.329:                              #   in Loop: Header=BB0_281 Depth=2
	move	$s7, $a3
	move	$a4, $a2
	b	.LBB0_340
.LBB0_330:                              #   in Loop: Header=BB0_281 Depth=2
	addi.w	$a5, $t1, 1
	addi.w	$a0, $a3, 0
	bgeu	$a5, $a0, .LBB0_332
# %bb.331:                              #   in Loop: Header=BB0_281 Depth=2
	move	$s7, $a3
	move	$a4, $a2
	b	.LBB0_333
.LBB0_332:                              #   in Loop: Header=BB0_281 Depth=2
	addi.w	$a3, $a3, 512
	move	$s7, $a3
	bstrpick.d	$a1, $a3, 31, 0
	move	$a0, $a2
	move	$s3, $t1
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	move	$s5, $a5
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	move	$a5, $s5
	move	$t1, $s3
	move	$a4, $a0
	beqz	$a0, .LBB0_347
.LBB0_333:                              # %.thread707.i30
                                        #   in Loop: Header=BB0_281 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	bstrpick.d	$a0, $t1, 31, 0
	ori	$a1, $zero, 10
	stx.b	$a1, $a4, $a0
	b	.LBB0_288
.LBB0_334:                              #   in Loop: Header=BB0_281 Depth=2
	addi.w	$a3, $a3, 512
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	bstrpick.d	$a1, $a3, 31, 0
	move	$a0, $a2
	move	$s4, $t1
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	move	$t1, $s4
	move	$a4, $a0
	beqz	$a0, .LBB0_347
.LBB0_335:                              # %.thread694.i
                                        #   in Loop: Header=BB0_281 Depth=2
	bstrpick.d	$a0, $s5, 31, 0
	ldx.d	$a3, $s6, $a0
	bstrpick.d	$a0, $t1, 31, 0
	add.d	$s4, $a4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a2, $a0, %pc_lo12(.L.str.59)
	ori	$a1, $zero, 39
	move	$a0, $s4
	move	$s5, $t1
	move	$s7, $a4
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s5, 38
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 32
	stx.b	$a1, $s7, $a0
	addi.d	$a0, $s5, 39
	bstrpick.d	$a0, $a0, 31, 0
	stx.b	$zero, $s7, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a4, $s7
	add.w	$a5, $s5, $a0
	b	.LBB0_338
.LBB0_336:                              #   in Loop: Header=BB0_281 Depth=2
	addi.w	$a3, $a3, 512
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	bstrpick.d	$a1, $a3, 31, 0
	move	$a0, $a2
	move	$s4, $t1
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	move	$t1, $s4
	move	$a4, $a0
	beqz	$a0, .LBB0_347
.LBB0_337:                              #   in Loop: Header=BB0_281 Depth=2
	addi.d	$a0, $s3, 5
	bstrpick.d	$a0, $a0, 31, 0
	ldx.w	$a0, $s6, $a0
	bstrpick.d	$a1, $s5, 31, 0
	ldx.w	$a1, $s6, $a1
	slli.d	$a0, $a0, 32
	add.d	$a3, $a0, $a1
	bstrpick.d	$a0, $t1, 31, 0
	add.d	$a0, $a4, $a0
	pcalau12i	$a1, %pc_hi20(.L.str.57)
	addi.d	$a2, $a1, %pc_lo12(.L.str.57)
	ori	$a1, $zero, 20
	move	$s4, $t1
	move	$s5, $a4
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	move	$a4, $s5
	addi.w	$a5, $s4, 19
.LBB0_338:                              # %.thread691.i
                                        #   in Loop: Header=BB0_281 Depth=2
	addi.w	$s7, $s3, 9
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	b	.LBB0_280
.LBB0_339:                              #   in Loop: Header=BB0_281 Depth=2
	addi.w	$a3, $a3, 512
	move	$s7, $a3
	bstrpick.d	$a1, $a3, 31, 0
	move	$a0, $a2
	move	$s4, $t1
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	move	$t1, $s4
	move	$a4, $a0
	beqz	$a0, .LBB0_347
.LBB0_340:                              # %.thread686.i
                                        #   in Loop: Header=BB0_281 Depth=2
	bstrpick.d	$a0, $s5, 31, 0
	ldx.w	$a3, $s6, $a0
	bstrpick.d	$a0, $t1, 31, 0
	add.d	$a0, $a4, $a0
	pcalau12i	$a1, %pc_hi20(.L.str.55)
	addi.d	$a2, $a1, %pc_lo12(.L.str.55)
	ori	$a1, $zero, 12
	move	$s4, $t1
	move	$s5, $a4
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	move	$a4, $s5
	addi.w	$a5, $s4, 11
	addi.w	$a0, $s3, 5
	move	$a3, $s7
	move	$s7, $a0
	b	.LBB0_280
.LBB0_341:                              #   in Loop: Header=BB0_13 Depth=1
	move	$a5, $zero
	move	$a4, $s7
	b	.LBB0_348
.LBB0_342:                              #   in Loop: Header=BB0_13 Depth=1
	move	$a5, $t1
	move	$a4, $a2
	b	.LBB0_348
.LBB0_343:                              #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
.LBB0_344:                              # %.critedge14.i
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$s3, $t1
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_346
.LBB0_345:                              #   in Loop: Header=BB0_13 Depth=1
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	sub.w	$a3, $a0, $s7
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	move	$a1, $t4
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	move	$s3, $t1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_346:                              # %.critedge14.i
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$t1, $s3
.LBB0_347:                              # %.critedge14.i
                                        #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	move	$s4, $t1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a5, $s4
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
.LBB0_348:                              # %.critedge14.thread.i
                                        #   in Loop: Header=BB0_13 Depth=1
	move	$a0, $s6
	move	$s6, $a4
	move	$s4, $a5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
.LBB0_349:                              #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a2, $a0, %pc_lo12(.L.str.19)
	addi.d	$a0, $sp, 208
	ori	$a1, $zero, 1023
	move	$a3, $fp
	move	$a4, $s7
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	st.b	$zero, $sp, 1231
	addi.d	$a0, $sp, 208
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	bge	$s8, $a0, .LBB0_631
# %bb.350:                              #   in Loop: Header=BB0_13 Depth=1
	move	$s3, $a0
	addi.w	$s4, $s4, 0
	move	$a1, $s6
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	bne	$a0, $s4, .LBB0_632
# %bb.351:                              #   in Loop: Header=BB0_13 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	ld.bu	$a0, $s6, 0
	pcalau12i	$a1, %pc_hi20(.L.str.66)
	addi.d	$a1, $a1, %pc_lo12(.L.str.66)
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a3
	pcalau12i	$a2, %pc_hi20(.L.str.67)
	addi.d	$a2, $a2, %pc_lo12(.L.str.67)
	maskeqz	$a2, $a2, $a3
	or	$a1, $a2, $a1
	ori	$s8, $zero, 299
	beqz	$a0, .LBB0_353
# %bb.352:                              #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	addi.d	$a2, $sp, 208
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_354
.LBB0_353:                              #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_354:                              #   in Loop: Header=BB0_13 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(fsync)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_magic_scandesc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s6, 0
	ori	$a1, $zero, 1
	beq	$s4, $a1, .LBB0_634
# %bb.355:                              #   in Loop: Header=BB0_13 Depth=1
	bnez	$a0, .LBB0_13
# %bb.356:                              #   in Loop: Header=BB0_13 Depth=1
	addi.d	$a0, $sp, 208
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	b	.LBB0_13
.LBB0_357:                              #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a0, $a0, %pc_lo12(.L.str.63)
	move	$a1, $s5
	move	$s3, $t1
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_346
.LBB0_358:                              #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	b	.LBB0_344
.LBB0_359:                              #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	b	.LBB0_344
.LBB0_360:                              #   in Loop: Header=BB0_13 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	b	.LBB0_344
.LBB0_361:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
.LBB0_362:
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_363:
	move	$a0, $zero
.LBB0_364:
	move	$s0, $a0
	ld.bu	$a0, $s6, 0
	bnez	$a0, .LBB0_366
# %bb.365:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_rmdirs)
	jirl	$ra, $ra, 0
.LBB0_366:                              # %.sink.split
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB0_367:
	ld.d	$s8, $sp, 1832                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1840                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1848                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1856                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1864                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1872                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1880                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1888                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1896                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1904                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1912                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1920
	ret
.LBB0_368:                              #   in Loop: Header=BB0_369 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
.LBB0_369:                              # %.backedge.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_413 Depth 2
                                        #       Child Loop BB0_576 Depth 3
                                        #       Child Loop BB0_516 Depth 3
                                        #       Child Loop BB0_521 Depth 3
                                        #     Child Loop BB0_603 Depth 2
                                        #     Child Loop BB0_607 Depth 2
	ld.d	$a0, $s0, 32
	beqz	$a0, .LBB0_371
# %bb.370:                              #   in Loop: Header=BB0_369 Depth=1
	ld.w	$a1, $a0, 4
	addi.w	$a0, $a1, -1
	bltu	$a0, $s7, .LBB0_627
.LBB0_371:                              # %.critedge.i
                                        #   in Loop: Header=BB0_369 Depth=1
	addi.d	$a1, $sp, 1232
	ori	$a2, $zero, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s8, .LBB0_363
# %bb.372:                              #   in Loop: Header=BB0_369 Depth=1
	ld.w	$a0, $sp, 1232
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_626
# %bb.373:                              #   in Loop: Header=BB0_369 Depth=1
	ld.w	$a0, $sp, 1236
	bltz	$a0, .LBB0_363
# %bb.374:                              #   in Loop: Header=BB0_369 Depth=1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	xor	$s3, $a0, $a1
	ori	$a0, $zero, 299
	bltu	$a0, $s3, .LBB0_378
# %bb.375:                              #   in Loop: Header=BB0_369 Depth=1
	ld.bu	$a0, $s2, 0
	beqz	$a0, .LBB0_378
# %bb.376:                              #   in Loop: Header=BB0_369 Depth=1
	addi.d	$a1, $sp, 1232
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_363
# %bb.377:                              #   in Loop: Header=BB0_369 Depth=1
	stx.b	$zero, $s3, $s5
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	add.w	$a2, $s3, $a0
	addi.d	$a0, $sp, 1232
	move	$a1, $s3
	pcaddu18i	$ra, %call36(MT_decrypt)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 1232
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_379
.LBB0_378:                              #   in Loop: Header=BB0_369 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
.LBB0_379:                              #   in Loop: Header=BB0_369 Depth=1
	addi.d	$a1, $sp, 1232
	ori	$a2, $zero, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB0_363
# %bb.380:                              #   in Loop: Header=BB0_369 Depth=1
	ld.w	$a0, $sp, 1232
	bltz	$a0, .LBB0_363
# %bb.381:                              #   in Loop: Header=BB0_369 Depth=1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	xor	$s3, $a0, $a1
	ori	$a0, $zero, 299
	bltu	$a0, $s3, .LBB0_385
# %bb.382:                              #   in Loop: Header=BB0_369 Depth=1
	ld.bu	$a0, $s2, 0
	beqz	$a0, .LBB0_385
# %bb.383:                              #   in Loop: Header=BB0_369 Depth=1
	addi.d	$a1, $sp, 1232
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_363
# %bb.384:                              #   in Loop: Header=BB0_369 Depth=1
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	add.w	$a2, $s3, $a0
	addi.d	$a0, $sp, 1232
	move	$a1, $s3
	pcaddu18i	$ra, %call36(MT_decrypt)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s3, $s5
	addi.d	$a1, $sp, 1232
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_386
.LBB0_385:                              #   in Loop: Header=BB0_369 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
.LBB0_386:                              #   in Loop: Header=BB0_369 Depth=1
	addi.d	$a1, $sp, 1232
	ori	$a2, $zero, 13
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 13
	bne	$a0, $a1, .LBB0_363
# %bb.387:                              #   in Loop: Header=BB0_369 Depth=1
	ld.w	$s3, $sp, 1233
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	bge	$a0, $s3, .LBB0_623
# %bb.388:                              #   in Loop: Header=BB0_369 Depth=1
	ld.bu	$s2, $sp, 1232
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	beq	$s3, $s4, .LBB0_368
# %bb.389:                              #   in Loop: Header=BB0_369 Depth=1
	xor	$s8, $s3, $s4
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1237
	xor	$a1, $a0, $s4
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1241
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	xor	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	beqz	$a0, .LBB0_393
# %bb.390:                              #   in Loop: Header=BB0_369 Depth=1
	ld.d	$a2, $a0, 24
	beqz	$a2, .LBB0_393
# %bb.391:                              #   in Loop: Header=BB0_369 Depth=1
	bgeu	$a2, $s8, .LBB0_393
# %bb.392:                              #   in Loop: Header=BB0_369 Depth=1
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
	b	.LBB0_402
.LBB0_393:                              #   in Loop: Header=BB0_369 Depth=1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	addi.w	$a0, $zero, -114
	beqz	$s7, .LBB0_364
# %bb.394:                              #   in Loop: Header=BB0_369 Depth=1
	move	$s5, $a0
	move	$a0, $s1
	move	$a1, $s7
	move	$a2, $s8
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s8, .LBB0_629
# %bb.395:                              #   in Loop: Header=BB0_369 Depth=1
	move	$a0, $s7
	move	$a1, $s8
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(MT_decrypt)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	bne	$s2, $a0, .LBB0_403
# %bb.396:                              #   in Loop: Header=BB0_369 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_401
# %bb.397:                              #   in Loop: Header=BB0_369 Depth=1
	st.d	$s6, $sp, 80                    # 8-byte Folded Spill
	ld.w	$a0, $s7, 4
	revb.2w	$a1, $a0
	sltui	$a2, $a0, 1
	ld.d	$a0, $s0, 32
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s8, $a2
	or	$a1, $a2, $a1
	bstrpick.d	$s6, $a1, 31, 0
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_410
# %bb.398:                              #   in Loop: Header=BB0_369 Depth=1
	ld.d	$a2, $a0, 24
	beqz	$a2, .LBB0_410
# %bb.399:                              #   in Loop: Header=BB0_369 Depth=1
	bgeu	$a2, $s6, .LBB0_410
# %bb.400:                              #   in Loop: Header=BB0_369 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	addi.d	$s5, $sp, 1232
	ld.d	$s7, $sp, 104                   # 8-byte Folded Reload
	ori	$s8, $zero, 8
	b	.LBB0_369
.LBB0_401:                              #   in Loop: Header=BB0_369 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$s5, $sp, 1232
	ld.d	$s7, $sp, 104                   # 8-byte Folded Reload
.LBB0_402:                              # %.backedge.i
                                        #   in Loop: Header=BB0_369 Depth=1
	ori	$s8, $zero, 8
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
	b	.LBB0_369
.LBB0_403:                              #   in Loop: Header=BB0_369 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	move	$s3, $s7
.LBB0_404:                              # %.sink.split.i
                                        #   in Loop: Header=BB0_369 Depth=1
	addi.d	$s5, $sp, 1232
	ld.d	$s7, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	addi.w	$a2, $a6, 0
	ori	$a0, $zero, 2
	bltu	$a2, $a0, .LBB0_610
.LBB0_405:                              #   in Loop: Header=BB0_369 Depth=1
	ori	$a0, $zero, 5
	bltu	$a2, $a0, .LBB0_601
# %bb.406:                              #   in Loop: Header=BB0_369 Depth=1
	ld.bu	$a0, $s3, 0
	ori	$a1, $zero, 255
	bne	$a0, $a1, .LBB0_601
# %bb.407:                              #   in Loop: Header=BB0_369 Depth=1
	ld.bu	$a0, $s3, 1
	ori	$a1, $zero, 254
	bne	$a0, $a1, .LBB0_601
# %bb.408:                              #   in Loop: Header=BB0_369 Depth=1
	ld.bu	$a0, $s3, 2
	beqz	$a0, .LBB0_601
# %bb.409:                              # %.thread.i.i
                                        #   in Loop: Header=BB0_369 Depth=1
	addi.d	$a0, $s3, 2
	addi.w	$a6, $a6, -2
	b	.LBB0_606
.LBB0_410:                              # %split.i
                                        #   in Loop: Header=BB0_369 Depth=1
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	move	$a0, $s6
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_645
# %bb.411:                              #   in Loop: Header=BB0_369 Depth=1
	move	$s3, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	addi.w	$s2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	beqz	$s2, .LBB0_609
# %bb.412:                              # %.lr.ph537.i
                                        #   in Loop: Header=BB0_369 Depth=1
	move	$s2, $zero
	move	$s5, $zero
	move	$a0, $zero
	add.d	$a1, $s3, $s6
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ori	$t0, $zero, 8
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
.LBB0_413:                              #   Parent Loop BB0_369 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_576 Depth 3
                                        #       Child Loop BB0_516 Depth 3
                                        #       Child Loop BB0_521 Depth 3
	bstrpick.d	$s5, $s5, 15, 0
	bnez	$a0, .LBB0_418
# %bb.414:                              #   in Loop: Header=BB0_413 Depth=2
	sub.w	$a1, $s8, $t0
	ori	$a2, $zero, 2
	bgeu	$a1, $a2, .LBB0_418
# %bb.415:                              # %.thread721.i
                                        #   in Loop: Header=BB0_413 Depth=2
	move	$s6, $s5
	move	$s5, $t0
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s4, $zero
.LBB0_416:                              #   in Loop: Header=BB0_413 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ori	$t1, $zero, 1
	move	$t0, $s5
	move	$s5, $s6
	move	$a2, $s4
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
.LBB0_417:                              # %getbits.exit233.i
                                        #   in Loop: Header=BB0_413 Depth=2
	bstrpick.d	$a1, $s2, 31, 0
	stx.b	$a0, $s3, $a1
	addi.w	$s2, $s2, 1
	move	$a0, $a2
	b	.LBB0_523
.LBB0_418:                              # %.preheader471.preheader.i
                                        #   in Loop: Header=BB0_413 Depth=2
	bnez	$a0, .LBB0_420
# %bb.419:                              #   in Loop: Header=BB0_413 Depth=2
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
.LBB0_420:                              # %getbits.exit.i
                                        #   in Loop: Header=BB0_413 Depth=2
	slli.d	$s6, $s5, 1
	bstrpick.d	$a2, $s5, 31, 15
	addi.w	$s4, $a0, -1
	bnez	$a2, .LBB0_424
# %bb.421:                              #   in Loop: Header=BB0_413 Depth=2
	ori	$a2, $zero, 8
	bltu	$a2, $a0, .LBB0_427
# %bb.422:                              #   in Loop: Header=BB0_413 Depth=2
	sub.w	$a2, $s8, $t0
	ori	$a3, $zero, 2
	bgeu	$a2, $a3, .LBB0_427
# %bb.423:                              #   in Loop: Header=BB0_413 Depth=2
	move	$s5, $t0
	b	.LBB0_416
.LBB0_424:                              #   in Loop: Header=BB0_413 Depth=2
	bstrpick.d	$a1, $s6, 15, 1
	slli.d	$a3, $a1, 1
	ori	$a1, $zero, 15
	bltu	$a1, $a0, .LBB0_430
# %bb.425:                              #   in Loop: Header=BB0_413 Depth=2
	sub.w	$a1, $s8, $t0
	ori	$a2, $zero, 2
	bgeu	$a1, $a2, .LBB0_430
# %bb.426:                              #   in Loop: Header=BB0_413 Depth=2
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
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	b	.LBB0_491
.LBB0_427:                              # %.preheader462.preheader.i
                                        #   in Loop: Header=BB0_413 Depth=2
	beqz	$s4, .LBB0_433
# %bb.428:                              # %.preheader462.1.i
                                        #   in Loop: Header=BB0_413 Depth=2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_441
# %bb.429:                              #   in Loop: Header=BB0_413 Depth=2
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
	b	.LBB0_434
.LBB0_430:                              # %.preheader470.preheader.i
                                        #   in Loop: Header=BB0_413 Depth=2
	beqz	$s4, .LBB0_437
# %bb.431:                              # %.preheader470.1.i
                                        #   in Loop: Header=BB0_413 Depth=2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_444
# %bb.432:                              #   in Loop: Header=BB0_413 Depth=2
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
	b	.LBB0_438
.LBB0_433:                              # %.preheader462.1.thread.i
                                        #   in Loop: Header=BB0_413 Depth=2
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
.LBB0_434:                              # %.preheader462.3.i.thread
                                        #   in Loop: Header=BB0_413 Depth=2
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	addi.w	$t0, $t0, 2
	slli.d	$a1, $a1, 1
	ori	$a2, $zero, 3
	beq	$a0, $a2, .LBB0_462
.LBB0_435:                              # %.preheader462.4.i
                                        #   in Loop: Header=BB0_413 Depth=2
	slli.d	$a1, $a1, 2
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_447
# %bb.436:                              # %.preheader462.5.thread.i
                                        #   in Loop: Header=BB0_413 Depth=2
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
	b	.LBB0_463
.LBB0_437:                              # %.preheader470.1.thread.i
                                        #   in Loop: Header=BB0_413 Depth=2
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
.LBB0_438:                              # %.preheader470.3.i.thread
                                        #   in Loop: Header=BB0_413 Depth=2
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	addi.w	$t0, $t0, 2
	slli.d	$a1, $a0, 1
	ori	$a0, $zero, 3
	beq	$a2, $a0, .LBB0_468
.LBB0_439:                              # %.preheader470.4.i
                                        #   in Loop: Header=BB0_413 Depth=2
	slli.d	$a0, $a1, 2
	ori	$a1, $zero, 2
	bne	$a2, $a1, .LBB0_448
# %bb.440:                              # %.preheader470.5.thread.i
                                        #   in Loop: Header=BB0_413 Depth=2
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
	b	.LBB0_469
.LBB0_441:                              # %.preheader462.2.i
                                        #   in Loop: Header=BB0_413 Depth=2
	ori	$a1, $zero, 4
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_449
# %bb.442:                              # %.preheader462.2.i
                                        #   in Loop: Header=BB0_413 Depth=2
	slli.d	$a1, $s5, 3
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB0_461
# %bb.443:                              # %.preheader462.3.thread.i
                                        #   in Loop: Header=BB0_413 Depth=2
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
	b	.LBB0_450
.LBB0_444:                              # %.preheader470.2.i
                                        #   in Loop: Header=BB0_413 Depth=2
	ori	$a1, $zero, 4
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_453
# %bb.445:                              # %.preheader470.2.i
                                        #   in Loop: Header=BB0_413 Depth=2
	slli.d	$a1, $a3, 2
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB0_467
# %bb.446:                              # %.preheader470.3.thread.i
                                        #   in Loop: Header=BB0_413 Depth=2
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
	b	.LBB0_454
.LBB0_447:                              #   in Loop: Header=BB0_413 Depth=2
	addi.d	$a0, $a0, -2
	b	.LBB0_451
.LBB0_448:                              #   in Loop: Header=BB0_413 Depth=2
	addi.w	$a1, $a2, -2
	b	.LBB0_455
.LBB0_449:                              #   in Loop: Header=BB0_413 Depth=2
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
.LBB0_450:                              # %.preheader462.5.i.thread
                                        #   in Loop: Header=BB0_413 Depth=2
	addi.w	$t0, $t0, 2
	slli.d	$a1, $a1, 1
.LBB0_451:                              # %.preheader462.6.i
                                        #   in Loop: Header=BB0_413 Depth=2
	addi.w	$a2, $a0, -2
	slli.d	$a0, $a1, 2
	bnez	$a2, .LBB0_464
# %bb.452:                              # %.preheader462.7.thread.i
                                        #   in Loop: Header=BB0_413 Depth=2
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
	b	.LBB0_466
.LBB0_453:                              #   in Loop: Header=BB0_413 Depth=2
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
.LBB0_454:                              # %.preheader470.5.i.thread
                                        #   in Loop: Header=BB0_413 Depth=2
	addi.w	$t0, $t0, 2
	slli.d	$a0, $a0, 1
.LBB0_455:                              # %.preheader470.6.i
                                        #   in Loop: Header=BB0_413 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_458
# %bb.456:                              # %.preheader470.6.i
                                        #   in Loop: Header=BB0_413 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_460
# %bb.457:                              # %.preheader470.7.thread.i
                                        #   in Loop: Header=BB0_413 Depth=2
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
	b	.LBB0_459
.LBB0_458:                              #   in Loop: Header=BB0_413 Depth=2
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
.LBB0_459:                              # %.preheader470.9.i.thread
                                        #   in Loop: Header=BB0_413 Depth=2
	addi.w	$t0, $t0, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_476
.LBB0_460:                              #   in Loop: Header=BB0_413 Depth=2
	addi.w	$a1, $a1, -2
	b	.LBB0_470
.LBB0_461:                              #   in Loop: Header=BB0_413 Depth=2
	addi.w	$a0, $a0, -3
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB0_435
.LBB0_462:                              #   in Loop: Header=BB0_413 Depth=2
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
.LBB0_463:                              # %.preheader462.6.thread.i
                                        #   in Loop: Header=BB0_413 Depth=2
	addi.w	$t0, $t0, 2
	slli.d	$a0, $a0, 1
.LBB0_464:                              # %.preheader462.7.i
                                        #   in Loop: Header=BB0_413 Depth=2
	addi.w	$a1, $a2, -1
	slli.d	$a0, $a0, 1
	bnez	$a1, .LBB0_466
# %bb.465:                              #   in Loop: Header=BB0_413 Depth=2
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
.LBB0_466:                              #   in Loop: Header=BB0_413 Depth=2
	move	$t1, $zero
	slli.d	$s5, $a0, 1
	addi.w	$a2, $a1, -1
	bstrpick.d	$a0, $a0, 31, 15
	b	.LBB0_417
.LBB0_467:                              #   in Loop: Header=BB0_413 Depth=2
	addi.w	$a2, $a0, -3
	ori	$a0, $zero, 3
	bne	$a2, $a0, .LBB0_439
.LBB0_468:                              #   in Loop: Header=BB0_413 Depth=2
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
.LBB0_469:                              # %.preheader470.7.i.thread
                                        #   in Loop: Header=BB0_413 Depth=2
	addi.w	$t0, $t0, 2
	slli.d	$a0, $a0, 1
.LBB0_470:                              # %.preheader470.8.i
                                        #   in Loop: Header=BB0_413 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_473
# %bb.471:                              # %.preheader470.8.i
                                        #   in Loop: Header=BB0_413 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_475
# %bb.472:                              # %.preheader470.9.thread.i
                                        #   in Loop: Header=BB0_413 Depth=2
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
	b	.LBB0_474
.LBB0_473:                              #   in Loop: Header=BB0_413 Depth=2
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
.LBB0_474:                              # %.preheader470.11.i.thread
                                        #   in Loop: Header=BB0_413 Depth=2
	addi.w	$t0, $t0, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_482
.LBB0_475:                              #   in Loop: Header=BB0_413 Depth=2
	addi.w	$a1, $a1, -2
.LBB0_476:                              # %.preheader470.10.i
                                        #   in Loop: Header=BB0_413 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_479
# %bb.477:                              # %.preheader470.10.i
                                        #   in Loop: Header=BB0_413 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_481
# %bb.478:                              # %.preheader470.11.thread.i
                                        #   in Loop: Header=BB0_413 Depth=2
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
	b	.LBB0_480
.LBB0_479:                              #   in Loop: Header=BB0_413 Depth=2
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
.LBB0_480:                              # %.preheader470.13.i.thread
                                        #   in Loop: Header=BB0_413 Depth=2
	addi.w	$t0, $t0, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_488
.LBB0_481:                              #   in Loop: Header=BB0_413 Depth=2
	addi.w	$a1, $a1, -2
.LBB0_482:                              # %.preheader470.12.i
                                        #   in Loop: Header=BB0_413 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_485
# %bb.483:                              # %.preheader470.12.i
                                        #   in Loop: Header=BB0_413 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_487
# %bb.484:                              # %.preheader470.13.thread.i
                                        #   in Loop: Header=BB0_413 Depth=2
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
	b	.LBB0_486
.LBB0_485:                              #   in Loop: Header=BB0_413 Depth=2
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
.LBB0_486:                              # %.preheader470.14.thread.i
                                        #   in Loop: Header=BB0_413 Depth=2
	addi.w	$t0, $t0, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_490
.LBB0_487:                              #   in Loop: Header=BB0_413 Depth=2
	addi.d	$a1, $a1, -2
.LBB0_488:                              # %.preheader470.14.i
                                        #   in Loop: Header=BB0_413 Depth=2
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_490
# %bb.489:                              #   in Loop: Header=BB0_413 Depth=2
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
.LBB0_490:                              #   in Loop: Header=BB0_413 Depth=2
	move	$t1, $zero
	slli.d	$a2, $a0, 1
	addi.w	$a3, $a1, -1
	bstrpick.d	$t3, $a0, 31, 15
	bstrpick.d	$a0, $a2, 15, 1
	slli.d	$a2, $a0, 1
	sub.w	$a0, $s8, $t0
	sltui	$a0, $a0, 2
.LBB0_491:                              # %getbits.exit203.i
                                        #   in Loop: Header=BB0_413 Depth=2
	ori	$a1, $zero, 1
	bltu	$a1, $a3, .LBB0_496
# %bb.492:                              # %getbits.exit203.i
                                        #   in Loop: Header=BB0_413 Depth=2
	beqz	$a0, .LBB0_496
# %bb.493:                              #   in Loop: Header=BB0_413 Depth=2
	st.d	$t3, $sp, 24                    # 8-byte Folded Spill
	move	$s6, $a3
	move	$s5, $a2
	st.d	$t0, $sp, 48                    # 8-byte Folded Spill
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
.LBB0_494:                              # %.loopexit465.sink.split.i
                                        #   in Loop: Header=BB0_413 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ori	$t1, $zero, 1
.LBB0_495:                              # %.loopexit465.i
                                        #   in Loop: Header=BB0_413 Depth=2
	ld.d	$t3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	b	.LBB0_505
.LBB0_496:                              # %.preheader469.preheader.i
                                        #   in Loop: Header=BB0_413 Depth=2
	beqz	$a3, .LBB0_499
# %bb.497:                              # %.preheader469.1.i
                                        #   in Loop: Header=BB0_413 Depth=2
	addi.w	$a1, $a3, -1
	slli.d	$a0, $a2, 1
	bnez	$a1, .LBB0_500
# %bb.498:                              #   in Loop: Header=BB0_413 Depth=2
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
	b	.LBB0_500
.LBB0_499:                              # %.preheader469.1.thread.i
                                        #   in Loop: Header=BB0_413 Depth=2
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
.LBB0_500:                              # %getbits.exit208.i
                                        #   in Loop: Header=BB0_413 Depth=2
	slli.d	$s5, $a0, 1
	bstrpick.d	$a0, $a0, 31, 15
	addi.w	$s6, $a1, -1
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB0_504
# %bb.501:                              #   in Loop: Header=BB0_413 Depth=2
	bstrpick.d	$a0, $s5, 15, 1
	ori	$a2, $zero, 3
	slli.d	$s5, $a0, 1
	bltu	$a2, $a1, .LBB0_525
# %bb.502:                              #   in Loop: Header=BB0_413 Depth=2
	sub.w	$a0, $s8, $t0
	ori	$a2, $zero, 2
	bgeu	$a0, $a2, .LBB0_525
# %bb.503:                              #   in Loop: Header=BB0_413 Depth=2
	ori	$a0, $zero, 3
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$t3, $sp, 24                    # 8-byte Folded Spill
	st.d	$t0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB0_494
.LBB0_504:                              #   in Loop: Header=BB0_413 Depth=2
	st.d	$t0, $sp, 48                    # 8-byte Folded Spill
	move	$a3, $zero
.LBB0_505:                              # %.loopexit465.i
                                        #   in Loop: Header=BB0_413 Depth=2
	add.d	$a0, $a0, $a3
	addi.w	$a1, $a0, 2
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	bgeu	$a1, $a2, .LBB0_621
# %bb.506:                              #   in Loop: Header=BB0_413 Depth=2
	addi.w	$a0, $a0, 3
	bstrpick.d	$a2, $s2, 31, 0
	add.d	$a3, $s3, $a2
	bstrpick.d	$a5, $a0, 31, 0
	add.d	$a3, $a3, $a5
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	bltu	$a4, $a3, .LBB0_621
# %bb.507:                              #   in Loop: Header=BB0_413 Depth=2
	bgeu	$s3, $a3, .LBB0_621
# %bb.508:                              #   in Loop: Header=BB0_413 Depth=2
	sub.w	$a4, $s2, $t3
	bstrpick.d	$a3, $a4, 31, 0
	add.d	$a6, $s3, $a3
	add.d	$a5, $a6, $a5
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	bltu	$a6, $a5, .LBB0_621
# %bb.509:                              #   in Loop: Header=BB0_413 Depth=2
	bgeu	$s3, $a5, .LBB0_621
# %bb.510:                              # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB0_413 Depth=2
	ori	$a5, $zero, 32
	bgeu	$a0, $a5, .LBB0_512
# %bb.511:                              #   in Loop: Header=BB0_413 Depth=2
	move	$a1, $a0
	move	$a2, $s2
	ld.d	$t0, $sp, 48                    # 8-byte Folded Reload
	b	.LBB0_520
.LBB0_512:                              # %vector.scevcheck572
                                        #   in Loop: Header=BB0_413 Depth=2
	nor	$a5, $s2, $zero
	addi.w	$a5, $a5, 0
	ld.d	$t0, $sp, 48                    # 8-byte Folded Reload
	bltu	$a5, $a1, .LBB0_519
# %bb.513:                              # %vector.scevcheck572
                                        #   in Loop: Header=BB0_413 Depth=2
	nor	$a4, $a4, $zero
	bltu	$a4, $a1, .LBB0_519
# %bb.514:                              # %vector.scevcheck572
                                        #   in Loop: Header=BB0_413 Depth=2
	sub.d	$a1, $a2, $a3
	ori	$a2, $zero, 32
	bltu	$a1, $a2, .LBB0_519
# %bb.515:                              # %vector.ph577
                                        #   in Loop: Header=BB0_413 Depth=2
	move	$a3, $a0
	bstrins.d	$a3, $zero, 4, 0
	andi	$a1, $a0, 31
	add.w	$a2, $s2, $a3
	sub.w	$a4, $zero, $t3
	move	$a5, $a3
.LBB0_516:                              # %vector.body580
                                        #   Parent Loop BB0_369 Depth=1
                                        #     Parent Loop BB0_413 Depth=2
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
	bnez	$a5, .LBB0_516
# %bb.517:                              # %middle.block586
                                        #   in Loop: Header=BB0_413 Depth=2
	bne	$a0, $a3, .LBB0_520
# %bb.518:                              #   in Loop: Header=BB0_413 Depth=2
	move	$a0, $s6
	move	$s2, $a2
	b	.LBB0_523
.LBB0_519:                              #   in Loop: Header=BB0_413 Depth=2
	move	$a1, $a0
	move	$a2, $s2
.LBB0_520:                              # %.lr.ph.i.preheader591
                                        #   in Loop: Header=BB0_413 Depth=2
	sub.w	$a0, $zero, $t3
	move	$s2, $a2
.LBB0_521:                              # %.lr.ph.i
                                        #   Parent Loop BB0_369 Depth=1
                                        #     Parent Loop BB0_413 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $a0, $s2
	bstrpick.d	$a2, $a2, 31, 0
	ldx.b	$a2, $s3, $a2
	addi.w	$a1, $a1, -1
	bstrpick.d	$a3, $s2, 31, 0
	stx.b	$a2, $s3, $a3
	addi.w	$s2, $s2, 1
	bnez	$a1, .LBB0_521
# %bb.522:                              #   in Loop: Header=BB0_413 Depth=2
	move	$a0, $s6
.LBB0_523:                              # %.loopexit.i
                                        #   in Loop: Header=BB0_413 Depth=2
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	bnez	$t1, .LBB0_619
# %bb.524:                              # %.loopexit.i
                                        #   in Loop: Header=BB0_413 Depth=2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	bltu	$s2, $a1, .LBB0_413
	b	.LBB0_619
.LBB0_525:                              # %.preheader468.preheader.i
                                        #   in Loop: Header=BB0_413 Depth=2
	beqz	$s6, .LBB0_528
# %bb.526:                              # %.preheader468.1.i
                                        #   in Loop: Header=BB0_413 Depth=2
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB0_530
# %bb.527:                              #   in Loop: Header=BB0_413 Depth=2
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
	b	.LBB0_529
.LBB0_528:                              # %.preheader468.1.thread.i
                                        #   in Loop: Header=BB0_413 Depth=2
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
.LBB0_529:                              # %.preheader468.2.thread.i
                                        #   in Loop: Header=BB0_413 Depth=2
	addi.w	$t0, $t0, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_532
.LBB0_530:                              # %.preheader468.2.i
                                        #   in Loop: Header=BB0_413 Depth=2
	addi.w	$a1, $a1, -3
	slli.d	$a0, $s5, 2
	bnez	$a1, .LBB0_532
# %bb.531:                              #   in Loop: Header=BB0_413 Depth=2
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
.LBB0_532:                              # %getbits.exit213.i
                                        #   in Loop: Header=BB0_413 Depth=2
	slli.d	$s5, $a0, 1
	addi.w	$s6, $a1, -1
	bstrpick.d	$a0, $a0, 31, 15
	ori	$a3, $zero, 3
	ori	$a2, $zero, 7
	st.d	$t0, $sp, 48                    # 8-byte Folded Spill
	bne	$a0, $a2, .LBB0_505
# %bb.533:                              #   in Loop: Header=BB0_413 Depth=2
	st.d	$t3, $sp, 24                    # 8-byte Folded Spill
	move	$a4, $t1
	bstrpick.d	$a0, $s5, 15, 1
	slli.d	$s5, $a0, 1
	ori	$a0, $zero, 5
	bltu	$a0, $a1, .LBB0_535
# %bb.534:                              #   in Loop: Header=BB0_413 Depth=2
	sub.w	$a0, $s8, $t0
	ori	$a2, $zero, 10
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ori	$a2, $zero, 2
	bltu	$a0, $a2, .LBB0_494
.LBB0_535:                              # %.preheader467.preheader.i
                                        #   in Loop: Header=BB0_413 Depth=2
	move	$a5, $s4
	beqz	$s6, .LBB0_538
# %bb.536:                              # %.preheader467.1.i
                                        #   in Loop: Header=BB0_413 Depth=2
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB0_541
# %bb.537:                              #   in Loop: Header=BB0_413 Depth=2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
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
	b	.LBB0_539
.LBB0_538:                              # %.preheader467.1.thread.i
                                        #   in Loop: Header=BB0_413 Depth=2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
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
.LBB0_539:                              # %.preheader467.3.i.thread
                                        #   in Loop: Header=BB0_413 Depth=2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_547
.LBB0_540:                              #   in Loop: Header=BB0_413 Depth=2
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a1, $a3, 1
	bstrpick.d	$a2, $a3, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a3, $a3, 2
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
	b	.LBB0_547
.LBB0_541:                              # %.preheader467.2.i
                                        #   in Loop: Header=BB0_413 Depth=2
	ori	$a0, $zero, 4
	beq	$a1, $a0, .LBB0_544
# %bb.542:                              # %.preheader467.2.i
                                        #   in Loop: Header=BB0_413 Depth=2
	slli.d	$a0, $s5, 2
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_546
# %bb.543:                              # %.preheader467.3.thread.i
                                        #   in Loop: Header=BB0_413 Depth=2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
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
	b	.LBB0_545
.LBB0_544:                              #   in Loop: Header=BB0_413 Depth=2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
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
.LBB0_545:                              # %.preheader467.4.thread.i
                                        #   in Loop: Header=BB0_413 Depth=2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	b	.LBB0_547
.LBB0_546:                              #   in Loop: Header=BB0_413 Depth=2
	addi.d	$a1, $a1, -3
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	beqz	$a1, .LBB0_540
.LBB0_547:                              # %getbits.exit218.i
                                        #   in Loop: Header=BB0_413 Depth=2
	slli.d	$s5, $a0, 1
	addi.w	$s6, $a1, -1
	bstrpick.d	$a0, $a0, 31, 15
	ori	$a2, $zero, 31
	bne	$a0, $a2, .LBB0_551
# %bb.548:                              #   in Loop: Header=BB0_413 Depth=2
	bstrpick.d	$a0, $s5, 15, 1
	slli.d	$s5, $a0, 1
	ori	$a0, $zero, 8
	bltu	$a0, $a1, .LBB0_552
# %bb.549:                              #   in Loop: Header=BB0_413 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	sub.w	$a0, $s8, $a0
	ori	$a2, $zero, 41
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	ori	$a2, $zero, 2
	bgeu	$a0, $a2, .LBB0_552
.LBB0_550:                              #   in Loop: Header=BB0_413 Depth=2
	move	$s4, $a5
	b	.LBB0_494
.LBB0_551:                              #   in Loop: Header=BB0_413 Depth=2
	move	$t1, $a4
	move	$s4, $a5
	ld.d	$t3, $sp, 24                    # 8-byte Folded Reload
	ori	$a3, $zero, 10
	b	.LBB0_505
.LBB0_552:                              # %.preheader466.preheader.i
                                        #   in Loop: Header=BB0_413 Depth=2
	beqz	$s6, .LBB0_555
# %bb.553:                              # %.preheader466.1.i
                                        #   in Loop: Header=BB0_413 Depth=2
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB0_559
# %bb.554:                              #   in Loop: Header=BB0_413 Depth=2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
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
	b	.LBB0_556
.LBB0_555:                              # %.preheader466.1.thread.i
                                        #   in Loop: Header=BB0_413 Depth=2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
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
.LBB0_556:                              # %.preheader466.3.i.thread
                                        #   in Loop: Header=BB0_413 Depth=2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_568
.LBB0_557:                              # %.preheader466.4.i
                                        #   in Loop: Header=BB0_413 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_562
# %bb.558:                              # %.preheader466.5.thread.i
                                        #   in Loop: Header=BB0_413 Depth=2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
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
	b	.LBB0_569
.LBB0_559:                              # %.preheader466.2.i
                                        #   in Loop: Header=BB0_413 Depth=2
	ori	$a0, $zero, 4
	beq	$a1, $a0, .LBB0_563
# %bb.560:                              # %.preheader466.2.i
                                        #   in Loop: Header=BB0_413 Depth=2
	slli.d	$a0, $s5, 2
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_567
# %bb.561:                              # %.preheader466.3.thread.i
                                        #   in Loop: Header=BB0_413 Depth=2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
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
	b	.LBB0_564
.LBB0_562:                              #   in Loop: Header=BB0_413 Depth=2
	addi.d	$a1, $a1, -2
	b	.LBB0_565
.LBB0_563:                              #   in Loop: Header=BB0_413 Depth=2
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
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
.LBB0_564:                              # %.preheader466.5.i.thread
                                        #   in Loop: Header=BB0_413 Depth=2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
.LBB0_565:                              # %.preheader466.6.i
                                        #   in Loop: Header=BB0_413 Depth=2
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_570
# %bb.566:                              # %.preheader466.7.thread.i
                                        #   in Loop: Header=BB0_413 Depth=2
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a1, $a3, 1
	bstrpick.d	$a2, $a3, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a3, $a3, 2
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 15
	b	.LBB0_572
.LBB0_567:                              #   in Loop: Header=BB0_413 Depth=2
	addi.w	$a1, $a1, -3
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_557
.LBB0_568:                              #   in Loop: Header=BB0_413 Depth=2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
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
.LBB0_569:                              # %.preheader466.6.thread.i
                                        #   in Loop: Header=BB0_413 Depth=2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
.LBB0_570:                              # %.preheader466.7.i
                                        #   in Loop: Header=BB0_413 Depth=2
	addi.w	$a1, $a1, -1
	slli.d	$a0, $a0, 1
	bnez	$a1, .LBB0_572
# %bb.571:                              #   in Loop: Header=BB0_413 Depth=2
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a1, $a3, 1
	bstrpick.d	$a2, $a3, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a3, $a3, 2
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_572:                              # %getbits.exit223.i
                                        #   in Loop: Header=BB0_413 Depth=2
	slli.d	$s5, $a0, 1
	addi.w	$s6, $a1, -1
	bstrpick.d	$a0, $a0, 31, 15
	ori	$a2, $zero, 255
	bne	$a0, $a2, .LBB0_599
# %bb.573:                              # %.preheader464.i
                                        #   in Loop: Header=BB0_413 Depth=2
	bstrpick.d	$a0, $s5, 15, 1
	slli.d	$s5, $a0, 1
	ori	$a0, $zero, 8
	bltu	$a0, $a1, .LBB0_575
# %bb.574:                              # %.preheader464.i
                                        #   in Loop: Header=BB0_413 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	sub.w	$a0, $s8, $a0
	ori	$a1, $zero, 296
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB0_550
.LBB0_575:                              # %.preheader.i.preheader
                                        #   in Loop: Header=BB0_413 Depth=2
	ori	$a0, $zero, 296
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
.LBB0_576:                              # %.preheader.i
                                        #   Parent Loop BB0_369 Depth=1
                                        #     Parent Loop BB0_413 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ori	$a0, $zero, 1
	beq	$s6, $a0, .LBB0_579
# %bb.577:                              # %.preheader.i
                                        #   in Loop: Header=BB0_576 Depth=3
	bnez	$s6, .LBB0_583
# %bb.578:                              # %.thread.i
                                        #   in Loop: Header=BB0_576 Depth=3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
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
	b	.LBB0_580
.LBB0_579:                              #   in Loop: Header=BB0_576 Depth=3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
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
.LBB0_580:                              # %.thread
                                        #   in Loop: Header=BB0_576 Depth=3
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_592
.LBB0_581:                              #   in Loop: Header=BB0_576 Depth=3
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_586
# %bb.582:                              # %.thread707.i
                                        #   in Loop: Header=BB0_576 Depth=3
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
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
	b	.LBB0_593
.LBB0_583:                              #   in Loop: Header=BB0_576 Depth=3
	ori	$a0, $zero, 3
	beq	$s6, $a0, .LBB0_587
# %bb.584:                              #   in Loop: Header=BB0_576 Depth=3
	slli.d	$a0, $s5, 2
	ori	$a1, $zero, 2
	bne	$s6, $a1, .LBB0_591
# %bb.585:                              # %.thread697.i
                                        #   in Loop: Header=BB0_576 Depth=3
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
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
	b	.LBB0_588
.LBB0_586:                              #   in Loop: Header=BB0_576 Depth=3
	addi.d	$a1, $a1, -2
	b	.LBB0_589
.LBB0_587:                              #   in Loop: Header=BB0_576 Depth=3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
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
.LBB0_588:                              # %.thread111
                                        #   in Loop: Header=BB0_576 Depth=3
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
.LBB0_589:                              #   in Loop: Header=BB0_576 Depth=3
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_594
# %bb.590:                              # %.thread717.i
                                        #   in Loop: Header=BB0_576 Depth=3
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a1, $a3, 1
	bstrpick.d	$a2, $a3, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a3, $a3, 2
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 15
	b	.LBB0_596
.LBB0_591:                              #   in Loop: Header=BB0_576 Depth=3
	addi.w	$a1, $s6, -2
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_581
.LBB0_592:                              #   in Loop: Header=BB0_576 Depth=3
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
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
.LBB0_593:                              # %.thread713.i
                                        #   in Loop: Header=BB0_576 Depth=3
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
.LBB0_594:                              #   in Loop: Header=BB0_576 Depth=3
	addi.w	$a1, $a1, -1
	slli.d	$a0, $a0, 1
	bnez	$a1, .LBB0_596
# %bb.595:                              #   in Loop: Header=BB0_576 Depth=3
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a1, $a3, 1
	bstrpick.d	$a2, $a3, 31, 0
	ldx.bu	$a2, $s7, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s7, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a3, $a3, 2
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_596:                              # %getbits.exit228.i
                                        #   in Loop: Header=BB0_576 Depth=3
	slli.d	$s5, $a0, 1
	bstrpick.d	$a0, $a0, 31, 15
	addi.w	$s6, $a1, -1
	ori	$a2, $zero, 255
	bne	$a0, $a2, .LBB0_600
# %bb.597:                              #   in Loop: Header=BB0_576 Depth=3
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 255
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s5, 15, 1
	slli.d	$s5, $a0, 1
	ori	$a0, $zero, 8
	bltu	$a0, $a1, .LBB0_576
# %bb.598:                              #   in Loop: Header=BB0_576 Depth=3
	move	$s4, $a5
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	sub.w	$a0, $s8, $a0
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB0_576
	b	.LBB0_494
.LBB0_599:                              #   in Loop: Header=BB0_413 Depth=2
	move	$t1, $a4
	move	$s4, $a5
	ld.d	$t3, $sp, 24                    # 8-byte Folded Reload
	ori	$a3, $zero, 41
	b	.LBB0_505
.LBB0_600:                              #   in Loop: Header=BB0_413 Depth=2
	move	$t1, $a4
	move	$s4, $a5
	b	.LBB0_495
.LBB0_601:                              # %.lr.ph.preheader.i.i
                                        #   in Loop: Header=BB0_369 Depth=1
	move	$a1, $zero
	move	$a0, $zero
	sltui	$a3, $a2, 20
	ori	$a4, $zero, 20
	masknez	$a4, $a4, $a3
	maskeqz	$a2, $a2, $a3
	or	$a2, $a2, $a4
	andi	$a2, $a2, 30
	b	.LBB0_603
.LBB0_602:                              #   in Loop: Header=BB0_603 Depth=2
	move	$a3, $zero
	addi.d	$a1, $a1, 2
	add.d	$a0, $a3, $a0
	bgeu	$a1, $a2, .LBB0_605
.LBB0_603:                              # %.lr.ph.i.i
                                        #   Parent Loop BB0_369 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a3, $s3, $a1
	beqz	$a3, .LBB0_602
# %bb.604:                              #   in Loop: Header=BB0_603 Depth=2
	add.d	$a3, $s3, $a1
	ld.bu	$a3, $a3, 1
	sltui	$a3, $a3, 1
	addi.d	$a1, $a1, 2
	add.d	$a0, $a3, $a0
	bltu	$a1, $a2, .LBB0_603
.LBB0_605:                              # %._crit_edge.loopexit.i.i
                                        #   in Loop: Header=BB0_369 Depth=1
	slli.w	$a1, $a0, 2
	move	$a0, $s3
	bltu	$a1, $a2, .LBB0_610
.LBB0_606:                              # %.lr.ph49.preheader.i.i
                                        #   in Loop: Header=BB0_369 Depth=1
	move	$a1, $zero
	bstrpick.d	$a2, $a6, 31, 0
	move	$a3, $s3
.LBB0_607:                              # %.lr.ph49.i.i
                                        #   Parent Loop BB0_369 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.b	$a4, $a0, $a1
	addi.d	$a5, $a3, 1
	addi.d	$a1, $a1, 2
	st.b	$a4, $a3, 0
	move	$a3, $a5
	bltu	$a1, $a2, .LBB0_607
# %bb.608:                              # %u2a.exit.loopexit.i
                                        #   in Loop: Header=BB0_369 Depth=1
	bstrpick.d	$a6, $a6, 31, 1
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	b	.LBB0_610
.LBB0_609:                              # %.thread783.i
                                        #   in Loop: Header=BB0_369 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	addi.d	$s5, $sp, 1232
	ld.d	$s7, $sp, 104                   # 8-byte Folded Reload
.LBB0_610:                              # %u2a.exit.i
                                        #   in Loop: Header=BB0_369 Depth=1
	move	$s2, $s6
	addi.w	$s7, $s7, 1
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a2, $a0, %pc_lo12(.L.str.19)
	addi.d	$a0, $sp, 208
	ori	$a1, $zero, 1023
	move	$a3, $fp
	move	$s8, $s7
	move	$a4, $s7
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	st.b	$zero, $sp, 1231
	addi.d	$a0, $sp, 208
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	bge	$a0, $s7, .LBB0_636
# %bb.611:                              #   in Loop: Header=BB0_369 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	addi.w	$s6, $a0, 0
	move	$a0, $s7
	move	$a1, $s3
	move	$a2, $s6
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	bne	$a0, $s6, .LBB0_637
# %bb.612:                              #   in Loop: Header=BB0_369 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s6, $s2
	ld.bu	$a0, $s2, 0
	beqz	$a0, .LBB0_614
# %bb.613:                              #   in Loop: Header=BB0_369 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	addi.d	$a1, $sp, 208
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_615
.LBB0_614:                              #   in Loop: Header=BB0_369 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_615:                              #   in Loop: Header=BB0_369 Depth=1
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
	beq	$s3, $a1, .LBB0_639
# %bb.616:                              #   in Loop: Header=BB0_369 Depth=1
	move	$s7, $s8
	ori	$s8, $zero, 8
	ld.d	$s2, $sp, 160                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_618
# %bb.617:                              #   in Loop: Header=BB0_369 Depth=1
	addi.d	$a0, $sp, 208
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_618:                              # %.outer.i
                                        #   in Loop: Header=BB0_369 Depth=1
	st.d	$s7, $sp, 104                   # 8-byte Folded Spill
	b	.LBB0_369
.LBB0_619:                              # %._crit_edge.i
                                        #   in Loop: Header=BB0_369 Depth=1
	move	$a0, $s7
	move	$s2, $t1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB0_622
# %bb.620:                              #   in Loop: Header=BB0_369 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	b	.LBB0_404
.LBB0_621:                              # %.thread442.i
                                        #   in Loop: Header=BB0_369 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	b	.LBB0_404
.LBB0_622:                              #   in Loop: Header=BB0_369 Depth=1
	addi.d	$s5, $sp, 1232
	ld.d	$s7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	addi.w	$a2, $a6, 0
	ori	$a0, $zero, 2
	bgeu	$a2, $a0, .LBB0_405
	b	.LBB0_610
.LBB0_623:
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	b	.LBB0_362
.LBB0_624:
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	b	.LBB0_362
.LBB0_625:
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	b	.LBB0_628
.LBB0_626:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	b	.LBB0_362
.LBB0_627:
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
.LBB0_628:
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -102
	b	.LBB0_364
.LBB0_629:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_363
.LBB0_630:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_363
.LBB0_631:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	addi.d	$a1, $sp, 208
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_633
.LBB0_632:
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
.LBB0_633:                              # %ea06.exit
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -123
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	b	.LBB0_364
.LBB0_634:
	beqz	$a0, .LBB0_646
# %bb.635:
	ori	$a0, $zero, 1
	b	.LBB0_364
.LBB0_636:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	addi.d	$a1, $sp, 208
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_638
.LBB0_637:
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
.LBB0_638:                              # %ea05.exit
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -123
	move	$s6, $s2
	b	.LBB0_364
.LBB0_639:
	bnez	$a0, .LBB0_641
# %bb.640:
	addi.d	$a0, $sp, 208
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
.LBB0_641:
	ori	$a0, $zero, 1
	move	$s6, $s2
	b	.LBB0_364
.LBB0_642:
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	b	.LBB0_644
.LBB0_643:
	move	$a0, $s6
.LBB0_644:                              # %ea06.exit
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	b	.LBB0_364
.LBB0_645:
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	ld.d	$s6, $sp, 80                    # 8-byte Folded Reload
	b	.LBB0_364
.LBB0_646:
	addi.d	$a0, $sp, 208
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB0_364
.Lfunc_end0:
	.size	cli_scanautoit, .Lfunc_end0-cli_scanautoit
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_327-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_323-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_319-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_289-.LJTI0_0
	.word	.LBB0_289-.LJTI0_0
	.word	.LBB0_289-.LJTI0_0
	.word	.LBB0_289-.LJTI0_0
	.word	.LBB0_289-.LJTI0_0
	.word	.LBB0_289-.LJTI0_0
	.word	.LBB0_289-.LJTI0_0
	.word	.LBB0_289-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_284-.LJTI0_0
	.word	.LBB0_284-.LJTI0_0
	.word	.LBB0_284-.LJTI0_0
	.word	.LBB0_284-.LJTI0_0
	.word	.LBB0_284-.LJTI0_0
	.word	.LBB0_284-.LJTI0_0
	.word	.LBB0_284-.LJTI0_0
	.word	.LBB0_284-.LJTI0_0
	.word	.LBB0_284-.LJTI0_0
	.word	.LBB0_284-.LJTI0_0
	.word	.LBB0_284-.LJTI0_0
	.word	.LBB0_284-.LJTI0_0
	.word	.LBB0_284-.LJTI0_0
	.word	.LBB0_284-.LJTI0_0
	.word	.LBB0_284-.LJTI0_0
	.word	.LBB0_284-.LJTI0_0
	.word	.LBB0_284-.LJTI0_0
	.word	.LBB0_284-.LJTI0_0
	.word	.LBB0_284-.LJTI0_0
	.word	.LBB0_284-.LJTI0_0
	.word	.LBB0_284-.LJTI0_0
	.word	.LBB0_284-.LJTI0_0
	.word	.LBB0_284-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_357-.LJTI0_0
	.word	.LBB0_330-.LJTI0_0
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
