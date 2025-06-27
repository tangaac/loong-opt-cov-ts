	.file	"libclamav_aspack.c"
	.text
	.globl	unaspack212                     # -- Begin function unaspack212
	.p2align	5
	.type	unaspack212,@function
unaspack212:                            # @unaspack212
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
	addi.d	$sp, $sp, -176
	move	$s8, $a6
	move	$s2, $a5
	move	$s5, $a4
	move	$s6, $a3
	move	$s4, $a2
	move	$s3, $a1
	move	$s1, $a0
	lu12i.w	$s0, 1
	ori	$a0, $s0, 2048
	ori	$a1, $zero, 1
	ori	$fp, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_71
# %bb.1:
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s4, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	move	$a1, $zero
	bstrpick.d	$a2, $s5, 31, 0
	add.d	$a2, $s1, $a2
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	addi.d	$s4, $a2, 1404
	st.d	$a0, $sp, 1200
	addi.d	$a2, $a0, 2047
	addi.d	$a3, $a2, 837
	st.d	$a3, $sp, 1208
	ori	$a3, $zero, 721
	st.w	$a3, $sp, 1216
	addi.d	$a3, $a2, 1093
	st.d	$a3, $sp, 1224
	addi.d	$a3, $a2, 1205
	st.d	$a3, $sp, 1232
	ori	$a3, $zero, 28
	st.w	$a3, $sp, 1240
	addi.d	$a3, $a2, 1461
	st.d	$a3, $sp, 1248
	addi.d	$a3, $a2, 1493
	st.d	$a3, $sp, 1256
	ori	$a3, $zero, 8
	st.w	$a3, $sp, 1264
	addi.d	$a3, $a2, 1749
	st.d	$a3, $sp, 1272
	addi.d	$a2, $a2, 1825
	st.d	$a2, $sp, 1280
	ori	$a2, $zero, 19
	st.w	$a2, $sp, 1288
	ori	$a2, $s0, 32
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 1312
	lu12i.w	$a0, 16
	st.w	$a0, $sp, 180
	addi.w	$a0, $s5, 1806
	ori	$a2, $zero, 788
	addi.d	$a3, $sp, 176
	ori	$a4, $zero, 1020
	.p2align	4, , 16
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $a0, 31, 0
	ldx.bu	$a5, $s1, $a5
	stx.w	$a1, $a2, $a3
	sll.w	$a5, $fp, $a5
	add.d	$a1, $a5, $a1
	addi.d	$a2, $a2, 4
	addi.w	$a0, $a0, 1
	bne	$a2, $a4, .LBB0_2
# %bb.3:
	addi.d	$a0, $sp, 184
	ori	$a2, $zero, 777
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 8
	bltu	$s3, $a0, .LBB0_73
# %bb.4:
	bltu	$s4, $s1, .LBB0_73
# %bb.5:                                # %.lr.ph210
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	bstrpick.d	$a0, $s3, 31, 0
	add.d	$s0, $s1, $a0
	addi.d	$a0, $s5, 1750
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$a0, $s1, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 56
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a0, $s5, 328
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1412
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 112                  # 16-byte Folded Spill
	st.d	$s3, $sp, 104                   # 8-byte Folded Spill
.LBB0_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_33 Depth 3
                                        #       Child Loop BB0_37 Depth 3
                                        #       Child Loop BB0_59 Depth 3
                                        #       Child Loop BB0_53 Depth 3
                                        #     Child Loop BB0_66 Depth 2
	move	$a0, $s4
	addi.d	$s4, $s4, 8
	bltu	$s0, $s4, .LBB0_73
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	ld.wu	$a1, $a0, 0
	addi.w	$a2, $a1, 0
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	beqz	$a2, .LBB0_76
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	ld.wu	$s6, $a0, 4
	addi.w	$a0, $s6, -1
	bgeu	$a0, $s3, .LBB0_73
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=1
	add.d	$s7, $s1, $a1
	add.d	$a0, $s7, $s6
	bltu	$s0, $a0, .LBB0_73
# %bb.10:                               #   in Loop: Header=BB0_6 Depth=1
	bgeu	$s1, $a0, .LBB0_73
# %bb.11:                               #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a0, $s6, 270
	bstrpick.d	$s2, $a0, 31, 0
	ori	$a1, $zero, 1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_73
# %bb.12:                               #   in Loop: Header=BB0_6 Depth=1
	move	$fp, $a0
	st.d	$a0, $sp, 1296
	add.d	$a0, $a0, $s2
	st.d	$a0, $sp, 1304
	move	$a0, $fp
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.w	$a2, $s6, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 768
	addi.d	$a0, $sp, 1320
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1312
	ori	$a2, $zero, 757
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 32
	st.w	$a0, $sp, 176
	addi.d	$a0, $sp, 176
	pcaddu18i	$ra, %call36(build_decrypt_dictionaries)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_72
# %bb.13:                               #   in Loop: Header=BB0_6 Depth=1
	st.d	$s8, $sp, 32                    # 8-byte Folded Spill
	move	$s2, $zero
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
	vld	$vr0, $sp, 112                  # 16-byte Folded Reload
	ori	$a0, $zero, 2104
	add.d	$a0, $sp, $a0
	vst	$vr0, $a0, 0
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB0_14:                               # %.outer.split.i.i
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_24 Depth 3
                                        #       Child Loop BB0_33 Depth 3
                                        #       Child Loop BB0_37 Depth 3
                                        #       Child Loop BB0_59 Depth 3
                                        #       Child Loop BB0_53 Depth 3
	addi.d	$a0, $sp, 176
	ori	$a1, $zero, 2100
	add.d	$a2, $sp, $a1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(getdec)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2100
	add.d	$a1, $sp, $a1
	ld.w	$a1, $a1, 0
	bnez	$a1, .LBB0_72
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=2
	move	$s3, $a0
	ori	$a0, $zero, 255
	bgeu	$a0, $s3, .LBB0_18
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=2
	ori	$a0, $zero, 720
	bltu	$s3, $a0, .LBB0_19
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=2
	addi.d	$a0, $sp, 176
	pcaddu18i	$ra, %call36(build_decrypt_dictionaries)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_14
	b	.LBB0_72
.LBB0_18:                               #   in Loop: Header=BB0_14 Depth=2
	bstrpick.d	$a0, $s2, 31, 0
	stx.b	$s3, $s7, $a0
	addi.w	$a1, $s2, 1
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	b	.LBB0_54
.LBB0_19:                               #   in Loop: Header=BB0_14 Depth=2
	andi	$a0, $s3, 7
	addi.d	$s8, $a0, 2
	ori	$a1, $zero, 7
	bne	$a0, $a1, .LBB0_26
