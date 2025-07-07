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
	beqz	$a0, .LBB2_41
# %bb.1:
	move	$s0, $a1
	bltz	$a1, .LBB2_41
# %bb.2:
	move	$fp, $a0
	ld.w	$s1, $a0, 24
	bnez	$s1, .LBB2_41
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
	bne	$a0, $s1, .LBB2_37
# %bb.6:                                # %._crit_edge170
	ld.d	$a1, $fp, 64
.LBB2_7:
	add.d	$a0, $a1, $s1
	st.d	$a0, $fp, 64
	sub.d	$s0, $s0, $s1
.LBB2_8:
	beqz	$s0, .LBB2_35
# %bb.9:                                # %.preheader
	addi.w	$s1, $zero, -124
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	ori	$a1, $zero, 1
	addi.d	$s2, $a0, %pc_lo12(.L.str.2)
	blt	$s0, $a1, .LBB2_39
# %bb.10:                               # %.lr.ph161
	lu12i.w	$a0, 8
	ori	$a0, $a0, 2976
	add.d	$s6, $fp, $a0
	addi.d	$a0, $fp, 2047
	addi.d	$a0, $a0, 925
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s8, $zero, 7
	addi.w	$s7, $zero, -123
	lu12i.w	$a0, 7
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
.LBB2_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_13 Depth 2
                                        #       Child Loop BB2_17 Depth 3
	move	$s5, $zero
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
	orn	$a3, $a3, $s5
	sltui	$s5, $a4, 1
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
	ld.d	$a3, $s6, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB2_20
# %bb.19:                               #   in Loop: Header=BB2_17 Depth=3
	ld.d	$a0, $s6, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB2_21
	b	.LBB2_36
.LBB2_20:                               #   in Loop: Header=BB2_17 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB2_36
.LBB2_21:                               #   in Loop: Header=BB2_17 Depth=3
	bnez	$a0, .LBB2_15
# %bb.22:                               #   in Loop: Header=BB2_17 Depth=3
	ld.w	$a0, $fp, 36
	bnez	$a0, .LBB2_38
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
	beqz	$a0, .LBB2_42
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
	bne	$a0, $s4, .LBB2_36
# %bb.32:                               # %._crit_edge173
                                        #   in Loop: Header=BB2_11 Depth=1
	ld.d	$a0, $fp, 64
.LBB2_33:                               #   in Loop: Header=BB2_11 Depth=1
	add.d	$a0, $a0, $s4
	sub.d	$s0, $s0, $s4
	st.d	$a0, $fp, 64
	bgtz	$s0, .LBB2_11
# %bb.34:                               # %._crit_edge162
	bnez	$s0, .LBB2_39
.LBB2_35:
	move	$s1, $zero
	b	.LBB2_41
.LBB2_36:
	move	$s1, $s7
	st.w	$s7, $fp, 24
	b	.LBB2_41
.LBB2_37:
	addi.w	$s1, $zero, -123
	b	.LBB2_40
.LBB2_38:
	addi.w	$s1, $zero, -123
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$s2, $a0, %pc_lo12(.L.str.20)
.LBB2_39:                               # %.sink.split.sink.split
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB2_40:
	st.w	$s1, $fp, 24
.LBB2_41:
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
.LBB2_42:
	addi.w	$s1, $zero, -124
	b	.LBB2_40
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
	addi.d	$a0, $a0, 957
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
                                        #     Child Loop BB3_7 Depth 2
                                        #     Child Loop BB3_163 Depth 2
                                        #     Child Loop BB3_202 Depth 2
                                        #     Child Loop BB3_212 Depth 2
                                        #     Child Loop BB3_224 Depth 2
                                        #       Child Loop BB3_227 Depth 3
                                        #     Child Loop BB3_237 Depth 2
                                        #     Child Loop BB3_240 Depth 2
                                        #       Child Loop BB3_246 Depth 3
                                        #       Child Loop BB3_261 Depth 3
                                        #       Child Loop BB3_274 Depth 3
                                        #       Child Loop BB3_285 Depth 3
                                        #       Child Loop BB3_298 Depth 3
                                        #       Child Loop BB3_301 Depth 3
                                        #     Child Loop BB3_36 Depth 2
                                        #       Child Loop BB3_97 Depth 3
                                        #       Child Loop BB3_106 Depth 3
                                        #       Child Loop BB3_115 Depth 3
                                        #       Child Loop BB3_125 Depth 3
                                        #       Child Loop BB3_139 Depth 3
                                        #         Child Loop BB3_147 Depth 4
                                        #         Child Loop BB3_151 Depth 4
                                        #         Child Loop BB3_154 Depth 4
                                        #       Child Loop BB3_133 Depth 3
                                        #     Child Loop BB3_174 Depth 2
                                        #     Child Loop BB3_186 Depth 2
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
	b	.LBB3_7
	.p2align	4, , 16
.LBB3_5:                                #   in Loop: Header=BB3_7 Depth=2
	ld.d	$s6, $fp, 40
	st.d	$s6, $fp, 48
	add.d	$s1, $s6, $a0
	st.d	$s1, $fp, 56
.LBB3_6:                                #   in Loop: Header=BB3_7 Depth=2
	ld.bu	$a0, $s6, 0
	addi.w	$s2, $s2, 8
	addi.d	$s6, $s6, 1
	sll.w	$a0, $a0, $s2
	addi.w	$a1, $zero, -6
	or	$s0, $a0, $s0
	bge	$s2, $a1, .LBB3_25
.LBB3_7:                                # %.lr.ph723
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$s6, $s1, .LBB3_6
# %bb.8:                                #   in Loop: Header=BB3_7 Depth=2
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_10
# %bb.9:                                #   in Loop: Header=BB3_7 Depth=2
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB3_11
	b	.LBB3_314
.LBB3_10:                               #   in Loop: Header=BB3_7 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB3_314
.LBB3_11:                               #   in Loop: Header=BB3_7 Depth=2
	bnez	$a0, .LBB3_5
# %bb.12:                               #   in Loop: Header=BB3_7 Depth=2
	ld.w	$a0, $fp, 36
	bnez	$a0, .LBB3_313
# %bb.13:                               #   in Loop: Header=BB3_7 Depth=2
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
	b	.LBB3_5
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
	b	.LBB3_314
.LBB3_22:                               #   in Loop: Header=BB3_19 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB3_314
.LBB3_23:                               #   in Loop: Header=BB3_19 Depth=2
	bnez	$a0, .LBB3_17
# %bb.24:                               #   in Loop: Header=BB3_19 Depth=2
	ld.w	$a0, $fp, 36
	beqz	$a0, .LBB3_16
	b	.LBB3_313
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
	beqz	$s8, .LBB3_169
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
	bne	$s8, $a1, .LBB3_234
.LBB3_31:                               #   in Loop: Header=BB3_1 Depth=1
	move	$s5, $a0
	b	.LBB3_170
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
	bnez	$a0, .LBB3_319
# %bb.34:                               #   in Loop: Header=BB3_1 Depth=1
	ori	$a0, $zero, 32
	ori	$a1, $zero, 6
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(mszip_make_decode_table)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_320
# %bb.35:                               #   in Loop: Header=BB3_1 Depth=1
	ld.w	$a0, $fp, 12
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
.LBB3_36:                               # %.thread496
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_97 Depth 3
                                        #       Child Loop BB3_106 Depth 3
                                        #       Child Loop BB3_115 Depth 3
                                        #       Child Loop BB3_125 Depth 3
                                        #       Child Loop BB3_139 Depth 3
                                        #         Child Loop BB3_147 Depth 4
                                        #         Child Loop BB3_151 Depth 4
                                        #         Child Loop BB3_154 Depth 4
                                        #       Child Loop BB3_133 Depth 3
	ori	$a0, $zero, 15
	bge	$a0, $s8, .LBB3_97
# %bb.37:                               #   in Loop: Header=BB3_36 Depth=2
	move	$s0, $s6
.LBB3_38:                               # %._crit_edge745
                                        #   in Loop: Header=BB3_36 Depth=2
	andi	$a0, $s5, 511
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 288
	bltu	$a0, $a1, .LBB3_57
# %bb.39:                               # %.preheader514.preheader
                                        #   in Loop: Header=BB3_36 Depth=2
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 15, 7
	slli.d	$a1, $a1, 7
	ori	$a2, $zero, 1151
	bltu	$a2, $a1, .LBB3_316
# %bb.40:                               #   in Loop: Header=BB3_36 Depth=2
	srli.d	$a1, $s5, 9
	bstrpick.d	$a0, $a0, 15, 1
	bstrins.d	$a1, $a0, 63, 1
	slli.d	$a0, $a1, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 288
	bltu	$a0, $a1, .LBB3_57
# %bb.41:                               # %.preheader514.1
                                        #   in Loop: Header=BB3_36 Depth=2
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 15, 7
	slli.d	$a1, $a1, 7
	ori	$a2, $zero, 1151
	bltu	$a2, $a1, .LBB3_316
# %bb.42:                               #   in Loop: Header=BB3_36 Depth=2
	srli.d	$a1, $s5, 10
	bstrpick.d	$a0, $a0, 15, 1
	bstrins.d	$a1, $a0, 63, 1
	slli.d	$a0, $a1, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 288
	bltu	$a0, $a1, .LBB3_57
# %bb.43:                               # %.preheader514.2
                                        #   in Loop: Header=BB3_36 Depth=2
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 15, 7
	slli.d	$a1, $a1, 7
	ori	$a2, $zero, 1151
	bltu	$a2, $a1, .LBB3_316
# %bb.44:                               #   in Loop: Header=BB3_36 Depth=2
	srli.d	$a1, $s5, 11
	bstrpick.d	$a0, $a0, 15, 1
	bstrins.d	$a1, $a0, 63, 1
	slli.d	$a0, $a1, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 288
	bltu	$a0, $a1, .LBB3_57
# %bb.45:                               # %.preheader514.3
                                        #   in Loop: Header=BB3_36 Depth=2
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 15, 7
	slli.d	$a1, $a1, 7
	ori	$a2, $zero, 1151
	bltu	$a2, $a1, .LBB3_316
# %bb.46:                               #   in Loop: Header=BB3_36 Depth=2
	srli.d	$a1, $s5, 12
	bstrpick.d	$a0, $a0, 15, 1
	bstrins.d	$a1, $a0, 63, 1
	slli.d	$a0, $a1, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 288
	bltu	$a0, $a1, .LBB3_57
# %bb.47:                               # %.preheader514.4
                                        #   in Loop: Header=BB3_36 Depth=2
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 15, 7
	slli.d	$a1, $a1, 7
	ori	$a2, $zero, 1151
	bltu	$a2, $a1, .LBB3_316
# %bb.48:                               #   in Loop: Header=BB3_36 Depth=2
	srli.d	$a1, $s5, 13
	bstrpick.d	$a0, $a0, 15, 1
	bstrins.d	$a1, $a0, 63, 1
	slli.d	$a0, $a1, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 288
	bltu	$a0, $a1, .LBB3_57
# %bb.49:                               # %.preheader514.5
                                        #   in Loop: Header=BB3_36 Depth=2
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 15, 7
	slli.d	$a1, $a1, 7
	ori	$a2, $zero, 1151
	bltu	$a2, $a1, .LBB3_316
# %bb.50:                               #   in Loop: Header=BB3_36 Depth=2
	srli.d	$a1, $s5, 14
	bstrpick.d	$a0, $a0, 15, 1
	bstrins.d	$a1, $a0, 63, 1
	slli.d	$a0, $a1, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 288
	bltu	$a0, $a1, .LBB3_57
# %bb.51:                               # %.preheader514.6
                                        #   in Loop: Header=BB3_36 Depth=2
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 15, 7
	slli.d	$a1, $a1, 7
	ori	$a2, $zero, 1151
	bltu	$a2, $a1, .LBB3_316
# %bb.52:                               #   in Loop: Header=BB3_36 Depth=2
	srli.d	$a1, $s5, 15
	bstrpick.d	$a0, $a0, 15, 1
	bstrins.d	$a1, $a0, 63, 1
	slli.d	$a0, $a1, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 288
	bltu	$a0, $a1, .LBB3_57
# %bb.53:                               # %.preheader514.7
                                        #   in Loop: Header=BB3_36 Depth=2
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 15, 7
	slli.d	$a1, $a1, 7
	ori	$a2, $zero, 1151
	bltu	$a2, $a1, .LBB3_316
# %bb.54:                               #   in Loop: Header=BB3_36 Depth=2
	srli.d	$a1, $s5, 16
	bstrpick.d	$a0, $a0, 15, 1
	bstrins.d	$a1, $a0, 63, 1
	slli.d	$a0, $a1, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 288
	bltu	$a0, $a1, .LBB3_57
# %bb.55:                               # %.preheader514.8
                                        #   in Loop: Header=BB3_36 Depth=2
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $a0, 15, 7
	slli.d	$a1, $a1, 7
	ori	$a2, $zero, 1151
	bltu	$a2, $a1, .LBB3_316
# %bb.56:                               #   in Loop: Header=BB3_36 Depth=2
	srli.d	$a1, $s5, 17
	bstrpick.d	$a0, $a0, 15, 1
	bstrins.d	$a1, $a0, 63, 1
	slli.d	$a0, $a1, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 287
	bltu	$a1, $a0, .LBB3_328
	.p2align	4, , 16
.LBB3_57:                               # %.loopexit515
                                        #   in Loop: Header=BB3_36 Depth=2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	srl.w	$s5, $s5, $a1
	sub.w	$s8, $s8, $a1
	ori	$a1, $zero, 255
	bgeu	$a1, $a0, .LBB3_135
# %bb.58:                               #   in Loop: Header=BB3_36 Depth=2
	ori	$a1, $zero, 256
	beq	$a0, $a1, .LBB3_309
# %bb.59:                               #   in Loop: Header=BB3_36 Depth=2
	addi.d	$s2, $a0, -257
	ori	$a0, $zero, 29
	bltu	$a0, $s2, .LBB3_318
# %bb.60:                               # %.preheader513
                                        #   in Loop: Header=BB3_36 Depth=2
	pcalau12i	$a0, %pc_hi20(mszip_lit_extrabits)
	addi.d	$a0, $a0, %pc_lo12(mszip_lit_extrabits)
	ldx.bu	$s4, $a0, $s2
	blt	$s8, $s4, .LBB3_106
# %bb.61:                               #   in Loop: Header=BB3_36 Depth=2
	move	$a2, $s0
.LBB3_62:                               # %._crit_edge755
                                        #   in Loop: Header=BB3_36 Depth=2
	slli.d	$a0, $s4, 1
	pcalau12i	$a1, %pc_hi20(mszip_bit_mask_tab)
	addi.d	$a1, $a1, %pc_lo12(mszip_bit_mask_tab)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ldx.hu	$a0, $a1, $a0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	slli.d	$a0, $s2, 1
	pcalau12i	$a1, %pc_hi20(mszip_lit_lengths)
	addi.d	$a1, $a1, %pc_lo12(mszip_lit_lengths)
	ldx.hu	$s2, $a1, $a0
	sub.w	$a0, $s8, $s4
	srl.w	$s6, $s5, $s4
	ori	$a1, $zero, 15
	bgeu	$a1, $a0, .LBB3_115
# %bb.63:                               #   in Loop: Header=BB3_36 Depth=2
	move	$a1, $a2
.LBB3_64:                               # %._crit_edge769
                                        #   in Loop: Header=BB3_36 Depth=2
	andi	$a2, $s6, 63
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.hu	$s8, $a3, $a2
	ori	$a2, $zero, 32
	bltu	$s8, $a2, .LBB3_89
# %bb.65:                               # %.preheader512.preheader
                                        #   in Loop: Header=BB3_36 Depth=2
	bstrpick.d	$a2, $s8, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_316
# %bb.66:                               #   in Loop: Header=BB3_36 Depth=2
	srli.d	$a2, $s6, 6
	andi	$a3, $s8, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.hu	$s8, $a3, $a2
	ori	$a2, $zero, 32
	bltu	$s8, $a2, .LBB3_89
# %bb.67:                               # %.preheader512.1
                                        #   in Loop: Header=BB3_36 Depth=2
	bstrpick.d	$a2, $s8, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_316
# %bb.68:                               #   in Loop: Header=BB3_36 Depth=2
	srli.d	$a2, $s6, 7
	andi	$a3, $s8, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.hu	$s8, $a3, $a2
	ori	$a2, $zero, 32
	bltu	$s8, $a2, .LBB3_89
# %bb.69:                               # %.preheader512.2
                                        #   in Loop: Header=BB3_36 Depth=2
	bstrpick.d	$a2, $s8, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_316
# %bb.70:                               #   in Loop: Header=BB3_36 Depth=2
	srli.d	$a2, $s6, 8
	andi	$a3, $s8, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.hu	$s8, $a3, $a2
	ori	$a2, $zero, 32
	bltu	$s8, $a2, .LBB3_89
# %bb.71:                               # %.preheader512.3
                                        #   in Loop: Header=BB3_36 Depth=2
	bstrpick.d	$a2, $s8, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_316
# %bb.72:                               #   in Loop: Header=BB3_36 Depth=2
	srli.d	$a2, $s6, 9
	andi	$a3, $s8, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.hu	$s8, $a3, $a2
	ori	$a2, $zero, 32
	bltu	$s8, $a2, .LBB3_89
# %bb.73:                               # %.preheader512.4
                                        #   in Loop: Header=BB3_36 Depth=2
	bstrpick.d	$a2, $s8, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_316
# %bb.74:                               #   in Loop: Header=BB3_36 Depth=2
	srli.d	$a2, $s6, 10
	andi	$a3, $s8, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.hu	$s8, $a3, $a2
	ori	$a2, $zero, 32
	bltu	$s8, $a2, .LBB3_89
# %bb.75:                               # %.preheader512.5
                                        #   in Loop: Header=BB3_36 Depth=2
	bstrpick.d	$a2, $s8, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_316
# %bb.76:                               #   in Loop: Header=BB3_36 Depth=2
	srli.d	$a2, $s6, 11
	andi	$a3, $s8, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.hu	$s8, $a3, $a2
	ori	$a2, $zero, 32
	bltu	$s8, $a2, .LBB3_89
# %bb.77:                               # %.preheader512.6
                                        #   in Loop: Header=BB3_36 Depth=2
	bstrpick.d	$a2, $s8, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_316
# %bb.78:                               #   in Loop: Header=BB3_36 Depth=2
	srli.d	$a2, $s6, 12
	andi	$a3, $s8, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.hu	$s8, $a3, $a2
	ori	$a2, $zero, 32
	bltu	$s8, $a2, .LBB3_89
# %bb.79:                               # %.preheader512.7
                                        #   in Loop: Header=BB3_36 Depth=2
	bstrpick.d	$a2, $s8, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_316
# %bb.80:                               #   in Loop: Header=BB3_36 Depth=2
	srli.d	$a2, $s6, 13
	andi	$a3, $s8, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.hu	$s8, $a3, $a2
	ori	$a2, $zero, 32
	bltu	$s8, $a2, .LBB3_89
# %bb.81:                               # %.preheader512.8
                                        #   in Loop: Header=BB3_36 Depth=2
	bstrpick.d	$a2, $s8, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_316
# %bb.82:                               #   in Loop: Header=BB3_36 Depth=2
	srli.d	$a2, $s6, 14
	andi	$a3, $s8, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.hu	$s8, $a3, $a2
	ori	$a2, $zero, 32
	bltu	$s8, $a2, .LBB3_89
# %bb.83:                               # %.preheader512.9
                                        #   in Loop: Header=BB3_36 Depth=2
	bstrpick.d	$a2, $s8, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_316
# %bb.84:                               #   in Loop: Header=BB3_36 Depth=2
	srli.d	$a2, $s6, 15
	andi	$a3, $s8, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.hu	$s8, $a3, $a2
	ori	$a2, $zero, 32
	bltu	$s8, $a2, .LBB3_89
# %bb.85:                               # %.preheader512.10
                                        #   in Loop: Header=BB3_36 Depth=2
	bstrpick.d	$a2, $s8, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_316
# %bb.86:                               #   in Loop: Header=BB3_36 Depth=2
	srli.d	$a2, $s6, 16
	andi	$a3, $s8, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.hu	$a3, $a3, $a2
	ori	$a2, $zero, 32
	move	$s8, $a3
	bltu	$a3, $a2, .LBB3_89
# %bb.87:                               # %.preheader512.11
                                        #   in Loop: Header=BB3_36 Depth=2
	bstrpick.d	$a2, $s8, 14, 6
	slli.d	$a2, $a2, 6
	bnez	$a2, .LBB3_316
# %bb.88:                               #   in Loop: Header=BB3_36 Depth=2
	srli.d	$a2, $s6, 17
	andi	$a3, $s8, 63
	bstrins.d	$a2, $a3, 63, 1
	slli.d	$a2, $a2, 1
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	ldx.hu	$s8, $a3, $a2
	ori	$a2, $zero, 31
	bltu	$a2, $s8, .LBB3_328
.LBB3_89:                               # %.loopexit
                                        #   in Loop: Header=BB3_36 Depth=2
	ori	$a2, $zero, 31
	beq	$s8, $a2, .LBB3_321
# %bb.90:                               # %.preheader511
                                        #   in Loop: Header=BB3_36 Depth=2
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	ldx.bu	$a2, $a2, $s8
	pcalau12i	$a3, %pc_hi20(mszip_dist_extrabits)
	addi.d	$a3, $a3, %pc_lo12(mszip_dist_extrabits)
	ldx.bu	$s0, $a3, $s8
	sub.w	$s7, $a0, $a2
	srl.w	$s4, $s6, $a2
	blt	$s7, $s0, .LBB3_125
# %bb.91:                               #   in Loop: Header=BB3_36 Depth=2
	move	$s6, $a1
.LBB3_92:                               # %._crit_edge779
                                        #   in Loop: Header=BB3_36 Depth=2
	move	$a2, $s8
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	and	$a0, $s5, $a0
	add.d	$s2, $a0, $s2
	srl.w	$s5, $s4, $s0
	sub.w	$s8, $s7, $s0
	ori	$a0, $zero, 12
	bgeu	$s2, $a0, .LBB3_137
# %bb.93:                               # %.preheader
                                        #   in Loop: Header=BB3_36 Depth=2
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	beqz	$s2, .LBB3_36
# %bb.94:                               # %.lr.ph796.preheader
                                        #   in Loop: Header=BB3_36 Depth=2
	slli.d	$a0, $s0, 1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
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
	add.w	$s0, $a0, $a1
	b	.LBB3_133
	.p2align	4, , 16
.LBB3_95:                               #   in Loop: Header=BB3_97 Depth=3
	ld.d	$s6, $fp, 40
	st.d	$s6, $fp, 48
	add.d	$s1, $s6, $a0
	st.d	$s1, $fp, 56
.LBB3_96:                               #   in Loop: Header=BB3_97 Depth=3
	ld.bu	$a0, $s6, 0
	addi.d	$s0, $s6, 1
	sll.w	$a0, $a0, $s2
	or	$s5, $a0, $s5
	addi.w	$s8, $s2, 8
	move	$s6, $s0
	ori	$a0, $zero, 8
	bge	$s2, $a0, .LBB3_38
.LBB3_97:                               # %.lr.ph744
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s2, $s8
	bltu	$s6, $s1, .LBB3_96
# %bb.98:                               #   in Loop: Header=BB3_97 Depth=3
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_100
# %bb.99:                               #   in Loop: Header=BB3_97 Depth=3
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB3_101
	b	.LBB3_314
.LBB3_100:                              #   in Loop: Header=BB3_97 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB3_314
.LBB3_101:                              #   in Loop: Header=BB3_97 Depth=3
	bnez	$a0, .LBB3_95
# %bb.102:                              #   in Loop: Header=BB3_97 Depth=3
	ld.w	$a0, $fp, 36
	bnez	$a0, .LBB3_313
# %bb.103:                              #   in Loop: Header=BB3_97 Depth=3
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
	b	.LBB3_95
	.p2align	4, , 16
.LBB3_104:                              #   in Loop: Header=BB3_106 Depth=3
	ld.d	$s0, $fp, 40
	st.d	$s0, $fp, 48
	add.d	$s1, $s0, $a0
	st.d	$s1, $fp, 56
.LBB3_105:                              #   in Loop: Header=BB3_106 Depth=3
	ld.bu	$a0, $s0, 0
	addi.d	$a2, $s0, 1
	sll.w	$a0, $a0, $s8
	addi.w	$s8, $s8, 8
	or	$s5, $a0, $s5
	move	$s0, $a2
	bge	$s8, $s4, .LBB3_62
.LBB3_106:                              # %.lr.ph754
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bltu	$s0, $s1, .LBB3_105
# %bb.107:                              #   in Loop: Header=BB3_106 Depth=3
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_109
# %bb.108:                              #   in Loop: Header=BB3_106 Depth=3
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB3_110
	b	.LBB3_314
.LBB3_109:                              #   in Loop: Header=BB3_106 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB3_314
.LBB3_110:                              #   in Loop: Header=BB3_106 Depth=3
	bnez	$a0, .LBB3_104
# %bb.111:                              #   in Loop: Header=BB3_106 Depth=3
	ld.w	$a0, $fp, 36
	bnez	$a0, .LBB3_313
# %bb.112:                              #   in Loop: Header=BB3_106 Depth=3
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
	b	.LBB3_104
	.p2align	4, , 16
.LBB3_113:                              #   in Loop: Header=BB3_115 Depth=3
	ld.d	$a2, $fp, 40
	st.d	$a2, $fp, 48
	add.d	$s1, $a2, $a0
	st.d	$s1, $fp, 56
.LBB3_114:                              #   in Loop: Header=BB3_115 Depth=3
	ld.bu	$a0, $a2, 0
	addi.d	$a1, $a2, 1
	sll.w	$a0, $a0, $s0
	or	$s6, $a0, $s6
	addi.w	$a0, $s0, 8
	move	$a2, $a1
	ori	$a3, $zero, 8
	bgeu	$s0, $a3, .LBB3_64
.LBB3_115:                              # %.lr.ph768
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s0, $a0
	bltu	$a2, $s1, .LBB3_114
# %bb.116:                              #   in Loop: Header=BB3_115 Depth=3
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_118
# %bb.117:                              #   in Loop: Header=BB3_115 Depth=3
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB3_119
	b	.LBB3_314
.LBB3_118:                              #   in Loop: Header=BB3_115 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB3_314
.LBB3_119:                              #   in Loop: Header=BB3_115 Depth=3
	bnez	$a0, .LBB3_113
# %bb.120:                              #   in Loop: Header=BB3_115 Depth=3
	ld.w	$a0, $fp, 36
	bnez	$a0, .LBB3_313
# %bb.121:                              #   in Loop: Header=BB3_115 Depth=3
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
	b	.LBB3_113
.LBB3_122:                              #   in Loop: Header=BB3_125 Depth=3
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
.LBB3_123:                              #   in Loop: Header=BB3_125 Depth=3
	ld.d	$a1, $fp, 40
	st.d	$a1, $fp, 48
	add.d	$s1, $a1, $a0
	st.d	$s1, $fp, 56
.LBB3_124:                              #   in Loop: Header=BB3_125 Depth=3
	ld.bu	$a0, $a1, 0
	addi.d	$s6, $a1, 1
	sll.w	$a0, $a0, $s7
	addi.w	$s7, $s7, 8
	or	$s4, $a0, $s4
	move	$a1, $s6
	bge	$s7, $s0, .LBB3_92
.LBB3_125:                              # %.lr.ph778
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bltu	$a1, $s1, .LBB3_124
# %bb.126:                              #   in Loop: Header=BB3_125 Depth=3
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_128
# %bb.127:                              #   in Loop: Header=BB3_125 Depth=3
	ld.d	$a0, $a0, 0
	jirl	$ra, $a3, 0
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB3_129
	b	.LBB3_314
.LBB3_128:                              #   in Loop: Header=BB3_125 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB3_314
.LBB3_129:                              #   in Loop: Header=BB3_125 Depth=3
	bnez	$a0, .LBB3_123
# %bb.130:                              #   in Loop: Header=BB3_125 Depth=3
	ld.w	$a0, $fp, 36
	beqz	$a0, .LBB3_122
	b	.LBB3_313
.LBB3_131:                              #   in Loop: Header=BB3_133 Depth=3
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
.LBB3_132:                              #   in Loop: Header=BB3_133 Depth=3
	addi.w	$s2, $s2, -1
	addi.d	$a0, $s0, 1
	bstrpick.d	$s0, $a0, 14, 0
	beqz	$s2, .LBB3_36
.LBB3_133:                              # %.lr.ph796
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$a0, $s0, 31, 0
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	ldx.b	$a0, $a3, $a0
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	stx.b	$a0, $a3, $a2
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, 8
	bne	$a1, $a0, .LBB3_132
# %bb.134:                              #   in Loop: Header=BB3_133 Depth=3
	ld.d	$a2, $fp, 16
	move	$a0, $fp
	lu12i.w	$a1, 8
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB3_131
	b	.LBB3_312
.LBB3_135:                              #   in Loop: Header=BB3_36 Depth=2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	addi.w	$a1, $a2, 1
	bstrpick.d	$a2, $a2, 31, 0
	ld.d	$a3, $sp, 160                   # 8-byte Folded Reload
	stx.b	$a0, $a3, $a2
	move	$s6, $s0
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, 8
	bne	$a1, $a0, .LBB3_36
# %bb.136:                              #   in Loop: Header=BB3_36 Depth=2
	ld.d	$a2, $fp, 16
	move	$a0, $fp
	lu12i.w	$a1, 8
	jirl	$ra, $a2, 0
	move	$a1, $a0
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	addi.w	$a0, $zero, -3
	move	$s6, $s0
	beqz	$a1, .LBB3_36
	b	.LBB3_315
.LBB3_137:                              # %.preheader508.preheader
                                        #   in Loop: Header=BB3_36 Depth=2
	slli.d	$a0, $s0, 1
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
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
	lu12i.w	$a1, 8
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	b	.LBB3_139
.LBB3_138:                              #   in Loop: Header=BB3_139 Depth=3
	add.w	$a0, $s0, $s4
	sub.w	$s2, $s2, $s0
	xor	$a2, $a0, $a1
	sltui	$a2, $a2, 1
	masknez	$s4, $a0, $a2
	beqz	$s2, .LBB3_36
.LBB3_139:                              # %.preheader508
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_147 Depth 4
                                        #         Child Loop BB3_151 Depth 4
                                        #         Child Loop BB3_154 Depth 4
	add.w	$a0, $s4, $s2
	sltu	$a0, $a1, $a0
	sub.w	$a2, $a1, $s4
	maskeqz	$a2, $a2, $a0
	masknez	$a0, $s2, $a0
	or	$a0, $a2, $a0
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	add.w	$a2, $a0, $a4
	sltu	$a3, $a1, $a2
	sub.w	$a2, $a1, $a4
	masknez	$a0, $a0, $a3
	maskeqz	$a1, $a2, $a3
	or	$s0, $a1, $a0
	addi.w	$a3, $s0, 0
	beqz	$a3, .LBB3_155
# %bb.140:                              # %iter.check
                                        #   in Loop: Header=BB3_139 Depth=3
	bstrpick.d	$a4, $s4, 31, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	add.d	$a1, $a0, $a4
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	bstrpick.d	$a5, $a2, 31, 0
	add.d	$a0, $a0, $a5
	ori	$a2, $zero, 16
	bltu	$a3, $a2, .LBB3_145
# %bb.141:                              # %iter.check
                                        #   in Loop: Header=BB3_139 Depth=3
	sub.d	$a2, $a5, $a4
	ori	$a6, $zero, 64
	bltu	$a2, $a6, .LBB3_144
# %bb.142:                              # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB3_139 Depth=3
	bstrpick.d	$a2, $s0, 31, 0
	bgeu	$a3, $a6, .LBB3_146
# %bb.143:                              #   in Loop: Header=BB3_139 Depth=3
	move	$a6, $zero
	b	.LBB3_150
.LBB3_144:                              #   in Loop: Header=BB3_139 Depth=3
	move	$a3, $s0
	b	.LBB3_154
.LBB3_145:                              #   in Loop: Header=BB3_139 Depth=3
	move	$a3, $s0
	b	.LBB3_154
.LBB3_146:                              # %vector.ph
                                        #   in Loop: Header=BB3_139 Depth=3
	bstrpick.d	$a3, $a2, 31, 6
	slli.d	$a6, $a3, 6
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	add.d	$a3, $a7, $a5
	add.d	$a7, $a7, $a4
	move	$t0, $a6
	.p2align	4, , 16
.LBB3_147:                              # %vector.body
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        #       Parent Loop BB3_139 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvld	$xr0, $a7, -32
	xvld	$xr1, $a7, 0
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$t0, $t0, -64
	addi.d	$a3, $a3, 64
	addi.d	$a7, $a7, 64
	bnez	$t0, .LBB3_147
# %bb.148:                              # %middle.block
                                        #   in Loop: Header=BB3_139 Depth=3
	beq	$a6, $a2, .LBB3_155
# %bb.149:                              # %vec.epilog.iter.check
                                        #   in Loop: Header=BB3_139 Depth=3
	andi	$a3, $a2, 48
	beqz	$a3, .LBB3_153
.LBB3_150:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB3_139 Depth=3
	bstrpick.d	$a3, $a2, 31, 4
	slli.d	$a7, $a3, 4
	alsl.d	$a0, $a3, $a0, 4
	alsl.d	$a1, $a3, $a1, 4
	sub.d	$a3, $s0, $a7
	sub.d	$t0, $a6, $a7
	add.d	$a4, $a6, $a4
	ld.d	$t1, $sp, 160                   # 8-byte Folded Reload
	add.d	$a4, $t1, $a4
	add.d	$a5, $a6, $a5
	add.d	$a5, $t1, $a5
	.p2align	4, , 16
.LBB3_151:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        #       Parent Loop BB3_139 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $a4, 0
	vst	$vr0, $a5, 0
	addi.d	$t0, $t0, 16
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 16
	bnez	$t0, .LBB3_151
# %bb.152:                              # %vec.epilog.middle.block
                                        #   in Loop: Header=BB3_139 Depth=3
	bne	$a7, $a2, .LBB3_154
	b	.LBB3_155
.LBB3_153:                              #   in Loop: Header=BB3_139 Depth=3
	add.d	$a0, $a0, $a6
	add.d	$a1, $a1, $a6
	sub.d	$a3, $s0, $a6
	.p2align	4, , 16
.LBB3_154:                              # %.lr.ph791
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_36 Depth=2
                                        #       Parent Loop BB3_139 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.b	$a2, $a1, 0
	addi.w	$a3, $a3, -1
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a0, 1
	st.b	$a2, $a0, 0
	move	$a0, $a4
	bnez	$a3, .LBB3_154
.LBB3_155:                              # %._crit_edge792
                                        #   in Loop: Header=BB3_139 Depth=3
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.w	$a0, $s0, $a0
	lu12i.w	$a1, 8
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	bne	$a0, $a1, .LBB3_138
# %bb.156:                              #   in Loop: Header=BB3_139 Depth=3
	ld.d	$a2, $fp, 16
	move	$a0, $fp
	jirl	$ra, $a2, 0
	bnez	$a0, .LBB3_312
# %bb.157:                              #   in Loop: Header=BB3_139 Depth=3
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	lu12i.w	$a1, 8
	b	.LBB3_138
	.p2align	4, , 16
.LBB3_158:                              #   in Loop: Header=BB3_1 Depth=1
	st.d	$s6, $fp, 48
	st.d	$s1, $fp, 56
	st.w	$s5, $fp, 80
	st.w	$s8, $fp, 84
	ori	$a0, $zero, 4
	bltu	$a0, $s8, .LBB3_197
# %bb.159:                              # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB3_1 Depth=1
	addi.d	$s0, $a1, -10
	b	.LBB3_163
.LBB3_160:                              #   in Loop: Header=BB3_163 Depth=2
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
.LBB3_161:                              #   in Loop: Header=BB3_163 Depth=2
	ld.d	$s6, $fp, 40
	st.d	$s6, $fp, 48
	add.d	$s1, $s6, $a0
	st.d	$s1, $fp, 56
.LBB3_162:                              #   in Loop: Header=BB3_163 Depth=2
	ld.bu	$a0, $s6, 0
	addi.w	$s0, $s0, 8
	addi.d	$s6, $s6, 1
	sll.w	$a0, $a0, $s0
	addi.w	$a1, $zero, -3
	or	$s5, $a0, $s5
	bge	$s0, $a1, .LBB3_196
.LBB3_163:                              # %.lr.ph.i
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$s6, $s1, .LBB3_162
# %bb.164:                              #   in Loop: Header=BB3_163 Depth=2
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_166
# %bb.165:                              #   in Loop: Header=BB3_163 Depth=2
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB3_167
	b	.LBB3_314
.LBB3_166:                              #   in Loop: Header=BB3_163 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB3_314
.LBB3_167:                              #   in Loop: Header=BB3_163 Depth=2
	bnez	$a0, .LBB3_161
# %bb.168:                              #   in Loop: Header=BB3_163 Depth=2
	ld.w	$a0, $fp, 36
	beqz	$a0, .LBB3_160
	b	.LBB3_313
.LBB3_169:                              #   in Loop: Header=BB3_1 Depth=1
	move	$s0, $zero
.LBB3_170:                              # %.lr.ph810.preheader
                                        #   in Loop: Header=BB3_1 Depth=1
	lu12i.w	$s8, 8
	b	.LBB3_174
.LBB3_171:                              #   in Loop: Header=BB3_174 Depth=2
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
.LBB3_172:                              #   in Loop: Header=BB3_174 Depth=2
	ld.d	$s6, $fp, 40
	st.d	$s6, $fp, 48
	add.d	$s1, $s6, $a0
	st.d	$s1, $fp, 56
.LBB3_173:                              #   in Loop: Header=BB3_174 Depth=2
	ld.b	$a0, $s6, 0
	addi.d	$s6, $s6, 1
	addi.d	$a1, $s0, 1
	stx.b	$a0, $s0, $s4
	move	$s0, $a1
	ori	$a0, $zero, 4
	beq	$a1, $a0, .LBB3_180
.LBB3_174:                              # %.lr.ph810
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$s6, $s1, .LBB3_173
# %bb.175:                              #   in Loop: Header=BB3_174 Depth=2
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_177
# %bb.176:                              #   in Loop: Header=BB3_174 Depth=2
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB3_178
	b	.LBB3_314
.LBB3_177:                              #   in Loop: Header=BB3_174 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB3_314
.LBB3_178:                              #   in Loop: Header=BB3_174 Depth=2
	bnez	$a0, .LBB3_172
# %bb.179:                              #   in Loop: Header=BB3_174 Depth=2
	ld.w	$a0, $fp, 36
	beqz	$a0, .LBB3_171
	b	.LBB3_313
.LBB3_180:                              # %._crit_edge811.loopexit
                                        #   in Loop: Header=BB3_1 Depth=1
	ld.bu	$a0, $sp, 176
.LBB3_181:                              # %._crit_edge811
                                        #   in Loop: Header=BB3_1 Depth=1
	ld.bu	$a1, $sp, 177
	ld.hu	$a2, $sp, 178
	slli.d	$a1, $a1, 8
	or	$s2, $a1, $a0
	xor	$a0, $a2, $s2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB3_322
# %bb.182:                              # %.preheader516
                                        #   in Loop: Header=BB3_1 Depth=1
	move	$s0, $s6
	bnez	$s2, .LBB3_186
.LBB3_183:                              # %._crit_edge819
                                        #   in Loop: Header=BB3_1 Depth=1
	move	$s8, $zero
	andi	$a0, $s3, 1
	beqz	$a0, .LBB3_1
	b	.LBB3_310
	.p2align	4, , 16
.LBB3_184:                              #   in Loop: Header=BB3_186 Depth=2
	st.w	$zero, $fp, 12
.LBB3_185:                              #   in Loop: Header=BB3_186 Depth=2
	sub.w	$s2, $s2, $s4
	add.d	$s0, $s0, $s7
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	beqz	$s2, .LBB3_183
.LBB3_186:                              # %.lr.ph818
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$s0, $s1, .LBB3_194
# %bb.187:                              #   in Loop: Header=BB3_186 Depth=2
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_189
# %bb.188:                              #   in Loop: Header=BB3_186 Depth=2
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB3_190
	b	.LBB3_314
.LBB3_189:                              #   in Loop: Header=BB3_186 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB3_314
.LBB3_190:                              #   in Loop: Header=BB3_186 Depth=2
	bnez	$a0, .LBB3_193
# %bb.191:                              #   in Loop: Header=BB3_186 Depth=2
	ld.w	$a0, $fp, 36
	bnez	$a0, .LBB3_313
# %bb.192:                              #   in Loop: Header=BB3_186 Depth=2
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
.LBB3_193:                              #   in Loop: Header=BB3_186 Depth=2
	ld.d	$s0, $fp, 40
	st.d	$s0, $fp, 48
	add.d	$s1, $s0, $a0
	st.d	$s1, $fp, 56
.LBB3_194:                              #   in Loop: Header=BB3_186 Depth=2
	sub.w	$a0, $s1, $s0
	addi.w	$a1, $s2, 0
	sltu	$a2, $a1, $a0
	ld.wu	$s6, $fp, 12
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	sub.w	$a1, $s8, $s6
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s4, $a0, $a1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s6
	bstrpick.d	$s7, $s4, 31, 0
	move	$a1, $s0
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	add.w	$a0, $s4, $s6
	st.w	$a0, $fp, 12
	bne	$a0, $s8, .LBB3_185
# %bb.195:                              #   in Loop: Header=BB3_186 Depth=2
	ld.d	$a2, $fp, 16
	move	$a0, $fp
	move	$a1, $s8
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB3_184
	b	.LBB3_312
.LBB3_196:                              # %._crit_edge.i.loopexit
                                        #   in Loop: Header=BB3_1 Depth=1
	addi.w	$s8, $s0, 8
.LBB3_197:                              # %._crit_edge.i
                                        #   in Loop: Header=BB3_1 Depth=1
	bstrpick.d	$s0, $s5, 31, 5
	ori	$a0, $zero, 9
	bltu	$a0, $s8, .LBB3_208
# %bb.198:                              # %.lr.ph441.i.preheader
                                        #   in Loop: Header=BB3_1 Depth=1
	addi.d	$s2, $s8, -13
	b	.LBB3_202
.LBB3_199:                              #   in Loop: Header=BB3_202 Depth=2
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
.LBB3_200:                              #   in Loop: Header=BB3_202 Depth=2
	ld.d	$s6, $fp, 40
	st.d	$s6, $fp, 48
	add.d	$s1, $s6, $a0
	st.d	$s1, $fp, 56
.LBB3_201:                              #   in Loop: Header=BB3_202 Depth=2
	ld.bu	$a0, $s6, 0
	addi.w	$s2, $s2, 8
	addi.d	$s6, $s6, 1
	sll.w	$a0, $a0, $s2
	addi.w	$a1, $zero, -3
	or	$s0, $a0, $s0
	bge	$s2, $a1, .LBB3_219
.LBB3_202:                              # %.lr.ph441.i
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$s6, $s1, .LBB3_201
# %bb.203:                              #   in Loop: Header=BB3_202 Depth=2
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_205
# %bb.204:                              #   in Loop: Header=BB3_202 Depth=2
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB3_206
	b	.LBB3_314
.LBB3_205:                              #   in Loop: Header=BB3_202 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB3_314
.LBB3_206:                              #   in Loop: Header=BB3_202 Depth=2
	bnez	$a0, .LBB3_200
# %bb.207:                              #   in Loop: Header=BB3_202 Depth=2
	ld.w	$a0, $fp, 36
	beqz	$a0, .LBB3_199
	b	.LBB3_313
.LBB3_208:                              #   in Loop: Header=BB3_1 Depth=1
	addi.w	$a0, $s8, -5
	bstrpick.d	$s4, $s0, 31, 5
	ori	$a1, $zero, 8
	blt	$a1, $a0, .LBB3_220
.LBB3_209:                              # %.lr.ph452.i.preheader
                                        #   in Loop: Header=BB3_1 Depth=1
	addi.d	$s2, $a0, -13
	b	.LBB3_212
	.p2align	4, , 16
.LBB3_210:                              #   in Loop: Header=BB3_212 Depth=2
	ld.d	$s6, $fp, 40
	st.d	$s6, $fp, 48
	add.d	$s1, $s6, $a0
	st.d	$s1, $fp, 56
.LBB3_211:                              #   in Loop: Header=BB3_212 Depth=2
	ld.bu	$a0, $s6, 0
	addi.w	$s2, $s2, 8
	addi.d	$s6, $s6, 1
	sll.w	$a0, $a0, $s2
	addi.w	$a1, $zero, -4
	or	$s4, $a0, $s4
	bge	$s2, $a1, .LBB3_221
.LBB3_212:                              # %.lr.ph452.i
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$s6, $s1, .LBB3_211
# %bb.213:                              #   in Loop: Header=BB3_212 Depth=2
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_215
# %bb.214:                              #   in Loop: Header=BB3_212 Depth=2
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB3_216
	b	.LBB3_314
.LBB3_215:                              #   in Loop: Header=BB3_212 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB3_314
.LBB3_216:                              #   in Loop: Header=BB3_212 Depth=2
	bnez	$a0, .LBB3_210
# %bb.217:                              #   in Loop: Header=BB3_212 Depth=2
	ld.w	$a0, $fp, 36
	bnez	$a0, .LBB3_313
# %bb.218:                              #   in Loop: Header=BB3_212 Depth=2
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
	b	.LBB3_210
.LBB3_219:                              # %._crit_edge442.i.loopexit
                                        #   in Loop: Header=BB3_1 Depth=1
	addi.w	$a0, $s2, 8
	bstrpick.d	$s4, $s0, 31, 5
	ori	$a1, $zero, 8
	bge	$a1, $a0, .LBB3_209
.LBB3_220:                              #   in Loop: Header=BB3_1 Depth=1
	addi.d	$a0, $a0, -5
	b	.LBB3_222
.LBB3_221:                              # %._crit_edge453.i.loopexit
                                        #   in Loop: Header=BB3_1 Depth=1
	addi.d	$a0, $s2, 8
.LBB3_222:                              # %._crit_edge453.i
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
	b	.LBB3_224
	.p2align	4, , 16
.LBB3_223:                              # %._crit_edge463.i
                                        #   in Loop: Header=BB3_224 Depth=2
	pcalau12i	$a0, %pc_hi20(mszip_bitlen_order)
	addi.d	$a0, $a0, %pc_lo12(mszip_bitlen_order)
	ldx.bu	$a1, $a0, $s2
	andi	$a2, $s5, 7
	addi.d	$a3, $sp, 501
	stx.b	$a2, $a1, $a3
	bstrpick.d	$s5, $s5, 31, 3
	addi.d	$s2, $s2, 1
	addi.w	$s8, $s8, -3
	beq	$s2, $s4, .LBB3_236
.LBB3_224:                              # %.preheader307.i
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_227 Depth 3
	ori	$a0, $zero, 2
	bge	$a0, $s8, .LBB3_227
	b	.LBB3_223
	.p2align	4, , 16
.LBB3_225:                              #   in Loop: Header=BB3_227 Depth=3
	ld.d	$s6, $fp, 40
	st.d	$s6, $fp, 48
	add.d	$s1, $s6, $a0
	st.d	$s1, $fp, 56
.LBB3_226:                              #   in Loop: Header=BB3_227 Depth=3
	ld.bu	$a0, $s6, 0
	addi.d	$s6, $s6, 1
	sll.w	$a0, $a0, $s7
	or	$s5, $a0, $s5
	addi.w	$a0, $zero, -5
	addi.w	$s8, $s7, 8
	bge	$s7, $a0, .LBB3_223
.LBB3_227:                              # %.lr.ph462.i
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_224 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s7, $s8
	bltu	$s6, $s1, .LBB3_226
# %bb.228:                              #   in Loop: Header=BB3_227 Depth=3
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_230
# %bb.229:                              #   in Loop: Header=BB3_227 Depth=3
	ld.d	$a0, $a0, 0
	jirl	$ra, $a3, 0
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB3_231
	b	.LBB3_314
.LBB3_230:                              #   in Loop: Header=BB3_227 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB3_314
.LBB3_231:                              #   in Loop: Header=BB3_227 Depth=3
	bnez	$a0, .LBB3_225
# %bb.232:                              #   in Loop: Header=BB3_227 Depth=3
	ld.w	$a0, $fp, 36
	bnez	$a0, .LBB3_313
# %bb.233:                              #   in Loop: Header=BB3_227 Depth=3
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
	b	.LBB3_225
.LBB3_234:                              # %.lr.ph803.3
                                        #   in Loop: Header=BB3_1 Depth=1
	st.b	$a0, $sp, 179
	ori	$a0, $zero, 32
	bne	$s8, $a0, .LBB3_324
# %bb.235:                              #   in Loop: Header=BB3_1 Depth=1
	andi	$a0, $s5, 255
	move	$s5, $zero
	lu12i.w	$s8, 8
	b	.LBB3_181
.LBB3_236:                              # %.preheader306.i
                                        #   in Loop: Header=BB3_1 Depth=1
	ori	$a2, $zero, 15
	beq	$s0, $a2, .LBB3_238
	.p2align	4, , 16
.LBB3_237:                              # %.lr.ph474.i
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $a0, $s0
	ld.bu	$a1, $a1, 4
	addi.d	$s0, $s0, 1
	stx.b	$zero, $a1, $a3
	bne	$s0, $a2, .LBB3_237
.LBB3_238:                              # %._crit_edge475.i
                                        #   in Loop: Header=BB3_1 Depth=1
	ori	$a0, $zero, 19
	ori	$a1, $zero, 7
	addi.d	$a2, $sp, 501
	addi.d	$a3, $sp, 520
	pcaddu18i	$ra, %call36(mszip_make_decode_table)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 168                   # 8-byte Folded Reload
	addi.d	$s4, $sp, 176
	bnez	$a0, .LBB3_325
# %bb.239:                              # %.preheader304.i
                                        #   in Loop: Header=BB3_1 Depth=1
	move	$s0, $zero
	move	$a2, $zero
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
.LBB3_240:                              # %.preheader303.i
                                        #   Parent Loop BB3_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_246 Depth 3
                                        #       Child Loop BB3_261 Depth 3
                                        #       Child Loop BB3_274 Depth 3
                                        #       Child Loop BB3_285 Depth 3
                                        #       Child Loop BB3_298 Depth 3
                                        #       Child Loop BB3_301 Depth 3
	st.d	$a2, $sp, 0                     # 8-byte Folded Spill
	ori	$a0, $zero, 6
	bge	$a0, $s8, .LBB3_246
# %bb.241:                              #   in Loop: Header=BB3_240 Depth=2
	move	$a2, $s6
.LBB3_242:                              # %._crit_edge481.i
                                        #   in Loop: Header=BB3_240 Depth=2
	andi	$a0, $s5, 127
	slli.d	$a0, $a0, 1
	addi.d	$a1, $sp, 520
	ldx.hu	$a1, $a0, $a1
	addi.d	$a0, $sp, 501
	ldx.bu	$a0, $a1, $a0
	srl.w	$s5, $s5, $a0
	sub.w	$s8, $s8, $a0
	ori	$a0, $zero, 15
	bltu	$a0, $a1, .LBB3_253
# %bb.243:                              #   in Loop: Header=BB3_240 Depth=2
	bstrpick.d	$a0, $s0, 31, 0
	stx.b	$a1, $a0, $s4
	addi.w	$a3, $s0, 1
	move	$s6, $a2
	b	.LBB3_303
.LBB3_244:                              #   in Loop: Header=BB3_246 Depth=3
	ld.d	$s6, $fp, 40
	st.d	$s6, $fp, 48
	add.d	$s1, $s6, $a0
	st.d	$s1, $fp, 56
.LBB3_245:                              #   in Loop: Header=BB3_246 Depth=3
	ld.bu	$a0, $s6, 0
	addi.d	$a2, $s6, 1
	sll.w	$a0, $a0, $s2
	or	$s5, $a0, $s5
	addi.w	$a0, $zero, -1
	addi.w	$s8, $s2, 8
	move	$s6, $a2
	bge	$s2, $a0, .LBB3_242
.LBB3_246:                              # %.lr.ph480.i
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_240 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s2, $s8
	bltu	$s6, $s1, .LBB3_245
# %bb.247:                              #   in Loop: Header=BB3_246 Depth=3
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_249
# %bb.248:                              #   in Loop: Header=BB3_246 Depth=3
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB3_250
	b	.LBB3_314
.LBB3_249:                              #   in Loop: Header=BB3_246 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB3_314
.LBB3_250:                              #   in Loop: Header=BB3_246 Depth=3
	bnez	$a0, .LBB3_244
# %bb.251:                              #   in Loop: Header=BB3_246 Depth=3
	ld.w	$a0, $fp, 36
	bnez	$a0, .LBB3_313
# %bb.252:                              #   in Loop: Header=BB3_246 Depth=3
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
	b	.LBB3_244
.LBB3_253:                              #   in Loop: Header=BB3_240 Depth=2
	ori	$a0, $zero, 16
	beq	$a1, $a0, .LBB3_281
# %bb.254:                              #   in Loop: Header=BB3_240 Depth=2
	ori	$a0, $zero, 17
	beq	$a1, $a0, .LBB3_268
# %bb.255:                              #   in Loop: Header=BB3_240 Depth=2
	ori	$a0, $zero, 18
	bne	$a1, $a0, .LBB3_327
# %bb.256:                              # %.preheader302.i
                                        #   in Loop: Header=BB3_240 Depth=2
	ori	$a0, $zero, 6
	bge	$a0, $s8, .LBB3_261
.LBB3_257:                              # %._crit_edge491.i
                                        #   in Loop: Header=BB3_240 Depth=2
	move	$a0, $zero
	andi	$a1, $s5, 127
	bstrpick.d	$s5, $s5, 31, 7
	addi.w	$s8, $s8, -7
	addi.d	$a1, $a1, 11
	b	.LBB3_270
.LBB3_258:                              #   in Loop: Header=BB3_261 Depth=3
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
.LBB3_259:                              #   in Loop: Header=BB3_261 Depth=3
	ld.d	$a2, $fp, 40
	st.d	$a2, $fp, 48
	add.d	$s1, $a2, $a0
	st.d	$s1, $fp, 56
.LBB3_260:                              #   in Loop: Header=BB3_261 Depth=3
	ld.bu	$a0, $a2, 0
	addi.d	$a2, $a2, 1
	sll.w	$a0, $a0, $s2
	or	$s5, $a0, $s5
	addi.w	$a0, $zero, -1
	addi.w	$s8, $s2, 8
	bge	$s2, $a0, .LBB3_257
.LBB3_261:                              # %.lr.ph490.i
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_240 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s2, $s8
	bltu	$a2, $s1, .LBB3_260
# %bb.262:                              #   in Loop: Header=BB3_261 Depth=3
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_264
# %bb.263:                              #   in Loop: Header=BB3_261 Depth=3
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	b	.LBB3_265
.LBB3_264:                              #   in Loop: Header=BB3_261 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB3_265:                              #   in Loop: Header=BB3_261 Depth=3
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB3_314
# %bb.266:                              #   in Loop: Header=BB3_261 Depth=3
	bnez	$a0, .LBB3_259
# %bb.267:                              #   in Loop: Header=BB3_261 Depth=3
	ld.w	$a0, $fp, 36
	beqz	$a0, .LBB3_258
	b	.LBB3_313
.LBB3_268:                              # %.preheader301.i
                                        #   in Loop: Header=BB3_240 Depth=2
	ori	$a0, $zero, 2
	bge	$a0, $s8, .LBB3_274
.LBB3_269:                              # %._crit_edge501.i
                                        #   in Loop: Header=BB3_240 Depth=2
	move	$a0, $zero
	andi	$a1, $s5, 7
	bstrpick.d	$s5, $s5, 31, 3
	addi.w	$s8, $s8, -3
	addi.d	$a1, $a1, 3
.LBB3_270:                              #   in Loop: Header=BB3_240 Depth=2
	ld.d	$t1, $sp, 0                     # 8-byte Folded Reload
	b	.LBB3_294
.LBB3_271:                              #   in Loop: Header=BB3_274 Depth=3
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
.LBB3_272:                              #   in Loop: Header=BB3_274 Depth=3
	ld.d	$a2, $fp, 40
	st.d	$a2, $fp, 48
	add.d	$s1, $a2, $a0
	st.d	$s1, $fp, 56
.LBB3_273:                              #   in Loop: Header=BB3_274 Depth=3
	ld.bu	$a0, $a2, 0
	addi.d	$a2, $a2, 1
	sll.w	$a0, $a0, $s2
	or	$s5, $a0, $s5
	addi.w	$a0, $zero, -5
	addi.w	$s8, $s2, 8
	bge	$s2, $a0, .LBB3_269
.LBB3_274:                              # %.lr.ph500.i
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_240 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s2, $s8
	bltu	$a2, $s1, .LBB3_273
# %bb.275:                              #   in Loop: Header=BB3_274 Depth=3
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_277
# %bb.276:                              #   in Loop: Header=BB3_274 Depth=3
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	b	.LBB3_278
.LBB3_277:                              #   in Loop: Header=BB3_274 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB3_278:                              #   in Loop: Header=BB3_274 Depth=3
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB3_314
# %bb.279:                              #   in Loop: Header=BB3_274 Depth=3
	bnez	$a0, .LBB3_272
# %bb.280:                              #   in Loop: Header=BB3_274 Depth=3
	ld.w	$a0, $fp, 36
	beqz	$a0, .LBB3_271
	b	.LBB3_313
.LBB3_281:                              # %.preheader300.i
                                        #   in Loop: Header=BB3_240 Depth=2
	ori	$a0, $zero, 1
	blt	$a0, $s8, .LBB3_293
# %bb.282:                              # %.lr.ph510.i.preheader
                                        #   in Loop: Header=BB3_240 Depth=2
	move	$a1, $a2
	b	.LBB3_285
.LBB3_283:                              #   in Loop: Header=BB3_285 Depth=3
	ld.d	$a1, $fp, 40
	st.d	$a1, $fp, 48
	add.d	$s1, $a1, $a0
	st.d	$s1, $fp, 56
.LBB3_284:                              #   in Loop: Header=BB3_285 Depth=3
	ld.bu	$a0, $a1, 0
	addi.d	$a2, $a1, 1
	sll.w	$a0, $a0, $s2
	or	$s5, $a0, $s5
	addi.w	$a0, $zero, -6
	addi.w	$s8, $s2, 8
	move	$a1, $a2
	bge	$s2, $a0, .LBB3_293
.LBB3_285:                              # %.lr.ph510.i
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_240 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$s2, $s8
	bltu	$a1, $s1, .LBB3_284
# %bb.286:                              #   in Loop: Header=BB3_285 Depth=3
	ld.d	$a3, $s7, 8
	ld.d	$a1, $fp, 40
	ld.w	$a2, $fp, 88
	beqz	$a3, .LBB3_288
# %bb.287:                              #   in Loop: Header=BB3_285 Depth=3
	ld.d	$a0, $s7, 0
	jirl	$ra, $a3, 0
	b	.LBB3_289
.LBB3_288:                              #   in Loop: Header=BB3_285 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB3_289:                              #   in Loop: Header=BB3_285 Depth=3
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB3_314
# %bb.290:                              #   in Loop: Header=BB3_285 Depth=3
	bnez	$a0, .LBB3_283
# %bb.291:                              #   in Loop: Header=BB3_285 Depth=3
	ld.w	$a0, $fp, 36
	bnez	$a0, .LBB3_313
# %bb.292:                              #   in Loop: Header=BB3_285 Depth=3
	ld.d	$a0, $fp, 40
	st.b	$zero, $a0, 0
	ori	$a0, $zero, 1
	st.w	$a0, $fp, 36
	b	.LBB3_283
.LBB3_293:                              # %._crit_edge511.i
                                        #   in Loop: Header=BB3_240 Depth=2
	andi	$a0, $s5, 3
	bstrpick.d	$s5, $s5, 31, 2
	addi.w	$s8, $s8, -2
	addi.d	$a1, $a0, 3
	ld.d	$t1, $sp, 0                     # 8-byte Folded Reload
	move	$a0, $t1
.LBB3_294:                              #   in Loop: Header=BB3_240 Depth=2
	add.w	$a3, $a1, $s0
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	bltu	$a4, $a3, .LBB3_326
# %bb.295:                              # %.preheader.i.preheader
                                        #   in Loop: Header=BB3_240 Depth=2
	ori	$a3, $zero, 64
	bltu	$a1, $a3, .LBB3_300
# %bb.296:                              # %.preheader.i.preheader
                                        #   in Loop: Header=BB3_240 Depth=2
	sub.d	$a3, $zero, $a1
	bltu	$a3, $s0, .LBB3_300
# %bb.297:                              # %vector.ph1251
                                        #   in Loop: Header=BB3_240 Depth=2
	andi	$a5, $a1, 192
	andi	$a4, $a1, 63
	add.w	$a3, $s0, $a5
	xvreplgr2vr.b	$xr0, $a0
	move	$a6, $a5
.LBB3_298:                              # %vector.body1254
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_240 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$a7, $s0, 31, 0
	add.d	$t0, $s4, $a7
	xvstx	$xr0, $a7, $s4
	xvst	$xr0, $t0, 32
	addi.w	$a6, $a6, -64
	addi.w	$s0, $s0, 64
	bnez	$a6, .LBB3_298
# %bb.299:                              # %middle.block1257
                                        #   in Loop: Header=BB3_240 Depth=2
	bne	$a1, $a5, .LBB3_301
	b	.LBB3_302
.LBB3_300:                              #   in Loop: Header=BB3_240 Depth=2
	move	$a4, $a1
	move	$a3, $s0
	.p2align	4, , 16
.LBB3_301:                              # %.preheader.i
                                        #   Parent Loop BB3_1 Depth=1
                                        #     Parent Loop BB3_240 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.w	$a4, $a4, -1
	bstrpick.d	$a1, $a3, 31, 0
	addi.w	$a3, $a3, 1
	stx.b	$a0, $a1, $s4
	bnez	$a4, .LBB3_301
.LBB3_302:                              #   in Loop: Header=BB3_240 Depth=2
	move	$s6, $a2
	move	$a1, $t1
.LBB3_303:                              # %.loopexit.i
                                        #   in Loop: Header=BB3_240 Depth=2
	move	$s0, $a3
	move	$a2, $a1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	bltu	$a3, $a0, .LBB3_240
# %bb.304:                              #   in Loop: Header=BB3_1 Depth=1
	addi.d	$a1, $sp, 176
	ld.d	$s0, $sp, 128                   # 8-byte Folded Reload
	move	$a0, $s0
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 31
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB3_306
# %bb.305:                              # %.lr.ph526.preheader.i
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
.LBB3_306:                              # %._crit_edge527.i
                                        #   in Loop: Header=BB3_1 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.d	$a1, $s4, $a0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 31
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	beq	$a2, $a0, .LBB3_308
# %bb.307:                              # %.lr.ph530.preheader.i
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
.LBB3_308:                              #   in Loop: Header=BB3_1 Depth=1
	st.d	$s6, $fp, 48
	st.d	$s1, $fp, 56
	st.w	$s5, $fp, 80
	st.w	$s8, $fp, 84
	b	.LBB3_33
.LBB3_309:                              #   in Loop: Header=BB3_1 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.w	$a0, $fp, 12
	andi	$a0, $s3, 1
	beqz	$a0, .LBB3_1
.LBB3_310:
	ld.w	$a1, $fp, 12
	beqz	$a1, .LBB3_323
# %bb.311:
	ld.d	$a2, $fp, 16
	move	$a0, $fp
	jirl	$ra, $a2, 0
	beqz	$a0, .LBB3_323
.LBB3_312:
	addi.w	$a0, $zero, -3
	b	.LBB3_315
.LBB3_313:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB3_314:
	addi.w	$a0, $zero, -123
	move	$a1, $a0
	lu32i.d	$a1, 0
	st.w	$a1, $fp, 24
.LBB3_315:                              # %.thread501
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
.LBB3_316:                              # %split
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
.LBB3_317:                              # %.thread501
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -14
	b	.LBB3_315
.LBB3_318:
	addi.w	$a0, $zero, -11
	b	.LBB3_315
.LBB3_319:
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	b	.LBB3_315
.LBB3_320:
	addi.w	$a0, $zero, -8
	b	.LBB3_315
.LBB3_321:
	addi.w	$a0, $zero, -12
	b	.LBB3_315
.LBB3_322:
	addi.w	$a0, $zero, -2
	b	.LBB3_315
.LBB3_323:
	move	$a0, $zero
	st.d	$s0, $fp, 48
	st.d	$s1, $fp, 56
	st.w	$s5, $fp, 80
	st.w	$s8, $fp, 84
	b	.LBB3_315
.LBB3_324:
	addi.w	$a0, $zero, -4
	b	.LBB3_315
.LBB3_325:
	addi.w	$a0, $zero, -6
	b	.LBB3_315
.LBB3_326:
	addi.w	$a0, $zero, -9
	b	.LBB3_315
.LBB3_327:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -10
	b	.LBB3_315
.LBB3_328:
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	b	.LBB3_317
.Lfunc_end3:
	.size	mszip_inflate, .Lfunc_end3-mszip_inflate
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_27-.LJTI3_0
	.word	.LBB3_32-.LJTI3_0
	.word	.LBB3_158-.LJTI3_0
	.word	.LBB3_315-.LJTI3_0
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
	beqz	$fp, .LBB7_627
# %bb.1:
	move	$s0, $a1
	bltz	$a1, .LBB7_627
# %bb.2:
	ld.w	$a0, $fp, 96
	bnez	$a0, .LBB7_627
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
	bne	$a0, $s1, .LBB7_625
# %bb.6:                                # %._crit_edge3332
	ld.d	$a1, $fp, 128
.LBB7_7:
	ld.d	$a0, $fp, 16
	add.d	$a1, $a1, $s1
	st.d	$a1, $fp, 128
	add.d	$a0, $a0, $s1
	st.d	$a0, $fp, 16
	sub.d	$s0, $s0, $s1
.LBB7_8:
	beqz	$s0, .LBB7_623
# %bb.9:                                # %.split3132
	ld.d	$a0, $fp, 16
	add.d	$a1, $a0, $s0
	srai.d	$a0, $a1, 63
	srli.d	$a2, $a0, 49
	ld.w	$a0, $fp, 52
	add.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 15
	addi.w	$a1, $a1, 1
	bgeu	$a0, $a1, .LBB7_622
# %bb.10:                               # %.lr.ph3142
	st.d	$s0, $sp, 160                   # 8-byte Folded Spill
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	lu12i.w	$a1, 13
	ori	$a1, $a1, 1632
	add.d	$s0, $fp, $a1
	lu12i.w	$a1, 5
	ori	$a2, $a1, 1627
	add.d	$a3, $fp, $a2
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a4, $fp, 32
	ld.w	$a3, $fp, 68
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	ld.w	$a3, $fp, 64
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	ld.w	$a3, $fp, 60
	st.d	$a3, $sp, 168                   # 8-byte Folded Spill
	ld.w	$s7, $fp, 44
	ld.w	$s2, $fp, 148
	ld.w	$s4, $fp, 144
	ld.d	$s3, $fp, 120
	ld.d	$s8, $fp, 112
	addi.d	$s5, $fp, 240
	addi.d	$a3, $fp, 960
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a3, $fp, 1274
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	ori	$a3, $a1, 1082
	add.d	$a3, $fp, $a3
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a3, $fp, 1554
	st.d	$a3, $sp, 184                   # 8-byte Folded Spill
	lu12i.w	$a3, 3
	ori	$a3, $a3, 82
	add.d	$a3, $fp, $a3
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	ori	$a3, $a1, 1576
	add.d	$a3, $fp, $a3
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	ori	$a1, $a1, 1372
	add.d	$a1, $fp, $a1
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	add.d	$a1, $fp, $a2
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a1, $a4, 32
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	ori	$s1, $zero, 1
	lu12i.w	$a1, -256
	lu32i.d	$a1, 0
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	lu12i.w	$a1, -8192
	lu32i.d	$a1, 0
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 208                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
.LBB7_11:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_24 Depth 2
                                        #     Child Loop BB7_35 Depth 2
                                        #     Child Loop BB7_48 Depth 2
                                        #     Child Loop BB7_62 Depth 2
                                        #       Child Loop BB7_286 Depth 3
                                        #       Child Loop BB7_486 Depth 3
                                        #       Child Loop BB7_505 Depth 3
                                        #       Child Loop BB7_519 Depth 3
                                        #         Child Loop BB7_524 Depth 4
                                        #       Child Loop BB7_535 Depth 3
                                        #       Child Loop BB7_67 Depth 3
                                        #         Child Loop BB7_72 Depth 4
                                        #         Child Loop BB7_129 Depth 4
                                        #         Child Loop BB7_258 Depth 4
                                        #         Child Loop BB7_215 Depth 4
                                        #         Child Loop BB7_262 Depth 4
                                        #         Child Loop BB7_204 Depth 4
                                        #         Child Loop BB7_249 Depth 4
                                        #         Child Loop BB7_218 Depth 4
                                        #         Child Loop BB7_222 Depth 4
                                        #         Child Loop BB7_268 Depth 4
                                        #         Child Loop BB7_194 Depth 4
                                        #         Child Loop BB7_231 Depth 4
                                        #         Child Loop BB7_240 Depth 4
                                        #         Child Loop BB7_244 Depth 4
                                        #         Child Loop BB7_273 Depth 4
                                        #       Child Loop BB7_296 Depth 3
                                        #       Child Loop BB7_308 Depth 3
                                        #         Child Loop BB7_313 Depth 4
                                        #         Child Loop BB7_369 Depth 4
                                        #         Child Loop BB7_428 Depth 4
                                        #         Child Loop BB7_449 Depth 4
                                        #         Child Loop BB7_453 Depth 4
                                        #         Child Loop BB7_474 Depth 4
                                        #         Child Loop BB7_440 Depth 4
                                        #         Child Loop BB7_457 Depth 4
                                        #         Child Loop BB7_466 Depth 4
                                        #         Child Loop BB7_470 Depth 4
                                        #         Child Loop BB7_477 Depth 4
                                        #     Child Loop BB7_604 Depth 2
	ld.w	$a1, $fp, 56
	beqz	$a1, .LBB7_13
# %bb.12:                               #   in Loop: Header=BB7_11 Depth=1
	mod.wu	$a0, $a0, $a1
	beqz	$a0, .LBB7_14
.LBB7_13:                               #   in Loop: Header=BB7_11 Depth=1
	ld.bu	$a0, $fp, 90
	bnez	$a0, .LBB7_59
	b	.LBB7_16
.LBB7_14:                               #   in Loop: Header=BB7_11 Depth=1
	ld.w	$a1, $fp, 76
	bnez	$a1, .LBB7_636
# %bb.15:                               # %.thread
                                        #   in Loop: Header=BB7_11 Depth=1
	ori	$a0, $zero, 1
	lu32i.d	$a0, 1
	st.d	$a0, $fp, 60
	st.w	$s1, $fp, 68
	st.h	$zero, $fp, 89
	ori	$a2, $zero, 656
	move	$a0, $s5
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 250
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB7_16:                               # %.preheader1370
                                        #   in Loop: Header=BB7_11 Depth=1
	st.d	$s7, $sp, 136                   # 8-byte Folded Spill
	ori	$s7, $zero, 1
	addi.w	$a0, $s2, 0
	blez	$a0, .LBB7_20
# %bb.17:                               #   in Loop: Header=BB7_11 Depth=1
	move	$a0, $s2
.LBB7_18:                               # %._crit_edge
                                        #   in Loop: Header=BB7_11 Depth=1
	move	$a1, $s4
	slli.d	$s4, $s4, 1
	addi.w	$a2, $zero, -1
	addi.w	$s2, $a0, -1
	bge	$a2, $a1, .LBB7_30
# %bb.19:                               #   in Loop: Header=BB7_11 Depth=1
	move	$a1, $zero
	b	.LBB7_58
.LBB7_20:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB7_11 Depth=1
	ori	$a0, $zero, 16
	sub.d	$s1, $a0, $s2
	b	.LBB7_24
.LBB7_21:                               #   in Loop: Header=BB7_24 Depth=2
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s7, $fp, 92
	ori	$a0, $zero, 2
.LBB7_22:                               #   in Loop: Header=BB7_24 Depth=2
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s3, $s8, $a0
	st.d	$s3, $fp, 120
.LBB7_23:                               #   in Loop: Header=BB7_24 Depth=2
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s1
	or	$s4, $a0, $s4
	addi.d	$a0, $s2, 16
	addi.w	$a1, $s2, 0
	addi.d	$s8, $s8, 2
	addi.w	$a2, $zero, -15
	addi.d	$s1, $s1, -16
	move	$s2, $a0
	bge	$a1, $a2, .LBB7_18
.LBB7_24:                               # %.lr.ph
                                        #   Parent Loop BB7_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $s8, 1
	bltu	$a0, $s3, .LBB7_23
# %bb.25:                               #   in Loop: Header=BB7_24 Depth=2
	ld.d	$a3, $s0, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_27
# %bb.26:                               #   in Loop: Header=BB7_24 Depth=2
	ld.d	$a0, $s0, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB7_28
	b	.LBB7_625
.LBB7_27:                               #   in Loop: Header=BB7_24 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB7_625
.LBB7_28:                               #   in Loop: Header=BB7_24 Depth=2
	bnez	$a0, .LBB7_22
# %bb.29:                               #   in Loop: Header=BB7_24 Depth=2
	ld.bu	$a0, $fp, 92
	beqz	$a0, .LBB7_21
	b	.LBB7_624
.LBB7_30:                               # %.preheader1368
                                        #   in Loop: Header=BB7_11 Depth=1
	addi.w	$a1, $a0, 0
	ori	$a2, $zero, 16
	bltu	$a2, $a1, .LBB7_43
# %bb.31:                               # %.lr.ph2843.preheader
                                        #   in Loop: Header=BB7_11 Depth=1
	addi.d	$s1, $a0, -17
	ori	$a1, $zero, 17
	sub.d	$s2, $a1, $a0
	b	.LBB7_35
.LBB7_32:                               #   in Loop: Header=BB7_35 Depth=2
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s7, $fp, 92
	ori	$a0, $zero, 2
.LBB7_33:                               #   in Loop: Header=BB7_35 Depth=2
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s3, $s8, $a0
	st.d	$s3, $fp, 120
.LBB7_34:                               #   in Loop: Header=BB7_35 Depth=2
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s2
	or	$s4, $a0, $s4
	addi.d	$s8, $s8, 2
	addi.w	$s1, $s1, 16
	addi.d	$s2, $s2, -16
	bgez	$s1, .LBB7_42
.LBB7_35:                               # %.lr.ph2843
                                        #   Parent Loop BB7_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $s8, 1
	bltu	$a0, $s3, .LBB7_34
# %bb.36:                               #   in Loop: Header=BB7_35 Depth=2
	ld.d	$a3, $s0, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_38
# %bb.37:                               #   in Loop: Header=BB7_35 Depth=2
	ld.d	$a0, $s0, 0
	jirl	$ra, $a3, 0
	b	.LBB7_39
.LBB7_38:                               #   in Loop: Header=BB7_35 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB7_39:                               #   in Loop: Header=BB7_35 Depth=2
	bltz	$a0, .LBB7_625
# %bb.40:                               #   in Loop: Header=BB7_35 Depth=2
	bnez	$a0, .LBB7_33
# %bb.41:                               #   in Loop: Header=BB7_35 Depth=2
	ld.bu	$a0, $fp, 92
	beqz	$a0, .LBB7_32
	b	.LBB7_624
.LBB7_42:                               # %._crit_edge2844.loopexit
                                        #   in Loop: Header=BB7_11 Depth=1
	addi.w	$s2, $s1, 16
.LBB7_43:                               # %._crit_edge2844
                                        #   in Loop: Header=BB7_11 Depth=1
	slli.d	$s1, $s4, 16
	ori	$a0, $zero, 31
	blt	$a0, $s2, .LBB7_55
# %bb.44:                               # %.lr.ph2854.preheader
                                        #   in Loop: Header=BB7_11 Depth=1
	addi.d	$s5, $s2, -32
	ori	$a0, $zero, 32
	sub.d	$s2, $a0, $s2
	b	.LBB7_48
.LBB7_45:                               #   in Loop: Header=BB7_48 Depth=2
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s7, $fp, 92
	ori	$a0, $zero, 2
.LBB7_46:                               #   in Loop: Header=BB7_48 Depth=2
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s3, $s8, $a0
	st.d	$s3, $fp, 120
.LBB7_47:                               #   in Loop: Header=BB7_48 Depth=2
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s2
	or	$s1, $a0, $s1
	addi.d	$s8, $s8, 2
	addi.w	$s5, $s5, 16
	addi.d	$s2, $s2, -16
	bgez	$s5, .LBB7_56
.LBB7_48:                               # %.lr.ph2854
                                        #   Parent Loop BB7_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.d	$a0, $s8, 1
	bltu	$a0, $s3, .LBB7_47
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
	bltz	$a0, .LBB7_625
# %bb.53:                               #   in Loop: Header=BB7_48 Depth=2
	bnez	$a0, .LBB7_46
# %bb.54:                               #   in Loop: Header=BB7_48 Depth=2
	ld.bu	$a0, $fp, 92
	beqz	$a0, .LBB7_45
	b	.LBB7_624
.LBB7_55:                               #   in Loop: Header=BB7_11 Depth=1
	addi.d	$a0, $s2, -16
	b	.LBB7_57
.LBB7_56:                               # %._crit_edge2855.loopexit
                                        #   in Loop: Header=BB7_11 Depth=1
	addi.d	$a0, $s5, 16
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
.LBB7_57:                               # %._crit_edge2855
                                        #   in Loop: Header=BB7_11 Depth=1
	bstrins.d	$s4, $zero, 15, 0
	bstrpick.d	$a1, $s1, 31, 16
	or	$a1, $a1, $s4
	slli.d	$s4, $s1, 16
	addi.w	$s2, $a0, -16
.LBB7_58:                               #   in Loop: Header=BB7_11 Depth=1
	st.w	$a1, $fp, 80
	ori	$s1, $zero, 1
	st.b	$s1, $fp, 90
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
.LBB7_59:                               #   in Loop: Header=BB7_11 Depth=1
	ld.d	$a0, $fp, 24
	lu12i.w	$a2, 8
	move	$a1, $a2
	beqz	$a0, .LBB7_61
# %bb.60:                               #   in Loop: Header=BB7_11 Depth=1
	ld.d	$a1, $fp, 16
	sub.d	$a0, $a0, $a1
	slt	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a1, $a0, $a1
.LBB7_61:                               # %.split3107
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.w	$a0, $fp, 48
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	sub.d	$a1, $a1, $s7
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	blt	$a1, $s1, .LBB7_591
.LBB7_62:                               # %.lr.ph3117
                                        #   Parent Loop BB7_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_286 Depth 3
                                        #       Child Loop BB7_486 Depth 3
                                        #       Child Loop BB7_505 Depth 3
                                        #       Child Loop BB7_519 Depth 3
                                        #         Child Loop BB7_524 Depth 4
                                        #       Child Loop BB7_535 Depth 3
                                        #       Child Loop BB7_67 Depth 3
                                        #         Child Loop BB7_72 Depth 4
                                        #         Child Loop BB7_129 Depth 4
                                        #         Child Loop BB7_258 Depth 4
                                        #         Child Loop BB7_215 Depth 4
                                        #         Child Loop BB7_262 Depth 4
                                        #         Child Loop BB7_204 Depth 4
                                        #         Child Loop BB7_249 Depth 4
                                        #         Child Loop BB7_218 Depth 4
                                        #         Child Loop BB7_222 Depth 4
                                        #         Child Loop BB7_268 Depth 4
                                        #         Child Loop BB7_194 Depth 4
                                        #         Child Loop BB7_231 Depth 4
                                        #         Child Loop BB7_240 Depth 4
                                        #         Child Loop BB7_244 Depth 4
                                        #         Child Loop BB7_273 Depth 4
                                        #       Child Loop BB7_296 Depth 3
                                        #       Child Loop BB7_308 Depth 3
                                        #         Child Loop BB7_313 Depth 4
                                        #         Child Loop BB7_369 Depth 4
                                        #         Child Loop BB7_428 Depth 4
                                        #         Child Loop BB7_449 Depth 4
                                        #         Child Loop BB7_453 Depth 4
                                        #         Child Loop BB7_474 Depth 4
                                        #         Child Loop BB7_440 Depth 4
                                        #         Child Loop BB7_457 Depth 4
                                        #         Child Loop BB7_466 Depth 4
                                        #         Child Loop BB7_470 Depth 4
                                        #         Child Loop BB7_477 Depth 4
	ld.w	$a0, $fp, 76
	beqz	$a0, .LBB7_276
.LBB7_63:                               #   in Loop: Header=BB7_62 Depth=2
	ld.w	$a0, $fp, 76
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	slt	$a2, $a0, $a1
	masknez	$a3, $a1, $a2
	ld.bu	$a1, $fp, 89
	maskeqz	$a2, $a0, $a2
	or	$a2, $a2, $a3
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	sub.d	$a2, $a0, $a2
	st.w	$a2, $fp, 76
	beq	$a1, $s1, .LBB7_306
# %bb.64:                               #   in Loop: Header=BB7_62 Depth=2
	ori	$a2, $zero, 3
	beq	$a1, $a2, .LBB7_293
# %bb.65:                               #   in Loop: Header=BB7_62 Depth=2
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB7_634
# %bb.66:                               # %.preheader1356
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	blt	$a0, $s1, .LBB7_495
.LBB7_67:                               # %.preheader1350
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_72 Depth 4
                                        #         Child Loop BB7_129 Depth 4
                                        #         Child Loop BB7_258 Depth 4
                                        #         Child Loop BB7_215 Depth 4
                                        #         Child Loop BB7_262 Depth 4
                                        #         Child Loop BB7_204 Depth 4
                                        #         Child Loop BB7_249 Depth 4
                                        #         Child Loop BB7_218 Depth 4
                                        #         Child Loop BB7_222 Depth 4
                                        #         Child Loop BB7_268 Depth 4
                                        #         Child Loop BB7_194 Depth 4
                                        #         Child Loop BB7_231 Depth 4
                                        #         Child Loop BB7_240 Depth 4
                                        #         Child Loop BB7_244 Depth 4
                                        #         Child Loop BB7_273 Depth 4
	ori	$s7, $zero, 1
	addi.w	$a0, $s2, 0
	ori	$a1, $zero, 15
	blt	$a1, $a0, .LBB7_78
# %bb.68:                               # %.lr.ph2934.preheader
                                        #   in Loop: Header=BB7_67 Depth=3
	ori	$a0, $zero, 16
	sub.d	$s1, $a0, $s2
	b	.LBB7_72
.LBB7_69:                               #   in Loop: Header=BB7_72 Depth=4
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s7, $fp, 92
	ori	$a0, $zero, 2
.LBB7_70:                               #   in Loop: Header=BB7_72 Depth=4
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s3, $s8, $a0
	st.d	$s3, $fp, 120
.LBB7_71:                               #   in Loop: Header=BB7_72 Depth=4
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s1
	or	$s4, $a0, $s4
	addi.d	$a0, $s2, 16
	addi.w	$a1, $s2, 0
	addi.d	$s8, $s8, 2
	addi.d	$s1, $s1, -16
	move	$s2, $a0
	bgez	$a1, .LBB7_79
.LBB7_72:                               # %.lr.ph2934
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $s8, 1
	bltu	$a0, $s3, .LBB7_71
# %bb.73:                               #   in Loop: Header=BB7_72 Depth=4
	ld.d	$a3, $s0, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_75
# %bb.74:                               #   in Loop: Header=BB7_72 Depth=4
	ld.d	$a0, $s0, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB7_76
	b	.LBB7_625
.LBB7_75:                               #   in Loop: Header=BB7_72 Depth=4
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB7_625
.LBB7_76:                               #   in Loop: Header=BB7_72 Depth=4
	bnez	$a0, .LBB7_70
# %bb.77:                               #   in Loop: Header=BB7_72 Depth=4
	ld.bu	$a0, $fp, 92
	beqz	$a0, .LBB7_69
	b	.LBB7_624
.LBB7_78:                               #   in Loop: Header=BB7_67 Depth=3
	move	$a0, $s2
.LBB7_79:                               # %._crit_edge2935
                                        #   in Loop: Header=BB7_67 Depth=3
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	and	$a1, $s4, $a1
	srli.d	$a1, $a1, 19
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_121
# %bb.80:                               # %.preheader1348.preheader
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.81:                               #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 19, 19
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_121
# %bb.82:                               # %.preheader1348.1
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.83:                               #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 18, 18
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_121
# %bb.84:                               # %.preheader1348.2
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.85:                               #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 17, 17
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_121
# %bb.86:                               # %.preheader1348.3
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.87:                               #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 16, 16
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_121
# %bb.88:                               # %.preheader1348.4
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.89:                               #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 15, 15
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_121
# %bb.90:                               # %.preheader1348.5
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.91:                               #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 14, 14
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_121
# %bb.92:                               # %.preheader1348.6
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.93:                               #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 13, 13
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_121
# %bb.94:                               # %.preheader1348.7
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.95:                               #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 12, 12
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_120
# %bb.96:                               # %.preheader1348.8
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.97:                               #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 11, 11
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_120
# %bb.98:                               # %.preheader1348.9
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.99:                               #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 10, 10
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_120
# %bb.100:                              # %.preheader1348.10
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.101:                              #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 9, 9
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_120
# %bb.102:                              # %.preheader1348.11
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.103:                              #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 8, 8
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_120
# %bb.104:                              # %.preheader1348.12
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.105:                              #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 7, 7
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_120
# %bb.106:                              # %.preheader1348.13
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.107:                              #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 6, 6
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_120
# %bb.108:                              # %.preheader1348.14
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.109:                              #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 5, 5
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_120
# %bb.110:                              # %.preheader1348.15
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.111:                              #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 4, 4
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_120
# %bb.112:                              # %.preheader1348.16
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.113:                              #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 3, 3
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_120
# %bb.114:                              # %.preheader1348.17
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.115:                              #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 2, 2
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_120
# %bb.116:                              # %.preheader1348.18
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.117:                              #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 1, 1
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_120
# %bb.118:                              # %.preheader1348.19
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.119:                              #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a1, $s1, 1
	andi	$a2, $s4, 1
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 655
	bgeu	$a1, $s1, .LBB7_121
	b	.LBB7_640
.LBB7_120:                              #   in Loop: Header=BB7_67 Depth=3
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
.LBB7_121:                              # %.loopexit1349
                                        #   in Loop: Header=BB7_67 Depth=3
	ldx.bu	$a1, $s5, $s1
	sll.w	$s4, $s4, $a1
	sub.w	$s2, $a0, $a1
	ori	$a2, $zero, 255
	bltu	$a2, $s1, .LBB7_123
# %bb.122:                              #   in Loop: Header=BB7_67 Depth=3
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.w	$s7, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	stx.b	$s1, $a1, $a0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ori	$s1, $zero, 1
	b	.LBB7_275
.LBB7_123:                              #   in Loop: Header=BB7_67 Depth=3
	andi	$a7, $s1, 7
	ori	$a2, $zero, 7
	bne	$a7, $a2, .LBB7_179
# %bb.124:                              # %.preheader1346
                                        #   in Loop: Header=BB7_67 Depth=3
	ori	$a2, $zero, 15
	blt	$a2, $s2, .LBB7_136
# %bb.125:                              # %.lr.ph2944.preheader
                                        #   in Loop: Header=BB7_67 Depth=3
	sub.d	$a0, $a1, $a0
	addi.d	$s5, $a0, 16
	b	.LBB7_129
.LBB7_126:                              #   in Loop: Header=BB7_129 Depth=4
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s7, $fp, 92
	ori	$a0, $zero, 2
.LBB7_127:                              #   in Loop: Header=BB7_129 Depth=4
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s3, $s8, $a0
	st.d	$s3, $fp, 120
.LBB7_128:                              #   in Loop: Header=BB7_129 Depth=4
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s5
	or	$s4, $a0, $s4
	addi.w	$s2, $s6, 16
	addi.d	$s8, $s8, 2
	addi.d	$s5, $s5, -16
	bgez	$s6, .LBB7_136
.LBB7_129:                              # %.lr.ph2944
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $s8, 1
	move	$s6, $s2
	bltu	$a0, $s3, .LBB7_128
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
	bltz	$a0, .LBB7_625
# %bb.134:                              #   in Loop: Header=BB7_129 Depth=4
	bnez	$a0, .LBB7_127
# %bb.135:                              #   in Loop: Header=BB7_129 Depth=4
	ld.bu	$a0, $fp, 92
	beqz	$a0, .LBB7_126
	b	.LBB7_624
.LBB7_136:                              # %._crit_edge2945
                                        #   in Loop: Header=BB7_67 Depth=3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	and	$a0, $s4, $a0
	srli.d	$a0, $a0, 19
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_177
# %bb.137:                              # %.preheader1344.preheader
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.138:                              #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 19, 19
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_178
# %bb.139:                              # %.preheader1344.1
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.140:                              #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 18, 18
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_178
# %bb.141:                              # %.preheader1344.2
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.142:                              #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 17, 17
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_178
# %bb.143:                              # %.preheader1344.3
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.144:                              #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 16, 16
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_178
# %bb.145:                              # %.preheader1344.4
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.146:                              #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 15, 15
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_178
# %bb.147:                              # %.preheader1344.5
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.148:                              #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 14, 14
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_177
# %bb.149:                              # %.preheader1344.6
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.150:                              #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 13, 13
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_177
# %bb.151:                              # %.preheader1344.7
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.152:                              #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 12, 12
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_177
# %bb.153:                              # %.preheader1344.8
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.154:                              #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 11, 11
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_177
# %bb.155:                              # %.preheader1344.9
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.156:                              #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 10, 10
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_177
# %bb.157:                              # %.preheader1344.10
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.158:                              #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 9, 9
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_177
# %bb.159:                              # %.preheader1344.11
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.160:                              #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 8, 8
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_177
# %bb.161:                              # %.preheader1344.12
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.162:                              #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 7, 7
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_177
# %bb.163:                              # %.preheader1344.13
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.164:                              #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 6, 6
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_177
# %bb.165:                              # %.preheader1344.14
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.166:                              #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 5, 5
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_177
# %bb.167:                              # %.preheader1344.15
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.168:                              #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 4, 4
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_177
# %bb.169:                              # %.preheader1344.16
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.170:                              #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 3, 3
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_177
# %bb.171:                              # %.preheader1344.17
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.172:                              #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 2, 2
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_177
# %bb.173:                              # %.preheader1344.18
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.174:                              #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 1, 1
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_177
# %bb.175:                              # %.preheader1344.19
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.176:                              #   in Loop: Header=BB7_67 Depth=3
	slli.d	$a0, $a0, 1
	andi	$a1, $s4, 1
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 249
	bgeu	$a1, $a0, .LBB7_178
	b	.LBB7_640
.LBB7_177:                              #   in Loop: Header=BB7_67 Depth=3
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
.LBB7_178:                              # %.loopexit1345
                                        #   in Loop: Header=BB7_67 Depth=3
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	sll.w	$s4, $s4, $a1
	sub.w	$s2, $s2, $a1
	addi.d	$a0, $a0, 7
	bstrpick.d	$a7, $a0, 15, 0
.LBB7_179:                              #   in Loop: Header=BB7_67 Depth=3
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	addi.d	$a0, $s1, -256
	bstrpick.d	$a0, $a0, 31, 3
	beqz	$a0, .LBB7_184
# %bb.180:                              #   in Loop: Header=BB7_67 Depth=3
	ori	$s1, $zero, 1
	ori	$a1, $zero, 2
	beq	$a0, $a1, .LBB7_183
# %bb.181:                              #   in Loop: Header=BB7_67 Depth=3
	bne	$a0, $s1, .LBB7_200
# %bb.182:                              #   in Loop: Header=BB7_67 Depth=3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB7_186
.LBB7_183:                              #   in Loop: Header=BB7_67 Depth=3
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	b	.LBB7_186
.LBB7_184:                              #   in Loop: Header=BB7_67 Depth=3
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
.LBB7_185:                              #   in Loop: Header=BB7_67 Depth=3
	ori	$s1, $zero, 1
.LBB7_186:                              #   in Loop: Header=BB7_67 Depth=3
	ld.w	$a2, $fp, 40
	addi.w	$a0, $a7, 2
	move	$a6, $s7
	add.w	$s7, $a0, $s7
	bltu	$a2, $s7, .LBB7_635
# %bb.187:                              #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a4, $a6, 31, 0
	addi.w	$a3, $a1, 0
	move	$a5, $a1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a4
	st.d	$a5, $sp, 168                   # 8-byte Folded Spill
	bgeu	$a6, $a3, .LBB7_196
# %bb.188:                              #   in Loop: Header=BB7_67 Depth=3
	sub.w	$a5, $a5, $a6
	blt	$a2, $a5, .LBB7_638
# %bb.189:                              #   in Loop: Header=BB7_67 Depth=3
	sub.d	$a2, $a2, $a5
	bstrpick.d	$t0, $a2, 31, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	add.d	$a3, $a2, $t0
	bge	$a5, $a0, .LBB7_208
# %bb.190:                              #   in Loop: Header=BB7_67 Depth=3
	sub.w	$a2, $a0, $a5
	blt	$a5, $s1, .LBB7_232
# %bb.191:                              # %.lr.ph3017.preheader
                                        #   in Loop: Header=BB7_67 Depth=3
	ori	$a7, $zero, 64
	bltu	$a5, $a7, .LBB7_229
# %bb.192:                              # %.lr.ph3017.preheader
                                        #   in Loop: Header=BB7_67 Depth=3
	sub.d	$a6, $a4, $t0
	bltu	$a6, $a7, .LBB7_229
# %bb.193:                              # %vector.ph3832
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a6, $a5, 30, 6
	slli.d	$a7, $a6, 6
	add.d	$a1, $a1, $a7
	add.d	$a3, $a3, $a7
	sub.d	$a6, $a5, $a7
	ld.d	$t1, $sp, 24                    # 8-byte Folded Reload
	add.d	$t0, $t1, $t0
	add.d	$a4, $t1, $a4
	move	$t1, $a7
.LBB7_194:                              # %vector.body3836
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvld	$xr0, $t0, -32
	xvld	$xr1, $t0, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$t1, $t1, -64
	addi.d	$t0, $t0, 64
	addi.d	$a4, $a4, 64
	bnez	$t1, .LBB7_194
# %bb.195:                              # %middle.block3843
                                        #   in Loop: Header=BB7_67 Depth=3
	bne	$a7, $a5, .LBB7_230
	b	.LBB7_232
.LBB7_196:                              # %iter.check3853
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a5, $a5, 31, 0
	sub.d	$a2, $a1, $a5
	ori	$a6, $zero, 14
	bltu	$a7, $a6, .LBB7_207
# %bb.197:                              # %iter.check3853
                                        #   in Loop: Header=BB7_67 Depth=3
	ori	$a6, $zero, 64
	bltu	$a3, $a6, .LBB7_207
# %bb.198:                              # %vector.main.loop.iter.check3855
                                        #   in Loop: Header=BB7_67 Depth=3
	sub.d	$a3, $zero, $a5
	ori	$a5, $zero, 62
	bgeu	$a7, $a5, .LBB7_217
# %bb.199:                              #   in Loop: Header=BB7_67 Depth=3
	move	$a6, $zero
	b	.LBB7_221
.LBB7_200:                              #   in Loop: Header=BB7_67 Depth=3
	ori	$s7, $zero, 1
	addi.w	$a0, $a0, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.bu	$s1, $a1, $a0
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	addi.d	$a0, $a0, -2
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ori	$a0, $zero, 4
	st.d	$a7, $sp, 176                   # 8-byte Folded Spill
	bltu	$s1, $a0, .LBB7_209
# %bb.201:                              #   in Loop: Header=BB7_67 Depth=3
	addi.d	$s6, $s1, -3
	bge	$s2, $s6, .LBB7_224
# %bb.202:                              # %.lr.ph2975.preheader
                                        #   in Loop: Header=BB7_67 Depth=3
	ori	$a0, $zero, 16
	sub.d	$s5, $a0, $s2
	b	.LBB7_204
.LBB7_203:                              #   in Loop: Header=BB7_204 Depth=4
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s5
	or	$s4, $a0, $s4
	addi.w	$s2, $s2, 16
	addi.d	$s8, $s8, 2
	addi.d	$s5, $s5, -16
	bge	$s2, $s6, .LBB7_224
.LBB7_204:                              # %.lr.ph2975
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $s8, 1
	bltu	$a0, $s3, .LBB7_203
# %bb.205:                              #   in Loop: Header=BB7_204 Depth=4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_629
# %bb.206:                              #   in Loop: Header=BB7_204 Depth=4
	ld.d	$s8, $fp, 112
	ld.d	$s3, $fp, 120
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	b	.LBB7_203
.LBB7_207:                              #   in Loop: Header=BB7_67 Depth=3
	move	$a5, $a0
	b	.LBB7_267
.LBB7_208:                              #   in Loop: Header=BB7_67 Depth=3
	move	$a2, $a0
	b	.LBB7_233
.LBB7_209:                              #   in Loop: Header=BB7_67 Depth=3
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	beqz	$s1, .LBB7_253
# %bb.210:                              #   in Loop: Header=BB7_67 Depth=3
	ori	$a0, $zero, 3
	bne	$s1, $a0, .LBB7_254
# %bb.211:                              # %.preheader1343
                                        #   in Loop: Header=BB7_67 Depth=3
	ori	$a0, $zero, 15
	blt	$a0, $s2, .LBB7_260
# %bb.212:                              # %.lr.ph2954.preheader
                                        #   in Loop: Header=BB7_67 Depth=3
	ori	$a0, $zero, 16
	sub.d	$s1, $a0, $s2
	b	.LBB7_215
.LBB7_213:                              #   in Loop: Header=BB7_215 Depth=4
	ld.d	$s8, $fp, 112
	ld.d	$s3, $fp, 120
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
.LBB7_214:                              #   in Loop: Header=BB7_215 Depth=4
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s1
	or	$s4, $a0, $s4
	addi.w	$s2, $s5, 16
	addi.d	$s8, $s8, 2
	addi.d	$s1, $s1, -16
	bgez	$s5, .LBB7_260
.LBB7_215:                              # %.lr.ph2954
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $s8, 1
	move	$s5, $s2
	bltu	$a0, $s3, .LBB7_214
# %bb.216:                              #   in Loop: Header=BB7_215 Depth=4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_213
	b	.LBB7_629
.LBB7_217:                              # %vector.ph3856
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a5, $a0, 15, 6
	slli.d	$a6, $a5, 6
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	add.d	$a5, $a5, $a4
	move	$a7, $a6
.LBB7_218:                              # %vector.body3859
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.d	$t0, $a5, $a3
	xvld	$xr0, $t0, -32
	xvldx	$xr1, $a5, $a3
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a7, $a7, -64
	addi.d	$a5, $a5, 64
	bnez	$a7, .LBB7_218
# %bb.219:                              # %middle.block3866
                                        #   in Loop: Header=BB7_67 Depth=3
	beq	$a6, $a0, .LBB7_274
# %bb.220:                              # %vec.epilog.iter.check3871
                                        #   in Loop: Header=BB7_67 Depth=3
	andi	$a5, $a0, 48
	beqz	$a5, .LBB7_266
.LBB7_221:                              # %vec.epilog.ph3870
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$t0, $a0, 15, 4
	slli.d	$a7, $t0, 4
	sub.d	$a5, $a0, $a7
	alsl.d	$a1, $t0, $a1, 4
	alsl.d	$a2, $t0, $a2, 4
	sub.d	$t0, $a6, $a7
	add.d	$a4, $a6, $a4
	ld.d	$a6, $sp, 152                   # 8-byte Folded Reload
	add.d	$a4, $a6, $a4
.LBB7_222:                              # %vec.epilog.vector.body3877
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vldx	$vr0, $a4, $a3
	vst	$vr0, $a4, 0
	addi.d	$t0, $t0, 16
	addi.d	$a4, $a4, 16
	bnez	$t0, .LBB7_222
# %bb.223:                              # %vec.epilog.middle.block3883
                                        #   in Loop: Header=BB7_67 Depth=3
	bne	$a7, $a0, .LBB7_267
	b	.LBB7_274
.LBB7_224:                              # %._crit_edge2976
                                        #   in Loop: Header=BB7_67 Depth=3
	sub.w	$s5, $s2, $s6
	sll.w	$s2, $s4, $s6
	ori	$a0, $zero, 15
	bltu	$a0, $s5, .LBB7_246
# %bb.225:                              # %.lr.ph2986
                                        #   in Loop: Header=BB7_67 Depth=3
	addi.d	$a0, $s8, 1
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	bltu	$a0, $s3, .LBB7_228
# %bb.226:                              #   in Loop: Header=BB7_67 Depth=3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_629
# %bb.227:                              #   in Loop: Header=BB7_67 Depth=3
	ld.d	$s8, $fp, 112
	ld.d	$s3, $fp, 120
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
.LBB7_228:                              # %._crit_edge2987
                                        #   in Loop: Header=BB7_67 Depth=3
	ld.hu	$a0, $s8, 0
	ori	$a1, $zero, 16
	sub.d	$a1, $a1, $s5
	ori	$s5, $s5, 16
	sll.w	$a0, $a0, $a1
	or	$s2, $a0, $s2
	addi.d	$s8, $s8, 2
	b	.LBB7_247
.LBB7_229:                              #   in Loop: Header=BB7_67 Depth=3
	move	$a6, $a5
.LBB7_230:                              # %.lr.ph3017.preheader3902
                                        #   in Loop: Header=BB7_67 Depth=3
	addi.d	$a4, $a6, 1
.LBB7_231:                              # %.lr.ph3017
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.b	$a5, $a3, 0
	addi.d	$a3, $a3, 1
	st.b	$a5, $a1, 0
	addi.w	$a4, $a4, -1
	addi.d	$a1, $a1, 1
	bltu	$s1, $a4, .LBB7_231
.LBB7_232:                              #   in Loop: Header=BB7_67 Depth=3
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
.LBB7_233:                              # %.loopexit1336
                                        #   in Loop: Header=BB7_67 Depth=3
	blt	$a2, $s1, .LBB7_274
# %bb.234:                              # %iter.check3789
                                        #   in Loop: Header=BB7_67 Depth=3
	ori	$a4, $zero, 16
	bltu	$a2, $a4, .LBB7_238
# %bb.235:                              # %iter.check3789
                                        #   in Loop: Header=BB7_67 Depth=3
	sub.d	$a4, $a1, $a3
	ori	$a5, $zero, 64
	bltu	$a4, $a5, .LBB7_238
# %bb.236:                              # %vector.main.loop.iter.check3791
                                        #   in Loop: Header=BB7_67 Depth=3
	bgeu	$a2, $a5, .LBB7_239
# %bb.237:                              #   in Loop: Header=BB7_67 Depth=3
	move	$a7, $zero
	b	.LBB7_243
.LBB7_238:                              #   in Loop: Header=BB7_67 Depth=3
	move	$a6, $a2
	move	$a4, $a1
	move	$a5, $a3
	b	.LBB7_272
.LBB7_239:                              # %vector.ph3792
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a4, $a2, 30, 6
	slli.d	$a7, $a4, 6
	addi.d	$a4, $a3, 32
	addi.d	$a5, $a1, 32
	move	$a6, $a7
.LBB7_240:                              # %vector.body3795
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a6, $a6, -64
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB7_240
# %bb.241:                              # %middle.block3802
                                        #   in Loop: Header=BB7_67 Depth=3
	beq	$a7, $a2, .LBB7_274
# %bb.242:                              # %vec.epilog.iter.check3807
                                        #   in Loop: Header=BB7_67 Depth=3
	andi	$a4, $a2, 48
	beqz	$a4, .LBB7_271
.LBB7_243:                              # %vec.epilog.ph3806
                                        #   in Loop: Header=BB7_67 Depth=3
	bstrpick.d	$a5, $a2, 30, 4
	slli.d	$t0, $a5, 4
	sub.d	$a6, $a2, $t0
	alsl.d	$a4, $a5, $a1, 4
	alsl.d	$a5, $a5, $a3, 4
	sub.d	$t1, $a7, $t0
	add.d	$a3, $a3, $a7
	add.d	$a1, $a1, $a7
.LBB7_244:                              # %vec.epilog.vector.body3813
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $a3, 0
	vst	$vr0, $a1, 0
	addi.d	$t1, $t1, 16
	addi.d	$a3, $a3, 16
	addi.d	$a1, $a1, 16
	bnez	$t1, .LBB7_244
# %bb.245:                              # %vec.epilog.middle.block3819
                                        #   in Loop: Header=BB7_67 Depth=3
	bne	$t0, $a2, .LBB7_272
	b	.LBB7_274
.LBB7_246:                              #   in Loop: Header=BB7_67 Depth=3
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
.LBB7_247:                              #   in Loop: Header=BB7_67 Depth=3
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	and	$a0, $s2, $a0
	srli.d	$a0, $a0, 24
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 8
	bltu	$a0, $a1, .LBB7_252
# %bb.248:                              # %.preheader1338.preheader
                                        #   in Loop: Header=BB7_67 Depth=3
	lu12i.w	$a1, 8192
.LBB7_249:                              # %.preheader1338
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.w	$a2, $a1, 0
	bgeu	$s7, $a2, .LBB7_640
# %bb.250:                              #   in Loop: Header=BB7_249 Depth=4
	slli.d	$a0, $a0, 1
	bstrpick.d	$a2, $a0, 15, 1
	slli.d	$a2, $a2, 1
	ori	$a3, $zero, 144
	bgeu	$a2, $a3, .LBB7_628
# %bb.251:                              #   in Loop: Header=BB7_249 Depth=4
	bstrpick.d	$a1, $a1, 31, 1
	and	$a2, $a1, $s2
	addi.w	$a2, $a2, 0
	sltu	$a2, $zero, $a2
	or	$a0, $a0, $a2
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldx.hu	$a0, $a2, $a0
	ori	$a2, $zero, 7
	bltu	$a2, $a0, .LBB7_249
.LBB7_252:                              # %.loopexit1339
                                        #   in Loop: Header=BB7_67 Depth=3
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	ori	$a2, $zero, 35
	sub.d	$a2, $a2, $s1
	srl.w	$a2, $s4, $a2
	ld.d	$a3, $sp, 168                   # 8-byte Folded Reload
	alsl.w	$a2, $a2, $a3, 3
	sll.w	$s4, $s2, $a1
	sub.w	$s2, $s5, $a1
	add.w	$a1, $a2, $a0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ori	$s1, $zero, 1
	ld.d	$s7, $sp, 32                    # 8-byte Folded Reload
	b	.LBB7_186
.LBB7_253:                              #   in Loop: Header=BB7_67 Depth=3
	ori	$a1, $zero, 1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	b	.LBB7_185
.LBB7_254:                              # %.preheader1340
                                        #   in Loop: Header=BB7_67 Depth=3
	bge	$s2, $s1, .LBB7_265
# %bb.255:                              # %.lr.ph2964.preheader
                                        #   in Loop: Header=BB7_67 Depth=3
	ori	$a0, $zero, 16
	sub.d	$s5, $a0, $s2
	b	.LBB7_258
.LBB7_256:                              #   in Loop: Header=BB7_258 Depth=4
	ld.d	$s8, $fp, 112
	ld.d	$s3, $fp, 120
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
.LBB7_257:                              #   in Loop: Header=BB7_258 Depth=4
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s5
	or	$s4, $a0, $s4
	addi.w	$s2, $s2, 16
	addi.d	$s8, $s8, 2
	addi.d	$s5, $s5, -16
	bge	$s2, $s1, .LBB7_265
.LBB7_258:                              # %.lr.ph2964
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $s8, 1
	bltu	$a0, $s3, .LBB7_257
# %bb.259:                              #   in Loop: Header=BB7_258 Depth=4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_256
	b	.LBB7_629
.LBB7_260:                              # %._crit_edge2955
                                        #   in Loop: Header=BB7_67 Depth=3
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	and	$a0, $s4, $a0
	srli.d	$a0, $a0, 24
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ldx.hu	$a1, $a1, $a0
	ori	$a0, $zero, 8
	bltu	$a1, $a0, .LBB7_269
# %bb.261:                              # %.preheader1341.preheader
                                        #   in Loop: Header=BB7_67 Depth=3
	lu12i.w	$a0, 8192
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ori	$s1, $zero, 1
.LBB7_262:                              # %.preheader1341
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.w	$a2, $a0, 0
	bgeu	$s1, $a2, .LBB7_640
# %bb.263:                              #   in Loop: Header=BB7_262 Depth=4
	slli.d	$a1, $a1, 1
	bstrpick.d	$a2, $a1, 15, 1
	slli.d	$a2, $a2, 1
	ori	$a3, $zero, 144
	bgeu	$a2, $a3, .LBB7_628
# %bb.264:                              #   in Loop: Header=BB7_262 Depth=4
	bstrpick.d	$a0, $a0, 31, 1
	and	$a2, $a0, $s4
	addi.w	$a2, $a2, 0
	sltu	$a2, $zero, $a2
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ldx.hu	$a1, $a2, $a1
	ori	$a2, $zero, 7
	bltu	$a2, $a1, .LBB7_262
	b	.LBB7_270
.LBB7_265:                              # %._crit_edge2965
                                        #   in Loop: Header=BB7_67 Depth=3
	sub.d	$a0, $zero, $s1
	srl.w	$a0, $s4, $a0
	sll.w	$s4, $s4, $s1
	sub.w	$s2, $s2, $s1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	add.w	$a1, $a0, $a1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	b	.LBB7_185
.LBB7_266:                              #   in Loop: Header=BB7_67 Depth=3
	sub.d	$a5, $a0, $a6
	add.d	$a1, $a1, $a6
	add.d	$a2, $a2, $a6
.LBB7_267:                              # %.lr.ph3012.preheader
                                        #   in Loop: Header=BB7_67 Depth=3
	addi.d	$a3, $a5, 1
.LBB7_268:                              # %.lr.ph3012
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.b	$a4, $a2, 0
	addi.d	$a2, $a2, 1
	addi.d	$a5, $a1, 1
	addi.w	$a3, $a3, -1
	st.b	$a4, $a1, 0
	move	$a1, $a5
	blt	$s1, $a3, .LBB7_268
	b	.LBB7_274
.LBB7_269:                              #   in Loop: Header=BB7_67 Depth=3
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ori	$s1, $zero, 1
.LBB7_270:                              # %.loopexit1342
                                        #   in Loop: Header=BB7_67 Depth=3
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ldx.bu	$a0, $a0, $a1
	sll.w	$s4, $s4, $a0
	sub.w	$s2, $s2, $a0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	add.w	$a1, $a0, $a1
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	b	.LBB7_186
.LBB7_271:                              #   in Loop: Header=BB7_67 Depth=3
	sub.d	$a6, $a2, $a7
	add.d	$a4, $a1, $a7
	add.d	$a5, $a3, $a7
.LBB7_272:                              # %.lr.ph3023.preheader
                                        #   in Loop: Header=BB7_67 Depth=3
	addi.d	$a1, $a6, 1
.LBB7_273:                              # %.lr.ph3023
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_67 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.b	$a2, $a5, 0
	addi.d	$a5, $a5, 1
	addi.d	$a3, $a4, 1
	addi.w	$a1, $a1, -1
	st.b	$a2, $a4, 0
	move	$a4, $a3
	bltu	$s1, $a1, .LBB7_273
.LBB7_274:                              # %.loopexit1335
                                        #   in Loop: Header=BB7_67 Depth=3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	sub.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
.LBB7_275:                              #   in Loop: Header=BB7_67 Depth=3
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	bgtz	$a0, .LBB7_67
	b	.LBB7_495
.LBB7_276:                              #   in Loop: Header=BB7_62 Depth=2
	ld.bu	$a0, $fp, 89
	ori	$a1, $zero, 3
	st.d	$s7, $sp, 136                   # 8-byte Folded Spill
	bne	$a0, $a1, .LBB7_282
# %bb.277:                              #   in Loop: Header=BB7_62 Depth=2
	ld.bu	$a0, $fp, 72
	andi	$a0, $a0, 1
	beqz	$a0, .LBB7_282
# %bb.278:                              #   in Loop: Header=BB7_62 Depth=2
	bne	$s8, $s3, .LBB7_281
# %bb.279:                              #   in Loop: Header=BB7_62 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_629
# %bb.280:                              #   in Loop: Header=BB7_62 Depth=2
	ld.d	$s8, $fp, 112
	ld.d	$s3, $fp, 120
.LBB7_281:                              #   in Loop: Header=BB7_62 Depth=2
	addi.d	$s8, $s8, 1
.LBB7_282:                              #   in Loop: Header=BB7_62 Depth=2
	ori	$s7, $zero, 1
	addi.w	$a0, $s2, 0
	ori	$a1, $zero, 2
	blt	$a1, $a0, .LBB7_480
# %bb.283:                              # %.lr.ph2865.preheader
                                        #   in Loop: Header=BB7_62 Depth=2
	ori	$a0, $zero, 16
	sub.d	$s1, $a0, $s2
	b	.LBB7_286
.LBB7_284:                              #   in Loop: Header=BB7_286 Depth=3
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s3, $s8, $a0
	st.d	$s3, $fp, 120
.LBB7_285:                              #   in Loop: Header=BB7_286 Depth=3
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s1
	or	$s4, $a0, $s4
	addi.d	$a0, $s2, 16
	addi.w	$a1, $s2, 0
	addi.d	$s8, $s8, 2
	addi.w	$a2, $zero, -13
	addi.d	$s1, $s1, -16
	move	$s2, $a0
	bge	$a1, $a2, .LBB7_481
.LBB7_286:                              # %.lr.ph2865
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a0, $s8, 1
	bltu	$a0, $s3, .LBB7_285
# %bb.287:                              #   in Loop: Header=BB7_286 Depth=3
	ld.d	$a3, $s0, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_289
# %bb.288:                              #   in Loop: Header=BB7_286 Depth=3
	ld.d	$a0, $s0, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB7_290
	b	.LBB7_625
.LBB7_289:                              #   in Loop: Header=BB7_286 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB7_625
.LBB7_290:                              #   in Loop: Header=BB7_286 Depth=3
	bnez	$a0, .LBB7_284
# %bb.291:                              #   in Loop: Header=BB7_286 Depth=3
	ld.bu	$a0, $fp, 92
	bnez	$a0, .LBB7_624
# %bb.292:                              #   in Loop: Header=BB7_286 Depth=3
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s7, $fp, 92
	ori	$a0, $zero, 2
	b	.LBB7_284
.LBB7_293:                              #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	add.w	$a2, $a1, $s7
	blt	$a0, $s1, .LBB7_493
# %bb.294:                              # %.lr.ph2926.preheader
                                        #   in Loop: Header=BB7_62 Depth=2
	bstrpick.d	$a0, $s7, 31, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.d	$s5, $a1, $a0
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	move	$s7, $a2
	b	.LBB7_296
.LBB7_295:                              #   in Loop: Header=BB7_296 Depth=3
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
	blez	$a0, .LBB7_305
.LBB7_296:                              # %.lr.ph2926
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	sub.w	$a0, $s3, $s8
	bnez	$a0, .LBB7_295
# %bb.297:                              #   in Loop: Header=BB7_296 Depth=3
	ld.d	$a3, $s0, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_299
# %bb.298:                              #   in Loop: Header=BB7_296 Depth=3
	ld.d	$a0, $s0, 0
	jirl	$ra, $a3, 0
	b	.LBB7_300
.LBB7_299:                              #   in Loop: Header=BB7_296 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB7_300:                              #   in Loop: Header=BB7_296 Depth=3
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	bltz	$a0, .LBB7_625
# %bb.301:                              #   in Loop: Header=BB7_296 Depth=3
	bnez	$a0, .LBB7_304
# %bb.302:                              #   in Loop: Header=BB7_296 Depth=3
	ld.bu	$a0, $fp, 92
	bnez	$a0, .LBB7_624
# %bb.303:                              #   in Loop: Header=BB7_296 Depth=3
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s1, $fp, 92
	ori	$a0, $zero, 2
.LBB7_304:                              #   in Loop: Header=BB7_296 Depth=3
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s3, $s8, $a0
	st.d	$s3, $fp, 120
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	bgtz	$a0, .LBB7_296
.LBB7_305:                              #   in Loop: Header=BB7_62 Depth=2
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	b	.LBB7_495
.LBB7_306:                              # %.preheader1354
                                        #   in Loop: Header=BB7_62 Depth=2
	blt	$a0, $s1, .LBB7_494
# %bb.307:                              # %.preheader1333.preheader
                                        #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s7, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
.LBB7_308:                              # %.preheader1333
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_313 Depth 4
                                        #         Child Loop BB7_369 Depth 4
                                        #         Child Loop BB7_428 Depth 4
                                        #         Child Loop BB7_449 Depth 4
                                        #         Child Loop BB7_453 Depth 4
                                        #         Child Loop BB7_474 Depth 4
                                        #         Child Loop BB7_440 Depth 4
                                        #         Child Loop BB7_457 Depth 4
                                        #         Child Loop BB7_466 Depth 4
                                        #         Child Loop BB7_470 Depth 4
                                        #         Child Loop BB7_477 Depth 4
	ori	$s7, $zero, 1
	addi.w	$a0, $s2, 0
	ori	$a1, $zero, 15
	blt	$a1, $a0, .LBB7_319
# %bb.309:                              # %.lr.ph3046.preheader
                                        #   in Loop: Header=BB7_308 Depth=3
	ori	$a0, $zero, 16
	sub.d	$s1, $a0, $s2
	b	.LBB7_313
.LBB7_310:                              #   in Loop: Header=BB7_313 Depth=4
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s7, $fp, 92
	ori	$a0, $zero, 2
.LBB7_311:                              #   in Loop: Header=BB7_313 Depth=4
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s3, $s8, $a0
	st.d	$s3, $fp, 120
.LBB7_312:                              #   in Loop: Header=BB7_313 Depth=4
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s1
	or	$s4, $a0, $s4
	addi.d	$a0, $s2, 16
	addi.w	$a1, $s2, 0
	addi.d	$s8, $s8, 2
	addi.d	$s1, $s1, -16
	move	$s2, $a0
	bgez	$a1, .LBB7_320
.LBB7_313:                              # %.lr.ph3046
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_308 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $s8, 1
	bltu	$a0, $s3, .LBB7_312
# %bb.314:                              #   in Loop: Header=BB7_313 Depth=4
	ld.d	$a3, $s0, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_316
# %bb.315:                              #   in Loop: Header=BB7_313 Depth=4
	ld.d	$a0, $s0, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB7_317
	b	.LBB7_625
.LBB7_316:                              #   in Loop: Header=BB7_313 Depth=4
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB7_625
.LBB7_317:                              #   in Loop: Header=BB7_313 Depth=4
	bnez	$a0, .LBB7_311
# %bb.318:                              #   in Loop: Header=BB7_313 Depth=4
	ld.bu	$a0, $fp, 92
	beqz	$a0, .LBB7_310
	b	.LBB7_624
.LBB7_319:                              #   in Loop: Header=BB7_308 Depth=3
	move	$a0, $s2
.LBB7_320:                              # %._crit_edge3047
                                        #   in Loop: Header=BB7_308 Depth=3
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	and	$a1, $s4, $a1
	srli.d	$a1, $a1, 19
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_362
# %bb.321:                              # %.preheader1331.preheader
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.322:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 19, 19
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_362
# %bb.323:                              # %.preheader1331.1
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.324:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 18, 18
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_362
# %bb.325:                              # %.preheader1331.2
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.326:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 17, 17
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_362
# %bb.327:                              # %.preheader1331.3
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.328:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 16, 16
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_362
# %bb.329:                              # %.preheader1331.4
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.330:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 15, 15
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_362
# %bb.331:                              # %.preheader1331.5
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.332:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 14, 14
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_362
# %bb.333:                              # %.preheader1331.6
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.334:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 13, 13
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_362
# %bb.335:                              # %.preheader1331.7
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.336:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 12, 12
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_362
# %bb.337:                              # %.preheader1331.8
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.338:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 11, 11
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_361
# %bb.339:                              # %.preheader1331.9
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.340:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 10, 10
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_361
# %bb.341:                              # %.preheader1331.10
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.342:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 9, 9
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_361
# %bb.343:                              # %.preheader1331.11
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.344:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 8, 8
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_361
# %bb.345:                              # %.preheader1331.12
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.346:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 7, 7
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_361
# %bb.347:                              # %.preheader1331.13
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.348:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 6, 6
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_361
# %bb.349:                              # %.preheader1331.14
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.350:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 5, 5
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_361
# %bb.351:                              # %.preheader1331.15
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.352:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 4, 4
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_361
# %bb.353:                              # %.preheader1331.16
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.354:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 3, 3
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_361
# %bb.355:                              # %.preheader1331.17
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.356:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 2, 2
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_361
# %bb.357:                              # %.preheader1331.18
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.358:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a1, $s1, 1
	bstrpick.d	$a2, $s4, 1, 1
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 656
	bltu	$s1, $a1, .LBB7_361
# %bb.359:                              # %.preheader1331.19
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $s1, 14, 4
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ori	$a2, $zero, 168
	bltu	$a2, $a1, .LBB7_628
# %bb.360:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a1, $s1, 1
	andi	$a2, $s4, 1
	or	$a1, $a1, $a2
	bstrpick.d	$a1, $a1, 15, 0
	slli.d	$a1, $a1, 1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 655
	bgeu	$a1, $s1, .LBB7_362
	b	.LBB7_640
.LBB7_361:                              #   in Loop: Header=BB7_308 Depth=3
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
.LBB7_362:                              # %.loopexit1332
                                        #   in Loop: Header=BB7_308 Depth=3
	ldx.bu	$a1, $s5, $s1
	sll.w	$s4, $s4, $a1
	sub.w	$s2, $a0, $a1
	ori	$a2, $zero, 255
	bltu	$a2, $s1, .LBB7_364
# %bb.363:                              #   in Loop: Header=BB7_308 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.w	$s7, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	stx.b	$s1, $a1, $a0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	addi.w	$a0, $a0, -1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ori	$s1, $zero, 1
	b	.LBB7_479
.LBB7_364:                              #   in Loop: Header=BB7_308 Depth=3
	andi	$s5, $s1, 7
	ori	$a2, $zero, 7
	bne	$s5, $a2, .LBB7_420
# %bb.365:                              # %.preheader1329
                                        #   in Loop: Header=BB7_308 Depth=3
	ori	$a2, $zero, 15
	blt	$a2, $s2, .LBB7_377
# %bb.366:                              # %.lr.ph3056.preheader
                                        #   in Loop: Header=BB7_308 Depth=3
	sub.d	$a0, $a1, $a0
	addi.d	$s5, $a0, 16
	b	.LBB7_369
.LBB7_367:                              #   in Loop: Header=BB7_369 Depth=4
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s3, $s8, $a0
	st.d	$s3, $fp, 120
.LBB7_368:                              #   in Loop: Header=BB7_369 Depth=4
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s5
	or	$s4, $a0, $s4
	addi.w	$s2, $s6, 16
	addi.d	$s8, $s8, 2
	addi.d	$s5, $s5, -16
	bgez	$s6, .LBB7_377
.LBB7_369:                              # %.lr.ph3056
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_308 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $s8, 1
	move	$s6, $s2
	bltu	$a0, $s3, .LBB7_368
# %bb.370:                              #   in Loop: Header=BB7_369 Depth=4
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_372
# %bb.371:                              #   in Loop: Header=BB7_369 Depth=4
	ld.d	$a0, $a0, 0
	jirl	$ra, $a3, 0
	b	.LBB7_373
.LBB7_372:                              #   in Loop: Header=BB7_369 Depth=4
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB7_373:                              #   in Loop: Header=BB7_369 Depth=4
	bltz	$a0, .LBB7_625
# %bb.374:                              #   in Loop: Header=BB7_369 Depth=4
	bnez	$a0, .LBB7_367
# %bb.375:                              #   in Loop: Header=BB7_369 Depth=4
	ld.bu	$a0, $fp, 92
	bnez	$a0, .LBB7_624
# %bb.376:                              #   in Loop: Header=BB7_369 Depth=4
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s7, $fp, 92
	ori	$a0, $zero, 2
	b	.LBB7_367
.LBB7_377:                              # %._crit_edge3057
                                        #   in Loop: Header=BB7_308 Depth=3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	and	$a0, $s4, $a0
	srli.d	$a0, $a0, 19
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_418
# %bb.378:                              # %.preheader.preheader
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.379:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 19, 19
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_419
# %bb.380:                              # %.preheader.1
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.381:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 18, 18
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_419
# %bb.382:                              # %.preheader.2
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.383:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 17, 17
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_419
# %bb.384:                              # %.preheader.3
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.385:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 16, 16
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_419
# %bb.386:                              # %.preheader.4
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.387:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 15, 15
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_419
# %bb.388:                              # %.preheader.5
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.389:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 14, 14
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_418
# %bb.390:                              # %.preheader.6
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.391:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 13, 13
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_418
# %bb.392:                              # %.preheader.7
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.393:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 12, 12
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_418
# %bb.394:                              # %.preheader.8
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.395:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 11, 11
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_418
# %bb.396:                              # %.preheader.9
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.397:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 10, 10
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_418
# %bb.398:                              # %.preheader.10
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.399:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 9, 9
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_418
# %bb.400:                              # %.preheader.11
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.401:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 8, 8
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_418
# %bb.402:                              # %.preheader.12
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.403:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 7, 7
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_418
# %bb.404:                              # %.preheader.13
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.405:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 6, 6
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_418
# %bb.406:                              # %.preheader.14
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.407:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 5, 5
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_418
# %bb.408:                              # %.preheader.15
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.409:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 4, 4
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_418
# %bb.410:                              # %.preheader.16
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.411:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 3, 3
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_418
# %bb.412:                              # %.preheader.17
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.413:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 2, 2
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_418
# %bb.414:                              # %.preheader.18
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.415:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a0, $a0, 1
	bstrpick.d	$a1, $s4, 1, 1
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 250
	bltu	$a0, $a1, .LBB7_418
# %bb.416:                              # %.preheader.19
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a1, $a0, 14, 1
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	ori	$a2, $zero, 1148
	bltu	$a2, $a1, .LBB7_628
# %bb.417:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a0, $a0, 1
	andi	$a1, $s4, 1
	or	$a0, $a0, $a1
	bstrpick.d	$a0, $a0, 15, 0
	slli.d	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$a0, $a1, $a0
	ori	$a1, $zero, 249
	bgeu	$a1, $a0, .LBB7_419
	b	.LBB7_640
.LBB7_418:                              #   in Loop: Header=BB7_308 Depth=3
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
.LBB7_419:                              # %.loopexit1328
                                        #   in Loop: Header=BB7_308 Depth=3
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a0
	sll.w	$s4, $s4, $a1
	sub.w	$s2, $s2, $a1
	addi.d	$a0, $a0, 7
	bstrpick.d	$s5, $a0, 15, 0
.LBB7_420:                              #   in Loop: Header=BB7_308 Depth=3
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	addi.d	$a0, $s1, -256
	bstrpick.d	$a0, $a0, 31, 3
	ori	$a1, $zero, 3
	bltu	$a1, $a0, .LBB7_425
# %bb.421:                              #   in Loop: Header=BB7_308 Depth=3
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI7_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI7_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	move	$a1, $a4
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	jr	$a0
.LBB7_422:                              #   in Loop: Header=BB7_308 Depth=3
	move	$a1, $a2
	st.d	$a4, $sp, 176                   # 8-byte Folded Spill
	b	.LBB7_432
.LBB7_423:                              #   in Loop: Header=BB7_308 Depth=3
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	b	.LBB7_432
.LBB7_424:                              #   in Loop: Header=BB7_308 Depth=3
	ori	$a1, $zero, 1
	st.d	$a4, $sp, 176                   # 8-byte Folded Spill
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	b	.LBB7_432
.LBB7_425:                              #   in Loop: Header=BB7_308 Depth=3
	addi.w	$s6, $a0, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ldx.bu	$s1, $a0, $s6
	bge	$s2, $s1, .LBB7_431
# %bb.426:                              # %.lr.ph3067.preheader
                                        #   in Loop: Header=BB7_308 Depth=3
	ori	$a0, $zero, 16
	sub.d	$s7, $a0, $s2
	b	.LBB7_428
.LBB7_427:                              #   in Loop: Header=BB7_428 Depth=4
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s7
	or	$s4, $a0, $s4
	addi.w	$s2, $s2, 16
	addi.d	$s8, $s8, 2
	addi.d	$s7, $s7, -16
	bge	$s2, $s1, .LBB7_431
.LBB7_428:                              # %.lr.ph3067
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_308 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $s8, 1
	bltu	$a0, $s3, .LBB7_427
# %bb.429:                              #   in Loop: Header=BB7_428 Depth=4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_629
# %bb.430:                              #   in Loop: Header=BB7_428 Depth=4
	ld.d	$s8, $fp, 112
	ld.d	$s3, $fp, 120
	b	.LBB7_427
.LBB7_431:                              # %._crit_edge3068
                                        #   in Loop: Header=BB7_308 Depth=3
	ori	$a0, $zero, 32
	sub.d	$a0, $a0, $s1
	slli.d	$a1, $s6, 2
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ldx.w	$a1, $a2, $a1
	srl.w	$a0, $s4, $a0
	sll.w	$s4, $s4, $s1
	sub.w	$s2, $s2, $s1
	add.d	$a0, $a0, $a1
	addi.w	$a1, $a0, -2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
.LBB7_432:                              #   in Loop: Header=BB7_308 Depth=3
	ld.w	$a2, $fp, 40
	addi.w	$a0, $s5, 2
	add.w	$s7, $a0, $a3
	ori	$s1, $zero, 1
	bltu	$a2, $s7, .LBB7_635
# %bb.433:                              #   in Loop: Header=BB7_308 Depth=3
	move	$a6, $a3
	bstrpick.d	$a4, $a3, 31, 0
	addi.w	$a3, $a1, 0
	move	$a5, $a1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a4
	st.d	$a5, $sp, 168                   # 8-byte Folded Spill
	bgeu	$a6, $a3, .LBB7_442
# %bb.434:                              #   in Loop: Header=BB7_308 Depth=3
	sub.w	$a5, $a5, $a6
	blt	$a2, $a5, .LBB7_638
# %bb.435:                              #   in Loop: Header=BB7_308 Depth=3
	sub.d	$a2, $a2, $a5
	bstrpick.d	$t0, $a2, 31, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	add.d	$a3, $a2, $t0
	bge	$a5, $a0, .LBB7_447
# %bb.436:                              #   in Loop: Header=BB7_308 Depth=3
	sub.w	$a2, $a0, $a5
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	blt	$a5, $s1, .LBB7_458
# %bb.437:                              # %.lr.ph3082.preheader
                                        #   in Loop: Header=BB7_308 Depth=3
	ori	$a7, $zero, 64
	bltu	$a5, $a7, .LBB7_455
# %bb.438:                              # %.lr.ph3082.preheader
                                        #   in Loop: Header=BB7_308 Depth=3
	sub.d	$a6, $a4, $t0
	bltu	$a6, $a7, .LBB7_455
# %bb.439:                              # %vector.ph3722
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a6, $a5, 30, 6
	slli.d	$a7, $a6, 6
	add.d	$a1, $a1, $a7
	add.d	$a3, $a3, $a7
	sub.d	$a6, $a5, $a7
	ld.d	$t1, $sp, 24                    # 8-byte Folded Reload
	add.d	$t0, $t1, $t0
	add.d	$a4, $t1, $a4
	move	$t1, $a7
.LBB7_440:                              # %vector.body3726
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_308 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvld	$xr0, $t0, -32
	xvld	$xr1, $t0, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$t1, $t1, -64
	addi.d	$t0, $t0, 64
	addi.d	$a4, $a4, 64
	bnez	$t1, .LBB7_440
# %bb.441:                              # %middle.block3733
                                        #   in Loop: Header=BB7_308 Depth=3
	bne	$a7, $a5, .LBB7_456
	b	.LBB7_458
.LBB7_442:                              # %iter.check3743
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a5, $a5, 31, 0
	sub.d	$a2, $a1, $a5
	ori	$a6, $zero, 14
	bltu	$s5, $a6, .LBB7_446
# %bb.443:                              # %iter.check3743
                                        #   in Loop: Header=BB7_308 Depth=3
	ori	$a6, $zero, 64
	bltu	$a3, $a6, .LBB7_446
# %bb.444:                              # %vector.main.loop.iter.check3745
                                        #   in Loop: Header=BB7_308 Depth=3
	sub.d	$a3, $zero, $a5
	ori	$a5, $zero, 62
	bgeu	$s5, $a5, .LBB7_448
# %bb.445:                              #   in Loop: Header=BB7_308 Depth=3
	move	$a6, $zero
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	b	.LBB7_452
.LBB7_446:                              #   in Loop: Header=BB7_308 Depth=3
	move	$a5, $a0
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	b	.LBB7_473
.LBB7_447:                              #   in Loop: Header=BB7_308 Depth=3
	move	$a2, $a0
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	b	.LBB7_459
.LBB7_448:                              # %vector.ph3746
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a5, $a0, 15, 6
	slli.d	$a6, $a5, 6
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	add.d	$a5, $a5, $a4
	move	$a7, $a6
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
.LBB7_449:                              # %vector.body3749
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_308 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	add.d	$t0, $a5, $a3
	xvld	$xr0, $t0, -32
	xvldx	$xr1, $a5, $a3
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a7, $a7, -64
	addi.d	$a5, $a5, 64
	bnez	$a7, .LBB7_449
# %bb.450:                              # %middle.block3756
                                        #   in Loop: Header=BB7_308 Depth=3
	beq	$a6, $a0, .LBB7_478
# %bb.451:                              # %vec.epilog.iter.check3761
                                        #   in Loop: Header=BB7_308 Depth=3
	andi	$a5, $a0, 48
	beqz	$a5, .LBB7_472
.LBB7_452:                              # %vec.epilog.ph3760
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$t0, $a0, 15, 4
	slli.d	$a7, $t0, 4
	sub.d	$a5, $a0, $a7
	alsl.d	$a1, $t0, $a1, 4
	alsl.d	$a2, $t0, $a2, 4
	sub.d	$t0, $a6, $a7
	add.d	$a4, $a6, $a4
	ld.d	$a6, $sp, 152                   # 8-byte Folded Reload
	add.d	$a4, $a6, $a4
.LBB7_453:                              # %vec.epilog.vector.body3767
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_308 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vldx	$vr0, $a4, $a3
	vst	$vr0, $a4, 0
	addi.d	$t0, $t0, 16
	addi.d	$a4, $a4, 16
	bnez	$t0, .LBB7_453
# %bb.454:                              # %vec.epilog.middle.block3773
                                        #   in Loop: Header=BB7_308 Depth=3
	bne	$a7, $a0, .LBB7_473
	b	.LBB7_478
.LBB7_455:                              #   in Loop: Header=BB7_308 Depth=3
	move	$a6, $a5
.LBB7_456:                              # %.lr.ph3082.preheader3900
                                        #   in Loop: Header=BB7_308 Depth=3
	addi.d	$a4, $a6, 1
.LBB7_457:                              # %.lr.ph3082
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_308 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.b	$a5, $a3, 0
	addi.d	$a3, $a3, 1
	st.b	$a5, $a1, 0
	addi.w	$a4, $a4, -1
	addi.d	$a1, $a1, 1
	bltu	$s1, $a4, .LBB7_457
.LBB7_458:                              #   in Loop: Header=BB7_308 Depth=3
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
.LBB7_459:                              # %.loopexit1326
                                        #   in Loop: Header=BB7_308 Depth=3
	blt	$a2, $s1, .LBB7_478
# %bb.460:                              # %iter.check
                                        #   in Loop: Header=BB7_308 Depth=3
	ori	$a4, $zero, 16
	bltu	$a2, $a4, .LBB7_464
# %bb.461:                              # %iter.check
                                        #   in Loop: Header=BB7_308 Depth=3
	sub.d	$a4, $a1, $a3
	ori	$a5, $zero, 64
	bltu	$a4, $a5, .LBB7_464
# %bb.462:                              # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB7_308 Depth=3
	bgeu	$a2, $a5, .LBB7_465
# %bb.463:                              #   in Loop: Header=BB7_308 Depth=3
	move	$a7, $zero
	b	.LBB7_469
.LBB7_464:                              #   in Loop: Header=BB7_308 Depth=3
	move	$a6, $a2
	move	$a4, $a1
	move	$a5, $a3
	b	.LBB7_476
.LBB7_465:                              # %vector.ph
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a4, $a2, 30, 6
	slli.d	$a7, $a4, 6
	addi.d	$a4, $a3, 32
	addi.d	$a5, $a1, 32
	move	$a6, $a7
.LBB7_466:                              # %vector.body
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_308 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	xvld	$xr0, $a4, -32
	xvld	$xr1, $a4, 0
	xvst	$xr0, $a5, -32
	xvst	$xr1, $a5, 0
	addi.d	$a6, $a6, -64
	addi.d	$a4, $a4, 64
	addi.d	$a5, $a5, 64
	bnez	$a6, .LBB7_466
# %bb.467:                              # %middle.block
                                        #   in Loop: Header=BB7_308 Depth=3
	beq	$a7, $a2, .LBB7_478
# %bb.468:                              # %vec.epilog.iter.check
                                        #   in Loop: Header=BB7_308 Depth=3
	andi	$a4, $a2, 48
	beqz	$a4, .LBB7_475
.LBB7_469:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB7_308 Depth=3
	bstrpick.d	$a5, $a2, 30, 4
	slli.d	$t0, $a5, 4
	sub.d	$a6, $a2, $t0
	alsl.d	$a4, $a5, $a1, 4
	alsl.d	$a5, $a5, $a3, 4
	sub.d	$t1, $a7, $t0
	add.d	$a3, $a3, $a7
	add.d	$a1, $a1, $a7
.LBB7_470:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_308 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	vld	$vr0, $a3, 0
	vst	$vr0, $a1, 0
	addi.d	$t1, $t1, 16
	addi.d	$a3, $a3, 16
	addi.d	$a1, $a1, 16
	bnez	$t1, .LBB7_470
# %bb.471:                              # %vec.epilog.middle.block
                                        #   in Loop: Header=BB7_308 Depth=3
	bne	$t0, $a2, .LBB7_476
	b	.LBB7_478
.LBB7_472:                              #   in Loop: Header=BB7_308 Depth=3
	sub.d	$a5, $a0, $a6
	add.d	$a1, $a1, $a6
	add.d	$a2, $a2, $a6
.LBB7_473:                              # %.lr.ph3077.preheader
                                        #   in Loop: Header=BB7_308 Depth=3
	addi.d	$a3, $a5, 1
.LBB7_474:                              # %.lr.ph3077
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_308 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.b	$a4, $a2, 0
	addi.d	$a2, $a2, 1
	addi.d	$a5, $a1, 1
	addi.w	$a3, $a3, -1
	st.b	$a4, $a1, 0
	move	$a1, $a5
	blt	$s1, $a3, .LBB7_474
	b	.LBB7_478
.LBB7_475:                              #   in Loop: Header=BB7_308 Depth=3
	sub.d	$a6, $a2, $a7
	add.d	$a4, $a1, $a7
	add.d	$a5, $a3, $a7
.LBB7_476:                              # %.lr.ph3088.preheader
                                        #   in Loop: Header=BB7_308 Depth=3
	addi.d	$a1, $a6, 1
.LBB7_477:                              # %.lr.ph3088
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_308 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.b	$a2, $a5, 0
	addi.d	$a5, $a5, 1
	addi.d	$a3, $a4, 1
	addi.w	$a1, $a1, -1
	st.b	$a2, $a4, 0
	move	$a4, $a3
	bltu	$s1, $a1, .LBB7_477
.LBB7_478:                              # %.loopexit
                                        #   in Loop: Header=BB7_308 Depth=3
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	sub.w	$a0, $a1, $a0
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
.LBB7_479:                              #   in Loop: Header=BB7_308 Depth=3
	st.d	$s7, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	bgtz	$a0, .LBB7_308
	b	.LBB7_495
.LBB7_480:                              #   in Loop: Header=BB7_62 Depth=2
	move	$a0, $s2
.LBB7_481:                              # %._crit_edge2866
                                        #   in Loop: Header=BB7_62 Depth=2
	bstrpick.d	$a1, $s4, 31, 29
	st.b	$a1, $fp, 89
	addi.w	$a1, $a0, 0
	slli.d	$s1, $s4, 3
	ori	$a2, $zero, 18
	bltu	$a2, $a1, .LBB7_492
# %bb.482:                              # %.lr.ph2876.preheader
                                        #   in Loop: Header=BB7_62 Depth=2
	addi.d	$s2, $a0, -19
	ori	$a1, $zero, 19
	sub.d	$s4, $a1, $a0
	b	.LBB7_486
.LBB7_483:                              #   in Loop: Header=BB7_486 Depth=3
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s7, $fp, 92
	ori	$a0, $zero, 2
.LBB7_484:                              #   in Loop: Header=BB7_486 Depth=3
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s3, $s8, $a0
	st.d	$s3, $fp, 120
.LBB7_485:                              #   in Loop: Header=BB7_486 Depth=3
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s4
	or	$s1, $a0, $s1
	addi.d	$s8, $s8, 2
	addi.w	$s2, $s2, 16
	addi.d	$s4, $s4, -16
	bgez	$s2, .LBB7_499
.LBB7_486:                              # %.lr.ph2876
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a0, $s8, 1
	bltu	$a0, $s3, .LBB7_485
# %bb.487:                              #   in Loop: Header=BB7_486 Depth=3
	ld.d	$a3, $s0, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_489
# %bb.488:                              #   in Loop: Header=BB7_486 Depth=3
	ld.d	$a0, $s0, 0
	jirl	$ra, $a3, 0
	bgez	$a0, .LBB7_490
	b	.LBB7_625
.LBB7_489:                              #   in Loop: Header=BB7_486 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB7_625
.LBB7_490:                              #   in Loop: Header=BB7_486 Depth=3
	bnez	$a0, .LBB7_484
# %bb.491:                              #   in Loop: Header=BB7_486 Depth=3
	ld.bu	$a0, $fp, 92
	beqz	$a0, .LBB7_483
	b	.LBB7_624
.LBB7_492:                              #   in Loop: Header=BB7_62 Depth=2
	addi.w	$a0, $a0, -3
	b	.LBB7_500
.LBB7_493:                              #   in Loop: Header=BB7_62 Depth=2
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	move	$s7, $a2
	b	.LBB7_495
.LBB7_494:                              #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
.LBB7_495:                              # %.loopexit1355
                                        #   in Loop: Header=BB7_62 Depth=2
	addi.w	$a0, $zero, -1
	ld.d	$a3, $sp, 224                   # 8-byte Folded Reload
	blt	$a0, $a3, .LBB7_498
# %bb.496:                              #   in Loop: Header=BB7_62 Depth=2
	ld.w	$a2, $fp, 76
	sub.w	$a1, $zero, $a3
	bltu	$a2, $a1, .LBB7_637
# %bb.497:                              #   in Loop: Header=BB7_62 Depth=2
	add.d	$a0, $a2, $a3
	st.w	$a0, $fp, 76
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
.LBB7_498:                              #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	sub.w	$a0, $a0, $a1
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	bgtz	$a0, .LBB7_62
	b	.LBB7_590
.LBB7_499:                              # %._crit_edge2877.loopexit
                                        #   in Loop: Header=BB7_62 Depth=2
	addi.w	$a0, $s2, 16
.LBB7_500:                              # %._crit_edge2877
                                        #   in Loop: Header=BB7_62 Depth=2
	slli.d	$s2, $s1, 16
	ori	$a1, $zero, 23
	blt	$a1, $a0, .LBB7_512
# %bb.501:                              # %.lr.ph2887.preheader
                                        #   in Loop: Header=BB7_62 Depth=2
	addi.d	$s4, $a0, -32
	ori	$a1, $zero, 32
	sub.d	$s5, $a1, $a0
	b	.LBB7_505
.LBB7_502:                              #   in Loop: Header=BB7_505 Depth=3
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s7, $fp, 92
	ori	$a0, $zero, 2
.LBB7_503:                              #   in Loop: Header=BB7_505 Depth=3
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s3, $s8, $a0
	st.d	$s3, $fp, 120
.LBB7_504:                              #   in Loop: Header=BB7_505 Depth=3
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s5
	or	$s2, $a0, $s2
	addi.d	$s8, $s8, 2
	addi.w	$s4, $s4, 16
	addi.w	$a0, $zero, -8
	addi.d	$s5, $s5, -16
	bge	$s4, $a0, .LBB7_513
.LBB7_505:                              # %.lr.ph2887
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a0, $s8, 1
	bltu	$a0, $s3, .LBB7_504
# %bb.506:                              #   in Loop: Header=BB7_505 Depth=3
	ld.d	$a3, $s0, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_508
# %bb.507:                              #   in Loop: Header=BB7_505 Depth=3
	ld.d	$a0, $s0, 0
	jirl	$ra, $a3, 0
	b	.LBB7_509
.LBB7_508:                              #   in Loop: Header=BB7_505 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB7_509:                              #   in Loop: Header=BB7_505 Depth=3
	bltz	$a0, .LBB7_625
# %bb.510:                              #   in Loop: Header=BB7_505 Depth=3
	bnez	$a0, .LBB7_503
# %bb.511:                              #   in Loop: Header=BB7_505 Depth=3
	ld.bu	$a0, $fp, 92
	beqz	$a0, .LBB7_502
	b	.LBB7_624
.LBB7_512:                              #   in Loop: Header=BB7_62 Depth=2
	addi.w	$a0, $a0, -16
	b	.LBB7_514
.LBB7_513:                              # %._crit_edge2888.loopexit
                                        #   in Loop: Header=BB7_62 Depth=2
	addi.w	$a0, $s4, 16
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
.LBB7_514:                              # %._crit_edge2888
                                        #   in Loop: Header=BB7_62 Depth=2
	bstrpick.d	$a2, $s2, 31, 24
	slli.d	$s2, $s2, 8
	addi.w	$s4, $a0, -8
	ld.bu	$a1, $fp, 89
	srli.d	$a3, $s1, 16
	bstrins.d	$a2, $a3, 23, 8
	st.w	$a2, $fp, 72
	st.w	$a2, $fp, 76
	ori	$a2, $zero, 1
	beq	$a1, $a2, .LBB7_543
# %bb.515:                              # %._crit_edge2888
                                        #   in Loop: Header=BB7_62 Depth=2
	ori	$a3, $zero, 3
	beq	$a1, $a3, .LBB7_531
# %bb.516:                              # %._crit_edge2888
                                        #   in Loop: Header=BB7_62 Depth=2
	ori	$s7, $zero, 1
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB7_642
# %bb.517:                              # %.preheader1352.preheader
                                        #   in Loop: Header=BB7_62 Depth=2
	move	$s1, $zero
	b	.LBB7_519
.LBB7_518:                              # %._crit_edge2911
                                        #   in Loop: Header=BB7_519 Depth=3
	bstrpick.d	$a0, $s2, 31, 29
	slli.d	$s2, $s2, 3
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	stx.b	$a0, $a1, $s1
	addi.d	$s1, $s1, 1
	addi.w	$s4, $s4, -3
	ori	$a0, $zero, 8
	beq	$s1, $a0, .LBB7_589
.LBB7_519:                              # %.preheader1352
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB7_524 Depth 4
	ori	$a0, $zero, 2
	blt	$a0, $s4, .LBB7_518
# %bb.520:                              # %.lr.ph2910.preheader
                                        #   in Loop: Header=BB7_519 Depth=3
	ori	$a0, $zero, 16
	sub.d	$s5, $a0, $s4
	b	.LBB7_524
.LBB7_521:                              #   in Loop: Header=BB7_524 Depth=4
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s7, $fp, 92
	ori	$a0, $zero, 2
.LBB7_522:                              #   in Loop: Header=BB7_524 Depth=4
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s3, $s8, $a0
	st.d	$s3, $fp, 120
.LBB7_523:                              #   in Loop: Header=BB7_524 Depth=4
	ld.hu	$a0, $s8, 0
	sll.w	$a0, $a0, $s5
	or	$s2, $a0, $s2
	addi.w	$s4, $s6, 16
	addi.d	$s8, $s8, 2
	addi.w	$a0, $zero, -13
	addi.d	$s5, $s5, -16
	bge	$s6, $a0, .LBB7_518
.LBB7_524:                              # %.lr.ph2910
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        #       Parent Loop BB7_519 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	addi.d	$a0, $s8, 1
	move	$s6, $s4
	bltu	$a0, $s3, .LBB7_523
# %bb.525:                              #   in Loop: Header=BB7_524 Depth=4
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_527
# %bb.526:                              #   in Loop: Header=BB7_524 Depth=4
	ld.d	$a0, $a0, 0
	jirl	$ra, $a3, 0
	b	.LBB7_528
.LBB7_527:                              #   in Loop: Header=BB7_524 Depth=4
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB7_528:                              #   in Loop: Header=BB7_524 Depth=4
	bltz	$a0, .LBB7_625
# %bb.529:                              #   in Loop: Header=BB7_524 Depth=4
	bnez	$a0, .LBB7_522
# %bb.530:                              #   in Loop: Header=BB7_524 Depth=4
	ld.bu	$a0, $fp, 92
	beqz	$a0, .LBB7_521
	b	.LBB7_624
.LBB7_531:                              #   in Loop: Header=BB7_62 Depth=2
	ori	$s2, $zero, 1
	st.b	$a2, $fp, 88
	ori	$a1, $zero, 23
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB7_552
# %bb.532:                              # %.lr.ph2897.preheader
                                        #   in Loop: Header=BB7_62 Depth=2
	addi.d	$s1, $a0, -24
	b	.LBB7_535
.LBB7_533:                              #   in Loop: Header=BB7_535 Depth=3
	ld.d	$s8, $fp, 104
	st.d	$s8, $fp, 112
	add.d	$s3, $s8, $a0
	st.d	$s3, $fp, 120
.LBB7_534:                              #   in Loop: Header=BB7_535 Depth=3
	addi.w	$s1, $s1, 16
	addi.d	$s8, $s8, 2
	bgez	$s1, .LBB7_551
.LBB7_535:                              # %.lr.ph2897
                                        #   Parent Loop BB7_11 Depth=1
                                        #     Parent Loop BB7_62 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	addi.d	$a0, $s8, 1
	bltu	$a0, $s3, .LBB7_534
# %bb.536:                              #   in Loop: Header=BB7_535 Depth=3
	ld.d	$a3, $s0, 8
	ld.d	$a1, $fp, 104
	ld.w	$a2, $fp, 152
	beqz	$a3, .LBB7_538
# %bb.537:                              #   in Loop: Header=BB7_535 Depth=3
	ld.d	$a0, $s0, 0
	jirl	$ra, $a3, 0
	b	.LBB7_539
.LBB7_538:                              #   in Loop: Header=BB7_535 Depth=3
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB7_539:                              #   in Loop: Header=BB7_535 Depth=3
	bltz	$a0, .LBB7_625
# %bb.540:                              #   in Loop: Header=BB7_535 Depth=3
	bnez	$a0, .LBB7_533
# %bb.541:                              #   in Loop: Header=BB7_535 Depth=3
	ld.bu	$a0, $fp, 92
	bnez	$a0, .LBB7_624
# %bb.542:                              #   in Loop: Header=BB7_535 Depth=3
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 1
	ld.d	$a0, $fp, 104
	st.b	$zero, $a0, 0
	st.b	$s2, $fp, 92
	ori	$a0, $zero, 2
	b	.LBB7_533
.LBB7_543:                              #   in Loop: Header=BB7_62 Depth=2
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
.LBB7_544:                              #   in Loop: Header=BB7_62 Depth=2
	st.d	$s8, $fp, 112
	st.d	$s3, $fp, 120
	st.w	$s2, $fp, 144
	st.w	$s4, $fp, 148
	ori	$a3, $zero, 256
	move	$a0, $fp
	move	$a1, $s5
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lzx_read_lens)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_629
# %bb.545:                              #   in Loop: Header=BB7_62 Depth=2
	ori	$s4, $zero, 1
	ld.bu	$a0, $fp, 91
	slli.d	$a0, $a0, 3
	addi.d	$a3, $a0, 256
	ori	$a2, $zero, 256
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(lzx_read_lens)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	bnez	$a0, .LBB7_629
# %bb.546:                              #   in Loop: Header=BB7_62 Depth=2
	vld	$vr0, $fp, 112
	vst	$vr0, $sp, 224                  # 16-byte Folded Spill
	ld.w	$s1, $fp, 144
	ld.w	$s2, $fp, 148
	ori	$a0, $zero, 656
	ori	$a1, $zero, 12
	move	$a2, $s5
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(lzx_make_decode_table)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_641
# %bb.547:                              #   in Loop: Header=BB7_62 Depth=2
	ld.bu	$a0, $fp, 472
	beqz	$a0, .LBB7_549
# %bb.548:                              #   in Loop: Header=BB7_62 Depth=2
	st.b	$s4, $fp, 88
.LBB7_549:                              #   in Loop: Header=BB7_62 Depth=2
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
	bnez	$a0, .LBB7_629
# %bb.550:                              #   in Loop: Header=BB7_62 Depth=2
	move	$a2, $s3
	ld.d	$s8, $fp, 112
	ld.d	$s3, $fp, 120
	ld.w	$s4, $fp, 144
	ld.w	$s2, $fp, 148
	ori	$a0, $zero, 250
	ori	$a1, $zero, 12
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(lzx_make_decode_table)
	jirl	$ra, $ra, 0
	ori	$s1, $zero, 1
	beqz	$a0, .LBB7_63
	b	.LBB7_643
.LBB7_551:                              # %._crit_edge2898.loopexit
                                        #   in Loop: Header=BB7_62 Depth=2
	addi.w	$s4, $s1, 16
.LBB7_552:                              # %._crit_edge2898
                                        #   in Loop: Header=BB7_62 Depth=2
	addi.d	$a0, $s4, -16
	sltui	$a0, $a0, 1
	addi.w	$a1, $zero, -2
	masknez	$a0, $a1, $a0
	add.d	$a0, $s8, $a0
	bne	$a0, $s3, .LBB7_555
# %bb.553:                              #   in Loop: Header=BB7_62 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_629
# %bb.554:                              #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s3, $fp, 120
.LBB7_555:                              #   in Loop: Header=BB7_62 Depth=2
	ld.bu	$s2, $a0, 0
	addi.d	$a0, $a0, 1
	bne	$a0, $s3, .LBB7_558
# %bb.556:                              #   in Loop: Header=BB7_62 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_629
# %bb.557:                              #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s3, $fp, 120
.LBB7_558:                              #   in Loop: Header=BB7_62 Depth=2
	ld.bu	$s4, $a0, 0
	addi.d	$a0, $a0, 1
	bne	$a0, $s3, .LBB7_561
# %bb.559:                              #   in Loop: Header=BB7_62 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_629
# %bb.560:                              #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s3, $fp, 120
.LBB7_561:                              #   in Loop: Header=BB7_62 Depth=2
	ld.bu	$s8, $a0, 0
	addi.d	$a0, $a0, 1
	bne	$a0, $s3, .LBB7_564
# %bb.562:                              #   in Loop: Header=BB7_62 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_629
# %bb.563:                              #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s3, $fp, 120
.LBB7_564:                              #   in Loop: Header=BB7_62 Depth=2
	ld.bu	$a1, $a0, 0
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	bne	$a0, $s3, .LBB7_567
# %bb.565:                              #   in Loop: Header=BB7_62 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_629
# %bb.566:                              #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s3, $fp, 120
.LBB7_567:                              #   in Loop: Header=BB7_62 Depth=2
	ld.bu	$a1, $a0, 0
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	bne	$a0, $s3, .LBB7_570
# %bb.568:                              #   in Loop: Header=BB7_62 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_629
# %bb.569:                              #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s3, $fp, 120
.LBB7_570:                              #   in Loop: Header=BB7_62 Depth=2
	ld.bu	$a1, $a0, 0
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	bne	$a0, $s3, .LBB7_573
# %bb.571:                              #   in Loop: Header=BB7_62 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_629
# %bb.572:                              #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s3, $fp, 120
.LBB7_573:                              #   in Loop: Header=BB7_62 Depth=2
	ld.bu	$a1, $a0, 0
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	bne	$a0, $s3, .LBB7_576
# %bb.574:                              #   in Loop: Header=BB7_62 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_629
# %bb.575:                              #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s3, $fp, 120
.LBB7_576:                              #   in Loop: Header=BB7_62 Depth=2
	ld.bu	$a1, $a0, 0
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	bne	$a0, $s3, .LBB7_579
# %bb.577:                              #   in Loop: Header=BB7_62 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_629
# %bb.578:                              #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s3, $fp, 120
.LBB7_579:                              #   in Loop: Header=BB7_62 Depth=2
	ld.bu	$s6, $a0, 0
	addi.d	$a0, $a0, 1
	bne	$a0, $s3, .LBB7_582
# %bb.580:                              #   in Loop: Header=BB7_62 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_629
# %bb.581:                              #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s3, $fp, 120
.LBB7_582:                              #   in Loop: Header=BB7_62 Depth=2
	ld.bu	$s1, $a0, 0
	addi.d	$a0, $a0, 1
	bne	$a0, $s3, .LBB7_585
# %bb.583:                              #   in Loop: Header=BB7_62 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_629
# %bb.584:                              #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s3, $fp, 120
.LBB7_585:                              #   in Loop: Header=BB7_62 Depth=2
	ld.bu	$s5, $a0, 0
	addi.d	$a0, $a0, 1
	bne	$a0, $s3, .LBB7_588
# %bb.586:                              #   in Loop: Header=BB7_62 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_629
# %bb.587:                              #   in Loop: Header=BB7_62 Depth=2
	ld.d	$a0, $fp, 112
	ld.d	$s3, $fp, 120
.LBB7_588:                              #   in Loop: Header=BB7_62 Depth=2
	move	$a2, $s2
	move	$s2, $zero
	move	$a1, $s4
	move	$s4, $zero
	slli.d	$a1, $a1, 8
	or	$a1, $a1, $a2
	slli.d	$a2, $s8, 16
	or	$a1, $a1, $a2
	addi.d	$s8, $a0, 1
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 24
	or	$a1, $a1, $a2
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 8
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	or	$a1, $a1, $a2
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	slli.d	$a2, $a2, 16
	or	$a1, $a1, $a2
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	slli.d	$a2, $a2, 24
	or	$a1, $a1, $a2
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	slli.d	$a1, $s1, 8
	ld.b	$a0, $a0, 0
	or	$a1, $a1, $s6
	slli.d	$a2, $s5, 16
	or	$a1, $a1, $a2
	slli.d	$a0, $a0, 24
	or	$a0, $a1, $a0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ori	$s1, $zero, 1
	b	.LBB7_63
.LBB7_589:                              #   in Loop: Header=BB7_62 Depth=2
	ori	$a0, $zero, 8
	ori	$a1, $zero, 7
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(lzx_make_decode_table)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB7_544
	b	.LBB7_644
.LBB7_590:                              # %._crit_edge3118.loopexit
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.w	$a0, $fp, 48
.LBB7_591:                              # %._crit_edge3118
                                        #   in Loop: Header=BB7_11 Depth=1
	sub.w	$a1, $s7, $a0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	addi.w	$s1, $a0, 0
	bne	$a1, $s1, .LBB7_630
# %bb.592:                              #   in Loop: Header=BB7_11 Depth=1
	addi.w	$a0, $s2, -1
	ori	$a1, $zero, 14
	bltu	$a1, $a0, .LBB7_597
# %bb.593:                              # %.preheader1365
                                        #   in Loop: Header=BB7_11 Depth=1
	addi.d	$a0, $s8, 1
	bltu	$a0, $s3, .LBB7_596
# %bb.594:                              #   in Loop: Header=BB7_11 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lzx_read_input)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_629
# %bb.595:                              #   in Loop: Header=BB7_11 Depth=1
	ld.d	$s8, $fp, 112
	ld.d	$s3, $fp, 120
.LBB7_596:                              # %.loopexit1366.loopexit
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.hu	$a0, $s8, 0
	ori	$a1, $zero, 16
	sub.d	$a1, $a1, $s2
	sll.w	$a0, $a0, $a1
	or	$s4, $a0, $s4
	ori	$s2, $s2, 16
	addi.d	$s8, $s8, 2
.LBB7_597:                              # %.loopexit1366
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.d	$a0, $fp, 128
	ld.d	$a1, $fp, 136
	bne	$a0, $a1, .LBB7_631
# %bb.598:                              #   in Loop: Header=BB7_11 Depth=1
	ld.bu	$a0, $fp, 88
	ld.w	$s6, $fp, 80
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	bstrpick.d	$s5, $a1, 31, 0
	beqz	$a0, .LBB7_610
# %bb.599:                              #   in Loop: Header=BB7_11 Depth=1
	beqz	$s6, .LBB7_611
# %bb.600:                              #   in Loop: Header=BB7_11 Depth=1
	ori	$a0, $zero, 11
	bltu	$s1, $a0, .LBB7_612
# %bb.601:                              #   in Loop: Header=BB7_11 Depth=1
	ld.w	$a0, $fp, 52
	lu12i.w	$a1, 8
	ori	$a1, $a1, 1
	bgeu	$a0, $a1, .LBB7_612
# %bb.602:                              # %.lr.ph3130.preheader
                                        #   in Loop: Header=BB7_11 Depth=1
	st.d	$s7, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -10
	bstrpick.d	$a0, $a0, 31, 0
	ld.d	$a1, $fp, 32
	ld.wu	$a2, $fp, 48
	ld.w	$s1, $fp, 84
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	add.d	$s7, $a3, $a0
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	st.d	$s0, $fp, 128
	add.d	$a1, $a1, $a2
	move	$a0, $s0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB7_604
.LBB7_603:                              #   in Loop: Header=BB7_604 Depth=2
	addi.d	$s0, $s0, 1
	ori	$a1, $zero, 1
	add.d	$s1, $s1, $a1
	bgeu	$s0, $s7, .LBB7_609
.LBB7_604:                              # %.lr.ph3130
                                        #   Parent Loop BB7_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $s0, 0
	ori	$a2, $zero, 232
	bne	$a1, $a2, .LBB7_603
# %bb.605:                              #   in Loop: Header=BB7_604 Depth=2
	ld.bu	$a1, $s0, 3
	ld.hu	$a2, $s0, 1
	ld.b	$a3, $s0, 4
	slli.w	$a1, $a1, 16
	or	$a1, $a2, $a1
	slli.w	$a2, $a3, 24
	or	$a1, $a1, $a2
	sub.w	$a3, $zero, $s1
	blt	$a1, $a3, .LBB7_608
# %bb.606:                              #   in Loop: Header=BB7_604 Depth=2
	bge	$a1, $s6, .LBB7_608
# %bb.607:                              #   in Loop: Header=BB7_604 Depth=2
	slti	$a2, $a2, 0
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $s6, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	st.w	$a1, $s0, 1
.LBB7_608:                              #   in Loop: Header=BB7_604 Depth=2
	addi.d	$s0, $s0, 5
	ori	$a1, $zero, 5
	add.d	$s1, $s1, $a1
	bltu	$s0, $s7, .LBB7_604
.LBB7_609:                              # %._crit_edge3131
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.w	$a0, $fp, 84
	ld.d	$a1, $fp, 128
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.w	$a0, $fp, 84
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	b	.LBB7_614
.LBB7_610:                              #   in Loop: Header=BB7_11 Depth=1
	ld.d	$a0, $fp, 32
	ld.wu	$a1, $fp, 48
	add.d	$a1, $a0, $a1
	st.d	$a1, $fp, 128
	bnez	$s6, .LBB7_613
	b	.LBB7_614
.LBB7_611:                              # %.thread3348
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.d	$a0, $fp, 32
	ld.wu	$a1, $fp, 48
	add.d	$a1, $a0, $a1
	st.d	$a1, $fp, 128
	b	.LBB7_614
.LBB7_612:                              # %.thread3350
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.d	$a0, $fp, 32
	ld.wu	$a1, $fp, 48
	add.d	$a1, $a0, $a1
	st.d	$a1, $fp, 128
.LBB7_613:                              #   in Loop: Header=BB7_11 Depth=1
	ld.w	$a0, $fp, 84
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.w	$a0, $fp, 84
.LBB7_614:                              #   in Loop: Header=BB7_11 Depth=1
	add.d	$a0, $a1, $s5
	st.d	$a0, $fp, 136
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	slt	$a0, $a4, $s5
	ld.bu	$a2, $fp, 8
	masknez	$a3, $s5, $a0
	maskeqz	$a0, $a4, $a0
	or	$a0, $a0, $a3
	addi.w	$s1, $a0, 0
	beqz	$a2, .LBB7_617
# %bb.615:                              #   in Loop: Header=BB7_11 Depth=1
	ld.w	$a0, $fp, 4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	bne	$a0, $s1, .LBB7_625
# %bb.616:                              # %._crit_edge3344
                                        #   in Loop: Header=BB7_11 Depth=1
	ld.d	$a1, $fp, 128
	b	.LBB7_618
.LBB7_617:                              #   in Loop: Header=BB7_11 Depth=1
	ld.d	$s0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
.LBB7_618:                              #   in Loop: Header=BB7_11 Depth=1
	ld.d	$a0, $fp, 16
	add.d	$a1, $a1, $s1
	st.d	$a1, $fp, 128
	add.d	$a0, $a0, $s1
	ld.w	$a2, $fp, 48
	st.d	$a0, $fp, 16
	ld.w	$a0, $fp, 52
	ld.w	$a1, $fp, 40
	ld.d	$a3, $sp, 192                   # 8-byte Folded Reload
	add.w	$a2, $a2, $a3
	st.w	$a2, $fp, 48
	addi.w	$a0, $a0, 1
	st.w	$a0, $fp, 52
	bne	$a2, $a1, .LBB7_620
# %bb.619:                              #   in Loop: Header=BB7_11 Depth=1
	st.w	$zero, $fp, 48
.LBB7_620:                              #   in Loop: Header=BB7_11 Depth=1
	andi	$a2, $s2, 15
	sll.w	$s4, $s4, $a2
	bstrins.d	$s2, $zero, 3, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	sub.d	$a2, $a2, $s1
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	xor	$a1, $s7, $a1
	sltui	$a1, $a1, 1
	masknez	$s7, $s7, $a1
	ori	$s1, $zero, 1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	bltu	$a0, $a1, .LBB7_11
# %bb.621:                              # %._crit_edge3143
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beqz	$a0, .LBB7_639
.LBB7_622:                              # %._crit_edge3143.thread
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB7_626
.LBB7_623:
	move	$a0, $zero
	b	.LBB7_627
.LBB7_624:
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB7_625:
	addi.w	$a0, $zero, -123
.LBB7_626:
	move	$a1, $a0
	lu32i.d	$a1, 0
	st.w	$a1, $fp, 96
.LBB7_627:
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
.LBB7_628:                              # %split3337
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB7_626
.LBB7_629:
	ld.w	$a0, $fp, 96
	b	.LBB7_627
.LBB7_630:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	b	.LBB7_632
.LBB7_631:
	sub.d	$a1, $a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
.LBB7_632:
	move	$a2, $s1
.LBB7_633:
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB7_634:
	addi.w	$a0, $zero, -124
	b	.LBB7_626
.LBB7_635:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB7_626
.LBB7_636:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB7_626
.LBB7_637:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	b	.LBB7_633
.LBB7_638:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB7_626
.LBB7_639:
	move	$a0, $zero
	st.d	$s8, $fp, 112
	st.d	$s3, $fp, 120
	st.w	$s4, $fp, 144
	st.w	$s2, $fp, 148
	st.w	$s7, $fp, 44
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.w	$a1, $fp, 60
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.w	$a1, $fp, 64
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.w	$a1, $fp, 68
	b	.LBB7_627
.LBB7_640:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB7_626
.LBB7_641:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB7_626
.LBB7_642:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB7_626
.LBB7_643:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB7_626
.LBB7_644:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB7_626
.Lfunc_end7:
	.size	lzx_decompress, .Lfunc_end7-lzx_decompress
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI7_0:
	.word	.LBB7_432-.LJTI7_0
	.word	.LBB7_422-.LJTI7_0
	.word	.LBB7_423-.LJTI7_0
	.word	.LBB7_424-.LJTI7_0
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
	ori	$a0, $zero, 8
	ori	$t1, $zero, 32
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
	bstrpick.d	$t7, $t2, 30, 5
	slli.w	$t7, $t7, 5
	andi	$t8, $t2, 31
	andi	$fp, $t2, 24
	bstrpick.d	$s0, $t2, 30, 3
	slli.w	$s0, $s0, 3
	andi	$s1, $t2, 7
	bstrpick.d	$s2, $t2, 31, 3
	slli.d	$s2, $s2, 3
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
	xvreplgr2vr.h	$xr0, $t5
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
	xvstx	$xr0, $a3, $s6
	xvst	$xr0, $s7, 32
	addi.w	$s5, $s5, -32
	addi.w	$s4, $s4, 32
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
	vreplgr2vr.h	$vr0, $t5
	add.d	$s5, $s2, $s6
	add.w	$a7, $a7, $s6
	.p2align	4, , 16
.LBB9_18:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB9_2 Depth=1
                                        #     Parent Loop BB9_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$s6, $a7, 31, 0
	slli.d	$s6, $s6, 1
	vstx	$vr0, $a3, $s6
	addi.w	$s5, $s5, 8
	addi.w	$a7, $a7, 8
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
	ori	$t3, $zero, 8
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
	ori	$t1, $zero, 32
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
	bstrins.d	$t1, $zero, 4, 0
	xvrepli.b	$xr0, -1
.LBB9_39:                               # %vector.body187
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t3, $a7, $t2
	bstrpick.d	$t3, $t3, 15, 0
	alsl.d	$t4, $t3, $a3, 1
	slli.d	$t3, $t3, 1
	xvstx	$xr0, $a3, $t3
	addi.w	$t2, $t2, 32
	xvst	$xr0, $t4, 32
	bne	$t1, $t2, .LBB9_39
# %bb.40:                               # %middle.block190
	beq	$t0, $t1, .LBB9_48
# %bb.41:                               # %vec.epilog.iter.check195
	andi	$t2, $t0, 24
	beqz	$t2, .LBB9_45
.LBB9_42:                               # %vec.epilog.ph194
	move	$t3, $t0
	bstrins.d	$t3, $zero, 2, 0
	add.d	$t2, $a7, $t3
	vrepli.b	$vr0, -1
.LBB9_43:                               # %vec.epilog.vector.body201
                                        # =>This Inner Loop Header: Depth=1
	add.d	$t4, $a7, $t1
	bstrpick.d	$t4, $t4, 15, 0
	slli.d	$t4, $t4, 1
	addi.w	$t1, $t1, 8
	vstx	$vr0, $a3, $t4
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
	alsl.d	$t7, $t7, $a3, 1
	slli.d	$t6, $a5, 1
	slli.d	$t8, $a5, 2
	bstrpick.d	$t8, $t8, 32, 2
	slli.d	$t8, $t8, 2
	stx.h	$a0, $a3, $t8
	addi.d	$t6, $t6, 1
	bstrpick.d	$t6, $t6, 31, 0
	slli.d	$t6, $t6, 1
	stx.h	$a0, $a3, $t6
	move	$t6, $a5
	addi.w	$t8, $a5, 1
	st.h	$a5, $t7, 0
	move	$a5, $t8
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
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	bgeu	$a2, $s3, .LBB10_121
# %bb.16:
	ori	$t0, $zero, 15
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a0, -16384
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
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
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	blt	$t0, $s2, .LBB10_28
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
	ori	$t0, $zero, 15
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
	or	$a3, $a3, $a0
	addi.w	$a0, $a6, 1
	stx.b	$a3, $a5, $a2
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
	ori	$t0, $zero, 15
	b	.LBB10_88
.LBB10_79:                              #   in Loop: Header=BB10_17 Depth=1
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
.LBB10_80:                              # %._crit_edge485
                                        #   in Loop: Header=BB10_17 Depth=1
	bstrpick.d	$a0, $s6, 31, 28
	bstrpick.d	$a3, $s6, 31, 30
	addi.w	$a2, $a0, 4
	ori	$a4, $zero, 3
	bltu	$a3, $a4, .LBB10_112
# %bb.81:                               # %._crit_edge485
                                        #   in Loop: Header=BB10_17 Depth=1
	addi.d	$a3, $zero, -4
	sub.w	$a3, $a3, $a0
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ori	$t0, $zero, 15
	bltu	$a3, $a4, .LBB10_111
# %bb.82:                               # %vector.body
                                        #   in Loop: Header=BB10_17 Depth=1
	addi.w	$a3, $a4, 16
	bstrpick.d	$a4, $a4, 31, 0
	vstx	$vr0, $s2, $a4
	ori	$a4, $zero, 16
	bne	$a2, $a4, .LBB10_113
# %bb.83:                               #   in Loop: Header=BB10_17 Depth=1
	move	$a0, $a3
	b	.LBB10_115
.LBB10_84:                              #   in Loop: Header=BB10_17 Depth=1
	addi.d	$a0, $a1, -1
	b	.LBB10_103
.LBB10_85:                              # %vector.ph579
                                        #   in Loop: Header=BB10_17 Depth=1
	andi	$a4, $a3, 48
	andi	$a2, $a3, 15
	add.w	$a0, $a7, $a4
	move	$a5, $a4
	ori	$t0, $zero, 15
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
	move	$a0, $a6
	ori	$t0, $zero, 15
	b	.LBB10_116
.LBB10_111:                             #   in Loop: Header=BB10_17 Depth=1
	move	$a3, $a4
	b	.LBB10_114
.LBB10_112:                             #   in Loop: Header=BB10_17 Depth=1
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ori	$t0, $zero, 15
	b	.LBB10_114
.LBB10_113:                             #   in Loop: Header=BB10_17 Depth=1
	addi.d	$a2, $a0, -12
.LBB10_114:                             # %scalar.ph
                                        #   Parent Loop BB10_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$a2, $a2, -1
	addi.w	$a0, $a3, 1
	bstrpick.d	$a3, $a3, 31, 0
	stx.b	$zero, $s2, $a3
	move	$a3, $a0
	bnez	$a2, .LBB10_114
.LBB10_115:                             # %.loopexit.loopexit
                                        #   in Loop: Header=BB10_17 Depth=1
	slli.d	$s6, $s6, 4
	addi.w	$a1, $a1, -4
.LBB10_116:                             # %.loopexit
                                        #   in Loop: Header=BB10_17 Depth=1
	move	$a2, $a0
	move	$s2, $a1
	bltu	$a0, $s3, .LBB10_17
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
.LCPI12_9:
	.half	4                               # 0x4
	.half	3                               # 0x3
	.half	5                               # 0x5
	.half	2                               # 0x2
	.half	6                               # 0x6
	.half	1                               # 0x1
	.half	7                               # 0x7
	.half	0                               # 0x0
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0
.LCPI12_1:
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
.LCPI12_2:
	.half	0                               # 0x0
	.half	24                              # 0x18
	.half	1                               # 0x1
	.half	23                              # 0x17
	.half	2                               # 0x2
	.half	22                              # 0x16
	.half	3                               # 0x3
	.half	21                              # 0x15
	.half	4                               # 0x4
	.half	20                              # 0x14
	.half	5                               # 0x5
	.half	19                              # 0x13
	.half	6                               # 0x6
	.half	18                              # 0x12
	.half	7                               # 0x7
	.half	17                              # 0x11
.LCPI12_3:
	.half	8                               # 0x8
	.half	16                              # 0x10
	.half	9                               # 0x9
	.half	15                              # 0xf
	.half	10                              # 0xa
	.half	14                              # 0xe
	.half	11                              # 0xb
	.half	13                              # 0xd
	.half	12                              # 0xc
	.half	12                              # 0xc
	.half	13                              # 0xd
	.half	11                              # 0xb
	.half	14                              # 0xe
	.half	10                              # 0xa
	.half	15                              # 0xf
	.half	9                               # 0x9
.LCPI12_4:
	.half	16                              # 0x10
	.half	8                               # 0x8
	.half	17                              # 0x11
	.half	7                               # 0x7
	.half	18                              # 0x12
	.half	6                               # 0x6
	.half	19                              # 0x13
	.half	5                               # 0x5
	.half	20                              # 0x14
	.half	4                               # 0x4
	.half	21                              # 0x15
	.half	3                               # 0x3
	.half	22                              # 0x16
	.half	2                               # 0x2
	.half	23                              # 0x17
	.half	1                               # 0x1
.LCPI12_5:
	.half	0                               # 0x0
	.half	27                              # 0x1b
	.half	1                               # 0x1
	.half	26                              # 0x1a
	.half	2                               # 0x2
	.half	25                              # 0x19
	.half	3                               # 0x3
	.half	24                              # 0x18
	.half	4                               # 0x4
	.half	23                              # 0x17
	.half	5                               # 0x5
	.half	22                              # 0x16
	.half	6                               # 0x6
	.half	21                              # 0x15
	.half	7                               # 0x7
	.half	20                              # 0x14
.LCPI12_6:
	.half	8                               # 0x8
	.half	19                              # 0x13
	.half	9                               # 0x9
	.half	18                              # 0x12
	.half	10                              # 0xa
	.half	17                              # 0x11
	.half	11                              # 0xb
	.half	16                              # 0x10
	.half	12                              # 0xc
	.half	15                              # 0xf
	.half	13                              # 0xd
	.half	14                              # 0xe
	.half	14                              # 0xe
	.half	13                              # 0xd
	.half	15                              # 0xf
	.half	12                              # 0xc
.LCPI12_7:
	.half	16                              # 0x10
	.half	11                              # 0xb
	.half	17                              # 0x11
	.half	10                              # 0xa
	.half	18                              # 0x12
	.half	9                               # 0x9
	.half	19                              # 0x13
	.half	8                               # 0x8
	.half	20                              # 0x14
	.half	7                               # 0x7
	.half	21                              # 0x15
	.half	6                               # 0x6
	.half	22                              # 0x16
	.half	5                               # 0x5
	.half	23                              # 0x17
	.half	4                               # 0x4
.LCPI12_8:
	.half	24                              # 0x18
	.half	3                               # 0x3
	.half	25                              # 0x19
	.half	2                               # 0x2
	.half	26                              # 0x1a
	.half	1                               # 0x1
	.half	27                              # 0x1b
	.half	0                               # 0x0
	.half	0                               # 0x0
	.half	7                               # 0x7
	.half	1                               # 0x1
	.half	6                               # 0x6
	.half	2                               # 0x2
	.half	5                               # 0x5
	.half	3                               # 0x3
	.half	4                               # 0x4
	.text
	.globl	qtm_init
	.p2align	5
	.type	qtm_init,@function
qtm_init:                               # @qtm_init
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
	addi.w	$a6, $zero, -7
	bltu	$a2, $a6, .LBB12_11
# %bb.1:
	ori	$s0, $zero, 1
	blt	$a3, $s0, .LBB12_11
# %bb.2:
	move	$s4, $a3
	move	$s2, $a0
	move	$s1, $a1
	st.d	$a4, $sp, 16                    # 8-byte Folded Spill
	st.d	$a5, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 2136
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB12_11
# %bb.3:                                # %.preheader132
	move	$a1, $zero
	move	$a2, $zero
	sll.w	$s3, $s0, $fp
	addi.w	$s0, $s4, 1
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
	vst	$vr0, $a0, 342
	lu12i.w	$a1, 20560
	ori	$a1, $a1, 1284
	pcalau12i	$a2, %pc_hi20(.LCPI12_1)
	xvld	$xr0, $a2, %pc_lo12(.LCPI12_1)
	st.w	$a1, $a0, 358
	ori	$a1, $zero, 5
	st.h	$a1, $a0, 362
	xvst	$xr0, $a0, 310
	bstrpick.d	$a1, $s3, 31, 0
	move	$s4, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s4, 16
	beqz	$a0, .LBB12_13
# %bb.6:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	move	$a0, $s4
	st.d	$a1, $s4, 48
	beqz	$a1, .LBB12_14
# %bb.7:                                # %vector.ph
	st.w	$s2, $a0, 0
	st.w	$s1, $a0, 4
	ori	$a2, $zero, 1
	st.b	$a2, $a0, 8
	st.w	$s0, $a0, 92
	ld.d	$a3, $a0, 16
	st.w	$s3, $a0, 24
	st.d	$a1, $a0, 64
	st.d	$a1, $a0, 56
	st.d	$a3, $a0, 80
	st.d	$a3, $a0, 72
	addi.d	$a1, $a0, 512
	ori	$t0, $zero, 4
	ori	$s2, $zero, 4
	lu32i.d	$s2, 64
	st.d	$s2, $a0, 368
	st.d	$a1, $a0, 376
	st.h	$a2, $a0, 516
	ori	$s1, $zero, 64
	st.h	$s1, $a0, 514
	ori	$a3, $zero, 63
	st.h	$a3, $a0, 518
	ori	$ra, $zero, 62
	st.h	$ra, $a0, 522
	ori	$s8, $zero, 61
	st.h	$s8, $a0, 526
	ori	$s7, $zero, 60
	st.h	$s7, $a0, 530
	ori	$s6, $zero, 59
	st.h	$s6, $a0, 534
	ori	$s5, $zero, 58
	st.h	$s5, $a0, 538
	ori	$s4, $zero, 57
	st.h	$s4, $a0, 542
	ori	$s3, $zero, 56
	st.h	$s3, $a0, 546
	ori	$s0, $zero, 55
	st.h	$s0, $a0, 550
	ori	$t8, $zero, 54
	st.h	$t8, $a0, 554
	ori	$t7, $zero, 53
	st.h	$t7, $a0, 558
	lu12i.w	$a1, 256
	ori	$a1, $a1, 49
	st.w	$a1, $a0, 574
	ori	$a1, $zero, 17
	st.h	$a1, $a0, 580
	lu12i.w	$a1, 512
	ori	$a1, $a1, 33
	st.w	$a1, $a0, 638
	ori	$a1, $zero, 33
	st.h	$a1, $a0, 644
	lu12i.w	$a1, 768
	ori	$a1, $a1, 17
	st.w	$a1, $a0, 702
	ori	$a1, $zero, 49
	st.h	$a1, $a0, 708
	lu12i.w	$a1, 1024
	ori	$a1, $a1, 1
	st.w	$a1, $a0, 766
	addi.d	$a1, $a0, 772
	st.d	$a1, $a0, 392
	ori	$a1, $zero, 65
	st.h	$a1, $a0, 776
	ori	$a1, $zero, 66
	st.h	$a1, $a0, 780
	ori	$a1, $zero, 67
	st.h	$a1, $a0, 784
	ori	$a1, $zero, 68
	st.h	$a1, $a0, 788
	ori	$a1, $zero, 69
	st.h	$a1, $a0, 792
	ori	$a1, $zero, 70
	st.h	$a1, $a0, 796
	ori	$a1, $zero, 71
	st.h	$a1, $a0, 800
	ori	$a1, $zero, 72
	st.h	$a1, $a0, 804
	ori	$a1, $zero, 73
	st.h	$a1, $a0, 808
	ori	$a1, $zero, 74
	st.h	$a1, $a0, 812
	ori	$a1, $zero, 75
	st.h	$a1, $a0, 816
	ori	$a1, $zero, 76
	st.h	$a1, $a0, 820
	ori	$a1, $zero, 77
	st.h	$a1, $a0, 824
	ori	$a1, $zero, 78
	st.h	$a1, $a0, 828
	ori	$a1, $zero, 79
	st.h	$a1, $a0, 832
	lu12i.w	$a1, 1280
	ori	$a1, $a1, 49
	st.w	$a1, $a0, 834
	ori	$a1, $zero, 81
	st.h	$a1, $a0, 840
	ori	$a1, $zero, 82
	st.h	$a1, $a0, 844
	ori	$a1, $zero, 83
	st.h	$a1, $a0, 848
	ori	$a1, $zero, 84
	st.h	$a1, $a0, 852
	ori	$a1, $zero, 85
	st.h	$a1, $a0, 856
	ori	$a1, $zero, 86
	st.h	$a1, $a0, 860
	ori	$a1, $zero, 87
	st.h	$a1, $a0, 864
	ori	$a1, $zero, 88
	st.h	$a1, $a0, 868
	ori	$a1, $zero, 89
	st.h	$a1, $a0, 872
	ori	$a1, $zero, 90
	st.h	$a1, $a0, 876
	ori	$a1, $zero, 91
	st.h	$a1, $a0, 880
	ori	$a1, $zero, 92
	st.h	$a1, $a0, 884
	ori	$a1, $zero, 93
	st.h	$a1, $a0, 888
	ori	$a1, $zero, 94
	st.h	$a1, $a0, 892
	ori	$a1, $zero, 95
	st.h	$a1, $a0, 896
	lu12i.w	$a1, 1536
	ori	$a1, $a1, 33
	st.w	$a1, $a0, 898
	ori	$a1, $zero, 97
	st.h	$a1, $a0, 904
	ori	$a1, $zero, 98
	st.h	$a1, $a0, 908
	ori	$a1, $zero, 99
	st.h	$a1, $a0, 912
	ori	$a1, $zero, 100
	st.h	$a1, $a0, 916
	ori	$a1, $zero, 101
	st.h	$a1, $a0, 920
	ori	$a1, $zero, 102
	st.h	$a1, $a0, 924
	ori	$a1, $zero, 103
	st.h	$a1, $a0, 928
	ori	$a1, $zero, 104
	st.h	$a1, $a0, 932
	ori	$a1, $zero, 105
	st.h	$a1, $a0, 936
	ori	$a1, $zero, 106
	st.h	$a1, $a0, 940
	ori	$a1, $zero, 107
	st.h	$a1, $a0, 944
	ori	$a1, $zero, 108
	st.h	$a1, $a0, 948
	ori	$a1, $zero, 109
	st.h	$a1, $a0, 952
	ori	$a1, $zero, 110
	st.h	$a1, $a0, 956
	ori	$a1, $zero, 111
	st.h	$a1, $a0, 960
	lu12i.w	$a1, 1792
	ori	$a1, $a1, 17
	st.w	$a1, $a0, 962
	ori	$a1, $zero, 113
	st.h	$a1, $a0, 968
	ori	$a1, $zero, 114
	st.h	$a1, $a0, 972
	ori	$a1, $zero, 115
	st.h	$a1, $a0, 976
	ori	$a1, $zero, 116
	st.h	$a1, $a0, 980
	ori	$a1, $zero, 117
	st.h	$a1, $a0, 984
	ori	$a1, $zero, 118
	st.h	$a1, $a0, 988
	ori	$a1, $zero, 119
	st.h	$a1, $a0, 992
	ori	$a1, $zero, 120
	st.h	$a1, $a0, 996
	ori	$a1, $zero, 121
	st.h	$a1, $a0, 1000
	ori	$a1, $zero, 122
	st.h	$a1, $a0, 1004
	ori	$a1, $zero, 123
	st.h	$a1, $a0, 1008
	ori	$a1, $zero, 124
	st.h	$a1, $a0, 1012
	ori	$a1, $zero, 125
	st.h	$a1, $a0, 1016
	ori	$a1, $zero, 126
	st.h	$a1, $a0, 1020
	ori	$a1, $zero, 127
	st.h	$a1, $a0, 1024
	lu12i.w	$a1, 2048
	ori	$a1, $a1, 1
	st.w	$a1, $a0, 1026
	addi.d	$a1, $a0, 1032
	st.d	$a1, $a0, 408
	ori	$a1, $zero, 128
	st.h	$a1, $a0, 1032
	ori	$a1, $zero, 129
	st.h	$a1, $a0, 1036
	ori	$a1, $zero, 130
	st.h	$a1, $a0, 1040
	ori	$a1, $zero, 131
	st.h	$a1, $a0, 1044
	ori	$a1, $zero, 132
	st.h	$a1, $a0, 1048
	ori	$a1, $zero, 133
	st.h	$a1, $a0, 1052
	ori	$a1, $zero, 134
	st.h	$a1, $a0, 1056
	ori	$a1, $zero, 135
	st.h	$a1, $a0, 1060
	ori	$a1, $zero, 136
	st.h	$a1, $a0, 1064
	ori	$a1, $zero, 137
	st.h	$a1, $a0, 1068
	ori	$a1, $zero, 138
	st.h	$a1, $a0, 1072
	ori	$a1, $zero, 139
	st.h	$a1, $a0, 1076
	ori	$a1, $zero, 140
	st.h	$a1, $a0, 1080
	ori	$a1, $zero, 141
	st.h	$a1, $a0, 1084
	ori	$a1, $zero, 142
	st.h	$a1, $a0, 1088
	ori	$a1, $zero, 143
	st.h	$a1, $a0, 1092
	lu12i.w	$a1, 2304
	ori	$a1, $a1, 49
	st.w	$a1, $a0, 1094
	ori	$a1, $zero, 145
	st.h	$a1, $a0, 1100
	ori	$a1, $zero, 146
	st.h	$a1, $a0, 1104
	ori	$a1, $zero, 147
	st.h	$a1, $a0, 1108
	ori	$a1, $zero, 148
	st.h	$a1, $a0, 1112
	ori	$a1, $zero, 149
	st.h	$a1, $a0, 1116
	ori	$a1, $zero, 150
	st.h	$a1, $a0, 1120
	ori	$a1, $zero, 151
	st.h	$a1, $a0, 1124
	ori	$a1, $zero, 152
	st.h	$a1, $a0, 1128
	ori	$a1, $zero, 153
	st.h	$a1, $a0, 1132
	ori	$a1, $zero, 154
	st.h	$a1, $a0, 1136
	ori	$a1, $zero, 155
	st.h	$a1, $a0, 1140
	ori	$a1, $zero, 156
	st.h	$a1, $a0, 1144
	ori	$a1, $zero, 157
	st.h	$a1, $a0, 1148
	ori	$a1, $zero, 158
	st.h	$a1, $a0, 1152
	ori	$a1, $zero, 159
	st.h	$a1, $a0, 1156
	lu12i.w	$a1, 2560
	ori	$a1, $a1, 33
	st.w	$a1, $a0, 1158
	ori	$a1, $zero, 161
	st.h	$a1, $a0, 1164
	ori	$a1, $zero, 162
	st.h	$a1, $a0, 1168
	ori	$a1, $zero, 163
	st.h	$a1, $a0, 1172
	ori	$a1, $zero, 164
	st.h	$a1, $a0, 1176
	ori	$a1, $zero, 165
	st.h	$a1, $a0, 1180
	ori	$a1, $zero, 166
	st.h	$a1, $a0, 1184
	ori	$a1, $zero, 167
	st.h	$a1, $a0, 1188
	ori	$a1, $zero, 168
	st.h	$a1, $a0, 1192
	ori	$a1, $zero, 169
	st.h	$a1, $a0, 1196
	ori	$a1, $zero, 170
	st.h	$a1, $a0, 1200
	ori	$a1, $zero, 171
	st.h	$a1, $a0, 1204
	ori	$a1, $zero, 172
	st.h	$a1, $a0, 1208
	ori	$a1, $zero, 173
	st.h	$a1, $a0, 1212
	ori	$a1, $zero, 174
	st.h	$a1, $a0, 1216
	ori	$a1, $zero, 175
	st.h	$a1, $a0, 1220
	lu12i.w	$a1, 2816
	ori	$a1, $a1, 17
	st.w	$a1, $a0, 1222
	ori	$a1, $zero, 177
	st.h	$a1, $a0, 1228
	ori	$a1, $zero, 178
	st.h	$a1, $a0, 1232
	ori	$a1, $zero, 179
	st.h	$a1, $a0, 1236
	ori	$a1, $zero, 180
	st.h	$a1, $a0, 1240
	ori	$a1, $zero, 181
	st.h	$a1, $a0, 1244
	ori	$a1, $zero, 182
	st.h	$a1, $a0, 1248
	ori	$a1, $zero, 183
	st.h	$a1, $a0, 1252
	ori	$a1, $zero, 184
	st.h	$a1, $a0, 1256
	ori	$a1, $zero, 185
	st.h	$a1, $a0, 1260
	ori	$a1, $zero, 186
	st.h	$a1, $a0, 1264
	ori	$a1, $zero, 187
	st.h	$a1, $a0, 1268
	ori	$a1, $zero, 188
	st.h	$a1, $a0, 1272
	ori	$a1, $zero, 189
	st.h	$a1, $a0, 1276
	ori	$a1, $zero, 190
	st.h	$a1, $a0, 1280
	ori	$a1, $zero, 191
	st.h	$a1, $a0, 1284
	lu12i.w	$a1, 3072
	ori	$a1, $a1, 1
	st.w	$a1, $a0, 1286
	ori	$a2, $zero, 52
	st.h	$a2, $a0, 562
	st.d	$s2, $a0, 384
	st.d	$s2, $a0, 400
	st.d	$s2, $a0, 416
	addi.d	$a1, $a0, 1292
	st.d	$a1, $a0, 424
	ori	$a1, $zero, 192
	st.h	$a1, $a0, 1292
	ori	$a1, $zero, 193
	st.h	$a1, $a0, 1296
	ori	$a1, $zero, 194
	st.h	$a1, $a0, 1300
	ori	$a1, $zero, 195
	st.h	$a1, $a0, 1304
	ori	$a1, $zero, 196
	st.h	$a1, $a0, 1308
	ori	$a1, $zero, 197
	st.h	$a1, $a0, 1312
	ori	$a1, $zero, 198
	st.h	$a1, $a0, 1316
	ori	$a1, $zero, 199
	st.h	$a1, $a0, 1320
	ori	$a1, $zero, 200
	st.h	$a1, $a0, 1324
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
	ori	$a1, $zero, 51
	st.h	$a1, $a0, 566
	st.h	$s1, $a0, 772
	st.h	$s1, $a0, 774
	st.h	$s1, $a0, 1034
	st.h	$s1, $a0, 1294
	ori	$s2, $zero, 50
	st.h	$s2, $a0, 570
	st.h	$a3, $a0, 764
	st.h	$a3, $a0, 778
	st.h	$a3, $a0, 1038
	st.h	$a3, $a0, 1298
	ori	$t3, $zero, 18
	st.h	$ra, $a0, 760
	st.h	$ra, $a0, 782
	st.h	$ra, $a0, 1042
	st.h	$ra, $a0, 1302
	ori	$t4, $zero, 19
	st.h	$s8, $a0, 756
	st.h	$s8, $a0, 786
	st.h	$s8, $a0, 1046
	st.h	$s8, $a0, 1306
	ori	$t5, $zero, 20
	st.h	$s7, $a0, 752
	st.h	$s7, $a0, 790
	st.h	$s7, $a0, 1050
	st.h	$s7, $a0, 1310
	ori	$t6, $zero, 21
	st.h	$s6, $a0, 748
	st.h	$s6, $a0, 794
	st.h	$s6, $a0, 1054
	st.h	$s6, $a0, 1314
	ori	$s1, $zero, 22
	st.h	$s5, $a0, 744
	st.h	$s5, $a0, 798
	st.h	$s5, $a0, 1058
	st.h	$s5, $a0, 1318
	ori	$ra, $zero, 23
	st.h	$s4, $a0, 740
	st.h	$s4, $a0, 802
	st.h	$s4, $a0, 1062
	st.h	$s4, $a0, 1322
	ori	$t2, $zero, 24
	st.h	$s3, $a0, 736
	st.h	$s3, $a0, 806
	st.h	$s3, $a0, 1066
	st.h	$s3, $a0, 1326
	ori	$s6, $zero, 25
	st.h	$s0, $a0, 732
	st.h	$s0, $a0, 810
	st.h	$s0, $a0, 1070
	st.h	$s0, $a0, 1330
	ori	$s0, $zero, 26
	st.h	$t8, $a0, 728
	st.h	$t8, $a0, 814
	st.h	$t8, $a0, 1074
	st.h	$t8, $a0, 1334
	pcalau12i	$a3, %pc_hi20(.LCPI12_2)
	xvld	$xr0, $a3, %pc_lo12(.LCPI12_2)
	ori	$s4, $zero, 27
	st.h	$t7, $a0, 724
	st.h	$t7, $a0, 818
	st.h	$t7, $a0, 1078
	st.h	$t7, $a0, 1338
	ori	$t8, $zero, 28
	st.h	$a2, $a0, 720
	st.h	$a2, $a0, 822
	st.h	$zero, $a0, 1030
	st.h	$a2, $a0, 1082
	st.h	$a2, $a0, 1342
	ori	$a2, $zero, 48
	st.h	$a2, $a0, 578
	st.h	$s2, $a0, 712
	ori	$a3, $zero, 2
	st.h	$a3, $a0, 1022
	st.h	$a1, $a0, 716
	ori	$a4, $zero, 3
	st.h	$a4, $a0, 1018
	st.h	$a1, $a0, 826
	ori	$a3, $zero, 6
	st.h	$a3, $a0, 1006
	ori	$s8, $zero, 5
	st.h	$s8, $a0, 1010
	st.h	$t0, $a0, 1014
	st.h	$a1, $a0, 1086
	st.h	$a1, $a0, 1346
	ori	$a3, $zero, 16
	ori	$s5, $zero, 7
	st.h	$s5, $a0, 1002
	st.h	$s2, $a0, 830
	st.h	$a3, $a0, 966
	ori	$a1, $zero, 15
	st.h	$a1, $a0, 970
	ori	$a1, $zero, 14
	st.h	$a1, $a0, 974
	ori	$s7, $zero, 13
	st.h	$s7, $a0, 978
	ori	$s3, $zero, 12
	st.h	$s3, $a0, 982
	ori	$t1, $zero, 11
	st.h	$t1, $a0, 986
	ori	$a7, $zero, 10
	st.h	$a7, $a0, 990
	ori	$a6, $zero, 9
	st.h	$a6, $a0, 994
	ori	$a5, $zero, 8
	st.h	$a5, $a0, 998
	st.h	$s2, $a0, 1090
	st.h	$s2, $a0, 1350
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
	ori	$a1, $zero, 216
	st.h	$a1, $a0, 1388
	ori	$a1, $zero, 217
	st.h	$a1, $a0, 1392
	ori	$a1, $zero, 218
	st.h	$a1, $a0, 1396
	ori	$a1, $zero, 219
	st.h	$a1, $a0, 1400
	ori	$a1, $zero, 220
	st.h	$a1, $a0, 1404
	ori	$a1, $zero, 221
	st.h	$a1, $a0, 1408
	ori	$a1, $zero, 222
	st.h	$a1, $a0, 1412
	ori	$a1, $zero, 223
	st.h	$a1, $a0, 1416
	ori	$a1, $zero, 47
	st.h	$a1, $a0, 582
	st.h	$a2, $a0, 838
	st.h	$a2, $a0, 1098
	st.h	$a2, $a0, 1358
	ori	$a2, $zero, 46
	st.h	$a2, $a0, 586
	st.h	$a1, $a0, 700
	st.h	$a1, $a0, 842
	st.h	$t5, $a0, 950
	st.h	$t4, $a0, 954
	st.h	$t3, $a0, 958
	st.h	$a1, $a0, 1102
	st.h	$a1, $a0, 1362
	ori	$t0, $zero, 45
	st.h	$t0, $a0, 590
	st.h	$t6, $a0, 946
	st.h	$t0, $a0, 692
	st.h	$s1, $a0, 942
	st.h	$a2, $a0, 696
	st.h	$ra, $a0, 938
	st.h	$a2, $a0, 846
	st.h	$s0, $a0, 926
	st.h	$s6, $a0, 930
	st.h	$t2, $a0, 934
	st.h	$a2, $a0, 1106
	st.h	$a2, $a0, 1366
	ori	$a1, $zero, 32
	st.h	$s4, $a0, 922
	st.h	$t0, $a0, 850
	st.h	$a1, $a0, 902
	st.h	$t8, $a0, 918
	ori	$a2, $zero, 29
	st.h	$a2, $a0, 914
	ori	$s2, $zero, 30
	st.h	$s2, $a0, 910
	ori	$t7, $zero, 31
	st.h	$t7, $a0, 906
	st.h	$t0, $a0, 1110
	st.h	$t0, $a0, 1370
	ori	$t0, $zero, 44
	st.h	$t0, $a0, 594
	st.h	$t0, $a0, 688
	st.h	$t0, $a0, 854
	st.h	$t0, $a0, 1114
	st.h	$t0, $a0, 1374
	ori	$t0, $zero, 43
	st.h	$t0, $a0, 598
	st.h	$t0, $a0, 684
	st.h	$t0, $a0, 858
	st.h	$t0, $a0, 1118
	st.h	$t0, $a0, 1378
	ori	$t0, $zero, 42
	st.h	$t0, $a0, 602
	st.h	$t0, $a0, 680
	st.h	$t0, $a0, 862
	st.h	$t0, $a0, 1122
	st.h	$t0, $a0, 1382
	ori	$t0, $zero, 34
	st.h	$t0, $a0, 894
	ori	$t2, $zero, 35
	st.h	$t2, $a0, 890
	ori	$ra, $zero, 36
	st.h	$ra, $a0, 886
	ori	$t3, $zero, 37
	st.h	$t3, $a0, 882
	ori	$t4, $zero, 38
	st.h	$t4, $a0, 878
	ori	$t5, $zero, 39
	st.h	$t5, $a0, 874
	ori	$t6, $zero, 40
	st.h	$t6, $a0, 870
	ori	$s1, $zero, 41
	st.h	$s1, $a0, 866
	st.h	$s1, $a0, 606
	st.h	$s1, $a0, 676
	st.h	$s1, $a0, 1126
	st.h	$s1, $a0, 1386
	st.h	$t6, $a0, 610
	st.h	$t6, $a0, 672
	st.h	$t6, $a0, 1130
	st.h	$t6, $a0, 1390
	st.h	$t5, $a0, 614
	st.h	$t5, $a0, 668
	st.h	$t5, $a0, 1134
	st.h	$t5, $a0, 1394
	st.h	$t4, $a0, 618
	st.h	$t4, $a0, 664
	st.h	$t4, $a0, 1138
	st.h	$t4, $a0, 1398
	st.h	$t3, $a0, 622
	st.h	$t3, $a0, 660
	st.h	$t3, $a0, 1142
	st.h	$t3, $a0, 1402
	st.h	$t2, $a0, 630
	st.h	$t2, $a0, 652
	st.h	$t2, $a0, 1150
	st.h	$t2, $a0, 1410
	st.h	$t0, $a0, 634
	st.h	$t0, $a0, 648
	st.h	$t0, $a0, 1154
	st.h	$t0, $a0, 1414
	lu12i.w	$t0, 3584
	ori	$t0, $t0, 33
	st.w	$t0, $a0, 1418
	ori	$t0, $zero, 225
	st.h	$t0, $a0, 1424
	ori	$t0, $zero, 226
	st.h	$t0, $a0, 1428
	ori	$t0, $zero, 227
	st.h	$t0, $a0, 1432
	ori	$t0, $zero, 228
	st.h	$t0, $a0, 1436
	ori	$t0, $zero, 229
	st.h	$t0, $a0, 1440
	ori	$t0, $zero, 230
	st.h	$t0, $a0, 1444
	ori	$t0, $zero, 231
	st.h	$t0, $a0, 1448
	ori	$t0, $zero, 232
	st.h	$t0, $a0, 1452
	ori	$t0, $zero, 233
	st.h	$t0, $a0, 1456
	ori	$t0, $zero, 234
	st.h	$t0, $a0, 1460
	ori	$t0, $zero, 235
	st.h	$t0, $a0, 1464
	ori	$t0, $zero, 236
	st.h	$t0, $a0, 1468
	ori	$t0, $zero, 237
	st.h	$t0, $a0, 1472
	ori	$t0, $zero, 238
	st.h	$t0, $a0, 1476
	ori	$t0, $zero, 239
	st.h	$t0, $a0, 1480
	st.h	$a1, $a0, 642
	st.h	$a1, $a0, 1162
	st.h	$a1, $a0, 1422
	st.h	$t7, $a0, 636
	st.h	$t7, $a0, 646
	st.h	$t7, $a0, 1166
	st.h	$t7, $a0, 1426
	st.h	$s2, $a0, 632
	st.h	$s2, $a0, 650
	st.h	$s2, $a0, 1170
	st.h	$s2, $a0, 1430
	st.h	$a2, $a0, 628
	st.h	$zero, $a0, 770
	st.h	$a2, $a0, 654
	ori	$a1, $zero, 2
	st.h	$a1, $a0, 762
	st.h	$a4, $a0, 758
	ori	$a4, $zero, 4
	st.h	$a4, $a0, 754
	st.h	$s8, $a0, 750
	ori	$a1, $zero, 6
	st.h	$a1, $a0, 746
	st.h	$s5, $a0, 742
	st.h	$a5, $a0, 738
	st.h	$a6, $a0, 734
	st.h	$a7, $a0, 730
	st.h	$t1, $a0, 726
	st.h	$s3, $a0, 722
	st.h	$s7, $a0, 718
	ori	$a1, $zero, 14
	st.h	$a1, $a0, 714
	ori	$a1, $zero, 15
	st.h	$a1, $a0, 710
	st.h	$a3, $a0, 706
	st.h	$a2, $a0, 1174
	st.h	$a2, $a0, 1434
	st.h	$t8, $a0, 624
	st.h	$t8, $a0, 658
	st.h	$t8, $a0, 1178
	st.h	$t8, $a0, 1438
	st.h	$s4, $a0, 620
	st.h	$s4, $a0, 662
	st.h	$s4, $a0, 1182
	st.h	$s4, $a0, 1442
	st.h	$s0, $a0, 616
	st.h	$s0, $a0, 666
	st.h	$s0, $a0, 1186
	st.h	$s0, $a0, 1446
	st.h	$s6, $a0, 612
	st.h	$s6, $a0, 670
	ori	$a1, $zero, 18
	st.h	$a1, $a0, 698
	ori	$a5, $zero, 19
	st.h	$a5, $a0, 694
	ori	$a6, $zero, 20
	st.h	$a6, $a0, 690
	ori	$a7, $zero, 21
	st.h	$a7, $a0, 686
	ori	$t0, $zero, 22
	st.h	$t0, $a0, 682
	ori	$t1, $zero, 23
	st.h	$t1, $a0, 678
	ori	$a2, $zero, 24
	st.h	$a2, $a0, 674
	st.h	$s6, $a0, 1190
	st.h	$s6, $a0, 1450
	st.h	$t1, $a0, 604
	st.h	$t1, $a0, 1198
	st.h	$t1, $a0, 1458
	st.h	$t0, $a0, 600
	st.h	$t0, $a0, 1202
	st.h	$t0, $a0, 1462
	st.h	$a7, $a0, 596
	st.h	$a7, $a0, 1206
	st.h	$a7, $a0, 1466
	st.h	$a6, $a0, 592
	st.h	$a6, $a0, 1210
	st.h	$a6, $a0, 1470
	st.h	$a5, $a0, 588
	st.h	$a5, $a0, 1214
	st.h	$a5, $a0, 1474
	st.h	$a1, $a0, 584
	st.h	$ra, $a0, 626
	st.h	$ra, $a0, 656
	st.h	$a1, $a0, 1218
	st.h	$a1, $a0, 1478
	lu12i.w	$a1, 3840
	ori	$a1, $a1, 17
	st.w	$a1, $a0, 1482
	ori	$a1, $zero, 241
	st.h	$a1, $a0, 1488
	ori	$a1, $zero, 242
	st.h	$a1, $a0, 1492
	ori	$a1, $zero, 243
	st.h	$a1, $a0, 1496
	ori	$a1, $zero, 244
	st.h	$a1, $a0, 1500
	ori	$a1, $zero, 245
	st.h	$a1, $a0, 1504
	ori	$a1, $zero, 246
	st.h	$a1, $a0, 1508
	ori	$a1, $zero, 247
	st.h	$a1, $a0, 1512
	ori	$a1, $zero, 248
	st.h	$a1, $a0, 1516
	ori	$a1, $zero, 249
	st.h	$a1, $a0, 1520
	ori	$a1, $zero, 250
	st.h	$a1, $a0, 1524
	ori	$a1, $zero, 251
	st.h	$a1, $a0, 1528
	ori	$a1, $zero, 252
	st.h	$a1, $a0, 1532
	ori	$a1, $zero, 253
	st.h	$a1, $a0, 1536
	ori	$a1, $zero, 254
	st.h	$a1, $a0, 1540
	ori	$a1, $zero, 255
	st.h	$a1, $a0, 1544
	st.h	$a3, $a0, 1226
	st.h	$a3, $a0, 1486
	ori	$a1, $zero, 15
	st.h	$a1, $a0, 572
	st.h	$a1, $a0, 1230
	st.h	$a1, $a0, 1490
	ori	$a1, $zero, 14
	st.h	$a1, $a0, 568
	st.h	$a1, $a0, 1234
	st.h	$a1, $a0, 1494
	st.h	$a2, $a0, 608
	ori	$a1, $zero, 13
	st.h	$a1, $a0, 564
	st.h	$a1, $a0, 1238
	st.h	$a1, $a0, 1498
	ori	$a1, $zero, 12
	st.h	$a1, $a0, 560
	st.h	$a1, $a0, 1242
	st.h	$a1, $a0, 1502
	ori	$a1, $zero, 11
	st.h	$a1, $a0, 556
	st.h	$a1, $a0, 1246
	st.h	$a1, $a0, 1506
	ori	$a1, $zero, 10
	st.h	$a1, $a0, 552
	st.h	$a1, $a0, 1250
	st.h	$a1, $a0, 1510
	ori	$a1, $zero, 9
	st.h	$a1, $a0, 548
	st.h	$a1, $a0, 1254
	st.h	$a1, $a0, 1514
	ori	$a1, $zero, 8
	st.h	$a1, $a0, 544
	st.h	$a1, $a0, 1258
	st.h	$a1, $a0, 1518
	ori	$a1, $zero, 7
	st.h	$a1, $a0, 540
	st.h	$a1, $a0, 1262
	st.h	$a1, $a0, 1522
	st.b	$zero, $a0, 96
	st.w	$zero, $a0, 88
	st.h	$zero, $a0, 512
	ori	$a1, $zero, 2
	st.h	$a1, $a0, 520
	ori	$a2, $zero, 3
	st.h	$a2, $a0, 524
	st.h	$a4, $a0, 528
	ori	$a3, $zero, 5
	st.h	$a3, $a0, 532
	ori	$a4, $zero, 6
	st.h	$a4, $a0, 536
	ori	$a5, $zero, 24
	st.h	$a5, $a0, 1194
	st.h	$a4, $a0, 1266
	ori	$a4, $zero, 6
	st.h	$a3, $a0, 1270
	ori	$a3, $zero, 5
	st.h	$a2, $a0, 1278
	ori	$a2, $zero, 3
	st.h	$a1, $a0, 1282
	ori	$a1, $zero, 2
	st.h	$a5, $a0, 1454
	ori	$a7, $zero, 24
	st.h	$a4, $a0, 1526
	st.h	$a3, $a0, 1530
	st.h	$a2, $a0, 1538
	st.h	$a1, $a0, 1542
	lu12i.w	$a1, 4096
	ori	$a1, $a1, 1
	st.w	$a1, $a0, 1546
	addi.d	$a1, $a0, 1552
	ori	$a2, $zero, 4
	lu32i.d	$a2, 24
	st.d	$a2, $a0, 432
	st.d	$a1, $a0, 440
	pcalau12i	$a1, %pc_hi20(.LCPI12_3)
	xvld	$xr1, $a1, %pc_lo12(.LCPI12_3)
	pcalau12i	$a1, %pc_hi20(.LCPI12_4)
	xvld	$xr2, $a1, %pc_lo12(.LCPI12_4)
	slli.d	$a6, $fp, 1
	addi.w	$a5, $a6, 0
	sltui	$a1, $a5, 36
	masknez	$a2, $ra, $a1
	st.w	$a7, $a0, 1648
	maskeqz	$a1, $a5, $a1
	or	$a4, $a1, $a2
	st.d	$zero, $a0, 28
	st.w	$zero, $a0, 44
	st.b	$zero, $a0, 42
	ori	$a1, $zero, 4
	st.h	$a1, $a0, 1274
	st.h	$a1, $a0, 1534
	st.w	$a1, $a0, 448
	addi.d	$a1, $a0, 1652
	st.d	$a1, $a0, 456
	xvst	$xr0, $a0, 1552
	xvst	$xr1, $a0, 1584
	st.h	$ra, $a0, 1146
	st.h	$zero, $a0, 1290
	st.h	$ra, $a0, 1406
	st.h	$zero, $a0, 1550
	xvst	$xr2, $a0, 1616
	st.w	$a4, $a0, 452
	beqz	$fp, .LBB12_16
# %bb.8:                                # %vector.ph168
	move	$a3, $zero
	addi.d	$a7, $a0, 1658
	move	$t1, $a4
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB12_9:                               # %vector.body169
                                        # =>This Inner Loop Header: Depth=1
	ori	$t0, $a3, 1
	st.h	$a3, $a7, -6
	st.h	$t0, $a7, -2
	addi.d	$t0, $t1, -1
	st.h	$t1, $a7, -4
	st.h	$t0, $a7, 0
	addi.d	$a3, $a3, 2
	addi.d	$t1, $t1, -2
	addi.d	$a7, $a7, 8
	bne	$a4, $a3, .LBB12_9
# %bb.10:
	move	$a7, $a4
	b	.LBB12_17
.LBB12_11:
	move	$a0, $zero
.LBB12_12:
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
.LBB12_13:
	move	$a0, $s4
	b	.LBB12_15
.LBB12_14:
	ld.d	$a1, $a0, 16
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB12_15:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB12_12
.LBB12_16:
	move	$a7, $zero
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
.LBB12_17:                              # %scalar.ph167.preheader
	bstrpick.d	$a3, $a6, 31, 0
	sltui	$t0, $a3, 36
	masknez	$t1, $ra, $t0
	maskeqz	$t0, $a3, $t0
	or	$t0, $t0, $t1
	addi.d	$t0, $t0, 1
	alsl.d	$t1, $a7, $a0, 2
	addi.d	$t1, $t1, 1654
	sub.d	$a4, $a4, $a7
	.p2align	4, , 16
.LBB12_18:                              # %scalar.ph167
                                        # =>This Inner Loop Header: Depth=1
	st.h	$a7, $t1, -2
	st.h	$a4, $t1, 0
	addi.d	$a7, $a7, 1
	addi.d	$t1, $t1, 4
	addi.d	$a4, $a4, -1
	bne	$t0, $a7, .LBB12_18
# %bb.19:                               # %qtm_init_model.exit118
	addi.d	$a4, $a0, 1800
	ori	$a7, $zero, 4
	st.w	$a7, $a0, 464
	st.w	$a6, $a0, 468
	st.d	$a4, $a0, 472
	beqz	$fp, .LBB12_22
# %bb.20:                               # %vector.ph176
	move	$a4, $zero
	addi.d	$a7, $a0, 1806
	move	$t0, $a6
	.p2align	4, , 16
.LBB12_21:                              # %vector.body179
                                        # =>This Inner Loop Header: Depth=1
	ori	$t1, $a4, 1
	st.h	$a4, $a7, -6
	st.h	$t1, $a7, -2
	addi.d	$t1, $t0, -1
	st.h	$t0, $a7, -4
	st.h	$t1, $a7, 0
	addi.d	$a4, $a4, 2
	addi.d	$a7, $a7, 8
	addi.d	$t0, $t0, -2
	bne	$a5, $a4, .LBB12_21
	b	.LBB12_23
.LBB12_22:
	move	$a5, $zero
.LBB12_23:                              # %scalar.ph174.preheader
	addi.d	$a3, $a3, 1
	alsl.d	$a4, $a5, $a0, 2
	addi.d	$a4, $a4, 1802
	sub.d	$a6, $a6, $a5
	.p2align	4, , 16
.LBB12_24:                              # %scalar.ph174
                                        # =>This Inner Loop Header: Depth=1
	st.h	$a5, $a4, -2
	st.h	$a6, $a4, 0
	addi.d	$a5, $a5, 1
	addi.d	$a4, $a4, 4
	addi.d	$a6, $a6, -1
	bne	$a3, $a5, .LBB12_24
# %bb.25:                               # %qtm_init_model.exit123
	pcalau12i	$a3, %pc_hi20(.LCPI12_5)
	xvld	$xr0, $a3, %pc_lo12(.LCPI12_5)
	pcalau12i	$a3, %pc_hi20(.LCPI12_6)
	xvld	$xr1, $a3, %pc_lo12(.LCPI12_6)
	xvst	$xr0, $a0, 1972
	addi.d	$a3, $a0, 1972
	ori	$a4, $zero, 4
	xvst	$xr1, $a0, 2004
	pcalau12i	$a5, %pc_hi20(.LCPI12_7)
	xvld	$xr0, $a5, %pc_lo12(.LCPI12_7)
	ori	$a5, $zero, 4
	lu32i.d	$a5, 27
	st.d	$a5, $a0, 480
	st.d	$a3, $a0, 488
	xvst	$xr0, $a0, 2036
	addi.d	$a3, $a0, 2047
	pcalau12i	$a5, %pc_hi20(.LCPI12_8)
	xvld	$xr0, $a5, %pc_lo12(.LCPI12_8)
	addi.d	$a3, $a3, 37
	lu32i.d	$a4, 7
	ori	$a5, $zero, 2068
	xvstx	$xr0, $a0, $a5
	pcalau12i	$a5, %pc_hi20(.LCPI12_9)
	vld	$vr0, $a5, %pc_lo12(.LCPI12_9)
	st.d	$a4, $a0, 496
	st.d	$a3, $a0, 504
	ori	$a3, $zero, 2100
	vstx	$vr0, $a0, $a3
	stptr.d	$a2, $a0, 2120
	stptr.d	$a1, $a0, 2128
	b	.LBB12_12
.Lfunc_end12:
	.size	qtm_init, .Lfunc_end12-qtm_init
                                        # -- End function
	.globl	qtm_decompress                  # -- Begin function qtm_decompress
	.p2align	5
	.type	qtm_decompress,@function
qtm_decompress:                         # @qtm_decompress
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
	addi.d	$fp, $sp, 512
	bstrins.d	$sp, $zero, 4, 0
	move	$s0, $a0
	addi.w	$a0, $zero, -111
	beqz	$s0, .LBB13_368
# %bb.1:
	move	$a3, $a1
	bltz	$a1, .LBB13_368
# %bb.2:
	ld.w	$a0, $s0, 44
	bnez	$a0, .LBB13_368
# %bb.3:
	ld.d	$a0, $s0, 80
	ld.d	$a1, $s0, 72
	sub.w	$a0, $a0, $a1
	slt	$a2, $a3, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a3, $a2
	or	$a0, $a2, $a0
	addi.w	$s2, $a0, 0
	beqz	$s2, .LBB13_8
# %bb.4:
	ld.bu	$a0, $s0, 8
	beqz	$a0, .LBB13_7
# %bb.5:
	move	$s1, $a3
	ld.w	$a0, $s0, 4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB13_365
# %bb.6:                                # %._crit_edge1724
	ld.d	$a1, $s0, 72
	move	$a3, $s1
.LBB13_7:
	add.d	$a1, $a1, $s2
	st.d	$a1, $s0, 72
	sub.d	$a3, $a3, $s2
.LBB13_8:
	beqz	$a3, .LBB13_367
# %bb.9:
	ld.d	$s5, $s0, 56
	ld.d	$t1, $s0, 64
	ld.w	$s8, $s0, 88
	ld.bu	$s4, $s0, 96
	ld.w	$s2, $s0, 28
	ld.w	$s7, $s0, 32
	ld.hu	$s6, $s0, 36
	ld.d	$a0, $s0, 80
	ld.hu	$s3, $s0, 38
	ld.hu	$t6, $s0, 40
	sub.d	$a2, $a0, $a1
	st.d	$a3, $sp, 216                   # 8-byte Folded Spill
	bge	$a2, $a3, .LBB13_359
# %bb.10:                               # %.lr.ph1597
	ld.d	$a2, $s0, 16
	addi.d	$a3, $s0, 496
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a3, $s0, 480
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a3, $s0, 337
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a3, $s0, 310
	st.d	$a3, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a3, $s0, 464
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	addi.d	$a3, $s0, 268
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a3, $s0, 100
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a3, $s0, 448
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a3, $s0, 432
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a3, $s0, 384
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a3, $s0, 368
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	addi.d	$a2, $a2, 32
	st.d	$a2, $sp, 40                    # 8-byte Folded Spill
	ori	$t8, $zero, 16
	ori	$ra, $zero, 1
	lu12i.w	$a2, 15
	ori	$a2, $a2, 4095
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	lu12i.w	$t7, 4
.LBB13_11:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_15 Depth 2
                                        #     Child Loop BB13_25 Depth 2
                                        #       Child Loop BB13_27 Depth 3
                                        #       Child Loop BB13_38 Depth 3
                                        #       Child Loop BB13_35 Depth 3
                                        #       Child Loop BB13_43 Depth 3
                                        #       Child Loop BB13_49 Depth 3
                                        #       Child Loop BB13_76 Depth 3
                                        #       Child Loop BB13_173 Depth 3
                                        #       Child Loop BB13_131 Depth 3
                                        #       Child Loop BB13_178 Depth 3
                                        #       Child Loop BB13_184 Depth 3
                                        #       Child Loop BB13_199 Depth 3
                                        #       Child Loop BB13_88 Depth 3
                                        #       Child Loop BB13_139 Depth 3
                                        #       Child Loop BB13_126 Depth 3
                                        #       Child Loop BB13_144 Depth 3
                                        #       Child Loop BB13_153 Depth 3
                                        #       Child Loop BB13_168 Depth 3
                                        #       Child Loop BB13_95 Depth 3
                                        #       Child Loop BB13_207 Depth 3
                                        #       Child Loop BB13_136 Depth 3
                                        #       Child Loop BB13_212 Depth 3
                                        #       Child Loop BB13_221 Depth 3
                                        #       Child Loop BB13_233 Depth 3
                                        #       Child Loop BB13_244 Depth 3
                                        #       Child Loop BB13_255 Depth 3
                                        #       Child Loop BB13_252 Depth 3
                                        #       Child Loop BB13_260 Depth 3
                                        #       Child Loop BB13_269 Depth 3
                                        #       Child Loop BB13_284 Depth 3
                                        #       Child Loop BB13_306 Depth 3
                                        #       Child Loop BB13_328 Depth 3
                                        #       Child Loop BB13_332 Depth 3
                                        #       Child Loop BB13_297 Depth 3
                                        #       Child Loop BB13_311 Depth 3
                                        #       Child Loop BB13_320 Depth 3
                                        #       Child Loop BB13_324 Depth 3
                                        #       Child Loop BB13_335 Depth 3
                                        #       Child Loop BB13_66 Depth 3
                                        #       Child Loop BB13_101 Depth 3
                                        #       Child Loop BB13_84 Depth 3
                                        #       Child Loop BB13_106 Depth 3
                                        #       Child Loop BB13_114 Depth 3
                                        #     Child Loop BB13_343 Depth 2
	ld.bu	$a2, $s0, 42
	bnez	$a2, .LBB13_23
# %bb.12:                               # %.preheader.preheader
                                        #   in Loop: Header=BB13_11 Depth=1
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	move	$s1, $zero
	ori	$s2, $zero, 16
	b	.LBB13_15
	.p2align	4, , 16
.LBB13_13:                              #   in Loop: Header=BB13_15 Depth=2
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t8, $s3
	sll.w	$a0, $a0, $a1
	or	$s8, $a0, $s8
	addi.d	$s4, $s4, 16
	addi.d	$s5, $s5, 2
	andi	$s3, $s4, 255
.LBB13_14:                              #   in Loop: Header=BB13_15 Depth=2
	sltu	$a0, $s2, $s3
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $s2, $a0
	or	$a0, $a0, $a1
	bstrpick.d	$a1, $s1, 15, 0
	sll.w	$a1, $a1, $a0
	ori	$a2, $zero, 32
	sub.d	$a2, $a2, $a0
	srl.w	$a2, $s8, $a2
	or	$s1, $a2, $a1
	sll.w	$s8, $s8, $a0
	sub.d	$a1, $s2, $a0
	andi	$s2, $a1, 255
	sub.d	$s4, $s4, $a0
	beqz	$s2, .LBB13_22
.LBB13_15:                              # %.preheader
                                        #   Parent Loop BB13_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$s3, $s4, 255
	bltu	$t8, $s3, .LBB13_14
# %bb.16:                               #   in Loop: Header=BB13_15 Depth=2
	bltu	$s5, $t1, .LBB13_13
# %bb.17:                               #   in Loop: Header=BB13_15 Depth=2
	ldptr.d	$a3, $s0, 2128
	ld.d	$a1, $s0, 48
	ld.w	$a2, $s0, 92
	beqz	$a3, .LBB13_19
# %bb.18:                               #   in Loop: Header=BB13_15 Depth=2
	ldptr.d	$a0, $s0, 2120
	jirl	$ra, $a3, 0
	b	.LBB13_20
.LBB13_19:                              #   in Loop: Header=BB13_15 Depth=2
	ld.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB13_20:                              #   in Loop: Header=BB13_15 Depth=2
	addi.w	$a1, $zero, -1
	ori	$t8, $zero, 16
	ori	$ra, $zero, 1
	lu12i.w	$t7, 4
	bge	$a1, $a0, .LBB13_365
# %bb.21:                               #   in Loop: Header=BB13_15 Depth=2
	ld.d	$s5, $s0, 48
	st.d	$s5, $s0, 56
	add.d	$t1, $s5, $a0
	st.d	$t1, $s0, 64
	b	.LBB13_13
.LBB13_22:                              #   in Loop: Header=BB13_11 Depth=1
	ld.d	$a0, $s0, 80
	ld.d	$a1, $s0, 72
	move	$s3, $zero
	bstrpick.d	$t6, $s1, 15, 0
	st.b	$ra, $s0, 42
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
.LBB13_23:                              #   in Loop: Header=BB13_11 Depth=1
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	sub.d	$a0, $a2, $a0
	add.d	$a0, $a0, $a1
	add.w	$a0, $s2, $a0
	lu12i.w	$a1, 8
	add.w	$a1, $s7, $a1
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	bgeu	$s2, $a0, .LBB13_338
# %bb.24:                               # %.lr.ph1571.preheader
                                        #   in Loop: Header=BB13_11 Depth=1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
.LBB13_25:                              # %.lr.ph1571
                                        #   Parent Loop BB13_11 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_27 Depth 3
                                        #       Child Loop BB13_38 Depth 3
                                        #       Child Loop BB13_35 Depth 3
                                        #       Child Loop BB13_43 Depth 3
                                        #       Child Loop BB13_49 Depth 3
                                        #       Child Loop BB13_76 Depth 3
                                        #       Child Loop BB13_173 Depth 3
                                        #       Child Loop BB13_131 Depth 3
                                        #       Child Loop BB13_178 Depth 3
                                        #       Child Loop BB13_184 Depth 3
                                        #       Child Loop BB13_199 Depth 3
                                        #       Child Loop BB13_88 Depth 3
                                        #       Child Loop BB13_139 Depth 3
                                        #       Child Loop BB13_126 Depth 3
                                        #       Child Loop BB13_144 Depth 3
                                        #       Child Loop BB13_153 Depth 3
                                        #       Child Loop BB13_168 Depth 3
                                        #       Child Loop BB13_95 Depth 3
                                        #       Child Loop BB13_207 Depth 3
                                        #       Child Loop BB13_136 Depth 3
                                        #       Child Loop BB13_212 Depth 3
                                        #       Child Loop BB13_221 Depth 3
                                        #       Child Loop BB13_233 Depth 3
                                        #       Child Loop BB13_244 Depth 3
                                        #       Child Loop BB13_255 Depth 3
                                        #       Child Loop BB13_252 Depth 3
                                        #       Child Loop BB13_260 Depth 3
                                        #       Child Loop BB13_269 Depth 3
                                        #       Child Loop BB13_284 Depth 3
                                        #       Child Loop BB13_306 Depth 3
                                        #       Child Loop BB13_328 Depth 3
                                        #       Child Loop BB13_332 Depth 3
                                        #       Child Loop BB13_297 Depth 3
                                        #       Child Loop BB13_311 Depth 3
                                        #       Child Loop BB13_320 Depth 3
                                        #       Child Loop BB13_324 Depth 3
                                        #       Child Loop BB13_335 Depth 3
                                        #       Child Loop BB13_66 Depth 3
                                        #       Child Loop BB13_101 Depth 3
                                        #       Child Loop BB13_84 Depth 3
                                        #       Child Loop BB13_106 Depth 3
                                        #       Child Loop BB13_114 Depth 3
	ld.d	$a0, $s0, 504
	bstrpick.d	$a2, $s6, 15, 0
	ld.w	$a1, $s0, 500
	ld.hu	$s1, $a0, 2
	bstrpick.d	$a3, $s3, 15, 0
	sub.d	$a7, $a2, $a3
	ori	$a2, $zero, 1
	ori	$a4, $zero, 2
	blt	$a1, $a4, .LBB13_30
# %bb.26:                               # %.lr.ph
                                        #   in Loop: Header=BB13_25 Depth=2
	sub.d	$a2, $t6, $a3
	addi.d	$a2, $a2, 1
	mul.d	$a2, $a2, $s1
	addi.w	$a2, $a2, -1
	bstrpick.d	$a3, $a7, 15, 0
	addi.d	$a3, $a3, 1
	div.wu	$a5, $a2, $a3
	addi.d	$a3, $a0, 6
	addi.d	$a4, $a1, -1
	ori	$a2, $zero, 1
	bstrpick.d	$a5, $a5, 15, 0
	.p2align	4, , 16
.LBB13_27:                              #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$a6, $a3, 0
	bgeu	$a5, $a6, .LBB13_30
# %bb.28:                               #   in Loop: Header=BB13_27 Depth=3
	addi.w	$a2, $a2, 1
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	bnez	$a4, .LBB13_27
# %bb.29:                               #   in Loop: Header=BB13_25 Depth=2
	move	$a2, $a1
.LBB13_30:                              # %iter.check2147
                                        #   in Loop: Header=BB13_25 Depth=2
	alsl.d	$a4, $a2, $a0, 2
	ld.hu	$a3, $a4, -4
	ld.hu	$a1, $a4, -2
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ld.hu	$a1, $a4, 2
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ori	$a1, $zero, 8
	st.d	$a3, $sp, 152                   # 8-byte Folded Spill
	st.d	$a7, $sp, 184                   # 8-byte Folded Spill
	bge	$a2, $a1, .LBB13_32
# %bb.31:                               #   in Loop: Header=BB13_25 Depth=2
	move	$a4, $a2
	b	.LBB13_42
.LBB13_32:                              # %vector.main.loop.iter.check2149
                                        #   in Loop: Header=BB13_25 Depth=2
	slt	$a1, $ra, $a2
	masknez	$a3, $ra, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	move	$s6, $t1
	bge	$a2, $t8, .LBB13_37
# %bb.33:                               #   in Loop: Header=BB13_25 Depth=2
	move	$a3, $zero
.LBB13_34:                              # %vec.epilog.ph2160
                                        #   in Loop: Header=BB13_25 Depth=2
	bstrpick.d	$a4, $a1, 30, 3
	slli.d	$a5, $a4, 3
	sub.d	$a4, $a2, $a5
	sub.d	$a6, $a3, $a5
	slli.d	$a2, $a2, 2
	slli.d	$a3, $a3, 2
	sub.d	$a2, $a2, $a3
	add.d	$a2, $a0, $a2
	addi.d	$a2, $a2, -14
	.p2align	4, , 16
.LBB13_35:                              # %vec.epilog.vector.body2166
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a3, $a2, 12
	ld.h	$a7, $a2, 8
	ld.h	$t0, $a2, 4
	ld.h	$t1, $a2, 0
	ld.h	$t2, $a2, -4
	ld.h	$t3, $a2, -8
	ld.h	$t4, $a2, -12
	ld.h	$t5, $a2, -16
	vinsgr2vr.h	$vr0, $a3, 0
	vinsgr2vr.h	$vr0, $a7, 1
	vinsgr2vr.h	$vr0, $t0, 2
	vinsgr2vr.h	$vr0, $t1, 3
	vinsgr2vr.h	$vr0, $t2, 4
	vinsgr2vr.h	$vr0, $t3, 5
	vinsgr2vr.h	$vr0, $t4, 6
	vinsgr2vr.h	$vr0, $t5, 7
	vaddi.hu	$vr0, $vr0, 8
	vstelm.h	$vr0, $a2, 12, 0
	vstelm.h	$vr0, $a2, 8, 1
	vstelm.h	$vr0, $a2, 4, 2
	vstelm.h	$vr0, $a2, 0, 3
	vstelm.h	$vr0, $a2, -4, 4
	vstelm.h	$vr0, $a2, -8, 5
	vstelm.h	$vr0, $a2, -12, 6
	vstelm.h	$vr0, $a2, -16, 7
	addi.d	$a6, $a6, 8
	addi.d	$a2, $a2, -32
	bnez	$a6, .LBB13_35
# %bb.36:                               # %vec.epilog.middle.block2170
                                        #   in Loop: Header=BB13_25 Depth=2
	move	$t1, $s6
	bne	$a1, $a5, .LBB13_42
	b	.LBB13_44
.LBB13_37:                              # %vector.ph2150
                                        #   in Loop: Header=BB13_25 Depth=2
	st.d	$t6, $sp, 208                   # 8-byte Folded Spill
	bstrpick.d	$a3, $a1, 30, 4
	slli.d	$a3, $a3, 4
	addi.d	$a4, $a4, -30
	move	$a5, $a3
	.p2align	4, , 16
.LBB13_38:                              # %vector.body2153
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a6, $a4, 28
	ld.h	$a7, $a4, 24
	ld.h	$t0, $a4, 20
	ld.h	$t1, $a4, 16
	ld.h	$t2, $a4, 12
	ld.h	$t3, $a4, 8
	ld.h	$t4, $a4, 4
	ld.h	$t5, $a4, 0
	ld.h	$t6, $a4, -4
	vinsgr2vr.h	$vr0, $a6, 0
	vinsgr2vr.h	$vr0, $a7, 1
	vinsgr2vr.h	$vr0, $t0, 2
	vinsgr2vr.h	$vr0, $t1, 3
	vinsgr2vr.h	$vr0, $t2, 4
	vinsgr2vr.h	$vr0, $t3, 5
	vinsgr2vr.h	$vr0, $t4, 6
	vinsgr2vr.h	$vr0, $t5, 7
	ld.h	$a6, $a4, -8
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $t6, 0
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a7, $a4, -12
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a6, 1
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a6, $a4, -16
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a7, 2
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a7, $a4, -20
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a6, 3
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a6, $a4, -24
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a7, 4
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a7, $a4, -28
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a6, 5
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a6, $a4, -32
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a7, 6
	xvpermi.q	$xr0, $xr1, 2
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a6, 7
	xvpermi.q	$xr0, $xr1, 2
	xvaddi.hu	$xr0, $xr0, 8
	xvstelm.h	$xr0, $a4, 28, 0
	xvstelm.h	$xr0, $a4, 24, 1
	xvstelm.h	$xr0, $a4, 20, 2
	xvstelm.h	$xr0, $a4, 16, 3
	xvstelm.h	$xr0, $a4, 12, 4
	xvstelm.h	$xr0, $a4, 8, 5
	xvstelm.h	$xr0, $a4, 4, 6
	xvstelm.h	$xr0, $a4, 0, 7
	xvst	$xr0, $sp, 384
	ld.h	$a6, $sp, 400
	st.h	$a6, $a4, -4
	ld.h	$a6, $sp, 402
	st.h	$a6, $a4, -8
	ld.h	$a6, $sp, 404
	st.h	$a6, $a4, -12
	ld.h	$a6, $sp, 406
	st.h	$a6, $a4, -16
	ld.h	$a6, $sp, 408
	st.h	$a6, $a4, -20
	ld.h	$a6, $sp, 410
	st.h	$a6, $a4, -24
	ld.h	$a6, $sp, 412
	st.h	$a6, $a4, -28
	ld.h	$a6, $sp, 414
	st.h	$a6, $a4, -32
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, -64
	bnez	$a5, .LBB13_38
# %bb.39:                               # %middle.block2156
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.d	$t6, $sp, 208                   # 8-byte Folded Reload
	move	$t1, $s6
	beq	$a1, $a3, .LBB13_44
# %bb.40:                               # %vec.epilog.iter.check2161
                                        #   in Loop: Header=BB13_25 Depth=2
	andi	$a4, $a1, 8
	bnez	$a4, .LBB13_34
# %bb.41:                               #   in Loop: Header=BB13_25 Depth=2
	sub.d	$a4, $a2, $a3
.LBB13_42:                              # %vec.epilog.scalar.ph2159.preheader
                                        #   in Loop: Header=BB13_25 Depth=2
	addi.d	$a1, $a4, 1
	alsl.d	$a2, $a4, $a0, 2
	addi.d	$a2, $a2, -2
	.p2align	4, , 16
.LBB13_43:                              # %vec.epilog.scalar.ph2159
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a3, $a2, 0
	addi.d	$a3, $a3, 8
	st.h	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	blt	$ra, $a1, .LBB13_43
.LBB13_44:                              # %.loopexit2179
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.hu	$a0, $a0, 2
	ori	$a1, $zero, 3801
	bltu	$a0, $a1, .LBB13_46
# %bb.45:                               #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	move	$s6, $s7
	move	$s7, $s2
	move	$s2, $t6
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	move	$s1, $t1
	pcaddu18i	$ra, %call36(qtm_update_model)
	jirl	$ra, $ra, 0
	move	$t1, $s1
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	move	$t6, $s2
	move	$s2, $s7
	move	$s7, $s6
	lu12i.w	$t7, 4
	ori	$ra, $zero, 1
	ori	$t8, $zero, 16
.LBB13_46:                              # %.preheader2192
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	mul.w	$a1, $a0, $a1
	div.wu	$a1, $a1, $s1
	add.d	$a1, $s3, $a1
	addi.d	$s6, $a1, -1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	div.wu	$a0, $a0, $s1
	add.d	$s3, $s3, $a0
	b	.LBB13_49
	.p2align	4, , 16
.LBB13_47:                              #   in Loop: Header=BB13_49 Depth=3
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t8, $s1
	sll.w	$a0, $a0, $a1
	or	$s8, $a0, $s8
	addi.d	$s4, $s4, 16
	addi.d	$s5, $s5, 2
.LBB13_48:                              #   in Loop: Header=BB13_49 Depth=3
	slli.d	$s3, $s3, 1
	slli.d	$a0, $s6, 1
	addi.d	$s6, $a0, 1
	bstrpick.d	$a0, $s8, 31, 31
	slli.d	$a1, $t6, 1
	or	$a0, $a1, $a0
	bstrpick.d	$t6, $a0, 15, 0
	slli.d	$s8, $s8, 1
	addi.d	$s4, $s4, -1
.LBB13_49:                              #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xor	$a0, $s3, $s6
	bstrpick.d	$a0, $a0, 15, 15
	beqz	$a0, .LBB13_53
# %bb.50:                               #   in Loop: Header=BB13_49 Depth=3
	bstrpick.d	$a2, $s6, 15, 0
	and	$a0, $a2, $t7
	bstrpick.d	$a4, $s3, 15, 0
	bnez	$a0, .LBB13_60
# %bb.51:                               #   in Loop: Header=BB13_49 Depth=3
	and	$a0, $a4, $t7
	beqz	$a0, .LBB13_60
# %bb.52:                               #   in Loop: Header=BB13_49 Depth=3
	xor	$t6, $t6, $t7
	bstrpick.d	$s3, $s3, 13, 0
	or	$s6, $s6, $t7
.LBB13_53:                              #   in Loop: Header=BB13_49 Depth=3
	andi	$s1, $s4, 255
	bltu	$t8, $s1, .LBB13_48
# %bb.54:                               #   in Loop: Header=BB13_49 Depth=3
	bltu	$s5, $t1, .LBB13_47
# %bb.55:                               #   in Loop: Header=BB13_49 Depth=3
	move	$s5, $t6
	ldptr.d	$a3, $s0, 2128
	ld.d	$a1, $s0, 48
	ld.w	$a2, $s0, 92
	beqz	$a3, .LBB13_57
# %bb.56:                               #   in Loop: Header=BB13_49 Depth=3
	ldptr.d	$a0, $s0, 2120
	jirl	$ra, $a3, 0
	b	.LBB13_58
.LBB13_57:                              #   in Loop: Header=BB13_49 Depth=3
	ld.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB13_58:                              #   in Loop: Header=BB13_49 Depth=3
	addi.w	$a1, $zero, -1
	ori	$t8, $zero, 16
	ori	$ra, $zero, 1
	lu12i.w	$t7, 4
	bge	$a1, $a0, .LBB13_365
# %bb.59:                               #   in Loop: Header=BB13_49 Depth=3
	move	$t6, $s5
	ld.d	$s5, $s0, 48
	st.d	$s5, $s0, 56
	add.d	$t1, $s5, $a0
	st.d	$t1, $s0, 64
	b	.LBB13_47
.LBB13_60:                              #   in Loop: Header=BB13_25 Depth=2
	ori	$a0, $zero, 3
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	bltu	$a0, $a1, .LBB13_71
# %bb.61:                               #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beqz	$a1, .LBB13_64
# %bb.62:                               #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$a1, $ra, .LBB13_64
# %bb.63:                               #   in Loop: Header=BB13_25 Depth=2
	addi.d	$a0, $a1, -2
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 416
	masknez	$a1, $a1, $a0
	ori	$a3, $zero, 400
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $s0, $a0
.LBB13_64:                              #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a1, $a0, 8
	ld.w	$a5, $a0, 4
	ld.hu	$s1, $a1, 2
	sub.w	$t0, $a2, $a4
	ori	$a3, $zero, 1
	ori	$a2, $zero, 2
	blt	$a5, $a2, .LBB13_69
# %bb.65:                               # %.lr.ph1557
                                        #   in Loop: Header=BB13_25 Depth=2
	sub.d	$a2, $t6, $a4
	addi.d	$a2, $a2, 1
	mul.d	$a2, $a2, $s1
	addi.w	$a2, $a2, -1
	bstrpick.d	$a3, $t0, 15, 0
	addi.d	$a3, $a3, 1
	div.wu	$a6, $a2, $a3
	addi.d	$a2, $a1, 6
	addi.d	$a4, $a5, -1
	ori	$a3, $zero, 1
	bstrpick.d	$a6, $a6, 15, 0
.LBB13_66:                              #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$a7, $a2, 0
	bgeu	$a6, $a7, .LBB13_69
# %bb.67:                               #   in Loop: Header=BB13_66 Depth=3
	addi.w	$a3, $a3, 1
	addi.d	$a4, $a4, -1
	addi.d	$a2, $a2, 4
	bnez	$a4, .LBB13_66
# %bb.68:                               #   in Loop: Header=BB13_25 Depth=2
	move	$a3, $a5
.LBB13_69:                              # %iter.check
                                        #   in Loop: Header=BB13_25 Depth=2
	alsl.d	$a5, $a3, $a1, 2
	ld.hu	$a4, $a5, -4
	ld.hu	$a7, $a5, -2
	ld.hu	$a6, $a5, 2
	ori	$a2, $zero, 8
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	st.d	$t0, $sp, 184                   # 8-byte Folded Spill
	st.d	$a6, $sp, 176                   # 8-byte Folded Spill
	st.d	$a7, $sp, 168                   # 8-byte Folded Spill
	bge	$a3, $a2, .LBB13_81
# %bb.70:                               #   in Loop: Header=BB13_25 Depth=2
	move	$a5, $a3
	b	.LBB13_105
.LBB13_71:                              #   in Loop: Header=BB13_25 Depth=2
	ori	$a0, $zero, 6
	beq	$a1, $a0, .LBB13_93
# %bb.72:                               #   in Loop: Header=BB13_25 Depth=2
	ori	$a0, $zero, 5
	beq	$a1, $a0, .LBB13_86
# %bb.73:                               #   in Loop: Header=BB13_25 Depth=2
	ori	$a0, $zero, 4
	bne	$a1, $a0, .LBB13_372
# %bb.74:                               #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $s0, 440
	ld.w	$a1, $s0, 436
	ld.hu	$s1, $a0, 2
	sub.w	$a7, $a2, $a4
	ori	$a2, $zero, 1
	ori	$a3, $zero, 2
	blt	$a1, $a3, .LBB13_79
# %bb.75:                               # %.lr.ph1519
                                        #   in Loop: Header=BB13_25 Depth=2
	sub.d	$a2, $t6, $a4
	addi.d	$a2, $a2, 1
	mul.d	$a2, $a2, $s1
	addi.w	$a2, $a2, -1
	bstrpick.d	$a3, $a7, 15, 0
	addi.d	$a3, $a3, 1
	div.wu	$a5, $a2, $a3
	addi.d	$a3, $a0, 6
	addi.d	$a4, $a1, -1
	ori	$a2, $zero, 1
	bstrpick.d	$a5, $a5, 15, 0
.LBB13_76:                              #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$a6, $a3, 0
	bgeu	$a5, $a6, .LBB13_79
# %bb.77:                               #   in Loop: Header=BB13_76 Depth=3
	addi.w	$a2, $a2, 1
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	bnez	$a4, .LBB13_76
# %bb.78:                               #   in Loop: Header=BB13_25 Depth=2
	move	$a2, $a1
.LBB13_79:                              # %iter.check2023
                                        #   in Loop: Header=BB13_25 Depth=2
	alsl.d	$a4, $a2, $a0, 2
	ld.hu	$a1, $a4, -4
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ld.hu	$a1, $a4, -2
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	ld.hu	$a1, $a4, 2
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ori	$a1, $zero, 8
	st.d	$a7, $sp, 176                   # 8-byte Folded Spill
	bge	$a2, $a1, .LBB13_128
# %bb.80:                               #   in Loop: Header=BB13_25 Depth=2
	move	$a4, $a2
	b	.LBB13_177
.LBB13_81:                              # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB13_25 Depth=2
	slt	$a2, $ra, $a3
	masknez	$a4, $ra, $a2
	maskeqz	$a2, $a3, $a2
	or	$a2, $a2, $a4
	st.d	$t6, $sp, 208                   # 8-byte Folded Spill
	move	$s6, $t1
	bge	$a3, $t8, .LBB13_100
# %bb.82:                               #   in Loop: Header=BB13_25 Depth=2
	move	$a4, $zero
.LBB13_83:                              # %vec.epilog.ph
                                        #   in Loop: Header=BB13_25 Depth=2
	bstrpick.d	$a5, $a2, 30, 3
	slli.d	$a6, $a5, 3
	sub.d	$a5, $a3, $a6
	sub.d	$a7, $a4, $a6
	slli.d	$a3, $a3, 2
	slli.d	$a4, $a4, 2
	sub.d	$a3, $a3, $a4
	add.d	$a3, $a1, $a3
	addi.d	$a3, $a3, -14
.LBB13_84:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a4, $a3, 12
	ld.h	$t0, $a3, 8
	ld.h	$t1, $a3, 4
	ld.h	$t2, $a3, 0
	ld.h	$t3, $a3, -4
	ld.h	$t4, $a3, -8
	ld.h	$t5, $a3, -12
	ld.h	$t6, $a3, -16
	vinsgr2vr.h	$vr0, $a4, 0
	vinsgr2vr.h	$vr0, $t0, 1
	vinsgr2vr.h	$vr0, $t1, 2
	vinsgr2vr.h	$vr0, $t2, 3
	vinsgr2vr.h	$vr0, $t3, 4
	vinsgr2vr.h	$vr0, $t4, 5
	vinsgr2vr.h	$vr0, $t5, 6
	vinsgr2vr.h	$vr0, $t6, 7
	vaddi.hu	$vr0, $vr0, 8
	vstelm.h	$vr0, $a3, 12, 0
	vstelm.h	$vr0, $a3, 8, 1
	vstelm.h	$vr0, $a3, 4, 2
	vstelm.h	$vr0, $a3, 0, 3
	vstelm.h	$vr0, $a3, -4, 4
	vstelm.h	$vr0, $a3, -8, 5
	vstelm.h	$vr0, $a3, -12, 6
	vstelm.h	$vr0, $a3, -16, 7
	addi.d	$a7, $a7, 8
	addi.d	$a3, $a3, -32
	bnez	$a7, .LBB13_84
# %bb.85:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.d	$t6, $sp, 208                   # 8-byte Folded Reload
	move	$t1, $s6
	bne	$a2, $a6, .LBB13_105
	b	.LBB13_107
.LBB13_86:                              #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $s0, 456
	ld.w	$a1, $s0, 452
	ld.hu	$s1, $a0, 2
	sub.w	$a7, $a2, $a4
	ori	$a2, $zero, 1
	ori	$a3, $zero, 2
	blt	$a1, $a3, .LBB13_91
# %bb.87:                               # %.lr.ph1497
                                        #   in Loop: Header=BB13_25 Depth=2
	sub.d	$a2, $t6, $a4
	addi.d	$a2, $a2, 1
	mul.d	$a2, $a2, $s1
	addi.w	$a2, $a2, -1
	bstrpick.d	$a3, $a7, 15, 0
	addi.d	$a3, $a3, 1
	div.wu	$a5, $a2, $a3
	addi.d	$a3, $a0, 6
	addi.d	$a4, $a1, -1
	ori	$a2, $zero, 1
	bstrpick.d	$a5, $a5, 15, 0
.LBB13_88:                              #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$a6, $a3, 0
	bgeu	$a5, $a6, .LBB13_91
# %bb.89:                               #   in Loop: Header=BB13_88 Depth=3
	addi.w	$a2, $a2, 1
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	bnez	$a4, .LBB13_88
# %bb.90:                               #   in Loop: Header=BB13_25 Depth=2
	move	$a2, $a1
.LBB13_91:                              # %iter.check2054
                                        #   in Loop: Header=BB13_25 Depth=2
	alsl.d	$a4, $a2, $a0, 2
	ld.hu	$a1, $a4, -4
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ld.hu	$a1, $a4, -2
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	ld.hu	$a1, $a4, 2
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ori	$a1, $zero, 8
	st.d	$a7, $sp, 176                   # 8-byte Folded Spill
	bge	$a2, $a1, .LBB13_123
# %bb.92:                               #   in Loop: Header=BB13_25 Depth=2
	move	$a4, $a2
	b	.LBB13_143
.LBB13_93:                              #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $s0, 488
	ld.w	$a1, $s0, 484
	ld.hu	$s1, $a0, 2
	sub.w	$s6, $a2, $a4
	ori	$a2, $zero, 1
	ori	$a3, $zero, 2
	blt	$a1, $a3, .LBB13_98
# %bb.94:                               # %.lr.ph1453
                                        #   in Loop: Header=BB13_25 Depth=2
	sub.d	$a2, $t6, $a4
	addi.d	$a2, $a2, 1
	mul.d	$a2, $a2, $s1
	addi.w	$a2, $a2, -1
	bstrpick.d	$a3, $s6, 15, 0
	addi.d	$a3, $a3, 1
	div.wu	$a5, $a2, $a3
	addi.d	$a3, $a0, 6
	addi.d	$a4, $a1, -1
	ori	$a2, $zero, 1
	bstrpick.d	$a5, $a5, 15, 0
.LBB13_95:                              #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$a6, $a3, 0
	bgeu	$a5, $a6, .LBB13_98
# %bb.96:                               #   in Loop: Header=BB13_95 Depth=3
	addi.w	$a2, $a2, 1
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	bnez	$a4, .LBB13_95
# %bb.97:                               #   in Loop: Header=BB13_25 Depth=2
	move	$a2, $a1
.LBB13_98:                              # %iter.check2116
                                        #   in Loop: Header=BB13_25 Depth=2
	alsl.d	$a4, $a2, $a0, 2
	ld.hu	$a1, $a4, -4
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ld.hu	$a5, $a4, -2
	ld.hu	$a3, $a4, 2
	ori	$a1, $zero, 8
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	st.d	$a5, $sp, 168                   # 8-byte Folded Spill
	bge	$a2, $a1, .LBB13_133
# %bb.99:                               #   in Loop: Header=BB13_25 Depth=2
	move	$a4, $a2
	b	.LBB13_211
.LBB13_100:                             # %vector.ph
                                        #   in Loop: Header=BB13_25 Depth=2
	bstrpick.d	$a4, $a2, 30, 4
	slli.d	$a4, $a4, 4
	addi.d	$a5, $a5, -30
	move	$a6, $a4
.LBB13_101:                             # %vector.body
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a7, $a5, 28
	ld.h	$t0, $a5, 24
	ld.h	$t1, $a5, 20
	ld.h	$t2, $a5, 16
	ld.h	$t3, $a5, 12
	ld.h	$t4, $a5, 8
	ld.h	$t5, $a5, 4
	ld.h	$t6, $a5, 0
	ld.h	$t7, $a5, -4
	vinsgr2vr.h	$vr0, $a7, 0
	vinsgr2vr.h	$vr0, $t0, 1
	vinsgr2vr.h	$vr0, $t1, 2
	vinsgr2vr.h	$vr0, $t2, 3
	vinsgr2vr.h	$vr0, $t3, 4
	vinsgr2vr.h	$vr0, $t4, 5
	vinsgr2vr.h	$vr0, $t5, 6
	vinsgr2vr.h	$vr0, $t6, 7
	ld.h	$a7, $a5, -8
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $t7, 0
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$t0, $a5, -12
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a7, 1
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a7, $a5, -16
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $t0, 2
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$t0, $a5, -20
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a7, 3
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a7, $a5, -24
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $t0, 4
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$t0, $a5, -28
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a7, 5
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a7, $a5, -32
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $t0, 6
	xvpermi.q	$xr0, $xr1, 2
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a7, 7
	xvpermi.q	$xr0, $xr1, 2
	xvaddi.hu	$xr0, $xr0, 8
	xvstelm.h	$xr0, $a5, 28, 0
	xvstelm.h	$xr0, $a5, 24, 1
	xvstelm.h	$xr0, $a5, 20, 2
	xvstelm.h	$xr0, $a5, 16, 3
	xvstelm.h	$xr0, $a5, 12, 4
	xvstelm.h	$xr0, $a5, 8, 5
	xvstelm.h	$xr0, $a5, 4, 6
	xvstelm.h	$xr0, $a5, 0, 7
	xvst	$xr0, $sp, 224
	ld.h	$a7, $sp, 240
	st.h	$a7, $a5, -4
	ld.h	$a7, $sp, 242
	st.h	$a7, $a5, -8
	ld.h	$a7, $sp, 244
	st.h	$a7, $a5, -12
	ld.h	$a7, $sp, 246
	st.h	$a7, $a5, -16
	ld.h	$a7, $sp, 248
	st.h	$a7, $a5, -20
	ld.h	$a7, $sp, 250
	st.h	$a7, $a5, -24
	ld.h	$a7, $sp, 252
	st.h	$a7, $a5, -28
	ld.h	$a7, $sp, 254
	st.h	$a7, $a5, -32
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, -64
	bnez	$a6, .LBB13_101
# %bb.102:                              # %middle.block
                                        #   in Loop: Header=BB13_25 Depth=2
	lu12i.w	$t7, 4
	ld.d	$t6, $sp, 208                   # 8-byte Folded Reload
	move	$t1, $s6
	beq	$a2, $a4, .LBB13_107
# %bb.103:                              # %vec.epilog.iter.check
                                        #   in Loop: Header=BB13_25 Depth=2
	andi	$a5, $a2, 8
	bnez	$a5, .LBB13_83
# %bb.104:                              #   in Loop: Header=BB13_25 Depth=2
	sub.d	$a5, $a3, $a4
.LBB13_105:                             # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB13_25 Depth=2
	addi.d	$a2, $a5, 1
	alsl.d	$a3, $a5, $a1, 2
	addi.d	$a3, $a3, -2
	.p2align	4, , 16
.LBB13_106:                             # %vec.epilog.scalar.ph
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a4, $a3, 0
	addi.d	$a4, $a4, 8
	st.h	$a4, $a3, 0
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, -4
	blt	$ra, $a2, .LBB13_106
.LBB13_107:                             # %.loopexit2174
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.hu	$a1, $a1, 2
	ori	$a2, $zero, 3801
	bltu	$a1, $a2, .LBB13_109
# %bb.108:                              #   in Loop: Header=BB13_25 Depth=2
	move	$s6, $s7
	move	$s7, $s2
	move	$s2, $t6
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	move	$s1, $t1
	pcaddu18i	$ra, %call36(qtm_update_model)
	jirl	$ra, $ra, 0
	move	$t1, $s1
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	move	$t6, $s2
	move	$s2, $s7
	move	$s7, $s6
	lu12i.w	$t7, 4
	ori	$ra, $zero, 1
	ori	$t8, $zero, 16
.LBB13_109:                             # %.preheader2183
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	mul.w	$a1, $a0, $a1
	div.wu	$a1, $a1, $s1
	add.d	$a1, $s3, $a1
	addi.d	$s6, $a1, -1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	div.wu	$a0, $a0, $s1
	add.d	$s3, $s3, $a0
	b	.LBB13_114
.LBB13_110:                             #   in Loop: Header=BB13_114 Depth=3
	ld.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$t8, $zero, 16
	ori	$ra, $zero, 1
	lu12i.w	$t7, 4
	bltz	$a0, .LBB13_365
.LBB13_111:                             #   in Loop: Header=BB13_114 Depth=3
	move	$t6, $s5
	ld.d	$s5, $s0, 48
	st.d	$s5, $s0, 56
	add.d	$t1, $s5, $a0
	st.d	$t1, $s0, 64
.LBB13_112:                             #   in Loop: Header=BB13_114 Depth=3
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t8, $s1
	sll.w	$a0, $a0, $a1
	or	$s8, $a0, $s8
	addi.d	$s4, $s4, 16
	addi.d	$s5, $s5, 2
.LBB13_113:                             #   in Loop: Header=BB13_114 Depth=3
	slli.d	$s3, $s3, 1
	slli.d	$a0, $s6, 1
	addi.d	$s6, $a0, 1
	bstrpick.d	$a0, $s8, 31, 31
	slli.d	$a1, $t6, 1
	or	$a0, $a1, $a0
	bstrpick.d	$t6, $a0, 15, 0
	slli.d	$s8, $s8, 1
	addi.d	$s4, $s4, -1
.LBB13_114:                             #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xor	$a0, $s3, $s6
	bstrpick.d	$a0, $a0, 15, 15
	beqz	$a0, .LBB13_118
# %bb.115:                              #   in Loop: Header=BB13_114 Depth=3
	bstrpick.d	$a0, $s6, 15, 0
	and	$a0, $a0, $t7
	bnez	$a0, .LBB13_122
# %bb.116:                              #   in Loop: Header=BB13_114 Depth=3
	bstrpick.d	$a0, $s3, 15, 0
	and	$a0, $a0, $t7
	beqz	$a0, .LBB13_122
# %bb.117:                              #   in Loop: Header=BB13_114 Depth=3
	xor	$t6, $t6, $t7
	bstrpick.d	$s3, $s3, 13, 0
	or	$s6, $s6, $t7
.LBB13_118:                             #   in Loop: Header=BB13_114 Depth=3
	andi	$s1, $s4, 255
	bltu	$t8, $s1, .LBB13_113
# %bb.119:                              #   in Loop: Header=BB13_114 Depth=3
	bltu	$s5, $t1, .LBB13_112
# %bb.120:                              #   in Loop: Header=BB13_114 Depth=3
	move	$s5, $t6
	ldptr.d	$a3, $s0, 2128
	ld.d	$a1, $s0, 48
	ld.w	$a2, $s0, 92
	beqz	$a3, .LBB13_110
# %bb.121:                              #   in Loop: Header=BB13_114 Depth=3
	ldptr.d	$a0, $s0, 2120
	jirl	$ra, $a3, 0
	ori	$t8, $zero, 16
	ori	$ra, $zero, 1
	lu12i.w	$t7, 4
	bgez	$a0, .LBB13_111
	b	.LBB13_365
.LBB13_122:                             # %.thread
                                        #   in Loop: Header=BB13_25 Depth=2
	bstrpick.d	$a0, $s2, 31, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	stx.b	$a2, $a1, $a0
	ori	$a1, $zero, 1
	b	.LBB13_337
.LBB13_123:                             # %vector.main.loop.iter.check2056
                                        #   in Loop: Header=BB13_25 Depth=2
	slt	$a1, $ra, $a2
	masknez	$a3, $ra, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	move	$s6, $t1
	bge	$a2, $t8, .LBB13_138
# %bb.124:                              #   in Loop: Header=BB13_25 Depth=2
	move	$a3, $zero
.LBB13_125:                             # %vec.epilog.ph2067
                                        #   in Loop: Header=BB13_25 Depth=2
	bstrpick.d	$a4, $a1, 30, 3
	slli.d	$a5, $a4, 3
	sub.d	$a4, $a2, $a5
	sub.d	$a6, $a3, $a5
	slli.d	$a2, $a2, 2
	slli.d	$a3, $a3, 2
	sub.d	$a2, $a2, $a3
	add.d	$a2, $a0, $a2
	addi.d	$a2, $a2, -14
.LBB13_126:                             # %vec.epilog.vector.body2073
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a3, $a2, 12
	ld.h	$a7, $a2, 8
	ld.h	$t0, $a2, 4
	ld.h	$t1, $a2, 0
	ld.h	$t2, $a2, -4
	ld.h	$t3, $a2, -8
	ld.h	$t4, $a2, -12
	ld.h	$t5, $a2, -16
	vinsgr2vr.h	$vr0, $a3, 0
	vinsgr2vr.h	$vr0, $a7, 1
	vinsgr2vr.h	$vr0, $t0, 2
	vinsgr2vr.h	$vr0, $t1, 3
	vinsgr2vr.h	$vr0, $t2, 4
	vinsgr2vr.h	$vr0, $t3, 5
	vinsgr2vr.h	$vr0, $t4, 6
	vinsgr2vr.h	$vr0, $t5, 7
	vaddi.hu	$vr0, $vr0, 8
	vstelm.h	$vr0, $a2, 12, 0
	vstelm.h	$vr0, $a2, 8, 1
	vstelm.h	$vr0, $a2, 4, 2
	vstelm.h	$vr0, $a2, 0, 3
	vstelm.h	$vr0, $a2, -4, 4
	vstelm.h	$vr0, $a2, -8, 5
	vstelm.h	$vr0, $a2, -12, 6
	vstelm.h	$vr0, $a2, -16, 7
	addi.d	$a6, $a6, 8
	addi.d	$a2, $a2, -32
	bnez	$a6, .LBB13_126
# %bb.127:                              # %vec.epilog.middle.block2077
                                        #   in Loop: Header=BB13_25 Depth=2
	move	$t1, $s6
	bne	$a1, $a5, .LBB13_143
	b	.LBB13_145
.LBB13_128:                             # %vector.main.loop.iter.check2025
                                        #   in Loop: Header=BB13_25 Depth=2
	slt	$a1, $ra, $a2
	masknez	$a3, $ra, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	move	$s6, $t1
	bge	$a2, $t8, .LBB13_172
# %bb.129:                              #   in Loop: Header=BB13_25 Depth=2
	move	$a3, $zero
.LBB13_130:                             # %vec.epilog.ph2036
                                        #   in Loop: Header=BB13_25 Depth=2
	bstrpick.d	$a4, $a1, 30, 3
	slli.d	$a5, $a4, 3
	sub.d	$a4, $a2, $a5
	sub.d	$a6, $a3, $a5
	slli.d	$a2, $a2, 2
	slli.d	$a3, $a3, 2
	sub.d	$a2, $a2, $a3
	add.d	$a2, $a0, $a2
	addi.d	$a2, $a2, -14
.LBB13_131:                             # %vec.epilog.vector.body2042
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a3, $a2, 12
	ld.h	$a7, $a2, 8
	ld.h	$t0, $a2, 4
	ld.h	$t1, $a2, 0
	ld.h	$t2, $a2, -4
	ld.h	$t3, $a2, -8
	ld.h	$t4, $a2, -12
	ld.h	$t5, $a2, -16
	vinsgr2vr.h	$vr0, $a3, 0
	vinsgr2vr.h	$vr0, $a7, 1
	vinsgr2vr.h	$vr0, $t0, 2
	vinsgr2vr.h	$vr0, $t1, 3
	vinsgr2vr.h	$vr0, $t2, 4
	vinsgr2vr.h	$vr0, $t3, 5
	vinsgr2vr.h	$vr0, $t4, 6
	vinsgr2vr.h	$vr0, $t5, 7
	vaddi.hu	$vr0, $vr0, 8
	vstelm.h	$vr0, $a2, 12, 0
	vstelm.h	$vr0, $a2, 8, 1
	vstelm.h	$vr0, $a2, 4, 2
	vstelm.h	$vr0, $a2, 0, 3
	vstelm.h	$vr0, $a2, -4, 4
	vstelm.h	$vr0, $a2, -8, 5
	vstelm.h	$vr0, $a2, -12, 6
	vstelm.h	$vr0, $a2, -16, 7
	addi.d	$a6, $a6, 8
	addi.d	$a2, $a2, -32
	bnez	$a6, .LBB13_131
# %bb.132:                              # %vec.epilog.middle.block2046
                                        #   in Loop: Header=BB13_25 Depth=2
	move	$t1, $s6
	bne	$a1, $a5, .LBB13_177
	b	.LBB13_179
.LBB13_133:                             # %vector.main.loop.iter.check2118
                                        #   in Loop: Header=BB13_25 Depth=2
	slt	$a1, $ra, $a2
	masknez	$a3, $ra, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	st.d	$t1, $sp, 24                    # 8-byte Folded Spill
	bge	$a2, $t8, .LBB13_206
# %bb.134:                              #   in Loop: Header=BB13_25 Depth=2
	move	$a3, $zero
.LBB13_135:                             # %vec.epilog.ph2129
                                        #   in Loop: Header=BB13_25 Depth=2
	bstrpick.d	$a4, $a1, 30, 3
	slli.d	$a5, $a4, 3
	sub.d	$a4, $a2, $a5
	sub.d	$a6, $a3, $a5
	slli.d	$a2, $a2, 2
	slli.d	$a3, $a3, 2
	sub.d	$a2, $a2, $a3
	add.d	$a2, $a0, $a2
	addi.d	$a2, $a2, -14
.LBB13_136:                             # %vec.epilog.vector.body2135
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a3, $a2, 12
	ld.h	$a7, $a2, 8
	ld.h	$t0, $a2, 4
	ld.h	$t1, $a2, 0
	ld.h	$t2, $a2, -4
	ld.h	$t3, $a2, -8
	ld.h	$t4, $a2, -12
	ld.h	$t5, $a2, -16
	vinsgr2vr.h	$vr0, $a3, 0
	vinsgr2vr.h	$vr0, $a7, 1
	vinsgr2vr.h	$vr0, $t0, 2
	vinsgr2vr.h	$vr0, $t1, 3
	vinsgr2vr.h	$vr0, $t2, 4
	vinsgr2vr.h	$vr0, $t3, 5
	vinsgr2vr.h	$vr0, $t4, 6
	vinsgr2vr.h	$vr0, $t5, 7
	vaddi.hu	$vr0, $vr0, 8
	vstelm.h	$vr0, $a2, 12, 0
	vstelm.h	$vr0, $a2, 8, 1
	vstelm.h	$vr0, $a2, 4, 2
	vstelm.h	$vr0, $a2, 0, 3
	vstelm.h	$vr0, $a2, -4, 4
	vstelm.h	$vr0, $a2, -8, 5
	vstelm.h	$vr0, $a2, -12, 6
	vstelm.h	$vr0, $a2, -16, 7
	addi.d	$a6, $a6, 8
	addi.d	$a2, $a2, -32
	bnez	$a6, .LBB13_136
# %bb.137:                              # %vec.epilog.middle.block2139
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.d	$t1, $sp, 24                    # 8-byte Folded Reload
	bne	$a1, $a5, .LBB13_211
	b	.LBB13_213
.LBB13_138:                             # %vector.ph2057
                                        #   in Loop: Header=BB13_25 Depth=2
	st.d	$t6, $sp, 208                   # 8-byte Folded Spill
	bstrpick.d	$a3, $a1, 30, 4
	slli.d	$a3, $a3, 4
	addi.d	$a4, $a4, -30
	move	$a5, $a3
.LBB13_139:                             # %vector.body2060
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a6, $a4, 28
	ld.h	$a7, $a4, 24
	ld.h	$t0, $a4, 20
	ld.h	$t1, $a4, 16
	ld.h	$t2, $a4, 12
	ld.h	$t3, $a4, 8
	ld.h	$t4, $a4, 4
	ld.h	$t5, $a4, 0
	ld.h	$t6, $a4, -4
	vinsgr2vr.h	$vr0, $a6, 0
	vinsgr2vr.h	$vr0, $a7, 1
	vinsgr2vr.h	$vr0, $t0, 2
	vinsgr2vr.h	$vr0, $t1, 3
	vinsgr2vr.h	$vr0, $t2, 4
	vinsgr2vr.h	$vr0, $t3, 5
	vinsgr2vr.h	$vr0, $t4, 6
	vinsgr2vr.h	$vr0, $t5, 7
	ld.h	$a6, $a4, -8
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $t6, 0
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a7, $a4, -12
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a6, 1
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a6, $a4, -16
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a7, 2
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a7, $a4, -20
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a6, 3
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a6, $a4, -24
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a7, 4
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a7, $a4, -28
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a6, 5
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a6, $a4, -32
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a7, 6
	xvpermi.q	$xr0, $xr1, 2
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a6, 7
	xvpermi.q	$xr0, $xr1, 2
	xvaddi.hu	$xr0, $xr0, 8
	xvstelm.h	$xr0, $a4, 28, 0
	xvstelm.h	$xr0, $a4, 24, 1
	xvstelm.h	$xr0, $a4, 20, 2
	xvstelm.h	$xr0, $a4, 16, 3
	xvstelm.h	$xr0, $a4, 12, 4
	xvstelm.h	$xr0, $a4, 8, 5
	xvstelm.h	$xr0, $a4, 4, 6
	xvstelm.h	$xr0, $a4, 0, 7
	xvst	$xr0, $sp, 288
	ld.h	$a6, $sp, 304
	st.h	$a6, $a4, -4
	ld.h	$a6, $sp, 306
	st.h	$a6, $a4, -8
	ld.h	$a6, $sp, 308
	st.h	$a6, $a4, -12
	ld.h	$a6, $sp, 310
	st.h	$a6, $a4, -16
	ld.h	$a6, $sp, 312
	st.h	$a6, $a4, -20
	ld.h	$a6, $sp, 314
	st.h	$a6, $a4, -24
	ld.h	$a6, $sp, 316
	st.h	$a6, $a4, -28
	ld.h	$a6, $sp, 318
	st.h	$a6, $a4, -32
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, -64
	bnez	$a5, .LBB13_139
# %bb.140:                              # %middle.block2063
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.d	$t6, $sp, 208                   # 8-byte Folded Reload
	move	$t1, $s6
	beq	$a1, $a3, .LBB13_145
# %bb.141:                              # %vec.epilog.iter.check2068
                                        #   in Loop: Header=BB13_25 Depth=2
	andi	$a4, $a1, 8
	bnez	$a4, .LBB13_125
# %bb.142:                              #   in Loop: Header=BB13_25 Depth=2
	sub.d	$a4, $a2, $a3
.LBB13_143:                             # %vec.epilog.scalar.ph2066.preheader
                                        #   in Loop: Header=BB13_25 Depth=2
	addi.d	$a1, $a4, 1
	alsl.d	$a2, $a4, $a0, 2
	addi.d	$a2, $a2, -2
.LBB13_144:                             # %vec.epilog.scalar.ph2066
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a3, $a2, 0
	addi.d	$a3, $a3, 8
	st.h	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	blt	$ra, $a1, .LBB13_144
.LBB13_145:                             # %.loopexit2176
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.hu	$a0, $a0, 2
	ori	$a1, $zero, 3801
	bltu	$a0, $a1, .LBB13_147
# %bb.146:                              #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	move	$s6, $s7
	move	$s7, $s2
	move	$s2, $t6
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	move	$s1, $t1
	pcaddu18i	$ra, %call36(qtm_update_model)
	jirl	$ra, $ra, 0
	move	$t1, $s1
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	move	$t6, $s2
	move	$s2, $s7
	move	$s7, $s6
	lu12i.w	$t7, 4
	ori	$ra, $zero, 1
	ori	$t8, $zero, 16
.LBB13_147:                             # %.preheader2188
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	mul.w	$a1, $a0, $a1
	div.wu	$a1, $a1, $s1
	add.d	$a1, $s3, $a1
	addi.d	$s6, $a1, -1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	div.wu	$a0, $a0, $s1
	add.d	$s3, $s3, $a0
	b	.LBB13_153
.LBB13_148:                             #   in Loop: Header=BB13_153 Depth=3
	ld.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB13_149:                             #   in Loop: Header=BB13_153 Depth=3
	addi.w	$a1, $zero, -1
	ori	$t8, $zero, 16
	ori	$ra, $zero, 1
	lu12i.w	$t7, 4
	bge	$a1, $a0, .LBB13_365
# %bb.150:                              #   in Loop: Header=BB13_153 Depth=3
	move	$t6, $s5
	ld.d	$s5, $s0, 48
	st.d	$s5, $s0, 56
	add.d	$t1, $s5, $a0
	st.d	$t1, $s0, 64
.LBB13_151:                             #   in Loop: Header=BB13_153 Depth=3
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t8, $s1
	sll.w	$a0, $a0, $a1
	or	$s8, $a0, $s8
	addi.d	$s4, $s4, 16
	addi.d	$s5, $s5, 2
.LBB13_152:                             #   in Loop: Header=BB13_153 Depth=3
	slli.d	$s3, $s3, 1
	slli.d	$a0, $s6, 1
	addi.d	$s6, $a0, 1
	bstrpick.d	$a0, $s8, 31, 31
	slli.d	$a1, $t6, 1
	or	$a0, $a1, $a0
	bstrpick.d	$t6, $a0, 15, 0
	slli.d	$s8, $s8, 1
	addi.d	$s4, $s4, -1
.LBB13_153:                             #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xor	$a0, $s3, $s6
	bstrpick.d	$a0, $a0, 15, 15
	beqz	$a0, .LBB13_157
# %bb.154:                              #   in Loop: Header=BB13_153 Depth=3
	bstrpick.d	$a0, $s6, 15, 0
	and	$a0, $a0, $t7
	bnez	$a0, .LBB13_161
# %bb.155:                              #   in Loop: Header=BB13_153 Depth=3
	bstrpick.d	$a0, $s3, 15, 0
	and	$a0, $a0, $t7
	beqz	$a0, .LBB13_161
# %bb.156:                              #   in Loop: Header=BB13_153 Depth=3
	xor	$t6, $t6, $t7
	bstrpick.d	$s3, $s3, 13, 0
	or	$s6, $s6, $t7
.LBB13_157:                             #   in Loop: Header=BB13_153 Depth=3
	andi	$s1, $s4, 255
	bltu	$t8, $s1, .LBB13_152
# %bb.158:                              #   in Loop: Header=BB13_153 Depth=3
	bltu	$s5, $t1, .LBB13_151
# %bb.159:                              #   in Loop: Header=BB13_153 Depth=3
	move	$s5, $t6
	ldptr.d	$a3, $s0, 2128
	ld.d	$a1, $s0, 48
	ld.w	$a2, $s0, 92
	beqz	$a3, .LBB13_148
# %bb.160:                              #   in Loop: Header=BB13_153 Depth=3
	ldptr.d	$a0, $s0, 2120
	jirl	$ra, $a3, 0
	b	.LBB13_149
.LBB13_161:                             #   in Loop: Header=BB13_25 Depth=2
	move	$a1, $s7
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.bu	$s7, $a0, $a2
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	beqz	$s7, .LBB13_289
# %bb.162:                              # %.lr.ph1510.preheader
                                        #   in Loop: Header=BB13_25 Depth=2
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	move	$s1, $zero
	b	.LBB13_168
.LBB13_163:                             #   in Loop: Header=BB13_168 Depth=3
	ld.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB13_164:                             #   in Loop: Header=BB13_168 Depth=3
	addi.w	$a1, $zero, -1
	ori	$t8, $zero, 16
	ori	$ra, $zero, 1
	lu12i.w	$t7, 4
	bge	$a1, $a0, .LBB13_365
# %bb.165:                              #   in Loop: Header=BB13_168 Depth=3
	move	$t6, $s5
	ld.d	$s5, $s0, 48
	st.d	$s5, $s0, 56
	add.d	$t1, $s5, $a0
	st.d	$t1, $s0, 64
.LBB13_166:                             #   in Loop: Header=BB13_168 Depth=3
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t8, $s2
	sll.w	$a0, $a0, $a1
	or	$s8, $a0, $s8
	addi.d	$s4, $s4, 16
	addi.d	$s5, $s5, 2
.LBB13_167:                             #   in Loop: Header=BB13_168 Depth=3
	andi	$a0, $s7, 255
	andi	$a1, $s4, 255
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	sll.w	$a1, $s1, $a0
	ori	$a2, $zero, 32
	sub.d	$a2, $a2, $a0
	srl.w	$a2, $s8, $a2
	or	$s1, $a2, $a1
	sll.w	$s8, $s8, $a0
	sub.d	$s7, $s7, $a0
	andi	$a1, $s7, 255
	sub.d	$s4, $s4, $a0
	beqz	$a1, .LBB13_288
.LBB13_168:                             # %.lr.ph1510
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$s2, $s4, 255
	bltu	$t8, $s2, .LBB13_167
# %bb.169:                              #   in Loop: Header=BB13_168 Depth=3
	bltu	$s5, $t1, .LBB13_166
# %bb.170:                              #   in Loop: Header=BB13_168 Depth=3
	move	$s5, $t6
	ldptr.d	$a3, $s0, 2128
	ld.d	$a1, $s0, 48
	ld.w	$a2, $s0, 92
	beqz	$a3, .LBB13_163
# %bb.171:                              #   in Loop: Header=BB13_168 Depth=3
	ldptr.d	$a0, $s0, 2120
	jirl	$ra, $a3, 0
	b	.LBB13_164
.LBB13_172:                             # %vector.ph2026
                                        #   in Loop: Header=BB13_25 Depth=2
	st.d	$t6, $sp, 208                   # 8-byte Folded Spill
	bstrpick.d	$a3, $a1, 30, 4
	slli.d	$a3, $a3, 4
	addi.d	$a4, $a4, -30
	move	$a5, $a3
.LBB13_173:                             # %vector.body2029
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a6, $a4, 28
	ld.h	$a7, $a4, 24
	ld.h	$t0, $a4, 20
	ld.h	$t1, $a4, 16
	ld.h	$t2, $a4, 12
	ld.h	$t3, $a4, 8
	ld.h	$t4, $a4, 4
	ld.h	$t5, $a4, 0
	ld.h	$t6, $a4, -4
	vinsgr2vr.h	$vr0, $a6, 0
	vinsgr2vr.h	$vr0, $a7, 1
	vinsgr2vr.h	$vr0, $t0, 2
	vinsgr2vr.h	$vr0, $t1, 3
	vinsgr2vr.h	$vr0, $t2, 4
	vinsgr2vr.h	$vr0, $t3, 5
	vinsgr2vr.h	$vr0, $t4, 6
	vinsgr2vr.h	$vr0, $t5, 7
	ld.h	$a6, $a4, -8
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $t6, 0
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a7, $a4, -12
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a6, 1
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a6, $a4, -16
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a7, 2
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a7, $a4, -20
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a6, 3
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a6, $a4, -24
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a7, 4
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a7, $a4, -28
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a6, 5
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a6, $a4, -32
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a7, 6
	xvpermi.q	$xr0, $xr1, 2
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a6, 7
	xvpermi.q	$xr0, $xr1, 2
	xvaddi.hu	$xr0, $xr0, 8
	xvstelm.h	$xr0, $a4, 28, 0
	xvstelm.h	$xr0, $a4, 24, 1
	xvstelm.h	$xr0, $a4, 20, 2
	xvstelm.h	$xr0, $a4, 16, 3
	xvstelm.h	$xr0, $a4, 12, 4
	xvstelm.h	$xr0, $a4, 8, 5
	xvstelm.h	$xr0, $a4, 4, 6
	xvstelm.h	$xr0, $a4, 0, 7
	xvst	$xr0, $sp, 256
	ld.h	$a6, $sp, 272
	st.h	$a6, $a4, -4
	ld.h	$a6, $sp, 274
	st.h	$a6, $a4, -8
	ld.h	$a6, $sp, 276
	st.h	$a6, $a4, -12
	ld.h	$a6, $sp, 278
	st.h	$a6, $a4, -16
	ld.h	$a6, $sp, 280
	st.h	$a6, $a4, -20
	ld.h	$a6, $sp, 282
	st.h	$a6, $a4, -24
	ld.h	$a6, $sp, 284
	st.h	$a6, $a4, -28
	ld.h	$a6, $sp, 286
	st.h	$a6, $a4, -32
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, -64
	bnez	$a5, .LBB13_173
# %bb.174:                              # %middle.block2032
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.d	$t6, $sp, 208                   # 8-byte Folded Reload
	move	$t1, $s6
	beq	$a1, $a3, .LBB13_179
# %bb.175:                              # %vec.epilog.iter.check2037
                                        #   in Loop: Header=BB13_25 Depth=2
	andi	$a4, $a1, 8
	bnez	$a4, .LBB13_130
# %bb.176:                              #   in Loop: Header=BB13_25 Depth=2
	sub.d	$a4, $a2, $a3
.LBB13_177:                             # %vec.epilog.scalar.ph2035.preheader
                                        #   in Loop: Header=BB13_25 Depth=2
	addi.d	$a1, $a4, 1
	alsl.d	$a2, $a4, $a0, 2
	addi.d	$a2, $a2, -2
.LBB13_178:                             # %vec.epilog.scalar.ph2035
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a3, $a2, 0
	addi.d	$a3, $a3, 8
	st.h	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	blt	$ra, $a1, .LBB13_178
.LBB13_179:                             # %.loopexit2175
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.hu	$a0, $a0, 2
	ori	$a1, $zero, 3801
	bltu	$a0, $a1, .LBB13_181
# %bb.180:                              #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	move	$s6, $s7
	move	$s7, $s2
	move	$s2, $t6
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	move	$s1, $t1
	pcaddu18i	$ra, %call36(qtm_update_model)
	jirl	$ra, $ra, 0
	move	$t1, $s1
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	move	$t6, $s2
	move	$s2, $s7
	move	$s7, $s6
	lu12i.w	$t7, 4
	ori	$ra, $zero, 1
	ori	$t8, $zero, 16
.LBB13_181:                             # %.preheader2186
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	mul.w	$a1, $a0, $a1
	div.wu	$a1, $a1, $s1
	add.d	$a1, $s3, $a1
	addi.d	$s6, $a1, -1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	div.wu	$a0, $a0, $s1
	add.d	$s3, $s3, $a0
	b	.LBB13_184
.LBB13_182:                             #   in Loop: Header=BB13_184 Depth=3
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t8, $s1
	sll.w	$a0, $a0, $a1
	or	$s8, $a0, $s8
	addi.d	$s4, $s4, 16
	addi.d	$s5, $s5, 2
.LBB13_183:                             #   in Loop: Header=BB13_184 Depth=3
	slli.d	$s3, $s3, 1
	slli.d	$a0, $s6, 1
	addi.d	$s6, $a0, 1
	bstrpick.d	$a0, $s8, 31, 31
	slli.d	$a1, $t6, 1
	or	$a0, $a1, $a0
	bstrpick.d	$t6, $a0, 15, 0
	slli.d	$s8, $s8, 1
	addi.d	$s4, $s4, -1
.LBB13_184:                             #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xor	$a0, $s3, $s6
	bstrpick.d	$a0, $a0, 15, 15
	beqz	$a0, .LBB13_188
# %bb.185:                              #   in Loop: Header=BB13_184 Depth=3
	bstrpick.d	$a0, $s6, 15, 0
	and	$a0, $a0, $t7
	bnez	$a0, .LBB13_195
# %bb.186:                              #   in Loop: Header=BB13_184 Depth=3
	bstrpick.d	$a0, $s3, 15, 0
	and	$a0, $a0, $t7
	beqz	$a0, .LBB13_195
# %bb.187:                              #   in Loop: Header=BB13_184 Depth=3
	xor	$t6, $t6, $t7
	bstrpick.d	$s3, $s3, 13, 0
	or	$s6, $s6, $t7
.LBB13_188:                             #   in Loop: Header=BB13_184 Depth=3
	andi	$s1, $s4, 255
	bltu	$t8, $s1, .LBB13_183
# %bb.189:                              #   in Loop: Header=BB13_184 Depth=3
	bltu	$s5, $t1, .LBB13_182
# %bb.190:                              #   in Loop: Header=BB13_184 Depth=3
	move	$s5, $t6
	ldptr.d	$a3, $s0, 2128
	ld.d	$a1, $s0, 48
	ld.w	$a2, $s0, 92
	beqz	$a3, .LBB13_192
# %bb.191:                              #   in Loop: Header=BB13_184 Depth=3
	ldptr.d	$a0, $s0, 2120
	jirl	$ra, $a3, 0
	b	.LBB13_193
.LBB13_192:                             #   in Loop: Header=BB13_184 Depth=3
	ld.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB13_193:                             #   in Loop: Header=BB13_184 Depth=3
	addi.w	$a1, $zero, -1
	ori	$t8, $zero, 16
	ori	$ra, $zero, 1
	lu12i.w	$t7, 4
	bge	$a1, $a0, .LBB13_365
# %bb.194:                              #   in Loop: Header=BB13_184 Depth=3
	move	$t6, $s5
	ld.d	$s5, $s0, 48
	st.d	$s5, $s0, 56
	add.d	$t1, $s5, $a0
	st.d	$t1, $s0, 64
	b	.LBB13_182
.LBB13_195:                             #   in Loop: Header=BB13_25 Depth=2
	move	$a1, $s7
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.bu	$s7, $a0, $a2
	ori	$a0, $zero, 3
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	beqz	$s7, .LBB13_289
# %bb.196:                              # %.lr.ph1532.preheader
                                        #   in Loop: Header=BB13_25 Depth=2
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	move	$s1, $zero
	b	.LBB13_199
.LBB13_197:                             #   in Loop: Header=BB13_199 Depth=3
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t8, $s2
	sll.w	$a0, $a0, $a1
	or	$s8, $a0, $s8
	addi.d	$s4, $s4, 16
	addi.d	$s5, $s5, 2
.LBB13_198:                             #   in Loop: Header=BB13_199 Depth=3
	andi	$a0, $s7, 255
	andi	$a1, $s4, 255
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	sll.w	$a1, $s1, $a0
	ori	$a2, $zero, 32
	sub.d	$a2, $a2, $a0
	srl.w	$a2, $s8, $a2
	or	$s1, $a2, $a1
	sll.w	$s8, $s8, $a0
	sub.d	$s7, $s7, $a0
	andi	$a1, $s7, 255
	sub.d	$s4, $s4, $a0
	beqz	$a1, .LBB13_288
.LBB13_199:                             # %.lr.ph1532
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$s2, $s4, 255
	bltu	$t8, $s2, .LBB13_198
# %bb.200:                              #   in Loop: Header=BB13_199 Depth=3
	bltu	$s5, $t1, .LBB13_197
# %bb.201:                              #   in Loop: Header=BB13_199 Depth=3
	move	$s5, $t6
	ldptr.d	$a3, $s0, 2128
	ld.d	$a1, $s0, 48
	ld.w	$a2, $s0, 92
	beqz	$a3, .LBB13_203
# %bb.202:                              #   in Loop: Header=BB13_199 Depth=3
	ldptr.d	$a0, $s0, 2120
	jirl	$ra, $a3, 0
	b	.LBB13_204
.LBB13_203:                             #   in Loop: Header=BB13_199 Depth=3
	ld.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB13_204:                             #   in Loop: Header=BB13_199 Depth=3
	addi.w	$a1, $zero, -1
	ori	$t8, $zero, 16
	ori	$ra, $zero, 1
	lu12i.w	$t7, 4
	bge	$a1, $a0, .LBB13_365
# %bb.205:                              #   in Loop: Header=BB13_199 Depth=3
	move	$t6, $s5
	ld.d	$s5, $s0, 48
	st.d	$s5, $s0, 56
	add.d	$t1, $s5, $a0
	st.d	$t1, $s0, 64
	b	.LBB13_197
.LBB13_206:                             # %vector.ph2119
                                        #   in Loop: Header=BB13_25 Depth=2
	st.d	$t6, $sp, 208                   # 8-byte Folded Spill
	bstrpick.d	$a3, $a1, 30, 4
	slli.d	$a3, $a3, 4
	addi.d	$a4, $a4, -30
	move	$a5, $a3
.LBB13_207:                             # %vector.body2122
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a6, $a4, 28
	ld.h	$a7, $a4, 24
	ld.h	$t0, $a4, 20
	ld.h	$t1, $a4, 16
	ld.h	$t2, $a4, 12
	ld.h	$t3, $a4, 8
	ld.h	$t4, $a4, 4
	ld.h	$t5, $a4, 0
	ld.h	$t6, $a4, -4
	vinsgr2vr.h	$vr0, $a6, 0
	vinsgr2vr.h	$vr0, $a7, 1
	vinsgr2vr.h	$vr0, $t0, 2
	vinsgr2vr.h	$vr0, $t1, 3
	vinsgr2vr.h	$vr0, $t2, 4
	vinsgr2vr.h	$vr0, $t3, 5
	vinsgr2vr.h	$vr0, $t4, 6
	vinsgr2vr.h	$vr0, $t5, 7
	ld.h	$a6, $a4, -8
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $t6, 0
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a7, $a4, -12
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a6, 1
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a6, $a4, -16
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a7, 2
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a7, $a4, -20
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a6, 3
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a6, $a4, -24
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a7, 4
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a7, $a4, -28
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a6, 5
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a6, $a4, -32
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a7, 6
	xvpermi.q	$xr0, $xr1, 2
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a6, 7
	xvpermi.q	$xr0, $xr1, 2
	xvaddi.hu	$xr0, $xr0, 8
	xvstelm.h	$xr0, $a4, 28, 0
	xvstelm.h	$xr0, $a4, 24, 1
	xvstelm.h	$xr0, $a4, 20, 2
	xvstelm.h	$xr0, $a4, 16, 3
	xvstelm.h	$xr0, $a4, 12, 4
	xvstelm.h	$xr0, $a4, 8, 5
	xvstelm.h	$xr0, $a4, 4, 6
	xvstelm.h	$xr0, $a4, 0, 7
	xvst	$xr0, $sp, 352
	ld.h	$a6, $sp, 368
	st.h	$a6, $a4, -4
	ld.h	$a6, $sp, 370
	st.h	$a6, $a4, -8
	ld.h	$a6, $sp, 372
	st.h	$a6, $a4, -12
	ld.h	$a6, $sp, 374
	st.h	$a6, $a4, -16
	ld.h	$a6, $sp, 376
	st.h	$a6, $a4, -20
	ld.h	$a6, $sp, 378
	st.h	$a6, $a4, -24
	ld.h	$a6, $sp, 380
	st.h	$a6, $a4, -28
	ld.h	$a6, $sp, 382
	st.h	$a6, $a4, -32
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, -64
	bnez	$a5, .LBB13_207
# %bb.208:                              # %middle.block2125
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.d	$t6, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 24                    # 8-byte Folded Reload
	beq	$a1, $a3, .LBB13_213
# %bb.209:                              # %vec.epilog.iter.check2130
                                        #   in Loop: Header=BB13_25 Depth=2
	andi	$a4, $a1, 8
	bnez	$a4, .LBB13_135
# %bb.210:                              #   in Loop: Header=BB13_25 Depth=2
	sub.d	$a4, $a2, $a3
.LBB13_211:                             # %vec.epilog.scalar.ph2128.preheader
                                        #   in Loop: Header=BB13_25 Depth=2
	addi.d	$a1, $a4, 1
	alsl.d	$a2, $a4, $a0, 2
	addi.d	$a2, $a2, -2
.LBB13_212:                             # %vec.epilog.scalar.ph2128
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a3, $a2, 0
	addi.d	$a3, $a3, 8
	st.h	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	blt	$ra, $a1, .LBB13_212
.LBB13_213:                             # %.loopexit2178
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	ld.hu	$a0, $a0, 2
	ori	$a1, $zero, 3801
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	bltu	$a0, $a1, .LBB13_215
# %bb.214:                              #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.d	$s1, $sp, 152                   # 8-byte Folded Spill
	move	$s1, $s2
	move	$s2, $t6
	move	$s7, $s6
	move	$s6, $t1
	pcaddu18i	$ra, %call36(qtm_update_model)
	jirl	$ra, $ra, 0
	move	$t1, $s6
	move	$s6, $s7
	move	$t6, $s2
	move	$s2, $s1
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	lu12i.w	$t7, 4
	ori	$ra, $zero, 1
	ori	$t8, $zero, 16
.LBB13_215:                             # %.preheader2191
                                        #   in Loop: Header=BB13_25 Depth=2
	addi.d	$a0, $s6, 1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	mul.w	$a1, $a0, $a1
	div.wu	$a1, $a1, $s1
	add.d	$a1, $s3, $a1
	addi.d	$s7, $a1, -1
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	div.wu	$a0, $a0, $s1
	add.d	$s3, $s3, $a0
	b	.LBB13_221
.LBB13_216:                             #   in Loop: Header=BB13_221 Depth=3
	ldptr.d	$a0, $s0, 2120
	jirl	$ra, $a3, 0
.LBB13_217:                             #   in Loop: Header=BB13_221 Depth=3
	addi.w	$a1, $zero, -1
	ori	$t8, $zero, 16
	ori	$ra, $zero, 1
	lu12i.w	$t7, 4
	bge	$a1, $a0, .LBB13_365
# %bb.218:                              #   in Loop: Header=BB13_221 Depth=3
	move	$t6, $s3
	ld.d	$s5, $s0, 48
	st.d	$s5, $s0, 56
	add.d	$t1, $s5, $a0
	st.d	$t1, $s0, 64
	move	$s3, $s6
.LBB13_219:                             #   in Loop: Header=BB13_221 Depth=3
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t8, $s1
	sll.w	$a0, $a0, $a1
	or	$s8, $a0, $s8
	addi.d	$s4, $s4, 16
	addi.d	$s5, $s5, 2
.LBB13_220:                             #   in Loop: Header=BB13_221 Depth=3
	slli.d	$s3, $s3, 1
	slli.d	$a0, $s7, 1
	addi.d	$s7, $a0, 1
	bstrpick.d	$a0, $s8, 31, 31
	slli.d	$a1, $t6, 1
	or	$a0, $a1, $a0
	bstrpick.d	$t6, $a0, 15, 0
	slli.d	$s8, $s8, 1
	addi.d	$s4, $s4, -1
.LBB13_221:                             #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xor	$a0, $s3, $s7
	bstrpick.d	$a0, $a0, 15, 15
	beqz	$a0, .LBB13_225
# %bb.222:                              #   in Loop: Header=BB13_221 Depth=3
	bstrpick.d	$s1, $s7, 15, 0
	and	$a0, $s1, $t7
	bstrpick.d	$s6, $s3, 15, 0
	bnez	$a0, .LBB13_229
# %bb.223:                              #   in Loop: Header=BB13_221 Depth=3
	and	$a0, $s6, $t7
	beqz	$a0, .LBB13_229
# %bb.224:                              #   in Loop: Header=BB13_221 Depth=3
	xor	$t6, $t6, $t7
	bstrpick.d	$s3, $s3, 13, 0
	or	$s7, $s7, $t7
.LBB13_225:                             #   in Loop: Header=BB13_221 Depth=3
	andi	$s1, $s4, 255
	bltu	$t8, $s1, .LBB13_220
# %bb.226:                              #   in Loop: Header=BB13_221 Depth=3
	bltu	$s5, $t1, .LBB13_219
# %bb.227:                              #   in Loop: Header=BB13_221 Depth=3
	move	$s6, $s3
	move	$s3, $t6
	ldptr.d	$a3, $s0, 2128
	ld.d	$a1, $s0, 48
	ld.w	$a2, $s0, 92
	bnez	$a3, .LBB13_216
# %bb.228:                              #   in Loop: Header=BB13_221 Depth=3
	ld.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	b	.LBB13_217
.LBB13_229:                             #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ldx.bu	$s7, $a0, $a1
	st.d	$t6, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	beqz	$s7, .LBB13_241
# %bb.230:                              # %.lr.ph1466.preheader
                                        #   in Loop: Header=BB13_25 Depth=2
	st.d	$s3, $sp, 168                   # 8-byte Folded Spill
	move	$s3, $zero
	b	.LBB13_233
.LBB13_231:                             #   in Loop: Header=BB13_233 Depth=3
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t8, $s2
	sll.w	$a0, $a0, $a1
	or	$s8, $a0, $s8
	addi.d	$s4, $s4, 16
	addi.d	$s5, $s5, 2
.LBB13_232:                             #   in Loop: Header=BB13_233 Depth=3
	andi	$a0, $s7, 255
	andi	$a1, $s4, 255
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	sll.w	$a1, $s3, $a0
	ori	$a2, $zero, 32
	sub.d	$a2, $a2, $a0
	srl.w	$a2, $s8, $a2
	or	$s3, $a2, $a1
	sll.w	$s8, $s8, $a0
	sub.d	$s7, $s7, $a0
	andi	$a1, $s7, 255
	sub.d	$s4, $s4, $a0
	beqz	$a1, .LBB13_240
.LBB13_233:                             # %.lr.ph1466
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$s2, $s4, 255
	bltu	$t8, $s2, .LBB13_232
# %bb.234:                              #   in Loop: Header=BB13_233 Depth=3
	bltu	$s5, $t1, .LBB13_231
# %bb.235:                              #   in Loop: Header=BB13_233 Depth=3
	ldptr.d	$a3, $s0, 2128
	ld.d	$a1, $s0, 48
	ld.w	$a2, $s0, 92
	beqz	$a3, .LBB13_237
# %bb.236:                              #   in Loop: Header=BB13_233 Depth=3
	ldptr.d	$a0, $s0, 2120
	jirl	$ra, $a3, 0
	b	.LBB13_238
.LBB13_237:                             #   in Loop: Header=BB13_233 Depth=3
	ld.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB13_238:                             #   in Loop: Header=BB13_233 Depth=3
	addi.w	$a1, $zero, -1
	ori	$t8, $zero, 16
	ori	$ra, $zero, 1
	lu12i.w	$t7, 4
	ld.d	$t6, $sp, 208                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB13_365
# %bb.239:                              #   in Loop: Header=BB13_233 Depth=3
	ld.d	$s5, $s0, 48
	st.d	$s5, $s0, 56
	add.d	$t1, $s5, $a0
	st.d	$t1, $s0, 64
	b	.LBB13_231
.LBB13_240:                             # %._crit_edge1467.loopexit
                                        #   in Loop: Header=BB13_25 Depth=2
	addi.d	$a0, $s3, 5
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	b	.LBB13_242
.LBB13_241:                             #   in Loop: Header=BB13_25 Depth=2
	ori	$a0, $zero, 5
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
.LBB13_242:                             # %._crit_edge1467
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $s0, 472
	ld.w	$a1, $s0, 468
	ld.hu	$a7, $a0, 2
	sub.w	$s7, $s1, $s6
	ori	$a2, $zero, 1
	ori	$a3, $zero, 2
	blt	$a1, $a3, .LBB13_247
# %bb.243:                              # %.lr.ph1475
                                        #   in Loop: Header=BB13_25 Depth=2
	sub.d	$a2, $t6, $s6
	addi.d	$a2, $a2, 1
	mul.d	$a2, $a2, $a7
	addi.w	$a2, $a2, -1
	bstrpick.d	$a3, $s7, 15, 0
	addi.d	$a3, $a3, 1
	div.wu	$a5, $a2, $a3
	addi.d	$a3, $a0, 6
	addi.d	$a4, $a1, -1
	ori	$a2, $zero, 1
	bstrpick.d	$a5, $a5, 15, 0
.LBB13_244:                             #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.hu	$a6, $a3, 0
	bgeu	$a5, $a6, .LBB13_247
# %bb.245:                              #   in Loop: Header=BB13_244 Depth=3
	addi.w	$a2, $a2, 1
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	bnez	$a4, .LBB13_244
# %bb.246:                              #   in Loop: Header=BB13_25 Depth=2
	move	$a2, $a1
.LBB13_247:                             # %iter.check2085
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 184                   # 8-byte Folded Reload
	ldx.bu	$a1, $a1, $a3
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	alsl.d	$a4, $a2, $a0, 2
	ld.hu	$a1, $a4, -4
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ld.hu	$a1, $a4, -2
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.hu	$a1, $a4, 2
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ori	$a1, $zero, 8
	bge	$a2, $a1, .LBB13_249
# %bb.248:                              #   in Loop: Header=BB13_25 Depth=2
	move	$a4, $a2
	b	.LBB13_259
.LBB13_249:                             # %vector.main.loop.iter.check2087
                                        #   in Loop: Header=BB13_25 Depth=2
	slt	$a1, $ra, $a2
	masknez	$a3, $ra, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a3
	move	$s6, $a7
	move	$s1, $t1
	bge	$a2, $t8, .LBB13_254
# %bb.250:                              #   in Loop: Header=BB13_25 Depth=2
	move	$a3, $zero
.LBB13_251:                             # %vec.epilog.ph2098
                                        #   in Loop: Header=BB13_25 Depth=2
	bstrpick.d	$a4, $a1, 30, 3
	slli.d	$a5, $a4, 3
	sub.d	$a4, $a2, $a5
	sub.d	$a6, $a3, $a5
	slli.d	$a2, $a2, 2
	slli.d	$a3, $a3, 2
	sub.d	$a2, $a2, $a3
	add.d	$a2, $a0, $a2
	addi.d	$a2, $a2, -14
.LBB13_252:                             # %vec.epilog.vector.body2104
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a3, $a2, 12
	ld.h	$a7, $a2, 8
	ld.h	$t0, $a2, 4
	ld.h	$t1, $a2, 0
	ld.h	$t2, $a2, -4
	ld.h	$t3, $a2, -8
	ld.h	$t4, $a2, -12
	ld.h	$t5, $a2, -16
	vinsgr2vr.h	$vr0, $a3, 0
	vinsgr2vr.h	$vr0, $a7, 1
	vinsgr2vr.h	$vr0, $t0, 2
	vinsgr2vr.h	$vr0, $t1, 3
	vinsgr2vr.h	$vr0, $t2, 4
	vinsgr2vr.h	$vr0, $t3, 5
	vinsgr2vr.h	$vr0, $t4, 6
	vinsgr2vr.h	$vr0, $t5, 7
	vaddi.hu	$vr0, $vr0, 8
	vstelm.h	$vr0, $a2, 12, 0
	vstelm.h	$vr0, $a2, 8, 1
	vstelm.h	$vr0, $a2, 4, 2
	vstelm.h	$vr0, $a2, 0, 3
	vstelm.h	$vr0, $a2, -4, 4
	vstelm.h	$vr0, $a2, -8, 5
	vstelm.h	$vr0, $a2, -12, 6
	vstelm.h	$vr0, $a2, -16, 7
	addi.d	$a6, $a6, 8
	addi.d	$a2, $a2, -32
	bnez	$a6, .LBB13_252
# %bb.253:                              # %vec.epilog.middle.block2108
                                        #   in Loop: Header=BB13_25 Depth=2
	move	$t1, $s1
	move	$a7, $s6
	bne	$a1, $a5, .LBB13_259
	b	.LBB13_261
.LBB13_254:                             # %vector.ph2088
                                        #   in Loop: Header=BB13_25 Depth=2
	bstrpick.d	$a3, $a1, 30, 4
	slli.d	$a3, $a3, 4
	addi.d	$a4, $a4, -30
	move	$a5, $a3
.LBB13_255:                             # %vector.body2091
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a6, $a4, 28
	ld.h	$a7, $a4, 24
	ld.h	$t0, $a4, 20
	ld.h	$t1, $a4, 16
	ld.h	$t2, $a4, 12
	ld.h	$t3, $a4, 8
	ld.h	$t4, $a4, 4
	ld.h	$t5, $a4, 0
	ld.h	$t6, $a4, -4
	vinsgr2vr.h	$vr0, $a6, 0
	vinsgr2vr.h	$vr0, $a7, 1
	vinsgr2vr.h	$vr0, $t0, 2
	vinsgr2vr.h	$vr0, $t1, 3
	vinsgr2vr.h	$vr0, $t2, 4
	vinsgr2vr.h	$vr0, $t3, 5
	vinsgr2vr.h	$vr0, $t4, 6
	vinsgr2vr.h	$vr0, $t5, 7
	ld.h	$a6, $a4, -8
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $t6, 0
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a7, $a4, -12
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a6, 1
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a6, $a4, -16
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a7, 2
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a7, $a4, -20
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a6, 3
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a6, $a4, -24
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a7, 4
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a7, $a4, -28
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a6, 5
	xvpermi.q	$xr0, $xr1, 2
	ld.h	$a6, $a4, -32
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a7, 6
	xvpermi.q	$xr0, $xr1, 2
	xvori.b	$xr1, $xr0, 0
	xvpermi.q	$xr1, $xr0, 1
	vinsgr2vr.h	$vr1, $a6, 7
	xvpermi.q	$xr0, $xr1, 2
	xvaddi.hu	$xr0, $xr0, 8
	xvstelm.h	$xr0, $a4, 28, 0
	xvstelm.h	$xr0, $a4, 24, 1
	xvstelm.h	$xr0, $a4, 20, 2
	xvstelm.h	$xr0, $a4, 16, 3
	xvstelm.h	$xr0, $a4, 12, 4
	xvstelm.h	$xr0, $a4, 8, 5
	xvstelm.h	$xr0, $a4, 4, 6
	xvstelm.h	$xr0, $a4, 0, 7
	xvst	$xr0, $sp, 320
	ld.h	$a6, $sp, 336
	st.h	$a6, $a4, -4
	ld.h	$a6, $sp, 338
	st.h	$a6, $a4, -8
	ld.h	$a6, $sp, 340
	st.h	$a6, $a4, -12
	ld.h	$a6, $sp, 342
	st.h	$a6, $a4, -16
	ld.h	$a6, $sp, 344
	st.h	$a6, $a4, -20
	ld.h	$a6, $sp, 346
	st.h	$a6, $a4, -24
	ld.h	$a6, $sp, 348
	st.h	$a6, $a4, -28
	ld.h	$a6, $sp, 350
	st.h	$a6, $a4, -32
	addi.d	$a5, $a5, -16
	addi.d	$a4, $a4, -64
	bnez	$a5, .LBB13_255
# %bb.256:                              # %middle.block2094
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.d	$t6, $sp, 208                   # 8-byte Folded Reload
	move	$t1, $s1
	move	$a7, $s6
	beq	$a1, $a3, .LBB13_261
# %bb.257:                              # %vec.epilog.iter.check2099
                                        #   in Loop: Header=BB13_25 Depth=2
	andi	$a4, $a1, 8
	bnez	$a4, .LBB13_251
# %bb.258:                              #   in Loop: Header=BB13_25 Depth=2
	sub.d	$a4, $a2, $a3
.LBB13_259:                             # %vec.epilog.scalar.ph2097.preheader
                                        #   in Loop: Header=BB13_25 Depth=2
	addi.d	$a1, $a4, 1
	alsl.d	$a2, $a4, $a0, 2
	addi.d	$a2, $a2, -2
.LBB13_260:                             # %vec.epilog.scalar.ph2097
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.h	$a3, $a2, 0
	addi.d	$a3, $a3, 8
	st.h	$a3, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, -4
	blt	$ra, $a1, .LBB13_260
.LBB13_261:                             # %.loopexit2177
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.hu	$a0, $a0, 2
	ori	$a1, $zero, 3801
	bltu	$a0, $a1, .LBB13_263
# %bb.262:                              #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$s1, $t1
	move	$s6, $a7
	pcaddu18i	$ra, %call36(qtm_update_model)
	jirl	$ra, $ra, 0
	move	$a7, $s6
	move	$t1, $s1
	ld.d	$t6, $sp, 208                   # 8-byte Folded Reload
	lu12i.w	$t7, 4
	ori	$ra, $zero, 1
	ori	$t8, $zero, 16
.LBB13_263:                             # %.preheader2190
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	add.w	$a0, $a0, $a1
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	addi.d	$a0, $s7, 1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	mul.w	$a1, $a0, $a1
	div.wu	$a1, $a1, $a7
	add.d	$a1, $s3, $a1
	addi.d	$s6, $a1, -1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	div.wu	$a0, $a0, $a7
	add.d	$s3, $s3, $a0
	b	.LBB13_269
.LBB13_264:                             #   in Loop: Header=BB13_269 Depth=3
	ld.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB13_265:                             #   in Loop: Header=BB13_269 Depth=3
	addi.w	$a1, $zero, -1
	ori	$t8, $zero, 16
	ori	$ra, $zero, 1
	lu12i.w	$t7, 4
	bge	$a1, $a0, .LBB13_365
# %bb.266:                              #   in Loop: Header=BB13_269 Depth=3
	move	$t6, $s5
	ld.d	$s5, $s0, 48
	st.d	$s5, $s0, 56
	add.d	$t1, $s5, $a0
	st.d	$t1, $s0, 64
.LBB13_267:                             #   in Loop: Header=BB13_269 Depth=3
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t8, $s1
	sll.w	$a0, $a0, $a1
	or	$s8, $a0, $s8
	addi.d	$s4, $s4, 16
	addi.d	$s5, $s5, 2
.LBB13_268:                             #   in Loop: Header=BB13_269 Depth=3
	slli.d	$s3, $s3, 1
	slli.d	$a0, $s6, 1
	addi.d	$s6, $a0, 1
	bstrpick.d	$a0, $s8, 31, 31
	slli.d	$a1, $t6, 1
	or	$a0, $a1, $a0
	bstrpick.d	$t6, $a0, 15, 0
	slli.d	$s8, $s8, 1
	addi.d	$s4, $s4, -1
.LBB13_269:                             #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xor	$a0, $s3, $s6
	bstrpick.d	$a0, $a0, 15, 15
	beqz	$a0, .LBB13_273
# %bb.270:                              #   in Loop: Header=BB13_269 Depth=3
	bstrpick.d	$a0, $s6, 15, 0
	and	$a0, $a0, $t7
	bnez	$a0, .LBB13_277
# %bb.271:                              #   in Loop: Header=BB13_269 Depth=3
	bstrpick.d	$a0, $s3, 15, 0
	and	$a0, $a0, $t7
	beqz	$a0, .LBB13_277
# %bb.272:                              #   in Loop: Header=BB13_269 Depth=3
	xor	$t6, $t6, $t7
	bstrpick.d	$s3, $s3, 13, 0
	or	$s6, $s6, $t7
.LBB13_273:                             #   in Loop: Header=BB13_269 Depth=3
	andi	$s1, $s4, 255
	bltu	$t8, $s1, .LBB13_268
# %bb.274:                              #   in Loop: Header=BB13_269 Depth=3
	bltu	$s5, $t1, .LBB13_267
# %bb.275:                              #   in Loop: Header=BB13_269 Depth=3
	move	$s5, $t6
	ldptr.d	$a3, $s0, 2128
	ld.d	$a1, $s0, 48
	ld.w	$a2, $s0, 92
	beqz	$a3, .LBB13_264
# %bb.276:                              #   in Loop: Header=BB13_269 Depth=3
	ldptr.d	$a0, $s0, 2120
	jirl	$ra, $a3, 0
	b	.LBB13_265
.LBB13_277:                             #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ldx.bu	$s7, $a0, $a2
	beqz	$s7, .LBB13_289
# %bb.278:                              # %.lr.ph1488.preheader
                                        #   in Loop: Header=BB13_25 Depth=2
	move	$s1, $zero
	b	.LBB13_284
.LBB13_279:                             #   in Loop: Header=BB13_284 Depth=3
	ldptr.d	$a0, $s0, 2120
	jirl	$ra, $a3, 0
.LBB13_280:                             #   in Loop: Header=BB13_284 Depth=3
	addi.w	$a1, $zero, -1
	ori	$t8, $zero, 16
	ori	$ra, $zero, 1
	lu12i.w	$t7, 4
	bge	$a1, $a0, .LBB13_365
# %bb.281:                              #   in Loop: Header=BB13_284 Depth=3
	move	$t6, $s5
	ld.d	$s5, $s0, 48
	st.d	$s5, $s0, 56
	add.d	$t1, $s5, $a0
	st.d	$t1, $s0, 64
.LBB13_282:                             #   in Loop: Header=BB13_284 Depth=3
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t8, $s2
	sll.w	$a0, $a0, $a1
	or	$s8, $a0, $s8
	addi.d	$s4, $s4, 16
	addi.d	$s5, $s5, 2
.LBB13_283:                             #   in Loop: Header=BB13_284 Depth=3
	andi	$a0, $s7, 255
	andi	$a1, $s4, 255
	sltu	$a2, $a1, $a0
	masknez	$a0, $a0, $a2
	maskeqz	$a1, $a1, $a2
	or	$a0, $a1, $a0
	sll.w	$a1, $s1, $a0
	ori	$a2, $zero, 32
	sub.d	$a2, $a2, $a0
	srl.w	$a2, $s8, $a2
	or	$s1, $a2, $a1
	sll.w	$s8, $s8, $a0
	sub.d	$s7, $s7, $a0
	andi	$a1, $s7, 255
	sub.d	$s4, $s4, $a0
	beqz	$a1, .LBB13_288
.LBB13_284:                             # %.lr.ph1488
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$s2, $s4, 255
	bltu	$t8, $s2, .LBB13_283
# %bb.285:                              #   in Loop: Header=BB13_284 Depth=3
	bltu	$s5, $t1, .LBB13_282
# %bb.286:                              #   in Loop: Header=BB13_284 Depth=3
	move	$s5, $t6
	ldptr.d	$a3, $s0, 2128
	ld.d	$a1, $s0, 48
	ld.w	$a2, $s0, 92
	bnez	$a3, .LBB13_279
# %bb.287:                              #   in Loop: Header=BB13_284 Depth=3
	ld.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	b	.LBB13_280
.LBB13_288:                             #   in Loop: Header=BB13_25 Depth=2
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	b	.LBB13_290
.LBB13_289:                             #   in Loop: Header=BB13_25 Depth=2
	move	$s1, $zero
	move	$s7, $a1
.LBB13_290:                             # %._crit_edge1533
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a0, $s1
	addi.w	$a2, $a0, 1
	bstrpick.d	$a3, $s2, 31, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a3
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	bgeu	$s2, $a2, .LBB13_299
# %bb.291:                              #   in Loop: Header=BB13_25 Depth=2
	ld.w	$a1, $s0, 24
	sub.w	$a4, $a2, $s2
	blt	$a1, $a4, .LBB13_370
# %bb.292:                              #   in Loop: Header=BB13_25 Depth=2
	sub.d	$a1, $a1, $a4
	bstrpick.d	$a7, $a1, 31, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	add.d	$a2, $a1, $a7
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	bge	$a4, $a1, .LBB13_313
# %bb.293:                              #   in Loop: Header=BB13_25 Depth=2
	sub.w	$a1, $a1, $a4
	blt	$a4, $ra, .LBB13_312
# %bb.294:                              # %.lr.ph1548.preheader
                                        #   in Loop: Header=BB13_25 Depth=2
	ori	$a6, $zero, 64
	bltu	$a4, $a6, .LBB13_309
# %bb.295:                              # %.lr.ph1548.preheader
                                        #   in Loop: Header=BB13_25 Depth=2
	sub.d	$a5, $a3, $a7
	bltu	$a5, $a6, .LBB13_309
# %bb.296:                              # %vector.ph1959
                                        #   in Loop: Header=BB13_25 Depth=2
	bstrpick.d	$a5, $a4, 30, 6
	slli.d	$a6, $a5, 6
	sub.d	$a5, $a4, $a6
	add.d	$a0, $a0, $a6
	add.d	$a2, $a2, $a6
	ld.d	$t0, $sp, 40                    # 8-byte Folded Reload
	add.d	$a7, $t0, $a7
	add.d	$a3, $t0, $a3
	move	$t0, $a6
.LBB13_297:                             # %vector.body1963
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $a7, -32
	xvld	$xr1, $a7, 0
	xvst	$xr0, $a3, -32
	xvst	$xr1, $a3, 0
	addi.d	$t0, $t0, -64
	addi.d	$a7, $a7, 64
	addi.d	$a3, $a3, 64
	bnez	$t0, .LBB13_297
# %bb.298:                              # %middle.block1970
                                        #   in Loop: Header=BB13_25 Depth=2
	bne	$a6, $a4, .LBB13_310
	b	.LBB13_312
.LBB13_299:                             #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	blt	$a1, $ra, .LBB13_337
# %bb.300:                              # %iter.check1980
                                        #   in Loop: Header=BB13_25 Depth=2
	bstrpick.d	$a4, $a2, 31, 0
	move	$a5, $a1
	sub.d	$a1, $a0, $a4
	bltu	$a5, $t8, .LBB13_304
# %bb.301:                              # %iter.check1980
                                        #   in Loop: Header=BB13_25 Depth=2
	ori	$a5, $zero, 64
	bltu	$a2, $a5, .LBB13_304
# %bb.302:                              # %vector.main.loop.iter.check1982
                                        #   in Loop: Header=BB13_25 Depth=2
	sub.d	$a2, $zero, $a4
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	bgeu	$a4, $a5, .LBB13_305
# %bb.303:                              #   in Loop: Header=BB13_25 Depth=2
	move	$a5, $zero
	b	.LBB13_327
.LBB13_304:                             #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	b	.LBB13_331
.LBB13_305:                             # %vector.ph1983
                                        #   in Loop: Header=BB13_25 Depth=2
	bstrpick.d	$a4, $a4, 30, 6
	slli.d	$a5, $a4, 6
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	add.d	$a4, $a4, $a3
	move	$a6, $a5
.LBB13_306:                             # %vector.body1986
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a7, $a4, $a2
	xvld	$xr0, $a7, -32
	xvldx	$xr1, $a4, $a2
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a6, $a6, -64
	addi.d	$a4, $a4, 64
	bnez	$a6, .LBB13_306
# %bb.307:                              # %middle.block1993
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	bne	$a5, $a4, .LBB13_326
# %bb.308:                              #   in Loop: Header=BB13_25 Depth=2
	move	$a1, $a4
	b	.LBB13_337
.LBB13_309:                             #   in Loop: Header=BB13_25 Depth=2
	move	$a5, $a4
.LBB13_310:                             # %.lr.ph1548.preheader2184
                                        #   in Loop: Header=BB13_25 Depth=2
	addi.d	$a3, $a5, 1
.LBB13_311:                             # %.lr.ph1548
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$a4, $a2, 0
	addi.d	$a2, $a2, 1
	st.b	$a4, $a0, 0
	addi.w	$a3, $a3, -1
	addi.d	$a0, $a0, 1
	bltu	$ra, $a3, .LBB13_311
.LBB13_312:                             #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
.LBB13_313:                             # %.loopexit1089
                                        #   in Loop: Header=BB13_25 Depth=2
	blt	$a1, $ra, .LBB13_336
# %bb.314:                              # %iter.check1920
                                        #   in Loop: Header=BB13_25 Depth=2
	bltu	$a1, $t8, .LBB13_318
# %bb.315:                              # %iter.check1920
                                        #   in Loop: Header=BB13_25 Depth=2
	sub.d	$a3, $a0, $a2
	ori	$a4, $zero, 64
	bltu	$a3, $a4, .LBB13_318
# %bb.316:                              # %vector.main.loop.iter.check1922
                                        #   in Loop: Header=BB13_25 Depth=2
	ori	$a3, $zero, 64
	bgeu	$a1, $a3, .LBB13_319
# %bb.317:                              #   in Loop: Header=BB13_25 Depth=2
	move	$a6, $zero
	b	.LBB13_323
.LBB13_318:                             #   in Loop: Header=BB13_25 Depth=2
	move	$a5, $a1
	move	$a3, $a0
	move	$a4, $a2
	b	.LBB13_334
.LBB13_319:                             # %vector.ph1923
                                        #   in Loop: Header=BB13_25 Depth=2
	bstrpick.d	$a3, $a1, 30, 6
	slli.d	$a6, $a3, 6
	addi.d	$a3, $a2, 32
	addi.d	$a4, $a0, 32
	move	$a5, $a6
.LBB13_320:                             # %vector.body1926
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $a3, -32
	xvld	$xr1, $a3, 0
	xvst	$xr0, $a4, -32
	xvst	$xr1, $a4, 0
	addi.d	$a5, $a5, -64
	addi.d	$a3, $a3, 64
	addi.d	$a4, $a4, 64
	bnez	$a5, .LBB13_320
# %bb.321:                              # %middle.block1931
                                        #   in Loop: Header=BB13_25 Depth=2
	beq	$a6, $a1, .LBB13_336
# %bb.322:                              # %vec.epilog.iter.check1936
                                        #   in Loop: Header=BB13_25 Depth=2
	andi	$a3, $a1, 48
	beqz	$a3, .LBB13_333
.LBB13_323:                             # %vec.epilog.ph1935
                                        #   in Loop: Header=BB13_25 Depth=2
	bstrpick.d	$a4, $a1, 30, 4
	slli.d	$a7, $a4, 4
	sub.d	$a5, $a1, $a7
	alsl.d	$a3, $a4, $a0, 4
	alsl.d	$a4, $a4, $a2, 4
	sub.d	$t0, $a6, $a7
	add.d	$a2, $a2, $a6
	add.d	$a0, $a0, $a6
.LBB13_324:                             # %vec.epilog.vector.body1941
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	addi.d	$t0, $t0, 16
	addi.d	$a2, $a2, 16
	addi.d	$a0, $a0, 16
	bnez	$t0, .LBB13_324
# %bb.325:                              # %vec.epilog.middle.block1947
                                        #   in Loop: Header=BB13_25 Depth=2
	bne	$a7, $a1, .LBB13_334
	b	.LBB13_336
.LBB13_326:                             # %vec.epilog.iter.check1998
                                        #   in Loop: Header=BB13_25 Depth=2
	andi	$a4, $a4, 48
	beqz	$a4, .LBB13_330
.LBB13_327:                             # %vec.epilog.ph1997
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a4, $sp, 208                   # 8-byte Folded Reload
	bstrpick.d	$a7, $a4, 30, 4
	slli.d	$a6, $a7, 4
	sub.d	$a4, $a4, $a6
	alsl.d	$a0, $a7, $a0, 4
	alsl.d	$a1, $a7, $a1, 4
	sub.d	$a7, $a5, $a6
	add.d	$a3, $a5, $a3
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	add.d	$a3, $a5, $a3
.LBB13_328:                             # %vec.epilog.vector.body2004
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vldx	$vr0, $a3, $a2
	vst	$vr0, $a3, 0
	addi.d	$a7, $a7, 16
	addi.d	$a3, $a3, 16
	bnez	$a7, .LBB13_328
# %bb.329:                              # %vec.epilog.middle.block2010
                                        #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	bne	$a6, $a2, .LBB13_331
	b	.LBB13_336
.LBB13_330:                             #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a2, $sp, 208                   # 8-byte Folded Reload
	sub.d	$a4, $a2, $a5
	add.d	$a0, $a0, $a5
	add.d	$a1, $a1, $a5
.LBB13_331:                             # %.lr.ph1543.preheader
                                        #   in Loop: Header=BB13_25 Depth=2
	addi.d	$a2, $a4, 1
.LBB13_332:                             # %.lr.ph1543
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$a3, $a1, 0
	addi.d	$a1, $a1, 1
	addi.d	$a4, $a0, 1
	addi.w	$a2, $a2, -1
	st.b	$a3, $a0, 0
	move	$a0, $a4
	bltu	$ra, $a2, .LBB13_332
	b	.LBB13_336
.LBB13_333:                             #   in Loop: Header=BB13_25 Depth=2
	sub.d	$a5, $a1, $a6
	add.d	$a3, $a0, $a6
	add.d	$a4, $a2, $a6
.LBB13_334:                             # %.lr.ph1554.preheader
                                        #   in Loop: Header=BB13_25 Depth=2
	addi.d	$a0, $a5, 1
.LBB13_335:                             # %.lr.ph1554
                                        #   Parent Loop BB13_11 Depth=1
                                        #     Parent Loop BB13_25 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.b	$a1, $a4, 0
	addi.d	$a4, $a4, 1
	addi.d	$a2, $a3, 1
	addi.w	$a0, $a0, -1
	st.b	$a1, $a3, 0
	move	$a3, $a2
	bltu	$ra, $a0, .LBB13_335
.LBB13_336:                             #   in Loop: Header=BB13_25 Depth=2
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
.LBB13_337:                             # %.loopexit
                                        #   in Loop: Header=BB13_25 Depth=2
	add.w	$s2, $a1, $s2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bltu	$s2, $a0, .LBB13_25
.LBB13_338:                             # %._crit_edge1572
                                        #   in Loop: Header=BB13_11 Depth=1
	bstrpick.d	$a0, $s2, 31, 0
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	sub.w	$a1, $s2, $s7
	bstrpick.d	$a2, $a1, 31, 15
	st.d	$a0, $s0, 80
	beqz	$a2, .LBB13_351
# %bb.339:                              #   in Loop: Header=BB13_11 Depth=1
	lu12i.w	$a0, 8
	bne	$a1, $a0, .LBB13_369
# %bb.340:                              #   in Loop: Header=BB13_11 Depth=1
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	move	$s7, $zero
	andi	$a0, $s4, 7
	sll.w	$s8, $s8, $a0
	andi	$s4, $s4, 248
	ori	$s1, $zero, 8
	st.d	$t6, $sp, 208                   # 8-byte Folded Spill
	b	.LBB13_343
	.p2align	4, , 16
.LBB13_341:                             #   in Loop: Header=BB13_343 Depth=2
	ld.hu	$a0, $s5, 0
	revb.d	$a0, $a0
	srli.d	$a0, $a0, 48
	sub.d	$a1, $t8, $s2
	sll.w	$a0, $a0, $a1
	or	$s8, $a0, $s8
	addi.d	$s4, $s4, 16
	addi.d	$s5, $s5, 2
	andi	$s2, $s4, 255
.LBB13_342:                             #   in Loop: Header=BB13_343 Depth=2
	sltu	$a0, $s1, $s2
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s1, $a0
	or	$a1, $a0, $a1
	sll.w	$a0, $s7, $a1
	ori	$a2, $zero, 32
	sub.d	$a2, $a2, $a1
	srl.w	$a2, $s8, $a2
	or	$a0, $a2, $a0
	sll.w	$s8, $s8, $a1
	sub.d	$a2, $s1, $a1
	andi	$s1, $a2, 255
	sub.d	$s4, $s4, $a1
	move	$s7, $a0
	beqz	$s1, .LBB13_347
.LBB13_343:                             #   Parent Loop BB13_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	andi	$s2, $s4, 255
	bltu	$t8, $s2, .LBB13_342
# %bb.344:                              #   in Loop: Header=BB13_343 Depth=2
	bltu	$s5, $t1, .LBB13_341
# %bb.345:                              #   in Loop: Header=BB13_343 Depth=2
	ldptr.d	$a3, $s0, 2128
	ld.d	$a1, $s0, 48
	ld.w	$a2, $s0, 92
	beqz	$a3, .LBB13_348
# %bb.346:                              #   in Loop: Header=BB13_343 Depth=2
	ldptr.d	$a0, $s0, 2120
	jirl	$ra, $a3, 0
	b	.LBB13_349
	.p2align	4, , 16
.LBB13_347:                             #   in Loop: Header=BB13_343 Depth=2
	move	$s7, $zero
	ori	$s1, $zero, 8
	ori	$a1, $zero, 255
	bne	$a0, $a1, .LBB13_343
	b	.LBB13_352
.LBB13_348:                             #   in Loop: Header=BB13_343 Depth=2
	ld.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
.LBB13_349:                             #   in Loop: Header=BB13_343 Depth=2
	addi.w	$a1, $zero, -1
	ori	$t8, $zero, 16
	ori	$ra, $zero, 1
	lu12i.w	$t7, 4
	ld.d	$t6, $sp, 208                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB13_365
# %bb.350:                              #   in Loop: Header=BB13_343 Depth=2
	ld.d	$s5, $s0, 48
	st.d	$s5, $s0, 56
	add.d	$t1, $s5, $a0
	st.d	$t1, $s0, 64
	b	.LBB13_341
.LBB13_351:                             # %._crit_edge1572._crit_edge
                                        #   in Loop: Header=BB13_11 Depth=1
	ld.d	$a1, $s0, 72
	b	.LBB13_357
.LBB13_352:                             #   in Loop: Header=BB13_11 Depth=1
	ld.w	$a2, $s0, 24
	ld.d	$a0, $s0, 80
	ld.d	$a1, $s0, 72
	st.b	$zero, $s0, 42
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	bne	$s2, $a2, .LBB13_356
# %bb.353:                              #   in Loop: Header=BB13_11 Depth=1
	ld.bu	$a3, $s0, 8
	sub.w	$a2, $a0, $a1
	ld.d	$s7, $sp, 216                   # 8-byte Folded Reload
	beqz	$a3, .LBB13_355
# %bb.354:                              #   in Loop: Header=BB13_11 Depth=1
	ld.w	$a0, $s0, 4
	move	$s1, $t1
	move	$s2, $a2
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a2, $s2
	move	$t1, $s1
	ld.d	$t6, $sp, 208                   # 8-byte Folded Reload
	lu12i.w	$t7, 4
	ori	$ra, $zero, 1
	ori	$t8, $zero, 16
	bne	$a0, $s2, .LBB13_365
.LBB13_355:                             #   in Loop: Header=BB13_11 Depth=1
	move	$s2, $zero
	move	$a3, $s7
	move	$s7, $zero
	sub.d	$a3, $a3, $a2
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $s0, 72
	st.d	$a0, $s0, 80
	move	$a1, $a0
	b	.LBB13_358
.LBB13_356:                             #   in Loop: Header=BB13_11 Depth=1
	move	$s7, $s2
.LBB13_357:                             #   in Loop: Header=BB13_11 Depth=1
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
.LBB13_358:                             #   in Loop: Header=BB13_11 Depth=1
	sub.d	$a2, $a0, $a1
	st.d	$a3, $sp, 216                   # 8-byte Folded Spill
	blt	$a2, $a3, .LBB13_11
.LBB13_359:                             # %._crit_edge1598
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	beqz	$a2, .LBB13_364
# %bb.360:
	ld.bu	$a0, $s0, 8
	addi.w	$s1, $a2, 0
	beqz	$a0, .LBB13_363
# %bb.361:
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	move	$s2, $t1
	move	$s7, $t6
	ld.w	$a0, $s0, 4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB13_365
# %bb.362:                              # %._crit_edge1730
	ld.d	$a1, $s0, 72
	move	$t6, $s7
	move	$t1, $s2
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
.LBB13_363:
	add.d	$a0, $a1, $s1
	st.d	$a0, $s0, 72
.LBB13_364:
	move	$a0, $zero
	st.d	$s5, $s0, 56
	st.d	$t1, $s0, 64
	st.w	$s8, $s0, 88
	st.b	$s4, $s0, 96
	st.w	$s2, $s0, 28
	st.w	$s7, $s0, 32
	st.h	$s6, $s0, 36
	st.h	$s3, $s0, 38
	st.h	$t6, $s0, 40
	b	.LBB13_368
.LBB13_365:
	addi.w	$a0, $zero, -123
.LBB13_366:
	move	$a1, $a0
	lu32i.d	$a1, 0
	st.w	$a1, $s0, 44
	b	.LBB13_368
.LBB13_367:
	move	$a0, $zero
.LBB13_368:
	addi.d	$sp, $fp, -512
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
.LBB13_369:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	b	.LBB13_371
.LBB13_370:
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
.LBB13_371:
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB13_372:
	addi.w	$a0, $zero, -124
	b	.LBB13_366
.Lfunc_end13:
	.size	qtm_decompress, .Lfunc_end13-qtm_decompress
                                        # -- End function
	.p2align	5                               # -- Begin function qtm_update_model
	.type	qtm_update_model,@function
qtm_update_model:                       # @qtm_update_model
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
	addi.d	$fp, $sp, 160
	bstrins.d	$sp, $zero, 4, 0
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
	ld.hu	$a4, $a2, 2
	ori	$a3, $zero, 16
	bgeu	$a1, $a3, .LBB14_7
# %bb.6:
	move	$a3, $zero
	b	.LBB14_10
.LBB14_7:                               # %vector.ph
	bstrpick.d	$a3, $a1, 30, 4
	slli.d	$a3, $a3, 4
	vinsgr2vr.h	$vr0, $a4, 0
	xvpermi.d	$xr0, $xr0, 68
	xvbsll.v	$xr1, $xr0, 14
	addi.d	$a5, $a2, 34
	move	$a6, $a3
	.p2align	4, , 16
.LBB14_8:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.h	$s2, $a5, -28
	ld.h	$s3, $a5, -24
	ld.h	$s4, $a5, -20
	ld.h	$s1, $a5, -16
	ld.h	$s0, $a5, -12
	ld.h	$t8, $a5, -8
	ld.h	$t7, $a5, -4
	ld.h	$t6, $a5, 0
	ld.h	$t5, $a5, 4
	ld.h	$t4, $a5, 8
	ld.h	$t3, $a5, 12
	ld.h	$t2, $a5, 16
	ld.h	$a7, $a5, 28
	ld.h	$t0, $a5, 24
	ld.h	$t1, $a5, 20
	ld.hu	$a4, $a5, 32
	st.h	$a7, $sp, 60
	st.h	$t0, $sp, 58
	st.h	$t1, $sp, 56
	st.h	$t2, $sp, 54
	st.h	$t3, $sp, 52
	st.h	$t4, $sp, 50
	st.h	$t5, $sp, 48
	st.h	$t6, $sp, 46
	st.h	$t7, $sp, 44
	st.h	$t8, $sp, 42
	st.h	$s0, $sp, 40
	st.h	$s1, $sp, 38
	st.h	$s4, $sp, 36
	st.h	$s3, $sp, 34
	st.h	$s2, $sp, 32
	xvld	$xr0, $sp, 32
	xvst	$xr1, $sp, 0
	ld.h	$s5, $sp, 30
	vinsgr2vr.h	$vr1, $s5, 0
	vinsgr2vr.h	$vr1, $s2, 1
	vinsgr2vr.h	$vr1, $s3, 2
	vinsgr2vr.h	$vr1, $s4, 3
	vinsgr2vr.h	$vr1, $s1, 4
	vinsgr2vr.h	$vr1, $s0, 5
	vinsgr2vr.h	$vr1, $t8, 6
	vinsgr2vr.h	$vr1, $t7, 7
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.h	$vr2, $t6, 0
	xvpermi.q	$xr1, $xr2, 2
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.h	$vr2, $t5, 1
	xvpermi.q	$xr1, $xr2, 2
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.h	$vr2, $t4, 2
	xvpermi.q	$xr1, $xr2, 2
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.h	$vr2, $t3, 3
	xvpermi.q	$xr1, $xr2, 2
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.h	$vr2, $t2, 4
	xvpermi.q	$xr1, $xr2, 2
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.h	$vr2, $t1, 5
	xvpermi.q	$xr1, $xr2, 2
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.h	$vr2, $t0, 6
	xvpermi.q	$xr1, $xr2, 2
	xvori.b	$xr2, $xr0, 0
	xvpermi.q	$xr2, $xr0, 1
	vinsgr2vr.h	$vr2, $a4, 7
	xvpermi.q	$xr0, $xr2, 2
	xvori.b	$xr2, $xr1, 0
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.h	$vr2, $a7, 7
	xvpermi.q	$xr1, $xr2, 2
	xvsub.h	$xr1, $xr1, $xr0
	xvaddi.hu	$xr1, $xr1, 1
	xvsrli.h	$xr1, $xr1, 1
	xvstelm.h	$xr1, $a5, -32, 0
	xvstelm.h	$xr1, $a5, -28, 1
	xvstelm.h	$xr1, $a5, -24, 2
	xvstelm.h	$xr1, $a5, -20, 3
	xvstelm.h	$xr1, $a5, -16, 4
	xvstelm.h	$xr1, $a5, -12, 5
	xvstelm.h	$xr1, $a5, -8, 6
	xvstelm.h	$xr1, $a5, -4, 7
	xvst	$xr1, $sp, 64
	ld.h	$a7, $sp, 80
	st.h	$a7, $a5, 0
	ld.h	$a7, $sp, 82
	st.h	$a7, $a5, 4
	ld.h	$a7, $sp, 84
	st.h	$a7, $a5, 8
	ld.h	$a7, $sp, 86
	st.h	$a7, $a5, 12
	ld.h	$a7, $sp, 88
	st.h	$a7, $a5, 16
	ld.h	$a7, $sp, 90
	st.h	$a7, $a5, 20
	ld.h	$a7, $sp, 92
	st.h	$a7, $a5, 24
	ld.h	$a7, $sp, 94
	st.h	$a7, $a5, 28
	addi.d	$a6, $a6, -16
	addi.d	$a5, $a5, 64
	xvori.b	$xr1, $xr0, 0
	bnez	$a6, .LBB14_8
# %bb.9:                                # %middle.block
	beq	$a3, $a1, .LBB14_12
.LBB14_10:                              # %scalar.ph.preheader
	alsl.d	$a2, $a3, $a2, 2
	addi.d	$a2, $a2, 6
	sub.d	$a3, $a1, $a3
	.p2align	4, , 16
.LBB14_11:                              # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.hu	$a5, $a2, 0
	sub.d	$a4, $a4, $a5
	addi.d	$a4, $a4, 1
	bstrpick.d	$a4, $a4, 15, 1
	st.h	$a4, $a2, -4
	addi.d	$a3, $a3, -1
	addi.d	$a2, $a2, 4
	move	$a4, $a5
	bnez	$a3, .LBB14_11
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
	addi.d	$sp, $fp, -160
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
	.p2align	5                               # -- Begin function mszip_make_decode_table
	.type	mszip_make_decode_table,@function
mszip_make_decode_table:                # @mszip_make_decode_table
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
	move	$a5, $zero
	ori	$t0, $zero, 1
	sll.w	$a7, $t0, $a1
	bstrpick.d	$t5, $a7, 31, 1
	andi	$t1, $a1, 255
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$a4, $a0, 15, 0
	addi.w	$t2, $zero, -1
	ori	$t3, $zero, 0
	ori	$t4, $zero, 0
	lu32i.d	$t4, -1
	vreplgr2vr.d	$vr0, $t4
	lu32i.d	$t3, 1
	ori	$t4, $zero, 18
	vrepli.b	$vr1, 0
	ori	$t8, $zero, 1
	st.d	$t5, $sp, 8                     # 8-byte Folded Spill
	b	.LBB16_2
	.p2align	4, , 16
.LBB16_1:                               #   in Loop: Header=BB16_2 Depth=1
	bstrpick.d	$t5, $t5, 31, 1
	addi.w	$t8, $t6, 1
	addi.w	$t2, $t2, -1
	bgeu	$t6, $t1, .LBB16_15
.LBB16_2:                               # %.preheader141
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_4 Depth 2
                                        #       Child Loop BB16_6 Depth 3
                                        #       Child Loop BB16_13 Depth 3
                                        #       Child Loop BB16_11 Depth 3
	move	$t7, $zero
	move	$t6, $t8
	sll.w	$t8, $t0, $t8
	bstrpick.d	$t8, $t8, 15, 0
	sub.d	$fp, $a1, $t6
	addi.d	$s0, $t5, -1
	bstrpick.d	$s0, $s0, 31, 0
	mul.d	$s0, $t8, $s0
	srli.d	$s1, $s0, 32
	sltu	$s1, $zero, $s1
	bstrpick.d	$s2, $t5, 14, 2
	slli.w	$s2, $s2, 2
	mul.d	$s3, $s2, $t8
	slli.d	$s4, $t8, 1
	vinsgr2vr.w	$vr4, $s4, 0
	andi	$s4, $t5, 3
	vreplvei.w	$vr2, $vr4, 0
	vinsgr2vr.w	$vr3, $t8, 0
	vreplvei.w	$vr3, $vr3, 0
	vand.v	$vr3, $vr3, $vr0
	vadd.w	$vr4, $vr4, $vr4
	vreplvei.w	$vr4, $vr4, 0
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
	add.w	$s5, $s7, $s3
	vinsgr2vr.w	$vr5, $s7, 0
	vreplvei.w	$vr5, $vr5, 0
	vadd.w	$vr5, $vr5, $vr3
	move	$s7, $s2
	.p2align	4, , 16
.LBB16_13:                              # %vector.body
                                        #   Parent Loop BB16_2 Depth=1
                                        #     Parent Loop BB16_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vadd.w	$vr6, $vr5, $vr2
	vilvl.w	$vr7, $vr1, $vr5
	vilvl.w	$vr6, $vr1, $vr6
	vpickve2gr.d	$a6, $vr7, 0
	slli.d	$a6, $a6, 1
	vpickve2gr.d	$s8, $vr7, 1
	slli.d	$s8, $s8, 1
	vpickve2gr.d	$ra, $vr6, 0
	slli.d	$ra, $ra, 1
	vpickve2gr.d	$a0, $vr6, 1
	slli.d	$a0, $a0, 1
	stx.h	$t7, $a3, $a6
	stx.h	$t7, $a3, $s8
	stx.h	$t7, $a3, $ra
	stx.h	$t7, $a3, $a0
	addi.w	$s7, $s7, -4
	vadd.w	$vr5, $vr5, $vr4
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
	move	$t0, $a5
	ori	$t1, $t2, 4095
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
	addi.d	$t0, $t0, 1
	bstrpick.d	$t3, $t0, 15, 0
	stx.h	$t1, $a3, $a0
	bltu	$t3, $a7, .LBB16_19
.LBB16_22:                              # %.preheader138.preheader
	lu12i.w	$a0, 16
	sll.w	$a7, $a0, $a1
	slli.d	$a5, $a5, 16
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ld.d	$t0, $sp, 16                    # 8-byte Folded Reload
	sltu	$a6, $t0, $a0
	masknez	$t0, $t0, $a6
	maskeqz	$a0, $a0, $a6
	or	$a6, $a0, $t0
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
	bstrpick.d	$t8, $t7, 15, 0
	srl.w	$t7, $a5, $t6
	addi.d	$t6, $t6, -1
	add.w	$fp, $t1, $t6
	bstrins.d	$t7, $t8, 63, 1
	beq	$fp, $t3, .LBB16_25
.LBB16_32:                              # %.preheader.us
                                        #   Parent Loop BB16_24 Depth=1
                                        #     Parent Loop BB16_27 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$t8, $t7, 31, 0
	slli.d	$t7, $t8, 1
	ldx.hu	$t7, $a3, $t7
	bne	$t7, $t2, .LBB16_31
# %bb.33:                               #   in Loop: Header=BB16_32 Depth=3
	alsl.d	$t7, $t8, $a3, 1
	bstrpick.d	$t8, $a6, 15, 0
	slli.d	$t8, $t8, 2
	addi.w	$fp, $zero, -1
	lu32i.d	$fp, 0
	stx.w	$fp, $a3, $t8
	addi.d	$t8, $a6, 1
	st.h	$a6, $t7, 0
	move	$t7, $a6
	move	$a6, $t8
	b	.LBB16_31
.LBB16_34:
	ori	$a0, $zero, 1
.LBB16_35:                              # %.loopexit
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
