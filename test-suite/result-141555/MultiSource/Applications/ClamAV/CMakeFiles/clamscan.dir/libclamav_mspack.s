	.file	"libclamav_mspack.c"
	.text
	.globl	mszip_init                      # -- Begin function mszip_init
	.p2align	5
	.type	mszip_init,@function
mszip_init:                             # @mszip_init
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	addi.w	$s1, $a2, 1
	bstrins.d	$s1, $zero, 0, 0
	beqz	$s1, .LBB0_5
# %bb.1:
	move	$fp, $a5
	move	$s0, $a4
	move	$s2, $a3
	move	$s3, $a1
	move	$s4, $a0
	lu12i.w	$s5, 8
	ori	$a0, $s5, 2992
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_5
# %bb.2:
	move	$s6, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s6
	st.d	$a1, $s6, 40
	beqz	$a1, .LBB0_4
# %bb.3:
	ori	$a2, $s5, 2976
	add.d	$a2, $a0, $a2
	st.w	$s4, $a0, 0
	st.w	$s3, $a0, 4
	ori	$a3, $zero, 1
	st.b	$a3, $a0, 8
	st.w	$s1, $a0, 88
	st.w	$zero, $a0, 24
	st.w	$s2, $a0, 28
	pcalau12i	$a3, %pc_hi20(mszip_flush_window)
	addi.d	$a3, $a3, %pc_lo12(mszip_flush_window)
	st.d	$a3, $a0, 16
	st.w	$zero, $a0, 36
	st.d	$a1, $a0, 56
	st.d	$a1, $a0, 48
	st.d	$zero, $a0, 64
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 72
	st.d	$s0, $a2, 0
	st.d	$fp, $a2, 8
	b	.LBB0_6
.LBB0_4:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_5:
	move	$a0, $zero
.LBB0_6:
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end0:
	.size	mszip_init, .Lfunc_end0-mszip_init
                                        # -- End function
	.p2align	5                               # -- Begin function mszip_flush_window
	.type	mszip_flush_window,@function
mszip_flush_window:                     # @mszip_flush_window
# %bb.0:
	ld.w	$a2, $a0, 32
	add.w	$a2, $a2, $a1
	lu12i.w	$a3, 8
	ori	$a3, $a3, 1
	st.w	$a2, $a0, 32
	blt	$a2, $a3, .LBB1_2
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB1_2:
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	mszip_flush_window, .Lfunc_end1-mszip_flush_window
                                        # -- End function
	.globl	mszip_decompress                # -- Begin function mszip_decompress
	.p2align	5
	.type	mszip_decompress,@function
mszip_decompress:                       # @mszip_decompress
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	addi.w	$s1, $zero, -111
	beqz	$a0, .LBB2_40
# %bb.1:
	move	$s0, $a1
	bltz	$a1, .LBB2_40
# %bb.2:
	move	$fp, $a0
	ld.w	$s1, $a0, 24
	bnez	$s1, .LBB2_40
# %bb.3:
	ld.d	$a0, $fp, 72
	ld.d	$a1, $fp, 64
	sub.w	$a0, $a0, $a1
	slt	$a2, $s0, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s0, $a2
	or	$a0, $a2, $a0
	addi.w	$s1, $a0, 0
	beqz	$s1, .LBB2_8
# %bb.4:
	ld.bu	$a0, $fp, 8
	beqz	$a0, .LBB2_7
# %bb.5:
	ld.w	$a0, $fp, 4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB2_36
# %bb.6:                                # %._crit_edge170
	ld.d	$a1, $fp, 64
.LBB2_7:
	add.d	$a0, $a1, $s1
	st.d	$a0, $fp, 64
	sub.d	$s0, $s0, $s1
.LBB2_8:
	beqz	$s0, .LBB2_35
# %bb.9:                                # %.preheader
	addi.w	$s5, $zero, -124
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	ori	$a1, $zero, 1
	addi.d	$s2, $a0, %pc_lo12(.L.str.2)
	blt	$s0, $a1, .LBB2_38
# %bb.10:                               # %.lr.ph161
	lu12i.w	$a0, 8
	ori	$a0, $a0, 2976
	add.d	$s7, $fp, $a0
	addi.d	$a0, $fp, 2047
	addi.d	$a0, $a0, 925
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s8, $zero, 7
	addi.w	$s1, $zero, -123
	lu12i.w	$a0, 7
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
.LBB2_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_13 Depth 2
                                        #       Child Loop BB2_17 Depth 3
	move	$s6, $zero
	ld.wu	$a2, $fp, 84
	ld.w	$a3, $fp, 80
	ld.d	$a1, $fp, 48
	ld.d	$a0, $fp, 56
	andi	$a4, $a2, 7
	srl.w	$s4, $a3, $a4
	bstrpick.d	$a2, $a2, 31, 3
	slli.w	$a2, $a2, 3
	b	.LBB2_13
	.p2align	4, , 16
.LBB2_12:                               # %._crit_edge
                                        #   in Loop: Header=BB2_13 Depth=2
	andi	$a3, $s4, 255
	bstrpick.d	$s4, $s4, 31, 8
	addi.d	$a4, $a3, -67
	addi.d	$a3, $a3, -75
	sltu	$a3, $zero, $a3
	orn	$a3, $a3, $s6
	sltui	$s6, $a4, 1
	andi	$a3, $a3, 1
	addi.w	$a2, $a2, -8
	beqz	$a3, .LBB2_24
.LBB2_13:                               # %.backedge
                                        #   Parent Loop BB2_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_17 Depth 3
	blt	$s8, $a2, .LBB2_12
# %bb.14:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB2_13 Depth=2
	move	$a3, $a1
	b	.LBB2_17
	.p2align	4, , 16
.LBB2_15:                               #   in Loop: Header=BB2_17 Depth=3
	ld.d	$a3, $fp, 40
	st.d	$a3, $fp, 48
	add.d	$a0, $a3, $a0
	st.d	$a0, $fp, 56
.LBB2_16:                               #   in Loop: Header=BB2_17 Depth=3
	ld.bu	$a2, $a3, 0
	addi.d	$a1, $a3, 1
	sll.w	$a2, $a2, $s3
	or	$s4, $a2, $s4
	addi.w	$a2, $s3, 8
	move	$a3, $a1
	bgez	$s3, .LBB2_12
.LBB2_17:                               # %.lr.ph
                                        #   Parent Loop BB2_11 Depth=1
                                        #     Parent Loop BB2_13 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s3, $a2
	bltu	$a3, $a0, .LBB2_16
# %bb.18:                               #   in Loop: Header=BB2_17 Depth=3
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB2_20
# %bb.19:                               #   in Loop: Header=BB2_17 Depth=3
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB2_21
	b	.LBB2_39
.LBB2_20:                               #   in Loop: Header=BB2_17 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB2_39
.LBB2_21:                               #   in Loop: Header=BB2_17 Depth=3
	bnez	$a0, .LBB2_15
# %bb.22:                               #   in Loop: Header=BB2_17 Depth=3
	ld.w	$a0, $fp, 36
	bnez	$a0, .LBB2_37
# %bb.23:                               #   in Loop: Header=BB2_17 Depth=3
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
	b	.LBB2_15
.LBB2_24:                               #   in Loop: Header=BB2_11 Depth=1
	st.w	$zero, $fp, 12
	st.w	$zero, $fp, 32
	st.d	$a1, $fp, 48
	st.d	$a0, $fp, 56
	st.w	$s4, $fp, 80
	st.w	$a2, $fp, 84
	move	$a0, $fp
	pcaddu18i	$ra, %call36(mszip_inflate)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_29
# %bb.25:                               #   in Loop: Header=BB2_11 Depth=1
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 28
	beqz	$a0, .LBB2_41
# %bb.26:                               #   in Loop: Header=BB2_11 Depth=1
	ld.w	$a0, $fp, 32
	lu12i.w	$a1, 8
	sub.w	$a1, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 32
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	blt	$a0, $a1, .LBB2_28
# %bb.27:                               # %.lr.ph158.preheader
                                        #   in Loop: Header=BB2_11 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a2, $a1
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, 1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB2_28:                               # %._crit_edge159
                                        #   in Loop: Header=BB2_11 Depth=1
	lu12i.w	$a0, 8
	st.w	$a0, $fp, 32
	b	.LBB2_30
.LBB2_29:                               # %._crit_edge171
                                        #   in Loop: Header=BB2_11 Depth=1
	ld.w	$a0, $fp, 32
.LBB2_30:                               #   in Loop: Header=BB2_11 Depth=1
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	st.d	$a3, $fp, 64
	add.d	$a1, $a3, $a0
	st.d	$a1, $fp, 72
	slt	$a1, $s0, $a0
	ld.bu	$a2, $fp, 8
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$a0, $a1, $a0
	addi.w	$s4, $a0, 0
	move	$a0, $a3
	beqz	$a2, .LBB2_33
# %bb.31:                               #   in Loop: Header=BB2_11 Depth=1
	ld.w	$a0, $fp, 4
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	bne	$a0, $s4, .LBB2_39
# %bb.32:                               # %._crit_edge173
                                        #   in Loop: Header=BB2_11 Depth=1
	ld.d	$a0, $fp, 64
.LBB2_33:                               #   in Loop: Header=BB2_11 Depth=1
	add.d	$a0, $a0, $s4
	sub.d	$s0, $s0, $s4
	st.d	$a0, $fp, 64
	bgtz	$s0, .LBB2_11
# %bb.34:                               # %._crit_edge162
	bnez	$s0, .LBB2_38
.LBB2_35:
	move	$s1, $zero
	b	.LBB2_40
.LBB2_36:
	addi.w	$s1, $zero, -123
	b	.LBB2_39
.LBB2_37:
	addi.w	$s5, $zero, -123
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$s2, $a0, %pc_lo12(.L.str.20)
.LBB2_38:                               # %.sink.split.sink.split
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s1, $s5
.LBB2_39:                               # %.sink.split
	st.w	$s1, $fp, 24
.LBB2_40:
	move	$a0, $s1
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB2_41:
	addi.w	$s1, $zero, -124
	b	.LBB2_39
.Lfunc_end2:
	.size	mszip_decompress, .Lfunc_end2-mszip_decompress
                                        # -- End function
	.p2align	5                               # -- Begin function mszip_inflate
	.type	mszip_inflate,@function
mszip_inflate:                          # @mszip_inflate
# %bb.0:
	addi.d	$sp, $sp, -864
	st.d	$ra, $sp, 856                   # 8-byte Folded Spill
	st.d	$fp, $sp, 848                   # 8-byte Folded Spill
	st.d	$s0, $sp, 840                   # 8-byte Folded Spill
	st.d	$s1, $sp, 832                   # 8-byte Folded Spill
	st.d	$s2, $sp, 824                   # 8-byte Folded Spill
	st.d	$s3, $sp, 816                   # 8-byte Folded Spill
	st.d	$s4, $sp, 808                   # 8-byte Folded Spill
	st.d	$s5, $sp, 800                   # 8-byte Folded Spill
	st.d	$s6, $sp, 792                   # 8-byte Folded Spill
	st.d	$s7, $sp, 784                   # 8-byte Folded Spill
	st.d	$s8, $sp, 776                   # 8-byte Folded Spill
	move	$fp, $a0
	lu12i.w	$a0, 8
	ori	$a0, $a0, 2976
	add.d	$s7, $fp, $a0
	ld.d	$s0, $fp, 48
	ld.d	$s1, $fp, 56
	ld.w	$s5, $fp, 80
	ld.w	$s8, $fp, 84
	addi.d	$a0, $fp, 349
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $fp, 381
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $fp, 92
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a0, $fp, 380
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a0, $fp, 412
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a0, $fp, 2047
	addi.d	$a1, $a0, 669
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a1, $a0, 925
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	addi.d	$a1, $fp, 236
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a1, $fp, 348
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 941
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -7
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu12i.w	$a0, 28784
	ori	$a0, $a0, 1799
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	lu12i.w	$a0, 32896
	ori	$a0, $a0, 2056
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	lu12i.w	$a0, 20560
	ori	$a0, $a0, 1285
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	st.d	$s7, $sp, 168                   # 8-byte Folded Spill
.LBB3_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_19 Depth 2
                                        #     Child Loop BB3_8 Depth 2
                                        #     Child Loop BB3_168 Depth 2
                                        #     Child Loop BB3_207 Depth 2
                                        #     Child Loop BB3_217 Depth 2
                                        #     Child Loop BB3_229 Depth 2
                                        #       Child Loop BB3_232 Depth 3
                                        #     Child Loop BB3_242 Depth 2
                                        #     Child Loop BB3_245 Depth 2
                                        #       Child Loop BB3_251 Depth 3
                                        #       Child Loop BB3_266 Depth 3
                                        #       Child Loop BB3_279 Depth 3
                                        #       Child Loop BB3_297 Depth 3
                                        #       Child Loop BB3_293 Depth 3
                                        #       Child Loop BB3_306 Depth 3
                                        #     Child Loop BB3_36 Depth 2
                                        #       Child Loop BB3_37 Depth 3
                                        #         Child Loop BB3_42 Depth 4
                                        #         Child Loop BB3_108 Depth 4
                                        #         Child Loop BB3_117 Depth 4
                                        #         Child Loop BB3_127 Depth 4
                                        #       Child Loop BB3_137 Depth 3
                                        #         Child Loop BB3_145 Depth 4
                                        #         Child Loop BB3_149 Depth 4
                                        #         Child Loop BB3_152 Depth 4
                                        #       Child Loop BB3_158 Depth 3
                                        #     Child Loop BB3_179 Depth 2
                                        #     Child Loop BB3_191 Depth 2
	move	$s3, $s5
	blez	$s8, .LBB3_15
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	move	$s6, $s0
.LBB3_3:                                # %._crit_edge
                                        #   in Loop: Header=BB3_1 Depth=1
	bstrpick.d	$s0, $s3, 31, 1
	ori	$a0, $zero, 2
	bltu	$a0, $s8, .LBB3_14
# %bb.4:                                # %.lr.ph723.preheader
                                        #   in Loop: Header=BB3_1 Depth=1
	addi.d	$s2, $s8, -9
	addi.d	$s4, $sp, 176
	b	.LBB3_8
.LBB3_5:                                #   in Loop: Header=BB3_8 Depth=2
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
.LBB3_6:                                #   in Loop: Header=BB3_8 Depth=2
	ld.d	$s6, $fp, 40
	st.d	$s6, $fp, 48
	add.d	$s1, $s6, $a0
	st.d	$s1, $fp, 56
.LBB3_7:                                #   in Loop: Header=BB3_8 Depth=2
	ld.bu	$a0, $s6, 0
	addi.w	$s2, $s2, 8
	addi.d	$s6, $s6, 1
	sll.w	$a0, $a0, $s2
	addi.w	$a1, $zero, -6
	or	$s0, $a0, $s0
	bge	$s2, $a1, .LBB3_25
.LBB3_8:                                # %.lr.ph723
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$s6, $s1, .LBB3_7
# %bb.9:                                #   in Loop: Header=BB3_8 Depth=2
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_11
# %bb.10:                               #   in Loop: Header=BB3_8 Depth=2
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB3_12
	b	.LBB3_319
.LBB3_11:                               #   in Loop: Header=BB3_8 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB3_319
.LBB3_12:                               #   in Loop: Header=BB3_8 Depth=2
	bnez	$a0, .LBB3_6
# %bb.13:                               #   in Loop: Header=BB3_8 Depth=2
	ld.w	$a0, $fp, 36
	beqz	$a0, .LBB3_5
	b	.LBB3_318
	.p2align	4, , 16
.LBB3_14:                               #   in Loop: Header=BB3_1 Depth=1
	addi.d	$a1, $s8, -1
	addi.d	$s4, $sp, 176
	b	.LBB3_26
	.p2align	4, , 16
.LBB3_15:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB3_1 Depth=1
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	b	.LBB3_19
.LBB3_16:                               #   in Loop: Header=BB3_19 Depth=2
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
.LBB3_17:                               #   in Loop: Header=BB3_19 Depth=2
	ld.d	$s0, $fp, 40
	st.d	$s0, $fp, 48
	add.d	$s1, $s0, $a0
	st.d	$s1, $fp, 56
.LBB3_18:                               #   in Loop: Header=BB3_19 Depth=2
	ld.bu	$a0, $s0, 0
	addi.d	$s6, $s0, 1
	sll.w	$a0, $a0, $s2
	or	$s3, $a0, $s3
	addi.w	$s8, $s2, 8
	move	$s0, $s6
	bge	$s2, $s4, .LBB3_3
.LBB3_19:                               # %.lr.ph
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s2, $s8
	bltu	$s0, $s1, .LBB3_18
# %bb.20:                               #   in Loop: Header=BB3_19 Depth=2
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_22
# %bb.21:                               #   in Loop: Header=BB3_19 Depth=2
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB3_23
	b	.LBB3_319
.LBB3_22:                               #   in Loop: Header=BB3_19 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB3_319
.LBB3_23:                               #   in Loop: Header=BB3_19 Depth=2
	bnez	$a0, .LBB3_17
# %bb.24:                               #   in Loop: Header=BB3_19 Depth=2
	ld.w	$a0, $fp, 36
	beqz	$a0, .LBB3_16
	b	.LBB3_318
	.p2align	4, , 16
.LBB3_25:                               # %._crit_edge724.loopexit
                                        #   in Loop: Header=BB3_1 Depth=1
	addi.d	$a1, $s2, 8
.LBB3_26:                               # %._crit_edge724
                                        #   in Loop: Header=BB3_1 Depth=1
	andi	$a0, $s0, 3
	slli.d	$a0, $a0, 2
	pcalau12i	$a2, %pc_hi20(.LJTI3_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI3_0)
	ldx.w	$a0, $a2, $a0
	bstrpick.d	$s5, $s0, 31, 2
	addi.w	$s8, $a1, -2
	add.d	$a2, $a2, $a0
	addi.w	$a0, $zero, -1
	jr	$a2
.LBB3_27:                               #   in Loop: Header=BB3_1 Depth=1
	andi	$a0, $s8, 7
	bstrins.d	$s8, $zero, 2, 0
	srl.w	$s5, $s5, $a0
	beqz	$s8, .LBB3_174
# %bb.28:                               # %.lr.ph803.preheader
                                        #   in Loop: Header=BB3_1 Depth=1
	st.b	$s5, $sp, 176
	bstrpick.d	$a0, $s5, 31, 8
	ori	$s0, $zero, 1
	ori	$a1, $zero, 8
	beq	$s8, $a1, .LBB3_31
# %bb.29:                               # %.lr.ph803.1
                                        #   in Loop: Header=BB3_1 Depth=1
	st.b	$a0, $sp, 177
	bstrpick.d	$a0, $s5, 31, 16
	ori	$s0, $zero, 2
	ori	$a1, $zero, 16
	beq	$s8, $a1, .LBB3_31
# %bb.30:                               # %.lr.ph803.2
                                        #   in Loop: Header=BB3_1 Depth=1
	st.b	$a0, $sp, 178
	bstrpick.d	$a0, $s5, 31, 24
	ori	$s0, $zero, 3
	ori	$a1, $zero, 24
	bne	$s8, $a1, .LBB3_239
.LBB3_31:                               #   in Loop: Header=BB3_1 Depth=1
	move	$s5, $a0
	b	.LBB3_175
	.p2align	4, , 16
.LBB3_32:                               # %.preheader520
                                        #   in Loop: Header=BB3_1 Depth=1
	ori	$a1, $zero, 8
	ori	$a2, $zero, 144
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 9
	ori	$a2, $zero, 112
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bstrins.d	$a0, $a0, 58, 32
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	st.d	$a0, $a1, 8
	st.d	$a0, $a1, 16
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	bstrins.d	$a0, $a0, 59, 32
	st.d	$a0, $fp, 372
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	bstrins.d	$a0, $a0, 58, 32
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.d	$a0, $a1, 0
	st.d	$a0, $a1, 8
	st.d	$a0, $a1, 16
	st.d	$a0, $a1, 24
.LBB3_33:                               # %.loopexit521
                                        #   in Loop: Header=BB3_1 Depth=1
	ori	$a0, $zero, 288
	ori	$a1, $zero, 9
	move	$a2, $s0
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(mszip_make_decode_table)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_324
# %bb.34:                               #   in Loop: Header=BB3_1 Depth=1
	ori	$a0, $zero, 32
	ori	$a1, $zero, 6
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(mszip_make_decode_table)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_325
# %bb.35:                               #   in Loop: Header=BB3_1 Depth=1
	ld.w	$a0, $fp, 12
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
.LBB3_36:                               # %.thread496.outer
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_37 Depth 3
                                        #         Child Loop BB3_42 Depth 4
                                        #         Child Loop BB3_108 Depth 4
                                        #         Child Loop BB3_117 Depth 4
                                        #         Child Loop BB3_127 Depth 4
                                        #       Child Loop BB3_137 Depth 3
                                        #         Child Loop BB3_145 Depth 4
                                        #         Child Loop BB3_149 Depth 4
                                        #         Child Loop BB3_152 Depth 4
                                        #       Child Loop BB3_158 Depth 3
	move	$s0, $s6
.LBB3_37:                               # %.thread496
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_42 Depth 4
                                        #         Child Loop BB3_108 Depth 4
                                        #         Child Loop BB3_117 Depth 4
                                        #         Child Loop BB3_127 Depth 4
	ori	$a0, $zero, 15
	blt	$a0, $s8, .LBB3_48
# %bb.38:                               # %.lr.ph744.preheader
                                        #   in Loop: Header=BB3_37 Depth=3
	ori	$s4, $zero, 8
	b	.LBB3_42
.LBB3_39:                               #   in Loop: Header=BB3_42 Depth=4
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
.LBB3_40:                               #   in Loop: Header=BB3_42 Depth=4
	ld.d	$s0, $fp, 40
	st.d	$s0, $fp, 48
	add.d	$s1, $s0, $a0
	st.d	$s1, $fp, 56
.LBB3_41:                               #   in Loop: Header=BB3_42 Depth=4
	ld.bu	$a0, $s0, 0
	addi.d	$s6, $s0, 1
	sll.w	$a0, $a0, $s2
	or	$s5, $a0, $s5
	addi.w	$s8, $s2, 8
	move	$s0, $s6
	bge	$s2, $s4, .LBB3_49
.LBB3_42:                               # %.lr.ph744
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        #       Parent Loop BB3_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$s2, $s8
	bltu	$s0, $s1, .LBB3_41
# %bb.43:                               #   in Loop: Header=BB3_42 Depth=4
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_45
# %bb.44:                               #   in Loop: Header=BB3_42 Depth=4
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB3_46
	b	.LBB3_319
.LBB3_45:                               #   in Loop: Header=BB3_42 Depth=4
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB3_319
.LBB3_46:                               #   in Loop: Header=BB3_42 Depth=4
	bnez	$a0, .LBB3_40
# %bb.47:                               #   in Loop: Header=BB3_42 Depth=4
	ld.w	$a0, $fp, 36
	beqz	$a0, .LBB3_39
	b	.LBB3_318
.LBB3_48:                               #   in Loop: Header=BB3_37 Depth=3
	move	$s6, $s0
	ori	$s4, $zero, 8
.LBB3_49:                               # %._crit_edge745
                                        #   in Loop: Header=BB3_37 Depth=3
	andi	$a0, $s5, 511
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 288
	bltu	$a0, $a1, .LBB3_68
# %bb.50:                               # %.preheader514.preheader
                                        #   in Loop: Header=BB3_37 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 15, 7
	slli.d	$a1, $a1, 7
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ori	$a3, $zero, 1151
	bltu	$a3, $a1, .LBB3_321
# %bb.51:                               #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a1, $s5, 9
	bstrpick.d	$a0, $a0, 15, 1
	bstrins.d	$a1, $a0, 63, 1
	slli.d	$a0, $a1, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 288
	bltu	$a0, $a1, .LBB3_69
# %bb.52:                               # %.preheader514.1
                                        #   in Loop: Header=BB3_37 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 15, 7
	slli.d	$a1, $a1, 7
	ori	$a3, $zero, 1151
	bltu	$a3, $a1, .LBB3_321
# %bb.53:                               #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a1, $s5, 10
	bstrpick.d	$a0, $a0, 15, 1
	bstrins.d	$a1, $a0, 63, 1
	slli.d	$a0, $a1, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 288
	bltu	$a0, $a1, .LBB3_69
# %bb.54:                               # %.preheader514.2
                                        #   in Loop: Header=BB3_37 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 15, 7
	slli.d	$a1, $a1, 7
	ori	$a3, $zero, 1151
	bltu	$a3, $a1, .LBB3_321
# %bb.55:                               #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a1, $s5, 11
	bstrpick.d	$a0, $a0, 15, 1
	bstrins.d	$a1, $a0, 63, 1
	slli.d	$a0, $a1, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 288
	bltu	$a0, $a1, .LBB3_69
# %bb.56:                               # %.preheader514.3
                                        #   in Loop: Header=BB3_37 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 15, 7
	slli.d	$a1, $a1, 7
	ori	$a3, $zero, 1151
	bltu	$a3, $a1, .LBB3_321
# %bb.57:                               #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a1, $s5, 12
	bstrpick.d	$a0, $a0, 15, 1
	bstrins.d	$a1, $a0, 63, 1
	slli.d	$a0, $a1, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 288
	bltu	$a0, $a1, .LBB3_69
# %bb.58:                               # %.preheader514.4
                                        #   in Loop: Header=BB3_37 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 15, 7
	slli.d	$a1, $a1, 7
	ori	$a3, $zero, 1151
	bltu	$a3, $a1, .LBB3_321
# %bb.59:                               #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a1, $s5, 13
	bstrpick.d	$a0, $a0, 15, 1
	bstrins.d	$a1, $a0, 63, 1
	slli.d	$a0, $a1, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 288
	bltu	$a0, $a1, .LBB3_69
# %bb.60:                               # %.preheader514.5
                                        #   in Loop: Header=BB3_37 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 15, 7
	slli.d	$a1, $a1, 7
	ori	$a3, $zero, 1151
	bltu	$a3, $a1, .LBB3_321
# %bb.61:                               #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a1, $s5, 14
	bstrpick.d	$a0, $a0, 15, 1
	bstrins.d	$a1, $a0, 63, 1
	slli.d	$a0, $a1, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 288
	bltu	$a0, $a1, .LBB3_69
# %bb.62:                               # %.preheader514.6
                                        #   in Loop: Header=BB3_37 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 15, 7
	slli.d	$a1, $a1, 7
	ori	$a3, $zero, 1151
	bltu	$a3, $a1, .LBB3_321
# %bb.63:                               #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a1, $s5, 15
	bstrpick.d	$a0, $a0, 15, 1
	bstrins.d	$a1, $a0, 63, 1
	slli.d	$a0, $a1, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 288
	bltu	$a0, $a1, .LBB3_69
# %bb.64:                               # %.preheader514.7
                                        #   in Loop: Header=BB3_37 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 15, 7
	slli.d	$a1, $a1, 7
	ori	$a3, $zero, 1151
	bltu	$a3, $a1, .LBB3_321
# %bb.65:                               #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a1, $s5, 16
	bstrpick.d	$a0, $a0, 15, 1
	bstrins.d	$a1, $a0, 63, 1
	slli.d	$a0, $a1, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 288
	bltu	$a0, $a1, .LBB3_69
# %bb.66:                               # %.preheader514.8
                                        #   in Loop: Header=BB3_37 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 15, 7
	slli.d	$a1, $a1, 7
	ori	$a3, $zero, 1151
	bltu	$a3, $a1, .LBB3_321
# %bb.67:                               #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a1, $s5, 17
	bstrpick.d	$a0, $a0, 15, 1
	bstrins.d	$a1, $a0, 63, 1
	slli.d	$a0, $a1, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 287
	bgeu	$a1, $a0, .LBB3_69
	b	.LBB3_333
.LBB3_68:                               #   in Loop: Header=BB3_37 Depth=3
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
.LBB3_69:                               # %.loopexit515
                                        #   in Loop: Header=BB3_37 Depth=3
	ldx.bu	$a1, $a2, $a0
	srl.w	$s5, $s5, $a1
	sub.w	$s8, $s8, $a1
	ori	$a1, $zero, 255
	bgeu	$a1, $a0, .LBB3_133
# %bb.70:                               #   in Loop: Header=BB3_37 Depth=3
	ori	$a1, $zero, 256
	beq	$a0, $a1, .LBB3_314
# %bb.71:                               #   in Loop: Header=BB3_37 Depth=3
	addi.d	$s0, $a0, -257
	ori	$a0, $zero, 29
	bltu	$a0, $s0, .LBB3_323
# %bb.72:                               # %.preheader513
                                        #   in Loop: Header=BB3_37 Depth=3
	pcalau12i	$a0, %pc_hi20(mszip_lit_extrabits)
	addi.d	$a0, $a0, %pc_lo12(mszip_lit_extrabits)
	ldx.bu	$s2, $a0, $s0
	blt	$s8, $s2, .LBB3_108
# %bb.73:                               #   in Loop: Header=BB3_37 Depth=3
	move	$a2, $s6
.LBB3_74:                               # %._crit_edge755
                                        #   in Loop: Header=BB3_37 Depth=3
	slli.d	$a0, $s2, 1
	pcalau12i	$a1, %pc_hi20(mszip_bit_mask_tab)
	addi.d	$s6, $a1, %pc_lo12(mszip_bit_mask_tab)
	ldx.hu	$a0, $s6, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	slli.d	$a0, $s0, 1
	pcalau12i	$a1, %pc_hi20(mszip_lit_lengths)
	addi.d	$a1, $a1, %pc_lo12(mszip_lit_lengths)
	ldx.hu	$a0, $a1, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	sub.w	$a0, $s8, $s2
	srl.w	$s0, $s5, $s2
	ori	$a1, $zero, 15
	bge	$a1, $a0, .LBB3_117
# %bb.75:                               #   in Loop: Header=BB3_37 Depth=3
	move	$a1, $a2
.LBB3_76:                               # %._crit_edge769
                                        #   in Loop: Header=BB3_37 Depth=3
	andi	$a2, $s0, 63
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.hu	$s2, $a3, $a2
	ori	$a4, $zero, 32
	bltu	$s2, $a4, .LBB3_101
# %bb.77:                               # %.preheader512.preheader
                                        #   in Loop: Header=BB3_37 Depth=3
	bstrpick.d	$a2, $s2, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_321
# %bb.78:                               #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a2, $s0, 6
	andi	$a3, $s2, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.hu	$s2, $a3, $a2
	bltu	$s2, $a4, .LBB3_101
# %bb.79:                               # %.preheader512.1
                                        #   in Loop: Header=BB3_37 Depth=3
	bstrpick.d	$a2, $s2, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_321
# %bb.80:                               #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a2, $s0, 7
	andi	$a3, $s2, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.hu	$s2, $a3, $a2
	bltu	$s2, $a4, .LBB3_101
# %bb.81:                               # %.preheader512.2
                                        #   in Loop: Header=BB3_37 Depth=3
	bstrpick.d	$a2, $s2, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_321
# %bb.82:                               #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a2, $s0, 8
	andi	$a3, $s2, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.hu	$s2, $a3, $a2
	bltu	$s2, $a4, .LBB3_101
# %bb.83:                               # %.preheader512.3
                                        #   in Loop: Header=BB3_37 Depth=3
	bstrpick.d	$a2, $s2, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_321
# %bb.84:                               #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a2, $s0, 9
	andi	$a3, $s2, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.hu	$s2, $a3, $a2
	bltu	$s2, $a4, .LBB3_101
# %bb.85:                               # %.preheader512.4
                                        #   in Loop: Header=BB3_37 Depth=3
	bstrpick.d	$a2, $s2, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_321
# %bb.86:                               #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a2, $s0, 10
	andi	$a3, $s2, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.hu	$s2, $a3, $a2
	bltu	$s2, $a4, .LBB3_101
# %bb.87:                               # %.preheader512.5
                                        #   in Loop: Header=BB3_37 Depth=3
	bstrpick.d	$a2, $s2, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_321
# %bb.88:                               #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a2, $s0, 11
	andi	$a3, $s2, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.hu	$s2, $a3, $a2
	bltu	$s2, $a4, .LBB3_101
# %bb.89:                               # %.preheader512.6
                                        #   in Loop: Header=BB3_37 Depth=3
	bstrpick.d	$a2, $s2, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_321
# %bb.90:                               #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a2, $s0, 12
	andi	$a3, $s2, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.hu	$s2, $a3, $a2
	bltu	$s2, $a4, .LBB3_101
# %bb.91:                               # %.preheader512.7
                                        #   in Loop: Header=BB3_37 Depth=3
	bstrpick.d	$a2, $s2, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_321
# %bb.92:                               #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a2, $s0, 13
	andi	$a3, $s2, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.hu	$s2, $a3, $a2
	bltu	$s2, $a4, .LBB3_101
# %bb.93:                               # %.preheader512.8
                                        #   in Loop: Header=BB3_37 Depth=3
	bstrpick.d	$a2, $s2, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_321
# %bb.94:                               #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a2, $s0, 14
	andi	$a3, $s2, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.hu	$s2, $a3, $a2
	bltu	$s2, $a4, .LBB3_101
# %bb.95:                               # %.preheader512.9
                                        #   in Loop: Header=BB3_37 Depth=3
	bstrpick.d	$a2, $s2, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_321
# %bb.96:                               #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a2, $s0, 15
	andi	$a3, $s2, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.hu	$s2, $a3, $a2
	bltu	$s2, $a4, .LBB3_101
# %bb.97:                               # %.preheader512.10
                                        #   in Loop: Header=BB3_37 Depth=3
	bstrpick.d	$a2, $s2, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_321
# %bb.98:                               #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a2, $s0, 16
	andi	$a3, $s2, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.hu	$a2, $a3, $a2
	move	$s2, $a2
	bltu	$a2, $a4, .LBB3_101
# %bb.99:                               # %.preheader512.11
                                        #   in Loop: Header=BB3_37 Depth=3
	bstrpick.d	$a2, $s2, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_321
# %bb.100:                              #   in Loop: Header=BB3_37 Depth=3
	srli.d	$a2, $s0, 17
	andi	$a3, $s2, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.hu	$s2, $a3, $a2
	ori	$a2, $zero, 31
	bltu	$a2, $s2, .LBB3_333
.LBB3_101:                              # %.loopexit
                                        #   in Loop: Header=BB3_37 Depth=3
	ori	$a2, $zero, 31
	beq	$s2, $a2, .LBB3_326
# %bb.102:                              # %.preheader511
                                        #   in Loop: Header=BB3_37 Depth=3
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ldx.bu	$a2, $a2, $s2
	pcalau12i	$a3, %pc_hi20(mszip_dist_extrabits)
	addi.d	$a3, $a3, %pc_lo12(mszip_dist_extrabits)
	ldx.bu	$s6, $a3, $s2
	sub.w	$s7, $a0, $a2
	srl.w	$s4, $s0, $a2
	blt	$s7, $s6, .LBB3_127
# %bb.103:                              #   in Loop: Header=BB3_37 Depth=3
	move	$s0, $a1
.LBB3_104:                              # %._crit_edge779
                                        #   in Loop: Header=BB3_37 Depth=3
	move	$a2, $s2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	and	$a0, $s5, $a0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	add.d	$s2, $a0, $a1
	srl.w	$s5, $s4, $s6
	sub.w	$s8, $s7, $s6
	ori	$a0, $zero, 12
	bgeu	$s2, $a0, .LBB3_135
# %bb.105:                              # %.preheader
                                        #   in Loop: Header=BB3_37 Depth=3
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	beqz	$s2, .LBB3_37
	b	.LBB3_156
	.p2align	4, , 16
.LBB3_106:                              #   in Loop: Header=BB3_108 Depth=4
	ld.d	$s6, $fp, 40
	st.d	$s6, $fp, 48
	add.d	$s1, $s6, $a0
	st.d	$s1, $fp, 56
.LBB3_107:                              #   in Loop: Header=BB3_108 Depth=4
	ld.bu	$a0, $s6, 0
	addi.d	$a2, $s6, 1
	sll.w	$a0, $a0, $s8
	addi.w	$s8, $s8, 8
	or	$s5, $a0, $s5
	move	$s6, $a2
	bge	$s8, $s2, .LBB3_74
.LBB3_108:                              # %.lr.ph754
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        #       Parent Loop BB3_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bltu	$s6, $s1, .LBB3_107
# %bb.109:                              #   in Loop: Header=BB3_108 Depth=4
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_111
# %bb.110:                              #   in Loop: Header=BB3_108 Depth=4
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB3_112
	b	.LBB3_319
.LBB3_111:                              #   in Loop: Header=BB3_108 Depth=4
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB3_319
.LBB3_112:                              #   in Loop: Header=BB3_108 Depth=4
	bnez	$a0, .LBB3_106
# %bb.113:                              #   in Loop: Header=BB3_108 Depth=4
	ld.w	$a0, $fp, 36
	bnez	$a0, .LBB3_318
# %bb.114:                              #   in Loop: Header=BB3_108 Depth=4
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
	b	.LBB3_106
	.p2align	4, , 16
.LBB3_115:                              #   in Loop: Header=BB3_117 Depth=4
	ld.d	$a2, $fp, 40
	st.d	$a2, $fp, 48
	add.d	$s1, $a2, $a0
	st.d	$s1, $fp, 56
.LBB3_116:                              #   in Loop: Header=BB3_117 Depth=4
	ld.bu	$a0, $a2, 0
	addi.d	$a1, $a2, 1
	sll.w	$a0, $a0, $s2
	or	$s0, $a0, $s0
	addi.w	$a0, $s2, 8
	move	$a2, $a1
	bge	$s2, $s4, .LBB3_76
.LBB3_117:                              # %.lr.ph768
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        #       Parent Loop BB3_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	move	$s2, $a0
	bltu	$a2, $s1, .LBB3_116
# %bb.118:                              #   in Loop: Header=BB3_117 Depth=4
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_120
# %bb.119:                              #   in Loop: Header=BB3_117 Depth=4
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB3_121
	b	.LBB3_319
.LBB3_120:                              #   in Loop: Header=BB3_117 Depth=4
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB3_319
.LBB3_121:                              #   in Loop: Header=BB3_117 Depth=4
	bnez	$a0, .LBB3_115
# %bb.122:                              #   in Loop: Header=BB3_117 Depth=4
	ld.w	$a0, $fp, 36
	bnez	$a0, .LBB3_318
# %bb.123:                              #   in Loop: Header=BB3_117 Depth=4
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
	b	.LBB3_115
.LBB3_124:                              #   in Loop: Header=BB3_127 Depth=4
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
.LBB3_125:                              #   in Loop: Header=BB3_127 Depth=4
	ld.d	$a1, $fp, 40
	st.d	$a1, $fp, 48
	add.d	$s1, $a1, $a0
	st.d	$s1, $fp, 56
.LBB3_126:                              #   in Loop: Header=BB3_127 Depth=4
	ld.bu	$a0, $a1, 0
	addi.d	$s0, $a1, 1
	sll.w	$a0, $a0, $s7
	addi.w	$s7, $s7, 8
	or	$s4, $a0, $s4
	move	$a1, $s0
	bge	$s7, $s6, .LBB3_104
.LBB3_127:                              # %.lr.ph778
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        #       Parent Loop BB3_37 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	bltu	$a1, $s1, .LBB3_126
# %bb.128:                              #   in Loop: Header=BB3_127 Depth=4
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_130
# %bb.129:                              #   in Loop: Header=BB3_127 Depth=4
	ld.d	$a0, $a0, 0
	jirl	$ra, $a3, 0
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB3_131
	b	.LBB3_319
.LBB3_130:                              #   in Loop: Header=BB3_127 Depth=4
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB3_319
.LBB3_131:                              #   in Loop: Header=BB3_127 Depth=4
	bnez	$a0, .LBB3_125
# %bb.132:                              #   in Loop: Header=BB3_127 Depth=4
	ld.w	$a0, $fp, 36
	beqz	$a0, .LBB3_124
	b	.LBB3_318
.LBB3_133:                              #   in Loop: Header=BB3_36 Depth=2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	stx.b	$a0, $a3, $a2
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, 8
	bne	$a1, $a0, .LBB3_36
# %bb.134:                              #   in Loop: Header=BB3_36 Depth=2
	ld.d	$a2, $fp, 16
	move	$a0, $fp
	lu12i.w	$a1, 8
	jirl	$ra, $a2, 0
	move	$a1, $a0
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	addi.w	$a0, $zero, -3
	beqz	$a1, .LBB3_36
	b	.LBB3_320
.LBB3_135:                              # %.preheader508.preheader
                                        #   in Loop: Header=BB3_36 Depth=2
	slli.d	$a0, $s6, 1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	slli.d	$a1, $a2, 1
	pcalau12i	$a2, %pc_hi20(mszip_dist_offsets)
	addi.d	$a2, $a2, %pc_lo12(mszip_dist_offsets)
	ldx.hu	$a1, $a2, $a1
	and	$a0, $s4, $a0
	add.d	$a0, $a0, $a1
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	sltu	$a1, $a4, $a0
	slli.d	$a1, $a1, 15
	sub.d	$a0, $a4, $a0
	add.w	$s4, $a0, $a1
	lu12i.w	$a1, 8
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	b	.LBB3_137
.LBB3_136:                              #   in Loop: Header=BB3_137 Depth=3
	add.w	$a0, $s6, $s4
	sub.w	$s2, $s2, $s6
	xor	$a2, $a0, $a1
	sltui	$a2, $a2, 1
	masknez	$s4, $a0, $a2
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	beqz	$s2, .LBB3_162
.LBB3_137:                              # %.preheader508
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_145 Depth 4
                                        #         Child Loop BB3_149 Depth 4
                                        #         Child Loop BB3_152 Depth 4
	add.w	$a0, $s4, $s2
	sltu	$a0, $a1, $a0
	sub.w	$a2, $a1, $s4
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $s2, $a0
	or	$a0, $a2, $a0
	add.w	$a2, $a0, $a4
	sltu	$a3, $a1, $a2
	move	$t2, $a4
	sub.w	$a2, $a1, $a4
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a2, $a3
	or	$s6, $a1, $a0
	addi.w	$a3, $s6, 0
	beqz	$a3, .LBB3_153
# %bb.138:                              # %iter.check
                                        #   in Loop: Header=BB3_137 Depth=3
	bstrpick.d	$a4, $s4, 31, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a4
	bstrpick.d	$a5, $t2, 31, 0
	add.d	$a0, $a0, $a5
	ori	$a2, $zero, 8
	bltu	$a3, $a2, .LBB3_143
# %bb.139:                              # %iter.check
                                        #   in Loop: Header=BB3_137 Depth=3
	sub.d	$a2, $a5, $a4
	ori	$a6, $zero, 32
	bltu	$a2, $a6, .LBB3_142
# %bb.140:                              # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB3_137 Depth=3
	bstrpick.d	$a2, $s6, 31, 0
	bgeu	$a3, $a6, .LBB3_144
# %bb.141:                              #   in Loop: Header=BB3_137 Depth=3
	move	$a6, $zero
	b	.LBB3_148
.LBB3_142:                              #   in Loop: Header=BB3_137 Depth=3
	move	$a3, $s6
	b	.LBB3_152
.LBB3_143:                              #   in Loop: Header=BB3_137 Depth=3
	move	$a3, $s6
	b	.LBB3_152
.LBB3_144:                              # %vector.ph
                                        #   in Loop: Header=BB3_137 Depth=3
	bstrpick.d	$a3, $a2, 31, 5
	slli.d	$a6, $a3, 5
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	add.d	$a3, $a7, $a5
	add.d	$a7, $a7, $a4
	move	$t0, $a6
	.p2align	4, , 16
.LBB3_145:                              # %vector.body
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        #       Parent Loop BB3_137 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $a7, -16
	vld	$vr1, $a7, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$t0, $t0, -32
	addi.d	$a3, $a3, 32
	addi.d	$a7, $a7, 32
	bnez	$t0, .LBB3_145
# %bb.146:                              # %middle.block
                                        #   in Loop: Header=BB3_137 Depth=3
	beq	$a6, $a2, .LBB3_153
# %bb.147:                              # %vec.epilog.iter.check
                                        #   in Loop: Header=BB3_137 Depth=3
	andi	$a3, $a2, 24
	beqz	$a3, .LBB3_151
.LBB3_148:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB3_137 Depth=3
	bstrpick.d	$a3, $a2, 31, 3
	slli.d	$a7, $a3, 3
	alsl.d	$a0, $a3, $a0, 3
	alsl.d	$a1, $a3, $a1, 3
	sub.d	$a3, $s6, $a7
	sub.d	$t0, $a6, $a7
	add.d	$a4, $a6, $a4
	ld.d	$t1, $sp, 160                   # 8-byte Folded Reload
	add.d	$a4, $t1, $a4
	add.d	$a5, $a6, $a5
	add.d	$a5, $t1, $a5
	.p2align	4, , 16
.LBB3_149:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        #       Parent Loop BB3_137 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a6, $a4, 0
	st.d	$a6, $a5, 0
	addi.d	$t0, $t0, 8
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 8
	bnez	$t0, .LBB3_149
# %bb.150:                              # %vec.epilog.middle.block
                                        #   in Loop: Header=BB3_137 Depth=3
	bne	$a7, $a2, .LBB3_152
	b	.LBB3_153
.LBB3_151:                              #   in Loop: Header=BB3_137 Depth=3
	add.d	$a0, $a0, $a6
	add.d	$a1, $a1, $a6
	sub.d	$a3, $s6, $a6
	.p2align	4, , 16
.LBB3_152:                              # %.lr.ph791
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        #       Parent Loop BB3_137 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.b	$a2, $a1, 0
	addi.w	$a3, $a3, -1
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a0, 1
	st.b	$a2, $a0, 0
	move	$a0, $a4
	bnez	$a3, .LBB3_152
.LBB3_153:                              # %._crit_edge792
                                        #   in Loop: Header=BB3_137 Depth=3
	add.w	$t2, $s6, $t2
	lu12i.w	$a1, 8
	st.d	$t2, $sp, 40                    # 8-byte Folded Spill
	bne	$t2, $a1, .LBB3_136
# %bb.154:                              #   in Loop: Header=BB3_137 Depth=3
	ld.d	$a2, $fp, 16
	move	$a0, $fp
	jirl	$ra, $a2, 0
	bnez	$a0, .LBB3_317
# %bb.155:                              #   in Loop: Header=BB3_137 Depth=3
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	lu12i.w	$a1, 8
	b	.LBB3_136
.LBB3_156:                              # %.lr.ph796.preheader
                                        #   in Loop: Header=BB3_36 Depth=2
	slli.d	$a0, $s6, 1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	slli.d	$a1, $a2, 1
	pcalau12i	$a2, %pc_hi20(mszip_dist_offsets)
	addi.d	$a2, $a2, %pc_lo12(mszip_dist_offsets)
	ldx.hu	$a1, $a2, $a1
	and	$a0, $s4, $a0
	add.d	$a0, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	sltu	$a1, $a2, $a0
	slli.d	$a1, $a1, 15
	sub.d	$a0, $a2, $a0
	add.w	$s4, $a0, $a1
	b	.LBB3_158
.LBB3_157:                              #   in Loop: Header=BB3_158 Depth=3
	addi.w	$s2, $s2, -1
	addi.d	$a0, $s4, 1
	bstrpick.d	$s4, $a0, 14, 0
	beqz	$s2, .LBB3_161
.LBB3_158:                              # %.lr.ph796
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$a0, $s4, 31, 0
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ldx.b	$a0, $a3, $a0
	addi.w	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	stx.b	$a0, $a3, $a2
	move	$a2, $a1
	lu12i.w	$a0, 8
	bne	$a1, $a0, .LBB3_157
# %bb.159:                              #   in Loop: Header=BB3_158 Depth=3
	ld.d	$a2, $fp, 16
	move	$a0, $fp
	lu12i.w	$a1, 8
	jirl	$ra, $a2, 0
	bnez	$a0, .LBB3_317
# %bb.160:                              #   in Loop: Header=BB3_158 Depth=3
	move	$a2, $zero
	b	.LBB3_157
.LBB3_161:                              #   in Loop: Header=BB3_36 Depth=2
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	move	$s6, $s0
	b	.LBB3_36
.LBB3_162:                              #   in Loop: Header=BB3_36 Depth=2
	move	$s6, $s0
	b	.LBB3_36
	.p2align	4, , 16
.LBB3_163:                              #   in Loop: Header=BB3_1 Depth=1
	st.d	$s6, $fp, 48
	st.d	$s1, $fp, 56
	st.w	$s5, $fp, 80
	st.w	$s8, $fp, 84
	ori	$a0, $zero, 4
	bltu	$a0, $s8, .LBB3_202
# %bb.164:                              # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB3_1 Depth=1
	addi.d	$s0, $a1, -10
	b	.LBB3_168
.LBB3_165:                              #   in Loop: Header=BB3_168 Depth=2
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
.LBB3_166:                              #   in Loop: Header=BB3_168 Depth=2
	ld.d	$s6, $fp, 40
	st.d	$s6, $fp, 48
	add.d	$s1, $s6, $a0
	st.d	$s1, $fp, 56
.LBB3_167:                              #   in Loop: Header=BB3_168 Depth=2
	ld.bu	$a0, $s6, 0
	addi.w	$s0, $s0, 8
	addi.d	$s6, $s6, 1
	sll.w	$a0, $a0, $s0
	addi.w	$a1, $zero, -3
	or	$s5, $a0, $s5
	bge	$s0, $a1, .LBB3_201
.LBB3_168:                              # %.lr.ph.i
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$s6, $s1, .LBB3_167
# %bb.169:                              #   in Loop: Header=BB3_168 Depth=2
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_171
# %bb.170:                              #   in Loop: Header=BB3_168 Depth=2
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB3_172
	b	.LBB3_319
.LBB3_171:                              #   in Loop: Header=BB3_168 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB3_319
.LBB3_172:                              #   in Loop: Header=BB3_168 Depth=2
	bnez	$a0, .LBB3_166
# %bb.173:                              #   in Loop: Header=BB3_168 Depth=2
	ld.w	$a0, $fp, 36
	beqz	$a0, .LBB3_165
	b	.LBB3_318
.LBB3_174:                              #   in Loop: Header=BB3_1 Depth=1
	move	$s0, $zero
.LBB3_175:                              # %.lr.ph810.preheader
                                        #   in Loop: Header=BB3_1 Depth=1
	lu12i.w	$s8, 8
	b	.LBB3_179
.LBB3_176:                              #   in Loop: Header=BB3_179 Depth=2
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
.LBB3_177:                              #   in Loop: Header=BB3_179 Depth=2
	ld.d	$s6, $fp, 40
	st.d	$s6, $fp, 48
	add.d	$s1, $s6, $a0
	st.d	$s1, $fp, 56
.LBB3_178:                              #   in Loop: Header=BB3_179 Depth=2
	ld.b	$a0, $s6, 0
	addi.d	$s6, $s6, 1
	addi.d	$a1, $s0, 1
	stx.b	$a0, $s0, $s4
	move	$s0, $a1
	ori	$a0, $zero, 4
	beq	$a1, $a0, .LBB3_185
.LBB3_179:                              # %.lr.ph810
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$s6, $s1, .LBB3_178
# %bb.180:                              #   in Loop: Header=BB3_179 Depth=2
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_182
# %bb.181:                              #   in Loop: Header=BB3_179 Depth=2
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB3_183
	b	.LBB3_319
.LBB3_182:                              #   in Loop: Header=BB3_179 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB3_319
.LBB3_183:                              #   in Loop: Header=BB3_179 Depth=2
	bnez	$a0, .LBB3_177
# %bb.184:                              #   in Loop: Header=BB3_179 Depth=2
	ld.w	$a0, $fp, 36
	beqz	$a0, .LBB3_176
	b	.LBB3_318
.LBB3_185:                              # %._crit_edge811.loopexit
                                        #   in Loop: Header=BB3_1 Depth=1
	ld.bu	$a0, $sp, 176
.LBB3_186:                              # %._crit_edge811
                                        #   in Loop: Header=BB3_1 Depth=1
	ld.bu	$a1, $sp, 177
	ld.hu	$a2, $sp, 178
	slli.d	$a1, $a1, 8
	or	$s0, $a1, $a0
	xor	$a0, $a2, $s0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB3_327
# %bb.187:                              # %.preheader516
                                        #   in Loop: Header=BB3_1 Depth=1
	bnez	$s0, .LBB3_191
.LBB3_188:                              # %._crit_edge819
                                        #   in Loop: Header=BB3_1 Depth=1
	move	$s8, $zero
	move	$s0, $s6
	andi	$a0, $s3, 1
	beqz	$a0, .LBB3_1
	b	.LBB3_315
	.p2align	4, , 16
.LBB3_189:                              #   in Loop: Header=BB3_191 Depth=2
	st.w	$zero, $fp, 12
.LBB3_190:                              #   in Loop: Header=BB3_191 Depth=2
	sub.w	$s0, $s0, $s2
	add.d	$s6, $s6, $s7
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	beqz	$s0, .LBB3_188
.LBB3_191:                              # %.lr.ph818
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$s6, $s1, .LBB3_199
# %bb.192:                              #   in Loop: Header=BB3_191 Depth=2
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_194
# %bb.193:                              #   in Loop: Header=BB3_191 Depth=2
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB3_195
	b	.LBB3_319
.LBB3_194:                              #   in Loop: Header=BB3_191 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB3_319
.LBB3_195:                              #   in Loop: Header=BB3_191 Depth=2
	bnez	$a0, .LBB3_198
# %bb.196:                              #   in Loop: Header=BB3_191 Depth=2
	ld.w	$a0, $fp, 36
	bnez	$a0, .LBB3_318
# %bb.197:                              #   in Loop: Header=BB3_191 Depth=2
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
.LBB3_198:                              #   in Loop: Header=BB3_191 Depth=2
	ld.d	$s6, $fp, 40
	st.d	$s6, $fp, 48
	add.d	$s1, $s6, $a0
	st.d	$s1, $fp, 56
.LBB3_199:                              #   in Loop: Header=BB3_191 Depth=2
	sub.w	$a0, $s1, $s6
	addi.w	$a1, $s0, 0
	sltu	$a2, $a1, $a0
	ld.wu	$s4, $fp, 12
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	sub.w	$a1, $s8, $s4
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s4
	bstrpick.d	$s7, $s2, 31, 0
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	add.w	$a0, $s2, $s4
	st.w	$a0, $fp, 12
	bne	$a0, $s8, .LBB3_190
# %bb.200:                              #   in Loop: Header=BB3_191 Depth=2
	ld.d	$a2, $fp, 16
	move	$a0, $fp
	move	$a1, $s8
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB3_189
	b	.LBB3_317
.LBB3_201:                              # %._crit_edge.i.loopexit
                                        #   in Loop: Header=BB3_1 Depth=1
	addi.w	$s8, $s0, 8
.LBB3_202:                              # %._crit_edge.i
                                        #   in Loop: Header=BB3_1 Depth=1
	bstrpick.d	$s0, $s5, 31, 5
	ori	$a0, $zero, 9
	bltu	$a0, $s8, .LBB3_213
# %bb.203:                              # %.lr.ph441.i.preheader
                                        #   in Loop: Header=BB3_1 Depth=1
	addi.d	$s2, $s8, -13
	b	.LBB3_207
.LBB3_204:                              #   in Loop: Header=BB3_207 Depth=2
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
.LBB3_205:                              #   in Loop: Header=BB3_207 Depth=2
	ld.d	$s6, $fp, 40
	st.d	$s6, $fp, 48
	add.d	$s1, $s6, $a0
	st.d	$s1, $fp, 56
.LBB3_206:                              #   in Loop: Header=BB3_207 Depth=2
	ld.bu	$a0, $s6, 0
	addi.w	$s2, $s2, 8
	addi.d	$s6, $s6, 1
	sll.w	$a0, $a0, $s2
	addi.w	$a1, $zero, -3
	or	$s0, $a0, $s0
	bge	$s2, $a1, .LBB3_224
.LBB3_207:                              # %.lr.ph441.i
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$s6, $s1, .LBB3_206
# %bb.208:                              #   in Loop: Header=BB3_207 Depth=2
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_210
# %bb.209:                              #   in Loop: Header=BB3_207 Depth=2
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB3_211
	b	.LBB3_319
.LBB3_210:                              #   in Loop: Header=BB3_207 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB3_319
.LBB3_211:                              #   in Loop: Header=BB3_207 Depth=2
	bnez	$a0, .LBB3_205
# %bb.212:                              #   in Loop: Header=BB3_207 Depth=2
	ld.w	$a0, $fp, 36
	beqz	$a0, .LBB3_204
	b	.LBB3_318
.LBB3_213:                              #   in Loop: Header=BB3_1 Depth=1
	addi.w	$a0, $s8, -5
	bstrpick.d	$s4, $s0, 31, 5
	ori	$a1, $zero, 8
	blt	$a1, $a0, .LBB3_225
.LBB3_214:                              # %.lr.ph452.i.preheader
                                        #   in Loop: Header=BB3_1 Depth=1
	addi.d	$s2, $a0, -13
	b	.LBB3_217
	.p2align	4, , 16
.LBB3_215:                              #   in Loop: Header=BB3_217 Depth=2
	ld.d	$s6, $fp, 40
	st.d	$s6, $fp, 48
	add.d	$s1, $s6, $a0
	st.d	$s1, $fp, 56
.LBB3_216:                              #   in Loop: Header=BB3_217 Depth=2
	ld.bu	$a0, $s6, 0
	addi.w	$s2, $s2, 8
	addi.d	$s6, $s6, 1
	sll.w	$a0, $a0, $s2
	addi.w	$a1, $zero, -4
	or	$s4, $a0, $s4
	bge	$s2, $a1, .LBB3_226
.LBB3_217:                              # %.lr.ph452.i
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$s6, $s1, .LBB3_216
# %bb.218:                              #   in Loop: Header=BB3_217 Depth=2
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_220
# %bb.219:                              #   in Loop: Header=BB3_217 Depth=2
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB3_221
	b	.LBB3_319
.LBB3_220:                              #   in Loop: Header=BB3_217 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB3_319
.LBB3_221:                              #   in Loop: Header=BB3_217 Depth=2
	bnez	$a0, .LBB3_215
# %bb.222:                              #   in Loop: Header=BB3_217 Depth=2
	ld.w	$a0, $fp, 36
	bnez	$a0, .LBB3_318
# %bb.223:                              #   in Loop: Header=BB3_217 Depth=2
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
	b	.LBB3_215
.LBB3_224:                              # %._crit_edge442.i.loopexit
                                        #   in Loop: Header=BB3_1 Depth=1
	addi.w	$a0, $s2, 8
	bstrpick.d	$s4, $s0, 31, 5
	ori	$a1, $zero, 8
	bge	$a1, $a0, .LBB3_214
.LBB3_225:                              #   in Loop: Header=BB3_1 Depth=1
	addi.d	$a0, $a0, -5
	b	.LBB3_227
.LBB3_226:                              # %._crit_edge453.i.loopexit
                                        #   in Loop: Header=BB3_1 Depth=1
	addi.d	$a0, $s2, 8
.LBB3_227:                              # %._crit_edge453.i
                                        #   in Loop: Header=BB3_1 Depth=1
	move	$s2, $zero
	andi	$a1, $s5, 31
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	addi.d	$a1, $a1, 257
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	andi	$a1, $s0, 31
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	andi	$s0, $s4, 15
	bstrpick.d	$s5, $s4, 31, 4
	addi.w	$s8, $a0, -4
	addi.d	$s4, $s0, 4
	b	.LBB3_229
	.p2align	4, , 16
.LBB3_228:                              # %._crit_edge463.i
                                        #   in Loop: Header=BB3_229 Depth=2
	pcalau12i	$a0, %pc_hi20(mszip_bitlen_order)
	addi.d	$a0, $a0, %pc_lo12(mszip_bitlen_order)
	ldx.bu	$a1, $a0, $s2
	andi	$a2, $s5, 7
	addi.d	$a3, $sp, 501
	stx.b	$a2, $a1, $a3
	bstrpick.d	$s5, $s5, 31, 3
	addi.d	$s2, $s2, 1
	addi.w	$s8, $s8, -3
	beq	$s2, $s4, .LBB3_241
.LBB3_229:                              # %.preheader307.i
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_232 Depth 3
	ori	$a0, $zero, 2
	bge	$a0, $s8, .LBB3_232
	b	.LBB3_228
	.p2align	4, , 16
.LBB3_230:                              #   in Loop: Header=BB3_232 Depth=3
	ld.d	$s6, $fp, 40
	st.d	$s6, $fp, 48
	add.d	$s1, $s6, $a0
	st.d	$s1, $fp, 56
.LBB3_231:                              #   in Loop: Header=BB3_232 Depth=3
	ld.bu	$a0, $s6, 0
	addi.d	$s6, $s6, 1
	sll.w	$a0, $a0, $s7
	or	$s5, $a0, $s5
	addi.w	$a0, $zero, -5
	addi.w	$s8, $s7, 8
	bge	$s7, $a0, .LBB3_228
.LBB3_232:                              # %.lr.ph462.i
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_229 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s7, $s8
	bltu	$s6, $s1, .LBB3_231
# %bb.233:                              #   in Loop: Header=BB3_232 Depth=3
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_235
# %bb.234:                              #   in Loop: Header=BB3_232 Depth=3
	ld.d	$a0, $a0, 0
	jirl	$ra, $a3, 0
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB3_236
	b	.LBB3_319
.LBB3_235:                              #   in Loop: Header=BB3_232 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB3_319
.LBB3_236:                              #   in Loop: Header=BB3_232 Depth=3
	bnez	$a0, .LBB3_230
# %bb.237:                              #   in Loop: Header=BB3_232 Depth=3
	ld.w	$a0, $fp, 36
	bnez	$a0, .LBB3_318
# %bb.238:                              #   in Loop: Header=BB3_232 Depth=3
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
	b	.LBB3_230
.LBB3_239:                              # %.lr.ph803.3
                                        #   in Loop: Header=BB3_1 Depth=1
	st.b	$a0, $sp, 179
	ori	$a0, $zero, 32
	bne	$s8, $a0, .LBB3_329
# %bb.240:                              #   in Loop: Header=BB3_1 Depth=1
	andi	$a0, $s5, 255
	move	$s5, $zero
	lu12i.w	$s8, 8
	b	.LBB3_186
.LBB3_241:                              # %.preheader306.i
                                        #   in Loop: Header=BB3_1 Depth=1
	ori	$a2, $zero, 15
	beq	$s0, $a2, .LBB3_243
	.p2align	4, , 16
.LBB3_242:                              # %.lr.ph474.i
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $a0, $s0
	ld.bu	$a1, $a1, 4
	addi.d	$s0, $s0, 1
	stx.b	$zero, $a1, $a3
	bne	$s0, $a2, .LBB3_242
.LBB3_243:                              # %._crit_edge475.i
                                        #   in Loop: Header=BB3_1 Depth=1
	ori	$a0, $zero, 19
	ori	$a1, $zero, 7
	addi.d	$a2, $sp, 501
	addi.d	$a3, $sp, 520
	pcaddu18i	$ra, %call36(mszip_make_decode_table)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	addi.d	$s4, $sp, 176
	bnez	$a0, .LBB3_330
# %bb.244:                              # %.preheader304.i
                                        #   in Loop: Header=BB3_1 Depth=1
	move	$s0, $zero
	move	$a2, $zero
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
.LBB3_245:                              # %.preheader303.i
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_251 Depth 3
                                        #       Child Loop BB3_266 Depth 3
                                        #       Child Loop BB3_279 Depth 3
                                        #       Child Loop BB3_297 Depth 3
                                        #       Child Loop BB3_293 Depth 3
                                        #       Child Loop BB3_306 Depth 3
	st.d	$a2, $sp, 0                     # 8-byte Folded Spill
	ori	$a0, $zero, 6
	bge	$a0, $s8, .LBB3_251
# %bb.246:                              #   in Loop: Header=BB3_245 Depth=2
	move	$a2, $s6
.LBB3_247:                              # %._crit_edge481.i
                                        #   in Loop: Header=BB3_245 Depth=2
	andi	$a0, $s5, 127
	slli.d	$a0, $a0, 1
	addi.d	$a1, $sp, 520
	ldx.hu	$a1, $a0, $a1
	addi.d	$a0, $sp, 501
	ldx.bu	$a0, $a1, $a0
	srl.w	$s5, $s5, $a0
	sub.w	$s8, $s8, $a0
	ori	$a0, $zero, 15
	bltu	$a0, $a1, .LBB3_258
# %bb.248:                              #   in Loop: Header=BB3_245 Depth=2
	bstrpick.d	$a0, $s0, 31, 0
	stx.b	$a1, $a0, $s4
	addi.w	$a3, $s0, 1
	move	$s6, $a2
	b	.LBB3_308
.LBB3_249:                              #   in Loop: Header=BB3_251 Depth=3
	ld.d	$s6, $fp, 40
	st.d	$s6, $fp, 48
	add.d	$s1, $s6, $a0
	st.d	$s1, $fp, 56
.LBB3_250:                              #   in Loop: Header=BB3_251 Depth=3
	ld.bu	$a0, $s6, 0
	addi.d	$a2, $s6, 1
	sll.w	$a0, $a0, $s2
	or	$s5, $a0, $s5
	addi.w	$a0, $zero, -1
	addi.w	$s8, $s2, 8
	move	$s6, $a2
	bge	$s2, $a0, .LBB3_247
.LBB3_251:                              # %.lr.ph480.i
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_245 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s2, $s8
	bltu	$s6, $s1, .LBB3_250
# %bb.252:                              #   in Loop: Header=BB3_251 Depth=3
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_254
# %bb.253:                              #   in Loop: Header=BB3_251 Depth=3
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB3_255
	b	.LBB3_319
.LBB3_254:                              #   in Loop: Header=BB3_251 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB3_319
.LBB3_255:                              #   in Loop: Header=BB3_251 Depth=3
	bnez	$a0, .LBB3_249
# %bb.256:                              #   in Loop: Header=BB3_251 Depth=3
	ld.w	$a0, $fp, 36
	bnez	$a0, .LBB3_318
# %bb.257:                              #   in Loop: Header=BB3_251 Depth=3
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
	b	.LBB3_249
.LBB3_258:                              #   in Loop: Header=BB3_245 Depth=2
	ori	$a0, $zero, 16
	beq	$a1, $a0, .LBB3_286
# %bb.259:                              #   in Loop: Header=BB3_245 Depth=2
	ori	$a0, $zero, 17
	beq	$a1, $a0, .LBB3_273
# %bb.260:                              #   in Loop: Header=BB3_245 Depth=2
	ori	$a0, $zero, 18
	bne	$a1, $a0, .LBB3_332
# %bb.261:                              # %.preheader302.i
                                        #   in Loop: Header=BB3_245 Depth=2
	ori	$a0, $zero, 6
	bge	$a0, $s8, .LBB3_266
.LBB3_262:                              # %._crit_edge491.i
                                        #   in Loop: Header=BB3_245 Depth=2
	move	$a0, $zero
	andi	$a1, $s5, 127
	bstrpick.d	$s5, $s5, 31, 7
	addi.w	$s8, $s8, -7
	addi.d	$a1, $a1, 11
	b	.LBB3_275
.LBB3_263:                              #   in Loop: Header=BB3_266 Depth=3
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
.LBB3_264:                              #   in Loop: Header=BB3_266 Depth=3
	ld.d	$a2, $fp, 40
	st.d	$a2, $fp, 48
	add.d	$s1, $a2, $a0
	st.d	$s1, $fp, 56
.LBB3_265:                              #   in Loop: Header=BB3_266 Depth=3
	ld.bu	$a0, $a2, 0
	addi.d	$a2, $a2, 1
	sll.w	$a0, $a0, $s2
	or	$s5, $a0, $s5
	addi.w	$a0, $zero, -1
	addi.w	$s8, $s2, 8
	bge	$s2, $a0, .LBB3_262
.LBB3_266:                              # %.lr.ph490.i
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_245 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s2, $s8
	bltu	$a2, $s1, .LBB3_265
# %bb.267:                              #   in Loop: Header=BB3_266 Depth=3
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_269
# %bb.268:                              #   in Loop: Header=BB3_266 Depth=3
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	b	.LBB3_270
.LBB3_269:                              #   in Loop: Header=BB3_266 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB3_270:                              #   in Loop: Header=BB3_266 Depth=3
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB3_319
# %bb.271:                              #   in Loop: Header=BB3_266 Depth=3
	bnez	$a0, .LBB3_264
# %bb.272:                              #   in Loop: Header=BB3_266 Depth=3
	ld.w	$a0, $fp, 36
	beqz	$a0, .LBB3_263
	b	.LBB3_318
.LBB3_273:                              # %.preheader301.i
                                        #   in Loop: Header=BB3_245 Depth=2
	ori	$a0, $zero, 2
	bge	$a0, $s8, .LBB3_279
.LBB3_274:                              # %._crit_edge501.i
                                        #   in Loop: Header=BB3_245 Depth=2
	move	$a0, $zero
	andi	$a1, $s5, 7
	bstrpick.d	$s5, $s5, 31, 3
	addi.w	$s8, $s8, -3
	addi.d	$a1, $a1, 3
.LBB3_275:                              #   in Loop: Header=BB3_245 Depth=2
	move	$s6, $a2
	ld.d	$t0, $sp, 0                     # 8-byte Folded Reload
	b	.LBB3_289
.LBB3_276:                              #   in Loop: Header=BB3_279 Depth=3
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
.LBB3_277:                              #   in Loop: Header=BB3_279 Depth=3
	ld.d	$a2, $fp, 40
	st.d	$a2, $fp, 48
	add.d	$s1, $a2, $a0
	st.d	$s1, $fp, 56
.LBB3_278:                              #   in Loop: Header=BB3_279 Depth=3
	ld.bu	$a0, $a2, 0
	addi.d	$a2, $a2, 1
	sll.w	$a0, $a0, $s2
	or	$s5, $a0, $s5
	addi.w	$a0, $zero, -5
	addi.w	$s8, $s2, 8
	bge	$s2, $a0, .LBB3_274
.LBB3_279:                              # %.lr.ph500.i
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_245 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s2, $s8
	bltu	$a2, $s1, .LBB3_278
# %bb.280:                              #   in Loop: Header=BB3_279 Depth=3
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_282
# %bb.281:                              #   in Loop: Header=BB3_279 Depth=3
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	b	.LBB3_283
.LBB3_282:                              #   in Loop: Header=BB3_279 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB3_283:                              #   in Loop: Header=BB3_279 Depth=3
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB3_319
# %bb.284:                              #   in Loop: Header=BB3_279 Depth=3
	bnez	$a0, .LBB3_277
# %bb.285:                              #   in Loop: Header=BB3_279 Depth=3
	ld.w	$a0, $fp, 36
	beqz	$a0, .LBB3_276
	b	.LBB3_318
.LBB3_286:                              # %.preheader300.i
                                        #   in Loop: Header=BB3_245 Depth=2
	ori	$a0, $zero, 1
	bge	$a0, $s8, .LBB3_297
# %bb.287:                              #   in Loop: Header=BB3_245 Depth=2
	move	$s6, $a2
.LBB3_288:                              # %._crit_edge511.i
                                        #   in Loop: Header=BB3_245 Depth=2
	andi	$a0, $s5, 3
	bstrpick.d	$s5, $s5, 31, 2
	addi.w	$s8, $s8, -2
	addi.d	$a1, $a0, 3
	ld.d	$t0, $sp, 0                     # 8-byte Folded Reload
	move	$a0, $t0
.LBB3_289:                              #   in Loop: Header=BB3_245 Depth=2
	add.w	$a2, $a1, $s0
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	bltu	$a3, $a2, .LBB3_331
# %bb.290:                              # %.preheader.i.preheader
                                        #   in Loop: Header=BB3_245 Depth=2
	ori	$a2, $zero, 32
	bltu	$a1, $a2, .LBB3_305
# %bb.291:                              # %.preheader.i.preheader
                                        #   in Loop: Header=BB3_245 Depth=2
	sub.d	$a2, $zero, $a1
	bltu	$a2, $s0, .LBB3_305
# %bb.292:                              # %vector.ph1251
                                        #   in Loop: Header=BB3_245 Depth=2
	andi	$a4, $a1, 224
	andi	$a2, $a1, 31
	add.w	$a3, $s0, $a4
	vreplgr2vr.b	$vr0, $a0
	move	$a5, $a4
.LBB3_293:                              # %vector.body1254
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_245 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$a6, $s0, 31, 0
	add.d	$a7, $s4, $a6
	vstx	$vr0, $a6, $s4
	vst	$vr0, $a7, 16
	addi.w	$a5, $a5, -32
	addi.w	$s0, $s0, 32
	bnez	$a5, .LBB3_293
# %bb.294:                              # %middle.block1257
                                        #   in Loop: Header=BB3_245 Depth=2
	bne	$a1, $a4, .LBB3_306
	b	.LBB3_307
.LBB3_295:                              #   in Loop: Header=BB3_297 Depth=3
	ld.d	$a2, $fp, 40
	st.d	$a2, $fp, 48
	add.d	$s1, $a2, $a0
	st.d	$s1, $fp, 56
.LBB3_296:                              #   in Loop: Header=BB3_297 Depth=3
	ld.bu	$a0, $a2, 0
	addi.d	$s6, $a2, 1
	sll.w	$a0, $a0, $s2
	or	$s5, $a0, $s5
	addi.w	$a0, $zero, -6
	addi.w	$s8, $s2, 8
	move	$a2, $s6
	bge	$s2, $a0, .LBB3_288
.LBB3_297:                              # %.lr.ph510.i
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_245 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s2, $s8
	bltu	$a2, $s1, .LBB3_296
# %bb.298:                              #   in Loop: Header=BB3_297 Depth=3
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_300
# %bb.299:                              #   in Loop: Header=BB3_297 Depth=3
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	b	.LBB3_301
.LBB3_300:                              #   in Loop: Header=BB3_297 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB3_301:                              #   in Loop: Header=BB3_297 Depth=3
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB3_319
# %bb.302:                              #   in Loop: Header=BB3_297 Depth=3
	bnez	$a0, .LBB3_295
# %bb.303:                              #   in Loop: Header=BB3_297 Depth=3
	ld.w	$a0, $fp, 36
	bnez	$a0, .LBB3_318
# %bb.304:                              #   in Loop: Header=BB3_297 Depth=3
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
	b	.LBB3_295
.LBB3_305:                              #   in Loop: Header=BB3_245 Depth=2
	move	$a2, $a1
	move	$a3, $s0
	.p2align	4, , 16
.LBB3_306:                              # %.preheader.i
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_245 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$a2, $a2, -1
	bstrpick.d	$a1, $a3, 31, 0
	addi.w	$a3, $a3, 1
	stx.b	$a0, $a1, $s4
	bnez	$a2, .LBB3_306
.LBB3_307:                              #   in Loop: Header=BB3_245 Depth=2
	move	$a1, $t0
.LBB3_308:                              # %.loopexit.i
                                        #   in Loop: Header=BB3_245 Depth=2
	move	$s0, $a3
	move	$a2, $a1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	bltu	$a3, $a0, .LBB3_245
# %bb.309:                              #   in Loop: Header=BB3_1 Depth=1
	addi.d	$a1, $sp, 176
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	move	$a0, $s0
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 31
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB3_311
# %bb.310:                              # %.lr.ph526.preheader.i
                                        #   in Loop: Header=BB3_1 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	move	$a2, $a1
	ori	$a1, $zero, 30
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, 1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB3_311:                              # %._crit_edge527.i
                                        #   in Loop: Header=BB3_1 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.d	$a1, $s4, $a0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 31
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	beq	$a2, $a0, .LBB3_313
# %bb.312:                              # %.lr.ph530.preheader.i
                                        #   in Loop: Header=BB3_1 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	ori	$a1, $zero, 30
	sub.d	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 31, 0
	addi.d	$a2, $a1, 1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB3_313:                              #   in Loop: Header=BB3_1 Depth=1
	st.d	$s6, $fp, 48
	st.d	$s1, $fp, 56
	st.w	$s5, $fp, 80
	st.w	$s8, $fp, 84
	b	.LBB3_33
.LBB3_314:                              #   in Loop: Header=BB3_1 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.w	$a0, $fp, 12
	move	$s0, $s6
	andi	$a0, $s3, 1
	beqz	$a0, .LBB3_1
.LBB3_315:
	ld.w	$a1, $fp, 12
	beqz	$a1, .LBB3_328
# %bb.316:
	ld.d	$a2, $fp, 16
	move	$a0, $fp
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB3_328
.LBB3_317:
	addi.w	$a0, $zero, -3
	b	.LBB3_320
.LBB3_318:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB3_319:
	addi.w	$a0, $zero, -123
	move	$a1, $a0
	lu32i.d	$a1, 0
	st.w	$a1, $fp, 24
.LBB3_320:                              # %.thread501
	ld.d	$s8, $sp, 776                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 784                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 792                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 800                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 808                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 816                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 824                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 832                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 840                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 848                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 856                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 864
	ret
.LBB3_321:                              # %split
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
.LBB3_322:                              # %.thread501
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -14
	b	.LBB3_320
.LBB3_323:
	addi.w	$a0, $zero, -11
	b	.LBB3_320
.LBB3_324:
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	b	.LBB3_320
.LBB3_325:
	addi.w	$a0, $zero, -8
	b	.LBB3_320
.LBB3_326:
	addi.w	$a0, $zero, -12
	b	.LBB3_320
.LBB3_327:
	addi.w	$a0, $zero, -2
	b	.LBB3_320
.LBB3_328:
	move	$a0, $zero
	st.d	$s0, $fp, 48
	st.d	$s1, $fp, 56
	st.w	$s5, $fp, 80
	st.w	$s8, $fp, 84
	b	.LBB3_320
.LBB3_329:
	addi.w	$a0, $zero, -4
	b	.LBB3_320
.LBB3_330:
	addi.w	$a0, $zero, -6
	b	.LBB3_320
.LBB3_331:
	addi.w	$a0, $zero, -9
	b	.LBB3_320
.LBB3_332:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -10
	b	.LBB3_320
.LBB3_333:
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	b	.LBB3_322
.Lfunc_end3:
	.size	mszip_inflate, .Lfunc_end3-mszip_inflate
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_27-.LJTI3_0
	.word	.LBB3_32-.LJTI3_0
	.word	.LBB3_163-.LJTI3_0
	.word	.LBB3_320-.LJTI3_0
                                        # -- End function
	.text
	.globl	mszip_free                      # -- Begin function mszip_free
	.p2align	5
	.type	mszip_free,@function
mszip_free:                             # @mszip_free
# %bb.0:
	beqz	$a0, .LBB4_2
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a1, $a0, 40
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB4_2:
	ret
.Lfunc_end4:
	.size	mszip_free, .Lfunc_end4-mszip_free
                                        # -- End function
	.globl	lzx_init                        # -- Begin function lzx_init
	.p2align	5
	.type	lzx_init,@function
lzx_init:                               # @lzx_init
# %bb.0:
	addi.d	$sp, $sp, -112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a2
	addi.w	$a2, $a2, -22
	addi.w	$t0, $zero, -7
	bltu	$a2, $t0, .LBB5_11
# %bb.1:
	addi.w	$s0, $a4, 1
	bstrins.d	$s0, $zero, 0, 0
	beqz	$s0, .LBB5_11
# %bb.2:
	move	$s6, $a0
	move	$s5, $a1
	move	$s4, $a5
	st.d	$a6, $sp, 0                     # 8-byte Folded Spill
	st.d	$a7, $sp, 8                     # 8-byte Folded Spill
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$s2, 13
	ori	$a1, $s2, 1648
	ori	$a0, $zero, 1
	ori	$s7, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_11
# %bb.3:                                # %.peel.next
	move	$a1, $zero
	ori	$a2, $zero, 1
	sll.w	$s1, $a2, $fp
	ori	$a2, $s2, 1632
	add.d	$s2, $a0, $a2
	lu12i.w	$s8, 5
	ori	$a2, $s8, 1577
	add.d	$a2, $a0, $a2
	ori	$a3, $s8, 1580
	stx.b	$s7, $a0, $a3
	ori	$a3, $zero, 513
	st.h	$a3, $a2, 4
	ori	$a3, $zero, 2
	st.b	$a3, $a2, 6
	ori	$a3, $s8, 1584
	ori	$a4, $zero, 3
	stx.b	$a4, $a0, $a3
	ori	$a3, $zero, 1027
	st.h	$a3, $a2, 8
	ori	$a3, $zero, 4
	st.b	$a3, $a2, 10
	ori	$a3, $s8, 1588
	ori	$a4, $zero, 5
	stx.b	$a4, $a0, $a3
	ori	$a3, $zero, 1541
	st.h	$a3, $a2, 12
	ori	$a3, $zero, 6
	st.b	$a3, $a2, 14
	ori	$a3, $s8, 1592
	ori	$a4, $zero, 7
	stx.b	$a4, $a0, $a3
	ori	$a3, $zero, 2055
	st.h	$a3, $a2, 16
	ori	$a3, $zero, 8
	st.b	$a3, $a2, 18
	ori	$a3, $s8, 1596
	ori	$a4, $zero, 9
	stx.b	$a4, $a0, $a3
	ori	$a3, $zero, 2569
	st.h	$a3, $a2, 20
	ori	$a3, $zero, 10
	st.b	$a3, $a2, 22
	ori	$a3, $s8, 1600
	ori	$a4, $zero, 11
	stx.b	$a4, $a0, $a3
	ori	$a3, $zero, 3083
	st.h	$a3, $a2, 24
	ori	$a3, $zero, 12
	st.b	$a3, $a2, 26
	ori	$a3, $s8, 1604
	ori	$a4, $zero, 13
	stx.b	$a4, $a0, $a3
	ori	$a3, $zero, 3597
	st.h	$a3, $a2, 28
	ori	$a3, $zero, 14
	st.b	$a3, $a2, 30
	ori	$a3, $s8, 1608
	ori	$a4, $zero, 15
	stx.b	$a4, $a0, $a3
	lu12i.w	$a4, 1
	ori	$a3, $a4, 15
	st.h	$a3, $a2, 32
	ori	$a3, $zero, 16
	st.b	$a3, $a2, 34
	ori	$a3, $s8, 1612
	ori	$a5, $zero, 17
	stx.b	$a5, $a0, $a3
	ori	$a3, $s8, 1616
	stx.b	$a5, $a0, $a3
	ori	$a3, $s8, 1620
	stx.b	$a5, $a0, $a3
	ori	$a3, $s8, 1624
	stx.b	$a5, $a0, $a3
	ori	$a3, $s8, 1576
	stx.b	$zero, $a0, $a3
	st.h	$zero, $a2, 0
	st.b	$zero, $a2, 2
	ori	$a4, $a4, 273
	st.h	$a4, $a2, 36
	st.b	$a5, $a2, 38
	st.h	$a4, $a2, 40
	st.b	$a5, $a2, 42
	st.h	$a4, $a2, 44
	st.b	$a5, $a2, 46
	st.h	$a4, $a2, 48
	addi.w	$a2, $zero, -204
	.p2align	4, , 16
.LBB5_4:                                # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a0, $a2
	stptr.w	$a1, $a4, 22056
	ldx.bu	$a4, $a0, $a3
	sll.w	$a4, $s7, $a4
	add.d	$a1, $a4, $a1
	addi.d	$a2, $a2, 4
	addi.d	$a3, $a3, 1
	bnez	$a2, .LBB5_4
# %bb.5:
	bstrpick.d	$a1, $s1, 31, 0
	move	$s7, $a0
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s7, 32
	beqz	$a0, .LBB5_8
# %bb.6:
	ori	$a0, $zero, 1
	ori	$s3, $zero, 1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	move	$a1, $s7
	st.d	$a0, $s7, 104
	beqz	$a0, .LBB5_9
# %bb.7:
	st.w	$s6, $a1, 0
	st.w	$s5, $a1, 4
	st.b	$s3, $a1, 8
	st.d	$zero, $a1, 16
	st.d	$s4, $a1, 24
	ld.d	$a2, $sp, 0                     # 8-byte Folded Reload
	st.d	$a2, $s2, 0
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	st.d	$a2, $s2, 8
	st.w	$s0, $a1, 152
	st.w	$s1, $a1, 40
	st.d	$zero, $a1, 44
	st.w	$zero, $a1, 52
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	st.w	$a2, $a1, 56
	st.d	$zero, $a1, 80
	addi.d	$a2, $fp, -21
	sltui	$a2, $a2, 1
	addi.d	$a3, $fp, -20
	sltui	$a3, $a3, 1
	slli.d	$a4, $fp, 1
	masknez	$a4, $a4, $a3
	ori	$a5, $zero, 42
	maskeqz	$a3, $a5, $a3
	or	$a3, $a3, $a4
	masknez	$a3, $a3, $a2
	ori	$a4, $zero, 50
	maskeqz	$a2, $a4, $a2
	or	$a2, $a2, $a3
	st.b	$a2, $a1, 91
	st.b	$zero, $a1, 88
	st.b	$zero, $a1, 92
	st.w	$zero, $a1, 96
	st.d	$a0, $a1, 120
	st.d	$a0, $a1, 112
	ori	$a0, $s8, 1627
	add.d	$a0, $a1, $a0
	st.d	$a0, $a1, 136
	st.d	$a0, $a1, 128
	st.d	$zero, $a1, 144
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $a1, 60
	st.w	$s3, $a1, 68
	st.w	$zero, $a1, 76
	st.h	$zero, $a1, 89
	addi.d	$a0, $a1, 240
	ori	$a2, $zero, 656
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	addi.d	$a0, $s7, 960
	ori	$a2, $zero, 250
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	b	.LBB5_12
.LBB5_8:
	move	$a0, $s7
	b	.LBB5_10
.LBB5_9:
	ld.d	$a0, $a1, 32
	move	$fp, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB5_10:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB5_11:
	move	$a0, $zero
.LBB5_12:
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.Lfunc_end5:
	.size	lzx_init, .Lfunc_end5-lzx_init
                                        # -- End function
	.globl	lzx_set_output_length           # -- Begin function lzx_set_output_length
	.p2align	5
	.type	lzx_set_output_length,@function
lzx_set_output_length:                  # @lzx_set_output_length
# %bb.0:
	beqz	$a0, .LBB6_2
# %bb.1:
	st.d	$a1, $a0, 24
.LBB6_2:
	ret
.Lfunc_end6:
	.size	lzx_set_output_length, .Lfunc_end6-lzx_set_output_length
                                        # -- End function
	.globl	lzx_decompress                  # -- Begin function lzx_decompress
	.p2align	5
	.type	lzx_decompress,@function
lzx_decompress:                         # @lzx_decompress
# %bb.0:
	addi.d	$sp, $sp, -336
	st.d	$ra, $sp, 328                   # 8-byte Folded Spill
	st.d	$fp, $sp, 320                   # 8-byte Folded Spill
	st.d	$s0, $sp, 312                   # 8-byte Folded Spill
	st.d	$s1, $sp, 304                   # 8-byte Folded Spill
	st.d	$s2, $sp, 296                   # 8-byte Folded Spill
	st.d	$s3, $sp, 288                   # 8-byte Folded Spill
	st.d	$s4, $sp, 280                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	st.d	$s7, $sp, 256                   # 8-byte Folded Spill
	st.d	$s8, $sp, 248                   # 8-byte Folded Spill
	move	$fp, $a0
	addi.w	$a0, $zero, -111
	beqz	$fp, .LBB7_630
# %bb.1:
	move	$s0, $a1
	bltz	$a1, .LBB7_630
# %bb.2:
	ld.w	$a0, $fp, 96
	bnez	$a0, .LBB7_630
# %bb.3:
	ld.d	$a0, $fp, 136
	ld.d	$a1, $fp, 128
	sub.w	$a0, $a0, $a1
	slt	$a2, $s0, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s0, $a2
	or	$a0, $a2, $a0
	addi.w	$s1, $a0, 0
	beqz	$s1, .LBB7_8
# %bb.4:
	ld.bu	$a0, $fp, 8
	beqz	$a0, .LBB7_7
# %bb.5:
	ld.w	$a0, $fp, 4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB7_628
# %bb.6:                                # %._crit_edge3318
	ld.d	$a1, $fp, 128
.LBB7_7:
	ld.d	$a0, $fp, 16
	add.d	$a1, $a1, $s1
	st.d	$a1, $fp, 128
	add.d	$a0, $a0, $s1
	st.d	$a0, $fp, 16
	sub.d	$s0, $s0, $s1
.LBB7_8:
	beqz	$s0, .LBB7_626
# %bb.9:
	ld.d	$a0, $fp, 16
	add.d	$a1, $a0, $s0
	srai.d	$a0, $a1, 63
	srli.d	$a2, $a0, 49
	ld.w	$a0, $fp, 52
	add.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 15
	addi.w	$s7, $a1, 1
	bgeu	$a0, $s7, .LBB7_625
# %bb.10:                               # %.lr.ph3125
	st.d	$s0, $sp, 160                   # 8-byte Folded Spill
	lu12i.w	$a1, 13
	ori	$a1, $a1, 1632
	add.d	$s0, $fp, $a1
	lu12i.w	$a1, 5
	ori	$a2, $a1, 1627
	add.d	$a3, $fp, $a2
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a4, $fp, 32
	ld.w	$a3, $fp, 68
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	ld.w	$a3, $fp, 64
	st.d	$a3, $sp, 168                   # 8-byte Folded Spill
	ld.w	$a3, $fp, 60
	st.d	$a3, $sp, 184                   # 8-byte Folded Spill
	ld.w	$a3, $fp, 44
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	ld.w	$s2, $fp, 148
	ld.w	$s3, $fp, 144
	ld.d	$s4, $fp, 120
	ld.d	$s8, $fp, 112
	addi.d	$a5, $fp, 240
	addi.d	$a3, $fp, 960
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a3, $fp, 1274
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	ori	$a3, $a1, 1082
	add.d	$a3, $fp, $a3
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a3, $fp, 1554
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	lu12i.w	$a3, 3
	ori	$a3, $a3, 82
	add.d	$a3, $fp, $a3
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	ori	$a3, $a1, 1576
	add.d	$a3, $fp, $a3
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	ori	$a1, $a1, 1372
	add.d	$a1, $fp, $a1
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	add.d	$a1, $fp, $a2
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	st.d	$a4, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a1, $a4, 16
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ori	$s1, $zero, 1
	lu12i.w	$a1, -256
	lu32i.d	$a1, 0
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	lu12i.w	$a1, -8192
	lu32i.d	$a1, 0
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$s5, 8
	st.d	$s0, $sp, 208                   # 8-byte Folded Spill
	st.d	$a5, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 104                   # 8-byte Folded Spill
.LBB7_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_24 Depth 2
                                        #     Child Loop BB7_36 Depth 2
                                        #     Child Loop BB7_48 Depth 2
                                        #     Child Loop BB7_63 Depth 2
                                        #       Child Loop BB7_477 Depth 3
                                        #       Child Loop BB7_489 Depth 3
                                        #       Child Loop BB7_509 Depth 3
                                        #       Child Loop BB7_523 Depth 3
                                        #         Child Loop BB7_527 Depth 4
                                        #       Child Loop BB7_539 Depth 3
                                        #       Child Loop BB7_68 Depth 3
                                        #         Child Loop BB7_73 Depth 4
                                        #         Child Loop BB7_129 Depth 4
                                        #         Child Loop BB7_254 Depth 4
                                        #         Child Loop BB7_216 Depth 4
                                        #         Child Loop BB7_258 Depth 4
                                        #         Child Loop BB7_207 Depth 4
                                        #         Child Loop BB7_229 Depth 4
                                        #         Child Loop BB7_265 Depth 4
                                        #         Child Loop BB7_220 Depth 4
                                        #         Child Loop BB7_224 Depth 4
                                        #         Child Loop BB7_271 Depth 4
                                        #         Child Loop BB7_196 Depth 4
                                        #         Child Loop BB7_234 Depth 4
                                        #         Child Loop BB7_243 Depth 4
                                        #         Child Loop BB7_247 Depth 4
                                        #         Child Loop BB7_276 Depth 4
                                        #       Child Loop BB7_288 Depth 3
                                        #       Child Loop BB7_300 Depth 3
                                        #         Child Loop BB7_304 Depth 4
                                        #         Child Loop BB7_361 Depth 4
                                        #         Child Loop BB7_420 Depth 4
                                        #         Child Loop BB7_441 Depth 4
                                        #         Child Loop BB7_445 Depth 4
                                        #         Child Loop BB7_466 Depth 4
                                        #         Child Loop BB7_432 Depth 4
                                        #         Child Loop BB7_449 Depth 4
                                        #         Child Loop BB7_458 Depth 4
                                        #         Child Loop BB7_462 Depth 4
                                        #         Child Loop BB7_469 Depth 4
                                        #     Child Loop BB7_607 Depth 2
	ld.w	$a1, $fp, 56
	beqz	$a1, .LBB7_13
# %bb.12:                               #   in Loop: Header=BB7_11 Depth=1
	mod.wu	$a0, $a0, $a1
	beqz	$a0, .LBB7_15
.LBB7_13:                               #   in Loop: Header=BB7_11 Depth=1
	ld.bu	$a0, $fp, 90
	beqz	$a0, .LBB7_17
# %bb.14:                               #   in Loop: Header=BB7_11 Depth=1
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	b	.LBB7_60
.LBB7_15:                               #   in Loop: Header=BB7_11 Depth=1
	ld.w	$a1, $fp, 76
	bnez	$a1, .LBB7_639
# %bb.16:                               # %.thread
                                        #   in Loop: Header=BB7_11 Depth=1
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $fp, 60
	st.w	$s1, $fp, 68
	st.h	$zero, $fp, 89
	ori	$a2, $zero, 656
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 250
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB7_17:                               # %.preheader1369
                                        #   in Loop: Header=BB7_11 Depth=1
	ori	$s7, $zero, 1
	addi.w	$a0, $s2, 0
	blez	$a0, .LBB7_21
# %bb.18:                               #   in Loop: Header=BB7_11 Depth=1
	move	$a0, $s2
.LBB7_19:                               # %._crit_edge
                                        #   in Loop: Header=BB7_11 Depth=1
	slli.d	$s1, $s3, 1
	addi.w	$a1, $zero, -1
	addi.w	$s2, $a0, -1
	bge	$a1, $s3, .LBB7_31
# %bb.20:                               #   in Loop: Header=BB7_11 Depth=1
	move	$a1, $zero
	b	.LBB7_59
.LBB7_21:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB7_11 Depth=1
	ori	$a0, $zero, 16
	sub.d	$s1, $a0, $s2
	b	.LBB7_24
.LBB7_22:                               #   in Loop: Header=BB7_24 Depth=2
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s4, $s8, $a0
	st.d	$s4, $fp, 120
.LBB7_23:                               #   in Loop: Header=BB7_24 Depth=2
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s1
	or	$s3, $a0, $s3
	addi.d	$a0, $s2, 16
	addi.w	$a1, $s2, 0
	addi.d	$s8, $s8, 2
	addi.w	$a2, $zero, -15
	addi.d	$s1, $s1, -16
	move	$s2, $a0
	bge	$a1, $a2, .LBB7_19
.LBB7_24:                               # %.lr.ph
                                        #   Parent Loop BB7_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $s8, 1
	bltu	$a0, $s4, .LBB7_23
# %bb.25:                               #   in Loop: Header=BB7_24 Depth=2
	ld.d	$a3, $s0, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_27
# %bb.26:                               #   in Loop: Header=BB7_24 Depth=2
	ld.d	$a0, $s0, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB7_28
	b	.LBB7_628
.LBB7_27:                               #   in Loop: Header=BB7_24 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB7_628
.LBB7_28:                               #   in Loop: Header=BB7_24 Depth=2
	bnez	$a0, .LBB7_22
# %bb.29:                               #   in Loop: Header=BB7_24 Depth=2
	ld.bu	$a0, $fp, 92
	bnez	$a0, .LBB7_627
# %bb.30:                               #   in Loop: Header=BB7_24 Depth=2
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s7, $fp, 92
	ori	$a0, $zero, 2
	b	.LBB7_22
.LBB7_31:                               # %.preheader1367
                                        #   in Loop: Header=BB7_11 Depth=1
	addi.w	$a1, $a0, 0
	ori	$a2, $zero, 16
	bltu	$a2, $a1, .LBB7_44
# %bb.32:                               # %.lr.ph2842.preheader
                                        #   in Loop: Header=BB7_11 Depth=1
	addi.d	$s2, $a0, -17
	ori	$a1, $zero, 17
	sub.d	$s3, $a1, $a0
	b	.LBB7_36
.LBB7_33:                               #   in Loop: Header=BB7_36 Depth=2
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s7, $fp, 92
	ori	$a0, $zero, 2
.LBB7_34:                               #   in Loop: Header=BB7_36 Depth=2
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s4, $s8, $a0
	st.d	$s4, $fp, 120
.LBB7_35:                               #   in Loop: Header=BB7_36 Depth=2
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s3
	or	$s1, $a0, $s1
	addi.d	$s8, $s8, 2
	addi.w	$s2, $s2, 16
	addi.d	$s3, $s3, -16
	bgez	$s2, .LBB7_43
.LBB7_36:                               # %.lr.ph2842
                                        #   Parent Loop BB7_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $s8, 1
	bltu	$a0, $s4, .LBB7_35
# %bb.37:                               #   in Loop: Header=BB7_36 Depth=2
	ld.d	$a3, $s0, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_39
# %bb.38:                               #   in Loop: Header=BB7_36 Depth=2
	ld.d	$a0, $s0, 0
	jirl	$ra, $a3, 0
	b	.LBB7_40
.LBB7_39:                               #   in Loop: Header=BB7_36 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB7_40:                               #   in Loop: Header=BB7_36 Depth=2
	bltz	$a0, .LBB7_628
# %bb.41:                               #   in Loop: Header=BB7_36 Depth=2
	bnez	$a0, .LBB7_34
# %bb.42:                               #   in Loop: Header=BB7_36 Depth=2
	ld.bu	$a0, $fp, 92
	beqz	$a0, .LBB7_33
	b	.LBB7_627
.LBB7_43:                               # %._crit_edge2843.loopexit
                                        #   in Loop: Header=BB7_11 Depth=1
	addi.w	$s2, $s2, 16
.LBB7_44:                               # %._crit_edge2843
                                        #   in Loop: Header=BB7_11 Depth=1
	slli.d	$s3, $s1, 16
	ori	$a0, $zero, 31
	blt	$a0, $s2, .LBB7_56
# %bb.45:                               # %.lr.ph2853.preheader
                                        #   in Loop: Header=BB7_11 Depth=1
	addi.d	$s5, $s2, -32
	ori	$a0, $zero, 32
	sub.d	$s2, $a0, $s2
	b	.LBB7_48
.LBB7_46:                               #   in Loop: Header=BB7_48 Depth=2
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s4, $s8, $a0
	st.d	$s4, $fp, 120
.LBB7_47:                               #   in Loop: Header=BB7_48 Depth=2
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s2
	or	$s3, $a0, $s3
	addi.d	$s8, $s8, 2
	addi.w	$s5, $s5, 16
	addi.d	$s2, $s2, -16
	bgez	$s5, .LBB7_57
.LBB7_48:                               # %.lr.ph2853
                                        #   Parent Loop BB7_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $s8, 1
	bltu	$a0, $s4, .LBB7_47
# %bb.49:                               #   in Loop: Header=BB7_48 Depth=2
	ld.d	$a3, $s0, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_51
# %bb.50:                               #   in Loop: Header=BB7_48 Depth=2
	ld.d	$a0, $s0, 0
	jirl	$ra, $a3, 0
	b	.LBB7_52
.LBB7_51:                               #   in Loop: Header=BB7_48 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB7_52:                               #   in Loop: Header=BB7_48 Depth=2
	bltz	$a0, .LBB7_628
# %bb.53:                               #   in Loop: Header=BB7_48 Depth=2
	bnez	$a0, .LBB7_46
# %bb.54:                               #   in Loop: Header=BB7_48 Depth=2
	ld.bu	$a0, $fp, 92
	bnez	$a0, .LBB7_627
# %bb.55:                               #   in Loop: Header=BB7_48 Depth=2
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s7, $fp, 92
	ori	$a0, $zero, 2
	b	.LBB7_46
.LBB7_56:                               #   in Loop: Header=BB7_11 Depth=1
	addi.d	$a0, $s2, -16
	b	.LBB7_58
.LBB7_57:                               # %._crit_edge2854.loopexit
                                        #   in Loop: Header=BB7_11 Depth=1
	addi.d	$a0, $s5, 16
	lu12i.w	$s5, 8
.LBB7_58:                               # %._crit_edge2854
                                        #   in Loop: Header=BB7_11 Depth=1
	bstrins.d	$s1, $zero, 15, 0
	bstrpick.d	$a1, $s3, 31, 16
	or	$a1, $a1, $s1
	slli.d	$s1, $s3, 16
	addi.w	$s2, $a0, -16
.LBB7_59:                               #   in Loop: Header=BB7_11 Depth=1
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	st.w	$a1, $fp, 80
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 90
	move	$s3, $s1
	ori	$s1, $zero, 1
.LBB7_60:                               #   in Loop: Header=BB7_11 Depth=1
	ld.d	$a0, $fp, 24
	move	$a1, $s5
	beqz	$a0, .LBB7_62
# %bb.61:                               #   in Loop: Header=BB7_11 Depth=1
	ld.d	$a1, $fp, 16
	sub.d	$a0, $a0, $a1
	slt	$a1, $a0, $s5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$a1, $a0, $a1
.LBB7_62:                               #   in Loop: Header=BB7_11 Depth=1
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	ld.w	$a0, $fp, 48
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $s7
	add.w	$s5, $a1, $a0
	blt	$s5, $s1, .LBB7_594
.LBB7_63:                               # %.lr.ph3100
                                        #   Parent Loop BB7_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_477 Depth 3
                                        #       Child Loop BB7_489 Depth 3
                                        #       Child Loop BB7_509 Depth 3
                                        #       Child Loop BB7_523 Depth 3
                                        #         Child Loop BB7_527 Depth 4
                                        #       Child Loop BB7_539 Depth 3
                                        #       Child Loop BB7_68 Depth 3
                                        #         Child Loop BB7_73 Depth 4
                                        #         Child Loop BB7_129 Depth 4
                                        #         Child Loop BB7_254 Depth 4
                                        #         Child Loop BB7_216 Depth 4
                                        #         Child Loop BB7_258 Depth 4
                                        #         Child Loop BB7_207 Depth 4
                                        #         Child Loop BB7_229 Depth 4
                                        #         Child Loop BB7_265 Depth 4
                                        #         Child Loop BB7_220 Depth 4
                                        #         Child Loop BB7_224 Depth 4
                                        #         Child Loop BB7_271 Depth 4
                                        #         Child Loop BB7_196 Depth 4
                                        #         Child Loop BB7_234 Depth 4
                                        #         Child Loop BB7_243 Depth 4
                                        #         Child Loop BB7_247 Depth 4
                                        #         Child Loop BB7_276 Depth 4
                                        #       Child Loop BB7_288 Depth 3
                                        #       Child Loop BB7_300 Depth 3
                                        #         Child Loop BB7_304 Depth 4
                                        #         Child Loop BB7_361 Depth 4
                                        #         Child Loop BB7_420 Depth 4
                                        #         Child Loop BB7_441 Depth 4
                                        #         Child Loop BB7_445 Depth 4
                                        #         Child Loop BB7_466 Depth 4
                                        #         Child Loop BB7_432 Depth 4
                                        #         Child Loop BB7_449 Depth 4
                                        #         Child Loop BB7_458 Depth 4
                                        #         Child Loop BB7_462 Depth 4
                                        #         Child Loop BB7_469 Depth 4
	ld.w	$a0, $fp, 76
	beqz	$a0, .LBB7_279
.LBB7_64:                               #   in Loop: Header=BB7_63 Depth=2
	ld.w	$a0, $fp, 76
	slt	$a2, $a0, $s5
	masknez	$a3, $s5, $a2
	ld.bu	$a1, $fp, 89
	maskeqz	$a2, $a0, $a2
	or	$a2, $a2, $a3
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	sub.d	$a2, $a0, $a2
	st.w	$a2, $fp, 76
	beq	$a1, $s1, .LBB7_298
# %bb.65:                               #   in Loop: Header=BB7_63 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB7_285
# %bb.66:                               #   in Loop: Header=BB7_63 Depth=2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB7_637
# %bb.67:                               # %.preheader1355
                                        #   in Loop: Header=BB7_63 Depth=2
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	blt	$a0, $s1, .LBB7_499
.LBB7_68:                               # %.preheader1349
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_73 Depth 4
                                        #         Child Loop BB7_129 Depth 4
                                        #         Child Loop BB7_254 Depth 4
                                        #         Child Loop BB7_216 Depth 4
                                        #         Child Loop BB7_258 Depth 4
                                        #         Child Loop BB7_207 Depth 4
                                        #         Child Loop BB7_229 Depth 4
                                        #         Child Loop BB7_265 Depth 4
                                        #         Child Loop BB7_220 Depth 4
                                        #         Child Loop BB7_224 Depth 4
                                        #         Child Loop BB7_271 Depth 4
                                        #         Child Loop BB7_196 Depth 4
                                        #         Child Loop BB7_234 Depth 4
                                        #         Child Loop BB7_243 Depth 4
                                        #         Child Loop BB7_247 Depth 4
                                        #         Child Loop BB7_276 Depth 4
	ori	$s7, $zero, 1
	addi.w	$a0, $s2, 0
	ori	$a1, $zero, 15
	blt	$a1, $a0, .LBB7_79
# %bb.69:                               # %.lr.ph2933.preheader
                                        #   in Loop: Header=BB7_68 Depth=3
	ori	$a0, $zero, 16
	sub.d	$s1, $a0, $s2
	b	.LBB7_73
.LBB7_70:                               #   in Loop: Header=BB7_73 Depth=4
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s7, $fp, 92
	ori	$a0, $zero, 2
.LBB7_71:                               #   in Loop: Header=BB7_73 Depth=4
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s4, $s8, $a0
	st.d	$s4, $fp, 120
.LBB7_72:                               #   in Loop: Header=BB7_73 Depth=4
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s1
	or	$s3, $a0, $s3
	addi.d	$a0, $s2, 16
	addi.w	$a1, $s2, 0
	addi.d	$s8, $s8, 2
	addi.d	$s1, $s1, -16
	move	$s2, $a0
	bgez	$a1, .LBB7_80
.LBB7_73:                               # %.lr.ph2933
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        #       Parent Loop BB7_68 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $s8, 1
	bltu	$a0, $s4, .LBB7_72
# %bb.74:                               #   in Loop: Header=BB7_73 Depth=4
	ld.d	$a3, $s0, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_76
# %bb.75:                               #   in Loop: Header=BB7_73 Depth=4
	ld.d	$a0, $s0, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB7_77
	b	.LBB7_628
.LBB7_76:                               #   in Loop: Header=BB7_73 Depth=4
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB7_628
.LBB7_77:                               #   in Loop: Header=BB7_73 Depth=4
	bnez	$a0, .LBB7_71
# %bb.78:                               #   in Loop: Header=BB7_73 Depth=4
	ld.bu	$a0, $fp, 92
	beqz	$a0, .LBB7_70
	b	.LBB7_627
.LBB7_79:                               #   in Loop: Header=BB7_68 Depth=3
	move	$a0, $s2
.LBB7_80:                               # %._crit_edge2934
                                        #   in Loop: Header=BB7_68 Depth=3
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	and	$a1, $s3, $a1
	srli.d	$a1, $a1, 19
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_122
# %bb.81:                               # %.preheader1347.preheader
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.82:                               #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 19, 19
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_122
# %bb.83:                               # %.preheader1347.1
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.84:                               #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 18, 18
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_122
# %bb.85:                               # %.preheader1347.2
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.86:                               #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 17, 17
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_122
# %bb.87:                               # %.preheader1347.3
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.88:                               #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 16, 16
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_122
# %bb.89:                               # %.preheader1347.4
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.90:                               #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 15, 15
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_122
# %bb.91:                               # %.preheader1347.5
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.92:                               #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 14, 14
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_122
# %bb.93:                               # %.preheader1347.6
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.94:                               #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 13, 13
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_122
# %bb.95:                               # %.preheader1347.7
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.96:                               #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 12, 12
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_121
# %bb.97:                               # %.preheader1347.8
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.98:                               #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 11, 11
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_121
# %bb.99:                               # %.preheader1347.9
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.100:                              #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 10, 10
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_121
# %bb.101:                              # %.preheader1347.10
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.102:                              #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 9, 9
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_121
# %bb.103:                              # %.preheader1347.11
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.104:                              #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 8, 8
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_121
# %bb.105:                              # %.preheader1347.12
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.106:                              #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 7, 7
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_121
# %bb.107:                              # %.preheader1347.13
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.108:                              #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 6, 6
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_121
# %bb.109:                              # %.preheader1347.14
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.110:                              #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 5, 5
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_121
# %bb.111:                              # %.preheader1347.15
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.112:                              #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 4, 4
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_121
# %bb.113:                              # %.preheader1347.16
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.114:                              #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 3, 3
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_121
# %bb.115:                              # %.preheader1347.17
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.116:                              #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 2, 2
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_121
# %bb.117:                              # %.preheader1347.18
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.118:                              #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 1, 1
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_121
# %bb.119:                              # %.preheader1347.19
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.120:                              #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a1, $s1, 1
	andi	$a2, $s3, 1
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 655
	bgeu	$a1, $s1, .LBB7_122
	b	.LBB7_643
.LBB7_121:                              #   in Loop: Header=BB7_68 Depth=3
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
.LBB7_122:                              # %.loopexit1348
                                        #   in Loop: Header=BB7_68 Depth=3
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $s1
	sll.w	$s3, $s3, $a1
	sub.w	$s2, $a0, $a1
	ori	$a2, $zero, 255
	bltu	$a2, $s1, .LBB7_124
# %bb.123:                              #   in Loop: Header=BB7_68 Depth=3
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	addi.w	$s7, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	stx.b	$s1, $a1, $a0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ori	$s1, $zero, 1
	b	.LBB7_278
.LBB7_124:                              #   in Loop: Header=BB7_68 Depth=3
	andi	$a3, $s1, 7
	ori	$a2, $zero, 7
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	bne	$a3, $a2, .LBB7_180
# %bb.125:                              # %.preheader1345
                                        #   in Loop: Header=BB7_68 Depth=3
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	ori	$a2, $zero, 15
	blt	$a2, $s2, .LBB7_137
# %bb.126:                              # %.lr.ph2943.preheader
                                        #   in Loop: Header=BB7_68 Depth=3
	sub.d	$a0, $a1, $a0
	addi.d	$s5, $a0, 16
	b	.LBB7_129
.LBB7_127:                              #   in Loop: Header=BB7_129 Depth=4
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s4, $s8, $a0
	st.d	$s4, $fp, 120
.LBB7_128:                              #   in Loop: Header=BB7_129 Depth=4
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s5
	or	$s3, $a0, $s3
	addi.w	$s2, $s6, 16
	addi.d	$s8, $s8, 2
	addi.d	$s5, $s5, -16
	bgez	$s6, .LBB7_137
.LBB7_129:                              # %.lr.ph2943
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        #       Parent Loop BB7_68 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $s8, 1
	move	$s6, $s2
	bltu	$a0, $s4, .LBB7_128
# %bb.130:                              #   in Loop: Header=BB7_129 Depth=4
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_132
# %bb.131:                              #   in Loop: Header=BB7_129 Depth=4
	ld.d	$a0, $a0, 0
	jirl	$ra, $a3, 0
	b	.LBB7_133
.LBB7_132:                              #   in Loop: Header=BB7_129 Depth=4
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB7_133:                              #   in Loop: Header=BB7_129 Depth=4
	bltz	$a0, .LBB7_628
# %bb.134:                              #   in Loop: Header=BB7_129 Depth=4
	bnez	$a0, .LBB7_127
# %bb.135:                              #   in Loop: Header=BB7_129 Depth=4
	ld.bu	$a0, $fp, 92
	bnez	$a0, .LBB7_627
# %bb.136:                              #   in Loop: Header=BB7_129 Depth=4
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s7, $fp, 92
	ori	$a0, $zero, 2
	b	.LBB7_127
.LBB7_137:                              # %._crit_edge2944
                                        #   in Loop: Header=BB7_68 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	and	$a0, $s3, $a0
	srli.d	$a0, $a0, 19
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_178
# %bb.138:                              # %.preheader1343.preheader
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	ori	$a2, $zero, 1148
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	bltu	$a2, $a1, .LBB7_632
# %bb.139:                              #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 19, 19
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_179
# %bb.140:                              # %.preheader1343.1
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.141:                              #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 18, 18
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_179
# %bb.142:                              # %.preheader1343.2
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.143:                              #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 17, 17
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_179
# %bb.144:                              # %.preheader1343.3
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.145:                              #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 16, 16
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_179
# %bb.146:                              # %.preheader1343.4
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.147:                              #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 15, 15
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_179
# %bb.148:                              # %.preheader1343.5
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.149:                              #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 14, 14
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_178
# %bb.150:                              # %.preheader1343.6
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.151:                              #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 13, 13
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_178
# %bb.152:                              # %.preheader1343.7
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.153:                              #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 12, 12
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_178
# %bb.154:                              # %.preheader1343.8
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.155:                              #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 11, 11
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_178
# %bb.156:                              # %.preheader1343.9
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.157:                              #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 10, 10
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_178
# %bb.158:                              # %.preheader1343.10
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.159:                              #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 9, 9
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_178
# %bb.160:                              # %.preheader1343.11
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.161:                              #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 8, 8
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_178
# %bb.162:                              # %.preheader1343.12
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.163:                              #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 7, 7
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_178
# %bb.164:                              # %.preheader1343.13
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.165:                              #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 6, 6
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_178
# %bb.166:                              # %.preheader1343.14
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.167:                              #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 5, 5
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_178
# %bb.168:                              # %.preheader1343.15
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.169:                              #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 4, 4
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_178
# %bb.170:                              # %.preheader1343.16
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.171:                              #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 3, 3
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_178
# %bb.172:                              # %.preheader1343.17
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.173:                              #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 2, 2
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_178
# %bb.174:                              # %.preheader1343.18
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.175:                              #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 1, 1
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_178
# %bb.176:                              # %.preheader1343.19
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	ori	$a2, $zero, 1148
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	bltu	$a2, $a1, .LBB7_632
# %bb.177:                              #   in Loop: Header=BB7_68 Depth=3
	slli.d	$a0, $a0, 1
	andi	$a1, $s3, 1
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 249
	bgeu	$a1, $a0, .LBB7_179
	b	.LBB7_643
.LBB7_178:                              #   in Loop: Header=BB7_68 Depth=3
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
.LBB7_179:                              # %.loopexit1344
                                        #   in Loop: Header=BB7_68 Depth=3
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	sll.w	$s3, $s3, $a1
	sub.w	$s2, $s2, $a1
	addi.d	$a0, $a0, 7
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
.LBB7_180:                              #   in Loop: Header=BB7_68 Depth=3
	ori	$s7, $zero, 32
	addi.d	$a0, $s1, -256
	bstrpick.d	$a0, $a0, 31, 3
	beqz	$a0, .LBB7_186
# %bb.181:                              #   in Loop: Header=BB7_68 Depth=3
	ori	$s1, $zero, 1
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB7_184
# %bb.182:                              #   in Loop: Header=BB7_68 Depth=3
	bne	$a0, $s1, .LBB7_202
# %bb.183:                              #   in Loop: Header=BB7_68 Depth=3
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	b	.LBB7_185
.LBB7_184:                              #   in Loop: Header=BB7_68 Depth=3
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
.LBB7_185:                              #   in Loop: Header=BB7_68 Depth=3
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB7_187
.LBB7_186:                              #   in Loop: Header=BB7_68 Depth=3
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$s1, $zero, 1
.LBB7_187:                              #   in Loop: Header=BB7_68 Depth=3
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
.LBB7_188:                              #   in Loop: Header=BB7_68 Depth=3
	ld.w	$a2, $fp, 40
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 2
	move	$a6, $a1
	add.w	$a1, $a0, $a1
	bltu	$a2, $a1, .LBB7_638
# %bb.189:                              #   in Loop: Header=BB7_68 Depth=3
	move	$t2, $a1
	bstrpick.d	$a4, $a6, 31, 0
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	addi.w	$a3, $a5, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a4
	bgeu	$a6, $a3, .LBB7_198
# %bb.190:                              #   in Loop: Header=BB7_68 Depth=3
	sub.w	$a5, $a5, $a6
	blt	$a2, $a5, .LBB7_641
# %bb.191:                              #   in Loop: Header=BB7_68 Depth=3
	sub.d	$a2, $a2, $a5
	bstrpick.d	$t0, $a2, 31, 0
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	add.d	$a3, $a2, $t0
	bge	$a5, $a0, .LBB7_210
# %bb.192:                              #   in Loop: Header=BB7_68 Depth=3
	sub.w	$a2, $a0, $a5
	blt	$a5, $s1, .LBB7_235
# %bb.193:                              # %.lr.ph3000.preheader
                                        #   in Loop: Header=BB7_68 Depth=3
	bltu	$a5, $s7, .LBB7_232
# %bb.194:                              # %.lr.ph3000.preheader
                                        #   in Loop: Header=BB7_68 Depth=3
	sub.d	$a6, $a4, $t0
	bltu	$a6, $s7, .LBB7_232
# %bb.195:                              # %vector.ph3824
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a6, $a5, 30, 5
	slli.d	$a7, $a6, 5
	add.d	$a1, $a1, $a7
	add.d	$a3, $a3, $a7
	sub.d	$a6, $a5, $a7
	ld.d	$t1, $sp, 40                    # 8-byte Folded Reload
	add.d	$t0, $t1, $t0
	add.d	$a4, $t1, $a4
	move	$t1, $a7
.LBB7_196:                              # %vector.body3828
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        #       Parent Loop BB7_68 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $t0, -16
	vld	$vr1, $t0, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$t1, $t1, -32
	addi.d	$t0, $t0, 32
	addi.d	$a4, $a4, 32
	bnez	$t1, .LBB7_196
# %bb.197:                              # %middle.block3835
                                        #   in Loop: Header=BB7_68 Depth=3
	bne	$a7, $a5, .LBB7_233
	b	.LBB7_235
.LBB7_198:                              # %iter.check3845
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a5, $a5, 31, 0
	sub.d	$a2, $a1, $a5
	ori	$a6, $zero, 6
	ld.d	$a7, $sp, 192                   # 8-byte Folded Reload
	bltu	$a7, $a6, .LBB7_209
# %bb.199:                              # %iter.check3845
                                        #   in Loop: Header=BB7_68 Depth=3
	bltu	$a3, $s7, .LBB7_209
# %bb.200:                              # %vector.main.loop.iter.check3847
                                        #   in Loop: Header=BB7_68 Depth=3
	sub.d	$a3, $zero, $a5
	ori	$a5, $zero, 30
	ld.d	$a6, $sp, 192                   # 8-byte Folded Reload
	bgeu	$a6, $a5, .LBB7_219
# %bb.201:                              #   in Loop: Header=BB7_68 Depth=3
	move	$a6, $zero
	b	.LBB7_223
.LBB7_202:                              #   in Loop: Header=BB7_68 Depth=3
	addi.w	$a0, $a0, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.bu	$a2, $a1, $a0
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.d	$a0, $a0, -2
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ori	$a0, $zero, 4
	bltu	$a2, $a0, .LBB7_211
# %bb.203:                              #   in Loop: Header=BB7_68 Depth=3
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	ori	$s7, $zero, 1
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	addi.d	$s1, $a2, -3
	bge	$s2, $s1, .LBB7_226
# %bb.204:                              # %.lr.ph2974.preheader
                                        #   in Loop: Header=BB7_68 Depth=3
	ori	$a0, $zero, 16
	sub.d	$s5, $a0, $s2
	b	.LBB7_207
.LBB7_205:                              #   in Loop: Header=BB7_207 Depth=4
	ld.d	$s8, $fp, 112
	ld.d	$s4, $fp, 120
.LBB7_206:                              #   in Loop: Header=BB7_207 Depth=4
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s5
	or	$s3, $a0, $s3
	addi.w	$s2, $s2, 16
	addi.d	$s8, $s8, 2
	addi.d	$s5, $s5, -16
	bge	$s2, $s1, .LBB7_226
.LBB7_207:                              # %.lr.ph2974
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        #       Parent Loop BB7_68 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $s8, 1
	bltu	$a0, $s4, .LBB7_206
# %bb.208:                              #   in Loop: Header=BB7_207 Depth=4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_205
	b	.LBB7_631
.LBB7_209:                              #   in Loop: Header=BB7_68 Depth=3
	move	$a5, $a0
	b	.LBB7_270
.LBB7_210:                              #   in Loop: Header=BB7_68 Depth=3
	move	$a2, $a0
	b	.LBB7_236
.LBB7_211:                              #   in Loop: Header=BB7_68 Depth=3
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	beqz	$a2, .LBB7_249
# %bb.212:                              #   in Loop: Header=BB7_68 Depth=3
	ori	$a0, $zero, 3
	bne	$a2, $a0, .LBB7_250
# %bb.213:                              # %.preheader1342
                                        #   in Loop: Header=BB7_68 Depth=3
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	ori	$a0, $zero, 15
	blt	$a0, $s2, .LBB7_256
# %bb.214:                              # %.lr.ph2953.preheader
                                        #   in Loop: Header=BB7_68 Depth=3
	ori	$a0, $zero, 16
	sub.d	$s1, $a0, $s2
	b	.LBB7_216
.LBB7_215:                              #   in Loop: Header=BB7_216 Depth=4
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s1
	or	$s3, $a0, $s3
	addi.w	$s2, $s5, 16
	addi.d	$s8, $s8, 2
	addi.d	$s1, $s1, -16
	bgez	$s5, .LBB7_256
.LBB7_216:                              # %.lr.ph2953
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        #       Parent Loop BB7_68 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $s8, 1
	move	$s5, $s2
	bltu	$a0, $s4, .LBB7_215
# %bb.217:                              #   in Loop: Header=BB7_216 Depth=4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_631
# %bb.218:                              #   in Loop: Header=BB7_216 Depth=4
	ld.d	$s8, $fp, 112
	ld.d	$s4, $fp, 120
	b	.LBB7_215
.LBB7_219:                              # %vector.ph3848
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a5, $a0, 15, 5
	slli.d	$a6, $a5, 5
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	add.d	$a5, $a5, $a4
	move	$a7, $a6
.LBB7_220:                              # %vector.body3851
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        #       Parent Loop BB7_68 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.d	$t0, $a5, $a3
	vld	$vr0, $t0, -16
	vldx	$vr1, $a5, $a3
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a7, $a7, -32
	addi.d	$a5, $a5, 32
	bnez	$a7, .LBB7_220
# %bb.221:                              # %middle.block3858
                                        #   in Loop: Header=BB7_68 Depth=3
	beq	$a6, $a0, .LBB7_277
# %bb.222:                              # %vec.epilog.iter.check3863
                                        #   in Loop: Header=BB7_68 Depth=3
	andi	$a5, $a0, 24
	beqz	$a5, .LBB7_269
.LBB7_223:                              # %vec.epilog.ph3862
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$t0, $a0, 15, 3
	slli.d	$a7, $t0, 3
	sub.d	$a5, $a0, $a7
	alsl.d	$a1, $t0, $a1, 3
	alsl.d	$a2, $t0, $a2, 3
	sub.d	$t0, $a6, $a7
	add.d	$a4, $a6, $a4
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	add.d	$a4, $a6, $a4
.LBB7_224:                              # %vec.epilog.vector.body3869
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        #       Parent Loop BB7_68 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.d	$a6, $a4, $a3
	st.d	$a6, $a4, 0
	addi.d	$t0, $t0, 8
	addi.d	$a4, $a4, 8
	bnez	$t0, .LBB7_224
# %bb.225:                              # %vec.epilog.middle.block3875
                                        #   in Loop: Header=BB7_68 Depth=3
	bne	$a7, $a0, .LBB7_270
	b	.LBB7_277
.LBB7_226:                              # %._crit_edge2975
                                        #   in Loop: Header=BB7_68 Depth=3
	sub.w	$a0, $s2, $s1
	sll.w	$s1, $s3, $s1
	ori	$a1, $zero, 15
	blt	$a1, $a0, .LBB7_263
# %bb.227:                              # %.lr.ph2985.preheader
                                        #   in Loop: Header=BB7_68 Depth=3
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	sub.d	$a0, $s2, $a1
	addi.d	$s5, $a0, -13
	sub.d	$a0, $a1, $s2
	addi.d	$s2, $a0, 13
	b	.LBB7_229
.LBB7_228:                              #   in Loop: Header=BB7_229 Depth=4
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s2
	or	$s1, $a0, $s1
	addi.d	$s8, $s8, 2
	addi.w	$s5, $s5, 16
	addi.d	$s2, $s2, -16
	bgez	$s5, .LBB7_262
.LBB7_229:                              # %.lr.ph2985
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        #       Parent Loop BB7_68 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $s8, 1
	bltu	$a0, $s4, .LBB7_228
# %bb.230:                              #   in Loop: Header=BB7_229 Depth=4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_631
# %bb.231:                              #   in Loop: Header=BB7_229 Depth=4
	ld.d	$s8, $fp, 112
	ld.d	$s4, $fp, 120
	b	.LBB7_228
.LBB7_232:                              #   in Loop: Header=BB7_68 Depth=3
	move	$a6, $a5
.LBB7_233:                              # %.lr.ph3000.preheader3894
                                        #   in Loop: Header=BB7_68 Depth=3
	addi.d	$a4, $a6, 1
.LBB7_234:                              # %.lr.ph3000
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        #       Parent Loop BB7_68 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.b	$a5, $a3, 0
	addi.d	$a3, $a3, 1
	st.b	$a5, $a1, 0
	addi.w	$a4, $a4, -1
	addi.d	$a1, $a1, 1
	bltu	$s1, $a4, .LBB7_234
.LBB7_235:                              #   in Loop: Header=BB7_68 Depth=3
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
.LBB7_236:                              # %.loopexit1335
                                        #   in Loop: Header=BB7_68 Depth=3
	blt	$a2, $s1, .LBB7_277
# %bb.237:                              # %iter.check3781
                                        #   in Loop: Header=BB7_68 Depth=3
	ori	$a4, $zero, 8
	bltu	$a2, $a4, .LBB7_241
# %bb.238:                              # %iter.check3781
                                        #   in Loop: Header=BB7_68 Depth=3
	sub.d	$a4, $a1, $a3
	bltu	$a4, $s7, .LBB7_241
# %bb.239:                              # %vector.main.loop.iter.check3783
                                        #   in Loop: Header=BB7_68 Depth=3
	bgeu	$a2, $s7, .LBB7_242
# %bb.240:                              #   in Loop: Header=BB7_68 Depth=3
	move	$a7, $zero
	b	.LBB7_246
.LBB7_241:                              #   in Loop: Header=BB7_68 Depth=3
	move	$a6, $a2
	move	$a4, $a1
	move	$a5, $a3
	b	.LBB7_275
.LBB7_242:                              # %vector.ph3784
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a4, $a2, 30, 5
	slli.d	$a7, $a4, 5
	addi.d	$a4, $a3, 16
	addi.d	$a5, $a1, 16
	move	$a6, $a7
.LBB7_243:                              # %vector.body3787
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        #       Parent Loop BB7_68 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a6, $a6, -32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB7_243
# %bb.244:                              # %middle.block3794
                                        #   in Loop: Header=BB7_68 Depth=3
	beq	$a7, $a2, .LBB7_277
# %bb.245:                              # %vec.epilog.iter.check3799
                                        #   in Loop: Header=BB7_68 Depth=3
	andi	$a4, $a2, 24
	beqz	$a4, .LBB7_274
.LBB7_246:                              # %vec.epilog.ph3798
                                        #   in Loop: Header=BB7_68 Depth=3
	bstrpick.d	$a5, $a2, 30, 3
	slli.d	$t0, $a5, 3
	sub.d	$a6, $a2, $t0
	alsl.d	$a4, $a5, $a1, 3
	alsl.d	$a5, $a5, $a3, 3
	sub.d	$t1, $a7, $t0
	add.d	$a3, $a3, $a7
	add.d	$a1, $a1, $a7
.LBB7_247:                              # %vec.epilog.vector.body3805
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        #       Parent Loop BB7_68 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a7, $a3, 0
	st.d	$a7, $a1, 0
	addi.d	$t1, $t1, 8
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 8
	bnez	$t1, .LBB7_247
# %bb.248:                              # %vec.epilog.middle.block3811
                                        #   in Loop: Header=BB7_68 Depth=3
	bne	$t0, $a2, .LBB7_275
	b	.LBB7_277
.LBB7_249:                              #   in Loop: Header=BB7_68 Depth=3
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	b	.LBB7_188
.LBB7_250:                              # %.preheader1339
                                        #   in Loop: Header=BB7_68 Depth=3
	move	$s7, $a2
	bge	$s2, $a2, .LBB7_261
# %bb.251:                              # %.lr.ph2963.preheader
                                        #   in Loop: Header=BB7_68 Depth=3
	ori	$a0, $zero, 16
	sub.d	$s1, $a0, $s2
	b	.LBB7_254
.LBB7_252:                              #   in Loop: Header=BB7_254 Depth=4
	ld.d	$s8, $fp, 112
	ld.d	$s4, $fp, 120
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
.LBB7_253:                              #   in Loop: Header=BB7_254 Depth=4
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s1
	or	$s3, $a0, $s3
	addi.w	$s2, $s2, 16
	addi.d	$s8, $s8, 2
	addi.d	$s1, $s1, -16
	bge	$s2, $s7, .LBB7_261
.LBB7_254:                              # %.lr.ph2963
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        #       Parent Loop BB7_68 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $s8, 1
	bltu	$a0, $s4, .LBB7_253
# %bb.255:                              #   in Loop: Header=BB7_254 Depth=4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_252
	b	.LBB7_631
.LBB7_256:                              # %._crit_edge2954
                                        #   in Loop: Header=BB7_68 Depth=3
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	and	$a0, $s3, $a0
	srli.d	$a0, $a0, 24
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ldx.hu	$a1, $a1, $a0
	ori	$a0, $zero, 8
	bltu	$a1, $a0, .LBB7_272
# %bb.257:                              # %.preheader1340.preheader
                                        #   in Loop: Header=BB7_68 Depth=3
	lu12i.w	$a0, 8192
	ori	$s1, $zero, 1
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
.LBB7_258:                              # %.preheader1340
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        #       Parent Loop BB7_68 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.w	$a2, $a0, 0
	bgeu	$s1, $a2, .LBB7_643
# %bb.259:                              #   in Loop: Header=BB7_258 Depth=4
	slli.d	$a1, $a1, 1
	bstrpick.d	$a2, $a1, 15, 1
	slli.d	$a2, $a2, 1
	ori	$a3, $zero, 144
	bgeu	$a2, $a3, .LBB7_632
# %bb.260:                              #   in Loop: Header=BB7_258 Depth=4
	bstrpick.d	$a0, $a0, 31, 1
	and	$a2, $a0, $s3
	addi.w	$a2, $a2, 0
	sltu	$a2, $zero, $a2
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ldx.hu	$a1, $a2, $a1
	ori	$a2, $zero, 7
	bltu	$a2, $a1, .LBB7_258
	b	.LBB7_273
.LBB7_261:                              # %._crit_edge2964
                                        #   in Loop: Header=BB7_68 Depth=3
	sub.d	$a0, $zero, $s7
	srl.w	$a0, $s3, $a0
	sll.w	$s3, $s3, $s7
	sub.w	$s2, $s2, $s7
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	add.w	$a0, $a0, $a2
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ori	$s1, $zero, 1
	ori	$s7, $zero, 32
	b	.LBB7_188
.LBB7_262:                              # %._crit_edge2986.loopexit
                                        #   in Loop: Header=BB7_68 Depth=3
	addi.d	$a0, $s5, 16
.LBB7_263:                              # %._crit_edge2986
                                        #   in Loop: Header=BB7_68 Depth=3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	and	$a1, $s1, $a1
	srli.d	$a1, $a1, 24
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ldx.hu	$a1, $a4, $a1
	ori	$a2, $zero, 8
	ori	$a5, $zero, 144
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	bltu	$a1, $a2, .LBB7_268
# %bb.264:                              # %.preheader1337.preheader
                                        #   in Loop: Header=BB7_68 Depth=3
	lu12i.w	$a2, 8192
.LBB7_265:                              # %.preheader1337
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        #       Parent Loop BB7_68 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.w	$a3, $a2, 0
	bgeu	$s7, $a3, .LBB7_643
# %bb.266:                              #   in Loop: Header=BB7_265 Depth=4
	slli.d	$a1, $a1, 1
	bstrpick.d	$a3, $a1, 15, 1
	slli.d	$a3, $a3, 1
	bgeu	$a3, $a5, .LBB7_632
# %bb.267:                              #   in Loop: Header=BB7_265 Depth=4
	bstrpick.d	$a2, $a2, 31, 1
	and	$a3, $a2, $s1
	addi.w	$a3, $a3, 0
	sltu	$a3, $zero, $a3
	or	$a1, $a1, $a3
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $a4, $a1
	ori	$a3, $zero, 7
	bltu	$a3, $a1, .LBB7_265
.LBB7_268:                              # %.loopexit1338
                                        #   in Loop: Header=BB7_68 Depth=3
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ldx.bu	$a2, $a2, $a1
	ori	$a3, $zero, 35
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	sub.d	$a3, $a3, $a4
	srl.w	$a3, $s3, $a3
	ld.d	$a4, $sp, 184                   # 8-byte Folded Reload
	alsl.w	$a3, $a3, $a4, 3
	sll.w	$s3, $s1, $a2
	sub.w	$s2, $a0, $a2
	add.w	$a0, $a3, $a1
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ori	$s1, $zero, 1
	ori	$s7, $zero, 32
	b	.LBB7_187
.LBB7_269:                              #   in Loop: Header=BB7_68 Depth=3
	sub.d	$a5, $a0, $a6
	add.d	$a1, $a1, $a6
	add.d	$a2, $a2, $a6
.LBB7_270:                              # %.lr.ph2995.preheader
                                        #   in Loop: Header=BB7_68 Depth=3
	addi.d	$a3, $a5, 1
.LBB7_271:                              # %.lr.ph2995
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        #       Parent Loop BB7_68 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.b	$a4, $a2, 0
	addi.d	$a2, $a2, 1
	addi.d	$a5, $a1, 1
	addi.w	$a3, $a3, -1
	st.b	$a4, $a1, 0
	move	$a1, $a5
	blt	$s1, $a3, .LBB7_271
	b	.LBB7_277
.LBB7_272:                              #   in Loop: Header=BB7_68 Depth=3
	ori	$s1, $zero, 1
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
.LBB7_273:                              # %.loopexit1341
                                        #   in Loop: Header=BB7_68 Depth=3
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ldx.bu	$a0, $a0, $a1
	sll.w	$s3, $s3, $a0
	sub.w	$s2, $s2, $a0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	add.w	$a0, $a0, $a1
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	b	.LBB7_187
.LBB7_274:                              #   in Loop: Header=BB7_68 Depth=3
	sub.d	$a6, $a2, $a7
	add.d	$a4, $a1, $a7
	add.d	$a5, $a3, $a7
.LBB7_275:                              # %.lr.ph3006.preheader
                                        #   in Loop: Header=BB7_68 Depth=3
	addi.d	$a1, $a6, 1
.LBB7_276:                              # %.lr.ph3006
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        #       Parent Loop BB7_68 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.b	$a2, $a5, 0
	addi.d	$a5, $a5, 1
	addi.d	$a3, $a4, 1
	addi.w	$a1, $a1, -1
	st.b	$a2, $a4, 0
	move	$a4, $a3
	bltu	$s1, $a1, .LBB7_276
.LBB7_277:                              # %.loopexit1334
                                        #   in Loop: Header=BB7_68 Depth=3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	sub.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	move	$s7, $t2
.LBB7_278:                              #   in Loop: Header=BB7_68 Depth=3
	st.d	$s7, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	bgtz	$a0, .LBB7_68
	b	.LBB7_499
.LBB7_279:                              #   in Loop: Header=BB7_63 Depth=2
	ld.bu	$a0, $fp, 89
	ori	$a1, $zero, 3
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	bne	$a0, $a1, .LBB7_472
# %bb.280:                              #   in Loop: Header=BB7_63 Depth=2
	ld.bu	$a0, $fp, 72
	ori	$s5, $zero, 32
	andi	$a0, $a0, 1
	beqz	$a0, .LBB7_473
# %bb.281:                              #   in Loop: Header=BB7_63 Depth=2
	bne	$s8, $s4, .LBB7_284
# %bb.282:                              #   in Loop: Header=BB7_63 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_631
# %bb.283:                              #   in Loop: Header=BB7_63 Depth=2
	ld.d	$s8, $fp, 112
	ld.d	$s4, $fp, 120
.LBB7_284:                              #   in Loop: Header=BB7_63 Depth=2
	addi.d	$s8, $s8, 1
	b	.LBB7_473
.LBB7_285:                              #   in Loop: Header=BB7_63 Depth=2
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	add.w	$a2, $a1, $s7
	blt	$a0, $s1, .LBB7_497
# %bb.286:                              # %.lr.ph2925.preheader
                                        #   in Loop: Header=BB7_63 Depth=2
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	bstrpick.d	$a0, $s7, 31, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	add.d	$s5, $a1, $a0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	move	$s7, $a2
	b	.LBB7_288
.LBB7_287:                              #   in Loop: Header=BB7_288 Depth=3
	move	$s6, $s7
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	slt	$a1, $s7, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	or	$s1, $a1, $a0
	move	$a0, $s5
	move	$a1, $s8
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	move	$s7, $s6
	add.d	$s5, $s5, $s1
	add.d	$s8, $s8, $s1
	sub.w	$a0, $a0, $s1
	ori	$s1, $zero, 1
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	blez	$a0, .LBB7_297
.LBB7_288:                              # %.lr.ph2925
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	sub.w	$a0, $s4, $s8
	bnez	$a0, .LBB7_287
# %bb.289:                              #   in Loop: Header=BB7_288 Depth=3
	ld.d	$a3, $s0, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_291
# %bb.290:                              #   in Loop: Header=BB7_288 Depth=3
	ld.d	$a0, $s0, 0
	jirl	$ra, $a3, 0
	b	.LBB7_292
.LBB7_291:                              #   in Loop: Header=BB7_288 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB7_292:                              #   in Loop: Header=BB7_288 Depth=3
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	bltz	$a0, .LBB7_628
# %bb.293:                              #   in Loop: Header=BB7_288 Depth=3
	bnez	$a0, .LBB7_296
# %bb.294:                              #   in Loop: Header=BB7_288 Depth=3
	ld.bu	$a0, $fp, 92
	bnez	$a0, .LBB7_627
# %bb.295:                              #   in Loop: Header=BB7_288 Depth=3
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s1, $fp, 92
	ori	$a0, $zero, 2
.LBB7_296:                              #   in Loop: Header=BB7_288 Depth=3
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s4, $s8, $a0
	st.d	$s4, $fp, 120
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	bgtz	$a0, .LBB7_288
.LBB7_297:                              #   in Loop: Header=BB7_63 Depth=2
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	b	.LBB7_499
.LBB7_298:                              # %.preheader1353
                                        #   in Loop: Header=BB7_63 Depth=2
	blt	$a0, $s1, .LBB7_498
# %bb.299:                              # %.preheader1332.preheader
                                        #   in Loop: Header=BB7_63 Depth=2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
.LBB7_300:                              # %.preheader1332
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_304 Depth 4
                                        #         Child Loop BB7_361 Depth 4
                                        #         Child Loop BB7_420 Depth 4
                                        #         Child Loop BB7_441 Depth 4
                                        #         Child Loop BB7_445 Depth 4
                                        #         Child Loop BB7_466 Depth 4
                                        #         Child Loop BB7_432 Depth 4
                                        #         Child Loop BB7_449 Depth 4
                                        #         Child Loop BB7_458 Depth 4
                                        #         Child Loop BB7_462 Depth 4
                                        #         Child Loop BB7_469 Depth 4
	ori	$s7, $zero, 1
	addi.w	$a0, $s2, 0
	ori	$a1, $zero, 15
	blt	$a1, $a0, .LBB7_311
# %bb.301:                              # %.lr.ph3029.preheader
                                        #   in Loop: Header=BB7_300 Depth=3
	ori	$a0, $zero, 16
	sub.d	$s1, $a0, $s2
	b	.LBB7_304
.LBB7_302:                              #   in Loop: Header=BB7_304 Depth=4
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s4, $s8, $a0
	st.d	$s4, $fp, 120
.LBB7_303:                              #   in Loop: Header=BB7_304 Depth=4
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s1
	or	$s3, $a0, $s3
	addi.d	$a0, $s2, 16
	addi.w	$a1, $s2, 0
	addi.d	$s8, $s8, 2
	addi.d	$s1, $s1, -16
	move	$s2, $a0
	bgez	$a1, .LBB7_312
.LBB7_304:                              # %.lr.ph3029
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        #       Parent Loop BB7_300 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $s8, 1
	bltu	$a0, $s4, .LBB7_303
# %bb.305:                              #   in Loop: Header=BB7_304 Depth=4
	ld.d	$a3, $s0, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_307
# %bb.306:                              #   in Loop: Header=BB7_304 Depth=4
	ld.d	$a0, $s0, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB7_308
	b	.LBB7_628
.LBB7_307:                              #   in Loop: Header=BB7_304 Depth=4
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB7_628
.LBB7_308:                              #   in Loop: Header=BB7_304 Depth=4
	bnez	$a0, .LBB7_302
# %bb.309:                              #   in Loop: Header=BB7_304 Depth=4
	ld.bu	$a0, $fp, 92
	bnez	$a0, .LBB7_627
# %bb.310:                              #   in Loop: Header=BB7_304 Depth=4
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s7, $fp, 92
	ori	$a0, $zero, 2
	b	.LBB7_302
.LBB7_311:                              #   in Loop: Header=BB7_300 Depth=3
	move	$a0, $s2
.LBB7_312:                              # %._crit_edge3030
                                        #   in Loop: Header=BB7_300 Depth=3
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	and	$a1, $s3, $a1
	srli.d	$a1, $a1, 19
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_354
# %bb.313:                              # %.preheader1330.preheader
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.314:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 19, 19
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_354
# %bb.315:                              # %.preheader1330.1
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.316:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 18, 18
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_354
# %bb.317:                              # %.preheader1330.2
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.318:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 17, 17
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_354
# %bb.319:                              # %.preheader1330.3
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.320:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 16, 16
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_354
# %bb.321:                              # %.preheader1330.4
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.322:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 15, 15
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_354
# %bb.323:                              # %.preheader1330.5
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.324:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 14, 14
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_354
# %bb.325:                              # %.preheader1330.6
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.326:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 13, 13
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_354
# %bb.327:                              # %.preheader1330.7
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.328:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 12, 12
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_354
# %bb.329:                              # %.preheader1330.8
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.330:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 11, 11
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_353
# %bb.331:                              # %.preheader1330.9
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.332:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 10, 10
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_353
# %bb.333:                              # %.preheader1330.10
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.334:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 9, 9
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_353
# %bb.335:                              # %.preheader1330.11
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.336:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 8, 8
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_353
# %bb.337:                              # %.preheader1330.12
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.338:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 7, 7
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_353
# %bb.339:                              # %.preheader1330.13
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.340:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 6, 6
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_353
# %bb.341:                              # %.preheader1330.14
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.342:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 5, 5
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_353
# %bb.343:                              # %.preheader1330.15
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.344:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 4, 4
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_353
# %bb.345:                              # %.preheader1330.16
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.346:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 3, 3
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_353
# %bb.347:                              # %.preheader1330.17
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.348:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 2, 2
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_353
# %bb.349:                              # %.preheader1330.18
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.350:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s3, 1, 1
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_353
# %bb.351:                              # %.preheader1330.19
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_632
# %bb.352:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a1, $s1, 1
	andi	$a2, $s3, 1
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 655
	bgeu	$a1, $s1, .LBB7_354
	b	.LBB7_643
.LBB7_353:                              #   in Loop: Header=BB7_300 Depth=3
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
.LBB7_354:                              # %.loopexit1331
                                        #   in Loop: Header=BB7_300 Depth=3
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $s1
	sll.w	$s3, $s3, $a1
	sub.w	$s2, $a0, $a1
	ori	$a2, $zero, 255
	bltu	$a2, $s1, .LBB7_356
# %bb.355:                              #   in Loop: Header=BB7_300 Depth=3
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	addi.w	$s7, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	stx.b	$s1, $a1, $a0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ori	$s1, $zero, 1
	b	.LBB7_471
.LBB7_356:                              #   in Loop: Header=BB7_300 Depth=3
	andi	$s5, $s1, 7
	ori	$a2, $zero, 7
	bne	$s5, $a2, .LBB7_412
# %bb.357:                              # %.preheader1328
                                        #   in Loop: Header=BB7_300 Depth=3
	ori	$a2, $zero, 15
	blt	$a2, $s2, .LBB7_369
# %bb.358:                              # %.lr.ph3039.preheader
                                        #   in Loop: Header=BB7_300 Depth=3
	sub.d	$a0, $a1, $a0
	addi.d	$s5, $a0, 16
	b	.LBB7_361
.LBB7_359:                              #   in Loop: Header=BB7_361 Depth=4
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s4, $s8, $a0
	st.d	$s4, $fp, 120
.LBB7_360:                              #   in Loop: Header=BB7_361 Depth=4
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s5
	or	$s3, $a0, $s3
	addi.w	$s2, $s6, 16
	addi.d	$s8, $s8, 2
	addi.d	$s5, $s5, -16
	bgez	$s6, .LBB7_369
.LBB7_361:                              # %.lr.ph3039
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        #       Parent Loop BB7_300 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $s8, 1
	move	$s6, $s2
	bltu	$a0, $s4, .LBB7_360
# %bb.362:                              #   in Loop: Header=BB7_361 Depth=4
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_364
# %bb.363:                              #   in Loop: Header=BB7_361 Depth=4
	ld.d	$a0, $a0, 0
	jirl	$ra, $a3, 0
	b	.LBB7_365
.LBB7_364:                              #   in Loop: Header=BB7_361 Depth=4
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB7_365:                              #   in Loop: Header=BB7_361 Depth=4
	bltz	$a0, .LBB7_628
# %bb.366:                              #   in Loop: Header=BB7_361 Depth=4
	bnez	$a0, .LBB7_359
# %bb.367:                              #   in Loop: Header=BB7_361 Depth=4
	ld.bu	$a0, $fp, 92
	bnez	$a0, .LBB7_627
# %bb.368:                              #   in Loop: Header=BB7_361 Depth=4
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s7, $fp, 92
	ori	$a0, $zero, 2
	b	.LBB7_359
.LBB7_369:                              # %._crit_edge3040
                                        #   in Loop: Header=BB7_300 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	and	$a0, $s3, $a0
	srli.d	$a0, $a0, 19
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_410
# %bb.370:                              # %.preheader.preheader
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.371:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 19, 19
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_411
# %bb.372:                              # %.preheader.1
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.373:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 18, 18
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_411
# %bb.374:                              # %.preheader.2
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.375:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 17, 17
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_411
# %bb.376:                              # %.preheader.3
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.377:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 16, 16
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_411
# %bb.378:                              # %.preheader.4
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.379:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 15, 15
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_411
# %bb.380:                              # %.preheader.5
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.381:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 14, 14
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_410
# %bb.382:                              # %.preheader.6
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.383:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 13, 13
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_410
# %bb.384:                              # %.preheader.7
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.385:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 12, 12
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_410
# %bb.386:                              # %.preheader.8
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.387:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 11, 11
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_410
# %bb.388:                              # %.preheader.9
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.389:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 10, 10
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_410
# %bb.390:                              # %.preheader.10
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.391:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 9, 9
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_410
# %bb.392:                              # %.preheader.11
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.393:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 8, 8
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_410
# %bb.394:                              # %.preheader.12
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.395:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 7, 7
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_410
# %bb.396:                              # %.preheader.13
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.397:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 6, 6
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_410
# %bb.398:                              # %.preheader.14
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.399:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 5, 5
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_410
# %bb.400:                              # %.preheader.15
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.401:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 4, 4
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_410
# %bb.402:                              # %.preheader.16
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.403:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 3, 3
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_410
# %bb.404:                              # %.preheader.17
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.405:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 2, 2
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_410
# %bb.406:                              # %.preheader.18
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.407:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s3, 1, 1
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_410
# %bb.408:                              # %.preheader.19
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_632
# %bb.409:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a0, $a0, 1
	andi	$a1, $s3, 1
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 249
	bgeu	$a1, $a0, .LBB7_411
	b	.LBB7_643
.LBB7_410:                              #   in Loop: Header=BB7_300 Depth=3
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
.LBB7_411:                              # %.loopexit1327
                                        #   in Loop: Header=BB7_300 Depth=3
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	sll.w	$s3, $s3, $a1
	sub.w	$s2, $s2, $a1
	addi.d	$a0, $a0, 7
	bstrpick.d	$s5, $a0, 15, 0
.LBB7_412:                              #   in Loop: Header=BB7_300 Depth=3
	ori	$t2, $zero, 32
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	addi.d	$a0, $s1, -256
	bstrpick.d	$a0, $a0, 31, 3
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB7_417
# %bb.413:                              #   in Loop: Header=BB7_300 Depth=3
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI7_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI7_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	move	$a1, $a4
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	jr	$a0
.LBB7_414:                              #   in Loop: Header=BB7_300 Depth=3
	move	$a1, $a2
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	b	.LBB7_424
.LBB7_415:                              #   in Loop: Header=BB7_300 Depth=3
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	b	.LBB7_424
.LBB7_416:                              #   in Loop: Header=BB7_300 Depth=3
	ori	$a1, $zero, 1
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	b	.LBB7_424
.LBB7_417:                              #   in Loop: Header=BB7_300 Depth=3
	addi.w	$s6, $a0, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ldx.bu	$s1, $a0, $s6
	bge	$s2, $s1, .LBB7_423
# %bb.418:                              # %.lr.ph3050.preheader
                                        #   in Loop: Header=BB7_300 Depth=3
	ori	$a0, $zero, 16
	sub.d	$s7, $a0, $s2
	b	.LBB7_420
.LBB7_419:                              #   in Loop: Header=BB7_420 Depth=4
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s7
	or	$s3, $a0, $s3
	addi.w	$s2, $s2, 16
	addi.d	$s8, $s8, 2
	addi.d	$s7, $s7, -16
	bge	$s2, $s1, .LBB7_423
.LBB7_420:                              # %.lr.ph3050
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        #       Parent Loop BB7_300 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $s8, 1
	bltu	$a0, $s4, .LBB7_419
# %bb.421:                              #   in Loop: Header=BB7_420 Depth=4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_631
# %bb.422:                              #   in Loop: Header=BB7_420 Depth=4
	ld.d	$s8, $fp, 112
	ld.d	$s4, $fp, 120
	b	.LBB7_419
.LBB7_423:                              # %._crit_edge3051
                                        #   in Loop: Header=BB7_300 Depth=3
	ori	$t2, $zero, 32
	sub.d	$a0, $t2, $s1
	slli.d	$a1, $s6, 2
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ldx.w	$a1, $a2, $a1
	srl.w	$a0, $s3, $a0
	sll.w	$s3, $s3, $s1
	sub.w	$s2, $s2, $s1
	add.d	$a0, $a0, $a1
	addi.w	$a1, $a0, -2
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
.LBB7_424:                              #   in Loop: Header=BB7_300 Depth=3
	ld.w	$a2, $fp, 40
	addi.w	$a0, $s5, 2
	add.w	$s7, $a0, $a3
	ori	$s1, $zero, 1
	bltu	$a2, $s7, .LBB7_638
# %bb.425:                              #   in Loop: Header=BB7_300 Depth=3
	move	$a6, $a3
	bstrpick.d	$a4, $a3, 31, 0
	addi.w	$a3, $a1, 0
	move	$a5, $a1
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a4
	st.d	$a5, $sp, 184                   # 8-byte Folded Spill
	bgeu	$a6, $a3, .LBB7_434
# %bb.426:                              #   in Loop: Header=BB7_300 Depth=3
	sub.w	$a5, $a5, $a6
	blt	$a2, $a5, .LBB7_641
# %bb.427:                              #   in Loop: Header=BB7_300 Depth=3
	sub.d	$a2, $a2, $a5
	bstrpick.d	$t0, $a2, 31, 0
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	add.d	$a3, $a2, $t0
	bge	$a5, $a0, .LBB7_439
# %bb.428:                              #   in Loop: Header=BB7_300 Depth=3
	sub.w	$a2, $a0, $a5
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	blt	$a5, $s1, .LBB7_450
# %bb.429:                              # %.lr.ph3065.preheader
                                        #   in Loop: Header=BB7_300 Depth=3
	bltu	$a5, $t2, .LBB7_447
# %bb.430:                              # %.lr.ph3065.preheader
                                        #   in Loop: Header=BB7_300 Depth=3
	sub.d	$a6, $a4, $t0
	bltu	$a6, $t2, .LBB7_447
# %bb.431:                              # %vector.ph3714
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a6, $a5, 30, 5
	slli.d	$a7, $a6, 5
	add.d	$a1, $a1, $a7
	add.d	$a3, $a3, $a7
	sub.d	$a6, $a5, $a7
	ld.d	$t1, $sp, 40                    # 8-byte Folded Reload
	add.d	$t0, $t1, $t0
	add.d	$a4, $t1, $a4
	move	$t1, $a7
.LBB7_432:                              # %vector.body3718
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        #       Parent Loop BB7_300 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $t0, -16
	vld	$vr1, $t0, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$t1, $t1, -32
	addi.d	$t0, $t0, 32
	addi.d	$a4, $a4, 32
	bnez	$t1, .LBB7_432
# %bb.433:                              # %middle.block3725
                                        #   in Loop: Header=BB7_300 Depth=3
	bne	$a7, $a5, .LBB7_448
	b	.LBB7_450
.LBB7_434:                              # %iter.check3735
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a5, $a5, 31, 0
	sub.d	$a2, $a1, $a5
	ori	$a6, $zero, 6
	bltu	$s5, $a6, .LBB7_438
# %bb.435:                              # %iter.check3735
                                        #   in Loop: Header=BB7_300 Depth=3
	bltu	$a3, $t2, .LBB7_438
# %bb.436:                              # %vector.main.loop.iter.check3737
                                        #   in Loop: Header=BB7_300 Depth=3
	sub.d	$a3, $zero, $a5
	ori	$a5, $zero, 30
	bgeu	$s5, $a5, .LBB7_440
# %bb.437:                              #   in Loop: Header=BB7_300 Depth=3
	move	$a6, $zero
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	b	.LBB7_444
.LBB7_438:                              #   in Loop: Header=BB7_300 Depth=3
	move	$a5, $a0
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	b	.LBB7_465
.LBB7_439:                              #   in Loop: Header=BB7_300 Depth=3
	move	$a2, $a0
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	b	.LBB7_451
.LBB7_440:                              # %vector.ph3738
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a5, $a0, 15, 5
	slli.d	$a6, $a5, 5
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	add.d	$a5, $a5, $a4
	move	$a7, $a6
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
.LBB7_441:                              # %vector.body3741
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        #       Parent Loop BB7_300 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.d	$t0, $a5, $a3
	vld	$vr0, $t0, -16
	vldx	$vr1, $a5, $a3
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a7, $a7, -32
	addi.d	$a5, $a5, 32
	bnez	$a7, .LBB7_441
# %bb.442:                              # %middle.block3748
                                        #   in Loop: Header=BB7_300 Depth=3
	beq	$a6, $a0, .LBB7_470
# %bb.443:                              # %vec.epilog.iter.check3753
                                        #   in Loop: Header=BB7_300 Depth=3
	andi	$a5, $a0, 24
	beqz	$a5, .LBB7_464
.LBB7_444:                              # %vec.epilog.ph3752
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$t0, $a0, 15, 3
	slli.d	$a7, $t0, 3
	sub.d	$a5, $a0, $a7
	alsl.d	$a1, $t0, $a1, 3
	alsl.d	$a2, $t0, $a2, 3
	sub.d	$t0, $a6, $a7
	add.d	$a4, $a6, $a4
	ld.d	$a6, $sp, 144                   # 8-byte Folded Reload
	add.d	$a4, $a6, $a4
.LBB7_445:                              # %vec.epilog.vector.body3759
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        #       Parent Loop BB7_300 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ldx.d	$a6, $a4, $a3
	st.d	$a6, $a4, 0
	addi.d	$t0, $t0, 8
	addi.d	$a4, $a4, 8
	bnez	$t0, .LBB7_445
# %bb.446:                              # %vec.epilog.middle.block3765
                                        #   in Loop: Header=BB7_300 Depth=3
	bne	$a7, $a0, .LBB7_465
	b	.LBB7_470
.LBB7_447:                              #   in Loop: Header=BB7_300 Depth=3
	move	$a6, $a5
.LBB7_448:                              # %.lr.ph3065.preheader3892
                                        #   in Loop: Header=BB7_300 Depth=3
	addi.d	$a4, $a6, 1
.LBB7_449:                              # %.lr.ph3065
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        #       Parent Loop BB7_300 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.b	$a5, $a3, 0
	addi.d	$a3, $a3, 1
	st.b	$a5, $a1, 0
	addi.w	$a4, $a4, -1
	addi.d	$a1, $a1, 1
	bltu	$s1, $a4, .LBB7_449
.LBB7_450:                              #   in Loop: Header=BB7_300 Depth=3
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
.LBB7_451:                              # %.loopexit1325
                                        #   in Loop: Header=BB7_300 Depth=3
	blt	$a2, $s1, .LBB7_470
# %bb.452:                              # %iter.check
                                        #   in Loop: Header=BB7_300 Depth=3
	ori	$a4, $zero, 8
	bltu	$a2, $a4, .LBB7_456
# %bb.453:                              # %iter.check
                                        #   in Loop: Header=BB7_300 Depth=3
	sub.d	$a4, $a1, $a3
	bltu	$a4, $t2, .LBB7_456
# %bb.454:                              # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB7_300 Depth=3
	bgeu	$a2, $t2, .LBB7_457
# %bb.455:                              #   in Loop: Header=BB7_300 Depth=3
	move	$a7, $zero
	b	.LBB7_461
.LBB7_456:                              #   in Loop: Header=BB7_300 Depth=3
	move	$a6, $a2
	move	$a4, $a1
	move	$a5, $a3
	b	.LBB7_468
.LBB7_457:                              # %vector.ph
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a4, $a2, 30, 5
	slli.d	$a7, $a4, 5
	addi.d	$a4, $a3, 16
	addi.d	$a5, $a1, 16
	move	$a6, $a7
.LBB7_458:                              # %vector.body
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        #       Parent Loop BB7_300 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a5, -16
	vst	$vr1, $a5, 0
	addi.d	$a6, $a6, -32
	addi.d	$a4, $a4, 32
	addi.d	$a5, $a5, 32
	bnez	$a6, .LBB7_458
# %bb.459:                              # %middle.block
                                        #   in Loop: Header=BB7_300 Depth=3
	beq	$a7, $a2, .LBB7_470
# %bb.460:                              # %vec.epilog.iter.check
                                        #   in Loop: Header=BB7_300 Depth=3
	andi	$a4, $a2, 24
	beqz	$a4, .LBB7_467
.LBB7_461:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB7_300 Depth=3
	bstrpick.d	$a5, $a2, 30, 3
	slli.d	$t0, $a5, 3
	sub.d	$a6, $a2, $t0
	alsl.d	$a4, $a5, $a1, 3
	alsl.d	$a5, $a5, $a3, 3
	sub.d	$t1, $a7, $t0
	add.d	$a3, $a3, $a7
	add.d	$a1, $a1, $a7
.LBB7_462:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        #       Parent Loop BB7_300 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a7, $a3, 0
	st.d	$a7, $a1, 0
	addi.d	$t1, $t1, 8
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, 8
	bnez	$t1, .LBB7_462
# %bb.463:                              # %vec.epilog.middle.block
                                        #   in Loop: Header=BB7_300 Depth=3
	bne	$t0, $a2, .LBB7_468
	b	.LBB7_470
.LBB7_464:                              #   in Loop: Header=BB7_300 Depth=3
	sub.d	$a5, $a0, $a6
	add.d	$a1, $a1, $a6
	add.d	$a2, $a2, $a6
.LBB7_465:                              # %.lr.ph3060.preheader
                                        #   in Loop: Header=BB7_300 Depth=3
	addi.d	$a3, $a5, 1
.LBB7_466:                              # %.lr.ph3060
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        #       Parent Loop BB7_300 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.b	$a4, $a2, 0
	addi.d	$a2, $a2, 1
	addi.d	$a5, $a1, 1
	addi.w	$a3, $a3, -1
	st.b	$a4, $a1, 0
	move	$a1, $a5
	blt	$s1, $a3, .LBB7_466
	b	.LBB7_470
.LBB7_467:                              #   in Loop: Header=BB7_300 Depth=3
	sub.d	$a6, $a2, $a7
	add.d	$a4, $a1, $a7
	add.d	$a5, $a3, $a7
.LBB7_468:                              # %.lr.ph3071.preheader
                                        #   in Loop: Header=BB7_300 Depth=3
	addi.d	$a1, $a6, 1
.LBB7_469:                              # %.lr.ph3071
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        #       Parent Loop BB7_300 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.b	$a2, $a5, 0
	addi.d	$a5, $a5, 1
	addi.d	$a3, $a4, 1
	addi.w	$a1, $a1, -1
	st.b	$a2, $a4, 0
	move	$a4, $a3
	bltu	$s1, $a1, .LBB7_469
.LBB7_470:                              # %.loopexit
                                        #   in Loop: Header=BB7_300 Depth=3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	sub.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
.LBB7_471:                              #   in Loop: Header=BB7_300 Depth=3
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	bgtz	$a0, .LBB7_300
	b	.LBB7_499
.LBB7_472:                              #   in Loop: Header=BB7_63 Depth=2
	ori	$s5, $zero, 32
.LBB7_473:                              #   in Loop: Header=BB7_63 Depth=2
	ori	$s7, $zero, 1
	addi.w	$a0, $s2, 0
	ori	$a1, $zero, 2
	blt	$a1, $a0, .LBB7_484
# %bb.474:                              # %.lr.ph2864.preheader
                                        #   in Loop: Header=BB7_63 Depth=2
	ori	$a0, $zero, 16
	sub.d	$s1, $a0, $s2
	b	.LBB7_477
.LBB7_475:                              #   in Loop: Header=BB7_477 Depth=3
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s4, $s8, $a0
	st.d	$s4, $fp, 120
.LBB7_476:                              #   in Loop: Header=BB7_477 Depth=3
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s1
	or	$s3, $a0, $s3
	addi.d	$a0, $s2, 16
	addi.w	$a1, $s2, 0
	addi.d	$s8, $s8, 2
	addi.w	$a2, $zero, -13
	addi.d	$s1, $s1, -16
	move	$s2, $a0
	bge	$a1, $a2, .LBB7_485
.LBB7_477:                              # %.lr.ph2864
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a0, $s8, 1
	bltu	$a0, $s4, .LBB7_476
# %bb.478:                              #   in Loop: Header=BB7_477 Depth=3
	ld.d	$a3, $s0, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_480
# %bb.479:                              #   in Loop: Header=BB7_477 Depth=3
	ld.d	$a0, $s0, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB7_481
	b	.LBB7_628
.LBB7_480:                              #   in Loop: Header=BB7_477 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB7_628
.LBB7_481:                              #   in Loop: Header=BB7_477 Depth=3
	bnez	$a0, .LBB7_475
# %bb.482:                              #   in Loop: Header=BB7_477 Depth=3
	ld.bu	$a0, $fp, 92
	bnez	$a0, .LBB7_627
# %bb.483:                              #   in Loop: Header=BB7_477 Depth=3
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s7, $fp, 92
	ori	$a0, $zero, 2
	b	.LBB7_475
.LBB7_484:                              #   in Loop: Header=BB7_63 Depth=2
	move	$a0, $s2
.LBB7_485:                              # %._crit_edge2865
                                        #   in Loop: Header=BB7_63 Depth=2
	bstrpick.d	$a1, $s3, 31, 29
	st.b	$a1, $fp, 89
	addi.w	$a1, $a0, 0
	slli.d	$s1, $s3, 3
	ori	$a2, $zero, 18
	bltu	$a2, $a1, .LBB7_496
# %bb.486:                              # %.lr.ph2875.preheader
                                        #   in Loop: Header=BB7_63 Depth=2
	addi.d	$s2, $a0, -19
	ori	$a1, $zero, 19
	sub.d	$s3, $a1, $a0
	b	.LBB7_489
.LBB7_487:                              #   in Loop: Header=BB7_489 Depth=3
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s4, $s8, $a0
	st.d	$s4, $fp, 120
.LBB7_488:                              #   in Loop: Header=BB7_489 Depth=3
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s3
	or	$s1, $a0, $s1
	addi.d	$s8, $s8, 2
	addi.w	$s2, $s2, 16
	addi.d	$s3, $s3, -16
	bgez	$s2, .LBB7_503
.LBB7_489:                              # %.lr.ph2875
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a0, $s8, 1
	bltu	$a0, $s4, .LBB7_488
# %bb.490:                              #   in Loop: Header=BB7_489 Depth=3
	ld.d	$a3, $s0, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_492
# %bb.491:                              #   in Loop: Header=BB7_489 Depth=3
	ld.d	$a0, $s0, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB7_493
	b	.LBB7_628
.LBB7_492:                              #   in Loop: Header=BB7_489 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB7_628
.LBB7_493:                              #   in Loop: Header=BB7_489 Depth=3
	bnez	$a0, .LBB7_487
# %bb.494:                              #   in Loop: Header=BB7_489 Depth=3
	ld.bu	$a0, $fp, 92
	bnez	$a0, .LBB7_627
# %bb.495:                              #   in Loop: Header=BB7_489 Depth=3
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s7, $fp, 92
	ori	$a0, $zero, 2
	b	.LBB7_487
.LBB7_496:                              #   in Loop: Header=BB7_63 Depth=2
	addi.w	$a0, $a0, -3
	b	.LBB7_504
.LBB7_497:                              #   in Loop: Header=BB7_63 Depth=2
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	move	$s7, $a2
	b	.LBB7_499
.LBB7_498:                              #   in Loop: Header=BB7_63 Depth=2
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
.LBB7_499:                              # %.loopexit1354
                                        #   in Loop: Header=BB7_63 Depth=2
	addi.w	$a0, $zero, -1
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	blt	$a0, $a3, .LBB7_502
# %bb.500:                              #   in Loop: Header=BB7_63 Depth=2
	ld.w	$a2, $fp, 76
	sub.w	$a1, $zero, $a3
	bltu	$a2, $a1, .LBB7_640
# %bb.501:                              #   in Loop: Header=BB7_63 Depth=2
	add.d	$a0, $a2, $a3
	st.w	$a0, $fp, 76
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
.LBB7_502:                              #   in Loop: Header=BB7_63 Depth=2
	sub.w	$s5, $s5, $a1
	bgtz	$s5, .LBB7_63
	b	.LBB7_593
.LBB7_503:                              # %._crit_edge2876.loopexit
                                        #   in Loop: Header=BB7_63 Depth=2
	addi.w	$a0, $s2, 16
.LBB7_504:                              # %._crit_edge2876
                                        #   in Loop: Header=BB7_63 Depth=2
	slli.d	$s2, $s1, 16
	ori	$a1, $zero, 23
	blt	$a1, $a0, .LBB7_516
# %bb.505:                              # %.lr.ph2886.preheader
                                        #   in Loop: Header=BB7_63 Depth=2
	addi.d	$s3, $a0, -32
	sub.d	$s5, $s5, $a0
	b	.LBB7_509
.LBB7_506:                              #   in Loop: Header=BB7_509 Depth=3
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s7, $fp, 92
	ori	$a0, $zero, 2
.LBB7_507:                              #   in Loop: Header=BB7_509 Depth=3
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s4, $s8, $a0
	st.d	$s4, $fp, 120
.LBB7_508:                              #   in Loop: Header=BB7_509 Depth=3
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s5
	or	$s2, $a0, $s2
	addi.d	$s8, $s8, 2
	addi.w	$s3, $s3, 16
	addi.w	$a0, $zero, -8
	addi.d	$s5, $s5, -16
	bge	$s3, $a0, .LBB7_517
.LBB7_509:                              # %.lr.ph2886
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a0, $s8, 1
	bltu	$a0, $s4, .LBB7_508
# %bb.510:                              #   in Loop: Header=BB7_509 Depth=3
	ld.d	$a3, $s0, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_512
# %bb.511:                              #   in Loop: Header=BB7_509 Depth=3
	ld.d	$a0, $s0, 0
	jirl	$ra, $a3, 0
	b	.LBB7_513
.LBB7_512:                              #   in Loop: Header=BB7_509 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB7_513:                              #   in Loop: Header=BB7_509 Depth=3
	bltz	$a0, .LBB7_628
# %bb.514:                              #   in Loop: Header=BB7_509 Depth=3
	bnez	$a0, .LBB7_507
# %bb.515:                              #   in Loop: Header=BB7_509 Depth=3
	ld.bu	$a0, $fp, 92
	beqz	$a0, .LBB7_506
	b	.LBB7_627
.LBB7_516:                              #   in Loop: Header=BB7_63 Depth=2
	addi.w	$a0, $a0, -16
	b	.LBB7_518
.LBB7_517:                              # %._crit_edge2887.loopexit
                                        #   in Loop: Header=BB7_63 Depth=2
	addi.w	$a0, $s3, 16
.LBB7_518:                              # %._crit_edge2887
                                        #   in Loop: Header=BB7_63 Depth=2
	bstrpick.d	$a2, $s2, 31, 24
	slli.d	$s2, $s2, 8
	addi.w	$s3, $a0, -8
	ld.bu	$a1, $fp, 89
	srli.d	$a3, $s1, 16
	bstrins.d	$a2, $a3, 23, 8
	st.w	$a2, $fp, 72
	st.w	$a2, $fp, 76
	ori	$a2, $zero, 1
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	beq	$a1, $a2, .LBB7_586
# %bb.519:                              # %._crit_edge2887
                                        #   in Loop: Header=BB7_63 Depth=2
	ori	$a3, $zero, 3
	beq	$a1, $a3, .LBB7_535
# %bb.520:                              # %._crit_edge2887
                                        #   in Loop: Header=BB7_63 Depth=2
	ori	$s7, $zero, 1
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB7_645
# %bb.521:                              # %.preheader1351.preheader
                                        #   in Loop: Header=BB7_63 Depth=2
	move	$s1, $zero
	b	.LBB7_523
.LBB7_522:                              # %._crit_edge2910
                                        #   in Loop: Header=BB7_523 Depth=3
	bstrpick.d	$a0, $s2, 31, 29
	slli.d	$s2, $s2, 3
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	stx.b	$a0, $a1, $s1
	addi.d	$s1, $s1, 1
	addi.w	$s3, $s3, -3
	ori	$a0, $zero, 8
	beq	$s1, $a0, .LBB7_585
.LBB7_523:                              # %.preheader1351
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_527 Depth 4
	ori	$a0, $zero, 2
	blt	$a0, $s3, .LBB7_522
# %bb.524:                              # %.lr.ph2909.preheader
                                        #   in Loop: Header=BB7_523 Depth=3
	ori	$a0, $zero, 16
	sub.d	$s5, $a0, $s3
	b	.LBB7_527
.LBB7_525:                              #   in Loop: Header=BB7_527 Depth=4
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s4, $s8, $a0
	st.d	$s4, $fp, 120
.LBB7_526:                              #   in Loop: Header=BB7_527 Depth=4
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s5
	or	$s2, $a0, $s2
	addi.w	$s3, $s6, 16
	addi.d	$s8, $s8, 2
	addi.w	$a0, $zero, -13
	addi.d	$s5, $s5, -16
	bge	$s6, $a0, .LBB7_522
.LBB7_527:                              # %.lr.ph2909
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        #       Parent Loop BB7_523 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $s8, 1
	move	$s6, $s3
	bltu	$a0, $s4, .LBB7_526
# %bb.528:                              #   in Loop: Header=BB7_527 Depth=4
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_530
# %bb.529:                              #   in Loop: Header=BB7_527 Depth=4
	ld.d	$a0, $a0, 0
	jirl	$ra, $a3, 0
	b	.LBB7_531
.LBB7_530:                              #   in Loop: Header=BB7_527 Depth=4
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB7_531:                              #   in Loop: Header=BB7_527 Depth=4
	bltz	$a0, .LBB7_628
# %bb.532:                              #   in Loop: Header=BB7_527 Depth=4
	bnez	$a0, .LBB7_525
# %bb.533:                              #   in Loop: Header=BB7_527 Depth=4
	ld.bu	$a0, $fp, 92
	bnez	$a0, .LBB7_627
# %bb.534:                              #   in Loop: Header=BB7_527 Depth=4
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s7, $fp, 92
	ori	$a0, $zero, 2
	b	.LBB7_525
.LBB7_535:                              #   in Loop: Header=BB7_63 Depth=2
	ori	$s2, $zero, 1
	st.b	$a2, $fp, 88
	ori	$a1, $zero, 23
	blt	$a1, $a0, .LBB7_548
# %bb.536:                              # %.lr.ph2896.preheader
                                        #   in Loop: Header=BB7_63 Depth=2
	addi.d	$s1, $a0, -24
	b	.LBB7_539
.LBB7_537:                              #   in Loop: Header=BB7_539 Depth=3
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s4, $s8, $a0
	st.d	$s4, $fp, 120
.LBB7_538:                              #   in Loop: Header=BB7_539 Depth=3
	addi.w	$s1, $s1, 16
	addi.d	$s8, $s8, 2
	bgez	$s1, .LBB7_547
.LBB7_539:                              # %.lr.ph2896
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_63 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a0, $s8, 1
	bltu	$a0, $s4, .LBB7_538
# %bb.540:                              #   in Loop: Header=BB7_539 Depth=3
	ld.d	$a3, $s0, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_542
# %bb.541:                              #   in Loop: Header=BB7_539 Depth=3
	ld.d	$a0, $s0, 0
	jirl	$ra, $a3, 0
	b	.LBB7_543
.LBB7_542:                              #   in Loop: Header=BB7_539 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB7_543:                              #   in Loop: Header=BB7_539 Depth=3
	bltz	$a0, .LBB7_628
# %bb.544:                              #   in Loop: Header=BB7_539 Depth=3
	bnez	$a0, .LBB7_537
# %bb.545:                              #   in Loop: Header=BB7_539 Depth=3
	ld.bu	$a0, $fp, 92
	bnez	$a0, .LBB7_627
# %bb.546:                              #   in Loop: Header=BB7_539 Depth=3
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s2, $fp, 92
	ori	$a0, $zero, 2
	b	.LBB7_537
.LBB7_547:                              # %._crit_edge2897.loopexit
                                        #   in Loop: Header=BB7_63 Depth=2
	addi.w	$s3, $s1, 16
.LBB7_548:                              # %._crit_edge2897
                                        #   in Loop: Header=BB7_63 Depth=2
	addi.d	$a0, $s3, -16
	sltui	$a0, $a0, 1
	addi.w	$a1, $zero, -2
	masknez	$a0, $a1, $a0
	add.d	$a0, $s8, $a0
	bne	$a0, $s4, .LBB7_551
# %bb.549:                              #   in Loop: Header=BB7_63 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_631
# %bb.550:                              #   in Loop: Header=BB7_63 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s4, $fp, 120
.LBB7_551:                              #   in Loop: Header=BB7_63 Depth=2
	ld.bu	$s2, $a0, 0
	addi.d	$a0, $a0, 1
	bne	$a0, $s4, .LBB7_554
# %bb.552:                              #   in Loop: Header=BB7_63 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_631
# %bb.553:                              #   in Loop: Header=BB7_63 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s4, $fp, 120
.LBB7_554:                              #   in Loop: Header=BB7_63 Depth=2
	ld.bu	$s3, $a0, 0
	addi.d	$a0, $a0, 1
	bne	$a0, $s4, .LBB7_557
# %bb.555:                              #   in Loop: Header=BB7_63 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_631
# %bb.556:                              #   in Loop: Header=BB7_63 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s4, $fp, 120
.LBB7_557:                              #   in Loop: Header=BB7_63 Depth=2
	ld.bu	$s8, $a0, 0
	addi.d	$a0, $a0, 1
	bne	$a0, $s4, .LBB7_560
# %bb.558:                              #   in Loop: Header=BB7_63 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_631
# %bb.559:                              #   in Loop: Header=BB7_63 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s4, $fp, 120
.LBB7_560:                              #   in Loop: Header=BB7_63 Depth=2
	ld.bu	$a1, $a0, 0
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	bne	$a0, $s4, .LBB7_563
# %bb.561:                              #   in Loop: Header=BB7_63 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_631
# %bb.562:                              #   in Loop: Header=BB7_63 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s4, $fp, 120
.LBB7_563:                              #   in Loop: Header=BB7_63 Depth=2
	ld.bu	$a1, $a0, 0
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	bne	$a0, $s4, .LBB7_566
# %bb.564:                              #   in Loop: Header=BB7_63 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_631
# %bb.565:                              #   in Loop: Header=BB7_63 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s4, $fp, 120
.LBB7_566:                              #   in Loop: Header=BB7_63 Depth=2
	ld.bu	$a1, $a0, 0
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	bne	$a0, $s4, .LBB7_569
# %bb.567:                              #   in Loop: Header=BB7_63 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_631
# %bb.568:                              #   in Loop: Header=BB7_63 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s4, $fp, 120
.LBB7_569:                              #   in Loop: Header=BB7_63 Depth=2
	ld.bu	$a1, $a0, 0
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	bne	$a0, $s4, .LBB7_572
# %bb.570:                              #   in Loop: Header=BB7_63 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_631
# %bb.571:                              #   in Loop: Header=BB7_63 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s4, $fp, 120
.LBB7_572:                              #   in Loop: Header=BB7_63 Depth=2
	ld.bu	$a1, $a0, 0
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	bne	$a0, $s4, .LBB7_575
# %bb.573:                              #   in Loop: Header=BB7_63 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_631
# %bb.574:                              #   in Loop: Header=BB7_63 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s4, $fp, 120
.LBB7_575:                              #   in Loop: Header=BB7_63 Depth=2
	ld.bu	$s6, $a0, 0
	addi.d	$a0, $a0, 1
	bne	$a0, $s4, .LBB7_578
# %bb.576:                              #   in Loop: Header=BB7_63 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_631
# %bb.577:                              #   in Loop: Header=BB7_63 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s4, $fp, 120
.LBB7_578:                              #   in Loop: Header=BB7_63 Depth=2
	ld.bu	$s1, $a0, 0
	addi.d	$a0, $a0, 1
	bne	$a0, $s4, .LBB7_581
# %bb.579:                              #   in Loop: Header=BB7_63 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_631
# %bb.580:                              #   in Loop: Header=BB7_63 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s4, $fp, 120
.LBB7_581:                              #   in Loop: Header=BB7_63 Depth=2
	ld.bu	$s5, $a0, 0
	addi.d	$a0, $a0, 1
	bne	$a0, $s4, .LBB7_584
# %bb.582:                              #   in Loop: Header=BB7_63 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_631
# %bb.583:                              #   in Loop: Header=BB7_63 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s4, $fp, 120
.LBB7_584:                              #   in Loop: Header=BB7_63 Depth=2
	move	$a2, $s2
	move	$s2, $zero
	move	$a1, $s3
	move	$s3, $zero
	slli.d	$a1, $a1, 8
	or	$a1, $a1, $a2
	slli.d	$a2, $s8, 16
	or	$a1, $a1, $a2
	addi.d	$s8, $a0, 1
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 24
	or	$a1, $a1, $a2
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 8
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	or	$a1, $a1, $a2
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 16
	or	$a1, $a1, $a2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	slli.d	$a2, $a2, 24
	or	$a1, $a1, $a2
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	slli.d	$a1, $s1, 8
	ld.b	$a0, $a0, 0
	or	$a1, $a1, $s6
	slli.d	$a2, $s5, 16
	or	$a1, $a1, $a2
	slli.d	$a0, $a0, 24
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	ori	$s1, $zero, 1
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	b	.LBB7_64
.LBB7_585:                              #   in Loop: Header=BB7_63 Depth=2
	ori	$a0, $zero, 8
	ori	$a1, $zero, 7
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(lzx_make_decode_table)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	bnez	$a0, .LBB7_647
.LBB7_586:                              #   in Loop: Header=BB7_63 Depth=2
	st.d	$s8, $fp, 112
	st.d	$s4, $fp, 120
	st.w	$s2, $fp, 144
	st.w	$s3, $fp, 148
	ori	$a3, $zero, 256
	move	$a0, $fp
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	move	$a1, $s8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lzx_read_lens)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_631
# %bb.587:                              #   in Loop: Header=BB7_63 Depth=2
	ori	$s4, $zero, 1
	ld.bu	$a0, $fp, 91
	slli.d	$a0, $a0, 3
	addi.d	$a3, $a0, 256
	ori	$a2, $zero, 256
	move	$a0, $fp
	move	$a1, $s8
	pcaddu18i	$ra, %call36(lzx_read_lens)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	bnez	$a0, .LBB7_631
# %bb.588:                              #   in Loop: Header=BB7_63 Depth=2
	vld	$vr0, $fp, 112
	vst	$vr0, $sp, 224                  # 16-byte Folded Spill
	ld.w	$s1, $fp, 144
	ld.w	$s2, $fp, 148
	ori	$a0, $zero, 656
	ori	$a1, $zero, 12
	move	$a2, $s8
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(lzx_make_decode_table)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_644
# %bb.589:                              #   in Loop: Header=BB7_63 Depth=2
	ld.bu	$a0, $fp, 472
	beqz	$a0, .LBB7_591
# %bb.590:                              #   in Loop: Header=BB7_63 Depth=2
	st.b	$s4, $fp, 88
.LBB7_591:                              #   in Loop: Header=BB7_63 Depth=2
	vld	$vr0, $sp, 224                  # 16-byte Folded Reload
	vst	$vr0, $fp, 112
	st.w	$s1, $fp, 144
	st.w	$s2, $fp, 148
	ori	$a3, $zero, 249
	move	$a0, $fp
	move	$a1, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lzx_read_lens)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_631
# %bb.592:                              #   in Loop: Header=BB7_63 Depth=2
	move	$a2, $s3
	ld.d	$s8, $fp, 112
	ld.d	$s4, $fp, 120
	ld.w	$s3, $fp, 144
	ld.w	$s2, $fp, 148
	ori	$a0, $zero, 250
	ori	$a1, $zero, 12
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(lzx_make_decode_table)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	beqz	$a0, .LBB7_64
	b	.LBB7_646
.LBB7_593:                              # %._crit_edge3101.loopexit
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.w	$a0, $fp, 48
.LBB7_594:                              # %._crit_edge3101
                                        #   in Loop: Header=BB7_11 Depth=1
	sub.w	$a1, $s7, $a0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	addi.w	$s1, $a0, 0
	bne	$a1, $s1, .LBB7_633
# %bb.595:                              #   in Loop: Header=BB7_11 Depth=1
	addi.w	$a0, $s2, -1
	ori	$a1, $zero, 14
	bltu	$a1, $a0, .LBB7_600
# %bb.596:                              # %.preheader1364
                                        #   in Loop: Header=BB7_11 Depth=1
	addi.d	$a0, $s8, 1
	bltu	$a0, $s4, .LBB7_599
# %bb.597:                              #   in Loop: Header=BB7_11 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_631
# %bb.598:                              #   in Loop: Header=BB7_11 Depth=1
	ld.d	$s8, $fp, 112
	ld.d	$s4, $fp, 120
.LBB7_599:                              # %.loopexit1365.loopexit
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.hu	$a0, $s8, 0
	ori	$a1, $zero, 16
	sub.d	$a1, $a1, $s2
	sll.w	$a0, $a0, $a1
	or	$s3, $a0, $s3
	ori	$s2, $s2, 16
	addi.d	$s8, $s8, 2
.LBB7_600:                              # %.loopexit1365
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.d	$a0, $fp, 128
	ld.d	$a1, $fp, 136
	bne	$a0, $a1, .LBB7_634
# %bb.601:                              #   in Loop: Header=BB7_11 Depth=1
	ld.bu	$a0, $fp, 88
	ld.w	$s6, $fp, 80
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	bstrpick.d	$s5, $a1, 31, 0
	beqz	$a0, .LBB7_613
# %bb.602:                              #   in Loop: Header=BB7_11 Depth=1
	beqz	$s6, .LBB7_614
# %bb.603:                              #   in Loop: Header=BB7_11 Depth=1
	ori	$a0, $zero, 11
	bltu	$s1, $a0, .LBB7_615
# %bb.604:                              #   in Loop: Header=BB7_11 Depth=1
	ld.w	$a0, $fp, 52
	lu12i.w	$a1, 8
	ori	$a1, $a1, 1
	bgeu	$a0, $a1, .LBB7_615
# %bb.605:                              # %.lr.ph3113.preheader
                                        #   in Loop: Header=BB7_11 Depth=1
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -10
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $fp, 32
	ld.wu	$a2, $fp, 48
	ld.w	$s1, $fp, 84
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	add.d	$s7, $a3, $a0
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	st.d	$s0, $fp, 128
	add.d	$a1, $a1, $a2
	move	$a0, $s0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB7_607
.LBB7_606:                              #   in Loop: Header=BB7_607 Depth=2
	addi.d	$s0, $s0, 1
	ori	$a1, $zero, 1
	add.d	$s1, $s1, $a1
	bgeu	$s0, $s7, .LBB7_612
.LBB7_607:                              # %.lr.ph3113
                                        #   Parent Loop BB7_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $s0, 0
	ori	$a2, $zero, 232
	bne	$a1, $a2, .LBB7_606
# %bb.608:                              #   in Loop: Header=BB7_607 Depth=2
	ld.bu	$a1, $s0, 3
	ld.hu	$a2, $s0, 1
	ld.b	$a3, $s0, 4
	slli.w	$a1, $a1, 16
	or	$a1, $a2, $a1
	slli.w	$a2, $a3, 24
	or	$a1, $a1, $a2
	sub.w	$a3, $zero, $s1
	blt	$a1, $a3, .LBB7_611
# %bb.609:                              #   in Loop: Header=BB7_607 Depth=2
	bge	$a1, $s6, .LBB7_611
# %bb.610:                              #   in Loop: Header=BB7_607 Depth=2
	slti	$a2, $a2, 0
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	st.w	$a1, $s0, 1
.LBB7_611:                              #   in Loop: Header=BB7_607 Depth=2
	addi.d	$s0, $s0, 5
	ori	$a1, $zero, 5
	add.d	$s1, $s1, $a1
	bltu	$s0, $s7, .LBB7_607
.LBB7_612:                              # %._crit_edge3114
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.w	$a0, $fp, 84
	ld.d	$a1, $fp, 128
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.w	$a0, $fp, 84
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	b	.LBB7_617
.LBB7_613:                              #   in Loop: Header=BB7_11 Depth=1
	ld.d	$a0, $fp, 32
	ld.wu	$a1, $fp, 48
	add.d	$a1, $a0, $a1
	st.d	$a1, $fp, 128
	bnez	$s6, .LBB7_616
	b	.LBB7_617
.LBB7_614:                              # %.thread3334
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.d	$a0, $fp, 32
	ld.wu	$a1, $fp, 48
	add.d	$a1, $a0, $a1
	st.d	$a1, $fp, 128
	b	.LBB7_617
.LBB7_615:                              # %.thread3336
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.d	$a0, $fp, 32
	ld.wu	$a1, $fp, 48
	add.d	$a1, $a0, $a1
	st.d	$a1, $fp, 128
.LBB7_616:                              #   in Loop: Header=BB7_11 Depth=1
	ld.w	$a0, $fp, 84
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.w	$a0, $fp, 84
.LBB7_617:                              #   in Loop: Header=BB7_11 Depth=1
	add.d	$a0, $a1, $s5
	st.d	$a0, $fp, 136
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	slt	$a0, $a4, $s5
	ld.bu	$a2, $fp, 8
	masknez	$a3, $s5, $a0
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a3
	addi.w	$s1, $a0, 0
	beqz	$a2, .LBB7_620
# %bb.618:                              #   in Loop: Header=BB7_11 Depth=1
	ld.w	$a0, $fp, 4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	lu12i.w	$s5, 8
	bne	$a0, $s1, .LBB7_628
# %bb.619:                              # %._crit_edge3330
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.d	$a1, $fp, 128
	b	.LBB7_621
.LBB7_620:                              #   in Loop: Header=BB7_11 Depth=1
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	lu12i.w	$s5, 8
.LBB7_621:                              #   in Loop: Header=BB7_11 Depth=1
	ld.d	$a0, $fp, 16
	add.d	$a1, $a1, $s1
	st.d	$a1, $fp, 128
	add.d	$a0, $a0, $s1
	ld.w	$a2, $fp, 48
	st.d	$a0, $fp, 16
	ld.w	$a0, $fp, 52
	ld.w	$a1, $fp, 40
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	add.w	$a2, $a2, $a3
	st.w	$a2, $fp, 48
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, 52
	bne	$a2, $a1, .LBB7_623
# %bb.622:                              #   in Loop: Header=BB7_11 Depth=1
	st.w	$zero, $fp, 48
.LBB7_623:                              #   in Loop: Header=BB7_11 Depth=1
	andi	$a2, $s2, 15
	sll.w	$s3, $s3, $a2
	bstrins.d	$s2, $zero, 3, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $s1
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	xor	$a1, $s7, $a1
	sltui	$a1, $a1, 1
	masknez	$s7, $s7, $a1
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	ori	$s1, $zero, 1
	ld.d	$s7, $sp, 104                   # 8-byte Folded Reload
	bltu	$a0, $s7, .LBB7_11
# %bb.624:                              # %._crit_edge3126
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beqz	$a0, .LBB7_642
.LBB7_625:                              # %._crit_edge3126.thread
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB7_629
.LBB7_626:
	move	$a0, $zero
	b	.LBB7_630
.LBB7_627:
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB7_628:
	addi.w	$a0, $zero, -123
.LBB7_629:
	move	$a1, $a0
	lu32i.d	$a1, 0
	st.w	$a1, $fp, 96
.LBB7_630:
	ld.d	$s8, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 312                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 320                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 328                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 336
	ret
.LBB7_631:
	ld.w	$a0, $fp, 96
	b	.LBB7_630
.LBB7_632:                              # %split3323
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB7_629
.LBB7_633:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	b	.LBB7_635
.LBB7_634:
	sub.d	$a1, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
.LBB7_635:
	move	$a2, $s1
.LBB7_636:
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB7_637:
	addi.w	$a0, $zero, -124
	b	.LBB7_629
.LBB7_638:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB7_629
.LBB7_639:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB7_629
.LBB7_640:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	b	.LBB7_636
.LBB7_641:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB7_629
.LBB7_642:
	move	$a0, $zero
	st.d	$s8, $fp, 112
	st.d	$s4, $fp, 120
	st.w	$s3, $fp, 144
	st.w	$s2, $fp, 148
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.w	$a1, $fp, 44
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	st.w	$a1, $fp, 60
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.w	$a1, $fp, 64
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.w	$a1, $fp, 68
	b	.LBB7_630
.LBB7_643:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB7_629
.LBB7_644:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB7_629
.LBB7_645:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB7_629
.LBB7_646:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB7_629
.LBB7_647:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB7_629
.Lfunc_end7:
	.size	lzx_decompress, .Lfunc_end7-lzx_decompress
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI7_0:
	.word	.LBB7_424-.LJTI7_0
	.word	.LBB7_414-.LJTI7_0
	.word	.LBB7_415-.LJTI7_0
	.word	.LBB7_416-.LJTI7_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function lzx_read_input
	.type	lzx_read_input,@function
lzx_read_input:                         # @lzx_read_input
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	lu12i.w	$a0, 13
	ori	$a0, $a0, 1632
	add.d	$a0, $fp, $a0
	ld.d	$a3, $a0, 8
	beqz	$a3, .LBB8_2
# %bb.1:
	ld.d	$a0, $a0, 0
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	jirl	$ra, $a3, 0
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB8_3
	b	.LBB8_7
.LBB8_2:
	ld.w	$a0, $fp, 0
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB8_7
.LBB8_3:
	beqz	$a0, .LBB8_5
.LBB8_4:
	ld.d	$a2, $fp, 104
	move	$a1, $zero
	st.d	$a2, $fp, 112
	add.d	$a0, $a2, $a0
	st.d	$a0, $fp, 120
	b	.LBB8_8
.LBB8_5:
	ld.bu	$a0, $fp, 92
	beqz	$a0, .LBB8_9
# %bb.6:
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB8_7:
	addi.w	$a1, $zero, -123
	move	$a0, $a1
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 96
.LBB8_8:
	move	$a0, $a1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB8_9:
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 92
	ori	$a0, $zero, 2
	b	.LBB8_4
.Lfunc_end8:
	.size	lzx_read_input, .Lfunc_end8-lzx_read_input
                                        # -- End function
	.p2align	5                               # -- Begin function lzx_make_decode_table
	.type	lzx_make_decode_table,@function
lzx_make_decode_table:                  # @lzx_make_decode_table
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	move	$a7, $zero
	ori	$t5, $zero, 1
	sll.w	$a6, $t5, $a1
	bstrpick.d	$a5, $a6, 31, 1
	andi	$t0, $a1, 255
	bstrpick.d	$a4, $a0, 15, 0
	ori	$a0, $zero, 4
	ori	$t1, $zero, 16
	move	$t2, $a5
	b	.LBB9_2
	.p2align	4, , 16
.LBB9_1:                                # %.split.us
                                        #   in Loop: Header=BB9_2 Depth=1
	bstrpick.d	$t2, $t2, 31, 1
	addi.d	$t5, $t3, 1
	bgeu	$t3, $t0, .LBB9_28
.LBB9_2:                                # %.preheader108
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_6 Depth 2
                                        #       Child Loop BB9_14 Depth 3
                                        #       Child Loop BB9_18 Depth 3
                                        #       Child Loop BB9_21 Depth 3
                                        #     Child Loop BB9_24 Depth 2
	addi.w	$t4, $t2, 0
	move	$t3, $t5
	beqz	$t4, .LBB9_22
# %bb.3:                                # %.preheader108.split.preheader
                                        #   in Loop: Header=BB9_2 Depth=1
	move	$t5, $zero
	sub.w	$t6, $zero, $t2
	bstrpick.d	$t7, $t2, 30, 4
	slli.w	$t7, $t7, 4
	andi	$t8, $t2, 15
	andi	$fp, $t2, 12
	bstrpick.d	$s0, $t2, 30, 2
	slli.w	$s0, $s0, 2
	andi	$s1, $t2, 3
	bstrpick.d	$s2, $t2, 31, 2
	slli.d	$s2, $s2, 2
	sub.d	$s2, $zero, $s2
	b	.LBB9_6
	.p2align	4, , 16
.LBB9_4:                                #   in Loop: Header=BB9_6 Depth=2
	move	$a7, $s3
.LBB9_5:                                # %..loopexit107_crit_edge
                                        #   in Loop: Header=BB9_6 Depth=2
	addi.d	$t5, $t5, 1
	bstrpick.d	$s3, $t5, 15, 0
	bgeu	$s3, $a4, .LBB9_1
.LBB9_6:                                # %.preheader108.split
                                        #   Parent Loop BB9_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_14 Depth 3
                                        #       Child Loop BB9_18 Depth 3
                                        #       Child Loop BB9_21 Depth 3
	bstrpick.d	$s3, $t5, 15, 0
	ldx.bu	$s3, $a2, $s3
	bne	$s3, $t3, .LBB9_5
# %bb.7:                                #   in Loop: Header=BB9_6 Depth=2
	add.w	$s3, $a7, $t2
	bltu	$a6, $s3, .LBB9_26
# %bb.8:                                # %iter.check
                                        #   in Loop: Header=BB9_6 Depth=2
	bltu	$t4, $a0, .LBB9_12
# %bb.9:                                # %iter.check
                                        #   in Loop: Header=BB9_6 Depth=2
	bltu	$t6, $a7, .LBB9_12
# %bb.10:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB9_6 Depth=2
	bgeu	$t4, $t1, .LBB9_13
# %bb.11:                               #   in Loop: Header=BB9_6 Depth=2
	move	$s6, $zero
	b	.LBB9_17
	.p2align	4, , 16
.LBB9_12:                               #   in Loop: Header=BB9_6 Depth=2
	move	$s5, $t2
	move	$s4, $a7
	b	.LBB9_21
.LBB9_13:                               # %vector.ph
                                        #   in Loop: Header=BB9_6 Depth=2
	vreplgr2vr.h	$vr0, $t5
	move	$s4, $a7
	move	$s5, $t7
	.p2align	4, , 16
.LBB9_14:                               # %vector.body
                                        #   Parent Loop BB9_2 Depth=1
                                        #     Parent Loop BB9_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$s6, $s4, 31, 0
	alsl.d	$s7, $s6, $a3, 1
	slli.d	$s6, $s6, 1
	vstx	$vr0, $a3, $s6
	vst	$vr0, $s7, 16
	addi.w	$s5, $s5, -16
	addi.w	$s4, $s4, 16
	bnez	$s5, .LBB9_14
# %bb.15:                               # %middle.block
                                        #   in Loop: Header=BB9_6 Depth=2
	beq	$t4, $t7, .LBB9_4
# %bb.16:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB9_6 Depth=2
	move	$s6, $t7
	beqz	$fp, .LBB9_20
.LBB9_17:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB9_6 Depth=2
	add.w	$s4, $a7, $s0
	vinsgr2vr.h	$vr0, $t5, 0
	vreplvei.h	$vr0, $vr0, 0
	add.d	$s5, $s2, $s6
	add.w	$a7, $a7, $s6
	.p2align	4, , 16
.LBB9_18:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB9_2 Depth=1
                                        #     Parent Loop BB9_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$s6, $a7, 31, 0
	alsl.d	$s6, $s6, $a3, 1
	vstelm.d	$vr0, $s6, 0, 0
	addi.w	$s5, $s5, 4
	addi.w	$a7, $a7, 4
	bnez	$s5, .LBB9_18
# %bb.19:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB9_6 Depth=2
	move	$s5, $s1
	bne	$t4, $s0, .LBB9_21
	b	.LBB9_4
.LBB9_20:                               #   in Loop: Header=BB9_6 Depth=2
	add.w	$s4, $a7, $t7
	move	$s5, $t8
	.p2align	4, , 16
.LBB9_21:                               # %.preheader106
                                        #   Parent Loop BB9_2 Depth=1
                                        #     Parent Loop BB9_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$s5, $s5, -1
	bstrpick.d	$a7, $s4, 31, 0
	addi.w	$s4, $s4, 1
	slli.d	$a7, $a7, 1
	stx.h	$t5, $a3, $a7
	bnez	$s5, .LBB9_21
	b	.LBB9_4
	.p2align	4, , 16
.LBB9_22:                               # %.preheader108.split.us.preheader
                                        #   in Loop: Header=BB9_2 Depth=1
	move	$t4, $zero
	b	.LBB9_24
	.p2align	4, , 16
.LBB9_23:                               # %.preheader106.us
                                        #   in Loop: Header=BB9_24 Depth=2
	addi.d	$t4, $t4, 1
	bgeu	$t4, $a4, .LBB9_1
.LBB9_24:                               # %.preheader108.split.us
                                        #   Parent Loop BB9_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$t5, $a2, $t4
	bne	$t5, $t3, .LBB9_23
# %bb.25:                               # %.preheader108.split.us
                                        #   in Loop: Header=BB9_24 Depth=2
	bgeu	$a6, $a7, .LBB9_23
.LBB9_26:
	ori	$a0, $zero, 1
.LBB9_27:                               # %.loopexit
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB9_28:
	bne	$a7, $a6, .LBB9_30
.LBB9_29:
	move	$a0, $zero
	b	.LBB9_27
.LBB9_30:
	bstrpick.d	$t0, $a7, 15, 0
	lu12i.w	$a0, 15
	bgeu	$t0, $a6, .LBB9_48
# %bb.31:                               # %iter.check181
	addi.d	$t0, $a7, 1
	bstrpick.d	$t0, $t0, 15, 0
	sub.d	$t0, $a6, $t0
	sltu	$t1, $a6, $t0
	masknez	$t1, $t0, $t1
	addi.w	$t0, $t1, 1
	ori	$t3, $zero, 4
	move	$t2, $a7
	bltu	$t0, $t3, .LBB9_46
# %bb.32:                               # %vector.scevcheck177
	bstrpick.d	$t2, $t1, 15, 0
	addi.w	$t3, $zero, -2
	sub.d	$t3, $t3, $a7
	bstrpick.d	$t3, $t3, 15, 0
	bltu	$t3, $t2, .LBB9_37
# %bb.33:                               # %vector.scevcheck177
	nor	$t3, $a7, $zero
	bstrpick.d	$t3, $t3, 15, 0
	bltu	$t3, $t2, .LBB9_37
# %bb.34:                               # %vector.scevcheck177
	bstrpick.d	$t1, $t1, 31, 16
	move	$t2, $a7
	bnez	$t1, .LBB9_46
# %bb.35:                               # %vector.main.loop.iter.check183
	ori	$t1, $zero, 16
	bgeu	$t0, $t1, .LBB9_38
# %bb.36:
	move	$t1, $zero
	b	.LBB9_42
.LBB9_37:
	move	$t2, $a7
	b	.LBB9_46
.LBB9_38:                               # %vector.ph184
	move	$t2, $zero
	move	$t1, $t0
	bstrins.d	$t1, $zero, 3, 0
	vrepli.b	$vr0, -1
.LBB9_39:                               # %vector.body187
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t3, $a7, $t2
	bstrpick.d	$t3, $t3, 15, 0
	alsl.d	$t4, $t3, $a3, 1
	slli.d	$t3, $t3, 1
	vstx	$vr0, $a3, $t3
	addi.w	$t2, $t2, 16
	vst	$vr0, $t4, 16
	bne	$t1, $t2, .LBB9_39
# %bb.40:                               # %middle.block190
	beq	$t0, $t1, .LBB9_48
# %bb.41:                               # %vec.epilog.iter.check195
	andi	$t2, $t0, 12
	beqz	$t2, .LBB9_45
.LBB9_42:                               # %vec.epilog.ph194
	move	$t3, $t0
	bstrins.d	$t3, $zero, 1, 0
	add.d	$t2, $a7, $t3
	addi.w	$t4, $zero, -1
.LBB9_43:                               # %vec.epilog.vector.body201
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t5, $a7, $t1
	bstrpick.d	$t5, $t5, 15, 0
	slli.d	$t5, $t5, 1
	addi.w	$t1, $t1, 4
	stx.d	$t4, $a3, $t5
	bne	$t3, $t1, .LBB9_43
# %bb.44:                               # %vec.epilog.middle.block206
	bne	$t0, $t3, .LBB9_46
	b	.LBB9_48
.LBB9_45:
	add.d	$t2, $a7, $t1
.LBB9_46:                               # %.lr.ph.preheader
	ori	$t0, $a0, 4095
	.p2align	4, , 16
.LBB9_47:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t1, $t2, 15, 0
	slli.d	$t1, $t1, 1
	addi.d	$t2, $t2, 1
	bstrpick.d	$t3, $t2, 15, 0
	stx.h	$t0, $a3, $t1
	bltu	$t3, $a6, .LBB9_47
.LBB9_48:                               # %.preheader104.preheader
	lu12i.w	$a6, 16
	sll.w	$a6, $a6, $a1
	slli.d	$a7, $a7, 16
	addi.w	$a1, $a1, 1
	lu12i.w	$t0, 8
	ori	$t1, $zero, 1
	ori	$a0, $a0, 4095
	ori	$t2, $zero, 15
	ori	$t3, $zero, 17
	b	.LBB9_50
.LBB9_49:                               # %.split136.us
                                        #   in Loop: Header=BB9_50 Depth=1
	bstrpick.d	$t0, $t0, 31, 1
	addi.w	$a1, $a1, 1
	addi.d	$t1, $t1, 1
	beq	$a1, $t3, .LBB9_58
.LBB9_50:                               # %.preheader104.split.us.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_53 Depth 2
                                        #       Child Loop BB9_56 Depth 3
	move	$t4, $zero
	b	.LBB9_53
	.p2align	4, , 16
.LBB9_51:                               # %._crit_edge130.us
                                        #   in Loop: Header=BB9_53 Depth=2
	addi.w	$t5, $t6, 0
	slli.d	$t5, $t5, 1
	add.w	$a7, $a7, $t0
	stx.h	$t4, $a3, $t5
	bltu	$a6, $a7, .LBB9_26
.LBB9_52:                               #   in Loop: Header=BB9_53 Depth=2
	addi.d	$t4, $t4, 1
	bgeu	$t4, $a4, .LBB9_49
.LBB9_53:                               # %.preheader104.split.us
                                        #   Parent Loop BB9_50 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB9_56 Depth 3
	ldx.bu	$t5, $a2, $t4
	bne	$a1, $t5, .LBB9_52
# %bb.54:                               # %.lr.ph129.us
                                        #   in Loop: Header=BB9_53 Depth=2
	bstrpick.d	$t6, $a7, 31, 16
	ori	$t5, $zero, 15
	b	.LBB9_56
	.p2align	4, , 16
.LBB9_55:                               #   in Loop: Header=BB9_56 Depth=3
	bstrpick.d	$t7, $t6, 15, 0
	srl.w	$t6, $a7, $t5
	addi.d	$t5, $t5, -1
	add.w	$t8, $t1, $t5
	bstrins.d	$t6, $t7, 63, 1
	beq	$t8, $t2, .LBB9_51
.LBB9_56:                               #   Parent Loop BB9_50 Depth=1
                                        #     Parent Loop BB9_53 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$t7, $t6, 0
	slli.d	$t6, $t7, 1
	ldx.hu	$t6, $a3, $t6
	bne	$t6, $a0, .LBB9_55
# %bb.57:                               #   in Loop: Header=BB9_56 Depth=3
	alsl.d	$t6, $t7, $a3, 1
	slli.d	$t7, $a5, 1
	slli.d	$t8, $a5, 2
	bstrpick.d	$t8, $t8, 32, 2
	slli.d	$t8, $t8, 2
	stx.h	$a0, $a3, $t8
	addi.d	$t7, $t7, 1
	bstrpick.d	$t7, $t7, 31, 0
	slli.d	$t7, $t7, 1
	stx.h	$a0, $a3, $t7
	addi.w	$t7, $a5, 1
	st.h	$a5, $t6, 0
	move	$t6, $a5
	move	$a5, $t7
	b	.LBB9_55
.LBB9_58:                               # %._crit_edge144
	addi.w	$a0, $a7, 0
	beq	$a0, $a6, .LBB9_29
# %bb.59:                               # %.preheader.preheader
	move	$a1, $zero
.LBB9_60:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a0, $a2, $a1
	bnez	$a0, .LBB9_26
# %bb.61:                               #   in Loop: Header=BB9_60 Depth=1
	addi.d	$a1, $a1, 1
	move	$a0, $zero
	bltu	$a1, $a4, .LBB9_60
	b	.LBB9_27
.Lfunc_end9:
	.size	lzx_make_decode_table, .Lfunc_end9-lzx_make_decode_table
                                        # -- End function
	.p2align	5                               # -- Begin function lzx_read_lens
	.type	lzx_read_lens,@function
lzx_read_lens:                          # @lzx_read_lens
# %bb.0:
	addi.d	$sp, $sp, -160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	move	$fp, $a0
	move	$s1, $zero
	lu12i.w	$a0, 13
	ori	$a0, $a0, 1632
	add.d	$s5, $fp, $a0
	ld.d	$s8, $fp, 112
	ld.d	$s4, $fp, 120
	ld.w	$s6, $fp, 144
	ld.w	$s2, $fp, 148
	addi.d	$a2, $fp, 156
	addi.w	$s7, $zero, -12
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	b	.LBB10_2
	.p2align	4, , 16
.LBB10_1:                               # %._crit_edge
                                        #   in Loop: Header=BB10_2 Depth=1
	bstrpick.d	$a0, $s6, 31, 28
	slli.d	$s6, $s6, 4
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	stx.b	$a0, $a2, $s1
	addi.d	$s1, $s1, 1
	addi.w	$s2, $s2, -4
	ori	$a0, $zero, 20
	beq	$s1, $a0, .LBB10_13
.LBB10_2:                               # %.preheader309
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_6 Depth 2
	ori	$a0, $zero, 3
	blt	$a0, $s2, .LBB10_1
# %bb.3:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB10_2 Depth=1
	ori	$a0, $zero, 16
	sub.d	$s3, $a0, $s2
	b	.LBB10_6
	.p2align	4, , 16
.LBB10_4:                               #   in Loop: Header=BB10_6 Depth=2
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s4, $s8, $a0
	st.d	$s4, $fp, 120
.LBB10_5:                               #   in Loop: Header=BB10_6 Depth=2
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s3
	or	$s6, $a0, $s6
	addi.w	$s2, $s0, 16
	addi.d	$s8, $s8, 2
	addi.d	$s3, $s3, -16
	bge	$s0, $s7, .LBB10_1
.LBB10_6:                               # %.lr.ph
                                        #   Parent Loop BB10_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $s8, 1
	move	$s0, $s2
	bltu	$a0, $s4, .LBB10_5
# %bb.7:                                #   in Loop: Header=BB10_6 Depth=2
	ld.d	$a3, $s5, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB10_9
# %bb.8:                                #   in Loop: Header=BB10_6 Depth=2
	ld.d	$a0, $s5, 0
	jirl	$ra, $a3, 0
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB10_10
	b	.LBB10_118
.LBB10_9:                               #   in Loop: Header=BB10_6 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB10_118
.LBB10_10:                              #   in Loop: Header=BB10_6 Depth=2
	bnez	$a0, .LBB10_4
# %bb.11:                               #   in Loop: Header=BB10_6 Depth=2
	ld.bu	$a0, $fp, 92
	bnez	$a0, .LBB10_117
# %bb.12:                               #   in Loop: Header=BB10_6 Depth=2
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 92
	ori	$a0, $zero, 2
	b	.LBB10_4
.LBB10_13:
	addi.d	$s1, $fp, 1346
	ori	$a0, $zero, 20
	ori	$a1, $zero, 6
	move	$a3, $s1
	pcaddu18i	$ra, %call36(lzx_make_decode_table)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_15
# %bb.14:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB10_119
.LBB10_15:                              # %.preheader308
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	bgeu	$a6, $s3, .LBB10_121
# %bb.16:
	ori	$a0, $zero, 15
	addi.w	$a1, $zero, -1
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a1, -16384
	lu32i.d	$a1, 0
	st.d	$a1, $sp, 0                     # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
.LBB10_17:                              # %.preheader307
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_21 Depth 2
                                        #     Child Loop BB10_30 Depth 2
                                        #     Child Loop BB10_95 Depth 2
                                        #     Child Loop BB10_43 Depth 2
                                        #     Child Loop BB10_105 Depth 2
                                        #     Child Loop BB10_109 Depth 2
                                        #     Child Loop BB10_56 Depth 2
                                        #     Child Loop BB10_86 Depth 2
                                        #     Child Loop BB10_89 Depth 2
                                        #     Child Loop BB10_67 Depth 2
                                        #     Child Loop BB10_114 Depth 2
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	blt	$a0, $s2, .LBB10_28
# %bb.18:                               # %.lr.ph439.preheader
                                        #   in Loop: Header=BB10_17 Depth=1
	ori	$a0, $zero, 16
	sub.d	$s1, $a0, $s2
	b	.LBB10_21
.LBB10_19:                              #   in Loop: Header=BB10_21 Depth=2
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s4, $s8, $a0
	st.d	$s4, $fp, 120
.LBB10_20:                              #   in Loop: Header=BB10_21 Depth=2
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s1
	or	$s6, $a0, $s6
	addi.w	$s2, $s0, 16
	addi.d	$s8, $s8, 2
	addi.d	$s1, $s1, -16
	bgez	$s0, .LBB10_28
.LBB10_21:                              # %.lr.ph439
                                        #   Parent Loop BB10_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $s8, 1
	move	$s0, $s2
	bltu	$a0, $s4, .LBB10_20
# %bb.22:                               #   in Loop: Header=BB10_21 Depth=2
	ld.d	$a3, $s5, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB10_24
# %bb.23:                               #   in Loop: Header=BB10_21 Depth=2
	ld.d	$a0, $s5, 0
	jirl	$ra, $a3, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	blt	$a1, $a0, .LBB10_25
	b	.LBB10_118
.LBB10_24:                              #   in Loop: Header=BB10_21 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bge	$a1, $a0, .LBB10_118
.LBB10_25:                              #   in Loop: Header=BB10_21 Depth=2
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	bnez	$a0, .LBB10_19
# %bb.26:                               #   in Loop: Header=BB10_21 Depth=2
	ld.bu	$a0, $fp, 92
	bnez	$a0, .LBB10_117
# %bb.27:                               #   in Loop: Header=BB10_21 Depth=2
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 92
	ori	$a0, $zero, 2
	b	.LBB10_19
.LBB10_28:                              # %._crit_edge440
                                        #   in Loop: Header=BB10_17 Depth=1
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	and	$a0, $s6, $a0
	srli.d	$a0, $a0, 25
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	ldx.hu	$a0, $s1, $a0
	ori	$a1, $zero, 20
	bltu	$a0, $a1, .LBB10_33
# %bb.29:                               # %.preheader305.preheader
                                        #   in Loop: Header=BB10_17 Depth=1
	lu12i.w	$a1, 16384
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	ori	$a4, $zero, 104
	ori	$a5, $zero, 19
.LBB10_30:                              # %.preheader305
                                        #   Parent Loop BB10_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a2, $a1, 0
	ori	$a3, $zero, 1
	bgeu	$a3, $a2, .LBB10_123
# %bb.31:                               #   in Loop: Header=BB10_30 Depth=2
	slli.d	$a0, $a0, 1
	bstrpick.d	$a2, $a0, 15, 1
	slli.d	$a2, $a2, 1
	bgeu	$a2, $a4, .LBB10_124
# %bb.32:                               #   in Loop: Header=BB10_30 Depth=2
	bstrpick.d	$a1, $a1, 31, 1
	and	$a2, $a1, $s6
	addi.w	$a2, $a2, 0
	sltu	$a2, $zero, $a2
	or	$a0, $a0, $a2
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ldx.hu	$a0, $s1, $a0
	bltu	$a5, $a0, .LBB10_30
	b	.LBB10_34
.LBB10_33:                              #   in Loop: Header=BB10_17 Depth=1
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	ori	$a5, $zero, 19
.LBB10_34:                              # %.loopexit306
                                        #   in Loop: Header=BB10_17 Depth=1
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ldx.bu	$a2, $a1, $a0
	sll.w	$s6, $s6, $a2
	sub.w	$a1, $s2, $a2
	ori	$a3, $zero, 17
	beq	$a0, $a3, .LBB10_63
# %bb.35:                               # %.loopexit306
                                        #   in Loop: Header=BB10_17 Depth=1
	ori	$a3, $zero, 18
	beq	$a0, $a3, .LBB10_51
# %bb.36:                               # %.loopexit306
                                        #   in Loop: Header=BB10_17 Depth=1
	bne	$a0, $a5, .LBB10_75
# %bb.37:                               # %.preheader304
                                        #   in Loop: Header=BB10_17 Depth=1
	blez	$a1, .LBB10_91
# %bb.38:                               #   in Loop: Header=BB10_17 Depth=1
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
.LBB10_39:                              # %._crit_edge450
                                        #   in Loop: Header=BB10_17 Depth=1
	slli.d	$s0, $s6, 1
	ori	$a0, $zero, 16
	bltu	$a0, $a1, .LBB10_84
# %bb.40:                               # %.lr.ph460.preheader
                                        #   in Loop: Header=BB10_17 Depth=1
	addi.d	$s1, $a1, -17
	ori	$a0, $zero, 17
	sub.d	$s2, $a0, $a1
	b	.LBB10_43
.LBB10_41:                              #   in Loop: Header=BB10_43 Depth=2
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s4, $s8, $a0
	st.d	$s4, $fp, 120
.LBB10_42:                              #   in Loop: Header=BB10_43 Depth=2
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s2
	or	$s0, $a0, $s0
	addi.d	$s8, $s8, 2
	addi.w	$s1, $s1, 16
	addi.d	$s2, $s2, -16
	bgez	$s1, .LBB10_102
.LBB10_43:                              # %.lr.ph460
                                        #   Parent Loop BB10_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $s8, 1
	bltu	$a0, $s4, .LBB10_42
# %bb.44:                               #   in Loop: Header=BB10_43 Depth=2
	ld.d	$a3, $s5, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB10_46
# %bb.45:                               #   in Loop: Header=BB10_43 Depth=2
	ld.d	$a0, $s5, 0
	jirl	$ra, $a3, 0
	b	.LBB10_47
.LBB10_46:                              #   in Loop: Header=BB10_43 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB10_47:                              #   in Loop: Header=BB10_43 Depth=2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bge	$a1, $a0, .LBB10_118
# %bb.48:                               #   in Loop: Header=BB10_43 Depth=2
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	bnez	$a0, .LBB10_41
# %bb.49:                               #   in Loop: Header=BB10_43 Depth=2
	ld.bu	$a0, $fp, 92
	bnez	$a0, .LBB10_117
# %bb.50:                               #   in Loop: Header=BB10_43 Depth=2
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 92
	ori	$a0, $zero, 2
	b	.LBB10_41
.LBB10_51:                              # %.preheader300
                                        #   in Loop: Header=BB10_17 Depth=1
	ori	$a0, $zero, 4
	blt	$a0, $a1, .LBB10_76
# %bb.52:                               # %.lr.ph472.preheader
                                        #   in Loop: Header=BB10_17 Depth=1
	sub.d	$a0, $a2, $s2
	addi.d	$s0, $a0, 16
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	b	.LBB10_56
.LBB10_53:                              #   in Loop: Header=BB10_56 Depth=2
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 92
	ori	$a0, $zero, 2
.LBB10_54:                              #   in Loop: Header=BB10_56 Depth=2
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s4, $s8, $a0
	st.d	$s4, $fp, 120
.LBB10_55:                              #   in Loop: Header=BB10_56 Depth=2
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s0
	or	$s6, $a0, $s6
	addi.w	$a1, $s1, 16
	addi.d	$s8, $s8, 2
	addi.w	$a0, $zero, -11
	addi.d	$s0, $s0, -16
	bge	$s1, $a0, .LBB10_77
.LBB10_56:                              # %.lr.ph472
                                        #   Parent Loop BB10_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $s8, 1
	move	$s1, $a1
	bltu	$a0, $s4, .LBB10_55
# %bb.57:                               #   in Loop: Header=BB10_56 Depth=2
	ld.d	$a3, $s5, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB10_59
# %bb.58:                               #   in Loop: Header=BB10_56 Depth=2
	ld.d	$a0, $s5, 0
	jirl	$ra, $a3, 0
	b	.LBB10_60
.LBB10_59:                              #   in Loop: Header=BB10_56 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB10_60:                              #   in Loop: Header=BB10_56 Depth=2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bge	$a1, $a0, .LBB10_118
# %bb.61:                               #   in Loop: Header=BB10_56 Depth=2
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	bnez	$a0, .LBB10_54
# %bb.62:                               #   in Loop: Header=BB10_56 Depth=2
	ld.bu	$a0, $fp, 92
	beqz	$a0, .LBB10_53
	b	.LBB10_117
.LBB10_63:                              # %.preheader
                                        #   in Loop: Header=BB10_17 Depth=1
	ori	$a0, $zero, 3
	blt	$a0, $a1, .LBB10_79
# %bb.64:                               # %.lr.ph484.preheader
                                        #   in Loop: Header=BB10_17 Depth=1
	sub.d	$a0, $a2, $s2
	addi.d	$s0, $a0, 16
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	b	.LBB10_67
.LBB10_65:                              #   in Loop: Header=BB10_67 Depth=2
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s4, $s8, $a0
	st.d	$s4, $fp, 120
.LBB10_66:                              #   in Loop: Header=BB10_67 Depth=2
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s0
	or	$s6, $a0, $s6
	addi.w	$a1, $s1, 16
	addi.d	$s8, $s8, 2
	addi.d	$s0, $s0, -16
	bge	$s1, $s7, .LBB10_80
.LBB10_67:                              # %.lr.ph484
                                        #   Parent Loop BB10_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $s8, 1
	move	$s1, $a1
	bltu	$a0, $s4, .LBB10_66
# %bb.68:                               #   in Loop: Header=BB10_67 Depth=2
	ld.d	$a3, $s5, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB10_70
# %bb.69:                               #   in Loop: Header=BB10_67 Depth=2
	ld.d	$a0, $s5, 0
	jirl	$ra, $a3, 0
	b	.LBB10_71
.LBB10_70:                              #   in Loop: Header=BB10_67 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB10_71:                              #   in Loop: Header=BB10_67 Depth=2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bge	$a1, $a0, .LBB10_118
# %bb.72:                               #   in Loop: Header=BB10_67 Depth=2
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	bnez	$a0, .LBB10_65
# %bb.73:                               #   in Loop: Header=BB10_67 Depth=2
	ld.bu	$a0, $fp, 92
	bnez	$a0, .LBB10_117
# %bb.74:                               #   in Loop: Header=BB10_67 Depth=2
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 92
	ori	$a0, $zero, 2
	b	.LBB10_65
.LBB10_75:                              #   in Loop: Header=BB10_17 Depth=1
	bstrpick.d	$a2, $a6, 31, 0
	ld.d	$a5, $sp, 40                    # 8-byte Folded Reload
	ldx.bu	$a3, $a5, $a2
	sub.d	$a0, $a3, $a0
	slti	$a3, $a0, 0
	addi.d	$a4, $a0, 17
	masknez	$a0, $a0, $a3
	maskeqz	$a3, $a4, $a3
	or	$a0, $a3, $a0
	addi.w	$a6, $a6, 1
	stx.b	$a0, $a5, $a2
	b	.LBB10_116
.LBB10_76:                              #   in Loop: Header=BB10_17 Depth=1
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
.LBB10_77:                              # %._crit_edge473
                                        #   in Loop: Header=BB10_17 Depth=1
	bstrpick.d	$a0, $s6, 31, 27
	addi.w	$a2, $zero, -20
	sub.d	$a2, $a2, $a0
	addi.w	$a3, $a0, 20
	ld.d	$a7, $sp, 56                    # 8-byte Folded Reload
	bgeu	$a2, $a7, .LBB10_85
# %bb.78:                               #   in Loop: Header=BB10_17 Depth=1
	move	$a2, $a3
	move	$a0, $a7
	b	.LBB10_88
.LBB10_79:                              #   in Loop: Header=BB10_17 Depth=1
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
.LBB10_80:                              # %._crit_edge485
                                        #   in Loop: Header=BB10_17 Depth=1
	bstrpick.d	$a3, $s6, 31, 28
	bstrpick.d	$a2, $s6, 31, 30
	addi.w	$a0, $a3, 4
	ori	$a4, $zero, 3
	bltu	$a2, $a4, .LBB10_112
# %bb.81:                               # %._crit_edge485
                                        #   in Loop: Header=BB10_17 Depth=1
	addi.d	$a2, $zero, -4
	sub.w	$a2, $a2, $a3
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	bltu	$a2, $a4, .LBB10_111
# %bb.82:                               # %vector.body
                                        #   in Loop: Header=BB10_17 Depth=1
	addi.w	$a2, $a4, 16
	bstrpick.d	$a4, $a4, 31, 0
	vstx	$vr0, $s2, $a4
	ori	$a4, $zero, 16
	beq	$a0, $a4, .LBB10_115
# %bb.83:                               #   in Loop: Header=BB10_17 Depth=1
	addi.d	$a0, $a3, -12
	b	.LBB10_113
.LBB10_84:                              #   in Loop: Header=BB10_17 Depth=1
	addi.d	$a0, $a1, -1
	b	.LBB10_103
.LBB10_85:                              # %vector.ph579
                                        #   in Loop: Header=BB10_17 Depth=1
	andi	$a4, $a3, 48
	andi	$a2, $a3, 15
	add.w	$a0, $a7, $a4
	move	$a5, $a4
.LBB10_86:                              # %vector.body582
                                        #   Parent Loop BB10_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a6, $a7, 31, 0
	vstx	$vr0, $s2, $a6
	addi.w	$a5, $a5, -16
	addi.w	$a7, $a7, 16
	bnez	$a5, .LBB10_86
# %bb.87:                               # %middle.block586
                                        #   in Loop: Header=BB10_17 Depth=1
	beq	$a3, $a4, .LBB10_90
.LBB10_88:                              # %scalar.ph578.preheader
                                        #   in Loop: Header=BB10_17 Depth=1
	move	$a3, $a0
.LBB10_89:                              # %scalar.ph578
                                        #   Parent Loop BB10_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a2, $a2, -1
	addi.w	$a0, $a3, 1
	bstrpick.d	$a3, $a3, 31, 0
	stx.b	$zero, $s2, $a3
	move	$a3, $a0
	bnez	$a2, .LBB10_89
.LBB10_90:                              # %.loopexit.loopexit502
                                        #   in Loop: Header=BB10_17 Depth=1
	slli.d	$s6, $s6, 5
	addi.w	$a1, $a1, -5
	move	$a6, $a0
	b	.LBB10_116
.LBB10_91:                              # %.lr.ph449.preheader
                                        #   in Loop: Header=BB10_17 Depth=1
	sub.d	$a0, $a2, $s2
	addi.d	$s0, $a0, 16
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	b	.LBB10_95
.LBB10_92:                              #   in Loop: Header=BB10_95 Depth=2
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.b	$a0, $fp, 92
	ori	$a0, $zero, 2
.LBB10_93:                              #   in Loop: Header=BB10_95 Depth=2
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s4, $s8, $a0
	st.d	$s4, $fp, 120
.LBB10_94:                              #   in Loop: Header=BB10_95 Depth=2
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s0
	or	$s6, $a0, $s6
	addi.w	$a1, $s1, 16
	addi.d	$s8, $s8, 2
	addi.w	$a0, $zero, -15
	addi.d	$s0, $s0, -16
	bge	$s1, $a0, .LBB10_39
.LBB10_95:                              # %.lr.ph449
                                        #   Parent Loop BB10_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $s8, 1
	move	$s1, $a1
	bltu	$a0, $s4, .LBB10_94
# %bb.96:                               #   in Loop: Header=BB10_95 Depth=2
	ld.d	$a3, $s5, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB10_98
# %bb.97:                               #   in Loop: Header=BB10_95 Depth=2
	ld.d	$a0, $s5, 0
	jirl	$ra, $a3, 0
	b	.LBB10_99
.LBB10_98:                              #   in Loop: Header=BB10_95 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB10_99:                              #   in Loop: Header=BB10_95 Depth=2
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bge	$a1, $a0, .LBB10_118
# %bb.100:                              #   in Loop: Header=BB10_95 Depth=2
	vld	$vr0, $sp, 16                   # 16-byte Folded Reload
	bnez	$a0, .LBB10_93
# %bb.101:                              #   in Loop: Header=BB10_95 Depth=2
	ld.bu	$a0, $fp, 92
	beqz	$a0, .LBB10_92
	b	.LBB10_117
.LBB10_102:                             # %._crit_edge461.loopexit
                                        #   in Loop: Header=BB10_17 Depth=1
	addi.d	$a0, $s1, 16
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
.LBB10_103:                             # %._crit_edge461
                                        #   in Loop: Header=BB10_17 Depth=1
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	and	$a1, $s0, $a1
	srli.d	$a1, $a1, 25
	ld.d	$s1, $sp, 8                     # 8-byte Folded Reload
	ldx.hu	$a1, $s1, $a1
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	ori	$a2, $zero, 20
	bltu	$a1, $a2, .LBB10_108
# %bb.104:                              # %.preheader302.preheader
                                        #   in Loop: Header=BB10_17 Depth=1
	lu12i.w	$a2, 16384
.LBB10_105:                             # %.preheader302
                                        #   Parent Loop BB10_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a3, $a2, 0
	ori	$a4, $zero, 1
	bgeu	$a4, $a3, .LBB10_123
# %bb.106:                              #   in Loop: Header=BB10_105 Depth=2
	slli.d	$a1, $a1, 1
	bstrpick.d	$a3, $a1, 15, 1
	slli.d	$a3, $a3, 1
	ori	$a4, $zero, 104
	bgeu	$a3, $a4, .LBB10_124
# %bb.107:                              #   in Loop: Header=BB10_105 Depth=2
	bstrpick.d	$a2, $a2, 31, 1
	and	$a3, $a2, $s0
	addi.w	$a3, $a3, 0
	sltu	$a3, $zero, $a3
	or	$a1, $a1, $a3
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a1, $s1, $a1
	ori	$a3, $zero, 19
	bltu	$a3, $a1, .LBB10_105
.LBB10_108:                             # %.loopexit303
                                        #   in Loop: Header=BB10_17 Depth=1
	bstrpick.d	$a2, $a6, 31, 0
	ldx.bu	$a4, $s2, $a2
	bstrpick.d	$a2, $s6, 31, 31
	ori	$a3, $a2, 4
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ldx.bu	$a2, $a2, $a1
	sub.d	$a1, $a4, $a1
	slti	$a4, $a1, 0
	addi.d	$a5, $a1, 17
	masknez	$a1, $a1, $a4
	maskeqz	$a4, $a5, $a4
	or	$a1, $a4, $a1
.LBB10_109:                             #   Parent Loop BB10_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a3, $a3, -1
	bstrpick.d	$a5, $a6, 31, 0
	addi.w	$a6, $a6, 1
	stx.b	$a1, $s2, $a5
	bnez	$a3, .LBB10_109
# %bb.110:                              # %.loopexit.loopexit503
                                        #   in Loop: Header=BB10_17 Depth=1
	sll.w	$s6, $s0, $a2
	sub.w	$a1, $a0, $a2
	b	.LBB10_116
.LBB10_111:                             #   in Loop: Header=BB10_17 Depth=1
	move	$a2, $a4
	b	.LBB10_113
.LBB10_112:                             #   in Loop: Header=BB10_17 Depth=1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
.LBB10_113:                             # %scalar.ph.preheader
                                        #   in Loop: Header=BB10_17 Depth=1
	move	$a3, $a2
.LBB10_114:                             # %scalar.ph
                                        #   Parent Loop BB10_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a0, $a0, -1
	addi.w	$a2, $a3, 1
	bstrpick.d	$a3, $a3, 31, 0
	stx.b	$zero, $s2, $a3
	move	$a3, $a2
	bnez	$a0, .LBB10_114
.LBB10_115:                             # %.loopexit.loopexit
                                        #   in Loop: Header=BB10_17 Depth=1
	slli.d	$s6, $s6, 4
	addi.w	$a1, $a1, -4
	move	$a6, $a2
.LBB10_116:                             # %.loopexit
                                        #   in Loop: Header=BB10_17 Depth=1
	move	$s2, $a1
	ori	$a0, $zero, 15
	bltu	$a6, $s3, .LBB10_17
	b	.LBB10_122
.LBB10_117:
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB10_118:
	addi.w	$a0, $zero, -123
.LBB10_119:
	move	$a1, $a0
	lu32i.d	$a1, 0
	st.w	$a1, $fp, 96
.LBB10_120:
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	ret
.LBB10_121:
	move	$a1, $s2
.LBB10_122:                             # %._crit_edge497
	move	$a0, $zero
	st.d	$s8, $fp, 112
	st.d	$s4, $fp, 120
	st.w	$s6, $fp, 144
	st.w	$a1, $fp, 148
	b	.LBB10_120
.LBB10_123:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	b	.LBB10_125
.LBB10_124:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
.LBB10_125:
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB10_119
.Lfunc_end10:
	.size	lzx_read_lens, .Lfunc_end10-lzx_read_lens
                                        # -- End function
	.globl	lzx_free                        # -- Begin function lzx_free
	.p2align	5
	.type	lzx_free,@function
lzx_free:                               # @lzx_free
# %bb.0:
	beqz	$a0, .LBB11_2
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a1, $a0, 104
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 32
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB11_2:
	ret
.Lfunc_end11:
	.size	lzx_free, .Lfunc_end11-lzx_free
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function qtm_init
.LCPI12_0:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	5                               # 0x5
	.byte	6                               # 0x6
	.byte	8                               # 0x8
	.byte	10                              # 0xa
	.byte	12                              # 0xc
	.byte	14                              # 0xe
	.byte	18                              # 0x12
	.byte	22                              # 0x16
	.byte	26                              # 0x1a
	.byte	30                              # 0x1e
	.byte	38                              # 0x26
.LCPI12_1:
	.byte	0                               # 0x0
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	1                               # 0x1
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	2                               # 0x2
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	3                               # 0x3
	.byte	4                               # 0x4
	.byte	4                               # 0x4
	.byte	4                               # 0x4
.LCPI12_2:
	.byte	46                              # 0x2e
	.byte	54                              # 0x36
	.byte	62                              # 0x3e
	.byte	78                              # 0x4e
	.byte	94                              # 0x5e
	.byte	110                             # 0x6e
	.byte	126                             # 0x7e
	.byte	158                             # 0x9e
	.byte	190                             # 0xbe
	.byte	222                             # 0xde
	.byte	254                             # 0xfe
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
	.byte	0                               # 0x0
.LCPI12_3:
	.half	0                               # 0x0
	.half	24                              # 0x18
	.half	1                               # 0x1
	.half	23                              # 0x17
	.half	2                               # 0x2
	.half	22                              # 0x16
	.half	3                               # 0x3
	.half	21                              # 0x15
.LCPI12_4:
	.half	4                               # 0x4
	.half	20                              # 0x14
	.half	5                               # 0x5
	.half	19                              # 0x13
	.half	6                               # 0x6
	.half	18                              # 0x12
	.half	7                               # 0x7
	.half	17                              # 0x11
.LCPI12_5:
	.half	8                               # 0x8
	.half	16                              # 0x10
	.half	9                               # 0x9
	.half	15                              # 0xf
	.half	10                              # 0xa
	.half	14                              # 0xe
	.half	11                              # 0xb
	.half	13                              # 0xd
.LCPI12_6:
	.half	12                              # 0xc
	.half	12                              # 0xc
	.half	13                              # 0xd
	.half	11                              # 0xb
	.half	14                              # 0xe
	.half	10                              # 0xa
	.half	15                              # 0xf
	.half	9                               # 0x9
.LCPI12_7:
	.half	16                              # 0x10
	.half	8                               # 0x8
	.half	17                              # 0x11
	.half	7                               # 0x7
	.half	18                              # 0x12
	.half	6                               # 0x6
	.half	19                              # 0x13
	.half	5                               # 0x5
.LCPI12_8:
	.half	20                              # 0x14
	.half	4                               # 0x4
	.half	21                              # 0x15
	.half	3                               # 0x3
	.half	22                              # 0x16
	.half	2                               # 0x2
	.half	23                              # 0x17
	.half	1                               # 0x1
.LCPI12_9:
	.half	0                               # 0x0
	.half	27                              # 0x1b
	.half	1                               # 0x1
	.half	26                              # 0x1a
	.half	2                               # 0x2
	.half	25                              # 0x19
	.half	3                               # 0x3
	.half	24                              # 0x18
.LCPI12_10:
	.half	4                               # 0x4
	.half	23                              # 0x17
	.half	5                               # 0x5
	.half	22                              # 0x16
	.half	6                               # 0x6
	.half	21                              # 0x15
	.half	7                               # 0x7
	.half	20                              # 0x14
.LCPI12_11:
	.half	8                               # 0x8
	.half	19                              # 0x13
	.half	9                               # 0x9
	.half	18                              # 0x12
	.half	10                              # 0xa
	.half	17                              # 0x11
	.half	11                              # 0xb
	.half	16                              # 0x10
.LCPI12_12:
	.half	12                              # 0xc
	.half	15                              # 0xf
	.half	13                              # 0xd
	.half	14                              # 0xe
	.half	14                              # 0xe
	.half	13                              # 0xd
	.half	15                              # 0xf
	.half	12                              # 0xc
.LCPI12_13:
	.half	16                              # 0x10
	.half	11                              # 0xb
	.half	17                              # 0x11
	.half	10                              # 0xa
	.half	18                              # 0x12
	.half	9                               # 0x9
	.half	19                              # 0x13
	.half	8                               # 0x8
.LCPI12_14:
	.half	20                              # 0x14
	.half	7                               # 0x7
	.half	21                              # 0x15
	.half	6                               # 0x6
	.half	22                              # 0x16
	.half	5                               # 0x5
	.half	23                              # 0x17
	.half	4                               # 0x4
.LCPI12_15:
	.half	24                              # 0x18
	.half	3                               # 0x3
	.half	25                              # 0x19
	.half	2                               # 0x2
	.half	26                              # 0x1a
	.half	1                               # 0x1
	.half	27                              # 0x1b
	.half	0                               # 0x0
.LCPI12_16:
	.half	0                               # 0x0
	.half	7                               # 0x7
	.half	1                               # 0x1
	.half	6                               # 0x6
	.half	2                               # 0x2
	.half	5                               # 0x5
	.half	3                               # 0x3
	.half	4                               # 0x4
.LCPI12_17:
	.half	4                               # 0x4
	.half	3                               # 0x3
	.half	5                               # 0x5
	.half	2                               # 0x2
	.half	6                               # 0x6
	.half	1                               # 0x1
	.half	7                               # 0x7
	.half	0                               # 0x0
	.text
	.globl	qtm_init
	.p2align	5
	.type	qtm_init,@function
qtm_init:                               # @qtm_init
# %bb.0:
	addi.d	$sp, $sp, -80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	addi.w	$a2, $a2, -22
	addi.w	$a6, $zero, -7
	bltu	$a2, $a6, .LBB12_13
# %bb.1:
	ori	$s0, $zero, 1
	blt	$a3, $s0, .LBB12_13
# %bb.2:
	move	$s6, $a3
	move	$s4, $a0
	move	$s3, $a1
	move	$s1, $a4
	move	$s2, $a5
	ori	$a0, $zero, 2136
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_13
# %bb.3:                                # %.preheader132
	move	$a1, $zero
	move	$a2, $zero
	sll.w	$s5, $s0, $fp
	addi.w	$s0, $s6, 1
	bstrins.d	$s0, $zero, 0, 0
	ori	$a3, $zero, 268
	ori	$a4, $zero, 100
	ori	$a5, $zero, 1
	ori	$a6, $zero, 268
	.p2align	4, , 16
.LBB12_4:                               # =>This Inner Loop Header: Depth=1
	addi.d	$a7, $a1, -2
	sltu	$t0, $a1, $a7
	masknez	$a7, $a7, $t0
	stx.w	$a2, $a0, $a4
	bstrpick.d	$a7, $a7, 31, 1
	stx.b	$a7, $a0, $a6
	sll.w	$a7, $a5, $a7
	add.d	$a2, $a7, $a2
	addi.d	$a6, $a6, 1
	addi.d	$a4, $a4, 4
	addi.w	$a1, $a1, 1
	bne	$a4, $a3, .LBB12_4
# %bb.5:                                # %.preheader
	pcalau12i	$a1, %pc_hi20(.LCPI12_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI12_0)
	pcalau12i	$a1, %pc_hi20(.LCPI12_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI12_1)
	vst	$vr0, $a0, 310
	vst	$vr1, $a0, 342
	pcalau12i	$a1, %pc_hi20(.LCPI12_2)
	vld	$vr0, $a1, %pc_lo12(.LCPI12_2)
	lu12i.w	$a1, 20560
	ori	$a1, $a1, 1284
	st.w	$a1, $a0, 358
	ori	$a1, $zero, 5
	st.h	$a1, $a0, 362
	vst	$vr0, $a0, 326
	bstrpick.d	$a1, $s5, 31, 0
	move	$s6, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s6, 16
	beqz	$a0, .LBB12_15
# %bb.6:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s6
	st.d	$a1, $s6, 48
	beqz	$a1, .LBB12_16
# %bb.7:                                # %vector.ph
	move	$a2, $zero
	st.w	$s4, $a0, 0
	st.w	$s3, $a0, 4
	ori	$a3, $zero, 1
	st.b	$a3, $a0, 8
	st.w	$s0, $a0, 92
	st.w	$s5, $a0, 24
	st.d	$zero, $a0, 28
	st.b	$zero, $a0, 42
	ld.d	$a3, $a0, 16
	st.w	$zero, $a0, 44
	st.d	$a1, $a0, 64
	st.d	$a1, $a0, 56
	st.d	$a3, $a0, 80
	st.d	$a3, $a0, 72
	st.b	$zero, $a0, 96
	st.w	$zero, $a0, 88
	addi.d	$a1, $a0, 512
	ori	$a3, $zero, 4
	lu32i.d	$a3, 64
	st.d	$a3, $a0, 368
	st.d	$a1, $a0, 376
	addi.d	$a1, $a0, 518
	ori	$a3, $zero, 64
	.p2align	4, , 16
.LBB12_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ori	$a4, $a2, 1
	st.h	$a2, $a1, -6
	st.h	$a4, $a1, -2
	sub.d	$a5, $a3, $a2
	sub.d	$a4, $a3, $a4
	st.h	$a5, $a1, -4
	st.h	$a4, $a1, 0
	addi.d	$a2, $a2, 2
	addi.d	$a1, $a1, 8
	bne	$a2, $a3, .LBB12_8
# %bb.9:                                # %scalar.ph
	ori	$a1, $zero, 64
	st.w	$a1, $a0, 768
	addi.d	$a2, $a0, 772
	ori	$a5, $zero, 4
	lu32i.d	$a5, 64
	st.d	$a5, $a0, 384
	st.d	$a2, $a0, 392
	lu12i.w	$a2, 1024
	ori	$a2, $a2, 64
	lu32i.d	$a2, -65471
	lu52i.d	$a2, $a2, 3
	st.d	$a2, $a0, 772
	lu12i.w	$a2, 992
	ori	$a2, $a2, 66
	lu32i.d	$a2, -196541
	lu52i.d	$a2, $a2, 3
	st.d	$a2, $a0, 780
	lu12i.w	$a2, 960
	ori	$a2, $a2, 68
	lu32i.d	$a2, -327611
	lu52i.d	$a2, $a2, 3
	st.d	$a2, $a0, 788
	lu12i.w	$a2, 928
	ori	$a2, $a2, 70
	st.w	$a2, $a0, 796
	ori	$a2, $zero, 71
	st.h	$a2, $a0, 800
	lu12i.w	$a2, 1152
	ori	$a2, $a2, 57
	st.w	$a2, $a0, 802
	lu12i.w	$a2, 880
	ori	$a2, $a2, 73
	lu32i.d	$a2, 393290
	lu52i.d	$a2, $a2, 3
	st.d	$a2, $a0, 808
	lu12i.w	$a2, 848
	ori	$a2, $a2, 75
	lu32i.d	$a2, 262220
	lu52i.d	$a2, $a2, 3
	st.d	$a2, $a0, 816
	lu12i.w	$a2, 816
	ori	$a2, $a2, 77
	lu32i.d	$a2, 131150
	lu52i.d	$a2, $a2, 3
	st.d	$a2, $a0, 824
	ori	$a2, $zero, 79
	st.h	$a2, $a0, 832
	ori	$a4, $zero, 56
	st.h	$a4, $a0, 806
	lu12i.w	$a2, 1280
	ori	$a2, $a2, 49
	st.w	$a2, $a0, 834
	ori	$a2, $zero, 81
	st.h	$a2, $a0, 840
	ori	$a2, $zero, 82
	st.h	$a2, $a0, 844
	ori	$a2, $zero, 83
	st.h	$a2, $a0, 848
	ori	$a2, $zero, 84
	st.h	$a2, $a0, 852
	ori	$a2, $zero, 85
	st.h	$a2, $a0, 856
	ori	$a2, $zero, 86
	st.h	$a2, $a0, 860
	ori	$a2, $zero, 87
	st.h	$a2, $a0, 864
	ori	$a3, $zero, 48
	st.h	$a3, $a0, 838
	ori	$a2, $zero, 47
	st.h	$a2, $a0, 842
	lu12i.w	$a6, 1408
	ori	$a6, $a6, 41
	st.w	$a6, $a0, 866
	lu12i.w	$a6, 624
	ori	$a6, $a6, 89
	lu32i.d	$a6, 393306
	lu52i.d	$a6, $a6, 2
	st.d	$a6, $a0, 872
	lu12i.w	$a6, 592
	ori	$a6, $a6, 91
	lu32i.d	$a6, 262236
	lu52i.d	$a6, $a6, 2
	st.d	$a6, $a0, 880
	lu12i.w	$a6, 560
	ori	$a6, $a6, 93
	lu32i.d	$a6, 131166
	lu52i.d	$a6, $a6, 2
	st.d	$a6, $a0, 888
	ori	$a6, $zero, 95
	st.h	$a6, $a0, 896
	lu12i.w	$a6, 1536
	ori	$a6, $a6, 33
	st.w	$a6, $a0, 898
	ori	$a6, $zero, 97
	st.h	$a6, $a0, 904
	ori	$a6, $zero, 98
	st.h	$a6, $a0, 908
	ori	$a6, $zero, 99
	st.h	$a6, $a0, 912
	ori	$a6, $zero, 100
	st.h	$a6, $a0, 916
	ori	$a6, $zero, 101
	st.h	$a6, $a0, 920
	ori	$a6, $zero, 102
	st.h	$a6, $a0, 924
	ori	$a6, $zero, 103
	st.h	$a6, $a0, 928
	lu12i.w	$a6, 1664
	ori	$a6, $a6, 25
	lu32i.d	$a6, -458728
	lu52i.d	$a6, $a6, 6
	st.d	$a6, $a0, 930
	lu12i.w	$a6, 1696
	ori	$a6, $a6, 23
	lu32i.d	$a6, -327658
	lu52i.d	$a6, $a6, 6
	st.d	$a6, $a0, 938
	lu12i.w	$a6, 1728
	ori	$a6, $a6, 21
	lu32i.d	$a6, -196588
	lu52i.d	$a6, $a6, 6
	st.d	$a6, $a0, 946
	lu12i.w	$a6, 1760
	ori	$a6, $a6, 19
	lu32i.d	$a6, -65518
	lu52i.d	$a6, $a6, 6
	st.d	$a6, $a0, 954
	lu12i.w	$a6, 1792
	ori	$a6, $a6, 17
	st.w	$a6, $a0, 962
	ori	$a6, $zero, 113
	st.h	$a6, $a0, 968
	ori	$a6, $zero, 114
	st.h	$a6, $a0, 972
	ori	$a6, $zero, 115
	st.h	$a6, $a0, 976
	ori	$a6, $zero, 116
	st.h	$a6, $a0, 980
	ori	$a6, $zero, 117
	st.h	$a6, $a0, 984
	ori	$a6, $zero, 118
	st.h	$a6, $a0, 988
	ori	$a6, $zero, 119
	st.h	$a6, $a0, 992
	lu12i.w	$a6, 1920
	ori	$a6, $a6, 9
	lu32i.d	$a6, -458744
	lu52i.d	$a6, $a6, 7
	st.d	$a6, $a0, 994
	lu12i.w	$a6, 1952
	ori	$a6, $a6, 7
	lu32i.d	$a6, -327674
	lu52i.d	$a6, $a6, 7
	st.d	$a6, $a0, 1002
	lu12i.w	$a6, 1984
	ori	$a6, $a6, 5
	lu32i.d	$a6, -196604
	lu52i.d	$a6, $a6, 7
	st.d	$a6, $a0, 1010
	lu12i.w	$a6, 2016
	ori	$a6, $a6, 3
	lu32i.d	$a6, -65534
	lu52i.d	$a6, $a6, 7
	st.d	$a6, $a0, 1018
	lu12i.w	$a6, 2048
	ori	$a6, $a6, 1
	lu52i.d	$a6, $a6, 8
	st.d	$a6, $a0, 1026
	addi.d	$a6, $a0, 1032
	st.d	$a6, $a0, 408
	ori	$a6, $zero, 129
	st.h	$a6, $a0, 1036
	ori	$a6, $zero, 130
	st.h	$a6, $a0, 1040
	ori	$a6, $zero, 131
	st.h	$a6, $a0, 1044
	ori	$a6, $zero, 132
	st.h	$a6, $a0, 1048
	ori	$a6, $zero, 133
	st.h	$a6, $a0, 1052
	ori	$a6, $zero, 134
	st.h	$a6, $a0, 1056
	ori	$a6, $zero, 135
	st.h	$a6, $a0, 1060
	lu12i.w	$a6, 2176
	ori	$a6, $a6, 57
	lu32i.d	$a6, -458696
	lu52i.d	$a6, $a6, 8
	st.d	$a6, $a0, 1062
	lu12i.w	$a6, 2208
	ori	$a6, $a6, 55
	lu32i.d	$a6, -327626
	lu52i.d	$a6, $a6, 8
	st.d	$a6, $a0, 1070
	lu12i.w	$a6, 2240
	ori	$a6, $a6, 53
	lu32i.d	$a6, -196556
	lu52i.d	$a6, $a6, 8
	st.d	$a6, $a0, 1078
	lu12i.w	$a6, 2272
	ori	$a6, $a6, 51
	lu32i.d	$a6, -65486
	lu52i.d	$a6, $a6, 8
	st.d	$a6, $a0, 1086
	lu12i.w	$a6, 2304
	ori	$a6, $a6, 49
	st.w	$a6, $a0, 1094
	ori	$a6, $zero, 145
	st.h	$a6, $a0, 1100
	ori	$a6, $zero, 146
	st.h	$a6, $a0, 1104
	ori	$a6, $zero, 147
	st.h	$a6, $a0, 1108
	ori	$a6, $zero, 148
	st.h	$a6, $a0, 1112
	ori	$a6, $zero, 149
	st.h	$a6, $a0, 1116
	ori	$a6, $zero, 150
	st.h	$a6, $a0, 1120
	ori	$a6, $zero, 151
	st.h	$a6, $a0, 1124
	lu12i.w	$a6, 2432
	ori	$a6, $a6, 41
	st.w	$a6, $a0, 1126
	ori	$a6, $zero, 153
	st.h	$a6, $a0, 1132
	ori	$a6, $zero, 154
	st.h	$a6, $a0, 1136
	ori	$a6, $zero, 155
	st.h	$a6, $a0, 1140
	ori	$a6, $zero, 156
	st.h	$a6, $a0, 1144
	ori	$a6, $zero, 157
	st.h	$a6, $a0, 1148
	ori	$a6, $zero, 158
	st.h	$a6, $a0, 1152
	ori	$a6, $zero, 159
	st.h	$a6, $a0, 1156
	lu12i.w	$a6, 2560
	ori	$a6, $a6, 33
	st.w	$a6, $a0, 1158
	ori	$a6, $zero, 161
	st.h	$a6, $a0, 1164
	ori	$a6, $zero, 162
	st.h	$a6, $a0, 1168
	ori	$a6, $zero, 163
	st.h	$a6, $a0, 1172
	ori	$a6, $zero, 164
	st.h	$a6, $a0, 1176
	ori	$a6, $zero, 165
	st.h	$a6, $a0, 1180
	ori	$a6, $zero, 166
	st.h	$a6, $a0, 1184
	ori	$a6, $zero, 167
	st.h	$a6, $a0, 1188
	lu12i.w	$a6, 2688
	ori	$a6, $a6, 25
	st.w	$a6, $a0, 1190
	ori	$a6, $zero, 169
	st.h	$a6, $a0, 1196
	ori	$a6, $zero, 170
	st.h	$a6, $a0, 1200
	ori	$a6, $zero, 171
	st.h	$a6, $a0, 1204
	ori	$a6, $zero, 172
	st.h	$a6, $a0, 1208
	ori	$a6, $zero, 173
	st.h	$a6, $a0, 1212
	ori	$a6, $zero, 174
	st.h	$a6, $a0, 1216
	ori	$a6, $zero, 175
	st.h	$a6, $a0, 1220
	lu12i.w	$a6, 2816
	ori	$a6, $a6, 17
	st.w	$a6, $a0, 1222
	ori	$a6, $zero, 177
	st.h	$a6, $a0, 1228
	ori	$a6, $zero, 178
	st.h	$a6, $a0, 1232
	ori	$a6, $zero, 179
	st.h	$a6, $a0, 1236
	ori	$a6, $zero, 180
	st.h	$a6, $a0, 1240
	ori	$a6, $zero, 181
	st.h	$a6, $a0, 1244
	ori	$a6, $zero, 182
	st.h	$a6, $a0, 1248
	ori	$a6, $zero, 183
	st.h	$a6, $a0, 1252
	lu12i.w	$a6, 2944
	ori	$a6, $a6, 9
	st.w	$a6, $a0, 1254
	ori	$a6, $zero, 185
	st.h	$a6, $a0, 1260
	ori	$a6, $zero, 186
	st.h	$a6, $a0, 1264
	ori	$a6, $zero, 187
	st.h	$a6, $a0, 1268
	ori	$a6, $zero, 188
	st.h	$a6, $a0, 1272
	ori	$a6, $zero, 189
	st.h	$a6, $a0, 1276
	ori	$a6, $zero, 190
	st.h	$a6, $a0, 1280
	ori	$a6, $zero, 191
	st.h	$a6, $a0, 1284
	lu12i.w	$a6, 3072
	ori	$a6, $a6, 1
	st.w	$a6, $a0, 1286
	ori	$a6, $zero, 46
	st.h	$a6, $a0, 846
	st.d	$a5, $a0, 400
	st.d	$a5, $a0, 416
	addi.d	$a5, $a0, 1292
	st.d	$a5, $a0, 424
	ori	$a5, $zero, 192
	st.h	$a5, $a0, 1292
	ori	$a5, $zero, 193
	st.h	$a5, $a0, 1296
	ori	$a5, $zero, 194
	st.h	$a5, $a0, 1300
	ori	$a5, $zero, 195
	st.h	$a5, $a0, 1304
	ori	$a5, $zero, 196
	st.h	$a5, $a0, 1308
	ori	$a5, $zero, 197
	st.h	$a5, $a0, 1312
	ori	$a5, $zero, 198
	st.h	$a5, $a0, 1316
	ori	$a5, $zero, 199
	st.h	$a5, $a0, 1320
	ori	$a5, $zero, 45
	st.h	$a5, $a0, 850
	st.h	$a1, $a0, 1034
	st.h	$a1, $a0, 1294
	ori	$a1, $zero, 63
	st.h	$a1, $a0, 1038
	st.h	$a1, $a0, 1298
	ori	$a1, $zero, 62
	st.h	$a1, $a0, 1042
	st.h	$a1, $a0, 1302
	ori	$a1, $zero, 61
	st.h	$a1, $a0, 1046
	st.h	$a1, $a0, 1306
	ori	$a1, $zero, 60
	st.h	$a1, $a0, 1050
	st.h	$a1, $a0, 1310
	ori	$a1, $zero, 59
	st.h	$a1, $a0, 1054
	st.h	$a1, $a0, 1314
	ori	$a1, $zero, 58
	st.h	$a1, $a0, 1058
	st.h	$a1, $a0, 1318
	lu12i.w	$a1, 3200
	ori	$a1, $a1, 57
	st.w	$a1, $a0, 1322
	ori	$a1, $zero, 201
	st.h	$a1, $a0, 1328
	ori	$a1, $zero, 202
	st.h	$a1, $a0, 1332
	ori	$a1, $zero, 203
	st.h	$a1, $a0, 1336
	ori	$a1, $zero, 204
	st.h	$a1, $a0, 1340
	ori	$a1, $zero, 205
	st.h	$a1, $a0, 1344
	ori	$a1, $zero, 206
	st.h	$a1, $a0, 1348
	ori	$a1, $zero, 207
	st.h	$a1, $a0, 1352
	ori	$a7, $zero, 44
	st.h	$a7, $a0, 854
	st.h	$a4, $a0, 1326
	ori	$a1, $zero, 55
	st.h	$a1, $a0, 1330
	ori	$a1, $zero, 54
	st.h	$a1, $a0, 1334
	ori	$a1, $zero, 53
	st.h	$a1, $a0, 1338
	ori	$a1, $zero, 52
	st.h	$a1, $a0, 1342
	ori	$a1, $zero, 51
	st.h	$a1, $a0, 1346
	ori	$a1, $zero, 50
	st.h	$a1, $a0, 1350
	lu12i.w	$a1, 3328
	ori	$a1, $a1, 49
	st.w	$a1, $a0, 1354
	ori	$a1, $zero, 209
	st.h	$a1, $a0, 1360
	ori	$a1, $zero, 210
	st.h	$a1, $a0, 1364
	ori	$a1, $zero, 211
	st.h	$a1, $a0, 1368
	ori	$a1, $zero, 212
	st.h	$a1, $a0, 1372
	ori	$a1, $zero, 213
	st.h	$a1, $a0, 1376
	ori	$a1, $zero, 214
	st.h	$a1, $a0, 1380
	ori	$a1, $zero, 215
	st.h	$a1, $a0, 1384
	ori	$t0, $zero, 43
	st.h	$t0, $a0, 858
	st.h	$a3, $a0, 1098
	st.h	$a3, $a0, 1358
	ori	$a3, $zero, 42
	st.h	$a3, $a0, 862
	st.h	$a2, $a0, 1102
	st.h	$a2, $a0, 1362
	ori	$t1, $zero, 40
	st.h	$t1, $a0, 870
	st.h	$a6, $a0, 1106
	st.h	$a6, $a0, 1366
	ori	$a1, $zero, 32
	st.h	$a1, $a0, 902
	st.h	$a5, $a0, 1110
	st.h	$a5, $a0, 1370
	ori	$a2, $zero, 31
	st.h	$a2, $a0, 906
	st.h	$a7, $a0, 1114
	st.h	$a7, $a0, 1374
	ori	$a4, $zero, 30
	st.h	$a4, $a0, 910
	st.h	$t0, $a0, 1118
	st.h	$t0, $a0, 1378
	ori	$a5, $zero, 29
	st.h	$a5, $a0, 914
	st.h	$a3, $a0, 1122
	st.h	$a3, $a0, 1382
	lu12i.w	$a3, 3456
	ori	$a3, $a3, 41
	st.w	$a3, $a0, 1386
	ori	$a3, $zero, 217
	st.h	$a3, $a0, 1392
	ori	$a3, $zero, 218
	st.h	$a3, $a0, 1396
	ori	$a3, $zero, 219
	st.h	$a3, $a0, 1400
	ori	$a3, $zero, 220
	st.h	$a3, $a0, 1404
	ori	$a3, $zero, 221
	st.h	$a3, $a0, 1408
	ori	$a3, $zero, 222
	st.h	$a3, $a0, 1412
	ori	$a3, $zero, 223
	st.h	$a3, $a0, 1416
	ori	$a6, $zero, 28
	st.h	$a6, $a0, 918
	st.h	$t1, $a0, 1130
	st.h	$t1, $a0, 1390
	ori	$a3, $zero, 39
	st.h	$a3, $a0, 1134
	st.h	$a3, $a0, 1394
	ori	$a3, $zero, 38
	st.h	$a3, $a0, 1138
	st.h	$a3, $a0, 1398
	ori	$a3, $zero, 37
	st.h	$a3, $a0, 1142
	st.h	$a3, $a0, 1402
	ori	$a3, $zero, 35
	st.h	$a3, $a0, 1150
	st.h	$a3, $a0, 1410
	ori	$a3, $zero, 34
	st.h	$a3, $a0, 1154
	st.h	$a3, $a0, 1414
	lu12i.w	$a3, 3584
	ori	$a3, $a3, 33
	st.w	$a3, $a0, 1418
	ori	$a3, $zero, 225
	st.h	$a3, $a0, 1424
	ori	$a3, $zero, 226
	st.h	$a3, $a0, 1428
	ori	$a3, $zero, 227
	st.h	$a3, $a0, 1432
	ori	$a3, $zero, 228
	st.h	$a3, $a0, 1436
	ori	$a3, $zero, 229
	st.h	$a3, $a0, 1440
	ori	$a3, $zero, 230
	st.h	$a3, $a0, 1444
	ori	$a3, $zero, 231
	st.h	$a3, $a0, 1448
	ori	$a7, $zero, 27
	st.h	$a7, $a0, 922
	st.h	$a1, $a0, 1162
	st.h	$a1, $a0, 1422
	ori	$t0, $zero, 26
	st.h	$t0, $a0, 926
	st.h	$a2, $a0, 1166
	st.h	$a2, $a0, 1426
	ori	$a3, $zero, 16
	st.h	$a3, $a0, 966
	st.h	$a4, $a0, 1170
	st.h	$a4, $a0, 1430
	ori	$a4, $zero, 15
	st.h	$a4, $a0, 970
	st.h	$a5, $a0, 1174
	st.h	$a5, $a0, 1434
	ori	$a5, $zero, 14
	st.h	$a5, $a0, 974
	st.h	$a6, $a0, 1178
	st.h	$a6, $a0, 1438
	ori	$a1, $zero, 13
	st.h	$a1, $a0, 978
	st.h	$a7, $a0, 1182
	st.h	$a7, $a0, 1442
	ori	$a2, $zero, 12
	st.h	$a2, $a0, 982
	st.h	$t0, $a0, 1186
	st.h	$t0, $a0, 1446
	lu12i.w	$a6, 3712
	ori	$a6, $a6, 25
	st.w	$a6, $a0, 1450
	ori	$a6, $zero, 233
	st.h	$a6, $a0, 1456
	ori	$a6, $zero, 234
	st.h	$a6, $a0, 1460
	ori	$a6, $zero, 235
	st.h	$a6, $a0, 1464
	ori	$a6, $zero, 236
	st.h	$a6, $a0, 1468
	ori	$a6, $zero, 237
	st.h	$a6, $a0, 1472
	ori	$a6, $zero, 238
	st.h	$a6, $a0, 1476
	ori	$a6, $zero, 239
	st.h	$a6, $a0, 1480
	ori	$a6, $zero, 23
	st.h	$a6, $a0, 1198
	st.h	$a6, $a0, 1458
	ori	$a6, $zero, 22
	st.h	$a6, $a0, 1202
	st.h	$a6, $a0, 1462
	ori	$a6, $zero, 21
	st.h	$a6, $a0, 1206
	st.h	$a6, $a0, 1466
	ori	$a6, $zero, 20
	st.h	$a6, $a0, 1210
	st.h	$a6, $a0, 1470
	ori	$a6, $zero, 19
	st.h	$a6, $a0, 1214
	st.h	$a6, $a0, 1474
	pcalau12i	$a6, %pc_hi20(.LCPI12_3)
	vld	$vr0, $a6, %pc_lo12(.LCPI12_3)
	pcalau12i	$a6, %pc_hi20(.LCPI12_5)
	vld	$vr1, $a6, %pc_lo12(.LCPI12_5)
	ori	$a6, $zero, 18
	st.h	$a6, $a0, 1218
	st.h	$a6, $a0, 1478
	lu12i.w	$a6, 3840
	ori	$a6, $a6, 17
	st.w	$a6, $a0, 1482
	ori	$a6, $zero, 241
	st.h	$a6, $a0, 1488
	ori	$a6, $zero, 242
	st.h	$a6, $a0, 1492
	ori	$a6, $zero, 243
	st.h	$a6, $a0, 1496
	ori	$a6, $zero, 244
	st.h	$a6, $a0, 1500
	ori	$a6, $zero, 245
	st.h	$a6, $a0, 1504
	ori	$a6, $zero, 246
	st.h	$a6, $a0, 1508
	ori	$a6, $zero, 247
	st.h	$a6, $a0, 1512
	ori	$a6, $zero, 11
	st.h	$a6, $a0, 986
	st.h	$a3, $a0, 1226
	st.h	$a3, $a0, 1486
	ori	$a7, $zero, 10
	st.h	$a7, $a0, 990
	st.h	$a4, $a0, 1230
	st.h	$a4, $a0, 1490
	ori	$a3, $zero, 36
	st.h	$a5, $a0, 1234
	st.h	$a5, $a0, 1494
	ori	$a4, $zero, 24
	st.h	$a4, $a0, 1194
	st.h	$a1, $a0, 1238
	st.h	$a2, $a0, 1242
	st.h	$a6, $a0, 1246
	st.h	$a7, $a0, 1250
	st.h	$a1, $a0, 1498
	ori	$a1, $zero, 8
	st.h	$a1, $a0, 1258
	st.h	$a2, $a0, 1502
	ori	$a2, $zero, 7
	st.h	$a2, $a0, 1262
	st.h	$a6, $a0, 1506
	ori	$a5, $zero, 6
	st.h	$a5, $a0, 1266
	st.h	$a7, $a0, 1510
	lu12i.w	$a6, 3968
	ori	$a6, $a6, 9
	st.w	$a6, $a0, 1514
	ori	$a6, $zero, 249
	st.h	$a6, $a0, 1520
	ori	$a6, $zero, 250
	st.h	$a6, $a0, 1524
	ori	$a6, $zero, 251
	st.h	$a6, $a0, 1528
	ori	$a6, $zero, 252
	st.h	$a6, $a0, 1532
	ori	$a6, $zero, 253
	st.h	$a6, $a0, 1536
	ori	$a6, $zero, 254
	st.h	$a6, $a0, 1540
	ori	$a6, $zero, 255
	st.h	$a6, $a0, 1544
	ori	$a6, $zero, 5
	st.h	$a6, $a0, 1270
	st.h	$a1, $a0, 1518
	ori	$a1, $zero, 3
	st.h	$a1, $a0, 1278
	st.h	$a2, $a0, 1522
	ori	$a2, $zero, 2
	st.h	$a2, $a0, 1282
	st.h	$a4, $a0, 1454
	st.h	$a5, $a0, 1526
	st.h	$a6, $a0, 1530
	st.h	$a1, $a0, 1538
	st.h	$a2, $a0, 1542
	lu12i.w	$a1, 4096
	ori	$a1, $a1, 1
	st.w	$a1, $a0, 1546
	addi.d	$a1, $a0, 1552
	ori	$a2, $zero, 4
	lu32i.d	$a2, 24
	st.d	$a2, $a0, 432
	st.d	$a1, $a0, 440
	pcalau12i	$a1, %pc_hi20(.LCPI12_4)
	vld	$vr2, $a1, %pc_lo12(.LCPI12_4)
	pcalau12i	$a1, %pc_hi20(.LCPI12_6)
	vld	$vr3, $a1, %pc_lo12(.LCPI12_6)
	pcalau12i	$a1, %pc_hi20(.LCPI12_7)
	vld	$vr4, $a1, %pc_lo12(.LCPI12_7)
	pcalau12i	$a1, %pc_hi20(.LCPI12_8)
	vld	$vr5, $a1, %pc_lo12(.LCPI12_8)
	slli.d	$a2, $fp, 1
	addi.w	$a1, $a2, 0
	sltui	$a5, $a1, 36
	masknez	$a6, $a3, $a5
	st.w	$a4, $a0, 1648
	maskeqz	$a4, $a1, $a5
	or	$a5, $a4, $a6
	ori	$a4, $zero, 4
	st.h	$a4, $a0, 1274
	st.h	$a4, $a0, 1534
	st.w	$a4, $a0, 448
	addi.d	$a4, $a0, 1652
	st.d	$a4, $a0, 456
	vst	$vr0, $a0, 1552
	vst	$vr2, $a0, 1568
	vst	$vr1, $a0, 1584
	vst	$vr3, $a0, 1600
	vst	$vr4, $a0, 1616
	st.h	$a3, $a0, 1146
	st.h	$zero, $a0, 1290
	st.h	$a3, $a0, 1406
	st.h	$zero, $a0, 1550
	vst	$vr5, $a0, 1632
	st.w	$a5, $a0, 452
	beqz	$fp, .LBB12_18
# %bb.10:                               # %vector.ph166
	move	$a4, $zero
	addi.d	$a6, $a0, 1658
	move	$a7, $a5
	.p2align	4, , 16
.LBB12_11:                              # %vector.body167
                                        # =>This Inner Loop Header: Depth=1
	ori	$t0, $a4, 1
	st.h	$a4, $a6, -6
	st.h	$t0, $a6, -2
	addi.d	$t0, $a7, -1
	st.h	$a7, $a6, -4
	st.h	$t0, $a6, 0
	addi.d	$a4, $a4, 2
	addi.d	$a7, $a7, -2
	addi.d	$a6, $a6, 8
	bne	$a5, $a4, .LBB12_11
# %bb.12:
	move	$a6, $a5
	b	.LBB12_19
.LBB12_13:
	move	$a0, $zero
.LBB12_14:
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB12_15:
	move	$a0, $s6
	b	.LBB12_17
.LBB12_16:
	ld.d	$a1, $a0, 16
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB12_17:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB12_14
.LBB12_18:
	move	$a6, $zero
.LBB12_19:                              # %scalar.ph165.preheader
	bstrpick.d	$a4, $a2, 31, 0
	sltui	$a7, $a4, 36
	masknez	$a3, $a3, $a7
	maskeqz	$a7, $a4, $a7
	or	$a3, $a7, $a3
	addi.d	$a3, $a3, 1
	alsl.d	$a7, $a6, $a0, 2
	addi.d	$a7, $a7, 1654
	sub.d	$a5, $a5, $a6
	.p2align	4, , 16
.LBB12_20:                              # %scalar.ph165
                                        # =>This Inner Loop Header: Depth=1
	st.h	$a6, $a7, -2
	st.h	$a5, $a7, 0
	addi.d	$a6, $a6, 1
	addi.d	$a7, $a7, 4
	addi.d	$a5, $a5, -1
	bne	$a3, $a6, .LBB12_20
# %bb.21:                               # %qtm_init_model.exit118
	addi.d	$a3, $a0, 1800
	ori	$a5, $zero, 4
	st.w	$a5, $a0, 464
	st.w	$a2, $a0, 468
	st.d	$a3, $a0, 472
	beqz	$fp, .LBB12_24
# %bb.22:                               # %vector.ph174
	move	$a3, $zero
	addi.d	$a5, $a0, 1806
	move	$a6, $a2
	.p2align	4, , 16
.LBB12_23:                              # %vector.body177
                                        # =>This Inner Loop Header: Depth=1
	ori	$a7, $a3, 1
	st.h	$a3, $a5, -6
	st.h	$a7, $a5, -2
	addi.d	$a7, $a6, -1
	st.h	$a6, $a5, -4
	st.h	$a7, $a5, 0
	addi.d	$a3, $a3, 2
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, -2
	bne	$a1, $a3, .LBB12_23
	b	.LBB12_25
.LBB12_24:
	move	$a1, $zero
.LBB12_25:                              # %scalar.ph172.preheader
	addi.d	$a3, $a4, 1
	alsl.d	$a4, $a1, $a0, 2
	addi.d	$a4, $a4, 1802
	sub.d	$a2, $a2, $a1
	.p2align	4, , 16
.LBB12_26:                              # %scalar.ph172
                                        # =>This Inner Loop Header: Depth=1
	st.h	$a1, $a4, -2
	st.h	$a2, $a4, 0
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a4, 4
	addi.d	$a2, $a2, -1
	bne	$a3, $a1, .LBB12_26
# %bb.27:                               # %qtm_init_model.exit123
	pcalau12i	$a1, %pc_hi20(.LCPI12_9)
	vld	$vr0, $a1, %pc_lo12(.LCPI12_9)
	vst	$vr0, $a0, 1972
	pcalau12i	$a1, %pc_hi20(.LCPI12_10)
	vld	$vr0, $a1, %pc_lo12(.LCPI12_10)
	pcalau12i	$a1, %pc_hi20(.LCPI12_11)
	vld	$vr1, $a1, %pc_lo12(.LCPI12_11)
	pcalau12i	$a1, %pc_hi20(.LCPI12_12)
	vld	$vr2, $a1, %pc_lo12(.LCPI12_12)
	pcalau12i	$a1, %pc_hi20(.LCPI12_13)
	vld	$vr3, $a1, %pc_lo12(.LCPI12_13)
	vst	$vr0, $a0, 1988
	vst	$vr1, $a0, 2004
	vst	$vr2, $a0, 2020
	vst	$vr3, $a0, 2036
	pcalau12i	$a1, %pc_hi20(.LCPI12_14)
	vld	$vr0, $a1, %pc_lo12(.LCPI12_14)
	addi.d	$a1, $a0, 1972
	ori	$a2, $zero, 4
	ori	$a3, $zero, 2052
	vstx	$vr0, $a0, $a3
	pcalau12i	$a3, %pc_hi20(.LCPI12_15)
	vld	$vr0, $a3, %pc_lo12(.LCPI12_15)
	ori	$a3, $zero, 4
	lu32i.d	$a3, 27
	st.d	$a3, $a0, 480
	st.d	$a1, $a0, 488
	ori	$a1, $zero, 2068
	vstx	$vr0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(.LCPI12_16)
	vld	$vr0, $a1, %pc_lo12(.LCPI12_16)
	ori	$a1, $zero, 2084
	add.d	$a3, $a0, $a1
	lu32i.d	$a2, 7
	vstx	$vr0, $a0, $a1
	pcalau12i	$a1, %pc_hi20(.LCPI12_17)
	vld	$vr0, $a1, %pc_lo12(.LCPI12_17)
	st.d	$a2, $a0, 496
	st.d	$a3, $a0, 504
	ori	$a1, $zero, 2100
	vstx	$vr0, $a0, $a1
	stptr.d	$s1, $a0, 2120
	stptr.d	$s2, $a0, 2128
	b	.LBB12_14
.Lfunc_end12:
	.size	qtm_init, .Lfunc_end12-qtm_init
                                        # -- End function
	.globl	qtm_decompress                  # -- Begin function qtm_decompress
	.p2align	5
	.type	qtm_decompress,@function
qtm_decompress:                         # @qtm_decompress
# %bb.0:
	addi.d	$sp, $sp, -272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	move	$fp, $a0
	addi.w	$a0, $zero, -111
	beqz	$fp, .LBB13_325
# %bb.1:
	move	$s4, $a1
	bltz	$a1, .LBB13_325
# %bb.2:
	ld.w	$a0, $fp, 44
	bnez	$a0, .LBB13_325
# %bb.3:
	ld.d	$a0, $fp, 80
	ld.d	$a1, $fp, 72
	sub.w	$a0, $a0, $a1
	slt	$a2, $s4, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $s4, $a2
	or	$a0, $a2, $a0
	addi.w	$s1, $a0, 0
	beqz	$s1, .LBB13_8
# %bb.4:
	ld.bu	$a0, $fp, 8
	beqz	$a0, .LBB13_7
# %bb.5:
	ld.w	$a0, $fp, 4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB13_322
# %bb.6:                                # %._crit_edge1724
	ld.d	$a1, $fp, 72
.LBB13_7:
	add.d	$a1, $a1, $s1
	st.d	$a1, $fp, 72
	sub.d	$s4, $s4, $s1
.LBB13_8:
	beqz	$s4, .LBB13_324
# %bb.9:
	ld.d	$s5, $fp, 56
	ld.d	$ra, $fp, 64
	ld.w	$s7, $fp, 88
	ld.bu	$s8, $fp, 96
	ld.w	$s6, $fp, 28
	ld.w	$a0, $fp, 32
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.hu	$s2, $fp, 36
	ld.d	$a0, $fp, 80
	ld.hu	$s1, $fp, 38
	ld.hu	$s3, $fp, 40
	sub.d	$a2, $a0, $a1
	bge	$a2, $s4, .LBB13_316
# %bb.10:                               # %.lr.ph1597
	ld.d	$a2, $fp, 16
	addi.d	$a3, $fp, 496
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a3, $fp, 480
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a3, $fp, 337
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a3, $fp, 310
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a3, $fp, 464
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a3, $fp, 268
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a3, $fp, 100
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a3, $fp, 448
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a3, $fp, 432
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	addi.d	$a3, $fp, 384
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a3, $fp, 368
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	addi.d	$a2, $a2, 16
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	ori	$t7, $zero, 16
	ori	$a4, $zero, 32
	lu12i.w	$a2, 15
	ori	$a2, $a2, 4095
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	lu12i.w	$t8, 4
.LBB13_11:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_15 Depth 2
                                        #     Child Loop BB13_25 Depth 2
                                        #       Child Loop BB13_27 Depth 3
                                        #       Child Loop BB13_33 Depth 3
                                        #       Child Loop BB13_36 Depth 3
                                        #       Child Loop BB13_42 Depth 3
                                        #       Child Loop BB13_69 Depth 3
                                        #       Child Loop BB13_141 Depth 3
                                        #       Child Loop BB13_144 Depth 3
                                        #       Child Loop BB13_150 Depth 3
                                        #       Child Loop BB13_164 Depth 3
                                        #       Child Loop BB13_97 Depth 3
                                        #       Child Loop BB13_110 Depth 3
                                        #       Child Loop BB13_113 Depth 3
                                        #       Child Loop BB13_122 Depth 3
                                        #       Child Loop BB13_136 Depth 3
                                        #       Child Loop BB13_104 Depth 3
                                        #       Child Loop BB13_172 Depth 3
                                        #       Child Loop BB13_175 Depth 3
                                        #       Child Loop BB13_184 Depth 3
                                        #       Child Loop BB13_196 Depth 3
                                        #       Child Loop BB13_207 Depth 3
                                        #       Child Loop BB13_213 Depth 3
                                        #       Child Loop BB13_216 Depth 3
                                        #       Child Loop BB13_225 Depth 3
                                        #       Child Loop BB13_240 Depth 3
                                        #       Child Loop BB13_263 Depth 3
                                        #       Child Loop BB13_285 Depth 3
                                        #       Child Loop BB13_289 Depth 3
                                        #       Child Loop BB13_252 Depth 3
                                        #       Child Loop BB13_268 Depth 3
                                        #       Child Loop BB13_277 Depth 3
                                        #       Child Loop BB13_281 Depth 3
                                        #       Child Loop BB13_292 Depth 3
                                        #       Child Loop BB13_59 Depth 3
                                        #       Child Loop BB13_75 Depth 3
                                        #       Child Loop BB13_78 Depth 3
                                        #       Child Loop BB13_86 Depth 3
                                        #     Child Loop BB13_301 Depth 2
	ld.bu	$a2, $fp, 42
	bnez	$a2, .LBB13_23
# %bb.12:                               # %.preheader.preheader
                                        #   in Loop: Header=BB13_11 Depth=1
	move	$s0, $zero
	ori	$s1, $zero, 16
	b	.LBB13_15
	.p2align	4, , 16
.LBB13_13:                              #   in Loop: Header=BB13_15 Depth=2
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t7, $s2
	sll.w	$a0, $a0, $a1
	or	$s7, $a0, $s7
	addi.d	$s8, $s8, 16
	addi.d	$s5, $s5, 2
	andi	$s2, $s8, 255
.LBB13_14:                              #   in Loop: Header=BB13_15 Depth=2
	sltu	$a0, $s1, $s2
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a1
	bstrpick.d	$a1, $s0, 15, 0
	sll.w	$a1, $a1, $a0
	sub.d	$a2, $a4, $a0
	srl.w	$a2, $s7, $a2
	or	$s0, $a2, $a1
	sll.w	$s7, $s7, $a0
	sub.d	$a1, $s1, $a0
	andi	$s1, $a1, 255
	sub.d	$s8, $s8, $a0
	beqz	$s1, .LBB13_22
.LBB13_15:                              # %.preheader
                                        #   Parent Loop BB13_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$s2, $s8, 255
	bltu	$t7, $s2, .LBB13_14
# %bb.16:                               #   in Loop: Header=BB13_15 Depth=2
	bltu	$s5, $ra, .LBB13_13
# %bb.17:                               #   in Loop: Header=BB13_15 Depth=2
	ldptr.d	$a3, $fp, 2128
	ld.d	$a1, $fp, 48
	ld.w	$a2, $fp, 92
	beqz	$a3, .LBB13_19
# %bb.18:                               #   in Loop: Header=BB13_15 Depth=2
	ldptr.d	$a0, $fp, 2120
	jirl	$ra, $a3, 0
	b	.LBB13_20
.LBB13_19:                              #   in Loop: Header=BB13_15 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB13_20:                              #   in Loop: Header=BB13_15 Depth=2
	addi.w	$a1, $zero, -1
	ori	$t7, $zero, 16
	ori	$a4, $zero, 32
	lu12i.w	$t8, 4
	bge	$a1, $a0, .LBB13_322
# %bb.21:                               #   in Loop: Header=BB13_15 Depth=2
	ld.d	$s5, $fp, 48
	st.d	$s5, $fp, 56
	add.d	$ra, $s5, $a0
	st.d	$ra, $fp, 64
	b	.LBB13_13
.LBB13_22:                              #   in Loop: Header=BB13_11 Depth=1
	ld.d	$a0, $fp, 80
	ld.d	$a1, $fp, 72
	move	$s1, $zero
	bstrpick.d	$s3, $s0, 15, 0
	ori	$a2, $zero, 1
	st.b	$a2, $fp, 42
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
.LBB13_23:                              #   in Loop: Header=BB13_11 Depth=1
	sub.d	$a0, $s4, $a0
	add.d	$a0, $a0, $a1
	add.w	$a0, $s6, $a0
	lu12i.w	$a1, 8
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	add.w	$a1, $a2, $a1
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	bgeu	$s6, $a0, .LBB13_296
# %bb.24:                               # %.lr.ph1571.preheader
                                        #   in Loop: Header=BB13_11 Depth=1
	st.d	$s4, $sp, 144                   # 8-byte Folded Spill
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
.LBB13_25:                              # %.lr.ph1571
                                        #   Parent Loop BB13_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_27 Depth 3
                                        #       Child Loop BB13_33 Depth 3
                                        #       Child Loop BB13_36 Depth 3
                                        #       Child Loop BB13_42 Depth 3
                                        #       Child Loop BB13_69 Depth 3
                                        #       Child Loop BB13_141 Depth 3
                                        #       Child Loop BB13_144 Depth 3
                                        #       Child Loop BB13_150 Depth 3
                                        #       Child Loop BB13_164 Depth 3
                                        #       Child Loop BB13_97 Depth 3
                                        #       Child Loop BB13_110 Depth 3
                                        #       Child Loop BB13_113 Depth 3
                                        #       Child Loop BB13_122 Depth 3
                                        #       Child Loop BB13_136 Depth 3
                                        #       Child Loop BB13_104 Depth 3
                                        #       Child Loop BB13_172 Depth 3
                                        #       Child Loop BB13_175 Depth 3
                                        #       Child Loop BB13_184 Depth 3
                                        #       Child Loop BB13_196 Depth 3
                                        #       Child Loop BB13_207 Depth 3
                                        #       Child Loop BB13_213 Depth 3
                                        #       Child Loop BB13_216 Depth 3
                                        #       Child Loop BB13_225 Depth 3
                                        #       Child Loop BB13_240 Depth 3
                                        #       Child Loop BB13_263 Depth 3
                                        #       Child Loop BB13_285 Depth 3
                                        #       Child Loop BB13_289 Depth 3
                                        #       Child Loop BB13_252 Depth 3
                                        #       Child Loop BB13_268 Depth 3
                                        #       Child Loop BB13_277 Depth 3
                                        #       Child Loop BB13_281 Depth 3
                                        #       Child Loop BB13_292 Depth 3
                                        #       Child Loop BB13_59 Depth 3
                                        #       Child Loop BB13_75 Depth 3
                                        #       Child Loop BB13_78 Depth 3
                                        #       Child Loop BB13_86 Depth 3
	ld.d	$a0, $fp, 504
	bstrpick.d	$a1, $s2, 15, 0
	ld.w	$a2, $fp, 500
	ld.hu	$s2, $a0, 2
	bstrpick.d	$a3, $s1, 15, 0
	sub.d	$s0, $a1, $a3
	ori	$a1, $zero, 1
	ori	$a4, $zero, 2
	blt	$a2, $a4, .LBB13_30
# %bb.26:                               # %.lr.ph
                                        #   in Loop: Header=BB13_25 Depth=2
	sub.d	$a1, $s3, $a3
	addi.d	$a1, $a1, 1
	mul.d	$a1, $a1, $s2
	addi.w	$a1, $a1, -1
	bstrpick.d	$a3, $s0, 15, 0
	addi.d	$a3, $a3, 1
	div.wu	$a5, $a1, $a3
	addi.d	$a3, $a0, 6
	addi.d	$a4, $a2, -1
	ori	$a1, $zero, 1
	bstrpick.d	$a5, $a5, 15, 0
	.p2align	4, , 16
.LBB13_27:                              #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$a6, $a3, 0
	bgeu	$a5, $a6, .LBB13_30
# %bb.28:                               #   in Loop: Header=BB13_27 Depth=3
	addi.w	$a1, $a1, 1
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	bnez	$a4, .LBB13_27
# %bb.29:                               #   in Loop: Header=BB13_25 Depth=2
	move	$a1, $a2
.LBB13_30:                              # %._crit_edge
                                        #   in Loop: Header=BB13_25 Depth=2
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	alsl.d	$a4, $a1, $a0, 2
	ld.hu	$t6, $a4, -4
	ld.hu	$s6, $a4, -2
	ld.hu	$s4, $a4, 2
	ori	$a2, $zero, 8
	st.d	$t6, $sp, 152                   # 8-byte Folded Spill
	bge	$a1, $a2, .LBB13_32
# %bb.31:                               #   in Loop: Header=BB13_25 Depth=2
	ori	$a4, $zero, 1
	b	.LBB13_35
.LBB13_32:                              # %vector.ph2059
                                        #   in Loop: Header=BB13_25 Depth=2
	ori	$a3, $zero, 1
	slt	$a2, $a3, $a1
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 30, 3
	slli.d	$a3, $a3, 3
	sub.d	$a1, $a1, $a3
	addi.d	$a4, $a4, -14
	move	$a5, $a3
	.p2align	4, , 16
.LBB13_33:                              # %vector.body2062
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a6, $a4, 12
	ld.h	$a7, $a4, 8
	ld.h	$t0, $a4, 4
	ld.h	$t1, $a4, 0
	ld.h	$t2, $a4, -4
	ld.h	$t3, $a4, -8
	ld.h	$t4, $a4, -12
	ld.h	$t5, $a4, -16
	vinsgr2vr.h	$vr0, $a6, 0
	vinsgr2vr.h	$vr0, $a7, 1
	vinsgr2vr.h	$vr0, $t0, 2
	vinsgr2vr.h	$vr0, $t1, 3
	vinsgr2vr.h	$vr0, $t2, 4
	vinsgr2vr.h	$vr0, $t3, 5
	vinsgr2vr.h	$vr0, $t4, 6
	vinsgr2vr.h	$vr0, $t5, 7
	vaddi.hu	$vr0, $vr0, 8
	vstelm.h	$vr0, $a4, 12, 0
	vstelm.h	$vr0, $a4, 8, 1
	vstelm.h	$vr0, $a4, 4, 2
	vstelm.h	$vr0, $a4, 0, 3
	vstelm.h	$vr0, $a4, -4, 4
	vstelm.h	$vr0, $a4, -8, 5
	vstelm.h	$vr0, $a4, -12, 6
	vstelm.h	$vr0, $a4, -16, 7
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, -32
	bnez	$a5, .LBB13_33
# %bb.34:                               # %middle.block2066
                                        #   in Loop: Header=BB13_25 Depth=2
	ori	$a4, $zero, 1
	beq	$a2, $a3, .LBB13_37
.LBB13_35:                              # %scalar.ph2057.preheader
                                        #   in Loop: Header=BB13_25 Depth=2
	addi.d	$a2, $a1, 1
	alsl.d	$a1, $a1, $a0, 2
	addi.d	$a1, $a1, -2
	.p2align	4, , 16
.LBB13_36:                              # %scalar.ph2057
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a3, $a1, 0
	addi.d	$a3, $a3, 8
	st.h	$a3, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, -4
	blt	$a4, $a2, .LBB13_36
.LBB13_37:                              # %.loopexit2074
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.hu	$a0, $a0, 2
	ori	$a1, $zero, 3801
	bltu	$a0, $a1, .LBB13_39
# %bb.38:                               #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	st.d	$s2, $sp, 80                    # 8-byte Folded Spill
	move	$s2, $s6
	move	$s6, $s4
	move	$s4, $s0
	move	$s0, $ra
	pcaddu18i	$ra, %call36(qtm_update_model)
	jirl	$ra, $ra, 0
	move	$ra, $s0
	move	$s0, $s4
	move	$s4, $s6
	move	$s6, $s2
	ld.d	$s2, $sp, 80                    # 8-byte Folded Reload
	lu12i.w	$t8, 4
	ori	$a4, $zero, 1
	ori	$t7, $zero, 16
.LBB13_39:                              # %.preheader2087
                                        #   in Loop: Header=BB13_25 Depth=2
	addi.d	$a0, $s0, 1
	mul.w	$a1, $a0, $s6
	div.wu	$a1, $a1, $s2
	add.d	$a1, $s1, $a1
	addi.d	$s0, $a1, -1
	mul.w	$a0, $a0, $s4
	div.wu	$a0, $a0, $s2
	add.d	$s1, $s1, $a0
	b	.LBB13_42
	.p2align	4, , 16
.LBB13_40:                              #   in Loop: Header=BB13_42 Depth=3
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t7, $s2
	sll.w	$a0, $a0, $a1
	or	$s7, $a0, $s7
	addi.d	$s8, $s8, 16
	addi.d	$s5, $s5, 2
.LBB13_41:                              #   in Loop: Header=BB13_42 Depth=3
	slli.d	$s1, $s1, 1
	slli.d	$a0, $s0, 1
	addi.d	$s0, $a0, 1
	bstrpick.d	$a0, $s7, 31, 31
	slli.d	$a1, $s3, 1
	or	$a0, $a1, $a0
	bstrpick.d	$s3, $a0, 15, 0
	slli.d	$s7, $s7, 1
	addi.d	$s8, $s8, -1
.LBB13_42:                              #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xor	$a0, $s1, $s0
	bstrpick.d	$a0, $a0, 15, 15
	beqz	$a0, .LBB13_46
# %bb.43:                               #   in Loop: Header=BB13_42 Depth=3
	bstrpick.d	$a2, $s0, 15, 0
	and	$a0, $a2, $t8
	bstrpick.d	$a3, $s1, 15, 0
	bnez	$a0, .LBB13_53
# %bb.44:                               #   in Loop: Header=BB13_42 Depth=3
	and	$a0, $a3, $t8
	beqz	$a0, .LBB13_53
# %bb.45:                               #   in Loop: Header=BB13_42 Depth=3
	xor	$s3, $s3, $t8
	bstrpick.d	$s1, $s1, 13, 0
	or	$s0, $s0, $t8
.LBB13_46:                              #   in Loop: Header=BB13_42 Depth=3
	andi	$s2, $s8, 255
	bltu	$t7, $s2, .LBB13_41
# %bb.47:                               #   in Loop: Header=BB13_42 Depth=3
	bltu	$s5, $ra, .LBB13_40
# %bb.48:                               #   in Loop: Header=BB13_42 Depth=3
	ldptr.d	$a3, $fp, 2128
	ld.d	$a1, $fp, 48
	ld.w	$a2, $fp, 92
	beqz	$a3, .LBB13_50
# %bb.49:                               #   in Loop: Header=BB13_42 Depth=3
	ldptr.d	$a0, $fp, 2120
	jirl	$ra, $a3, 0
	b	.LBB13_51
.LBB13_50:                              #   in Loop: Header=BB13_42 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB13_51:                              #   in Loop: Header=BB13_42 Depth=3
	addi.w	$a1, $zero, -1
	ori	$t7, $zero, 16
	ori	$a4, $zero, 1
	lu12i.w	$t8, 4
	bge	$a1, $a0, .LBB13_322
# %bb.52:                               #   in Loop: Header=BB13_42 Depth=3
	ld.d	$s5, $fp, 48
	st.d	$s5, $fp, 56
	add.d	$ra, $s5, $a0
	st.d	$ra, $fp, 64
	b	.LBB13_40
.LBB13_53:                              #   in Loop: Header=BB13_25 Depth=2
	ori	$a0, $zero, 3
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	bltu	$a0, $a1, .LBB13_64
# %bb.54:                               #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beqz	$a1, .LBB13_57
# %bb.55:                               #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$a1, $a4, .LBB13_57
# %bb.56:                               #   in Loop: Header=BB13_25 Depth=2
	addi.d	$a0, $a1, -2
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 416
	masknez	$a1, $a1, $a0
	ori	$a4, $zero, 400
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $fp, $a0
.LBB13_57:                              #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a1, $a0, 8
	ld.w	$a4, $a0, 4
	ld.hu	$s0, $a1, 2
	sub.w	$t0, $a2, $a3
	ori	$a2, $zero, 1
	ori	$a5, $zero, 2
	blt	$a4, $a5, .LBB13_62
# %bb.58:                               # %.lr.ph1557
                                        #   in Loop: Header=BB13_25 Depth=2
	sub.d	$a2, $s3, $a3
	addi.d	$a2, $a2, 1
	mul.d	$a2, $a2, $s0
	addi.w	$a2, $a2, -1
	bstrpick.d	$a3, $t0, 15, 0
	addi.d	$a3, $a3, 1
	div.wu	$a6, $a2, $a3
	addi.d	$a3, $a1, 6
	addi.d	$a5, $a4, -1
	ori	$a2, $zero, 1
	bstrpick.d	$a6, $a6, 15, 0
.LBB13_59:                              #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$a7, $a3, 0
	bgeu	$a6, $a7, .LBB13_62
# %bb.60:                               #   in Loop: Header=BB13_59 Depth=3
	addi.w	$a2, $a2, 1
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, 4
	bnez	$a5, .LBB13_59
# %bb.61:                               #   in Loop: Header=BB13_25 Depth=2
	move	$a2, $a4
.LBB13_62:                              # %._crit_edge1558
                                        #   in Loop: Header=BB13_25 Depth=2
	alsl.d	$a5, $a2, $a1, 2
	ld.hu	$s2, $a5, -4
	ld.hu	$s6, $a5, -2
	ld.hu	$s4, $a5, 2
	ori	$a3, $zero, 8
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	bge	$a2, $a3, .LBB13_74
# %bb.63:                               #   in Loop: Header=BB13_25 Depth=2
	ori	$a5, $zero, 1
	b	.LBB13_77
.LBB13_64:                              #   in Loop: Header=BB13_25 Depth=2
	ori	$a0, $zero, 6
	beq	$a1, $a0, .LBB13_102
# %bb.65:                               #   in Loop: Header=BB13_25 Depth=2
	ori	$a0, $zero, 5
	beq	$a1, $a0, .LBB13_95
# %bb.66:                               #   in Loop: Header=BB13_25 Depth=2
	ori	$a0, $zero, 4
	bne	$a1, $a0, .LBB13_329
# %bb.67:                               #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $fp, 440
	ld.w	$a4, $fp, 436
	ld.hu	$s0, $a0, 2
	sub.w	$t6, $a2, $a3
	ori	$a1, $zero, 1
	ori	$a2, $zero, 2
	blt	$a4, $a2, .LBB13_72
# %bb.68:                               # %.lr.ph1519
                                        #   in Loop: Header=BB13_25 Depth=2
	sub.d	$a1, $s3, $a3
	addi.d	$a1, $a1, 1
	mul.d	$a1, $a1, $s0
	addi.w	$a1, $a1, -1
	bstrpick.d	$a2, $t6, 15, 0
	addi.d	$a2, $a2, 1
	div.wu	$a5, $a1, $a2
	addi.d	$a2, $a0, 6
	addi.d	$a3, $a4, -1
	ori	$a1, $zero, 1
	bstrpick.d	$a5, $a5, 15, 0
.LBB13_69:                              #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$a6, $a2, 0
	bgeu	$a5, $a6, .LBB13_72
# %bb.70:                               #   in Loop: Header=BB13_69 Depth=3
	addi.w	$a1, $a1, 1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB13_69
# %bb.71:                               #   in Loop: Header=BB13_25 Depth=2
	move	$a1, $a4
.LBB13_72:                              # %._crit_edge1520
                                        #   in Loop: Header=BB13_25 Depth=2
	alsl.d	$a4, $a1, $a0, 2
	ld.hu	$a2, $a4, -4
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	ld.hu	$s2, $a4, -2
	ld.hu	$s6, $a4, 2
	ori	$a2, $zero, 8
	bge	$a1, $a2, .LBB13_140
# %bb.73:                               #   in Loop: Header=BB13_25 Depth=2
	ori	$a4, $zero, 1
	b	.LBB13_143
.LBB13_74:                              # %vector.ph
                                        #   in Loop: Header=BB13_25 Depth=2
	st.d	$t0, $sp, 80                    # 8-byte Folded Spill
	ori	$a4, $zero, 1
	slt	$a3, $a4, $a2
	masknez	$a4, $a4, $a3
	maskeqz	$a3, $a2, $a3
	or	$a3, $a3, $a4
	bstrpick.d	$a4, $a3, 30, 3
	slli.d	$a4, $a4, 3
	sub.d	$a2, $a2, $a4
	addi.d	$a5, $a5, -14
	move	$a6, $a4
	.p2align	4, , 16
.LBB13_75:                              # %vector.body
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a7, $a5, 12
	ld.h	$t0, $a5, 8
	ld.h	$t1, $a5, 4
	ld.h	$t2, $a5, 0
	ld.h	$t3, $a5, -4
	ld.h	$t4, $a5, -8
	ld.h	$t5, $a5, -12
	ld.h	$t6, $a5, -16
	vinsgr2vr.h	$vr0, $a7, 0
	vinsgr2vr.h	$vr0, $t0, 1
	vinsgr2vr.h	$vr0, $t1, 2
	vinsgr2vr.h	$vr0, $t2, 3
	vinsgr2vr.h	$vr0, $t3, 4
	vinsgr2vr.h	$vr0, $t4, 5
	vinsgr2vr.h	$vr0, $t5, 6
	vinsgr2vr.h	$vr0, $t6, 7
	vaddi.hu	$vr0, $vr0, 8
	vstelm.h	$vr0, $a5, 12, 0
	vstelm.h	$vr0, $a5, 8, 1
	vstelm.h	$vr0, $a5, 4, 2
	vstelm.h	$vr0, $a5, 0, 3
	vstelm.h	$vr0, $a5, -4, 4
	vstelm.h	$vr0, $a5, -8, 5
	vstelm.h	$vr0, $a5, -12, 6
	vstelm.h	$vr0, $a5, -16, 7
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, -32
	bnez	$a6, .LBB13_75
# %bb.76:                               # %middle.block
                                        #   in Loop: Header=BB13_25 Depth=2
	ori	$a5, $zero, 1
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	beq	$a3, $a4, .LBB13_79
.LBB13_77:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB13_25 Depth=2
	addi.d	$a3, $a2, 1
	alsl.d	$a2, $a2, $a1, 2
	addi.d	$a2, $a2, -2
	.p2align	4, , 16
.LBB13_78:                              # %scalar.ph
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a4, $a2, 0
	addi.d	$a4, $a4, 8
	st.h	$a4, $a2, 0
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, -4
	blt	$a5, $a3, .LBB13_78
.LBB13_79:                              # %.loopexit2069
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.hu	$a1, $a1, 2
	ori	$a2, $zero, 3801
	bltu	$a1, $a2, .LBB13_81
# %bb.80:                               #   in Loop: Header=BB13_25 Depth=2
	move	$s2, $ra
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	move	$s0, $s6
	move	$s6, $s4
	move	$s4, $t0
	pcaddu18i	$ra, %call36(qtm_update_model)
	jirl	$ra, $ra, 0
	move	$t0, $s4
	move	$s4, $s6
	move	$s6, $s0
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	move	$ra, $s2
	lu12i.w	$t8, 4
	ori	$t7, $zero, 16
.LBB13_81:                              # %.preheader2078
                                        #   in Loop: Header=BB13_25 Depth=2
	addi.d	$a0, $t0, 1
	mul.w	$a1, $a0, $s6
	div.wu	$a1, $a1, $s0
	add.d	$a1, $s1, $a1
	addi.d	$s2, $a1, -1
	mul.w	$a0, $a0, $s4
	div.wu	$a0, $a0, $s0
	add.d	$s1, $s1, $a0
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ori	$a4, $zero, 32
	b	.LBB13_86
.LBB13_82:                              #   in Loop: Header=BB13_86 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$t7, $zero, 16
	ori	$a4, $zero, 32
	lu12i.w	$t8, 4
	bltz	$a0, .LBB13_322
.LBB13_83:                              #   in Loop: Header=BB13_86 Depth=3
	ld.d	$s5, $fp, 48
	st.d	$s5, $fp, 56
	add.d	$ra, $s5, $a0
	st.d	$ra, $fp, 64
.LBB13_84:                              #   in Loop: Header=BB13_86 Depth=3
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t7, $s0
	sll.w	$a0, $a0, $a1
	or	$s7, $a0, $s7
	addi.d	$s8, $s8, 16
	addi.d	$s5, $s5, 2
.LBB13_85:                              #   in Loop: Header=BB13_86 Depth=3
	slli.d	$s1, $s1, 1
	slli.d	$a0, $s2, 1
	addi.d	$s2, $a0, 1
	bstrpick.d	$a0, $s7, 31, 31
	slli.d	$a1, $s3, 1
	or	$a0, $a1, $a0
	bstrpick.d	$s3, $a0, 15, 0
	slli.d	$s7, $s7, 1
	addi.d	$s8, $s8, -1
.LBB13_86:                              #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xor	$a0, $s1, $s2
	bstrpick.d	$a0, $a0, 15, 15
	beqz	$a0, .LBB13_90
# %bb.87:                               #   in Loop: Header=BB13_86 Depth=3
	bstrpick.d	$a0, $s2, 15, 0
	and	$a0, $a0, $t8
	bnez	$a0, .LBB13_94
# %bb.88:                               #   in Loop: Header=BB13_86 Depth=3
	bstrpick.d	$a0, $s1, 15, 0
	and	$a0, $a0, $t8
	beqz	$a0, .LBB13_94
# %bb.89:                               #   in Loop: Header=BB13_86 Depth=3
	xor	$s3, $s3, $t8
	bstrpick.d	$s1, $s1, 13, 0
	or	$s2, $s2, $t8
.LBB13_90:                              #   in Loop: Header=BB13_86 Depth=3
	andi	$s0, $s8, 255
	bltu	$t7, $s0, .LBB13_85
# %bb.91:                               #   in Loop: Header=BB13_86 Depth=3
	bltu	$s5, $ra, .LBB13_84
# %bb.92:                               #   in Loop: Header=BB13_86 Depth=3
	ldptr.d	$a3, $fp, 2128
	ld.d	$a1, $fp, 48
	ld.w	$a2, $fp, 92
	beqz	$a3, .LBB13_82
# %bb.93:                               #   in Loop: Header=BB13_86 Depth=3
	ldptr.d	$a0, $fp, 2120
	jirl	$ra, $a3, 0
	ori	$t7, $zero, 16
	ori	$a4, $zero, 32
	lu12i.w	$t8, 4
	bgez	$a0, .LBB13_83
	b	.LBB13_322
.LBB13_94:                              # %.thread
                                        #   in Loop: Header=BB13_25 Depth=2
	bstrpick.d	$a0, $s6, 31, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	stx.b	$a2, $a1, $a0
	ori	$a0, $zero, 1
	b	.LBB13_295
.LBB13_95:                              #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $fp, 456
	ld.w	$a4, $fp, 452
	ld.hu	$s0, $a0, 2
	sub.w	$t6, $a2, $a3
	ori	$a1, $zero, 1
	ori	$a2, $zero, 2
	blt	$a4, $a2, .LBB13_100
# %bb.96:                               # %.lr.ph1497
                                        #   in Loop: Header=BB13_25 Depth=2
	sub.d	$a1, $s3, $a3
	addi.d	$a1, $a1, 1
	mul.d	$a1, $a1, $s0
	addi.w	$a1, $a1, -1
	bstrpick.d	$a2, $t6, 15, 0
	addi.d	$a2, $a2, 1
	div.wu	$a5, $a1, $a2
	addi.d	$a2, $a0, 6
	addi.d	$a3, $a4, -1
	ori	$a1, $zero, 1
	bstrpick.d	$a5, $a5, 15, 0
.LBB13_97:                              #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$a6, $a2, 0
	bgeu	$a5, $a6, .LBB13_100
# %bb.98:                               #   in Loop: Header=BB13_97 Depth=3
	addi.w	$a1, $a1, 1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB13_97
# %bb.99:                               #   in Loop: Header=BB13_25 Depth=2
	move	$a1, $a4
.LBB13_100:                             # %._crit_edge1498
                                        #   in Loop: Header=BB13_25 Depth=2
	alsl.d	$a4, $a1, $a0, 2
	ld.hu	$a2, $a4, -4
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	ld.hu	$s2, $a4, -2
	ld.hu	$s6, $a4, 2
	ori	$a2, $zero, 8
	bge	$a1, $a2, .LBB13_109
# %bb.101:                              #   in Loop: Header=BB13_25 Depth=2
	ori	$a4, $zero, 1
	b	.LBB13_112
.LBB13_102:                             #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $fp, 488
	ld.w	$a4, $fp, 484
	ld.hu	$s0, $a0, 2
	sub.w	$s6, $a2, $a3
	ori	$a1, $zero, 1
	ori	$a2, $zero, 2
	blt	$a4, $a2, .LBB13_107
# %bb.103:                              # %.lr.ph1453
                                        #   in Loop: Header=BB13_25 Depth=2
	sub.d	$a1, $s3, $a3
	addi.d	$a1, $a1, 1
	mul.d	$a1, $a1, $s0
	addi.w	$a1, $a1, -1
	bstrpick.d	$a2, $s6, 15, 0
	addi.d	$a2, $a2, 1
	div.wu	$a5, $a1, $a2
	addi.d	$a2, $a0, 6
	addi.d	$a3, $a4, -1
	ori	$a1, $zero, 1
	bstrpick.d	$a5, $a5, 15, 0
.LBB13_104:                             #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$a6, $a2, 0
	bgeu	$a5, $a6, .LBB13_107
# %bb.105:                              #   in Loop: Header=BB13_104 Depth=3
	addi.w	$a1, $a1, 1
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	bnez	$a3, .LBB13_104
# %bb.106:                              #   in Loop: Header=BB13_25 Depth=2
	move	$a1, $a4
.LBB13_107:                             # %._crit_edge1454
                                        #   in Loop: Header=BB13_25 Depth=2
	alsl.d	$a4, $a1, $a0, 2
	ld.hu	$a2, $a4, -4
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	ld.hu	$s4, $a4, -2
	ld.hu	$s2, $a4, 2
	ori	$a2, $zero, 8
	bge	$a1, $a2, .LBB13_171
# %bb.108:                              #   in Loop: Header=BB13_25 Depth=2
	ori	$a4, $zero, 1
	b	.LBB13_174
.LBB13_109:                             # %vector.ph2020
                                        #   in Loop: Header=BB13_25 Depth=2
	ori	$a3, $zero, 1
	slt	$a2, $a3, $a1
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 30, 3
	slli.d	$a3, $a3, 3
	sub.d	$a1, $a1, $a3
	addi.d	$a4, $a4, -14
	move	$a5, $a3
.LBB13_110:                             # %vector.body2023
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a6, $a4, 12
	ld.h	$a7, $a4, 8
	ld.h	$t0, $a4, 4
	ld.h	$t1, $a4, 0
	ld.h	$t2, $a4, -4
	ld.h	$t3, $a4, -8
	ld.h	$t4, $a4, -12
	ld.h	$t5, $a4, -16
	vinsgr2vr.h	$vr0, $a6, 0
	vinsgr2vr.h	$vr0, $a7, 1
	vinsgr2vr.h	$vr0, $t0, 2
	vinsgr2vr.h	$vr0, $t1, 3
	vinsgr2vr.h	$vr0, $t2, 4
	vinsgr2vr.h	$vr0, $t3, 5
	vinsgr2vr.h	$vr0, $t4, 6
	vinsgr2vr.h	$vr0, $t5, 7
	vaddi.hu	$vr0, $vr0, 8
	vstelm.h	$vr0, $a4, 12, 0
	vstelm.h	$vr0, $a4, 8, 1
	vstelm.h	$vr0, $a4, 4, 2
	vstelm.h	$vr0, $a4, 0, 3
	vstelm.h	$vr0, $a4, -4, 4
	vstelm.h	$vr0, $a4, -8, 5
	vstelm.h	$vr0, $a4, -12, 6
	vstelm.h	$vr0, $a4, -16, 7
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, -32
	bnez	$a5, .LBB13_110
# %bb.111:                              # %middle.block2027
                                        #   in Loop: Header=BB13_25 Depth=2
	ori	$a4, $zero, 1
	beq	$a2, $a3, .LBB13_114
.LBB13_112:                             # %scalar.ph2018.preheader
                                        #   in Loop: Header=BB13_25 Depth=2
	addi.d	$a2, $a1, 1
	alsl.d	$a1, $a1, $a0, 2
	addi.d	$a1, $a1, -2
.LBB13_113:                             # %scalar.ph2018
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a3, $a1, 0
	addi.d	$a3, $a3, 8
	st.h	$a3, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, -4
	blt	$a4, $a2, .LBB13_113
.LBB13_114:                             # %.loopexit2071
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.hu	$a0, $a0, 2
	ori	$a1, $zero, 3801
	bltu	$a0, $a1, .LBB13_116
# %bb.115:                              #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	move	$s0, $s2
	move	$s2, $ra
	move	$s4, $t6
	pcaddu18i	$ra, %call36(qtm_update_model)
	jirl	$ra, $ra, 0
	move	$t6, $s4
	move	$ra, $s2
	move	$s2, $s0
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	lu12i.w	$t8, 4
	ori	$t7, $zero, 16
.LBB13_116:                             # %.preheader2083
                                        #   in Loop: Header=BB13_25 Depth=2
	addi.d	$a0, $t6, 1
	mul.w	$a1, $a0, $s2
	div.wu	$a1, $a1, $s0
	add.d	$a1, $s1, $a1
	addi.d	$s2, $a1, -1
	mul.w	$a0, $a0, $s6
	div.wu	$a0, $a0, $s0
	add.d	$s1, $s1, $a0
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ori	$a4, $zero, 32
	b	.LBB13_122
.LBB13_117:                             #   in Loop: Header=BB13_122 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB13_118:                             #   in Loop: Header=BB13_122 Depth=3
	addi.w	$a1, $zero, -1
	ori	$t7, $zero, 16
	ori	$a4, $zero, 32
	lu12i.w	$t8, 4
	bge	$a1, $a0, .LBB13_322
# %bb.119:                              #   in Loop: Header=BB13_122 Depth=3
	ld.d	$s5, $fp, 48
	st.d	$s5, $fp, 56
	add.d	$ra, $s5, $a0
	st.d	$ra, $fp, 64
.LBB13_120:                             #   in Loop: Header=BB13_122 Depth=3
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t7, $s0
	sll.w	$a0, $a0, $a1
	or	$s7, $a0, $s7
	addi.d	$s8, $s8, 16
	addi.d	$s5, $s5, 2
.LBB13_121:                             #   in Loop: Header=BB13_122 Depth=3
	slli.d	$s1, $s1, 1
	slli.d	$a0, $s2, 1
	addi.d	$s2, $a0, 1
	bstrpick.d	$a0, $s7, 31, 31
	slli.d	$a1, $s3, 1
	or	$a0, $a1, $a0
	bstrpick.d	$s3, $a0, 15, 0
	slli.d	$s7, $s7, 1
	addi.d	$s8, $s8, -1
.LBB13_122:                             #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xor	$a0, $s1, $s2
	bstrpick.d	$a0, $a0, 15, 15
	beqz	$a0, .LBB13_126
# %bb.123:                              #   in Loop: Header=BB13_122 Depth=3
	bstrpick.d	$a0, $s2, 15, 0
	and	$a0, $a0, $t8
	bnez	$a0, .LBB13_130
# %bb.124:                              #   in Loop: Header=BB13_122 Depth=3
	bstrpick.d	$a0, $s1, 15, 0
	and	$a0, $a0, $t8
	beqz	$a0, .LBB13_130
# %bb.125:                              #   in Loop: Header=BB13_122 Depth=3
	xor	$s3, $s3, $t8
	bstrpick.d	$s1, $s1, 13, 0
	or	$s2, $s2, $t8
.LBB13_126:                             #   in Loop: Header=BB13_122 Depth=3
	andi	$s0, $s8, 255
	bltu	$t7, $s0, .LBB13_121
# %bb.127:                              #   in Loop: Header=BB13_122 Depth=3
	bltu	$s5, $ra, .LBB13_120
# %bb.128:                              #   in Loop: Header=BB13_122 Depth=3
	ldptr.d	$a3, $fp, 2128
	ld.d	$a1, $fp, 48
	ld.w	$a2, $fp, 92
	beqz	$a3, .LBB13_117
# %bb.129:                              #   in Loop: Header=BB13_122 Depth=3
	ldptr.d	$a0, $fp, 2120
	jirl	$ra, $a3, 0
	b	.LBB13_118
.LBB13_130:                             #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.bu	$s4, $a0, $a1
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	move	$s0, $zero
	bnez	$s4, .LBB13_136
	b	.LBB13_245
.LBB13_131:                             #   in Loop: Header=BB13_136 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB13_132:                             #   in Loop: Header=BB13_136 Depth=3
	addi.w	$a1, $zero, -1
	ori	$t7, $zero, 16
	ori	$a4, $zero, 32
	lu12i.w	$t8, 4
	bge	$a1, $a0, .LBB13_322
# %bb.133:                              #   in Loop: Header=BB13_136 Depth=3
	ld.d	$s5, $fp, 48
	st.d	$s5, $fp, 56
	add.d	$ra, $s5, $a0
	st.d	$ra, $fp, 64
.LBB13_134:                             #   in Loop: Header=BB13_136 Depth=3
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t7, $s6
	sll.w	$a0, $a0, $a1
	or	$s7, $a0, $s7
	addi.d	$s8, $s8, 16
	addi.d	$s5, $s5, 2
.LBB13_135:                             #   in Loop: Header=BB13_136 Depth=3
	andi	$a0, $s4, 255
	andi	$a1, $s8, 255
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	sll.w	$a1, $s0, $a0
	sub.d	$a2, $a4, $a0
	srl.w	$a2, $s7, $a2
	or	$s0, $a2, $a1
	sll.w	$s7, $s7, $a0
	sub.d	$s4, $s4, $a0
	andi	$a1, $s4, 255
	sub.d	$s8, $s8, $a0
	beqz	$a1, .LBB13_244
.LBB13_136:                             # %.lr.ph1510
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$s6, $s8, 255
	bltu	$t7, $s6, .LBB13_135
# %bb.137:                              #   in Loop: Header=BB13_136 Depth=3
	bltu	$s5, $ra, .LBB13_134
# %bb.138:                              #   in Loop: Header=BB13_136 Depth=3
	ldptr.d	$a3, $fp, 2128
	ld.d	$a1, $fp, 48
	ld.w	$a2, $fp, 92
	beqz	$a3, .LBB13_131
# %bb.139:                              #   in Loop: Header=BB13_136 Depth=3
	ldptr.d	$a0, $fp, 2120
	jirl	$ra, $a3, 0
	b	.LBB13_132
.LBB13_140:                             # %vector.ph2007
                                        #   in Loop: Header=BB13_25 Depth=2
	ori	$a3, $zero, 1
	slt	$a2, $a3, $a1
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 30, 3
	slli.d	$a3, $a3, 3
	sub.d	$a1, $a1, $a3
	addi.d	$a4, $a4, -14
	move	$a5, $a3
.LBB13_141:                             # %vector.body2010
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a6, $a4, 12
	ld.h	$a7, $a4, 8
	ld.h	$t0, $a4, 4
	ld.h	$t1, $a4, 0
	ld.h	$t2, $a4, -4
	ld.h	$t3, $a4, -8
	ld.h	$t4, $a4, -12
	ld.h	$t5, $a4, -16
	vinsgr2vr.h	$vr0, $a6, 0
	vinsgr2vr.h	$vr0, $a7, 1
	vinsgr2vr.h	$vr0, $t0, 2
	vinsgr2vr.h	$vr0, $t1, 3
	vinsgr2vr.h	$vr0, $t2, 4
	vinsgr2vr.h	$vr0, $t3, 5
	vinsgr2vr.h	$vr0, $t4, 6
	vinsgr2vr.h	$vr0, $t5, 7
	vaddi.hu	$vr0, $vr0, 8
	vstelm.h	$vr0, $a4, 12, 0
	vstelm.h	$vr0, $a4, 8, 1
	vstelm.h	$vr0, $a4, 4, 2
	vstelm.h	$vr0, $a4, 0, 3
	vstelm.h	$vr0, $a4, -4, 4
	vstelm.h	$vr0, $a4, -8, 5
	vstelm.h	$vr0, $a4, -12, 6
	vstelm.h	$vr0, $a4, -16, 7
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, -32
	bnez	$a5, .LBB13_141
# %bb.142:                              # %middle.block2014
                                        #   in Loop: Header=BB13_25 Depth=2
	ori	$a4, $zero, 1
	beq	$a2, $a3, .LBB13_145
.LBB13_143:                             # %scalar.ph2005.preheader
                                        #   in Loop: Header=BB13_25 Depth=2
	addi.d	$a2, $a1, 1
	alsl.d	$a1, $a1, $a0, 2
	addi.d	$a1, $a1, -2
.LBB13_144:                             # %scalar.ph2005
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a3, $a1, 0
	addi.d	$a3, $a3, 8
	st.h	$a3, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, -4
	blt	$a4, $a2, .LBB13_144
.LBB13_145:                             # %.loopexit2070
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.hu	$a0, $a0, 2
	ori	$a1, $zero, 3801
	bltu	$a0, $a1, .LBB13_147
# %bb.146:                              #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	move	$s0, $s2
	move	$s2, $ra
	move	$s4, $t6
	pcaddu18i	$ra, %call36(qtm_update_model)
	jirl	$ra, $ra, 0
	move	$t6, $s4
	move	$ra, $s2
	move	$s2, $s0
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	lu12i.w	$t8, 4
	ori	$t7, $zero, 16
.LBB13_147:                             # %.preheader2081
                                        #   in Loop: Header=BB13_25 Depth=2
	addi.d	$a0, $t6, 1
	mul.w	$a1, $a0, $s2
	div.wu	$a1, $a1, $s0
	add.d	$a1, $s1, $a1
	addi.d	$s2, $a1, -1
	mul.w	$a0, $a0, $s6
	div.wu	$a0, $a0, $s0
	add.d	$s1, $s1, $a0
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ori	$a4, $zero, 32
	b	.LBB13_150
.LBB13_148:                             #   in Loop: Header=BB13_150 Depth=3
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t7, $s0
	sll.w	$a0, $a0, $a1
	or	$s7, $a0, $s7
	addi.d	$s8, $s8, 16
	addi.d	$s5, $s5, 2
.LBB13_149:                             #   in Loop: Header=BB13_150 Depth=3
	slli.d	$s1, $s1, 1
	slli.d	$a0, $s2, 1
	addi.d	$s2, $a0, 1
	bstrpick.d	$a0, $s7, 31, 31
	slli.d	$a1, $s3, 1
	or	$a0, $a1, $a0
	bstrpick.d	$s3, $a0, 15, 0
	slli.d	$s7, $s7, 1
	addi.d	$s8, $s8, -1
.LBB13_150:                             #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xor	$a0, $s1, $s2
	bstrpick.d	$a0, $a0, 15, 15
	beqz	$a0, .LBB13_154
# %bb.151:                              #   in Loop: Header=BB13_150 Depth=3
	bstrpick.d	$a0, $s2, 15, 0
	and	$a0, $a0, $t8
	bnez	$a0, .LBB13_161
# %bb.152:                              #   in Loop: Header=BB13_150 Depth=3
	bstrpick.d	$a0, $s1, 15, 0
	and	$a0, $a0, $t8
	beqz	$a0, .LBB13_161
# %bb.153:                              #   in Loop: Header=BB13_150 Depth=3
	xor	$s3, $s3, $t8
	bstrpick.d	$s1, $s1, 13, 0
	or	$s2, $s2, $t8
.LBB13_154:                             #   in Loop: Header=BB13_150 Depth=3
	andi	$s0, $s8, 255
	bltu	$t7, $s0, .LBB13_149
# %bb.155:                              #   in Loop: Header=BB13_150 Depth=3
	bltu	$s5, $ra, .LBB13_148
# %bb.156:                              #   in Loop: Header=BB13_150 Depth=3
	ldptr.d	$a3, $fp, 2128
	ld.d	$a1, $fp, 48
	ld.w	$a2, $fp, 92
	beqz	$a3, .LBB13_158
# %bb.157:                              #   in Loop: Header=BB13_150 Depth=3
	ldptr.d	$a0, $fp, 2120
	jirl	$ra, $a3, 0
	b	.LBB13_159
.LBB13_158:                             #   in Loop: Header=BB13_150 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB13_159:                             #   in Loop: Header=BB13_150 Depth=3
	addi.w	$a1, $zero, -1
	ori	$t7, $zero, 16
	ori	$a4, $zero, 32
	lu12i.w	$t8, 4
	bge	$a1, $a0, .LBB13_322
# %bb.160:                              #   in Loop: Header=BB13_150 Depth=3
	ld.d	$s5, $fp, 48
	st.d	$s5, $fp, 56
	add.d	$ra, $s5, $a0
	st.d	$ra, $fp, 64
	b	.LBB13_148
.LBB13_161:                             #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.bu	$s4, $a0, $a1
	ori	$a0, $zero, 3
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	move	$s0, $zero
	bnez	$s4, .LBB13_164
	b	.LBB13_245
.LBB13_162:                             #   in Loop: Header=BB13_164 Depth=3
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t7, $s6
	sll.w	$a0, $a0, $a1
	or	$s7, $a0, $s7
	addi.d	$s8, $s8, 16
	addi.d	$s5, $s5, 2
.LBB13_163:                             #   in Loop: Header=BB13_164 Depth=3
	andi	$a0, $s4, 255
	andi	$a1, $s8, 255
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	sll.w	$a1, $s0, $a0
	sub.d	$a2, $a4, $a0
	srl.w	$a2, $s7, $a2
	or	$s0, $a2, $a1
	sll.w	$s7, $s7, $a0
	sub.d	$s4, $s4, $a0
	andi	$a1, $s4, 255
	sub.d	$s8, $s8, $a0
	beqz	$a1, .LBB13_244
.LBB13_164:                             # %.lr.ph1532
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$s6, $s8, 255
	bltu	$t7, $s6, .LBB13_163
# %bb.165:                              #   in Loop: Header=BB13_164 Depth=3
	bltu	$s5, $ra, .LBB13_162
# %bb.166:                              #   in Loop: Header=BB13_164 Depth=3
	ldptr.d	$a3, $fp, 2128
	ld.d	$a1, $fp, 48
	ld.w	$a2, $fp, 92
	beqz	$a3, .LBB13_168
# %bb.167:                              #   in Loop: Header=BB13_164 Depth=3
	ldptr.d	$a0, $fp, 2120
	jirl	$ra, $a3, 0
	b	.LBB13_169
.LBB13_168:                             #   in Loop: Header=BB13_164 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB13_169:                             #   in Loop: Header=BB13_164 Depth=3
	addi.w	$a1, $zero, -1
	ori	$t7, $zero, 16
	ori	$a4, $zero, 32
	lu12i.w	$t8, 4
	bge	$a1, $a0, .LBB13_322
# %bb.170:                              #   in Loop: Header=BB13_164 Depth=3
	ld.d	$s5, $fp, 48
	st.d	$s5, $fp, 56
	add.d	$ra, $s5, $a0
	st.d	$ra, $fp, 64
	b	.LBB13_162
.LBB13_171:                             # %vector.ph2046
                                        #   in Loop: Header=BB13_25 Depth=2
	ori	$a3, $zero, 1
	slt	$a2, $a3, $a1
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 30, 3
	slli.d	$a3, $a3, 3
	sub.d	$a1, $a1, $a3
	addi.d	$a4, $a4, -14
	move	$a5, $a3
.LBB13_172:                             # %vector.body2049
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a6, $a4, 12
	ld.h	$a7, $a4, 8
	ld.h	$t0, $a4, 4
	ld.h	$t1, $a4, 0
	ld.h	$t2, $a4, -4
	ld.h	$t3, $a4, -8
	ld.h	$t4, $a4, -12
	ld.h	$t5, $a4, -16
	vinsgr2vr.h	$vr0, $a6, 0
	vinsgr2vr.h	$vr0, $a7, 1
	vinsgr2vr.h	$vr0, $t0, 2
	vinsgr2vr.h	$vr0, $t1, 3
	vinsgr2vr.h	$vr0, $t2, 4
	vinsgr2vr.h	$vr0, $t3, 5
	vinsgr2vr.h	$vr0, $t4, 6
	vinsgr2vr.h	$vr0, $t5, 7
	vaddi.hu	$vr0, $vr0, 8
	vstelm.h	$vr0, $a4, 12, 0
	vstelm.h	$vr0, $a4, 8, 1
	vstelm.h	$vr0, $a4, 4, 2
	vstelm.h	$vr0, $a4, 0, 3
	vstelm.h	$vr0, $a4, -4, 4
	vstelm.h	$vr0, $a4, -8, 5
	vstelm.h	$vr0, $a4, -12, 6
	vstelm.h	$vr0, $a4, -16, 7
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, -32
	bnez	$a5, .LBB13_172
# %bb.173:                              # %middle.block2053
                                        #   in Loop: Header=BB13_25 Depth=2
	ori	$a4, $zero, 1
	beq	$a2, $a3, .LBB13_176
.LBB13_174:                             # %scalar.ph2044.preheader
                                        #   in Loop: Header=BB13_25 Depth=2
	addi.d	$a2, $a1, 1
	alsl.d	$a1, $a1, $a0, 2
	addi.d	$a1, $a1, -2
.LBB13_175:                             # %scalar.ph2044
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a3, $a1, 0
	addi.d	$a3, $a3, 8
	st.h	$a3, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, -4
	blt	$a4, $a2, .LBB13_175
.LBB13_176:                             # %.loopexit2073
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.hu	$a0, $a0, 2
	ori	$a1, $zero, 3801
	bltu	$a0, $a1, .LBB13_178
# %bb.177:                              #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	move	$s0, $s4
	move	$s4, $s2
	move	$s2, $ra
	pcaddu18i	$ra, %call36(qtm_update_model)
	jirl	$ra, $ra, 0
	move	$ra, $s2
	move	$s2, $s4
	move	$s4, $s0
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	lu12i.w	$t8, 4
	ori	$t7, $zero, 16
.LBB13_178:                             # %.preheader2086
                                        #   in Loop: Header=BB13_25 Depth=2
	addi.d	$a0, $s6, 1
	mul.w	$a1, $a0, $s4
	div.wu	$a1, $a1, $s0
	add.d	$a1, $s1, $a1
	addi.d	$s4, $a1, -1
	mul.w	$a0, $a0, $s2
	div.wu	$a0, $a0, $s0
	add.d	$s1, $s1, $a0
	ori	$a3, $zero, 32
	b	.LBB13_184
.LBB13_179:                             #   in Loop: Header=BB13_184 Depth=3
	ldptr.d	$a0, $fp, 2120
	jirl	$ra, $a3, 0
.LBB13_180:                             #   in Loop: Header=BB13_184 Depth=3
	addi.w	$a1, $zero, -1
	ori	$t7, $zero, 16
	ori	$a3, $zero, 32
	lu12i.w	$t8, 4
	bge	$a1, $a0, .LBB13_322
# %bb.181:                              #   in Loop: Header=BB13_184 Depth=3
	ld.d	$s5, $fp, 48
	st.d	$s5, $fp, 56
	add.d	$ra, $s5, $a0
	st.d	$ra, $fp, 64
.LBB13_182:                             #   in Loop: Header=BB13_184 Depth=3
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t7, $s0
	sll.w	$a0, $a0, $a1
	or	$s7, $a0, $s7
	addi.d	$s8, $s8, 16
	addi.d	$s5, $s5, 2
.LBB13_183:                             #   in Loop: Header=BB13_184 Depth=3
	slli.d	$s1, $s1, 1
	slli.d	$a0, $s4, 1
	addi.d	$s4, $a0, 1
	bstrpick.d	$a0, $s7, 31, 31
	slli.d	$a1, $s3, 1
	or	$a0, $a1, $a0
	bstrpick.d	$s3, $a0, 15, 0
	slli.d	$s7, $s7, 1
	addi.d	$s8, $s8, -1
.LBB13_184:                             #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xor	$a0, $s1, $s4
	bstrpick.d	$a0, $a0, 15, 15
	beqz	$a0, .LBB13_188
# %bb.185:                              #   in Loop: Header=BB13_184 Depth=3
	bstrpick.d	$s0, $s4, 15, 0
	and	$a0, $s0, $t8
	bstrpick.d	$s2, $s1, 15, 0
	bnez	$a0, .LBB13_192
# %bb.186:                              #   in Loop: Header=BB13_184 Depth=3
	and	$a0, $s2, $t8
	beqz	$a0, .LBB13_192
# %bb.187:                              #   in Loop: Header=BB13_184 Depth=3
	xor	$s3, $s3, $t8
	bstrpick.d	$s1, $s1, 13, 0
	or	$s4, $s4, $t8
.LBB13_188:                             #   in Loop: Header=BB13_184 Depth=3
	andi	$s0, $s8, 255
	bltu	$t7, $s0, .LBB13_183
# %bb.189:                              #   in Loop: Header=BB13_184 Depth=3
	bltu	$s5, $ra, .LBB13_182
# %bb.190:                              #   in Loop: Header=BB13_184 Depth=3
	ldptr.d	$a3, $fp, 2128
	ld.d	$a1, $fp, 48
	ld.w	$a2, $fp, 92
	bnez	$a3, .LBB13_179
# %bb.191:                              #   in Loop: Header=BB13_184 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	b	.LBB13_180
.LBB13_192:                             #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.bu	$s4, $a0, $a1
	beqz	$s4, .LBB13_204
# %bb.193:                              # %.lr.ph1466.preheader
                                        #   in Loop: Header=BB13_25 Depth=2
	move	$a4, $zero
	b	.LBB13_196
.LBB13_194:                             #   in Loop: Header=BB13_196 Depth=3
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t7, $s6
	sll.w	$a0, $a0, $a1
	or	$s7, $a0, $s7
	addi.d	$s8, $s8, 16
	addi.d	$s5, $s5, 2
.LBB13_195:                             #   in Loop: Header=BB13_196 Depth=3
	andi	$a0, $s4, 255
	andi	$a1, $s8, 255
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	sll.w	$a1, $a4, $a0
	sub.d	$a2, $a3, $a0
	srl.w	$a2, $s7, $a2
	or	$a4, $a2, $a1
	sll.w	$s7, $s7, $a0
	sub.d	$s4, $s4, $a0
	andi	$a1, $s4, 255
	sub.d	$s8, $s8, $a0
	beqz	$a1, .LBB13_203
.LBB13_196:                             # %.lr.ph1466
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$s6, $s8, 255
	bltu	$t7, $s6, .LBB13_195
# %bb.197:                              #   in Loop: Header=BB13_196 Depth=3
	bltu	$s5, $ra, .LBB13_194
# %bb.198:                              #   in Loop: Header=BB13_196 Depth=3
	move	$s5, $a4
	ldptr.d	$a3, $fp, 2128
	ld.d	$a1, $fp, 48
	ld.w	$a2, $fp, 92
	beqz	$a3, .LBB13_200
# %bb.199:                              #   in Loop: Header=BB13_196 Depth=3
	ldptr.d	$a0, $fp, 2120
	jirl	$ra, $a3, 0
	b	.LBB13_201
.LBB13_200:                             #   in Loop: Header=BB13_196 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB13_201:                             #   in Loop: Header=BB13_196 Depth=3
	addi.w	$a1, $zero, -1
	ori	$t7, $zero, 16
	ori	$a3, $zero, 32
	lu12i.w	$t8, 4
	bge	$a1, $a0, .LBB13_322
# %bb.202:                              #   in Loop: Header=BB13_196 Depth=3
	move	$a4, $s5
	ld.d	$s5, $fp, 48
	st.d	$s5, $fp, 56
	add.d	$ra, $s5, $a0
	st.d	$ra, $fp, 64
	b	.LBB13_194
.LBB13_203:                             # %._crit_edge1467.loopexit
                                        #   in Loop: Header=BB13_25 Depth=2
	addi.d	$t6, $a4, 5
	b	.LBB13_205
.LBB13_204:                             #   in Loop: Header=BB13_25 Depth=2
	ori	$t6, $zero, 5
.LBB13_205:                             # %._crit_edge1467
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $fp, 472
	ld.w	$a2, $fp, 468
	ld.hu	$s4, $a0, 2
	sub.w	$s0, $s0, $s2
	ori	$a1, $zero, 1
	ori	$a3, $zero, 2
	blt	$a2, $a3, .LBB13_210
# %bb.206:                              # %.lr.ph1475
                                        #   in Loop: Header=BB13_25 Depth=2
	sub.d	$a1, $s3, $s2
	addi.d	$a1, $a1, 1
	mul.d	$a1, $a1, $s4
	addi.w	$a1, $a1, -1
	bstrpick.d	$a3, $s0, 15, 0
	addi.d	$a3, $a3, 1
	div.wu	$a5, $a1, $a3
	addi.d	$a3, $a0, 6
	addi.d	$a4, $a2, -1
	ori	$a1, $zero, 1
	bstrpick.d	$a5, $a5, 15, 0
.LBB13_207:                             #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$a6, $a3, 0
	bgeu	$a5, $a6, .LBB13_210
# %bb.208:                              #   in Loop: Header=BB13_207 Depth=3
	addi.w	$a1, $a1, 1
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	bnez	$a4, .LBB13_207
# %bb.209:                              #   in Loop: Header=BB13_25 Depth=2
	move	$a1, $a2
.LBB13_210:                             # %._crit_edge1476
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	ldx.bu	$s2, $a2, $a3
	alsl.d	$a4, $a1, $a0, 2
	ld.hu	$a2, $a4, -4
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	ld.hu	$s6, $a4, -2
	ld.hu	$a2, $a4, 2
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ori	$a2, $zero, 8
	bge	$a1, $a2, .LBB13_212
# %bb.211:                              #   in Loop: Header=BB13_25 Depth=2
	ori	$a4, $zero, 1
	b	.LBB13_215
.LBB13_212:                             # %vector.ph2033
                                        #   in Loop: Header=BB13_25 Depth=2
	ori	$a3, $zero, 1
	slt	$a2, $a3, $a1
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	bstrpick.d	$a3, $a2, 30, 3
	slli.d	$a3, $a3, 3
	sub.d	$a1, $a1, $a3
	addi.d	$a4, $a4, -14
	move	$a5, $a3
.LBB13_213:                             # %vector.body2036
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a6, $a4, 12
	ld.h	$a7, $a4, 8
	ld.h	$t0, $a4, 4
	ld.h	$t1, $a4, 0
	ld.h	$t2, $a4, -4
	ld.h	$t3, $a4, -8
	ld.h	$t4, $a4, -12
	ld.h	$t5, $a4, -16
	vinsgr2vr.h	$vr0, $a6, 0
	vinsgr2vr.h	$vr0, $a7, 1
	vinsgr2vr.h	$vr0, $t0, 2
	vinsgr2vr.h	$vr0, $t1, 3
	vinsgr2vr.h	$vr0, $t2, 4
	vinsgr2vr.h	$vr0, $t3, 5
	vinsgr2vr.h	$vr0, $t4, 6
	vinsgr2vr.h	$vr0, $t5, 7
	vaddi.hu	$vr0, $vr0, 8
	vstelm.h	$vr0, $a4, 12, 0
	vstelm.h	$vr0, $a4, 8, 1
	vstelm.h	$vr0, $a4, 4, 2
	vstelm.h	$vr0, $a4, 0, 3
	vstelm.h	$vr0, $a4, -4, 4
	vstelm.h	$vr0, $a4, -8, 5
	vstelm.h	$vr0, $a4, -12, 6
	vstelm.h	$vr0, $a4, -16, 7
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, -32
	bnez	$a5, .LBB13_213
# %bb.214:                              # %middle.block2040
                                        #   in Loop: Header=BB13_25 Depth=2
	ori	$a4, $zero, 1
	beq	$a2, $a3, .LBB13_217
.LBB13_215:                             # %scalar.ph2031.preheader
                                        #   in Loop: Header=BB13_25 Depth=2
	addi.d	$a2, $a1, 1
	alsl.d	$a1, $a1, $a0, 2
	addi.d	$a1, $a1, -2
.LBB13_216:                             # %scalar.ph2031
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a3, $a1, 0
	addi.d	$a3, $a3, 8
	st.h	$a3, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, -4
	blt	$a4, $a2, .LBB13_216
.LBB13_217:                             # %.loopexit2072
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.hu	$a0, $a0, 2
	ori	$a1, $zero, 3801
	bltu	$a0, $a1, .LBB13_219
# %bb.218:                              #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$s0, $sp, 80                    # 8-byte Folded Spill
	move	$s0, $ra
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	move	$s6, $s2
	move	$s2, $s4
	move	$s4, $t6
	pcaddu18i	$ra, %call36(qtm_update_model)
	jirl	$ra, $ra, 0
	move	$t6, $s4
	move	$s4, $s2
	move	$s2, $s6
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	move	$ra, $s0
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	lu12i.w	$t8, 4
	ori	$t7, $zero, 16
.LBB13_219:                             # %.preheader2085
                                        #   in Loop: Header=BB13_25 Depth=2
	add.w	$a0, $t6, $s2
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a0, $s0, 1
	mul.w	$a1, $a0, $s6
	div.wu	$a1, $a1, $s4
	add.d	$a1, $s1, $a1
	addi.d	$s2, $a1, -1
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	div.wu	$a0, $a0, $s4
	add.d	$s1, $s1, $a0
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ori	$a4, $zero, 32
	b	.LBB13_225
.LBB13_220:                             #   in Loop: Header=BB13_225 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB13_221:                             #   in Loop: Header=BB13_225 Depth=3
	addi.w	$a1, $zero, -1
	ori	$t7, $zero, 16
	ori	$a4, $zero, 32
	lu12i.w	$t8, 4
	bge	$a1, $a0, .LBB13_322
# %bb.222:                              #   in Loop: Header=BB13_225 Depth=3
	ld.d	$s5, $fp, 48
	st.d	$s5, $fp, 56
	add.d	$ra, $s5, $a0
	st.d	$ra, $fp, 64
.LBB13_223:                             #   in Loop: Header=BB13_225 Depth=3
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t7, $s0
	sll.w	$a0, $a0, $a1
	or	$s7, $a0, $s7
	addi.d	$s8, $s8, 16
	addi.d	$s5, $s5, 2
.LBB13_224:                             #   in Loop: Header=BB13_225 Depth=3
	slli.d	$s1, $s1, 1
	slli.d	$a0, $s2, 1
	addi.d	$s2, $a0, 1
	bstrpick.d	$a0, $s7, 31, 31
	slli.d	$a1, $s3, 1
	or	$a0, $a1, $a0
	bstrpick.d	$s3, $a0, 15, 0
	slli.d	$s7, $s7, 1
	addi.d	$s8, $s8, -1
.LBB13_225:                             #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xor	$a0, $s1, $s2
	bstrpick.d	$a0, $a0, 15, 15
	beqz	$a0, .LBB13_229
# %bb.226:                              #   in Loop: Header=BB13_225 Depth=3
	bstrpick.d	$a0, $s2, 15, 0
	and	$a0, $a0, $t8
	bnez	$a0, .LBB13_233
# %bb.227:                              #   in Loop: Header=BB13_225 Depth=3
	bstrpick.d	$a0, $s1, 15, 0
	and	$a0, $a0, $t8
	beqz	$a0, .LBB13_233
# %bb.228:                              #   in Loop: Header=BB13_225 Depth=3
	xor	$s3, $s3, $t8
	bstrpick.d	$s1, $s1, 13, 0
	or	$s2, $s2, $t8
.LBB13_229:                             #   in Loop: Header=BB13_225 Depth=3
	andi	$s0, $s8, 255
	bltu	$t7, $s0, .LBB13_224
# %bb.230:                              #   in Loop: Header=BB13_225 Depth=3
	bltu	$s5, $ra, .LBB13_223
# %bb.231:                              #   in Loop: Header=BB13_225 Depth=3
	ldptr.d	$a3, $fp, 2128
	ld.d	$a1, $fp, 48
	ld.w	$a2, $fp, 92
	beqz	$a3, .LBB13_220
# %bb.232:                              #   in Loop: Header=BB13_225 Depth=3
	ldptr.d	$a0, $fp, 2120
	jirl	$ra, $a3, 0
	b	.LBB13_221
.LBB13_233:                             #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.bu	$s4, $a0, $a1
	beqz	$s4, .LBB13_261
# %bb.234:                              # %.lr.ph1488.preheader
                                        #   in Loop: Header=BB13_25 Depth=2
	move	$s0, $zero
	b	.LBB13_240
.LBB13_235:                             #   in Loop: Header=BB13_240 Depth=3
	ldptr.d	$a0, $fp, 2120
	jirl	$ra, $a3, 0
.LBB13_236:                             #   in Loop: Header=BB13_240 Depth=3
	addi.w	$a1, $zero, -1
	ori	$t7, $zero, 16
	ori	$a4, $zero, 32
	lu12i.w	$t8, 4
	bge	$a1, $a0, .LBB13_322
# %bb.237:                              #   in Loop: Header=BB13_240 Depth=3
	ld.d	$s5, $fp, 48
	st.d	$s5, $fp, 56
	add.d	$ra, $s5, $a0
	st.d	$ra, $fp, 64
.LBB13_238:                             #   in Loop: Header=BB13_240 Depth=3
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t7, $s6
	sll.w	$a0, $a0, $a1
	or	$s7, $a0, $s7
	addi.d	$s8, $s8, 16
	addi.d	$s5, $s5, 2
.LBB13_239:                             #   in Loop: Header=BB13_240 Depth=3
	andi	$a0, $s4, 255
	andi	$a1, $s8, 255
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	sll.w	$a1, $s0, $a0
	sub.d	$a2, $a4, $a0
	srl.w	$a2, $s7, $a2
	or	$s0, $a2, $a1
	sll.w	$s7, $s7, $a0
	sub.d	$s4, $s4, $a0
	andi	$a1, $s4, 255
	sub.d	$s8, $s8, $a0
	beqz	$a1, .LBB13_244
.LBB13_240:                             # %.lr.ph1488
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$s6, $s8, 255
	bltu	$t7, $s6, .LBB13_239
# %bb.241:                              #   in Loop: Header=BB13_240 Depth=3
	bltu	$s5, $ra, .LBB13_238
# %bb.242:                              #   in Loop: Header=BB13_240 Depth=3
	ldptr.d	$a3, $fp, 2128
	ld.d	$a1, $fp, 48
	ld.w	$a2, $fp, 92
	bnez	$a3, .LBB13_235
# %bb.243:                              #   in Loop: Header=BB13_240 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	b	.LBB13_236
.LBB13_244:                             #   in Loop: Header=BB13_25 Depth=2
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
.LBB13_245:                             # %._crit_edge1533
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a0, $s0
	addi.w	$a2, $a0, 1
	bstrpick.d	$a3, $s6, 31, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a3
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	bgeu	$s6, $a2, .LBB13_254
# %bb.246:                              #   in Loop: Header=BB13_25 Depth=2
	ld.w	$a1, $fp, 24
	sub.w	$a4, $a2, $s6
	blt	$a1, $a4, .LBB13_327
# %bb.247:                              #   in Loop: Header=BB13_25 Depth=2
	sub.d	$a1, $a1, $a4
	bstrpick.d	$a7, $a1, 31, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	add.d	$a2, $a1, $a7
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bge	$a4, $a1, .LBB13_270
# %bb.248:                              #   in Loop: Header=BB13_25 Depth=2
	sub.w	$a1, $a1, $a4
	ori	$a5, $zero, 1
	blt	$a4, $a5, .LBB13_269
# %bb.249:                              # %.lr.ph1548.preheader
                                        #   in Loop: Header=BB13_25 Depth=2
	ori	$a6, $zero, 32
	bltu	$a4, $a6, .LBB13_266
# %bb.250:                              # %.lr.ph1548.preheader
                                        #   in Loop: Header=BB13_25 Depth=2
	sub.d	$a5, $a3, $a7
	bltu	$a5, $a6, .LBB13_266
# %bb.251:                              # %vector.ph1944
                                        #   in Loop: Header=BB13_25 Depth=2
	bstrpick.d	$a5, $a4, 30, 5
	slli.d	$a6, $a5, 5
	sub.d	$a5, $a4, $a6
	add.d	$a0, $a0, $a6
	add.d	$a2, $a2, $a6
	ld.d	$t0, $sp, 24                    # 8-byte Folded Reload
	add.d	$a7, $t0, $a7
	add.d	$a3, $t0, $a3
	move	$t0, $a6
.LBB13_252:                             # %vector.body1948
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a7, -16
	vld	$vr1, $a7, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$t0, $t0, -32
	addi.d	$a7, $a7, 32
	addi.d	$a3, $a3, 32
	bnez	$t0, .LBB13_252
# %bb.253:                              # %middle.block1955
                                        #   in Loop: Header=BB13_25 Depth=2
	bne	$a6, $a4, .LBB13_267
	b	.LBB13_269
.LBB13_254:                             #   in Loop: Header=BB13_25 Depth=2
	ori	$a1, $zero, 1
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	blt	$a6, $a1, .LBB13_259
# %bb.255:                              # %iter.check1965
                                        #   in Loop: Header=BB13_25 Depth=2
	bstrpick.d	$a4, $a2, 31, 0
	sub.d	$a1, $a0, $a4
	ori	$a5, $zero, 8
	bltu	$a6, $a5, .LBB13_260
# %bb.256:                              # %iter.check1965
                                        #   in Loop: Header=BB13_25 Depth=2
	ori	$a5, $zero, 32
	bltu	$a2, $a5, .LBB13_260
# %bb.257:                              # %vector.main.loop.iter.check1967
                                        #   in Loop: Header=BB13_25 Depth=2
	sub.d	$a2, $zero, $a4
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	bgeu	$a4, $a5, .LBB13_262
# %bb.258:                              #   in Loop: Header=BB13_25 Depth=2
	move	$a5, $zero
	b	.LBB13_284
.LBB13_259:                             #   in Loop: Header=BB13_25 Depth=2
	move	$a0, $a6
	b	.LBB13_295
.LBB13_260:                             #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	b	.LBB13_288
.LBB13_261:                             #   in Loop: Header=BB13_25 Depth=2
	move	$s0, $zero
	b	.LBB13_245
.LBB13_262:                             # %vector.ph1968
                                        #   in Loop: Header=BB13_25 Depth=2
	bstrpick.d	$a4, $a4, 30, 5
	slli.d	$a5, $a4, 5
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	add.d	$a4, $a4, $a3
	move	$a6, $a5
.LBB13_263:                             # %vector.body1971
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a7, $a4, $a2
	vld	$vr0, $a7, -16
	vldx	$vr1, $a4, $a2
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a6, $a6, -32
	addi.d	$a4, $a4, 32
	bnez	$a6, .LBB13_263
# %bb.264:                              # %middle.block1978
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	bne	$a5, $a6, .LBB13_283
# %bb.265:                              #   in Loop: Header=BB13_25 Depth=2
	ori	$a4, $zero, 32
	move	$a0, $a6
	b	.LBB13_295
.LBB13_266:                             #   in Loop: Header=BB13_25 Depth=2
	move	$a5, $a4
.LBB13_267:                             # %.lr.ph1548.preheader2079
                                        #   in Loop: Header=BB13_25 Depth=2
	addi.d	$a3, $a5, 1
	ori	$a5, $zero, 1
.LBB13_268:                             # %.lr.ph1548
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$a4, $a2, 0
	addi.d	$a2, $a2, 1
	st.b	$a4, $a0, 0
	addi.w	$a3, $a3, -1
	addi.d	$a0, $a0, 1
	bltu	$a5, $a3, .LBB13_268
.LBB13_269:                             #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
.LBB13_270:                             # %.loopexit1089
                                        #   in Loop: Header=BB13_25 Depth=2
	ori	$a4, $zero, 32
	ori	$a3, $zero, 1
	blt	$a1, $a3, .LBB13_294
# %bb.271:                              # %iter.check
                                        #   in Loop: Header=BB13_25 Depth=2
	ori	$a3, $zero, 8
	bltu	$a1, $a3, .LBB13_275
# %bb.272:                              # %iter.check
                                        #   in Loop: Header=BB13_25 Depth=2
	sub.d	$a3, $a0, $a2
	bltu	$a3, $a4, .LBB13_275
# %bb.273:                              # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB13_25 Depth=2
	bgeu	$a1, $a4, .LBB13_276
# %bb.274:                              #   in Loop: Header=BB13_25 Depth=2
	move	$a6, $zero
	b	.LBB13_280
.LBB13_275:                             #   in Loop: Header=BB13_25 Depth=2
	move	$a5, $a1
	move	$a3, $a0
	move	$a4, $a2
	b	.LBB13_291
.LBB13_276:                             # %vector.ph1916
                                        #   in Loop: Header=BB13_25 Depth=2
	bstrpick.d	$a3, $a1, 30, 5
	slli.d	$a6, $a3, 5
	addi.d	$a3, $a2, 16
	addi.d	$a4, $a0, 16
	move	$a5, $a6
.LBB13_277:                             # %vector.body1919
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a3, -16
	vld	$vr1, $a3, 0
	vst	$vr0, $a4, -16
	vst	$vr1, $a4, 0
	addi.d	$a5, $a5, -32
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB13_277
# %bb.278:                              # %middle.block1924
                                        #   in Loop: Header=BB13_25 Depth=2
	beq	$a6, $a1, .LBB13_293
# %bb.279:                              # %vec.epilog.iter.check
                                        #   in Loop: Header=BB13_25 Depth=2
	andi	$a3, $a1, 24
	beqz	$a3, .LBB13_290
.LBB13_280:                             # %vec.epilog.ph
                                        #   in Loop: Header=BB13_25 Depth=2
	bstrpick.d	$a4, $a1, 30, 3
	slli.d	$a7, $a4, 3
	sub.d	$a5, $a1, $a7
	alsl.d	$a3, $a4, $a0, 3
	alsl.d	$a4, $a4, $a2, 3
	sub.d	$t0, $a6, $a7
	add.d	$a2, $a2, $a6
	add.d	$a0, $a0, $a6
.LBB13_281:                             # %vec.epilog.vector.body
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a6, $a2, 0
	st.d	$a6, $a0, 0
	addi.d	$t0, $t0, 8
	addi.d	$a2, $a2, 8
	addi.d	$a0, $a0, 8
	bnez	$t0, .LBB13_281
# %bb.282:                              # %vec.epilog.middle.block
                                        #   in Loop: Header=BB13_25 Depth=2
	bne	$a7, $a1, .LBB13_291
	b	.LBB13_293
.LBB13_283:                             # %vec.epilog.iter.check1983
                                        #   in Loop: Header=BB13_25 Depth=2
	andi	$a4, $a6, 24
	beqz	$a4, .LBB13_287
.LBB13_284:                             # %vec.epilog.ph1982
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	bstrpick.d	$a7, $a4, 30, 3
	slli.d	$a6, $a7, 3
	sub.d	$a4, $a4, $a6
	alsl.d	$a0, $a7, $a0, 3
	alsl.d	$a1, $a7, $a1, 3
	sub.d	$a7, $a5, $a6
	add.d	$a3, $a5, $a3
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	add.d	$a3, $a5, $a3
.LBB13_285:                             # %vec.epilog.vector.body1989
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a5, $a3, $a2
	st.d	$a5, $a3, 0
	addi.d	$a7, $a7, 8
	addi.d	$a3, $a3, 8
	bnez	$a7, .LBB13_285
# %bb.286:                              # %vec.epilog.middle.block1995
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	bne	$a6, $a2, .LBB13_288
	b	.LBB13_293
.LBB13_287:                             #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	sub.d	$a4, $a2, $a5
	add.d	$a0, $a0, $a5
	add.d	$a1, $a1, $a5
.LBB13_288:                             # %.lr.ph1543.preheader
                                        #   in Loop: Header=BB13_25 Depth=2
	addi.d	$a2, $a4, 1
	ori	$a5, $zero, 1
.LBB13_289:                             # %.lr.ph1543
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$a3, $a1, 0
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a0, 1
	addi.w	$a2, $a2, -1
	st.b	$a3, $a0, 0
	move	$a0, $a4
	bltu	$a5, $a2, .LBB13_289
	b	.LBB13_293
.LBB13_290:                             #   in Loop: Header=BB13_25 Depth=2
	sub.d	$a5, $a1, $a6
	add.d	$a3, $a0, $a6
	add.d	$a4, $a2, $a6
.LBB13_291:                             # %.lr.ph1554.preheader
                                        #   in Loop: Header=BB13_25 Depth=2
	addi.d	$a0, $a5, 1
	ori	$a5, $zero, 1
.LBB13_292:                             # %.lr.ph1554
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$a1, $a4, 0
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a3, 1
	addi.w	$a0, $a0, -1
	st.b	$a1, $a3, 0
	move	$a3, $a2
	bltu	$a5, $a0, .LBB13_292
.LBB13_293:                             #   in Loop: Header=BB13_25 Depth=2
	ori	$a4, $zero, 32
.LBB13_294:                             # %.loopexit
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
.LBB13_295:                             # %.loopexit
                                        #   in Loop: Header=BB13_25 Depth=2
	add.w	$s6, $a0, $s6
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	bltu	$s6, $a0, .LBB13_25
.LBB13_296:                             # %._crit_edge1572
                                        #   in Loop: Header=BB13_11 Depth=1
	bstrpick.d	$a0, $s6, 31, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	sub.w	$a1, $s6, $a1
	bstrpick.d	$a2, $a1, 31, 15
	st.d	$a0, $fp, 80
	beqz	$a2, .LBB13_309
# %bb.297:                              #   in Loop: Header=BB13_11 Depth=1
	lu12i.w	$a0, 8
	bne	$a1, $a0, .LBB13_326
# %bb.298:                              #   in Loop: Header=BB13_11 Depth=1
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s4, $sp, 144                   # 8-byte Folded Spill
	move	$s4, $zero
	andi	$a0, $s8, 7
	sll.w	$s7, $s7, $a0
	andi	$s8, $s8, 248
	ori	$s0, $zero, 8
	b	.LBB13_301
	.p2align	4, , 16
.LBB13_299:                             #   in Loop: Header=BB13_301 Depth=2
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t7, $s6
	sll.w	$a0, $a0, $a1
	or	$s7, $a0, $s7
	addi.d	$s8, $s8, 16
	addi.d	$s5, $s5, 2
	andi	$s6, $s8, 255
.LBB13_300:                             #   in Loop: Header=BB13_301 Depth=2
	sltu	$a0, $s0, $s6
	masknez	$a1, $s6, $a0
	maskeqz	$a0, $s0, $a0
	or	$a1, $a0, $a1
	sll.w	$a0, $s4, $a1
	sub.d	$a2, $a4, $a1
	srl.w	$a2, $s7, $a2
	or	$a0, $a2, $a0
	sll.w	$s7, $s7, $a1
	sub.d	$a2, $s0, $a1
	andi	$s0, $a2, 255
	sub.d	$s8, $s8, $a1
	move	$s4, $a0
	beqz	$s0, .LBB13_305
.LBB13_301:                             #   Parent Loop BB13_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$s6, $s8, 255
	bltu	$t7, $s6, .LBB13_300
# %bb.302:                              #   in Loop: Header=BB13_301 Depth=2
	bltu	$s5, $ra, .LBB13_299
# %bb.303:                              #   in Loop: Header=BB13_301 Depth=2
	ldptr.d	$a3, $fp, 2128
	ld.d	$a1, $fp, 48
	ld.w	$a2, $fp, 92
	beqz	$a3, .LBB13_306
# %bb.304:                              #   in Loop: Header=BB13_301 Depth=2
	ldptr.d	$a0, $fp, 2120
	jirl	$ra, $a3, 0
	b	.LBB13_307
	.p2align	4, , 16
.LBB13_305:                             #   in Loop: Header=BB13_301 Depth=2
	move	$s4, $zero
	ori	$s0, $zero, 8
	ori	$a1, $zero, 255
	bne	$a0, $a1, .LBB13_301
	b	.LBB13_310
.LBB13_306:                             #   in Loop: Header=BB13_301 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB13_307:                             #   in Loop: Header=BB13_301 Depth=2
	addi.w	$a1, $zero, -1
	ori	$t7, $zero, 16
	ori	$a4, $zero, 32
	lu12i.w	$t8, 4
	bge	$a1, $a0, .LBB13_322
# %bb.308:                              #   in Loop: Header=BB13_301 Depth=2
	ld.d	$s5, $fp, 48
	st.d	$s5, $fp, 56
	add.d	$ra, $s5, $a0
	st.d	$ra, $fp, 64
	b	.LBB13_299
.LBB13_309:                             # %._crit_edge1572._crit_edge
                                        #   in Loop: Header=BB13_11 Depth=1
	ld.d	$a1, $fp, 72
	b	.LBB13_315
.LBB13_310:                             #   in Loop: Header=BB13_11 Depth=1
	ld.w	$a2, $fp, 24
	ld.d	$a0, $fp, 80
	ld.d	$a1, $fp, 72
	st.b	$zero, $fp, 42
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	bne	$s6, $a2, .LBB13_314
# %bb.311:                              #   in Loop: Header=BB13_11 Depth=1
	ld.bu	$a3, $fp, 8
	sub.w	$a2, $a0, $a1
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	beqz	$a3, .LBB13_313
# %bb.312:                              #   in Loop: Header=BB13_11 Depth=1
	ld.w	$a0, $fp, 4
	move	$s0, $ra
	move	$s6, $a2
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a2, $s6
	move	$ra, $s0
	lu12i.w	$t8, 4
	ori	$a4, $zero, 32
	ori	$t7, $zero, 16
	bne	$a0, $s6, .LBB13_322
.LBB13_313:                             #   in Loop: Header=BB13_11 Depth=1
	move	$s6, $zero
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
	sub.d	$s4, $s4, $a2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $fp, 72
	st.d	$a0, $fp, 80
	move	$a1, $a0
	b	.LBB13_315
.LBB13_314:                             #   in Loop: Header=BB13_11 Depth=1
	st.d	$s6, $sp, 176                   # 8-byte Folded Spill
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
.LBB13_315:                             #   in Loop: Header=BB13_11 Depth=1
	sub.d	$a2, $a0, $a1
	blt	$a2, $s4, .LBB13_11
.LBB13_316:                             # %._crit_edge1598
	beqz	$s4, .LBB13_321
# %bb.317:
	ld.bu	$a0, $fp, 8
	addi.w	$s0, $s4, 0
	beqz	$a0, .LBB13_320
# %bb.318:
	move	$s4, $ra
	ld.w	$a0, $fp, 4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB13_322
# %bb.319:                              # %._crit_edge1730
	ld.d	$a1, $fp, 72
	move	$ra, $s4
.LBB13_320:
	add.d	$a0, $a1, $s0
	st.d	$a0, $fp, 72
.LBB13_321:
	move	$a0, $zero
	st.d	$s5, $fp, 56
	st.d	$ra, $fp, 64
	st.w	$s7, $fp, 88
	st.b	$s8, $fp, 96
	st.w	$s6, $fp, 28
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.w	$a1, $fp, 32
	st.h	$s2, $fp, 36
	st.h	$s1, $fp, 38
	st.h	$s3, $fp, 40
	b	.LBB13_325
.LBB13_322:
	addi.w	$a0, $zero, -123
.LBB13_323:
	move	$a1, $a0
	lu32i.d	$a1, 0
	st.w	$a1, $fp, 44
	b	.LBB13_325
.LBB13_324:
	move	$a0, $zero
.LBB13_325:
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.LBB13_326:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	b	.LBB13_328
.LBB13_327:
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
.LBB13_328:
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB13_329:
	addi.w	$a0, $zero, -124
	b	.LBB13_323
.Lfunc_end13:
	.size	qtm_decompress, .Lfunc_end13-qtm_decompress
                                        # -- End function
	.p2align	5                               # -- Begin function qtm_update_model
	.type	qtm_update_model,@function
qtm_update_model:                       # @qtm_update_model
# %bb.0:
	addi.d	$sp, $sp, -16
	ld.w	$a1, $a0, 0
	addi.w	$a1, $a1, -1
	st.w	$a1, $a0, 0
	beqz	$a1, .LBB14_4
# %bb.1:
	ld.w	$a2, $a0, 4
	ori	$a1, $zero, 1
	blt	$a2, $a1, .LBB14_24
# %bb.2:                                # %.lr.ph
	ld.d	$a0, $a0, 8
	alsl.d	$a4, $a2, $a0, 2
	ld.hu	$a3, $a4, 2
	addi.d	$a0, $a2, 1
	addi.d	$a2, $a4, -2
	.p2align	4, , 16
.LBB14_3:                               # =>This Inner Loop Header: Depth=1
	ld.hu	$a4, $a2, 0
	srli.d	$a4, $a4, 1
	bstrpick.d	$a5, $a3, 15, 0
	sltu	$a5, $a5, $a4
	addi.d	$a3, $a3, 1
	masknez	$a3, $a3, $a5
	maskeqz	$a4, $a4, $a5
	or	$a3, $a4, $a3
	st.h	$a3, $a2, 0
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, -4
	bltu	$a1, $a0, .LBB14_3
	b	.LBB14_24
.LBB14_4:
	ld.w	$a1, $a0, 4
	ori	$a2, $zero, 50
	ori	$a3, $zero, 1
	st.w	$a2, $a0, 0
	blt	$a1, $a3, .LBB14_24
# %bb.5:                                # %.lr.ph63
	ld.d	$a2, $a0, 8
	ld.hu	$a3, $a2, 2
	ori	$a4, $zero, 8
	bgeu	$a1, $a4, .LBB14_7
# %bb.6:
	move	$a4, $zero
	b	.LBB14_10
.LBB14_7:                               # %vector.ph
	bstrpick.d	$a4, $a1, 30, 3
	slli.d	$a4, $a4, 3
	vinsgr2vr.h	$vr0, $a3, 0
	vreplvei.h	$vr0, $vr0, 0
	addi.d	$a5, $a2, 18
	move	$a6, $a4
	.p2align	4, , 16
.LBB14_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$a7, $a5, -12
	ld.h	$t0, $a5, -8
	ld.h	$t1, $a5, -4
	ld.h	$t2, $a5, 0
	ld.h	$t3, $a5, 12
	ld.h	$t4, $a5, 8
	ld.h	$t5, $a5, 4
	ld.hu	$a3, $a5, 16
	st.h	$t3, $sp, 12
	st.h	$t4, $sp, 10
	st.h	$t5, $sp, 8
	st.h	$t2, $sp, 6
	st.h	$t1, $sp, 4
	st.h	$t0, $sp, 2
	st.h	$a7, $sp, 0
	vld	$vr1, $sp, 0
	vbsrl.v	$vr0, $vr0, 14
	vbsll.v	$vr2, $vr1, 2
	vinsgr2vr.h	$vr1, $a3, 7
	vor.v	$vr0, $vr2, $vr0
	vsub.h	$vr0, $vr0, $vr1
	vaddi.hu	$vr0, $vr0, 1
	vsrli.h	$vr0, $vr0, 1
	vstelm.h	$vr0, $a5, -16, 0
	vstelm.h	$vr0, $a5, -12, 1
	vstelm.h	$vr0, $a5, -8, 2
	vstelm.h	$vr0, $a5, -4, 3
	vstelm.h	$vr0, $a5, 0, 4
	vstelm.h	$vr0, $a5, 4, 5
	vstelm.h	$vr0, $a5, 8, 6
	vstelm.h	$vr0, $a5, 12, 7
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 32
	vori.b	$vr0, $vr1, 0
	bnez	$a6, .LBB14_8
# %bb.9:                                # %middle.block
	beq	$a4, $a1, .LBB14_12
.LBB14_10:                              # %scalar.ph.preheader
	alsl.d	$a2, $a4, $a2, 2
	addi.d	$a2, $a2, 6
	sub.d	$a4, $a1, $a4
	.p2align	4, , 16
.LBB14_11:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a5, $a2, 0
	sub.d	$a3, $a3, $a5
	addi.d	$a3, $a3, 1
	bstrpick.d	$a3, $a3, 15, 1
	st.h	$a3, $a2, -4
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 4
	move	$a3, $a5
	bnez	$a4, .LBB14_11
.LBB14_12:                              # %.preheader56
	ori	$a2, $zero, 1
	bne	$a1, $a2, .LBB14_14
# %bb.13:
	move	$a5, $zero
	b	.LBB14_22
.LBB14_14:                              # %.lr.ph67
	move	$a3, $zero
	move	$a4, $zero
	b	.LBB14_16
	.p2align	4, , 16
.LBB14_15:                              # %.loopexit55
                                        #   in Loop: Header=BB14_16 Depth=1
	addi.w	$a5, $a1, -1
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 4
	bge	$a4, $a5, .LBB14_21
.LBB14_16:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_19 Depth 2
	move	$a5, $a4
	addi.d	$a4, $a4, 1
	bge	$a4, $a1, .LBB14_15
# %bb.17:                               # %.lr.ph65.preheader
                                        #   in Loop: Header=BB14_16 Depth=1
	move	$a6, $a3
	move	$a7, $a2
	b	.LBB14_19
	.p2align	4, , 16
.LBB14_18:                              #   in Loop: Header=BB14_19 Depth=2
	addi.d	$a7, $a7, 1
	addi.d	$a6, $a6, 4
	bge	$a7, $a1, .LBB14_15
.LBB14_19:                              # %.lr.ph65
                                        #   Parent Loop BB14_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $a0, 8
	alsl.d	$t0, $a5, $t1, 2
	ld.hu	$t2, $t0, 2
	add.d	$t1, $t1, $a6
	ld.hu	$t3, $t1, 6
	bgeu	$t2, $t3, .LBB14_18
# %bb.20:                               #   in Loop: Header=BB14_19 Depth=2
	ld.w	$a1, $t1, 4
	ld.w	$t1, $t0, 0
	st.w	$a1, $t0, 0
	ld.d	$a1, $a0, 8
	add.d	$a1, $a1, $a6
	st.w	$t1, $a1, 4
	ld.w	$a1, $a0, 4
	b	.LBB14_18
.LBB14_21:                              # %.preheader
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB14_24
.LBB14_22:                              # %.lr.ph69
	ld.d	$a0, $a0, 8
	bstrpick.d	$a1, $a5, 31, 0
	slli.d	$a1, $a1, 2
	addi.w	$a2, $zero, -4
	.p2align	4, , 16
.LBB14_23:                              # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $a1
	ld.h	$a4, $a3, 6
	ld.h	$a5, $a3, 2
	add.d	$a4, $a5, $a4
	addi.d	$a1, $a1, -4
	st.h	$a4, $a3, 2
	bne	$a1, $a2, .LBB14_23
.LBB14_24:                              # %.loopexit
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end14:
	.size	qtm_update_model, .Lfunc_end14-qtm_update_model
                                        # -- End function
	.globl	qtm_free                        # -- Begin function qtm_free
	.p2align	5
	.type	qtm_free,@function
qtm_free:                               # @qtm_free
# %bb.0:
	beqz	$a0, .LBB15_2
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a1, $a0, 16
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 48
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.LBB15_2:
	ret
.Lfunc_end15:
	.size	qtm_free, .Lfunc_end15-qtm_free
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function mszip_make_decode_table
.LCPI16_0:
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
.LCPI16_1:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.text
	.p2align	5
	.type	mszip_make_decode_table,@function
mszip_make_decode_table:                # @mszip_make_decode_table
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
	move	$a5, $zero
	ori	$a6, $zero, 1
	sll.w	$a7, $a6, $a1
	bstrpick.d	$t5, $a7, 31, 1
	andi	$a4, $a1, 255
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	bstrpick.d	$a4, $a0, 15, 0
	addi.w	$t2, $zero, -1
	pcalau12i	$t3, %pc_hi20(.LCPI16_0)
	vld	$vr0, $t3, %pc_lo12(.LCPI16_0)
	pcalau12i	$t3, %pc_hi20(.LCPI16_1)
	vld	$vr1, $t3, %pc_lo12(.LCPI16_1)
	ori	$t3, $zero, 0
	lu32i.d	$t3, 1
	ori	$t4, $zero, 24
	vrepli.b	$vr2, 0
	ori	$t8, $zero, 1
	st.d	$t5, $sp, 0                     # 8-byte Folded Spill
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	b	.LBB16_2
	.p2align	4, , 16
.LBB16_1:                               #   in Loop: Header=BB16_2 Depth=1
	bstrpick.d	$t5, $t5, 31, 1
	addi.w	$t8, $t6, 1
	addi.w	$t2, $t2, -1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ori	$a6, $zero, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bgeu	$t6, $a0, .LBB16_15
.LBB16_2:                               # %.preheader141
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_4 Depth 2
                                        #       Child Loop BB16_6 Depth 3
                                        #       Child Loop BB16_13 Depth 3
                                        #       Child Loop BB16_11 Depth 3
	move	$t7, $zero
	move	$t6, $t8
	sll.w	$t8, $a6, $t8
	bstrpick.d	$t8, $t8, 15, 0
	sub.d	$fp, $a1, $t6
	addi.d	$s0, $t5, -1
	bstrpick.d	$s0, $s0, 31, 0
	mul.d	$s0, $t8, $s0
	srli.d	$s1, $s0, 32
	sltu	$s1, $zero, $s1
	bstrpick.d	$s2, $t5, 14, 3
	slli.w	$s2, $s2, 3
	mul.d	$a0, $s2, $t8
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	slli.d	$s4, $t8, 3
	vreplgr2vr.w	$vr3, $s4
	andi	$s4, $t5, 7
	vreplgr2vr.w	$vr5, $t8
	vmul.w	$vr4, $vr5, $vr0
	vmul.w	$vr5, $vr5, $vr1
	b	.LBB16_4
	.p2align	4, , 16
.LBB16_3:                               # %.loopexit140
                                        #   in Loop: Header=BB16_4 Depth=2
	addi.d	$t7, $t7, 1
	bgeu	$t7, $a4, .LBB16_1
.LBB16_4:                               #   Parent Loop BB16_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_6 Depth 3
                                        #       Child Loop BB16_13 Depth 3
                                        #       Child Loop BB16_11 Depth 3
	ldx.bu	$s5, $a2, $t7
	bne	$s5, $t6, .LBB16_3
# %bb.5:                                #   in Loop: Header=BB16_4 Depth=2
	move	$s7, $zero
	srl.w	$ra, $a5, $fp
	move	$s6, $t2
	.p2align	4, , 16
.LBB16_6:                               #   Parent Loop BB16_2 Depth=1
                                        #     Parent Loop BB16_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s5, $ra
	move	$s8, $s7
	move	$s7, $ra
	bstrins.d	$s7, $s8, 63, 1
	bstrpick.d	$s6, $s6, 31, 0
	addi.d	$s6, $s6, 1
	and	$a6, $s6, $t3
	bstrpick.d	$ra, $ra, 31, 1
	beqz	$a6, .LBB16_6
# %bb.7:                                #   in Loop: Header=BB16_4 Depth=2
	add.w	$a5, $a5, $t5
	bltu	$a7, $a5, .LBB16_34
# %bb.8:                                # %.preheader175.preheader
                                        #   in Loop: Header=BB16_4 Depth=2
	addi.w	$s6, $t5, 0
	bltu	$s6, $t4, .LBB16_10
# %bb.9:                                # %vector.scevcheck
                                        #   in Loop: Header=BB16_4 Depth=2
	bstrins.d	$s5, $s8, 63, 1
	nor	$a6, $s5, $zero
	addi.w	$a6, $a6, 0
	addi.w	$s5, $s0, 0
	sltu	$a6, $a6, $s5
	or	$a6, $a6, $s1
	beqz	$a6, .LBB16_12
.LBB16_10:                              #   in Loop: Header=BB16_4 Depth=2
	move	$s5, $s7
	move	$s7, $t5
	.p2align	4, , 16
.LBB16_11:                              # %.preheader175
                                        #   Parent Loop BB16_2 Depth=1
                                        #     Parent Loop BB16_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$a0, $s5, 31, 0
	slli.d	$a0, $a0, 1
	stx.h	$t7, $a3, $a0
	addi.w	$s7, $s7, -1
	add.w	$s5, $s5, $t8
	bnez	$s7, .LBB16_11
	b	.LBB16_3
.LBB16_12:                              # %vector.ph
                                        #   in Loop: Header=BB16_4 Depth=2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	add.w	$s5, $s7, $a0
	vreplgr2vr.w	$vr7, $s7
	vadd.w	$vr6, $vr7, $vr4
	vadd.w	$vr7, $vr7, $vr5
	move	$s7, $s2
	.p2align	4, , 16
.LBB16_13:                              # %vector.body
                                        #   Parent Loop BB16_2 Depth=1
                                        #     Parent Loop BB16_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vilvh.w	$vr8, $vr2, $vr6
	vilvl.w	$vr9, $vr2, $vr6
	vilvh.w	$vr10, $vr2, $vr7
	vilvl.w	$vr11, $vr2, $vr7
	vpickve2gr.d	$a6, $vr11, 0
	slli.d	$a6, $a6, 1
	vpickve2gr.d	$s8, $vr11, 1
	slli.d	$s8, $s8, 1
	vpickve2gr.d	$ra, $vr10, 0
	slli.d	$ra, $ra, 1
	vpickve2gr.d	$a0, $vr10, 1
	slli.d	$a0, $a0, 1
	vpickve2gr.d	$t0, $vr9, 0
	slli.d	$t0, $t0, 1
	vpickve2gr.d	$t1, $vr9, 1
	slli.d	$t1, $t1, 1
	vpickve2gr.d	$s3, $vr8, 0
	slli.d	$s3, $s3, 1
	vpickve2gr.d	$a1, $vr8, 1
	slli.d	$a1, $a1, 1
	stx.h	$t7, $a3, $a6
	stx.h	$t7, $a3, $s8
	stx.h	$t7, $a3, $ra
	stx.h	$t7, $a3, $a0
	stx.h	$t7, $a3, $t0
	stx.h	$t7, $a3, $t1
	stx.h	$t7, $a3, $s3
	stx.h	$t7, $a3, $a1
	vadd.w	$vr7, $vr7, $vr3
	addi.w	$s7, $s7, -8
	vadd.w	$vr6, $vr6, $vr3
	bnez	$s7, .LBB16_13
# %bb.14:                               # %middle.block
                                        #   in Loop: Header=BB16_4 Depth=2
	move	$s7, $s4
	bne	$s6, $s2, .LBB16_11
	b	.LBB16_3
.LBB16_15:
	bne	$a5, $a7, .LBB16_17
# %bb.16:
	move	$a0, $zero
	b	.LBB16_35
.LBB16_17:
	bstrpick.d	$t3, $a5, 15, 0
	lu12i.w	$t2, 15
	bgeu	$t3, $a7, .LBB16_22
# %bb.18:                               # %.preheader139.preheader
	ori	$t0, $t2, 4095
	move	$t1, $a5
	.p2align	4, , 16
.LBB16_19:                              # %.preheader139
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_20 Depth 2
	move	$t4, $zero
	move	$t5, $a1
	.p2align	4, , 16
.LBB16_20:                              #   Parent Loop BB16_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$a0, $t4
	move	$t4, $t3
	bstrpick.d	$t3, $t3, 31, 1
	addi.w	$t5, $t5, -1
	bstrins.d	$t4, $a0, 63, 1
	bnez	$t5, .LBB16_20
# %bb.21:                               #   in Loop: Header=BB16_19 Depth=1
	bstrpick.d	$a0, $t4, 31, 0
	slli.d	$a0, $a0, 1
	addi.d	$t1, $t1, 1
	bstrpick.d	$t3, $t1, 15, 0
	stx.h	$t0, $a3, $a0
	bltu	$t3, $a7, .LBB16_19
.LBB16_22:                              # %.preheader138.preheader
	lu12i.w	$a0, 16
	sll.w	$a7, $a0, $a1
	slli.d	$a5, $a5, 16
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ld.d	$a6, $sp, 8                     # 8-byte Folded Reload
	sltu	$t0, $a6, $a0
	masknez	$a6, $a6, $t0
	maskeqz	$a0, $a0, $t0
	or	$a6, $a0, $a6
	addi.w	$a0, $a1, 1
	lu12i.w	$t0, 8
	ori	$t1, $zero, 1
	ori	$t2, $t2, 4095
	ori	$t3, $zero, 15
	ori	$t4, $zero, 17
	b	.LBB16_24
.LBB16_23:                              # %.split.us
                                        #   in Loop: Header=BB16_24 Depth=1
	bstrpick.d	$t0, $t0, 31, 1
	addi.w	$a0, $a0, 1
	addi.d	$t1, $t1, 1
	beq	$a0, $t4, .LBB16_36
.LBB16_24:                              # %.preheader138.split.us.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_27 Depth 2
                                        #       Child Loop BB16_29 Depth 3
                                        #       Child Loop BB16_32 Depth 3
	move	$t5, $zero
	b	.LBB16_27
	.p2align	4, , 16
.LBB16_25:                              # %._crit_edge159.us
                                        #   in Loop: Header=BB16_27 Depth=2
	addi.w	$t6, $t7, 0
	slli.d	$t6, $t6, 1
	add.w	$a5, $a5, $t0
	stx.h	$t5, $a3, $t6
	bltu	$a7, $a5, .LBB16_34
.LBB16_26:                              #   in Loop: Header=BB16_27 Depth=2
	addi.d	$t5, $t5, 1
	bgeu	$t5, $a4, .LBB16_23
.LBB16_27:                              # %.preheader138.split.us
                                        #   Parent Loop BB16_24 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_29 Depth 3
                                        #       Child Loop BB16_32 Depth 3
	ldx.bu	$t6, $a2, $t5
	bne	$a0, $t6, .LBB16_26
# %bb.28:                               #   in Loop: Header=BB16_27 Depth=2
	move	$t7, $zero
	bstrpick.d	$t8, $a5, 31, 16
	move	$t6, $a1
	.p2align	4, , 16
.LBB16_29:                              #   Parent Loop BB16_24 Depth=1
                                        #     Parent Loop BB16_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$fp, $t7
	move	$t7, $t8
	bstrpick.d	$t8, $t8, 31, 1
	addi.w	$t6, $t6, -1
	bstrins.d	$t7, $fp, 63, 1
	bnez	$t6, .LBB16_29
# %bb.30:                               # %.preheader.us.preheader
                                        #   in Loop: Header=BB16_27 Depth=2
	ori	$t6, $zero, 15
	b	.LBB16_32
	.p2align	4, , 16
.LBB16_31:                              #   in Loop: Header=BB16_32 Depth=3
	bstrpick.d	$fp, $t7, 15, 0
	srl.w	$t7, $a5, $t6
	addi.d	$t6, $t6, -1
	add.w	$t8, $t1, $t6
	bstrins.d	$t7, $fp, 63, 1
	beq	$t8, $t3, .LBB16_25
.LBB16_32:                              # %.preheader.us
                                        #   Parent Loop BB16_24 Depth=1
                                        #     Parent Loop BB16_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$t8, $t7, 31, 0
	slli.d	$t7, $t8, 1
	ldx.hu	$t7, $a3, $t7
	bne	$t7, $t2, .LBB16_31
# %bb.33:                               #   in Loop: Header=BB16_32 Depth=3
	alsl.d	$fp, $t8, $a3, 1
	bstrpick.d	$t7, $a6, 15, 0
	slli.d	$t7, $t7, 2
	addi.w	$t8, $zero, -1
	lu32i.d	$t8, 0
	stx.w	$t8, $a3, $t7
	addi.d	$t8, $a6, 1
	st.h	$a6, $fp, 0
	move	$t7, $a6
	move	$a6, $t8
	b	.LBB16_31
.LBB16_34:
	ori	$a0, $zero, 1
.LBB16_35:                              # %.loopexit
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
.LBB16_36:                              # %._crit_edge170
	addi.w	$a0, $a5, 0
	xor	$a0, $a0, $a7
	sltu	$a0, $zero, $a0
	b	.LBB16_35
.Lfunc_end16:
	.size	mszip_make_decode_table, .Lfunc_end16-mszip_make_decode_table
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"mszip_decompress: inflate error %d\n"
	.size	.L.str, 36

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"mszip_decompress: MSZIP error, %u bytes of data lost\n"
	.size	.L.str.1, 54

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"mszip_decompress: bytes left to output\n"
	.size	.L.str.2, 40

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"lzx_decompress: %d bytes remaining at reset interval\n"
	.size	.L.str.3, 54

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"lzx: failed to build %s table\n"
	.size	.L.str.4, 31

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"ALIGNED"
	.size	.L.str.5, 8

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"MAINTREE"
	.size	.L.str.6, 9

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"LENGTH"
	.size	.L.str.7, 7

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"lzx_decompress: bad block type (0x%x)\n"
	.size	.L.str.8, 39

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"lzx: out of bits in huffman decode\n"
	.size	.L.str.9, 36

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"lzx: index out of table\n"
	.size	.L.str.10, 25

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"lzx_decompress: match ran over window wrap\n"
	.size	.L.str.11, 44

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"lzx_decompress: match offset beyond window boundaries\n"
	.size	.L.str.12, 55

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"lzx_decompress: overrun went past end of block by %d (%d remaining)\n"
	.size	.L.str.13, 69

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"lzx_decompress: decode beyond output frame limits! %d != %d\n"
	.size	.L.str.14, 61

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"lzx_decompress: %d avail bytes, new %d frame\n"
	.size	.L.str.15, 46

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"lzx_decompress: bytes left to output\n"
	.size	.L.str.16, 38

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"qtm_decompress: match offset beyond window boundaries\n"
	.size	.L.str.17, 55

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"qtm_decompress: overshot frame alignment\n"
	.size	.L.str.18, 42

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"mszip_flush_window: overflow: %u bytes flushed, total is now %u\n"
	.size	.L.str.19, 65

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"mszip_read_input: out of input bytes\n"
	.size	.L.str.20, 38

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"zip_inflate: out of bits in huffman decode\n"
	.size	.L.str.21, 44

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"zip_inflate: index out of table\n"
	.size	.L.str.22, 33

	.type	mszip_lit_extrabits,@object     # @mszip_lit_extrabits
	.section	.rodata,"a",@progbits
mszip_lit_extrabits:
	.asciz	"\000\000\000\000\000\000\000\000\001\001\001\001\002\002\002\002\003\003\003\003\004\004\004\004\005\005\005\005"
	.size	mszip_lit_extrabits, 29

	.type	mszip_bit_mask_tab,@object      # @mszip_bit_mask_tab
	.p2align	1, 0x0
mszip_bit_mask_tab:
	.half	0                               # 0x0
	.half	1                               # 0x1
	.half	3                               # 0x3
	.half	7                               # 0x7
	.half	15                              # 0xf
	.half	31                              # 0x1f
	.half	63                              # 0x3f
	.half	127                             # 0x7f
	.half	255                             # 0xff
	.half	511                             # 0x1ff
	.half	1023                            # 0x3ff
	.half	2047                            # 0x7ff
	.half	4095                            # 0xfff
	.half	8191                            # 0x1fff
	.half	16383                           # 0x3fff
	.half	32767                           # 0x7fff
	.half	65535                           # 0xffff
	.size	mszip_bit_mask_tab, 34

	.type	mszip_lit_lengths,@object       # @mszip_lit_lengths
	.p2align	1, 0x0
mszip_lit_lengths:
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	6                               # 0x6
	.half	7                               # 0x7
	.half	8                               # 0x8
	.half	9                               # 0x9
	.half	10                              # 0xa
	.half	11                              # 0xb
	.half	13                              # 0xd
	.half	15                              # 0xf
	.half	17                              # 0x11
	.half	19                              # 0x13
	.half	23                              # 0x17
	.half	27                              # 0x1b
	.half	31                              # 0x1f
	.half	35                              # 0x23
	.half	43                              # 0x2b
	.half	51                              # 0x33
	.half	59                              # 0x3b
	.half	67                              # 0x43
	.half	83                              # 0x53
	.half	99                              # 0x63
	.half	115                             # 0x73
	.half	131                             # 0x83
	.half	163                             # 0xa3
	.half	195                             # 0xc3
	.half	227                             # 0xe3
	.half	258                             # 0x102
	.size	mszip_lit_lengths, 58

	.type	mszip_dist_extrabits,@object    # @mszip_dist_extrabits
mszip_dist_extrabits:
	.ascii	"\000\000\000\000\001\001\002\002\003\003\004\004\005\005\006\006\007\007\b\b\t\t\n\n\013\013\f\f\r\r"
	.size	mszip_dist_extrabits, 30

	.type	mszip_dist_offsets,@object      # @mszip_dist_offsets
	.p2align	1, 0x0
mszip_dist_offsets:
	.half	1                               # 0x1
	.half	2                               # 0x2
	.half	3                               # 0x3
	.half	4                               # 0x4
	.half	5                               # 0x5
	.half	7                               # 0x7
	.half	9                               # 0x9
	.half	13                              # 0xd
	.half	17                              # 0x11
	.half	25                              # 0x19
	.half	33                              # 0x21
	.half	49                              # 0x31
	.half	65                              # 0x41
	.half	97                              # 0x61
	.half	129                             # 0x81
	.half	193                             # 0xc1
	.half	257                             # 0x101
	.half	385                             # 0x181
	.half	513                             # 0x201
	.half	769                             # 0x301
	.half	1025                            # 0x401
	.half	1537                            # 0x601
	.half	2049                            # 0x801
	.half	3073                            # 0xc01
	.half	4097                            # 0x1001
	.half	6145                            # 0x1801
	.half	8193                            # 0x2001
	.half	12289                           # 0x3001
	.half	16385                           # 0x4001
	.half	24577                           # 0x6001
	.size	mszip_dist_offsets, 60

	.type	mszip_bitlen_order,@object      # @mszip_bitlen_order
mszip_bitlen_order:
	.ascii	"\020\021\022\000\b\007\t\006\n\005\013\004\f\003\r\002\016\001\017"
	.size	mszip_bitlen_order, 19

	.type	.L.str.23,@object               # @.str.23
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.23:
	.asciz	"zip_read_lens: bad code!: %u\n"
	.size	.L.str.23, 30

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"lzx_read_input: out of input bytes\n"
	.size	.L.str.24, 36

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"PRETREE"
	.size	.L.str.25, 8

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym mszip_flush_window