# %bb.20:                               #   in Loop: Header=BB0_14 Depth=2
	addi.d	$a0, $sp, 176
	ori	$a1, $zero, 1
	ori	$a2, $zero, 2100
	add.d	$a2, $sp, $a2
	pcaddu18i	$ra, %call36(getdec)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2100
	add.d	$a1, $sp, $a1
	ld.w	$a1, $a1, 0
	bnez	$a1, .LBB0_72
# %bb.21:                               #   in Loop: Header=BB0_14 Depth=2
	ori	$a1, $zero, 85
	bltu	$a1, $a0, .LBB0_72
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	add.d	$a2, $a1, $a0
	ld.w	$a0, $sp, 176
	ld.bu	$a1, $a2, 28
	ori	$a3, $zero, 7
	bgeu	$a3, $a0, .LBB0_27
# %bb.23:                               # %.lr.ph.i.i.i
                                        #   in Loop: Header=BB0_14 Depth=2
	ld.d	$a4, $sp, 1304
	ld.d	$a5, $sp, 1296
	ld.w	$a3, $sp, 180
	.p2align	4, , 16
.LBB0_24:                               #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bgeu	$a5, $a4, .LBB0_72
# %bb.25:                               #   in Loop: Header=BB0_24 Depth=3
	ld.bu	$a6, $a5, 0
	slli.d	$a3, $a3, 8
	or	$a3, $a3, $a6
	st.w	$a3, $sp, 180
	addi.d	$a5, $a5, 1
	st.d	$a5, $sp, 1296
	addi.w	$a0, $a0, -8
	st.w	$a0, $sp, 176
	ori	$a6, $zero, 7
	bltu	$a6, $a0, .LBB0_24
	b	.LBB0_28
.LBB0_26:                               # %._crit_edge.i
                                        #   in Loop: Header=BB0_14 Depth=2
	ld.w	$s0, $sp, 176
	b	.LBB0_29
.LBB0_27:                               # %.readstream.exit_crit_edge.i.i
                                        #   in Loop: Header=BB0_14 Depth=2
	ld.w	$a3, $sp, 180
.LBB0_28:                               # %readstream.exit.i.i
                                        #   in Loop: Header=BB0_14 Depth=2
	ld.bu	$a2, $a2, 0
	ori	$a4, $zero, 8
	sub.d	$a4, $a4, $a0
	srl.w	$a3, $a3, $a4
	bstrpick.d	$a3, $a3, 23, 0
	ori	$a4, $zero, 24
	sub.d	$a4, $a4, $a1
	srl.w	$a3, $a3, $a4
	add.d	$a2, $s8, $a2
	add.w	$s8, $a2, $a3
	add.w	$s0, $a0, $a1
	st.w	$s0, $sp, 176
.LBB0_29:                               #   in Loop: Header=BB0_14 Depth=2
	addi.d	$a0, $s3, -256
	bstrpick.d	$a0, $a0, 31, 3
	slli.d	$a1, $a0, 2
	addi.d	$a2, $sp, 964
	ldx.w	$a4, $a2, $a1
	ori	$a1, $zero, 2088
	add.d	$a1, $sp, $a1
	ld.w	$a1, $a1, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldx.bu	$a5, $a2, $a0
	beqz	$a1, .LBB0_35
# %bb.30:                               #   in Loop: Header=BB0_14 Depth=2
	ori	$a0, $zero, 2
	bgeu	$a0, $a5, .LBB0_35
# %bb.31:                               #   in Loop: Header=BB0_14 Depth=2
	ori	$a0, $zero, 7
	bgeu	$a0, $s0, .LBB0_43
# %bb.32:                               # %.lr.ph.i107.i.i
                                        #   in Loop: Header=BB0_14 Depth=2
	ld.d	$a0, $sp, 1304
	ld.d	$a1, $sp, 1296
	ld.w	$s3, $sp, 180
	.p2align	4, , 16
.LBB0_33:                               #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bgeu	$a1, $a0, .LBB0_72
# %bb.34:                               #   in Loop: Header=BB0_33 Depth=3
	ld.bu	$a2, $a1, 0
	slli.d	$a3, $s3, 8
	or	$s3, $a3, $a2
	st.w	$s3, $sp, 180
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 1296
	addi.w	$s0, $s0, -8
	st.w	$s0, $sp, 176
	ori	$a2, $zero, 7
	bltu	$a2, $s0, .LBB0_33
	b	.LBB0_44
.LBB0_35:                               #   in Loop: Header=BB0_14 Depth=2
	ori	$a0, $zero, 7
	bgeu	$a0, $s0, .LBB0_39
# %bb.36:                               # %.lr.ph.i101.i.i
                                        #   in Loop: Header=BB0_14 Depth=2
	ld.d	$a1, $sp, 1304
	ld.d	$a2, $sp, 1296
	ld.w	$a0, $sp, 180
	.p2align	4, , 16
.LBB0_37:                               #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bgeu	$a2, $a1, .LBB0_72
# %bb.38:                               #   in Loop: Header=BB0_37 Depth=3
	ld.bu	$a3, $a2, 0
	slli.d	$a0, $a0, 8
	or	$a0, $a0, $a3
	st.w	$a0, $sp, 180
	addi.d	$a2, $a2, 1
	st.d	$a2, $sp, 1296
	addi.w	$s0, $s0, -8
	st.w	$s0, $sp, 176
	ori	$a3, $zero, 7
	bltu	$a3, $s0, .LBB0_37
	b	.LBB0_40
.LBB0_39:                               # %..loopexit121_crit_edge.i.i
                                        #   in Loop: Header=BB0_14 Depth=2
	ld.w	$a0, $sp, 180
.LBB0_40:                               # %.loopexit121.i.i
                                        #   in Loop: Header=BB0_14 Depth=2
	ori	$a1, $zero, 8
	sub.d	$a1, $a1, $s0
	srl.w	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 23, 0
	ori	$a1, $zero, 24
	sub.d	$a1, $a1, $a5
	srl.w	$a0, $a0, $a1
	add.w	$a0, $a0, $a4
	add.d	$a1, $s0, $a5
	st.w	$a1, $sp, 176
	ori	$a1, $zero, 2
	ori	$a2, $zero, 2104
	add.d	$a2, $sp, $a2
	bltu	$a1, $a0, .LBB0_46
