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
	addi.w	$s7, $zero, -118
	b	.LBB0_365
.LBB0_4:
	addi.w	$s7, $zero, -123
	b	.LBB0_366
.LBB0_5:
	addi.w	$s7, $zero, -118
	b	.LBB0_366
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
	bne	$a0, $a1, .LBB0_360
# %bb.10:
	addi.d	$s8, $sp, 1232
	addi.d	$a1, $sp, 1232
	ori	$a2, $zero, 16
	ori	$s2, $zero, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB0_362
# %bb.11:                               # %.preheader472.preheader.i
	move	$s5, $zero
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
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ori	$s7, $zero, 8
	lu12i.w	$a0, -201978
	ori	$a0, $a0, 3583
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ori	$a0, $a1, 2492
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(cli_debug_flag)
	ld.d	$s4, $a0, %got_pc_lo12(cli_debug_flag)
	lu12i.w	$a0, 10
	ori	$a0, $a0, 606
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ori	$a0, $a1, 2476
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	lu12i.w	$a0, 15
	ori	$a0, $a0, 606
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	lu12i.w	$a0, 4
	ori	$s2, $a0, 1450
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	lu12i.w	$a0, 12
	ori	$a0, $a0, 978
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	lu12i.w	$a0, 217860
	ori	$a0, $a0, 325
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	b	.LBB0_368
.LBB0_12:
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$s7, $zero
	addi.d	$s2, $sp, 1232
	ori	$s8, $zero, 8
	lu12i.w	$a0, 339108
	ori	$a0, $a0, 875
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	lu12i.w	$a1, 10
	ori	$a0, $a1, 3516
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	lu12i.w	$a0, -5
	ori	$a0, $a0, 831
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	ori	$a0, $a1, 3503
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
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
	b	.LBB0_14
.LBB0_13:                               #   in Loop: Header=BB0_14 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_14:                               # %.backedge.i42
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_30 Depth 2
                                        #     Child Loop BB0_34 Depth 2
                                        #     Child Loop BB0_51 Depth 2
                                        #     Child Loop BB0_55 Depth 2
                                        #     Child Loop BB0_74 Depth 2
                                        #       Child Loop BB0_238 Depth 3
                                        #       Child Loop BB0_167 Depth 3
                                        #       Child Loop BB0_172 Depth 3
                                        #     Child Loop BB0_279 Depth 2
                                        #       Child Loop BB0_298 Depth 3
                                        #       Child Loop BB0_307 Depth 3
                                        #       Child Loop BB0_311 Depth 3
	ld.d	$a0, $s0, 32
	beqz	$a0, .LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=1
	ld.w	$a1, $a0, 4
	addi.w	$a0, $a1, -1
	bltu	$a0, $s7, .LBB0_619
.LBB0_16:                               # %.critedge.i24
                                        #   in Loop: Header=BB0_14 Depth=1
	addi.d	$a1, $sp, 1232
	ori	$a2, $zero, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s8, .LBB0_362
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=1
	ld.w	$a0, $sp, 1232
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_618
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=1
	ld.w	$s4, $sp, 1236
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	xor	$s5, $s4, $a0
	slli.w	$s3, $s5, 1
	bltz	$s3, .LBB0_362
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=1
	ori	$a0, $zero, 299
	bltu	$a0, $s5, .LBB0_27
# %bb.20:                               #   in Loop: Header=BB0_14 Depth=1
	addi.d	$a1, $sp, 1232
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_362
# %bb.21:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	add.d	$a0, $s5, $a0
	bstrpick.d	$a2, $a0, 15, 0
	addi.d	$a0, $sp, 1232
	move	$a1, $s3
	pcaddu18i	$ra, %call36(LAME_decrypt)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	beqz	$s3, .LBB0_35
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=1
	ori	$a0, $zero, 5
	bltu	$s3, $a0, .LBB0_28
# %bb.23:                               #   in Loop: Header=BB0_14 Depth=1
	ld.bu	$a0, $sp, 1232
	ori	$a1, $zero, 255
	bne	$a0, $a1, .LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=1
	ld.bu	$a0, $sp, 1233
	ori	$a1, $zero, 254
	bne	$a0, $a1, .LBB0_28
# %bb.25:                               #   in Loop: Header=BB0_14 Depth=1
	ld.bu	$a0, $sp, 1234
	beqz	$a0, .LBB0_28
# %bb.26:                               # %.thread.i.i43
                                        #   in Loop: Header=BB0_14 Depth=1
	addi.w	$s3, $s3, -2
	addi.d	$a0, $sp, 1234
	b	.LBB0_33
.LBB0_27:                               #   in Loop: Header=BB0_14 Depth=1
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
	b	.LBB0_37
.LBB0_28:                               # %.lr.ph.preheader.i.i52
                                        #   in Loop: Header=BB0_14 Depth=1
	move	$a2, $zero
	move	$a0, $zero
	sltui	$a1, $s3, 20
	ori	$a3, $zero, 20
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $s3, $a1
	or	$a1, $a1, $a3
	b	.LBB0_30
	.p2align	4, , 16
.LBB0_29:                               #   in Loop: Header=BB0_30 Depth=2
	move	$a3, $zero
	addi.d	$a2, $a2, 2
	add.d	$a0, $a3, $a0
	bgeu	$a2, $a1, .LBB0_32
.LBB0_30:                               # %.lr.ph.i.i53
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a3, $a2, $s2
	beqz	$a3, .LBB0_29
# %bb.31:                               #   in Loop: Header=BB0_30 Depth=2
	add.d	$a3, $s2, $a2
	ld.bu	$a3, $a3, 1
	sltui	$a3, $a3, 1
	addi.d	$a2, $a2, 2
	add.d	$a0, $a3, $a0
	bltu	$a2, $a1, .LBB0_30
.LBB0_32:                               # %._crit_edge.loopexit.i.i59
                                        #   in Loop: Header=BB0_14 Depth=1
	slli.w	$a2, $a0, 2
	addi.d	$a0, $sp, 1232
	bltu	$a2, $a1, .LBB0_35
.LBB0_33:                               # %.lr.ph49.preheader.i.i44
                                        #   in Loop: Header=BB0_14 Depth=1
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
.LBB0_34:                               # %.lr.ph49.i.i47
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a3, $a0, 0
	st.b	$a3, $a2, 0
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 2
	bnez	$a1, .LBB0_34
.LBB0_35:                               # %u2a.exit.i51
                                        #   in Loop: Header=BB0_14 Depth=1
	addi.d	$a1, $sp, 1232
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bne	$s4, $a0, .LBB0_37
# %bb.36:                               #   in Loop: Header=BB0_14 Depth=1
	addi.d	$a1, $sp, 1232
	ori	$a2, $zero, 19
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltu	$a0, $zero, $a0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
.LBB0_37:                               #   in Loop: Header=BB0_14 Depth=1
	addi.d	$a1, $sp, 1232
	ori	$a2, $zero, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB0_362
# %bb.38:                               #   in Loop: Header=BB0_14 Depth=1
	ld.w	$a0, $sp, 1232
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	xor	$s4, $a0, $a1
	slli.w	$s3, $s4, 1
	bltz	$s3, .LBB0_362
# %bb.39:                               #   in Loop: Header=BB0_14 Depth=1
	ori	$a0, $zero, 299
	bltu	$a0, $s4, .LBB0_48
# %bb.40:                               #   in Loop: Header=BB0_14 Depth=1
	pcalau12i	$a0, %got_pc_hi20(cli_debug_flag)
	ld.d	$a0, $a0, %got_pc_lo12(cli_debug_flag)
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB0_48
# %bb.41:                               #   in Loop: Header=BB0_14 Depth=1
	addi.d	$a1, $sp, 1232
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_362
# %bb.42:                               #   in Loop: Header=BB0_14 Depth=1
	addi.d	$a0, $s4, -2048
	addi.d	$a0, $a0, -903
	bstrpick.d	$a2, $a0, 15, 0
	addi.d	$a0, $sp, 1232
	move	$a1, $s3
	pcaddu18i	$ra, %call36(LAME_decrypt)
	jirl	$ra, $ra, 0
	stx.h	$zero, $s3, $s2
	beqz	$s3, .LBB0_56
# %bb.43:                               #   in Loop: Header=BB0_14 Depth=1
	ori	$a0, $zero, 5
	bltu	$s3, $a0, .LBB0_49
# %bb.44:                               #   in Loop: Header=BB0_14 Depth=1
	ld.bu	$a0, $sp, 1232
	ori	$a1, $zero, 255
	bne	$a0, $a1, .LBB0_49
# %bb.45:                               #   in Loop: Header=BB0_14 Depth=1
	ld.bu	$a0, $sp, 1233
	ori	$a1, $zero, 254
	bne	$a0, $a1, .LBB0_49
# %bb.46:                               #   in Loop: Header=BB0_14 Depth=1
	ld.bu	$a0, $sp, 1234
	beqz	$a0, .LBB0_49
# %bb.47:                               # %.thread.i350.i
                                        #   in Loop: Header=BB0_14 Depth=1
	addi.w	$s3, $s3, -2
	addi.d	$a0, $sp, 1234
	b	.LBB0_54
.LBB0_48:                               #   in Loop: Header=BB0_14 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	b	.LBB0_57
.LBB0_49:                               # %.lr.ph.preheader.i331.i
                                        #   in Loop: Header=BB0_14 Depth=1
	move	$a2, $zero
	move	$a0, $zero
	sltui	$a1, $s3, 20
	ori	$a3, $zero, 20
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $s3, $a1
	or	$a1, $a1, $a3
	b	.LBB0_51
	.p2align	4, , 16
.LBB0_50:                               #   in Loop: Header=BB0_51 Depth=2
	move	$a3, $zero
	addi.d	$a2, $a2, 2
	add.d	$a0, $a3, $a0
	bgeu	$a2, $a1, .LBB0_53
.LBB0_51:                               # %.lr.ph.i333.i
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a3, $a2, $s2
	beqz	$a3, .LBB0_50
# %bb.52:                               #   in Loop: Header=BB0_51 Depth=2
	add.d	$a3, $s2, $a2
	ld.bu	$a3, $a3, 1
	sltui	$a3, $a3, 1
	addi.d	$a2, $a2, 2
	add.d	$a0, $a3, $a0
	bltu	$a2, $a1, .LBB0_51
.LBB0_53:                               # %._crit_edge.loopexit.i339.i
                                        #   in Loop: Header=BB0_14 Depth=1
	slli.w	$a2, $a0, 2
	addi.d	$a0, $sp, 1232
	bltu	$a2, $a1, .LBB0_56
.LBB0_54:                               # %.lr.ph49.preheader.i341.i
                                        #   in Loop: Header=BB0_14 Depth=1
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
.LBB0_55:                               # %.lr.ph49.i344.i
                                        #   Parent Loop BB0_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.b	$a3, $a0, 0
	st.b	$a3, $a2, 0
	addi.d	$a2, $a2, 1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, 2
	bnez	$a1, .LBB0_55
.LBB0_56:                               # %u2a.exit351.i
                                        #   in Loop: Header=BB0_14 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	addi.d	$a1, $sp, 1232
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_57:                               #   in Loop: Header=BB0_14 Depth=1
	addi.d	$a1, $sp, 1232
	ori	$a2, $zero, 13
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 13
	bne	$a0, $a1, .LBB0_362
# %bb.58:                               #   in Loop: Header=BB0_14 Depth=1
	ld.w	$s4, $sp, 1233
	bltz	$s4, .LBB0_617
# %bb.59:                               #   in Loop: Header=BB0_14 Depth=1
	ld.bu	$s3, $sp, 1232
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	beq	$s4, $s5, .LBB0_13
# %bb.60:                               #   in Loop: Header=BB0_14 Depth=1
	xor	$s8, $s4, $s5
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	move	$a1, $s8
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
# %bb.61:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a2, $a0, 24
	beqz	$a2, .LBB0_64
# %bb.62:                               #   in Loop: Header=BB0_14 Depth=1
	bgeu	$a2, $s8, .LBB0_64
# %bb.63:                               #   in Loop: Header=BB0_14 Depth=1
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
	ori	$s8, $zero, 8
	b	.LBB0_14
.LBB0_64:                               #   in Loop: Header=BB0_14 Depth=1
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	move	$a0, $s8
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	addi.w	$s7, $zero, -114
	beqz	$a0, .LBB0_363
# %bb.65:                               #   in Loop: Header=BB0_14 Depth=1
	move	$s4, $a0
	move	$a0, $s1
	move	$a1, $s4
	move	$a2, $s8
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s8, .LBB0_624
# %bb.66:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	move	$a0, $s4
	move	$a1, $s8
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(LAME_decrypt)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	bne	$s3, $a0, .LBB0_262
# %bb.67:                               #   in Loop: Header=BB0_14 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_265
# %bb.68:                               #   in Loop: Header=BB0_14 Depth=1
	ld.w	$a0, $s4, 4
	revb.2w	$a1, $a0
	sltui	$a2, $a0, 1
	ld.d	$a3, $s0, 32
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s8, $a2
	or	$s3, $a2, $a1
	bstrpick.d	$a0, $s3, 31, 0
	beqz	$a3, .LBB0_71
# %bb.69:                               #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a1, $a3, 24
	beqz	$a1, .LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_14 Depth=1
	bltu	$a1, $a0, .LBB0_266
.LBB0_71:                               #   in Loop: Header=BB0_14 Depth=1
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_636
# %bb.72:                               #   in Loop: Header=BB0_14 Depth=1
	move	$s6, $a0
	addi.w	$s4, $s3, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	st.d	$s4, $sp, 80                    # 8-byte Folded Spill
	beqz	$s4, .LBB0_268