.LBB0_41:                               #   in Loop: Header=BB0_14 Depth=2
	slli.d	$a1, $a0, 2
	ldx.w	$a1, $a1, $a2
	beqz	$a0, .LBB0_48
# %bb.42:                               #   in Loop: Header=BB0_14 Depth=2
	alsl.d	$a0, $a0, $a2, 2
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	st.w	$a2, $a0, 0
	b	.LBB0_47
.LBB0_43:                               # %..loopexit123_crit_edge.i.i
                                        #   in Loop: Header=BB0_14 Depth=2
	ld.w	$s3, $sp, 180
.LBB0_44:                               # %.loopexit123.i.i
                                        #   in Loop: Header=BB0_14 Depth=2
	add.d	$a0, $a5, $s0
	addi.d	$a0, $a0, -3
	st.w	$a0, $sp, 176
	addi.d	$a0, $sp, 176
	ori	$a1, $zero, 2
	ori	$a2, $zero, 2100
	add.d	$a2, $sp, $a2
	st.d	$a4, $sp, 24                    # 8-byte Folded Spill
	st.d	$a5, $sp, 16                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(getdec)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ori	$a1, $zero, 2100
	add.d	$a1, $sp, $a1
	ld.w	$a1, $a1, 0
	bnez	$a1, .LBB0_72
# %bb.45:                               #   in Loop: Header=BB0_14 Depth=2
	ori	$a1, $zero, 8
	sub.d	$a1, $a1, $s0
	srl.w	$a1, $s3, $a1
	bstrpick.d	$a1, $a1, 23, 0
	ori	$a2, $zero, 27
	sub.d	$a2, $a2, $a4
	srl.w	$a1, $a1, $a2
	add.d	$a0, $a0, $a3
	alsl.w	$a0, $a1, $a0, 3
	ori	$a1, $zero, 2
	ori	$a2, $zero, 2104
	add.d	$a2, $sp, $a2
	bgeu	$a1, $a0, .LBB0_41
.LBB0_46:                               #   in Loop: Header=BB0_14 Depth=2
	ori	$a1, $zero, 2108
	add.d	$a1, $sp, $a1
	ld.w	$a1, $a1, 0
	ori	$a2, $zero, 2112
	add.d	$a2, $sp, $a2
	st.w	$a1, $a2, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ori	$a2, $zero, 2108
	add.d	$a2, $sp, $a2
	st.w	$a1, $a2, 0
	addi.w	$a1, $a0, -3
.LBB0_47:                               # %.sink.split.i.i
                                        #   in Loop: Header=BB0_14 Depth=2
	ori	$a0, $zero, 2104
	add.d	$a0, $sp, $a0
	st.w	$a1, $a0, 0
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
.LBB0_48:                               #   in Loop: Header=BB0_14 Depth=2
	bgeu	$a1, $s2, .LBB0_72
# %bb.49:                               #   in Loop: Header=BB0_14 Depth=2
	sub.w	$a0, $s6, $s2
	bltu	$a0, $s8, .LBB0_72
# %bb.50:                               # %.preheader.i.i.preheader
                                        #   in Loop: Header=BB0_14 Depth=2
	nor	$a0, $a1, $zero
	ori	$a2, $zero, 32
	bgeu	$s8, $a2, .LBB0_55
.LBB0_51:                               #   in Loop: Header=BB0_14 Depth=2
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
.LBB0_52:                               # %.preheader.i.i.preheader294
                                        #   in Loop: Header=BB0_14 Depth=2
	move	$a1, $s2
	.p2align	4, , 16
.LBB0_53:                               # %.preheader.i.i
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $a0, $a1
	bstrpick.d	$a2, $a2, 31, 0
	ldx.b	$a2, $s7, $a2
	addi.w	$s8, $s8, -1
	bstrpick.d	$a3, $a1, 31, 0
	stx.b	$a2, $s7, $a3
	addi.w	$a1, $a1, 1
	bnez	$s8, .LBB0_53
.LBB0_54:                               # %.outer.backedge.i.i
                                        #   in Loop: Header=BB0_14 Depth=2
	move	$s2, $a1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB0_14
	b	.LBB0_62
.LBB0_55:                               # %vector.scevcheck
                                        #   in Loop: Header=BB0_14 Depth=2
	addi.w	$a2, $s8, -1
	nor	$a3, $s2, $zero
	addi.w	$a3, $a3, 0
	bltu	$a3, $a2, .LBB0_51
# %bb.56:                               # %vector.scevcheck
                                        #   in Loop: Header=BB0_14 Depth=2
	sub.d	$a1, $a1, $s2
	addi.w	$a3, $a1, 0
	bltu	$a3, $a2, .LBB0_51
# %bb.57:                               # %vector.memcheck
                                        #   in Loop: Header=BB0_14 Depth=2
	bstrpick.d	$a2, $s2, 31, 0
	nor	$a1, $a1, $zero
	bstrpick.d	$a1, $a1, 31, 0
	sub.d	$a1, $a2, $a1
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ori	$a2, $zero, 32
	bltu	$a1, $a2, .LBB0_52
# %bb.58:                               # %vector.ph
                                        #   in Loop: Header=BB0_14 Depth=2
	move	$a2, $s8
	bstrins.d	$a2, $zero, 4, 0
	add.w	$a1, $s2, $a2
	andi	$a3, $s8, 31
	move	$a4, $a2
	.p2align	4, , 16
.LBB0_59:                               # %vector.body
                                        #   Parent Loop BB0_6 Depth=1
                                        #     Parent Loop BB0_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a5, $a0, $s2
	bstrpick.d	$a5, $a5, 31, 0
	add.d	$a6, $s7, $a5
	vldx	$vr0, $s7, $a5
	vld	$vr1, $a6, 16
	bstrpick.d	$a5, $s2, 31, 0
	add.d	$a6, $s7, $a5
	vstx	$vr0, $s7, $a5
	vst	$vr1, $a6, 16
	addi.w	$a4, $a4, -32
	addi.w	$s2, $s2, 32
	bnez	$a4, .LBB0_59
# %bb.60:                               # %middle.block
                                        #   in Loop: Header=BB0_14 Depth=2
	beq	$s8, $a2, .LBB0_54
# %bb.61:                               #   in Loop: Header=BB0_14 Depth=2
	move	$s2, $a1
	move	$s8, $a3
	b	.LBB0_52
.LBB0_62:                               #   in Loop: Header=BB0_6 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	bnez	$a5, .LBB0_69
# %bb.63:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s8, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 40                    # 8-byte Folded Reload
	ori	$a0, $zero, 8
	ori	$a7, $zero, 232
	bltu	$s6, $a0, .LBB0_70
# %bb.64:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	move	$a5, $zero
	addi.w	$a0, $s6, -6
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	b	.LBB0_66
.LBB0_65:                               #   in Loop: Header=BB0_66 Depth=2
	addi.w	$a5, $a5, 1
	bgeu	$a5, $a0, .LBB0_70
.LBB0_66:                               # %.lr.ph
                                        #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	add.d	$a2, $a5, $a2
	bstrpick.d	$a2, $a2, 31, 0
	ldx.bu	$a2, $s1, $a2
	andi	$a2, $a2, 254
	bne	$a2, $a7, .LBB0_65
# %bb.67:                               #   in Loop: Header=BB0_66 Depth=2
	add.d	$a2, $a5, $a1
	bstrpick.d	$a2, $a2, 31, 0
	ldx.bu	$a3, $s1, $a2
	ldx.bu	$a4, $s1, $a6
	bne	$a3, $a4, .LBB0_65
# %bb.68:                               #   in Loop: Header=BB0_66 Depth=2
	ldx.wu	$a3, $s1, $a2
	srli.d	$a3, $a3, 8
	sub.d	$a3, $a3, $a5
	stx.w	$a3, $s1, $a2
	addi.d	$a5, $a5, 4
	b	.LBB0_65
.LBB0_69:                               #   in Loop: Header=BB0_6 Depth=1
	ld.d	$s8, $sp, 32                    # 8-byte Folded Reload
.LBB0_70:                               # %.loopexit
                                        #   in Loop: Header=BB0_6 Depth=1
	st.d	$a5, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bgeu	$a0, $s1, .LBB0_6
	b	.LBB0_73
.LBB0_71:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	b	.LBB0_74
.LBB0_72:                               # %decomp_block.exit.thread
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_73:                               # %.critedge173
	ld.d	$a0, $sp, 1200
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
.LBB0_74:
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB0_75:
	addi.d	$sp, $sp, 176
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
.LBB0_76:                               # %.critedge
	ld.d	$a0, $sp, 1200
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	bgeu	$a0, $a2, .LBB0_79
# %bb.77:
	addi.d	$a0, $a2, -2
	slli.d	$a1, $a0, 5
	alsl.d	$a1, $a0, $a1, 2
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ldx.w	$a1, $s0, $a1
	bne	$s5, $a1, .LBB0_80
# %bb.78:
	slli.d	$a1, $a2, 5
	alsl.d	$a1, $a2, $a1, 2
	add.d	$a1, $s0, $a1
	ld.w	$a1, $a1, -24
	sltui	$a1, $a1, 1
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$a2, $a0, $a2
	b	.LBB0_80
.LBB0_79:
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
.LBB0_80:
	bstrpick.d	$s2, $a2, 15, 0
	slli.d	$a0, $s2, 5
	alsl.d	$s3, $s2, $a0, 2
	move	$a0, $s3
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_84
# %bb.81:
	move	$fp, $a0
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB0_90
# %bb.82:                               # %.lr.ph216.preheader
	ori	$a0, $zero, 1
	bne	$s2, $a0, .LBB0_85
# %bb.83:
	move	$a0, $zero
	b	.LBB0_88
.LBB0_84:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	move	$a1, $s1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	b	.LBB0_94
.LBB0_85:                               # %vector.ph284
	bstrpick.d	$a0, $s2, 15, 1
	slli.d	$a0, $a0, 1
	addi.d	$a1, $fp, 36
	move	$a2, $a0
.LBB0_86:                               # %vector.body287
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a3, $a1, -36
	ld.d	$a4, $a1, 0
	st.d	$a3, $a1, -28
	st.d	$a4, $a1, 8
	addi.d	$a2, $a2, -2
	addi.d	$a1, $a1, 72
	bnez	$a2, .LBB0_86
# %bb.87:                               # %middle.block290
	beq	$a0, $s2, .LBB0_90
.LBB0_88:                               # %.lr.ph216.preheader293
	slli.d	$a1, $a0, 5
	alsl.d	$a1, $a0, $a1, 2
	add.d	$a1, $a1, $fp
	addi.d	$a1, $a1, 8
	sub.d	$a0, $s2, $a0
.LBB0_89:                               # %.lr.ph216
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $a1, -8
	st.d	$a2, $a1, 0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 36
	bnez	$a0, .LBB0_89
.LBB0_90:                               # %._crit_edge
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a4, $a0, 923
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s2
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	move	$a5, $zero
	move	$a6, $zero
	move	$a7, $s8
	pcaddu18i	$ra, %call36(cli_rebuildpe)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	beqz	$a0, .LBB0_92
# %bb.91:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_93
.LBB0_92:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
.LBB0_93:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_94:
	ori	$a0, $zero, 1
	b	.LBB0_75
.Lfunc_end0:
	.size	unaspack212, .Lfunc_end0-unaspack212
                                        # -- End function
	.p2align	5                               # -- Begin function build_decrypt_dictionaries
	.type	build_decrypt_dictionaries,@function
build_decrypt_dictionaries:             # @build_decrypt_dictionaries
# %bb.0:
	addi.d	$sp, $sp, -96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 16                    # 8-byte Folded Spill
	st.d	$s8, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 7
	bgeu	$a1, $a0, .LBB1_4
# %bb.1:                                # %.lr.ph.i.i
	ld.d	$a2, $fp, 1128
	ld.d	$a3, $fp, 1120
	.p2align	4, , 16
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	bgeu	$a3, $a2, .LBB1_17
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	ld.w	$a4, $fp, 4
	ld.bu	$a5, $a3, 0
	slli.d	$a4, $a4, 8
	or	$a4, $a4, $a5
	st.w	$a4, $fp, 4
	addi.d	$a3, $a3, 1
	st.d	$a3, $fp, 1120
	addi.w	$a0, $a0, -8
	st.w	$a0, $fp, 0
	bltu	$a1, $a0, .LBB1_2
	b	.LBB1_5
.LBB1_4:                                # %.getbits.exit_crit_edge
	ld.w	$a4, $fp, 4