# %bb.73:                               # %.lr.ph832.i
                                        #   in Loop: Header=BB0_14 Depth=1
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	move	$s4, $zero
	move	$t2, $zero
	move	$s3, $zero
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.d	$a0, $s6, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$a4, $zero, 8
.LBB0_74:                               #   Parent Loop BB0_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_238 Depth 3
                                        #       Child Loop BB0_167 Depth 3
                                        #       Child Loop BB0_172 Depth 3
	bstrpick.d	$s3, $s3, 15, 0
	bnez	$t2, .LBB0_82
# %bb.75:                               #   in Loop: Header=BB0_74 Depth=2
	sub.w	$a0, $s8, $a4
	ori	$a1, $zero, 2
	bgeu	$a0, $a1, .LBB0_82
# %bb.76:                               # %.thread.i41
                                        #   in Loop: Header=BB0_74 Depth=2
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s5, $zero
.LBB0_77:                               #   in Loop: Header=BB0_74 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$t1, $zero
	ori	$a0, $zero, 1
	move	$a3, $s5
	ori	$t0, $zero, 1
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	bstrpick.d	$s3, $s3, 15, 0
	ori	$a1, $zero, 1
	bltu	$a1, $a3, .LBB0_149
.LBB0_78:                               # %getbits.exit357.i
                                        #   in Loop: Header=BB0_74 Depth=2
	beqz	$a0, .LBB0_149
# %bb.79:                               #   in Loop: Header=BB0_74 Depth=2
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	st.d	$t1, $sp, 40                    # 8-byte Folded Spill
	move	$a6, $zero
.LBB0_80:                               # %.loopexit741.sink.split.i
                                        #   in Loop: Header=BB0_74 Depth=2
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	move	$s3, $a6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a6, $s3
	move	$a0, $zero
	ori	$t0, $zero, 1
.LBB0_81:                               # %.loopexit741.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$t1, $sp, 40                    # 8-byte Folded Reload
	b	.LBB0_158
.LBB0_82:                               # %.preheader748.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=2
	bnez	$t2, .LBB0_84
# %bb.83:                               #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	slli.d	$a1, $a1, 8
	addi.w	$a4, $a4, 2
	or	$a0, $a1, $a0
	or	$s3, $a0, $s3
	ori	$t2, $zero, 16
.LBB0_84:                               # %getbits.exit.i33
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $s3, 1
	bstrpick.d	$a1, $s3, 31, 15
	addi.w	$s5, $t2, -1
	bnez	$a1, .LBB0_88
# %bb.85:                               #   in Loop: Header=BB0_74 Depth=2
	ori	$a1, $zero, 15
	bltu	$a1, $t2, .LBB0_91
# %bb.86:                               #   in Loop: Header=BB0_74 Depth=2
	sub.w	$a1, $s8, $a4
	ori	$a2, $zero, 2
	bgeu	$a1, $a2, .LBB0_91
# %bb.87:                               #   in Loop: Header=BB0_74 Depth=2
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	move	$s3, $a0
	b	.LBB0_77
.LBB0_88:                               #   in Loop: Header=BB0_74 Depth=2
	bstrpick.d	$a0, $a0, 15, 1
	slli.d	$s3, $a0, 1
	ori	$a0, $zero, 8
	bltu	$a0, $t2, .LBB0_94
# %bb.89:                               #   in Loop: Header=BB0_74 Depth=2
	sub.w	$a0, $s8, $a4
	ori	$a1, $zero, 2
	bgeu	$a0, $a1, .LBB0_94
# %bb.90:                               #   in Loop: Header=BB0_74 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	move	$a0, $zero
	ori	$t0, $zero, 1
	b	.LBB0_195
.LBB0_91:                               # %.preheader746.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=2
	beqz	$s5, .LBB0_97
# %bb.92:                               # %.preheader746.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 2
	bne	$t2, $a0, .LBB0_105
# %bb.93:                               #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	slli.d	$a2, $s3, 2
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
	b	.LBB0_98
.LBB0_94:                               # %.preheader747.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=2
	beqz	$s5, .LBB0_101
# %bb.95:                               # %.preheader747.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 2
	bne	$t2, $a0, .LBB0_108
# %bb.96:                               #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	slli.d	$a2, $s3, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
	b	.LBB0_102
.LBB0_97:                               # %.preheader746.1.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
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
.LBB0_98:                               # %.preheader746.3.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_126
.LBB0_99:                               # %.preheader746.4.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_111
# %bb.100:                              # %.preheader746.5.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
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
	b	.LBB0_127
.LBB0_101:                              # %.preheader747.1.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $s3
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
.LBB0_102:                              # %.preheader747.3.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_190
.LBB0_103:                              # %.preheader747.4.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_112
# %bb.104:                              # %.preheader747.5.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
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
	b	.LBB0_191
.LBB0_105:                              # %.preheader746.2.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 4
	beq	$t2, $a0, .LBB0_113
# %bb.106:                              # %.preheader746.2.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $s3, 3
	ori	$a1, $zero, 3
	bne	$t2, $a1, .LBB0_125
# %bb.107:                              # %.preheader746.3.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
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
	b	.LBB0_114
.LBB0_108:                              # %.preheader747.2.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 4
	beq	$t2, $a0, .LBB0_121
# %bb.109:                              # %.preheader747.2.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $s3, 2
	ori	$a1, $zero, 3
	bne	$t2, $a1, .LBB0_189
# %bb.110:                              # %.preheader747.3.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
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
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	slli.d	$a2, $s3, 4
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_114:                              # %.preheader746.5.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
.LBB0_115:                              # %.preheader746.6.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_118
# %bb.116:                              # %.preheader746.6.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_120
# %bb.117:                              # %.preheader746.7.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
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
	b	.LBB0_119
.LBB0_118:                              #   in Loop: Header=BB0_74 Depth=2
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
.LBB0_119:                              # %.preheader746.9.i.thread
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
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	slli.d	$a2, $s3, 3
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_122:                              # %.preheader747.5.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
.LBB0_123:                              # %.preheader747.6.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_192
# %bb.124:                              # %.preheader747.7.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 15
	b	.LBB0_194
.LBB0_125:                              #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $t2, -3
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_99
.LBB0_126:                              #   in Loop: Header=BB0_74 Depth=2
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
.LBB0_127:                              # %.preheader746.7.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
.LBB0_128:                              # %.preheader746.8.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_131
# %bb.129:                              # %.preheader746.8.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_133
# %bb.130:                              # %.preheader746.9.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
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
	b	.LBB0_132
.LBB0_131:                              #   in Loop: Header=BB0_74 Depth=2
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
.LBB0_132:                              # %.preheader746.11.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_140
.LBB0_133:                              #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -2
.LBB0_134:                              # %.preheader746.10.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_137
# %bb.135:                              # %.preheader746.10.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_139
# %bb.136:                              # %.preheader746.11.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
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
	b	.LBB0_138
.LBB0_137:                              #   in Loop: Header=BB0_74 Depth=2
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
.LBB0_138:                              # %.preheader746.13.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_146
.LBB0_139:                              #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -2
.LBB0_140:                              # %.preheader746.12.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_143
# %bb.141:                              # %.preheader746.12.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_145
# %bb.142:                              # %.preheader746.13.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
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
	b	.LBB0_144
.LBB0_143:                              #   in Loop: Header=BB0_74 Depth=2
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
.LBB0_144:                              # %.preheader746.14.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_148
.LBB0_145:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a1, -2
.LBB0_146:                              # %.preheader746.14.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_148
# %bb.147:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
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
	slli.d	$s3, $a0, 1
	addi.w	$a3, $a1, -1
	bstrpick.d	$t1, $a0, 31, 15
	sub.w	$a0, $s8, $a4
	sltui	$a0, $a0, 2
	bstrpick.d	$s3, $s3, 15, 0
	ori	$a1, $zero, 1
	bgeu	$a1, $a3, .LBB0_78
.LBB0_149:                              # %.preheader745.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=2
	beqz	$a3, .LBB0_152
# %bb.150:                              # %.preheader745.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a3, -1
	slli.d	$a0, $s3, 1
	bnez	$a1, .LBB0_153
# %bb.151:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
	b	.LBB0_153
.LBB0_152:                              # %.preheader745.1.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	slli.d	$a1, $a1, 8
	addi.w	$a4, $a4, 2
	or	$a0, $a1, $a0
	or	$a0, $a0, $s3
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 15
.LBB0_153:                              # %getbits.exit362.i
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
	bltu	$a6, $a1, .LBB0_174
# %bb.155:                              #   in Loop: Header=BB0_74 Depth=2
	sub.w	$a0, $s8, $a4
	ori	$a2, $zero, 2
	bgeu	$a0, $a2, .LBB0_174
# %bb.156:                              #   in Loop: Header=BB0_74 Depth=2
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	st.d	$t1, $sp, 40                    # 8-byte Folded Spill
	b	.LBB0_80
.LBB0_157:                              #   in Loop: Header=BB0_74 Depth=2
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	move	$a6, $zero
.LBB0_158:                              # %.loopexit741.i
                                        #   in Loop: Header=BB0_74 Depth=2
	add.d	$a0, $a6, $a0
	addi.w	$a1, $a0, 2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	bgeu	$a1, $a2, .LBB0_267
# %bb.159:                              #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a0, $a0, 3
	bstrpick.d	$a2, $s4, 31, 0
	add.d	$a3, $s6, $a2
	bstrpick.d	$a5, $a0, 31, 0
	add.d	$a3, $a3, $a5
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	bltu	$a4, $a3, .LBB0_267
# %bb.160:                              #   in Loop: Header=BB0_74 Depth=2
	sub.w	$a4, $s4, $t1
	bstrpick.d	$a3, $a4, 31, 0
	add.d	$a6, $s6, $a3
	add.d	$a5, $a6, $a5
	ld.d	$a6, $sp, 64                    # 8-byte Folded Reload
	bltu	$a6, $a5, .LBB0_267
# %bb.161:                              # %.lr.ph.i38.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a5, $zero, 32
	bgeu	$a0, $a5, .LBB0_163
# %bb.162:                              #   in Loop: Header=BB0_74 Depth=2
	move	$a1, $a0
	move	$a2, $s4
	ld.d	$t2, $sp, 48                    # 8-byte Folded Reload
	b	.LBB0_171
.LBB0_163:                              # %vector.scevcheck
                                        #   in Loop: Header=BB0_74 Depth=2
	nor	$a5, $s4, $zero
	addi.w	$a5, $a5, 0
	ld.d	$t2, $sp, 48                    # 8-byte Folded Reload
	bltu	$a5, $a1, .LBB0_170
# %bb.164:                              # %vector.scevcheck
                                        #   in Loop: Header=BB0_74 Depth=2
	nor	$a4, $a4, $zero
	bltu	$a4, $a1, .LBB0_170
# %bb.165:                              # %vector.scevcheck
                                        #   in Loop: Header=BB0_74 Depth=2
	sub.d	$a1, $a2, $a3
	ori	$a2, $zero, 32
	bltu	$a1, $a2, .LBB0_170
# %bb.166:                              # %vector.ph
                                        #   in Loop: Header=BB0_74 Depth=2
	move	$a3, $a0
	bstrins.d	$a3, $zero, 4, 0
	andi	$a1, $a0, 31
	add.w	$a2, $s4, $a3
	sub.w	$a4, $zero, $t1
	move	$a5, $a3
.LBB0_167:                              # %vector.body
                                        #   Parent Loop BB0_14 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a6, $a4, $s4
	bstrpick.d	$a6, $a6, 31, 0
	add.d	$a7, $s6, $a6
	vldx	$vr0, $s6, $a6
	vld	$vr1, $a7, 16
	bstrpick.d	$a6, $s4, 31, 0
	add.d	$a7, $s6, $a6
	vstx	$vr0, $s6, $a6
	vst	$vr1, $a7, 16
	addi.w	$a5, $a5, -32
	addi.w	$s4, $s4, 32
	bnez	$a5, .LBB0_167
# %bb.168:                              # %middle.block
                                        #   in Loop: Header=BB0_74 Depth=2
	bne	$a0, $a3, .LBB0_171
# %bb.169:                              #   in Loop: Header=BB0_74 Depth=2
	move	$s4, $a2
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	b	.LBB0_196
.LBB0_170:                              #   in Loop: Header=BB0_74 Depth=2
	move	$a1, $a0
	move	$a2, $s4
.LBB0_171:                              # %.lr.ph.i38.preheader623
                                        #   in Loop: Header=BB0_74 Depth=2
	sub.w	$a0, $zero, $t1
	move	$s4, $a2
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
.LBB0_172:                              # %.lr.ph.i38
                                        #   Parent Loop BB0_14 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $a0, $s4
	bstrpick.d	$a2, $a2, 31, 0
	ldx.b	$a2, $s6, $a2
	addi.w	$a1, $a1, -1
	bstrpick.d	$a3, $s4, 31, 0
	stx.b	$a2, $s6, $a3
	addi.w	$s4, $s4, 1
	bnez	$a1, .LBB0_172
# %bb.173:                              #   in Loop: Header=BB0_74 Depth=2
	ld.d	$s3, $sp, 56                    # 8-byte Folded Reload
	b	.LBB0_196
.LBB0_174:                              # %.preheader744.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=2
	beqz	$a3, .LBB0_177
# %bb.175:                              # %.preheader744.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB0_179
# %bb.176:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	slli.d	$a2, $s3, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
	b	.LBB0_178