.LBB1_5:                                # %getbits.exit
	ori	$s0, $zero, 8
	sub.d	$a1, $s0, $a0
	addi.d	$a0, $a0, 1
	srl.w	$a1, $a4, $a1
	lu12i.w	$a2, 2048
	and	$a1, $a1, $a2
	st.w	$a0, $fp, 0
	bnez	$a1, .LBB1_7
# %bb.6:                                # %.thread157
	ld.d	$a0, $fp, 1136
	ori	$a2, $zero, 757
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB1_7:                                # %.preheader115.split.us.preheader
	move	$a2, $zero
	ld.w	$a0, $fp, 0
	addi.d	$a1, $fp, 8
	ori	$a3, $zero, 7
	ori	$a4, $zero, 19
.LBB1_8:                                # %.preheader115.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_10 Depth 2
	bgeu	$a3, $a0, .LBB1_12
# %bb.9:                                # %.lr.ph.i.i74.us
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.d	$a5, $fp, 1128
	ld.d	$a6, $fp, 1120
	.p2align	4, , 16
.LBB1_10:                               #   Parent Loop BB1_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bgeu	$a6, $a5, .LBB1_16
# %bb.11:                               #   in Loop: Header=BB1_10 Depth=2
	ld.w	$a7, $fp, 4
	ld.bu	$t0, $a6, 0
	slli.d	$a7, $a7, 8
	or	$a7, $a7, $t0
	st.w	$a7, $fp, 4
	addi.d	$a6, $a6, 1
	st.d	$a6, $fp, 1120
	addi.w	$a0, $a0, -8
	st.w	$a0, $fp, 0
	bltu	$a3, $a0, .LBB1_10
	b	.LBB1_13
	.p2align	4, , 16
.LBB1_12:                               # %.preheader115.split.us.getbits.exit78.us_crit_edge
                                        #   in Loop: Header=BB1_8 Depth=1
	ld.w	$a7, $fp, 4
.LBB1_13:                               # %getbits.exit78.us
                                        #   in Loop: Header=BB1_8 Depth=1
	sub.d	$a5, $s0, $a0
	srl.w	$a5, $a7, $a5
	bstrpick.d	$a5, $a5, 23, 20
	addi.w	$a0, $a0, 4
	stx.b	$a5, $a1, $a2
	addi.d	$a2, $a2, 1
	st.w	$a0, $fp, 0
	bne	$a2, $a4, .LBB1_8
# %bb.14:                               # %.split.us
	ori	$a2, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(build_decrypt_array)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_18
# %bb.15:                               # %.preheader113
	move	$s7, $zero
	addi.d	$s2, $fp, 27
	addi.d	$s0, $fp, 28
	ori	$s1, $zero, 16
	ori	$s3, $zero, 7
	ori	$s4, $zero, 8
	ori	$s6, $zero, 755
	b	.LBB1_22
.LBB1_16:                               # %getbits.exit78.thread
	move	$a0, $zero
	bstrpick.d	$a2, $a2, 31, 0
	stx.b	$zero, $a1, $a2
	b	.LBB1_19
.LBB1_17:
	ld.d	$a0, $fp, 1136
	ori	$a2, $zero, 757
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB1_18:                               # %.loopexit114
	move	$a0, $zero
.LBB1_19:                               # %.loopexit114
	ld.d	$s8, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB1_20:                               #   in Loop: Header=BB1_22 Depth=1
	ld.d	$a1, $fp, 1136
	addi.w	$a2, $s7, 0
	ldx.b	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	andi	$a0, $a0, 15
	addi.w	$s7, $s7, 1
	stx.b	$a0, $s2, $s7
.LBB1_21:                               # %.loopexit110
                                        #   in Loop: Header=BB1_22 Depth=1
	addi.w	$a0, $s7, 0
	ori	$a1, $zero, 757
	bgeu	$a0, $a1, .LBB1_57
.LBB1_22:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_37 Depth 2
                                        #     Child Loop BB1_28 Depth 2
                                        #     Child Loop BB1_50 Depth 2
                                        #     Child Loop BB1_54 Depth 2
                                        #     Child Loop BB1_32 Depth 2
                                        #     Child Loop BB1_43 Depth 2
	ori	$a1, $zero, 3
	addi.d	$a2, $sp, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(getdec)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 4
	bnez	$a1, .LBB1_18
# %bb.23:                               #   in Loop: Header=BB1_22 Depth=1
	bltu	$a0, $s1, .LBB1_20
# %bb.24:                               #   in Loop: Header=BB1_22 Depth=1
	ld.w	$a1, $fp, 0
	beq	$a0, $s1, .LBB1_30
# %bb.25:                               #   in Loop: Header=BB1_22 Depth=1
	ori	$a2, $zero, 17
	bne	$a0, $a2, .LBB1_35
# %bb.26:                               #   in Loop: Header=BB1_22 Depth=1
	bgeu	$s3, $a1, .LBB1_39
# %bb.27:                               # %.lr.ph.i.i82
                                        #   in Loop: Header=BB1_22 Depth=1
	ld.d	$a0, $fp, 1128
	ld.d	$a2, $fp, 1120
	.p2align	4, , 16
.LBB1_28:                               #   Parent Loop BB1_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bgeu	$a2, $a0, .LBB1_18
# %bb.29:                               #   in Loop: Header=BB1_28 Depth=2
	ld.w	$a3, $fp, 4
	ld.bu	$a4, $a2, 0
	slli.d	$a3, $a3, 8
	or	$a3, $a3, $a4
	st.w	$a3, $fp, 4
	addi.d	$a2, $a2, 1
	st.d	$a2, $fp, 1120
	addi.w	$a1, $a1, -8
	st.w	$a1, $fp, 0
	bltu	$s3, $a1, .LBB1_28
	b	.LBB1_40
.LBB1_30:                               #   in Loop: Header=BB1_22 Depth=1
	bgeu	$s3, $a1, .LBB1_41
# %bb.31:                               # %.lr.ph.i.i98
                                        #   in Loop: Header=BB1_22 Depth=1
	ld.d	$a2, $fp, 1128
	ld.d	$a3, $fp, 1120
	.p2align	4, , 16
.LBB1_32:                               #   Parent Loop BB1_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bgeu	$a3, $a2, .LBB1_18
# %bb.33:                               #   in Loop: Header=BB1_32 Depth=2
	ld.w	$a0, $fp, 4
	ld.bu	$a4, $a3, 0
	slli.d	$a0, $a0, 8
	or	$a0, $a0, $a4
	st.w	$a0, $fp, 4
	addi.d	$a3, $a3, 1
	st.d	$a3, $fp, 1120
	addi.w	$a1, $a1, -8
	st.w	$a1, $fp, 0
	bltu	$s3, $a1, .LBB1_32
# %bb.34:                               # %.preheader111
                                        #   in Loop: Header=BB1_22 Depth=1
	st.w	$zero, $sp, 4
	addi.d	$a2, $a1, 2
	addi.w	$a3, $s7, 0
	st.w	$a2, $fp, 0
	ori	$a2, $zero, 756
	bgeu	$a2, $a3, .LBB1_42
	b	.LBB1_57
.LBB1_35:                               #   in Loop: Header=BB1_22 Depth=1
	bgeu	$s3, $a1, .LBB1_45
# %bb.36:                               # %.lr.ph.i.i90
                                        #   in Loop: Header=BB1_22 Depth=1
	ld.d	$a0, $fp, 1128
	ld.d	$a2, $fp, 1120
	.p2align	4, , 16
.LBB1_37:                               #   Parent Loop BB1_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bgeu	$a2, $a0, .LBB1_18
# %bb.38:                               #   in Loop: Header=BB1_37 Depth=2
	ld.w	$a3, $fp, 4
	ld.bu	$a4, $a2, 0
	slli.d	$a3, $a3, 8
	or	$a3, $a3, $a4
	st.w	$a3, $fp, 4
	addi.d	$a2, $a2, 1
	st.d	$a2, $fp, 1120
	addi.w	$a1, $a1, -8
	st.w	$a1, $fp, 0
	bltu	$s3, $a1, .LBB1_37
	b	.LBB1_46
.LBB1_39:                               # %..loopexit.i80_crit_edge
                                        #   in Loop: Header=BB1_22 Depth=1
	ld.w	$a3, $fp, 4
.LBB1_40:                               # %.loopexit.i80
                                        #   in Loop: Header=BB1_22 Depth=1
	st.w	$zero, $sp, 4
	sub.d	$a0, $s4, $a1
	srl.w	$a0, $a3, $a0
	bstrpick.d	$a0, $a0, 23, 21
	addi.d	$a1, $a1, 3
	st.w	$a1, $fp, 0
	addi.d	$s8, $a0, 3
	b	.LBB1_47
.LBB1_41:                               # %.preheader111.thread
                                        #   in Loop: Header=BB1_22 Depth=1
	ld.w	$a0, $fp, 4
	st.w	$zero, $sp, 4
	addi.d	$a2, $a1, 2
	st.w	$a2, $fp, 0
.LBB1_42:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB1_22 Depth=1
	sub.d	$a3, $s4, $a1
	addi.w	$a1, $s7, 0
	ldx.bu	$a2, $s2, $a1
	srl.w	$a0, $a0, $a3
	bstrpick.d	$a0, $a0, 23, 22
	addi.w	$a0, $a0, 2
	.p2align	4, , 16
.LBB1_43:                               # %.lr.ph
                                        #   Parent Loop BB1_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	stx.b	$a2, $s0, $a1
	addi.d	$s7, $s7, 1
	bltu	$s6, $a1, .LBB1_21
# %bb.44:                               # %.lr.ph
                                        #   in Loop: Header=BB1_43 Depth=2
	move	$a3, $a0
	addi.d	$a1, $a1, 1
	addi.w	$a0, $a0, -1
	bnez	$a3, .LBB1_43
	b	.LBB1_21
.LBB1_45:                               # %..loopexit.i88_crit_edge
                                        #   in Loop: Header=BB1_22 Depth=1
	ld.w	$a3, $fp, 4
.LBB1_46:                               # %.loopexit.i88
                                        #   in Loop: Header=BB1_22 Depth=1
	st.w	$zero, $sp, 4
	sub.d	$a0, $s4, $a1
	srl.w	$a0, $a3, $a0
	bstrpick.d	$a0, $a0, 23, 17
	addi.d	$a1, $a1, 7
	st.w	$a1, $fp, 0
	addi.d	$s8, $a0, 11
.LBB1_47:                               # %.preheader
                                        #   in Loop: Header=BB1_22 Depth=1
	addi.w	$s5, $s7, 0
	ori	$a0, $zero, 756
	bltu	$a0, $s5, .LBB1_57
# %bb.48:                               # %.lr.ph130.preheader
                                        #   in Loop: Header=BB1_22 Depth=1
	move	$s1, $s2
	add.d	$a0, $s0, $s5
	addi.w	$s4, $s8, -1
	ori	$s2, $zero, 756
	sub.w	$a1, $s2, $s7
	sltu	$a2, $s4, $a1
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $s4, $a2
	or	$a1, $a2, $a1
	addi.w	$a2, $a1, 1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	sub.d	$a0, $s2, $s5
	sltu	$a1, $a0, $s4
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s4, $a1
	or	$a0, $a0, $a1
	beqz	$a0, .LBB1_52
# %bb.49:                               # %vector.ph
                                        #   in Loop: Header=BB1_22 Depth=1
	addi.d	$a0, $a0, 1
	bstrpick.d	$a2, $a0, 31, 1
	slli.d	$a1, $a2, 1
	alsl.d	$s5, $a2, $s5, 1
	sub.d	$s8, $s8, $a1
	move	$a2, $a1
	.p2align	4, , 16
.LBB1_50:                               # %vector.body
                                        #   Parent Loop BB1_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a2, $a2, -2
	bnez	$a2, .LBB1_50
# %bb.51:                               # %middle.block
                                        #   in Loop: Header=BB1_22 Depth=1
	move	$s2, $s1
	ori	$s1, $zero, 16
	ori	$s4, $zero, 8
	bne	$a0, $a1, .LBB1_53
	b	.LBB1_56
.LBB1_52:                               #   in Loop: Header=BB1_22 Depth=1
	move	$s2, $s1
	ori	$s1, $zero, 16
	ori	$s4, $zero, 8
.LBB1_53:                               # %.lr.ph130.preheader188
                                        #   in Loop: Header=BB1_22 Depth=1
	move	$a0, $s5
	addi.w	$a1, $s8, -1
	ori	$a3, $zero, 756
	sub.d	$a2, $a3, $s5
	sltu	$a3, $a3, $a2
	masknez	$a2, $a2, $a3
	bstrpick.d	$a3, $a1, 31, 0
	sltu	$a4, $a2, $a3
	maskeqz	$a2, $a2, $a4
	masknez	$a3, $a3, $a4
	or	$a2, $a2, $a3
	add.d	$a2, $s5, $a2
	addi.d	$s5, $a2, 1
	.p2align	4, , 16