.LBB0_177:                              # %.preheader744.1.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $s3
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
.LBB0_178:                              # %.preheader744.2.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_181
.LBB0_179:                              # %.preheader744.2.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -3
	slli.d	$a0, $s3, 2
	bnez	$a1, .LBB0_181
# %bb.180:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_181:                              # %getbits.exit367.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$s3, $a0, 1
	addi.w	$a3, $a1, -1
	bstrpick.d	$a0, $a0, 31, 15
	ori	$a6, $zero, 3
	ori	$a2, $zero, 7
	bne	$a0, $a2, .LBB0_185
# %bb.182:                              #   in Loop: Header=BB0_74 Depth=2
	bstrpick.d	$a0, $s3, 15, 1
	slli.d	$s3, $a0, 1
	ori	$a0, $zero, 5
	st.d	$t1, $sp, 40                    # 8-byte Folded Spill
	bltu	$a0, $a1, .LBB0_186
# %bb.183:                              #   in Loop: Header=BB0_74 Depth=2
	sub.w	$a0, $s8, $a4
	ori	$a6, $zero, 10
	ori	$a2, $zero, 2
	bgeu	$a0, $a2, .LBB0_186
# %bb.184:                              #   in Loop: Header=BB0_74 Depth=2
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	b	.LBB0_80
.LBB0_185:                              #   in Loop: Header=BB0_74 Depth=2
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	b	.LBB0_158
.LBB0_186:                              # %.preheader743.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=2
	move	$a5, $t0
	beqz	$a3, .LBB0_198
# %bb.187:                              # %.preheader743.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB0_201
# %bb.188:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	slli.d	$a2, $s3, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
	b	.LBB0_199
.LBB0_189:                              #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $t2, -3
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_103
.LBB0_190:                              #   in Loop: Header=BB0_74 Depth=2
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
.LBB0_191:                              # %.preheader747.6.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
.LBB0_192:                              # %.preheader747.7.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -1
	slli.d	$a0, $a0, 1
	bnez	$a1, .LBB0_194
# %bb.193:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_194:                              #   in Loop: Header=BB0_74 Depth=2
	move	$t0, $zero
	slli.d	$s3, $a0, 1
	addi.w	$s5, $a1, -1
	bstrpick.d	$a0, $a0, 31, 15
.LBB0_195:                              # %getbits.exit387.i
                                        #   in Loop: Header=BB0_74 Depth=2
	bstrpick.d	$a1, $s4, 31, 0
	stx.b	$a0, $s6, $a1
	addi.w	$s4, $s4, 1
	move	$t2, $s5
.LBB0_196:                              # %.loopexit.i34
                                        #   in Loop: Header=BB0_74 Depth=2
	bnez	$t0, .LBB0_269
# %bb.197:                              # %.loopexit.i34
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bltu	$s4, $a0, .LBB0_74
	b	.LBB0_269
.LBB0_198:                              # %.preheader743.1.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $a2, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $s3
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
.LBB0_199:                              # %.preheader743.3.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a4, $a4, 2
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_207
.LBB0_200:                              #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
	b	.LBB0_207
.LBB0_201:                              # %.preheader743.2.i
                                        #   in Loop: Header=BB0_74 Depth=2
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	ori	$a0, $zero, 4
	beq	$a1, $a0, .LBB0_204
# %bb.202:                              # %.preheader743.2.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $s3, 2
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_206
# %bb.203:                              # %.preheader743.3.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
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
	b	.LBB0_205
.LBB0_204:                              #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
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
.LBB0_205:                              # %.preheader743.4.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	b	.LBB0_207
.LBB0_206:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a1, -3
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	beqz	$a1, .LBB0_200
.LBB0_207:                              # %getbits.exit372.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$s3, $a0, 1
	addi.w	$a3, $a1, -1
	bstrpick.d	$a0, $a0, 31, 15
	ori	$a6, $zero, 10
	ori	$a2, $zero, 31
	bne	$a0, $a2, .LBB0_211
# %bb.208:                              #   in Loop: Header=BB0_74 Depth=2
	bstrpick.d	$a0, $s3, 15, 1
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$a0, $zero, 8
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	bltu	$a0, $a1, .LBB0_212
# %bb.209:                              #   in Loop: Header=BB0_74 Depth=2
	sub.w	$a0, $s8, $a4
	ori	$a2, $zero, 2
	bgeu	$a0, $a2, .LBB0_212
# %bb.210:                              #   in Loop: Header=BB0_74 Depth=2
	ori	$a6, $zero, 41
	b	.LBB0_80
.LBB0_211:                              #   in Loop: Header=BB0_74 Depth=2
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	move	$t0, $a5
	b	.LBB0_81
.LBB0_212:                              # %.preheader742.preheader.i
                                        #   in Loop: Header=BB0_74 Depth=2
	beqz	$a3, .LBB0_215
# %bb.213:                              # %.preheader742.1.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB0_219
# %bb.214:                              #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
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
	b	.LBB0_216
.LBB0_215:                              # %.preheader742.1.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
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
.LBB0_216:                              # %.preheader742.3.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_228
.LBB0_217:                              # %.preheader742.4.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_222
# %bb.218:                              # %.preheader742.5.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
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
	b	.LBB0_229
.LBB0_219:                              # %.preheader742.2.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a0, $zero, 4
	beq	$a1, $a0, .LBB0_223
# %bb.220:                              # %.preheader742.2.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_227
# %bb.221:                              # %.preheader742.3.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
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
	b	.LBB0_224
.LBB0_222:                              #   in Loop: Header=BB0_74 Depth=2
	addi.d	$a1, $a1, -2
	b	.LBB0_225
.LBB0_223:                              #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
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
.LBB0_224:                              # %.preheader742.5.i.thread
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
.LBB0_225:                              # %.preheader742.6.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_230
# %bb.226:                              # %.preheader742.7.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 15
	b	.LBB0_232
.LBB0_227:                              #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -3
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_217
.LBB0_228:                              #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
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
.LBB0_229:                              # %.preheader742.6.thread.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
.LBB0_230:                              # %.preheader742.7.i
                                        #   in Loop: Header=BB0_74 Depth=2
	addi.w	$a1, $a1, -1
	slli.d	$a0, $a0, 1
	bnez	$a1, .LBB0_232
# %bb.231:                              #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_232:                              # %getbits.exit377.i
                                        #   in Loop: Header=BB0_74 Depth=2
	slli.d	$a2, $a0, 1
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	addi.w	$a2, $a1, -1
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	bstrpick.d	$a0, $a0, 31, 15
	ori	$a2, $zero, 255
	bne	$a0, $a2, .LBB0_236
# %bb.233:                              # %.preheader740.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 15, 1
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$a0, $zero, 8
	bltu	$a0, $a1, .LBB0_237
# %bb.234:                              # %.preheader740.i
                                        #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	sub.w	$a0, $s8, $a0
	ori	$a1, $zero, 2
	bgeu	$a0, $a1, .LBB0_237
# %bb.235:                              #   in Loop: Header=BB0_74 Depth=2
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ori	$a6, $zero, 296
	b	.LBB0_80
.LBB0_236:                              #   in Loop: Header=BB0_74 Depth=2
	move	$t0, $a5
	ld.d	$t1, $sp, 40                    # 8-byte Folded Reload
	ori	$a6, $zero, 41
	b	.LBB0_158
.LBB0_237:                              # %.preheader.i39.preheader
                                        #   in Loop: Header=BB0_74 Depth=2
	ori	$a6, $zero, 296
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
.LBB0_238:                              # %.preheader.i39
                                        #   Parent Loop BB0_14 Depth=1
                                        #     Parent Loop BB0_74 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ori	$a0, $zero, 1
	beq	$a3, $a0, .LBB0_241
# %bb.239:                              # %.preheader.i39
                                        #   in Loop: Header=BB0_238 Depth=3
	bnez	$a3, .LBB0_245
# %bb.240:                              # %.thread1079.i
                                        #   in Loop: Header=BB0_238 Depth=3
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
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
	b	.LBB0_242
.LBB0_241:                              #   in Loop: Header=BB0_238 Depth=3
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
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
.LBB0_242:                              # %.thread172
                                        #   in Loop: Header=BB0_238 Depth=3
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_254
.LBB0_243:                              #   in Loop: Header=BB0_238 Depth=3
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_248
# %bb.244:                              # %.thread1098.i
                                        #   in Loop: Header=BB0_238 Depth=3
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
	b	.LBB0_255
.LBB0_245:                              #   in Loop: Header=BB0_238 Depth=3
	ori	$a0, $zero, 3
	beq	$a3, $a0, .LBB0_249
# %bb.246:                              #   in Loop: Header=BB0_238 Depth=3
	move	$a2, $a3
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	ori	$a1, $zero, 2
	bne	$a3, $a1, .LBB0_253
# %bb.247:                              # %.thread1088.i
                                        #   in Loop: Header=BB0_238 Depth=3
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
	b	.LBB0_250
.LBB0_248:                              #   in Loop: Header=BB0_238 Depth=3
	addi.d	$a1, $a1, -2
	b	.LBB0_251
.LBB0_249:                              #   in Loop: Header=BB0_238 Depth=3
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
.LBB0_250:                              # %.thread178
                                        #   in Loop: Header=BB0_238 Depth=3
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
.LBB0_251:                              #   in Loop: Header=BB0_238 Depth=3
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_256
# %bb.252:                              # %.thread1108.i
                                        #   in Loop: Header=BB0_238 Depth=3
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 15
	b	.LBB0_258
.LBB0_253:                              #   in Loop: Header=BB0_238 Depth=3
	addi.w	$a1, $a2, -2
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_243
.LBB0_254:                              #   in Loop: Header=BB0_238 Depth=3
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
.LBB0_255:                              # %.thread1104.i
                                        #   in Loop: Header=BB0_238 Depth=3
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
.LBB0_256:                              #   in Loop: Header=BB0_238 Depth=3
	addi.w	$a1, $a1, -1
	slli.d	$a0, $a0, 1
	bnez	$a1, .LBB0_258
# %bb.257:                              #   in Loop: Header=BB0_238 Depth=3
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $a3, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_258:                              # %getbits.exit382.i
                                        #   in Loop: Header=BB0_238 Depth=3
	slli.d	$s3, $a0, 1
	bstrpick.d	$a0, $a0, 31, 15
	addi.w	$a3, $a1, -1
	ori	$a2, $zero, 255
	bne	$a0, $a2, .LBB0_261
# %bb.259:                              #   in Loop: Header=BB0_238 Depth=3
	addi.d	$a6, $a6, 255
	bstrpick.d	$a0, $s3, 15, 1
	slli.d	$a0, $a0, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$a0, $zero, 8
	bltu	$a0, $a1, .LBB0_238
# %bb.260:                              #   in Loop: Header=BB0_238 Depth=3
	sub.w	$a0, $s8, $a4
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB0_238
	b	.LBB0_80
.LBB0_261:                              #   in Loop: Header=BB0_74 Depth=2
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	st.d	$a4, $sp, 88                    # 8-byte Folded Spill
	move	$t0, $a5
	b	.LBB0_81
.LBB0_262:                              #   in Loop: Header=BB0_14 Depth=1
	st.d	$s6, $sp, 120                   # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	move	$s6, $s4
	move	$s4, $s8
.LBB0_263:                              # %.sink.split.i26
                                        #   in Loop: Header=BB0_14 Depth=1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$s8, $zero, 8
	addi.w	$a1, $s4, 0
	ori	$a0, $zero, 3
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	bltu	$a0, $a1, .LBB0_272
.LBB0_264:                              #   in Loop: Header=BB0_14 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.52)
	addi.d	$a0, $a0, %pc_lo12(.L.str.52)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	b	.LBB0_14
.LBB0_265:                              #   in Loop: Header=BB0_14 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_266:                              #   in Loop: Header=BB0_14 Depth=1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ori	$s8, $zero, 8
	b	.LBB0_14
.LBB0_267:                              # %.thread681.i
                                        #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_270
.LBB0_268:                              # %.thread1137.i
                                        #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$s8, $zero, 8
	b	.LBB0_264
.LBB0_269:                              # %._crit_edge.i35
                                        #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	move	$s3, $t0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB0_271
.LBB0_270:                              #   in Loop: Header=BB0_14 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	b	.LBB0_263
.LBB0_271:                              #   in Loop: Header=BB0_14 Depth=1
	ori	$s8, $zero, 8
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	addi.w	$a1, $s4, 0
	ori	$a0, $zero, 3
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	bgeu	$a0, $a1, .LBB0_264
.LBB0_272:                              #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_274
# %bb.273:                              #   in Loop: Header=BB0_14 Depth=1
	ori	$s5, $zero, 1
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	b	.LBB0_348
.LBB0_274:                              #   in Loop: Header=BB0_14 Depth=1
	bstrpick.d	$a0, $s4, 31, 0
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_630
# %bb.275:                              #   in Loop: Header=BB0_14 Depth=1
	move	$s5, $a0
	ld.w	$s3, $s6, 0
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	beqz	$s3, .LBB0_340
# %bb.276:                              # %.lr.ph843.i
                                        #   in Loop: Header=BB0_14 Depth=1
	move	$t1, $zero
	addi.w	$a0, $s4, -4
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.w	$a0, $s4, -8
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s3, $zero, 4
	move	$a2, $s5
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	move	$a3, $s4
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	b	.LBB0_279
.LBB0_277:                              #   in Loop: Header=BB0_279 Depth=2
	move	$s4, $t1
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	move	$a5, $s5
.LBB0_278:                              # %.thread689.i
                                        #   in Loop: Header=BB0_279 Depth=2
	move	$a2, $a5
	move	$t1, $s4
	move	$s3, $a4
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_347
.LBB0_279:                              #   Parent Loop BB0_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_298 Depth 3
                                        #       Child Loop BB0_307 Depth 3
                                        #       Child Loop BB0_311 Depth 3
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	bgeu	$s3, $a0, .LBB0_341
# %bb.280:                              #   in Loop: Header=BB0_279 Depth=2
	ori	$s5, $zero, 1
	bstrpick.d	$a0, $s3, 31, 0
	ldx.bu	$s7, $s6, $a0
	addi.d	$a0, $s7, -5
	ori	$a1, $zero, 122
	bltu	$a1, $a0, .LBB0_356
# %bb.281:                              #   in Loop: Header=BB0_279 Depth=2
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI0_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI0_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	addi.w	$s8, $s3, 1
	jr	$a0
.LBB0_282:                              #   in Loop: Header=BB0_279 Depth=2
	addi.w	$a0, $t1, 4
	addi.w	$a1, $a3, 0
	bgeu	$a0, $a1, .LBB0_284
# %bb.283:                              #   in Loop: Header=BB0_279 Depth=2
	move	$s5, $a3
	move	$a4, $a2
	b	.LBB0_285
.LBB0_284:                              #   in Loop: Header=BB0_279 Depth=2
	addi.w	$a3, $a3, 512
	move	$s5, $a3
	bstrpick.d	$a1, $a3, 31, 0
	move	$a0, $a2
	move	$s3, $t1
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	move	$t1, $s3
	move	$a4, $a0
	beqz	$a0, .LBB0_346
.LBB0_285:                              # %.thread700.i
                                        #   in Loop: Header=BB0_279 Depth=2
	pcalau12i	$a0, %pc_hi20(.L__const.ea06.opers)
	addi.d	$a0, $a0, %pc_lo12(.L__const.ea06.opers)
	alsl.d	$a0, $s7, $a0, 3
	ld.d	$a3, $a0, -512
	bstrpick.d	$a0, $t1, 31, 0
	add.d	$a0, $a4, $a0
	pcalau12i	$a1, %pc_hi20(.L.str.62)
	addi.d	$a2, $a1, %pc_lo12(.L.str.62)
	ori	$a1, $zero, 4
	move	$s3, $t1
	move	$s4, $a4
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	move	$a5, $s4
	add.w	$s4, $a0, $s3
.LBB0_286:                              # %.thread689.i
                                        #   in Loop: Header=BB0_279 Depth=2
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	move	$a3, $s5
	move	$a4, $s8
	b	.LBB0_278
.LBB0_287:                              #   in Loop: Header=BB0_279 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bgeu	$s8, $a0, .LBB0_342
# %bb.288:                              #   in Loop: Header=BB0_279 Depth=2
	bstrpick.d	$a0, $s8, 31, 0
	ldx.wu	$s4, $s6, $a0
	slli.d	$s8, $s4, 1
	addi.w	$t3, $s8, 0
	addi.w	$a1, $s3, 5
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	bltu	$a0, $t3, .LBB0_344
# %bb.289:                              #   in Loop: Header=BB0_279 Depth=2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	sub.w	$a0, $a0, $s8
	bgeu	$a1, $a0, .LBB0_344
# %bb.290:                              #   in Loop: Header=BB0_279 Depth=2
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	add.d	$a0, $t1, $s4
	addi.w	$a0, $a0, 3
	addi.w	$a1, $a3, 0
	bgeu	$a0, $a1, .LBB0_292
# %bb.291:                              #   in Loop: Header=BB0_279 Depth=2
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	move	$a0, $a2
	b	.LBB0_293
.LBB0_292:                              #   in Loop: Header=BB0_279 Depth=2
	add.d	$a0, $a3, $s4
	addi.w	$a0, $a0, 512
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	bstrpick.d	$a1, $a0, 31, 0
	move	$a0, $a2
	st.d	$t1, $sp, 40                    # 8-byte Folded Spill
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	move	$s8, $t3
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	move	$t3, $s8
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB0_346
.LBB0_293:                              #   in Loop: Header=BB0_279 Depth=2
	addi.d	$a2, $s7, -48
	sll.d	$a1, $s5, $a2
	andi	$a1, $a1, 19
	bnez	$a1, .LBB0_295
# %bb.294:                              #   in Loop: Header=BB0_279 Depth=2
	pcalau12i	$a1, %pc_hi20(.L__const.ea06.prefixes)
	addi.d	$a1, $a1, %pc_lo12(.L__const.ea06.prefixes)
	ldx.b	$a3, $a1, $a2
	bstrpick.d	$a1, $t1, 31, 0
	addi.w	$t1, $t1, 1
	stx.b	$a3, $a0, $a1
.LBB0_295:                              #   in Loop: Header=BB0_279 Depth=2
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	beqz	$s4, .LBB0_304
# %bb.296:                              # %.preheader738.i
                                        #   in Loop: Header=BB0_279 Depth=2
	bstrpick.d	$a1, $a4, 31, 0
	beqz	$t3, .LBB0_312
# %bb.297:                              # %.lr.ph835.i
                                        #   in Loop: Header=BB0_279 Depth=2
	move	$a2, $zero
	srli.d	$a3, $s4, 8
	bstrpick.d	$t2, $s8, 31, 0
	addi.w	$a4, $s3, 6
.LBB0_298:                              #   Parent Loop BB0_14 Depth=1
                                        #     Parent Loop BB0_279 Depth=2
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
	bltu	$a2, $t2, .LBB0_298
# %bb.299:                              #   in Loop: Header=BB0_279 Depth=2
	add.d	$a1, $s6, $a1
	ori	$a2, $zero, 5
	bltu	$t3, $a2, .LBB0_305
# %bb.300:                              #   in Loop: Header=BB0_279 Depth=2
	ld.bu	$a2, $a1, 0
	ori	$a3, $zero, 255
	bne	$a2, $a3, .LBB0_305
# %bb.301:                              #   in Loop: Header=BB0_279 Depth=2
	ld.bu	$a2, $a1, 1
	ori	$a3, $zero, 254
	bne	$a2, $a3, .LBB0_305
# %bb.302:                              #   in Loop: Header=BB0_279 Depth=2
	ld.bu	$a2, $a1, 2
	beqz	$a2, .LBB0_305
# %bb.303:                              # %.thread.i407.i
                                        #   in Loop: Header=BB0_279 Depth=2
	addi.d	$a2, $a1, 2
	addi.d	$a3, $s8, -2
	bstrpick.d	$t2, $a3, 31, 0
	b	.LBB0_310
.LBB0_304:                              #   in Loop: Header=BB0_279 Depth=2
	move	$s5, $a0
	b	.LBB0_314
.LBB0_305:                              # %.lr.ph.preheader.i388.i
                                        #   in Loop: Header=BB0_279 Depth=2
	move	$a3, $zero
	move	$a2, $zero
	sltui	$a4, $t3, 20
	ori	$a5, $zero, 20
	masknez	$a5, $a5, $a4
	maskeqz	$a4, $t3, $a4
	or	$a4, $a4, $a5
	b	.LBB0_307
.LBB0_306:                              #   in Loop: Header=BB0_307 Depth=3
	move	$a5, $zero
	addi.d	$a3, $a3, 2
	add.d	$a2, $a5, $a2
	bgeu	$a3, $a4, .LBB0_309
.LBB0_307:                              # %.lr.ph.i390.i
                                        #   Parent Loop BB0_14 Depth=1
                                        #     Parent Loop BB0_279 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a5, $a1, $a3
	beqz	$a5, .LBB0_306
# %bb.308:                              #   in Loop: Header=BB0_307 Depth=3
	add.d	$a5, $a1, $a3
	ld.bu	$a5, $a5, 1
	sltui	$a5, $a5, 1
	addi.d	$a3, $a3, 2
	add.d	$a2, $a5, $a2
	bltu	$a3, $a4, .LBB0_307
.LBB0_309:                              # %._crit_edge.loopexit.i396.i
                                        #   in Loop: Header=BB0_279 Depth=2
	slli.w	$a3, $a2, 2
	move	$a2, $a1
	bltu	$a3, $a4, .LBB0_313
.LBB0_310:                              # %.lr.ph49.preheader.i398.i
                                        #   in Loop: Header=BB0_279 Depth=2
	move	$a3, $zero
	move	$a4, $a1
.LBB0_311:                              # %.lr.ph49.i401.i
                                        #   Parent Loop BB0_14 Depth=1
                                        #     Parent Loop BB0_279 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.b	$a5, $a2, $a3
	addi.d	$a6, $a4, 1
	addi.d	$a3, $a3, 2
	st.b	$a5, $a4, 0
	move	$a4, $a6
	bltu	$a3, $t2, .LBB0_311
	b	.LBB0_313
.LBB0_312:                              # %._crit_edge836.thread.i
                                        #   in Loop: Header=BB0_279 Depth=2
	add.d	$a1, $s6, $a1
.LBB0_313:                              # %u2a.exit408.i
                                        #   in Loop: Header=BB0_279 Depth=2
	bstrpick.d	$a2, $t1, 31, 0
	move	$s5, $a0
	add.d	$a0, $a0, $a2
	move	$a2, $s4
	move	$s3, $t1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	add.w	$t1, $s3, $s4
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	add.w	$a4, $s8, $a4
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
.LBB0_314:                              #   in Loop: Header=BB0_279 Depth=2
	ori	$a0, $zero, 52
	beq	$s7, $a0, .LBB0_277
# %bb.315:                              #   in Loop: Header=BB0_279 Depth=2
	ori	$a0, $zero, 54
	move	$a5, $s5
	bne	$s7, $a0, .LBB0_317
# %bb.316:                              #   in Loop: Header=BB0_279 Depth=2
	bstrpick.d	$a0, $t1, 31, 0
	addi.w	$t1, $t1, 1
	ori	$a2, $zero, 34
	stx.b	$a2, $a5, $a0
.LBB0_317:                              #   in Loop: Header=BB0_279 Depth=2
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	addi.w	$s4, $t1, 1
	bstrpick.d	$a0, $t1, 31, 0
	ori	$a1, $zero, 32
	stx.b	$a1, $a5, $a0
	b	.LBB0_278
.LBB0_318:                              #   in Loop: Header=BB0_279 Depth=2
	ori	$a0, $zero, 8
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB0_358
# %bb.319:                              #   in Loop: Header=BB0_279 Depth=2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bgeu	$s8, $a0, .LBB0_358
# %bb.320:                              #   in Loop: Header=BB0_279 Depth=2
	addi.w	$a0, $t1, 40
	addi.w	$a1, $a3, 0
	bgeu	$a0, $a1, .LBB0_333
# %bb.321:                              #   in Loop: Header=BB0_279 Depth=2
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	move	$a4, $a2
	b	.LBB0_334
.LBB0_322:                              #   in Loop: Header=BB0_279 Depth=2
	ori	$a0, $zero, 8
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB0_357
# %bb.323:                              #   in Loop: Header=BB0_279 Depth=2
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bgeu	$s8, $a0, .LBB0_357
# %bb.324:                              #   in Loop: Header=BB0_279 Depth=2
	addi.w	$a0, $t1, 20
	addi.w	$a1, $a3, 0
	bgeu	$a0, $a1, .LBB0_335
# %bb.325:                              #   in Loop: Header=BB0_279 Depth=2
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	move	$a4, $a2
	b	.LBB0_336
.LBB0_326:                              #   in Loop: Header=BB0_279 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bgeu	$s8, $a0, .LBB0_359
# %bb.327:                              #   in Loop: Header=BB0_279 Depth=2
	addi.w	$a0, $t1, 12
	addi.w	$a1, $a3, 0
	bgeu	$a0, $a1, .LBB0_338
# %bb.328:                              #   in Loop: Header=BB0_279 Depth=2
	move	$s5, $a3
	move	$a4, $a2
	b	.LBB0_339
.LBB0_329:                              #   in Loop: Header=BB0_279 Depth=2
	addi.w	$s4, $t1, 1
	addi.w	$a0, $a3, 0
	bgeu	$s4, $a0, .LBB0_331
# %bb.330:                              #   in Loop: Header=BB0_279 Depth=2
	move	$s5, $a3
	move	$a5, $a2
	b	.LBB0_332
.LBB0_331:                              #   in Loop: Header=BB0_279 Depth=2
	addi.w	$a3, $a3, 512
	move	$s5, $a3
	bstrpick.d	$a1, $a3, 31, 0
	move	$a0, $a2
	move	$s3, $t1
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	move	$t1, $s3
	move	$a5, $a0
	beqz	$a0, .LBB0_346
.LBB0_332:                              # %.thread705.i30
                                        #   in Loop: Header=BB0_279 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	bstrpick.d	$a0, $t1, 31, 0
	ori	$a1, $zero, 10
	stx.b	$a1, $a5, $a0
	b	.LBB0_286
.LBB0_333:                              #   in Loop: Header=BB0_279 Depth=2
	addi.w	$a3, $a3, 512
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	bstrpick.d	$a1, $a3, 31, 0
	move	$a0, $a2
	move	$s4, $t1
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	move	$t1, $s4
	move	$a4, $a0
	beqz	$a0, .LBB0_346
.LBB0_334:                              # %.thread692.i
                                        #   in Loop: Header=BB0_279 Depth=2
	bstrpick.d	$a0, $s8, 31, 0
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
	move	$a5, $s7
	add.w	$s4, $s5, $a0
	b	.LBB0_337
.LBB0_335:                              #   in Loop: Header=BB0_279 Depth=2
	addi.w	$a3, $a3, 512
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	bstrpick.d	$a1, $a3, 31, 0
	move	$a0, $a2
	move	$s4, $t1
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	move	$t1, $s4
	move	$a4, $a0
	beqz	$a0, .LBB0_346