.LBB1_54:                               # %.lr.ph130
                                        #   Parent Loop BB1_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$s6, $a0, .LBB1_56
# %bb.55:                               # %.lr.ph130
                                        #   in Loop: Header=BB1_54 Depth=2
	move	$a2, $a1
	addi.d	$a0, $a0, 1
	addi.w	$a1, $a1, -1
	bnez	$a2, .LBB1_54
.LBB1_56:                               # %.loopexit110.loopexit
                                        #   in Loop: Header=BB1_22 Depth=1
	move	$s7, $s5
	b	.LBB1_21
.LBB1_57:                               # %.loopexit110.thread
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(build_decrypt_array)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_18
# %bb.58:
	addi.d	$a1, $fp, 749
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(build_decrypt_array)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_18
# %bb.59:
	addi.d	$a1, $fp, 777
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(build_decrypt_array)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_18
# %bb.60:
	ld.bu	$a1, $fp, 777
	ori	$a0, $zero, 3
	st.w	$zero, $fp, 1912
	bne	$a1, $a0, .LBB1_68
# %bb.61:
	ld.bu	$a1, $fp, 778
	bne	$a1, $a0, .LBB1_68
# %bb.62:
	ld.bu	$a1, $fp, 779
	ori	$a0, $zero, 3
	bne	$a1, $a0, .LBB1_68
# %bb.63:
	ld.bu	$a1, $fp, 780
	bne	$a1, $a0, .LBB1_68
# %bb.64:
	ld.bu	$a1, $fp, 781
	ori	$a0, $zero, 3
	bne	$a1, $a0, .LBB1_68
# %bb.65:
	ld.bu	$a1, $fp, 782
	bne	$a1, $a0, .LBB1_68
# %bb.66:
	ld.bu	$a1, $fp, 783
	ori	$a0, $zero, 3
	bne	$a1, $a0, .LBB1_68
# %bb.67:
	ld.bu	$a1, $fp, 784
	beq	$a1, $a0, .LBB1_69
.LBB1_68:
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 1912
.LBB1_69:                               # %.loopexit
	ld.d	$a0, $fp, 1136
	ori	$a2, $zero, 757
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB1_19
.Lfunc_end1:
	.size	build_decrypt_dictionaries, .Lfunc_end1-build_decrypt_dictionaries
                                        # -- End function
	.p2align	5                               # -- Begin function build_decrypt_array
	.type	build_decrypt_array,@function
build_decrypt_array:                    # @build_decrypt_array
# %bb.0:
	addi.d	$sp, $sp, -240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	move	$s1, $a2
	move	$s2, $a1
	move	$s0, $a0
	addi.d	$a0, $sp, 80
	ori	$a2, $zero, 72
	addi.d	$fp, $sp, 80
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 72
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s1, 4
	alsl.d	$a0, $s1, $a0, 3
	add.d	$a0, $s0, $a0
	ld.wu	$a1, $a0, 1040
	beqz	$a1, .LBB2_4
# %bb.1:                                # %.lr.ph.preheader
	ori	$a2, $zero, 17
	move	$a3, $s2
	.p2align	4, , 16
.LBB2_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a3, 0
	bltu	$a2, $a4, .LBB2_21
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	slli.d	$a4, $a4, 2
	ldx.w	$a5, $a4, $fp
	addi.d	$a5, $a5, 1
	stx.w	$a5, $a4, $fp
	addi.d	$a1, $a1, -1
	addi.d	$a3, $a3, 1
	bnez	$a1, .LBB2_2
.LBB2_4:                                # %._crit_edge
	st.d	$s2, $sp, 0                     # 8-byte Folded Spill
	move	$s2, $zero
	move	$a1, $zero
	alsl.d	$a2, $s1, $s1, 1
	slli.d	$a2, $a2, 5
	add.d	$a3, $s0, $a2
	addi.d	$a4, $a3, 1144
	addi.d	$a3, $a3, 1528
	addi.d	$s1, $a0, 1024
	st.w	$zero, $a4, 0
	st.w	$zero, $a3, 0
	addi.d	$s3, $sp, 12
	addi.d	$s4, $sp, 84
	add.d	$a0, $a2, $s0
	addi.d	$s5, $a0, 1532
	ori	$s6, $zero, 23
	ori	$s0, $zero, 1
	lu12i.w	$s7, 4096
	ori	$s8, $zero, 16
	b	.LBB2_7
	.p2align	4, , 16
.LBB2_5:                                #   in Loop: Header=BB2_7 Depth=1
	move	$fp, $a1
.LBB2_6:                                #   in Loop: Header=BB2_7 Depth=1
	addi.w	$s6, $s6, -1
	addi.d	$s3, $s3, 4
	addi.d	$s0, $s0, 1
	addi.d	$s4, $s4, 4
	addi.d	$s5, $s5, 4
	move	$a1, $fp
	beq	$s0, $s8, .LBB2_13
.LBB2_7:                                # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s4, 0
	sll.w	$a0, $a0, $s6
	add.w	$s2, $a0, $s2
	bltu	$s7, $s2, .LBB2_21
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=1
	ld.w	$a0, $s4, -4
	ld.w	$a2, $s5, -4
	st.w	$s2, $s5, -384
	add.d	$a0, $a2, $a0
	st.w	$a0, $s3, 0
	st.w	$a0, $s5, 0
	bltu	$s6, $s8, .LBB2_5
# %bb.9:                                #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$fp, $s2, 31, 16
	addi.w	$a3, $a1, 0
	beq	$fp, $a3, .LBB2_5
# %bb.10:                               #   in Loop: Header=BB2_7 Depth=1
	bstrpick.d	$a2, $s2, 31, 16
	move	$a0, $zero
	beqz	$a2, .LBB2_22
# %bb.11:                               #   in Loop: Header=BB2_7 Depth=1
	sub.w	$a2, $fp, $a1
	ori	$a1, $zero, 256
	bltu	$a1, $a2, .LBB2_22
# %bb.12:                               #   in Loop: Header=BB2_7 Depth=1
	ld.d	$a0, $s1, 8
	add.d	$a0, $a0, $a3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB2_6
.LBB2_13:
	bne	$s2, $s7, .LBB2_21
# %bb.14:                               # %.preheader
	ld.wu	$a2, $s1, 16
	ori	$a0, $zero, 1
	beqz	$a2, .LBB2_22