.LBB0_336:                              #   in Loop: Header=BB0_279 Depth=2
	addi.d	$a0, $s3, 5
	bstrpick.d	$a0, $a0, 31, 0
	ldx.w	$a0, $s6, $a0
	bstrpick.d	$a1, $s8, 31, 0
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
	move	$a5, $s5
	addi.w	$s4, $s4, 19
.LBB0_337:                              # %.thread689.i
                                        #   in Loop: Header=BB0_279 Depth=2
	addi.w	$a4, $s3, 9
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	b	.LBB0_278
.LBB0_338:                              #   in Loop: Header=BB0_279 Depth=2
	addi.w	$a3, $a3, 512
	move	$s5, $a3
	bstrpick.d	$a1, $a3, 31, 0
	move	$a0, $a2
	move	$s4, $t1
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	move	$t1, $s4
	move	$a4, $a0
	beqz	$a0, .LBB0_346
.LBB0_339:                              # %.thread684.i
                                        #   in Loop: Header=BB0_279 Depth=2
	bstrpick.d	$a0, $s8, 31, 0
	ldx.w	$a3, $s6, $a0
	bstrpick.d	$a0, $t1, 31, 0
	add.d	$a0, $a4, $a0
	pcalau12i	$a1, %pc_hi20(.L.str.55)
	addi.d	$a2, $a1, %pc_lo12(.L.str.55)
	ori	$a1, $zero, 12
	move	$s4, $t1
	move	$s7, $a4
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	move	$a5, $s7
	addi.w	$s4, $s4, 11
	addi.w	$a4, $s3, 5
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	move	$a3, $s5
	b	.LBB0_278
.LBB0_340:                              #   in Loop: Header=BB0_14 Depth=1
	move	$s4, $zero
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	move	$a5, $s5
	b	.LBB0_347
.LBB0_341:                              #   in Loop: Header=BB0_14 Depth=1
	move	$s4, $t1
	move	$a5, $a2
	b	.LBB0_347
.LBB0_342:                              #   in Loop: Header=BB0_14 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a0, $a0, %pc_lo12(.L.str.60)
.LBB0_343:                              # %.critedge14.i
                                        #   in Loop: Header=BB0_14 Depth=1
	move	$s3, $t1
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_345
.LBB0_344:                              #   in Loop: Header=BB0_14 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	sub.w	$a3, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a0, $a0, %pc_lo12(.L.str.61)
	move	$a1, $t3
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	move	$s3, $t1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_345:                              # %.critedge14.i
                                        #   in Loop: Header=BB0_14 Depth=1
	move	$t1, $s3
.LBB0_346:                              # %.critedge14.i
                                        #   in Loop: Header=BB0_14 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.64)
	addi.d	$a0, $a0, %pc_lo12(.L.str.64)
	move	$s4, $t1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
.LBB0_347:                              # %.critedge14.thread.i
                                        #   in Loop: Header=BB0_14 Depth=1
	ori	$s5, $zero, 1
	move	$a0, $s6
	move	$s6, $a5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$s8, $zero, 8
.LBB0_348:                              #   in Loop: Header=BB0_14 Depth=1
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
	bltz	$a0, .LBB0_625
# %bb.349:                              #   in Loop: Header=BB0_14 Depth=1
	move	$s3, $a0
	addi.w	$s4, $s4, 0
	move	$a1, $s6
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	bne	$a0, $s4, .LBB0_626
# %bb.350:                              #   in Loop: Header=BB0_14 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.bu	$a0, $s6, 0
	pcalau12i	$a1, %pc_hi20(.L.str.66)
	addi.d	$a1, $a1, %pc_lo12(.L.str.66)
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	masknez	$a1, $a1, $a3
	pcalau12i	$a2, %pc_hi20(.L.str.67)
	addi.d	$a2, $a2, %pc_lo12(.L.str.67)
	maskeqz	$a2, $a2, $a3
	or	$a1, $a2, $a1
	beqz	$a0, .LBB0_352
# %bb.351:                              #   in Loop: Header=BB0_14 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.65)
	addi.d	$a0, $a0, %pc_lo12(.L.str.65)
	addi.d	$a2, $sp, 208
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_353
.LBB0_352:                              #   in Loop: Header=BB0_14 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.68)
	addi.d	$a0, $a0, %pc_lo12(.L.str.68)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_353:                              #   in Loop: Header=BB0_14 Depth=1
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
	beq	$s4, $s5, .LBB0_628
# %bb.354:                              #   in Loop: Header=BB0_14 Depth=1
	bnez	$a0, .LBB0_14
# %bb.355:                              #   in Loop: Header=BB0_14 Depth=1
	addi.d	$a0, $sp, 208
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	b	.LBB0_14
.LBB0_356:                              #   in Loop: Header=BB0_14 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.63)
	addi.d	$a0, $a0, %pc_lo12(.L.str.63)
	move	$a1, $s7
	move	$s3, $t1
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_345
.LBB0_357:                              #   in Loop: Header=BB0_14 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	b	.LBB0_343
.LBB0_358:                              #   in Loop: Header=BB0_14 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	b	.LBB0_343
.LBB0_359:                              #   in Loop: Header=BB0_14 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	b	.LBB0_343
.LBB0_360:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
.LBB0_361:
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_362:
	move	$s7, $zero
.LBB0_363:
	ld.bu	$a0, $s6, 0
	bnez	$a0, .LBB0_365
# %bb.364:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_rmdirs)
	jirl	$ra, $ra, 0
.LBB0_365:                              # %.sink.split
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_366:
	move	$a0, $s7
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
.LBB0_367:                              #   in Loop: Header=BB0_368 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
.LBB0_368:                              # %.backedge.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_409 Depth 2
                                        #       Child Loop BB0_564 Depth 3
                                        #       Child Loop BB0_510 Depth 3
                                        #       Child Loop BB0_504 Depth 3
                                        #     Child Loop BB0_603 Depth 2
                                        #     Child Loop BB0_607 Depth 2
	ld.d	$a0, $s0, 32
	beqz	$a0, .LBB0_370
# %bb.369:                              #   in Loop: Header=BB0_368 Depth=1
	ld.w	$a1, $a0, 4
	addi.w	$a0, $a1, -1
	bltu	$a0, $s5, .LBB0_621
.LBB0_370:                              # %.critedge.i
                                        #   in Loop: Header=BB0_368 Depth=1
	addi.d	$a1, $sp, 1232
	ori	$a2, $zero, 8
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s7, .LBB0_362
# %bb.371:                              #   in Loop: Header=BB0_368 Depth=1
	ld.w	$a0, $sp, 1232
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_620
# %bb.372:                              #   in Loop: Header=BB0_368 Depth=1
	ld.w	$a0, $sp, 1236
	bltz	$a0, .LBB0_362
# %bb.373:                              #   in Loop: Header=BB0_368 Depth=1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	xor	$s3, $a0, $a1
	ori	$a0, $zero, 299
	bltu	$a0, $s3, .LBB0_377
# %bb.374:                              #   in Loop: Header=BB0_368 Depth=1
	ld.bu	$a0, $s4, 0
	beqz	$a0, .LBB0_377
# %bb.375:                              #   in Loop: Header=BB0_368 Depth=1
	addi.d	$a1, $sp, 1232
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_362
# %bb.376:                              #   in Loop: Header=BB0_368 Depth=1
	stx.b	$zero, $s3, $s8
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	add.w	$a2, $s3, $a0
	addi.d	$a0, $sp, 1232
	move	$a1, $s3
	pcaddu18i	$ra, %call36(MT_decrypt)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 1232
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_378
.LBB0_377:                              #   in Loop: Header=BB0_368 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
.LBB0_378:                              #   in Loop: Header=BB0_368 Depth=1
	addi.d	$a1, $sp, 1232
	ori	$a2, $zero, 4
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	bne	$a0, $a1, .LBB0_362
# %bb.379:                              #   in Loop: Header=BB0_368 Depth=1
	ld.w	$a0, $sp, 1232
	bltz	$a0, .LBB0_362
# %bb.380:                              #   in Loop: Header=BB0_368 Depth=1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	xor	$s3, $a0, $a1
	ori	$a0, $zero, 299
	bltu	$a0, $s3, .LBB0_384
# %bb.381:                              #   in Loop: Header=BB0_368 Depth=1
	ld.bu	$a0, $s4, 0
	beqz	$a0, .LBB0_384
# %bb.382:                              #   in Loop: Header=BB0_368 Depth=1
	addi.d	$a1, $sp, 1232
	move	$a0, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_362
# %bb.383:                              #   in Loop: Header=BB0_368 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.w	$a2, $s3, $a0
	addi.d	$a0, $sp, 1232
	move	$a1, $s3
	pcaddu18i	$ra, %call36(MT_decrypt)
	jirl	$ra, $ra, 0
	stx.b	$zero, $s3, $s8
	addi.d	$a1, $sp, 1232
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_385
.LBB0_384:                              #   in Loop: Header=BB0_368 Depth=1
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
.LBB0_385:                              #   in Loop: Header=BB0_368 Depth=1
	addi.d	$a1, $sp, 1232
	ori	$a2, $zero, 13
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 13
	bne	$a0, $a1, .LBB0_362
# %bb.386:                              #   in Loop: Header=BB0_368 Depth=1
	ld.w	$s3, $sp, 1233
	bltz	$s3, .LBB0_617
# %bb.387:                              #   in Loop: Header=BB0_368 Depth=1
	ld.bu	$s4, $sp, 1232
	ori	$a1, $zero, 16
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	beq	$s3, $s2, .LBB0_367
# %bb.388:                              #   in Loop: Header=BB0_368 Depth=1
	xor	$s3, $s3, $s2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1237
	xor	$a1, $a0, $s2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $sp, 1241
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	xor	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	beqz	$a0, .LBB0_392
# %bb.389:                              #   in Loop: Header=BB0_368 Depth=1
	ld.d	$a2, $a0, 24
	beqz	$a2, .LBB0_392
# %bb.390:                              #   in Loop: Header=BB0_368 Depth=1
	bgeu	$a2, $s3, .LBB0_392
# %bb.391:                              #   in Loop: Header=BB0_368 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	b	.LBB0_368
.LBB0_392:                              #   in Loop: Header=BB0_368 Depth=1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	addi.w	$s7, $zero, -114
	beqz	$a0, .LBB0_635
# %bb.393:                              #   in Loop: Header=BB0_368 Depth=1
	move	$s6, $a0
	move	$a0, $s1
	move	$a1, $s6
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB0_623
# %bb.394:                              #   in Loop: Header=BB0_368 Depth=1
	move	$a0, $s6
	move	$a1, $s3
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(MT_decrypt)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	bne	$s4, $a0, .LBB0_401
# %bb.395:                              #   in Loop: Header=BB0_368 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_400
# %bb.396:                              #   in Loop: Header=BB0_368 Depth=1
	st.d	$s5, $sp, 72                    # 8-byte Folded Spill
	ld.w	$a0, $s6, 4
	revb.2w	$a1, $a0
	sltui	$a2, $a0, 1
	ld.d	$a0, $s0, 32
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s3, $a2
	or	$a1, $a2, $a1
	bstrpick.d	$s5, $a1, 31, 0
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_402
# %bb.397:                              #   in Loop: Header=BB0_368 Depth=1
	ld.d	$a2, $a0, 24
	beqz	$a2, .LBB0_402
# %bb.398:                              #   in Loop: Header=BB0_368 Depth=1
	bgeu	$a2, $s5, .LBB0_402
# %bb.399:                              #   in Loop: Header=BB0_368 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	ori	$s7, $zero, 8
	b	.LBB0_368
.LBB0_400:                              #   in Loop: Header=BB0_368 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ori	$s7, $zero, 8
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	b	.LBB0_368
.LBB0_401:                              #   in Loop: Header=BB0_368 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	move	$s8, $s6
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	b	.LBB0_594
.LBB0_402:                              # %split.i
                                        #   in Loop: Header=BB0_368 Depth=1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	move	$a0, $s5
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_630
# %bb.403:                              #   in Loop: Header=BB0_368 Depth=1
	move	$s8, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.w	$s4, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	beqz	$s4, .LBB0_589
# %bb.404:                              # %.lr.ph535.i
                                        #   in Loop: Header=BB0_368 Depth=1
	move	$s7, $zero
	move	$s4, $zero
	move	$a0, $zero
	add.d	$a1, $s8, $s5
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ori	$a4, $zero, 8
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	b	.LBB0_409
.LBB0_405:                              # %.thread719.i
                                        #   in Loop: Header=BB0_409 Depth=2
	move	$s5, $s4
	move	$s4, $a4
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s2, $zero
.LBB0_406:                              #   in Loop: Header=BB0_409 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ori	$t0, $zero, 1
	move	$a4, $s4
	move	$s4, $s5
	move	$a2, $s2
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
.LBB0_407:                              # %getbits.exit231.i
                                        #   in Loop: Header=BB0_409 Depth=2
	bstrpick.d	$a1, $s7, 31, 0
	stx.b	$a0, $s8, $a1
	addi.w	$s7, $s7, 1
	move	$a0, $a2
	bnez	$t0, .LBB0_590
.LBB0_408:                              # %.loopexit.i
                                        #   in Loop: Header=BB0_409 Depth=2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	bgeu	$s7, $a1, .LBB0_590
.LBB0_409:                              #   Parent Loop BB0_368 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_564 Depth 3
                                        #       Child Loop BB0_510 Depth 3
                                        #       Child Loop BB0_504 Depth 3
	bstrpick.d	$s4, $s4, 15, 0
	bnez	$a0, .LBB0_411
# %bb.410:                              #   in Loop: Header=BB0_409 Depth=2
	sub.w	$a1, $s3, $a4
	ori	$a2, $zero, 2
	bltu	$a1, $a2, .LBB0_405
.LBB0_411:                              # %.preheader469.preheader.i
                                        #   in Loop: Header=BB0_409 Depth=2
	bnez	$a0, .LBB0_413
# %bb.412:                              #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s6, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s6, $a0
	slli.d	$a1, $a1, 8
	addi.w	$a4, $a4, 2
	or	$a0, $a1, $a0
	or	$s4, $a0, $s4
	ori	$a0, $zero, 16
.LBB0_413:                              # %getbits.exit.i
                                        #   in Loop: Header=BB0_409 Depth=2
	slli.d	$s5, $s4, 1
	bstrpick.d	$a2, $s4, 31, 15
	addi.w	$s2, $a0, -1
	bnez	$a2, .LBB0_417
# %bb.414:                              #   in Loop: Header=BB0_409 Depth=2
	ori	$a2, $zero, 8
	bltu	$a2, $a0, .LBB0_420
# %bb.415:                              #   in Loop: Header=BB0_409 Depth=2
	sub.w	$a2, $s3, $a4
	ori	$a3, $zero, 2
	bgeu	$a2, $a3, .LBB0_420
# %bb.416:                              #   in Loop: Header=BB0_409 Depth=2
	move	$s4, $a4
	b	.LBB0_406
.LBB0_417:                              #   in Loop: Header=BB0_409 Depth=2
	bstrpick.d	$a1, $s5, 15, 1
	slli.d	$a3, $a1, 1
	ori	$a1, $zero, 15
	bltu	$a1, $a0, .LBB0_423
# %bb.418:                              #   in Loop: Header=BB0_409 Depth=2
	sub.w	$a1, $s3, $a4
	ori	$a2, $zero, 2
	bgeu	$a1, $a2, .LBB0_423
# %bb.419:                              #   in Loop: Header=BB0_409 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	move	$s4, $a4
	move	$s5, $a3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a3, $s2
	move	$a2, $s5
	move	$a4, $s4
	move	$t3, $zero
	ori	$a0, $zero, 1
	ori	$t0, $zero, 1
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	b	.LBB0_484
.LBB0_420:                              # %.preheader460.preheader.i
                                        #   in Loop: Header=BB0_409 Depth=2
	beqz	$s2, .LBB0_426
# %bb.421:                              # %.preheader460.1.i
                                        #   in Loop: Header=BB0_409 Depth=2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_434
# %bb.422:                              #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s6, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s6, $a0
	slli.d	$a2, $s4, 2
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a1, $a0, $a1
	ori	$a0, $zero, 15
	b	.LBB0_427
.LBB0_423:                              # %.preheader468.preheader.i
                                        #   in Loop: Header=BB0_409 Depth=2
	beqz	$s2, .LBB0_430
# %bb.424:                              # %.preheader468.1.i
                                        #   in Loop: Header=BB0_409 Depth=2
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB0_437
# %bb.425:                              #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s6, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s6, $a0
	slli.d	$a2, $a3, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a2, $zero, 15
	b	.LBB0_431
.LBB0_426:                              # %.preheader460.1.thread.i
                                        #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s6, $a0
	slli.d	$a2, $a2, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $s5
	slli.d	$a1, $a0, 1
	ori	$a0, $zero, 14
.LBB0_427:                              # %.preheader460.3.i.thread
                                        #   in Loop: Header=BB0_409 Depth=2
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	addi.w	$a4, $a4, 2
	slli.d	$a1, $a1, 1
	ori	$a2, $zero, 3
	beq	$a0, $a2, .LBB0_455
.LBB0_428:                              # %.preheader460.4.i
                                        #   in Loop: Header=BB0_409 Depth=2
	slli.d	$a1, $a1, 2
	ori	$a2, $zero, 2
	bne	$a0, $a2, .LBB0_440
# %bb.429:                              # %.preheader460.5.thread.i
                                        #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s6, $a0
	slli.d	$a2, $a2, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	slli.d	$a0, $a0, 1
	ori	$a2, $zero, 14
	b	.LBB0_456
.LBB0_430:                              # %.preheader468.1.thread.i
                                        #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s6, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s6, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $a3
	slli.d	$a0, $a0, 1
	ori	$a2, $zero, 14
.LBB0_431:                              # %.preheader468.3.i.thread
                                        #   in Loop: Header=BB0_409 Depth=2
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	addi.w	$a4, $a4, 2
	slli.d	$a1, $a0, 1
	ori	$a0, $zero, 3
	beq	$a2, $a0, .LBB0_461
.LBB0_432:                              # %.preheader468.4.i
                                        #   in Loop: Header=BB0_409 Depth=2
	slli.d	$a0, $a1, 2
	ori	$a1, $zero, 2
	bne	$a2, $a1, .LBB0_441
# %bb.433:                              # %.preheader468.5.thread.i
                                        #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_462
.LBB0_434:                              # %.preheader460.2.i
                                        #   in Loop: Header=BB0_409 Depth=2
	ori	$a1, $zero, 4
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_442
# %bb.435:                              # %.preheader460.2.i
                                        #   in Loop: Header=BB0_409 Depth=2
	slli.d	$a1, $s4, 3
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB0_454
# %bb.436:                              # %.preheader460.3.thread.i
                                        #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s6, $a0
	slli.d	$a2, $a2, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	slli.d	$a1, $a0, 1
	ori	$a0, $zero, 14
	b	.LBB0_443
.LBB0_437:                              # %.preheader468.2.i
                                        #   in Loop: Header=BB0_409 Depth=2
	ori	$a1, $zero, 4
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB0_446
# %bb.438:                              # %.preheader468.2.i
                                        #   in Loop: Header=BB0_409 Depth=2
	slli.d	$a1, $a3, 2
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB0_460
# %bb.439:                              # %.preheader468.3.thread.i
                                        #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s6, $a0
	slli.d	$a2, $a2, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_447
.LBB0_440:                              #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a0, $a0, -2
	b	.LBB0_444
.LBB0_441:                              #   in Loop: Header=BB0_409 Depth=2
	addi.w	$a1, $a2, -2
	b	.LBB0_448
.LBB0_442:                              #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s6, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s6, $a0
	slli.d	$a2, $s4, 4
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a1, $a0, $a1
	ori	$a0, $zero, 15
.LBB0_443:                              # %.preheader460.5.i.thread
                                        #   in Loop: Header=BB0_409 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a1, $a1, 1
.LBB0_444:                              # %.preheader460.6.i
                                        #   in Loop: Header=BB0_409 Depth=2
	addi.w	$a2, $a0, -2
	slli.d	$a0, $a1, 2
	bnez	$a2, .LBB0_457
# %bb.445:                              # %.preheader460.7.thread.i
                                        #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 15
	b	.LBB0_459
.LBB0_446:                              #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s6, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s6, $a0
	slli.d	$a2, $a3, 3
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_447:                              # %.preheader468.5.i.thread
                                        #   in Loop: Header=BB0_409 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
.LBB0_448:                              # %.preheader468.6.i
                                        #   in Loop: Header=BB0_409 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_451
# %bb.449:                              # %.preheader468.6.i
                                        #   in Loop: Header=BB0_409 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_453
# %bb.450:                              # %.preheader468.7.thread.i
                                        #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_452
.LBB0_451:                              #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_452:                              # %.preheader468.9.i.thread
                                        #   in Loop: Header=BB0_409 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_469
.LBB0_453:                              #   in Loop: Header=BB0_409 Depth=2
	addi.w	$a1, $a1, -2
	b	.LBB0_463
.LBB0_454:                              #   in Loop: Header=BB0_409 Depth=2
	addi.w	$a0, $a0, -3
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB0_428
.LBB0_455:                              #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s6, $a0
	slli.d	$a1, $a1, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $a2
	ori	$a2, $zero, 15
.LBB0_456:                              # %.preheader460.6.thread.i
                                        #   in Loop: Header=BB0_409 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
.LBB0_457:                              # %.preheader460.7.i
                                        #   in Loop: Header=BB0_409 Depth=2
	addi.w	$a1, $a2, -1
	slli.d	$a0, $a0, 1
	bnez	$a1, .LBB0_459
# %bb.458:                              #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_459:                              #   in Loop: Header=BB0_409 Depth=2
	move	$t0, $zero
	slli.d	$s4, $a0, 1
	addi.w	$a2, $a1, -1
	bstrpick.d	$a0, $a0, 31, 15
	b	.LBB0_407
.LBB0_460:                              #   in Loop: Header=BB0_409 Depth=2
	addi.w	$a2, $a0, -3
	ori	$a0, $zero, 3
	bne	$a2, $a0, .LBB0_432
.LBB0_461:                              #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s6, $a0
	slli.d	$a1, $a1, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_462:                              # %.preheader468.7.i.thread
                                        #   in Loop: Header=BB0_409 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
.LBB0_463:                              # %.preheader468.8.i
                                        #   in Loop: Header=BB0_409 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_466
# %bb.464:                              # %.preheader468.8.i
                                        #   in Loop: Header=BB0_409 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_468
# %bb.465:                              # %.preheader468.9.thread.i
                                        #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_467
.LBB0_466:                              #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_467:                              # %.preheader468.11.i.thread
                                        #   in Loop: Header=BB0_409 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_475
.LBB0_468:                              #   in Loop: Header=BB0_409 Depth=2
	addi.w	$a1, $a1, -2
.LBB0_469:                              # %.preheader468.10.i
                                        #   in Loop: Header=BB0_409 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_472
# %bb.470:                              # %.preheader468.10.i
                                        #   in Loop: Header=BB0_409 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_474
# %bb.471:                              # %.preheader468.11.thread.i
                                        #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_473
.LBB0_472:                              #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_473:                              # %.preheader468.13.i.thread
                                        #   in Loop: Header=BB0_409 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_481
.LBB0_474:                              #   in Loop: Header=BB0_409 Depth=2
	addi.w	$a1, $a1, -2
.LBB0_475:                              # %.preheader468.12.i
                                        #   in Loop: Header=BB0_409 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_478
# %bb.476:                              # %.preheader468.12.i
                                        #   in Loop: Header=BB0_409 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_480
# %bb.477:                              # %.preheader468.13.thread.i
                                        #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_479
.LBB0_478:                              #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_479:                              # %.preheader468.14.thread.i
                                        #   in Loop: Header=BB0_409 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_483
.LBB0_480:                              #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a1, $a1, -2
.LBB0_481:                              # %.preheader468.14.i
                                        #   in Loop: Header=BB0_409 Depth=2
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_483
# %bb.482:                              #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_483:                              #   in Loop: Header=BB0_409 Depth=2
	move	$t0, $zero
	slli.d	$a2, $a0, 1
	addi.w	$a3, $a1, -1
	bstrpick.d	$t3, $a0, 31, 15
	bstrpick.d	$a0, $a2, 15, 1
	slli.d	$a2, $a0, 1
	sub.w	$a0, $s3, $a4
	sltui	$a0, $a0, 2
.LBB0_484:                              # %getbits.exit201.i
                                        #   in Loop: Header=BB0_409 Depth=2
	ori	$a1, $zero, 1
	bltu	$a1, $a3, .LBB0_489
# %bb.485:                              # %getbits.exit201.i
                                        #   in Loop: Header=BB0_409 Depth=2
	beqz	$a0, .LBB0_489
# %bb.486:                              #   in Loop: Header=BB0_409 Depth=2
	st.d	$t3, $sp, 16                    # 8-byte Folded Spill
	move	$s5, $a3
	move	$s4, $a2
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
.LBB0_487:                              # %.loopexit463.sink.split.i
                                        #   in Loop: Header=BB0_409 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ori	$t0, $zero, 1
.LBB0_488:                              # %.loopexit463.i
                                        #   in Loop: Header=BB0_409 Depth=2
	ld.d	$t3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	b	.LBB0_498
.LBB0_489:                              # %.preheader467.preheader.i
                                        #   in Loop: Header=BB0_409 Depth=2
	beqz	$a3, .LBB0_492
# %bb.490:                              # %.preheader467.1.i
                                        #   in Loop: Header=BB0_409 Depth=2
	addi.w	$a1, $a3, -1
	slli.d	$a0, $a2, 1
	bnez	$a1, .LBB0_493
# %bb.491:                              #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
	b	.LBB0_493
.LBB0_492:                              # %.preheader467.1.thread.i
                                        #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s6, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s6, $a0
	slli.d	$a1, $a1, 8
	addi.w	$a4, $a4, 2
	or	$a0, $a1, $a0
	or	$a0, $a0, $a2
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 15
.LBB0_493:                              # %getbits.exit206.i
                                        #   in Loop: Header=BB0_409 Depth=2
	slli.d	$s4, $a0, 1
	bstrpick.d	$a0, $a0, 31, 15
	addi.w	$s5, $a1, -1
	ori	$a2, $zero, 3
	bne	$a0, $a2, .LBB0_497
# %bb.494:                              #   in Loop: Header=BB0_409 Depth=2
	bstrpick.d	$a0, $s4, 15, 1
	ori	$a2, $zero, 3
	slli.d	$s4, $a0, 1
	bltu	$a2, $a1, .LBB0_513
# %bb.495:                              #   in Loop: Header=BB0_409 Depth=2
	sub.w	$a0, $s3, $a4
	ori	$a2, $zero, 2
	bgeu	$a0, $a2, .LBB0_513