# %bb.15:                               # %.lr.ph125.preheader
	move	$a1, $zero
	move	$a3, $zero
	ori	$a4, $zero, 17
	addi.d	$a5, $sp, 8
	ld.d	$t0, $sp, 0                     # 8-byte Folded Reload
	b	.LBB2_18
	.p2align	4, , 16
.LBB2_16:                               #   in Loop: Header=BB2_18 Depth=1
	ld.d	$a2, $s1, 0
	slli.d	$a6, $a6, 2
	stx.w	$a1, $a2, $a6
	ldx.bu	$a2, $t0, $a3
	slli.d	$a6, $a2, 2
	ldx.w	$a7, $a6, $a5
	ld.wu	$a2, $s1, 16
	addi.d	$a7, $a7, 1
	stx.w	$a7, $a6, $a5
.LBB2_17:                               #   in Loop: Header=BB2_18 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, 1
	bgeu	$a3, $a2, .LBB2_22
.LBB2_18:                               # %.lr.ph125
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a6, $t0, $a3
	beqz	$a6, .LBB2_17
# %bb.19:                               #   in Loop: Header=BB2_18 Depth=1
	bltu	$a4, $a6, .LBB2_21
# %bb.20:                               #   in Loop: Header=BB2_18 Depth=1
	slli.d	$a6, $a6, 2
	ldx.wu	$a6, $a6, $a5
	bltu	$a6, $a2, .LBB2_16
.LBB2_21:
	move	$a0, $zero
.LBB2_22:                               # %.critedge
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.Lfunc_end2:
	.size	build_decrypt_array, .Lfunc_end2-build_decrypt_array
                                        # -- End function
	.p2align	5                               # -- Begin function getdec
	.type	getdec,@function
getdec:                                 # @getdec
# %bb.0:
	ori	$a3, $zero, 1
	st.w	$a3, $a2, 0
	ld.w	$a3, $a0, 0
	ori	$a4, $zero, 7
	bgeu	$a4, $a3, .LBB3_4
# %bb.1:                                # %.lr.ph.i
	ld.d	$a6, $a0, 1128
	ld.d	$a7, $a0, 1120
	.p2align	4, , 16
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	bgeu	$a7, $a6, .LBB3_15
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=1
	ld.w	$a5, $a0, 4
	ld.bu	$t0, $a7, 0
	slli.d	$a5, $a5, 8
	or	$a5, $a5, $t0
	st.w	$a5, $a0, 4
	addi.d	$a7, $a7, 1
	st.d	$a7, $a0, 1120
	addi.w	$a3, $a3, -8
	st.w	$a3, $a0, 0
	bltu	$a4, $a3, .LBB3_2
	b	.LBB3_5
.LBB3_4:                                # %..loopexit_crit_edge
	ld.w	$a5, $a0, 4
.LBB3_5:                                # %.loopexit
	alsl.d	$a4, $a1, $a1, 1
	slli.d	$a4, $a4, 5
	add.d	$a4, $a0, $a4
	addi.d	$a6, $a4, 1144
	ori	$a7, $zero, 8
	sub.d	$a7, $a7, $a3
	ld.w	$t0, $a6, 32
	srl.w	$a5, $a5, $a7
	bstrpick.d	$a5, $a5, 23, 9
	slli.d	$a7, $a5, 9
	slli.d	$a5, $a1, 4
	bgeu	$a7, $t0, .LBB3_7
# %bb.6:
	alsl.d	$t0, $a1, $a5, 3
	add.d	$t0, $a0, $t0
	ld.d	$t0, $t0, 1032
	bstrpick.d	$t1, $a7, 31, 16
	ldx.bu	$t0, $t0, $t1
	addi.d	$t1, $t0, -24
	andi	$t1, $t1, 255
	ori	$t2, $zero, 233
	bgeu	$t1, $t2, .LBB3_13
	b	.LBB3_15
.LBB3_7:
	ld.w	$t0, $a6, 40
	addi.w	$t1, $a7, 0
	bgeu	$t1, $t0, .LBB3_9
# %bb.8:
	ld.w	$t0, $a6, 36
	sltu	$t0, $t1, $t0
	ori	$t1, $zero, 10
	sub.d	$t0, $t1, $t0
	b	.LBB3_13
.LBB3_9:
	ld.w	$t2, $a6, 44
	ori	$t0, $zero, 11
	bltu	$t1, $t2, .LBB3_13
# %bb.10:
	ld.w	$t2, $a6, 48
	ori	$t0, $zero, 12
	bltu	$t1, $t2, .LBB3_13
# %bb.11:
	ld.w	$t2, $a6, 52
	ori	$t0, $zero, 13
	bltu	$t1, $t2, .LBB3_13
# %bb.12:
	ld.w	$t0, $a6, 56
	sltu	$t0, $t1, $t0
	xori	$t0, $t0, 15
.LBB3_13:
	alsl.d	$a6, $t0, $a6, 2
	ld.w	$a6, $a6, -4
	addi.d	$a4, $a4, 1528
	add.d	$t1, $a3, $t0
	sub.d	$a3, $a7, $a6
	slli.d	$a6, $t0, 2
	ldx.w	$a4, $a4, $a6
	ori	$a6, $zero, 24
	alsl.d	$a1, $a1, $a5, 3
	add.d	$a1, $a0, $a1
	ld.w	$a5, $a1, 1040
	sub.d	$a6, $a6, $t0
	srl.w	$a3, $a3, $a6
	add.w	$a3, $a3, $a4
	st.w	$t1, $a0, 0
	bgeu	$a3, $a5, .LBB3_15
# %bb.14:
	addi.d	$a0, $a1, 1024
	ld.d	$a0, $a0, 0
	bstrpick.d	$a1, $a3, 31, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a0, $a0, $a1
	st.w	$zero, $a2, 0
	ret
.LBB3_15:
	move	$a0, $zero
	ret
.Lfunc_end3:
	.size	getdec, .Lfunc_end3-getdec
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Aspack: Unable to allocate dictionary\n"
	.size	.L.str, 39

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Aspack: unpacking block rva:%x - sz:%x\n"
	.size	.L.str.1, 40

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Aspack: unpacking failure\n"
	.size	.L.str.2, 27

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Aspack: OOM - rebuild failed\n"
	.size	.L.str.3, 30

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Aspack: rebuild failed\n"
	.size	.L.str.4, 24

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Aspack: successfully rebuilt\n"
	.size	.L.str.5, 30

	.section	".note.GNU-stack","",@progbits
	.addrsig