# %bb.496:                              #   in Loop: Header=BB0_409 Depth=2
	ori	$a0, $zero, 3
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$t3, $sp, 16                    # 8-byte Folded Spill
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	b	.LBB0_487
.LBB0_497:                              #   in Loop: Header=BB0_409 Depth=2
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	move	$a3, $zero
.LBB0_498:                              # %.loopexit463.i
                                        #   in Loop: Header=BB0_409 Depth=2
	add.d	$a0, $a0, $a3
	addi.w	$a1, $a0, 2
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	bgeu	$a1, $a2, .LBB0_592
# %bb.499:                              #   in Loop: Header=BB0_409 Depth=2
	addi.w	$a0, $a0, 3
	bstrpick.d	$a2, $s7, 31, 0
	add.d	$a3, $s8, $a2
	bstrpick.d	$a5, $a0, 31, 0
	add.d	$a3, $a3, $a5
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	bltu	$a4, $a3, .LBB0_592
# %bb.500:                              #   in Loop: Header=BB0_409 Depth=2
	sub.w	$a4, $s7, $t3
	bstrpick.d	$a3, $a4, 31, 0
	add.d	$a6, $s8, $a3
	add.d	$a5, $a6, $a5
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	bltu	$a6, $a5, .LBB0_592
# %bb.501:                              # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB0_409 Depth=2
	ori	$a5, $zero, 32
	bgeu	$a0, $a5, .LBB0_506
.LBB0_502:                              #   in Loop: Header=BB0_409 Depth=2
	move	$a1, $a0
	move	$a2, $s7
.LBB0_503:                              # %.lr.ph.i.preheader591
                                        #   in Loop: Header=BB0_409 Depth=2
	sub.w	$a0, $zero, $t3
	move	$s7, $a2
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
.LBB0_504:                              # %.lr.ph.i
                                        #   Parent Loop BB0_368 Depth=1
                                        #     Parent Loop BB0_409 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $a0, $s7
	bstrpick.d	$a2, $a2, 31, 0
	ldx.b	$a2, $s8, $a2
	addi.w	$a1, $a1, -1
	bstrpick.d	$a3, $s7, 31, 0
	stx.b	$a2, $s8, $a3
	addi.w	$s7, $s7, 1
	bnez	$a1, .LBB0_504
# %bb.505:                              #   in Loop: Header=BB0_409 Depth=2
	move	$a0, $s5
	beqz	$t0, .LBB0_408
	b	.LBB0_590
.LBB0_506:                              # %vector.scevcheck572
                                        #   in Loop: Header=BB0_409 Depth=2
	nor	$a5, $s7, $zero
	addi.w	$a5, $a5, 0
	bltu	$a5, $a1, .LBB0_502
# %bb.507:                              # %vector.scevcheck572
                                        #   in Loop: Header=BB0_409 Depth=2
	nor	$a4, $a4, $zero
	bltu	$a4, $a1, .LBB0_502
# %bb.508:                              # %vector.scevcheck572
                                        #   in Loop: Header=BB0_409 Depth=2
	sub.d	$a1, $a2, $a3
	ori	$a2, $zero, 32
	bltu	$a1, $a2, .LBB0_502
# %bb.509:                              # %vector.ph577
                                        #   in Loop: Header=BB0_409 Depth=2
	move	$a3, $a0
	bstrins.d	$a3, $zero, 4, 0
	andi	$a1, $a0, 31
	add.w	$a2, $s7, $a3
	sub.w	$a4, $zero, $t3
	move	$a5, $a3
.LBB0_510:                              # %vector.body580
                                        #   Parent Loop BB0_368 Depth=1
                                        #     Parent Loop BB0_409 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a6, $a4, $s7
	bstrpick.d	$a6, $a6, 31, 0
	add.d	$a7, $s8, $a6
	vldx	$vr0, $s8, $a6
	vld	$vr1, $a7, 16
	bstrpick.d	$a6, $s7, 31, 0
	add.d	$a7, $s8, $a6
	vstx	$vr0, $s8, $a6
	vst	$vr1, $a7, 16
	addi.w	$a5, $a5, -32
	addi.w	$s7, $s7, 32
	bnez	$a5, .LBB0_510
# %bb.511:                              # %middle.block586
                                        #   in Loop: Header=BB0_409 Depth=2
	bne	$a0, $a3, .LBB0_503
# %bb.512:                              #   in Loop: Header=BB0_409 Depth=2
	move	$a0, $s5
	move	$s7, $a2
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	beqz	$t0, .LBB0_408
	b	.LBB0_590
.LBB0_513:                              # %.preheader466.preheader.i
                                        #   in Loop: Header=BB0_409 Depth=2
	beqz	$s5, .LBB0_516
# %bb.514:                              # %.preheader466.1.i
                                        #   in Loop: Header=BB0_409 Depth=2
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB0_518
# %bb.515:                              #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s6, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s6, $a0
	slli.d	$a2, $s4, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
	b	.LBB0_517
.LBB0_516:                              # %.preheader466.1.thread.i
                                        #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a0, $a4, 1
	bstrpick.d	$a1, $a4, 31, 0
	ldx.bu	$a1, $s6, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s6, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $s4
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
.LBB0_517:                              # %.preheader466.2.thread.i
                                        #   in Loop: Header=BB0_409 Depth=2
	addi.w	$a4, $a4, 2
	slli.d	$a0, $a0, 1
	b	.LBB0_520
.LBB0_518:                              # %.preheader466.2.i
                                        #   in Loop: Header=BB0_409 Depth=2
	addi.w	$a1, $a1, -3
	slli.d	$a0, $s4, 2
	bnez	$a1, .LBB0_520
# %bb.519:                              #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a1, $a4, 1
	bstrpick.d	$a2, $a4, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a4, $a4, 2
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_520:                              # %getbits.exit211.i
                                        #   in Loop: Header=BB0_409 Depth=2
	slli.d	$s4, $a0, 1
	addi.w	$s5, $a1, -1
	bstrpick.d	$a0, $a0, 31, 15
	ori	$a3, $zero, 3
	ori	$a2, $zero, 7
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	bne	$a0, $a2, .LBB0_498
# %bb.521:                              #   in Loop: Header=BB0_409 Depth=2
	st.d	$t3, $sp, 16                    # 8-byte Folded Spill
	move	$a5, $t0
	bstrpick.d	$a0, $s4, 15, 1
	slli.d	$s4, $a0, 1
	ori	$a0, $zero, 5
	bltu	$a0, $a1, .LBB0_523
# %bb.522:                              #   in Loop: Header=BB0_409 Depth=2
	sub.w	$a0, $s3, $a4
	ori	$a2, $zero, 10
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ori	$a2, $zero, 2
	bltu	$a0, $a2, .LBB0_487
.LBB0_523:                              # %.preheader465.preheader.i
                                        #   in Loop: Header=BB0_409 Depth=2
	move	$a6, $s2
	beqz	$s5, .LBB0_526
# %bb.524:                              # %.preheader465.1.i
                                        #   in Loop: Header=BB0_409 Depth=2
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB0_529
# %bb.525:                              #   in Loop: Header=BB0_409 Depth=2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s6, $a0
	slli.d	$a2, $s4, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
	b	.LBB0_527
.LBB0_526:                              # %.preheader465.1.thread.i
                                        #   in Loop: Header=BB0_409 Depth=2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s6, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $s4
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
.LBB0_527:                              # %.preheader465.3.i.thread
                                        #   in Loop: Header=BB0_409 Depth=2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_535
.LBB0_528:                              #   in Loop: Header=BB0_409 Depth=2
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a3, 1
	bstrpick.d	$a2, $a3, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a3, $a3, 2
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
	b	.LBB0_535
.LBB0_529:                              # %.preheader465.2.i
                                        #   in Loop: Header=BB0_409 Depth=2
	ori	$a0, $zero, 4
	beq	$a1, $a0, .LBB0_532
# %bb.530:                              # %.preheader465.2.i
                                        #   in Loop: Header=BB0_409 Depth=2
	slli.d	$a0, $s4, 2
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_534
# %bb.531:                              # %.preheader465.3.thread.i
                                        #   in Loop: Header=BB0_409 Depth=2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_533
.LBB0_532:                              #   in Loop: Header=BB0_409 Depth=2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s6, $a0
	slli.d	$a2, $s4, 3
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_533:                              # %.preheader465.4.thread.i
                                        #   in Loop: Header=BB0_409 Depth=2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	b	.LBB0_535
.LBB0_534:                              #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a1, $a1, -3
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	beqz	$a1, .LBB0_528
.LBB0_535:                              # %getbits.exit216.i
                                        #   in Loop: Header=BB0_409 Depth=2
	slli.d	$s4, $a0, 1
	addi.w	$s5, $a1, -1
	bstrpick.d	$a0, $a0, 31, 15
	ori	$a2, $zero, 31
	bne	$a0, $a2, .LBB0_539
# %bb.536:                              #   in Loop: Header=BB0_409 Depth=2
	bstrpick.d	$a0, $s4, 15, 1
	slli.d	$s4, $a0, 1
	ori	$a0, $zero, 8
	bltu	$a0, $a1, .LBB0_540
# %bb.537:                              #   in Loop: Header=BB0_409 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	sub.w	$a0, $s3, $a0
	ori	$a2, $zero, 41
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ori	$a2, $zero, 2
	bgeu	$a0, $a2, .LBB0_540
.LBB0_538:                              #   in Loop: Header=BB0_409 Depth=2
	move	$s2, $a6
	b	.LBB0_487
.LBB0_539:                              #   in Loop: Header=BB0_409 Depth=2
	move	$t0, $a5
	move	$s2, $a6
	ld.d	$t3, $sp, 16                    # 8-byte Folded Reload
	ori	$a3, $zero, 10
	b	.LBB0_498
.LBB0_540:                              # %.preheader464.preheader.i
                                        #   in Loop: Header=BB0_409 Depth=2
	beqz	$s5, .LBB0_543
# %bb.541:                              # %.preheader464.1.i
                                        #   in Loop: Header=BB0_409 Depth=2
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB0_547
# %bb.542:                              #   in Loop: Header=BB0_409 Depth=2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s6, $a0
	slli.d	$a2, $s4, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
	b	.LBB0_544
.LBB0_543:                              # %.preheader464.1.thread.i
                                        #   in Loop: Header=BB0_409 Depth=2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s6, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $s4
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
.LBB0_544:                              # %.preheader464.3.i.thread
                                        #   in Loop: Header=BB0_409 Depth=2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_556
.LBB0_545:                              # %.preheader464.4.i
                                        #   in Loop: Header=BB0_409 Depth=2
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_550
# %bb.546:                              # %.preheader464.5.thread.i
                                        #   in Loop: Header=BB0_409 Depth=2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_557
.LBB0_547:                              # %.preheader464.2.i
                                        #   in Loop: Header=BB0_409 Depth=2
	ori	$a0, $zero, 4
	beq	$a1, $a0, .LBB0_551
# %bb.548:                              # %.preheader464.2.i
                                        #   in Loop: Header=BB0_409 Depth=2
	slli.d	$a0, $s4, 2
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_555
# %bb.549:                              # %.preheader464.3.thread.i
                                        #   in Loop: Header=BB0_409 Depth=2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_552
.LBB0_550:                              #   in Loop: Header=BB0_409 Depth=2
	addi.d	$a1, $a1, -2
	b	.LBB0_553
.LBB0_551:                              #   in Loop: Header=BB0_409 Depth=2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s6, $a0
	slli.d	$a2, $s4, 3
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_552:                              # %.preheader464.5.i.thread
                                        #   in Loop: Header=BB0_409 Depth=2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
.LBB0_553:                              # %.preheader464.6.i
                                        #   in Loop: Header=BB0_409 Depth=2
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_558
# %bb.554:                              # %.preheader464.7.thread.i
                                        #   in Loop: Header=BB0_409 Depth=2
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a3, 1
	bstrpick.d	$a2, $a3, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a3, $a3, 2
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 15
	b	.LBB0_560
.LBB0_555:                              #   in Loop: Header=BB0_409 Depth=2
	addi.w	$a1, $a1, -3
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_545
.LBB0_556:                              #   in Loop: Header=BB0_409 Depth=2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_557:                              # %.preheader464.6.thread.i
                                        #   in Loop: Header=BB0_409 Depth=2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
.LBB0_558:                              # %.preheader464.7.i
                                        #   in Loop: Header=BB0_409 Depth=2
	addi.w	$a1, $a1, -1
	slli.d	$a0, $a0, 1
	bnez	$a1, .LBB0_560
# %bb.559:                              #   in Loop: Header=BB0_409 Depth=2
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a3, 1
	bstrpick.d	$a2, $a3, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a3, $a3, 2
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_560:                              # %getbits.exit221.i
                                        #   in Loop: Header=BB0_409 Depth=2
	slli.d	$s4, $a0, 1
	addi.w	$s5, $a1, -1
	bstrpick.d	$a0, $a0, 31, 15
	ori	$a2, $zero, 255
	bne	$a0, $a2, .LBB0_587
# %bb.561:                              # %.preheader462.i
                                        #   in Loop: Header=BB0_409 Depth=2
	bstrpick.d	$a0, $s4, 15, 1
	slli.d	$s4, $a0, 1
	ori	$a0, $zero, 8
	bltu	$a0, $a1, .LBB0_563
# %bb.562:                              # %.preheader462.i
                                        #   in Loop: Header=BB0_409 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	sub.w	$a0, $s3, $a0
	ori	$a1, $zero, 296
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ori	$a1, $zero, 2
	bltu	$a0, $a1, .LBB0_538
.LBB0_563:                              # %.preheader.i.preheader
                                        #   in Loop: Header=BB0_409 Depth=2
	ori	$a0, $zero, 296
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
.LBB0_564:                              # %.preheader.i
                                        #   Parent Loop BB0_368 Depth=1
                                        #     Parent Loop BB0_409 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ori	$a0, $zero, 1
	beq	$s5, $a0, .LBB0_567
# %bb.565:                              # %.preheader.i
                                        #   in Loop: Header=BB0_564 Depth=3
	bnez	$s5, .LBB0_571
# %bb.566:                              # %.thread.i
                                        #   in Loop: Header=BB0_564 Depth=3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s6, $a0
	slli.d	$a1, $a1, 8
	or	$a0, $a1, $a0
	or	$a0, $a0, $s4
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_568
.LBB0_567:                              #   in Loop: Header=BB0_564 Depth=3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s6, $a0
	slli.d	$a2, $s4, 1
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_568:                              # %.thread
                                        #   in Loop: Header=BB0_564 Depth=3
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB0_580
.LBB0_569:                              #   in Loop: Header=BB0_564 Depth=3
	slli.d	$a0, $a0, 2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB0_574
# %bb.570:                              # %.thread705.i
                                        #   in Loop: Header=BB0_564 Depth=3
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_581
.LBB0_571:                              #   in Loop: Header=BB0_564 Depth=3
	ori	$a0, $zero, 3
	beq	$s5, $a0, .LBB0_575
# %bb.572:                              #   in Loop: Header=BB0_564 Depth=3
	slli.d	$a0, $s4, 2
	ori	$a1, $zero, 2
	bne	$s5, $a1, .LBB0_579
# %bb.573:                              # %.thread695.i
                                        #   in Loop: Header=BB0_564 Depth=3
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	slli.d	$a2, $a2, 8
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 14
	b	.LBB0_576
.LBB0_574:                              #   in Loop: Header=BB0_564 Depth=3
	addi.d	$a1, $a1, -2
	b	.LBB0_577
.LBB0_575:                              #   in Loop: Header=BB0_564 Depth=3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a0, $a1, 1
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	bstrpick.d	$a0, $a0, 31, 0
	ldx.bu	$a0, $s6, $a0
	slli.d	$a2, $s4, 3
	slli.d	$a1, $a1, 8
	or	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ori	$a1, $zero, 15
.LBB0_576:                              # %.thread111
                                        #   in Loop: Header=BB0_564 Depth=3
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
.LBB0_577:                              #   in Loop: Header=BB0_564 Depth=3
	addi.w	$a1, $a1, -2
	slli.d	$a0, $a0, 2
	bnez	$a1, .LBB0_582
# %bb.578:                              # %.thread715.i
                                        #   in Loop: Header=BB0_564 Depth=3
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a3, 1
	bstrpick.d	$a2, $a3, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a3, $a3, 2
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	slli.d	$a0, $a0, 1
	ori	$a1, $zero, 15
	b	.LBB0_584
.LBB0_579:                              #   in Loop: Header=BB0_564 Depth=3
	addi.w	$a1, $s5, -2
	ori	$a2, $zero, 3
	bne	$a1, $a2, .LBB0_569
.LBB0_580:                              #   in Loop: Header=BB0_564 Depth=3
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	slli.d	$a0, $a0, 3
	slli.d	$a2, $a2, 8
	or	$a0, $a0, $a1
	or	$a0, $a0, $a2
	ori	$a1, $zero, 15
.LBB0_581:                              # %.thread711.i
                                        #   in Loop: Header=BB0_564 Depth=3
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 2
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 1
.LBB0_582:                              #   in Loop: Header=BB0_564 Depth=3
	addi.w	$a1, $a1, -1
	slli.d	$a0, $a0, 1
	bnez	$a1, .LBB0_584
# %bb.583:                              #   in Loop: Header=BB0_564 Depth=3
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a3, 1
	bstrpick.d	$a2, $a3, 31, 0
	ldx.bu	$a2, $s6, $a2
	bstrpick.d	$a1, $a1, 31, 0
	ldx.bu	$a1, $s6, $a1
	slli.d	$a2, $a2, 8
	addi.w	$a3, $a3, 2
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	or	$a1, $a2, $a1
	or	$a0, $a1, $a0
	ori	$a1, $zero, 16
.LBB0_584:                              # %getbits.exit226.i
                                        #   in Loop: Header=BB0_564 Depth=3
	slli.d	$s4, $a0, 1
	bstrpick.d	$a0, $a0, 31, 15
	addi.w	$s5, $a1, -1
	ori	$a2, $zero, 255
	bne	$a0, $a2, .LBB0_588
# %bb.585:                              #   in Loop: Header=BB0_564 Depth=3
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 255
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s4, 15, 1
	slli.d	$s4, $a0, 1
	ori	$a0, $zero, 8
	bltu	$a0, $a1, .LBB0_564
# %bb.586:                              #   in Loop: Header=BB0_564 Depth=3
	move	$s2, $a6
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	sub.w	$a0, $s3, $a0
	ori	$a1, $zero, 1
	bltu	$a1, $a0, .LBB0_564
	b	.LBB0_487
.LBB0_587:                              #   in Loop: Header=BB0_409 Depth=2
	move	$t0, $a5
	move	$s2, $a6
	ld.d	$t3, $sp, 16                    # 8-byte Folded Reload
	ori	$a3, $zero, 41
	b	.LBB0_498
.LBB0_588:                              #   in Loop: Header=BB0_409 Depth=2
	move	$t0, $a5
	move	$s2, $a6
	b	.LBB0_488
.LBB0_589:                              # %.thread781.i
                                        #   in Loop: Header=BB0_368 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	ori	$s7, $zero, 8
	b	.LBB0_609
.LBB0_590:                              # %._crit_edge.i
                                        #   in Loop: Header=BB0_368 Depth=1
	move	$a0, $s6
	move	$s3, $t0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	bnez	$s3, .LBB0_593
# %bb.591:                              #   in Loop: Header=BB0_368 Depth=1
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	ori	$s7, $zero, 8
	b	.LBB0_595
.LBB0_592:                              # %.thread440.i
                                        #   in Loop: Header=BB0_368 Depth=1
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_593:                              #   in Loop: Header=BB0_368 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
.LBB0_594:                              # %.sink.split.i
                                        #   in Loop: Header=BB0_368 Depth=1
	ori	$s7, $zero, 8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_595:                              #   in Loop: Header=BB0_368 Depth=1
	ld.d	$a6, $sp, 48                    # 8-byte Folded Reload
	addi.w	$a2, $a6, 0
	ori	$a0, $zero, 2
	bltu	$a2, $a0, .LBB0_609
# %bb.596:                              #   in Loop: Header=BB0_368 Depth=1
	ori	$a0, $zero, 5
	bltu	$a2, $a0, .LBB0_601
# %bb.597:                              #   in Loop: Header=BB0_368 Depth=1
	ld.bu	$a0, $s8, 0
	ori	$a1, $zero, 255
	bne	$a0, $a1, .LBB0_601
# %bb.598:                              #   in Loop: Header=BB0_368 Depth=1
	ld.bu	$a0, $s8, 1
	ori	$a1, $zero, 254
	bne	$a0, $a1, .LBB0_601
# %bb.599:                              #   in Loop: Header=BB0_368 Depth=1
	ld.bu	$a0, $s8, 2
	beqz	$a0, .LBB0_601
# %bb.600:                              # %.thread.i.i
                                        #   in Loop: Header=BB0_368 Depth=1
	addi.d	$a0, $s8, 2
	addi.w	$a6, $a6, -2
	b	.LBB0_606
.LBB0_601:                              # %.lr.ph.preheader.i.i
                                        #   in Loop: Header=BB0_368 Depth=1
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
                                        #   Parent Loop BB0_368 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$a3, $s8, $a1
	beqz	$a3, .LBB0_602
# %bb.604:                              #   in Loop: Header=BB0_603 Depth=2
	add.d	$a3, $s8, $a1
	ld.bu	$a3, $a3, 1
	sltui	$a3, $a3, 1
	addi.d	$a1, $a1, 2
	add.d	$a0, $a3, $a0
	bltu	$a1, $a2, .LBB0_603
.LBB0_605:                              # %._crit_edge.loopexit.i.i
                                        #   in Loop: Header=BB0_368 Depth=1
	slli.w	$a1, $a0, 2
	move	$a0, $s8
	bltu	$a1, $a2, .LBB0_609
.LBB0_606:                              # %.lr.ph49.preheader.i.i
                                        #   in Loop: Header=BB0_368 Depth=1
	move	$a1, $zero
	bstrpick.d	$a2, $a6, 31, 0
	move	$a3, $s8
.LBB0_607:                              # %.lr.ph49.i.i
                                        #   Parent Loop BB0_368 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.b	$a4, $a0, $a1
	addi.d	$a5, $a3, 1
	addi.d	$a1, $a1, 2
	st.b	$a4, $a3, 0
	move	$a3, $a5
	bltu	$a1, $a2, .LBB0_607
# %bb.608:                              # %u2a.exit.loopexit.i
                                        #   in Loop: Header=BB0_368 Depth=1
	bstrpick.d	$a6, $a6, 31, 1
	st.d	$a6, $sp, 48                    # 8-byte Folded Spill
.LBB0_609:                              # %u2a.exit.i
                                        #   in Loop: Header=BB0_368 Depth=1
	addi.w	$s5, $s5, 1
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a2, $a0, %pc_lo12(.L.str.19)
	addi.d	$a0, $sp, 208
	ori	$a1, $zero, 1023
	move	$a3, $fp
	move	$s4, $s5
	move	$a4, $s5
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	st.b	$zero, $sp, 1231
	addi.d	$a0, $sp, 208
	ori	$a1, $zero, 578
	ori	$a2, $zero, 448
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB0_631
# %bb.610:                              #   in Loop: Header=BB0_368 Depth=1
	move	$s3, $a0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	addi.w	$s5, $a0, 0
	move	$a0, $s3
	move	$a1, $s8
	move	$a2, $s5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB0_632
# %bb.611:                              #   in Loop: Header=BB0_368 Depth=1
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s6, 0
	beqz	$a0, .LBB0_613
# %bb.612:                              #   in Loop: Header=BB0_368 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	addi.d	$a1, $sp, 208
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_614
.LBB0_613:                              #   in Loop: Header=BB0_368 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_614:                              #   in Loop: Header=BB0_368 Depth=1
	addi.d	$s8, $sp, 1232
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
	move	$s5, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s6, 0
	ori	$a1, $zero, 1
	beq	$s5, $a1, .LBB0_634
# %bb.615:                              #   in Loop: Header=BB0_368 Depth=1
	move	$s5, $s4
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_368
# %bb.616:                              #   in Loop: Header=BB0_368 Depth=1
	addi.d	$a0, $sp, 208
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	b	.LBB0_368
.LBB0_617:
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	b	.LBB0_361
.LBB0_618:
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	b	.LBB0_361
.LBB0_619:
	pcalau12i	$a0, %pc_hi20(.L.str.69)
	addi.d	$a0, $a0, %pc_lo12(.L.str.69)
	b	.LBB0_622
.LBB0_620:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	b	.LBB0_361
.LBB0_621:
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
.LBB0_622:
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$s7, $zero, -102
	b	.LBB0_363
.LBB0_623:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s7, $zero
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	b	.LBB0_363
.LBB0_624:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_362
.LBB0_625:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	addi.d	$a1, $sp, 208
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_627
.LBB0_626:
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
.LBB0_627:                              # %ea06.exit
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$s7, $zero, -123
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	b	.LBB0_363
.LBB0_628:
	ori	$s7, $zero, 1
	bnez	$a0, .LBB0_363
# %bb.629:
	addi.d	$a0, $sp, 208
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	b	.LBB0_363
.LBB0_630:
	move	$a0, $s6
	b	.LBB0_637
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
	move	$a1, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
.LBB0_633:                              # %ea05.exit
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$s7, $zero, -123
	b	.LBB0_363
.LBB0_634:
	ori	$s7, $zero, 1
	beqz	$a0, .LBB0_638
.LBB0_635:
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	b	.LBB0_363
.LBB0_636:
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
.LBB0_637:                              # %ea06.exit
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	b	.LBB0_363
.LBB0_638:
	addi.d	$a0, $sp, 208
	pcaddu18i	$ra, %call36(unlink)
	jirl	$ra, $ra, 0
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	b	.LBB0_363
.Lfunc_end0:
	.size	cli_scanautoit, .Lfunc_end0-cli_scanautoit
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI0_0:
	.word	.LBB0_326-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_322-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_318-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_287-.LJTI0_0
	.word	.LBB0_287-.LJTI0_0
	.word	.LBB0_287-.LJTI0_0
	.word	.LBB0_287-.LJTI0_0
	.word	.LBB0_287-.LJTI0_0
	.word	.LBB0_287-.LJTI0_0
	.word	.LBB0_287-.LJTI0_0
	.word	.LBB0_287-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
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
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_356-.LJTI0_0
	.word	.LBB0_329-.LJTI0_0
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
	vrepli.b	$vr3, -1
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
	vand.v	$vr7, $vr5, $vr2
	vld	$vr8, $a2, 1588
	vseqi.w	$vr7, $vr7, 0
	vxor.v	$vr7, $vr7, $vr3
	vand.v	$vr7, $vr7, $vr4
	vxor.v	$vr7, $vr7, $vr8
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
	vand.v	$vr7, $vr6, $vr2
	vldx	$vr8, $a2, $a3
	vseqi.w	$vr7, $vr7, 0
	vxor.v	$vr7, $vr7, $vr3
	vand.v	$vr7, $vr7, $vr4
	vxor.v	$vr7, $vr7, $vr8
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
