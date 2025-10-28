	.file	"libclamav_unarj.c"
	.text
	.globl	cli_unarj_open                  # -- Begin function cli_unarj_open
	.p2align	5
	.type	cli_unarj_open,@function
cli_unarj_open:                         # @cli_unarj_open
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
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 10
	ori	$a2, $zero, 2
	ori	$s0, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB0_3
# %bb.1:
	ld.hu	$a0, $sp, 10
	lu12i.w	$a1, 14
	ori	$a1, $a1, 2656
	beq	$a0, $a1, .LBB0_6
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_3:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
.LBB0_4:
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
.LBB0_5:
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
.LBB0_6:
	addi.d	$a1, $sp, 46
	ori	$a2, $zero, 2
	ori	$s0, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB0_31
# %bb.7:
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $sp, 46
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $sp, 46
	beqz	$a1, .LBB0_31
# %bb.8:
	ori	$a0, $zero, 2601
	bltu	$a1, $a0, .LBB0_10
# %bb.9:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_31
.LBB0_10:
	addi.d	$a1, $sp, 10
	ori	$a2, $zero, 30
	ori	$s0, $zero, 30
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB0_31
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $sp, 10
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $sp, 11
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $sp, 12
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $sp, 13
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $sp, 14
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $sp, 15
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $sp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 10
	ori	$a1, $zero, 29
	bltu	$a1, $a0, .LBB0_13
# %bb.12:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_31
.LBB0_13:
	ori	$a1, $zero, 30
	beq	$a0, $a1, .LBB0_15
# %bb.14:
	addi.w	$a1, $zero, -30
	lu32i.d	$a1, 0
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $a0, 31, 0
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB0_31
.LBB0_15:
	ld.hu	$a0, $sp, 46
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_31
# %bb.16:                               # %.preheader41.i
	move	$s0, $a0
	ld.hu	$a0, $sp, 46
	beqz	$a0, .LBB0_29
# %bb.17:                               # %.lr.ph.i.preheader
	move	$s3, $zero
	move	$s2, $zero
	ori	$s4, $zero, 1
.LBB0_18:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s1, $s0, $s3
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s4, .LBB0_29
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=1
	ld.bu	$a1, $s1, 0
	ld.hu	$a0, $sp, 46
	beqz	$a1, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=1
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 1
	bltu	$s3, $a0, .LBB0_18
	b	.LBB0_22
.LBB0_21:                               # %._crit_edge.i.split.loop.exit
	move	$s2, $s3
.LBB0_22:                               # %._crit_edge.i
	beq	$s2, $a0, .LBB0_29
# %bb.23:
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_29
# %bb.24:                               # %.preheader40.i
	move	$s1, $a0
	ld.hu	$a0, $sp, 46
	st.h	$zero, $sp, 44
	beqz	$a0, .LBB0_34
# %bb.25:                               # %.lr.ph45.i.preheader
	move	$s4, $zero
	move	$s3, $zero
	ori	$s5, $zero, 1
.LBB0_26:                               # %.lr.ph45.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s2, $s1, $s4
	ori	$a2, $zero, 1
	move	$a0, $fp
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s5, .LBB0_34
# %bb.27:                               #   in Loop: Header=BB0_26 Depth=1
	ld.bu	$a1, $s2, 0
	ld.hu	$a0, $sp, 46
	beqz	$a1, .LBB0_32
# %bb.28:                               #   in Loop: Header=BB0_26 Depth=1
	addi.d	$s4, $s4, 1
	addi.d	$s3, $s3, 1
	st.h	$s4, $sp, 44
	bltu	$s4, $a0, .LBB0_26
	b	.LBB0_33
.LBB0_29:
	move	$a0, $s0
.LBB0_30:                               # %.loopexit
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_31:                               # %.loopexit
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	b	.LBB0_4
.LBB0_32:                               # %._crit_edge46.i.split.loop.exit
	move	$s3, $s4
.LBB0_33:                               # %._crit_edge46.i
	bne	$s3, $a0, .LBB0_35
.LBB0_34:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	b	.LBB0_30
.LBB0_35:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 40
	ori	$a2, $zero, 4
	ori	$s0, $zero, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s0, .LBB0_31
# %bb.36:                               # %.preheader.i.preheader
	ori	$s1, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$s0, $a0, %pc_lo12(.L.str.22)
	addi.w	$s2, $zero, -1
.LBB0_37:                               # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 44
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB0_31
# %bb.38:                               #   in Loop: Header=BB0_37 Depth=1
	ld.hu	$a1, $sp, 44
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $sp, 44
	beqz	$a0, .LBB0_40
# %bb.39:                               #   in Loop: Header=BB0_37 Depth=1
	addi.d	$a1, $a0, 4
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB0_37
	b	.LBB0_31
.LBB0_40:                               # %arj_read_main_header.exit
	move	$a0, $zero
	b	.LBB0_5
.Lfunc_end0:
	.size	cli_unarj_open, .Lfunc_end0-cli_unarj_open
                                        # -- End function
	.globl	cli_unarj_prepare_file          # -- Begin function cli_unarj_prepare_file
	.p2align	5
	.type	cli_unarj_prepare_file,@function
cli_unarj_prepare_file:                 # @cli_unarj_prepare_file
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
	move	$fp, $a2
	move	$s1, $a1
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -111
	bltz	$s0, .LBB1_7
# %bb.1:
	beqz	$s1, .LBB1_7
# %bb.2:
	beqz	$fp, .LBB1_7
# %bb.3:
	addi.d	$a1, $sp, 14
	ori	$a2, $zero, 2
	ori	$s1, $zero, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB1_6
# %bb.4:
	ld.hu	$a0, $sp, 14
	lu12i.w	$a1, 14
	ori	$a1, $a1, 2656
	beq	$a0, $a1, .LBB1_8
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB1_6:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
.LBB1_7:
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
.LBB1_8:
	addi.d	$a1, $sp, 46
	ori	$a2, $zero, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	addi.w	$s4, $zero, -124
	bne	$a0, $a1, .LBB1_42
# %bb.9:
	ld.hu	$a1, $sp, 46
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2
	ld.hu	$a1, $sp, 46
	beqz	$a1, .LBB1_7
# %bb.10:
	ori	$a0, $zero, 2601
	bltu	$a1, $a0, .LBB1_12
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB1_42
.LBB1_12:
	addi.d	$a1, $sp, 14
	ori	$a2, $zero, 30
	ori	$s1, $zero, 30
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s1, .LBB1_42
# %bb.13:
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $sp, 14
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $sp, 15
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $sp, 16
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $sp, 17
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $sp, 18
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $sp, 19
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a0, $a0, %pc_lo12(.L.str.25)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $sp, 20
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$s1, $a0, %pc_lo12(.L.str.19)
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a1, $sp, 21
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 26
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a0, $a0, %pc_lo12(.L.str.26)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a1, $sp, 30
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a0, $a0, %pc_lo12(.L.str.27)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $sp, 14
	ori	$a1, $zero, 29
	bltu	$a1, $a0, .LBB1_15
# %bb.14:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	b	.LBB1_7
.LBB1_15:
	ori	$a1, $zero, 30
	beq	$a0, $a1, .LBB1_17
# %bb.16:
	addi.w	$a1, $zero, -30
	lu32i.d	$a1, 0
	add.d	$a0, $a0, $a1
	bstrpick.d	$a1, $a0, 31, 0
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	beq	$a0, $a1, .LBB1_42
.LBB1_17:
	ld.hu	$a0, $sp, 46
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_23
# %bb.18:                               # %.preheader49.i
	move	$s1, $a0
	ld.hu	$a0, $sp, 46
	beqz	$a0, .LBB1_32
# %bb.19:                               # %.lr.ph.i.preheader
	move	$s5, $zero
	move	$s3, $zero
	ori	$s6, $zero, 1
.LBB1_20:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s2, $s1, $s5
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s6, .LBB1_32
# %bb.21:                               #   in Loop: Header=BB1_20 Depth=1
	ld.bu	$a1, $s2, 0
	ld.hu	$a0, $sp, 46
	beqz	$a1, .LBB1_24
# %bb.22:                               #   in Loop: Header=BB1_20 Depth=1
	addi.d	$s5, $s5, 1
	addi.d	$s3, $s3, 1
	bltu	$s5, $a0, .LBB1_20
	b	.LBB1_25
.LBB1_23:
	addi.w	$a0, $zero, -114
	b	.LBB1_7
.LBB1_24:                               # %._crit_edge.i.split.loop.exit
	move	$s3, $s5
.LBB1_25:                               # %._crit_edge.i
	beq	$s3, $a0, .LBB1_32
# %bb.26:
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_32
# %bb.27:                               # %.preheader48.i
	move	$s2, $a0
	ld.hu	$a0, $sp, 46
	st.h	$zero, $sp, 44
	beqz	$a0, .LBB1_36
# %bb.28:                               # %.lr.ph53.i.preheader
	move	$s6, $zero
	move	$s5, $zero
	ori	$s7, $zero, 1
.LBB1_29:                               # %.lr.ph53.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s3, $s2, $s6
	ori	$a2, $zero, 1
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s7, .LBB1_36
# %bb.30:                               #   in Loop: Header=BB1_29 Depth=1
	ld.bu	$a1, $s3, 0
	ld.hu	$a0, $sp, 46
	beqz	$a1, .LBB1_34
# %bb.31:                               #   in Loop: Header=BB1_29 Depth=1
	addi.d	$s6, $s6, 1
	addi.d	$s5, $s5, 1
	st.h	$s6, $sp, 44
	bltu	$s6, $a0, .LBB1_29
	b	.LBB1_35
.LBB1_32:
	move	$a0, $s1
.LBB1_33:                               # %arj_read_file_header.exit
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	b	.LBB1_7
.LBB1_34:                               # %._crit_edge54.i.split.loop.exit
	move	$s5, $s6
.LBB1_35:                               # %._crit_edge54.i
	bne	$s5, $a0, .LBB1_37
.LBB1_36:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	b	.LBB1_33
.LBB1_37:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 4
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.w	$s2, $zero, -1
	beq	$a0, $s2, .LBB1_42
# %bb.38:                               # %.preheader.i.preheader
	ori	$s3, $zero, 2
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$s1, $a0, %pc_lo12(.L.str.22)
.LBB1_39:                               # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $sp, 44
	ori	$a2, $zero, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s3, .LBB1_42
# %bb.40:                               #   in Loop: Header=BB1_39 Depth=1
	ld.hu	$a1, $sp, 44
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $sp, 44
	beqz	$a0, .LBB1_43
# %bb.41:                               #   in Loop: Header=BB1_39 Depth=1
	addi.d	$a1, $a0, 4
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB1_39
.LBB1_42:
	move	$a0, $s4
	b	.LBB1_7
.LBB1_43:
	ld.d	$a0, $sp, 26
	ld.b	$a1, $sp, 19
	ld.bu	$a2, $sp, 18
	st.d	$a0, $fp, 0
	st.b	$a1, $fp, 8
	andi	$a0, $a2, 1
	ld.d	$a1, $fp, 16
	st.w	$a0, $fp, 24
	lu32i.d	$s2, 0
	st.w	$s2, $fp, 28
	sltui	$a0, $a1, 1
	addi.w	$a1, $zero, -114
	maskeqz	$a0, $a1, $a0
	b	.LBB1_7
.Lfunc_end1:
	.size	cli_unarj_prepare_file, .Lfunc_end1-cli_unarj_prepare_file
                                        # -- End function
	.globl	cli_unarj_extract_file          # -- Begin function cli_unarj_extract_file
	.p2align	5
	.type	cli_unarj_extract_file,@function
cli_unarj_extract_file:                 # @cli_unarj_extract_file
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
	lu12i.w	$a3, 3
	ori	$a3, $a3, 272
	sub.d	$sp, $sp, $a3
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -111
	bltz	$s1, .LBB2_6
# %bb.1:
	beqz	$s0, .LBB2_6
# %bb.2:
	beqz	$fp, .LBB2_6
# %bb.3:
	ld.w	$a0, $fp, 24
	beqz	$a0, .LBB2_7
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 1
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ld.wu	$a1, $fp, 0
	add.d	$fp, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	xor	$a0, $a0, $fp
	sltui	$a0, $a0, 1
	addi.w	$a1, $zero, -127
.LBB2_5:
	masknez	$a0, $a1, $a0
.LBB2_6:
	lu12i.w	$a1, 3
	ori	$a1, $a1, 272
	add.d	$sp, $sp, $a1
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
.LBB2_7:
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a2, $a0, %pc_lo12(.L.str.7)
	addi.d	$a0, $sp, 128
	ori	$a1, $zero, 1024
	move	$a3, $s0
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	addi.d	$a1, $sp, 128
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 128
	ori	$a1, $zero, 578
	ori	$a2, $zero, 384
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 28
	bltz	$a0, .LBB2_13
# %bb.8:
	move	$a1, $a0
	ld.bu	$a0, $fp, 8
	addi.d	$a2, $a0, -1
	ori	$a3, $zero, 3
	bgeu	$a2, $a3, .LBB2_14
# %bb.9:
	lu12i.w	$s7, 6
	ori	$a0, $s7, 2048
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 1160
	beqz	$a0, .LBB2_87
# %bb.10:
	ld.w	$a0, $fp, 0
	st.w	$s1, $sp, 1152
	st.w	$a0, $sp, 1180
	st.w	$zero, $sp, 1168
	st.b	$zero, $sp, 1172
	st.w	$zero, $sp, 1176
	addi.d	$a0, $sp, 1152
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_87
# %bb.11:                               # %.preheader84.i
	ld.w	$a0, $fp, 4
	beqz	$a0, .LBB2_86
# %bb.12:                               # %.lr.ph96.i
	lu12i.w	$s3, 1
	ori	$a0, $s3, 16
	addi.d	$s8, $sp, 1152
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	add.d	$a0, $s8, $a0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a1, $a0, 546
	add.d	$a1, $s8, $a1
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	ori	$a0, $a0, 526
	add.d	$a0, $s8, $a0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ori	$a0, $s3, 526
	add.d	$a0, $s8, $a0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ori	$a0, $s3, 32
	add.d	$a0, $s8, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$a0, $s3, 542
	add.d	$a0, $s8, $a0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ori	$s5, $zero, 1019
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	move	$s6, $zero
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	ori	$s0, $zero, 2074
	ori	$s4, $zero, 36
	ori	$s2, $zero, 18
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	ori	$a5, $zero, 509
	lu12i.w	$a0, 15
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ori	$s1, $s7, 2048
	b	.LBB2_20
.LBB2_13:
	addi.w	$a0, $zero, -115
	b	.LBB2_6
.LBB2_14:
	ori	$a2, $zero, 4
	beq	$a0, $a2, .LBB2_81
# %bb.15:
	bnez	$a0, .LBB2_82
# %bb.16:
	ld.w	$a2, $fp, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(arj_unstore)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 0
	xor	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	addi.w	$a1, $zero, -123
	b	.LBB2_5
.LBB2_17:                               # %decode_c.exit.thread.i
                                        #   in Loop: Header=BB2_20 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	move	$s2, $zero
.LBB2_18:                               #   in Loop: Header=BB2_20 Depth=1
	ld.d	$a0, $sp, 1160
	bstrpick.d	$a1, $s6, 31, 0
	stx.b	$s2, $a0, $a1
	addi.w	$s6, $s6, 1
	bstrpick.d	$a0, $s6, 31, 11
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 1
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	ori	$a1, $zero, 13
	bgeu	$a0, $a1, .LBB2_24
.LBB2_19:                               #   in Loop: Header=BB2_20 Depth=1
	ori	$s2, $zero, 18
	ori	$a5, $zero, 509
	ld.w	$a0, $fp, 4
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB2_84
.LBB2_20:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_26 Depth 2
                                        #       Child Loop BB2_28 Depth 3
                                        #       Child Loop BB2_41 Depth 3
                                        #       Child Loop BB2_44 Depth 3
                                        #     Child Loop BB2_23 Depth 2
                                        #     Child Loop BB2_57 Depth 2
                                        #     Child Loop BB2_62 Depth 2
                                        #     Child Loop BB2_76 Depth 2
                                        #     Child Loop BB2_71 Depth 2
	ld.hu	$a1, $sp, 1168
	bnez	$a1, .LBB2_55
# %bb.21:                               #   in Loop: Header=BB2_20 Depth=1
	ld.h	$s1, $sp, 1170
	addi.d	$a0, $sp, 1152
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	st.h	$s1, $sp, 1168
	addi.d	$a0, $sp, 1152
	ori	$a1, $zero, 3
	pcaddu18i	$ra, %call36(read_pt_len)
	jirl	$ra, $ra, 0
	ld.hu	$s1, $sp, 1170
	addi.d	$a0, $sp, 1152
	ori	$a1, $zero, 9
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 128
	bgeu	$s1, $a0, .LBB2_25
# %bb.22:                               # %.preheader.i.i.i
                                        #   in Loop: Header=BB2_20 Depth=1
	ld.hu	$s1, $sp, 1170
	addi.d	$a0, $sp, 1152
	ori	$a1, $zero, 9
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 510
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	srli.d	$a0, $s1, 7
	vreplgr2vr.h	$vr0, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	move	$a1, $s3
	ori	$s1, $s7, 2048
	.p2align	4, , 16
.LBB2_23:                               # %vector.body
                                        #   Parent Loop BB2_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $a0, -16
	vst	$vr0, $a0, 0
	addi.d	$a1, $a1, -16
	addi.d	$a0, $a0, 32
	bnez	$a1, .LBB2_23
	b	.LBB2_54
.LBB2_24:                               #   in Loop: Header=BB2_20 Depth=1
	ld.w	$a0, $fp, 28
	ld.d	$a1, $sp, 1160
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$s6, $zero
	b	.LBB2_19
.LBB2_25:                               # %.lr.ph70.i.i.i.preheader
                                        #   in Loop: Header=BB2_20 Depth=1
	move	$s3, $zero
	srli.d	$a0, $s1, 7
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
.LBB2_26:                               # %.lr.ph70.i.i.i
                                        #   Parent Loop BB2_20 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_28 Depth 3
                                        #       Child Loop BB2_41 Depth 3
                                        #       Child Loop BB2_44 Depth 3
	ld.hu	$a0, $sp, 1170
	srli.d	$a1, $a0, 7
	andi	$a1, $a1, 510
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ldx.h	$s1, $a2, $a1
	ori	$a1, $zero, 19
	blt	$s1, $a1, .LBB2_30
# %bb.27:                               # %.preheader61.i.i.i
                                        #   in Loop: Header=BB2_26 Depth=2
	ori	$a1, $zero, 128
	.p2align	4, , 16
.LBB2_28:                               #   Parent Loop BB2_20 Depth=1
                                        #     Parent Loop BB2_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$a2, $s1, 15, 0
	bgeu	$a2, $s5, .LBB2_50
# %bb.29:                               #   in Loop: Header=BB2_28 Depth=3
	and	$a3, $a1, $a0
	sltui	$a3, $a3, 1
	masknez	$a4, $s0, $a3
	maskeqz	$a3, $s4, $a3
	or	$a3, $a3, $a4
	add.d	$a3, $s8, $a3
	slli.d	$a2, $a2, 1
	ldx.h	$s1, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 1
	blt	$s2, $s1, .LBB2_28
.LBB2_30:                               # %.loopexit62.i.i.i
                                        #   in Loop: Header=BB2_26 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ldx.bu	$a1, $a0, $s1
	addi.d	$a0, $sp, 1152
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	ext.w.h	$s2, $s3
	ori	$a0, $zero, 2
	blt	$a0, $s1, .LBB2_34
# %bb.31:                               #   in Loop: Header=BB2_26 Depth=2
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
	beqz	$s1, .LBB2_36
# %bb.32:                               #   in Loop: Header=BB2_26 Depth=2
	bstrpick.d	$a0, $s1, 15, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB2_37
# %bb.33:                               #   in Loop: Header=BB2_26 Depth=2
	ori	$s1, $zero, 3
	ori	$a1, $zero, 4
	ori	$a0, $zero, 12
	b	.LBB2_38
.LBB2_34:                               #   in Loop: Header=BB2_26 Depth=2
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ori	$a0, $zero, 510
	ori	$a5, $zero, 509
	bge	$s2, $a0, .LBB2_80
# %bb.35:                               #   in Loop: Header=BB2_26 Depth=2
	addi.d	$a0, $s1, -2
	addi.d	$s3, $s3, 1
	stx.b	$a0, $a2, $s2
	b	.LBB2_46
.LBB2_36:                               #   in Loop: Header=BB2_26 Depth=2
	ori	$a0, $zero, 1
	ori	$a4, $zero, 32
	b	.LBB2_39
.LBB2_37:                               #   in Loop: Header=BB2_26 Depth=2
	ori	$s1, $zero, 20
	ori	$a1, $zero, 9
	ori	$a0, $zero, 7
.LBB2_38:                               # %.lr.ph.preheader.sink.split.i.i.i
                                        #   in Loop: Header=BB2_26 Depth=2
	ld.hu	$a2, $sp, 1170
	srl.d	$s3, $a2, $a0
	addi.d	$a0, $sp, 1152
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	add.d	$a0, $s3, $s1
	ori	$a4, $zero, 32
	vld	$vr0, $sp, 48                   # 16-byte Folded Reload
.LBB2_39:                               # %.lr.ph.preheader.i.i.i
                                        #   in Loop: Header=BB2_26 Depth=2
	ori	$a5, $zero, 509
	addi.d	$a1, $a0, -1
	bstrpick.d	$a1, $a1, 15, 0
	ori	$a3, $zero, 510
	slt	$a2, $a3, $s2
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $s2, $a2
	or	$a2, $a2, $a3
	sub.d	$a2, $a2, $s2
	sltu	$a3, $a1, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a1, $a1, $a3
	or	$a1, $a1, $a2
	ori	$s1, $s7, 2048
	bltu	$a1, $a4, .LBB2_43
# %bb.40:                               # %vector.ph60
                                        #   in Loop: Header=BB2_26 Depth=2
	addi.d	$a1, $a1, 1
	andi	$a2, $a1, 31
	sltui	$a3, $a2, 1
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $a4, $a3
	or	$a2, $a3, $a2
	sub.d	$a2, $a1, $a2
	add.d	$a1, $a2, $s2
	sub.d	$a0, $a0, $a2
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	add.d	$a3, $a3, $s2
	.p2align	4, , 16
.LBB2_41:                               # %vector.body61
                                        #   Parent Loop BB2_20 Depth=1
                                        #     Parent Loop BB2_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vst	$vr0, $a3, -16
	vst	$vr0, $a3, 0
	addi.d	$a2, $a2, -32
	addi.d	$a3, $a3, 32
	bnez	$a2, .LBB2_41
# %bb.42:                               #   in Loop: Header=BB2_26 Depth=2
	move	$s2, $a1
.LBB2_43:                               # %.lr.ph.i.i.i.preheader
                                        #   in Loop: Header=BB2_26 Depth=2
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_44:                               # %.lr.ph.i.i.i
                                        #   Parent Loop BB2_20 Depth=1
                                        #     Parent Loop BB2_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ori	$a1, $zero, 510
	bge	$s2, $a1, .LBB2_52
# %bb.45:                               #   in Loop: Header=BB2_44 Depth=3
	ext.w.h	$a1, $a0
	addi.d	$a0, $a0, -1
	addi.d	$s3, $s2, 1
	stx.b	$zero, $a2, $s2
	move	$s2, $s3
	ori	$a3, $zero, 1
	blt	$a3, $a1, .LBB2_44
.LBB2_46:                               # %.loopexit60.i.i.i
                                        #   in Loop: Header=BB2_26 Depth=2
	ext.w.h	$a0, $s3
	ori	$s2, $zero, 18
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB2_26
# %bb.47:                               # %.preheader59.i.i.i
                                        #   in Loop: Header=BB2_20 Depth=1
	blt	$a5, $a0, .LBB2_49
# %bb.48:                               # %.lr.ph73.i.i.i
                                        #   in Loop: Header=BB2_20 Depth=1
	bstrpick.d	$a0, $s3, 15, 0
	add.d	$a0, $s8, $a0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 510
	sub.d	$a1, $a1, $s3
	bstrpick.d	$a2, $a1, 15, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
.LBB2_49:                               # %._crit_edge.i.i.i
                                        #   in Loop: Header=BB2_20 Depth=1
	addi.d	$a0, $sp, 1152
	ori	$a1, $zero, 510
	ori	$a3, $zero, 12
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	lu12i.w	$s3, 1
	move	$a5, $s3
	pcaddu18i	$ra, %call36(make_table)
	jirl	$ra, $ra, 0
	ori	$s1, $s7, 2048
	b	.LBB2_54
.LBB2_50:                               #   in Loop: Header=BB2_20 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
.LBB2_51:                               # %read_c_len.exit.i.i
                                        #   in Loop: Header=BB2_20 Depth=1
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	ori	$s1, $s7, 2048
	b	.LBB2_53
.LBB2_52:                               #   in Loop: Header=BB2_20 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
.LBB2_53:                               # %read_c_len.exit.i.i
                                        #   in Loop: Header=BB2_20 Depth=1
	lu12i.w	$s3, 1
.LBB2_54:                               # %read_c_len.exit.i.i
                                        #   in Loop: Header=BB2_20 Depth=1
	addi.d	$a0, $sp, 1152
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(read_pt_len)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $sp, 1168
	ori	$a5, $zero, 509
.LBB2_55:                               #   in Loop: Header=BB2_20 Depth=1
	ld.hu	$a0, $sp, 1170
	srli.d	$a2, $a0, 3
	ori	$a3, $s3, 4094
	and	$a2, $a2, $a3
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ldx.hu	$s2, $a3, $a2
	addi.d	$a1, $a1, -1
	st.h	$a1, $sp, 1168
	ori	$a1, $zero, 510
	bltu	$s2, $a1, .LBB2_59
# %bb.56:                               # %.preheader.i.i
                                        #   in Loop: Header=BB2_20 Depth=1
	ori	$a1, $zero, 8
	.p2align	4, , 16
.LBB2_57:                               #   Parent Loop BB2_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a2, $s2, 15, 0
	bgeu	$a2, $s5, .LBB2_17
# %bb.58:                               #   in Loop: Header=BB2_57 Depth=2
	and	$a3, $a1, $a0
	sltui	$a3, $a3, 1
	masknez	$a4, $s0, $a3
	maskeqz	$a3, $s4, $a3
	or	$a3, $a3, $a4
	add.d	$a3, $s8, $a3
	slli.d	$a2, $a2, 1
	ldx.hu	$s2, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 1
	bltu	$a5, $s2, .LBB2_57
.LBB2_59:                               # %decode_c.exit.i
                                        #   in Loop: Header=BB2_20 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ldx.bu	$a1, $a0, $s2
	addi.d	$a0, $sp, 1152
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 255
	bgeu	$a0, $s2, .LBB2_18
# %bb.60:                               #   in Loop: Header=BB2_20 Depth=1
	ld.hu	$a0, $sp, 1170
	srli.d	$a1, $a0, 7
	andi	$a1, $a1, 510
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	ldx.hu	$s1, $a2, $a1
	ori	$a1, $zero, 17
	bltu	$s1, $a1, .LBB2_64
# %bb.61:                               # %.preheader.i64.i
                                        #   in Loop: Header=BB2_20 Depth=1
	ori	$a1, $zero, 128
	ori	$a5, $zero, 16
	.p2align	4, , 16
.LBB2_62:                               #   Parent Loop BB2_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a2, $s1, 15, 0
	bgeu	$a2, $s5, .LBB2_66
# %bb.63:                               #   in Loop: Header=BB2_62 Depth=2
	and	$a3, $a1, $a0
	sltui	$a3, $a3, 1
	masknez	$a4, $s0, $a3
	maskeqz	$a3, $s4, $a3
	or	$a3, $a3, $a4
	add.d	$a3, $s8, $a3
	slli.d	$a2, $a2, 1
	ldx.hu	$s1, $a3, $a2
	bstrpick.d	$a1, $a1, 31, 1
	bltu	$a5, $s1, .LBB2_62
.LBB2_64:                               # %.loopexit.i62.i
                                        #   in Loop: Header=BB2_20 Depth=1
	ori	$s3, $zero, 16
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ldx.bu	$a1, $a0, $s1
	addi.d	$a0, $sp, 1152
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beqz	$s1, .LBB2_67
# %bb.65:                               #   in Loop: Header=BB2_20 Depth=1
	addi.d	$a0, $s1, -1
	ld.hu	$a2, $sp, 1170
	bstrpick.d	$a1, $a0, 15, 0
	ori	$a3, $zero, 1
	sll.w	$s1, $a3, $a0
	sub.d	$a0, $s3, $a1
	srl.w	$s3, $a2, $a0
	addi.d	$a0, $sp, 1152
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	add.d	$a0, $s3, $s1
	nor	$a0, $a0, $zero
	b	.LBB2_67
.LBB2_66:                               #   in Loop: Header=BB2_20 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
.LBB2_67:                               # %decode_p.exit.i
                                        #   in Loop: Header=BB2_20 Depth=1
	add.d	$a0, $a0, $s6
	ext.w.h	$a1, $a0
	slti	$a1, $a1, 0
	ori	$s1, $s7, 2048
	add.d	$a2, $a0, $s1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s3, $a1, $a0
	bstrpick.d	$a0, $s3, 15, 11
	ori	$a1, $zero, 13
	bgeu	$a0, $a1, .LBB2_83
# %bb.68:                               #   in Loop: Header=BB2_20 Depth=1
	addi.d	$a0, $s2, -253
	bstrpick.d	$a0, $a0, 15, 0
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	add.w	$a1, $a1, $a0
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	ori	$a0, $s7, 1790
	addi.d	$s2, $s2, -254
	bltu	$a0, $s6, .LBB2_74
# %bb.69:                               #   in Loop: Header=BB2_20 Depth=1
	bstrpick.d	$a0, $s3, 15, 0
	ori	$a5, $zero, 509
	bgeu	$a0, $s6, .LBB2_76
# %bb.70:                               # %.lr.ph92.preheader.i
                                        #   in Loop: Header=BB2_20 Depth=1
	move	$a1, $s6
	lu12i.w	$s3, 1
	.p2align	4, , 16
.LBB2_71:                               # %.lr.ph92.i
                                        #   Parent Loop BB2_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $sp, 1160
	ldx.b	$a3, $a2, $a0
	stx.b	$a3, $a2, $a1
	ori	$a2, $s7, 2046
	addi.w	$s6, $s6, 1
	bltu	$a2, $a1, .LBB2_79
# %bb.72:                               # %.lr.ph92.i
                                        #   in Loop: Header=BB2_71 Depth=2
	ext.w.h	$a3, $a0
	blt	$a2, $a3, .LBB2_79
# %bb.73:                               # %.lr.ph92.i
                                        #   in Loop: Header=BB2_71 Depth=2
	addi.d	$a0, $a0, 1
	addi.d	$a2, $s2, -1
	ext.w.h	$s2, $a2
	addi.d	$a1, $a1, 1
	bgez	$s2, .LBB2_71
	b	.LBB2_79
.LBB2_74:                               #   in Loop: Header=BB2_20 Depth=1
	ori	$a5, $zero, 509
	b	.LBB2_76
	.p2align	4, , 16
.LBB2_75:                               #   in Loop: Header=BB2_76 Depth=2
	addi.d	$a0, $s3, 1
	ext.w.h	$a1, $a0
	ori	$a2, $s7, 2047
	slt	$a1, $a2, $a1
	ext.w.h	$a2, $s2
	addi.d	$s2, $s2, -1
	masknez	$s3, $a0, $a1
	blez	$a2, .LBB2_78
.LBB2_76:                               # %.lr.ph.i
                                        #   Parent Loop BB2_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 1160
	ext.w.h	$a1, $s3
	ldx.b	$a1, $a0, $a1
	bstrpick.d	$a2, $s6, 31, 0
	addi.w	$s6, $s6, 1
	bstrpick.d	$a3, $s6, 31, 11
	stx.b	$a1, $a0, $a2
	ori	$a0, $zero, 13
	bltu	$a3, $a0, .LBB2_75
# %bb.77:                               #   in Loop: Header=BB2_76 Depth=2
	ld.w	$a0, $fp, 28
	ld.d	$a1, $sp, 1160
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ori	$a5, $zero, 509
	move	$s6, $zero
	b	.LBB2_75
.LBB2_78:                               #   in Loop: Header=BB2_20 Depth=1
	lu12i.w	$s3, 1
.LBB2_79:                               # %.critedge.i
                                        #   in Loop: Header=BB2_20 Depth=1
	ori	$s2, $zero, 18
	ld.w	$a0, $fp, 4
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB2_20
	b	.LBB2_84
.LBB2_80:                               #   in Loop: Header=BB2_20 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	b	.LBB2_51
.LBB2_81:
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(decode_f)
	jirl	$ra, $ra, 0
	b	.LBB2_87
.LBB2_82:
	addi.w	$a0, $zero, -124
	b	.LBB2_6
.LBB2_83:
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
.LBB2_84:                               # %.loopexit.i
	beqz	$s6, .LBB2_86
# %bb.85:
	ld.w	$a0, $fp, 28
	ld.d	$a1, $sp, 1160
	move	$a2, $s6
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
.LBB2_86:                               # %.loopexit.thread.i
	ld.d	$a0, $sp, 1160
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_87:
	move	$a0, $zero
	b	.LBB2_6
.Lfunc_end2:
	.size	cli_unarj_extract_file, .Lfunc_end2-cli_unarj_extract_file
                                        # -- End function
	.p2align	5                               # -- Begin function arj_unstore
	.type	arj_unstore,@function
arj_unstore:                            # @arj_unstore
# %bb.0:
	addi.d	$sp, $sp, -2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	lu12i.w	$a3, 1
	ori	$a3, $a3, 2128
	sub.d	$sp, $sp, $a3
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a0, $a0, %pc_lo12(.L.str.28)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	beqz	$fp, .LBB3_5
# %bb.1:                                # %.lr.ph.preheader
	lu12i.w	$s4, 2
	move	$s3, $fp
	.p2align	4, , 16
.LBB3_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	srli.d	$a0, $s3, 13
	sltui	$a0, $a0, 1
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $s3, $a0
	or	$s2, $a0, $a1
	addi.d	$a1, $sp, 8
	move	$a0, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB3_6
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=1
	addi.d	$a1, $sp, 8
	move	$a0, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	bne	$a0, $s2, .LBB3_7
# %bb.4:                                #   in Loop: Header=BB3_2 Depth=1
	sub.w	$s3, $s3, $s2
	bnez	$s3, .LBB3_2
	b	.LBB3_8
.LBB3_5:
	move	$fp, $zero
	b	.LBB3_8
.LBB3_6:
	sub.w	$fp, $fp, $s3
	b	.LBB3_8
.LBB3_7:
	add.d	$a0, $s3, $s2
	sub.w	$fp, $fp, $a0
.LBB3_8:                                # %.loopexit
	move	$a0, $fp
	lu12i.w	$a1, 1
	ori	$a1, $a1, 2128
	add.d	$sp, $sp, $a1
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.Lfunc_end3:
	.size	arj_unstore, .Lfunc_end3-arj_unstore
                                        # -- End function
	.p2align	5                               # -- Begin function decode_f
	.type	decode_f,@function
decode_f:                               # @decode_f
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
	lu12i.w	$a2, 2
	ori	$a2, $a2, 3264
	sub.d	$sp, $sp, $a2
	move	$fp, $a1
	move	$s1, $a0
	lu12i.w	$s2, 6
	ori	$s4, $s2, 2048
	move	$a0, $s4
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 56
	beqz	$a0, .LBB4_77
# %bb.1:
	ld.w	$a0, $fp, 0
	st.w	$s1, $sp, 48
	st.w	$a0, $sp, 76
	st.h	$zero, $sp, 66
	st.b	$zero, $sp, 68
	st.w	$zero, $sp, 72
	addi.d	$a0, $sp, 48
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB4_77
# %bb.2:
	ld.w	$a0, $fp, 4
	st.w	$zero, $sp, 80
	beqz	$a0, .LBB4_76
# %bb.3:                                # %.lr.ph76
	move	$s1, $zero
	move	$s6, $zero
	ori	$s8, $zero, 16
	ori	$s5, $zero, 13
	ori	$s7, $zero, 1
	lu12i.w	$a0, 1
	ori	$a0, $a0, 3584
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB4_7
	.p2align	4, , 16
.LBB4_4:                                # %.thread101
                                        #   in Loop: Header=BB4_7 Depth=1
	ld.hu	$a1, $sp, 66
	srl.w	$a1, $a1, $a2
	or	$a0, $a0, $a1
	st.h	$a0, $sp, 82
	ext.w.h	$a0, $a2
	sub.d	$a1, $s8, $a0
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	ld.h	$a0, $sp, 82
	slli.d	$a1, $a0, 1
	ext.w.h	$a1, $a1
	ori	$s0, $zero, 15
	bltz	$a0, .LBB4_14
.LBB4_5:                                # %decode_len.exit.thread.thread
                                        #   in Loop: Header=BB4_7 Depth=1
	srli.d	$a0, $a1, 8
	slli.d	$a1, $a1, 8
	st.h	$a1, $sp, 82
	ld.d	$a1, $sp, 56
	addi.d	$a2, $s0, -8
	st.h	$a2, $sp, 80
	bstrpick.d	$a2, $s1, 31, 0
	stx.b	$a0, $a1, $a2
	addi.w	$s1, $s1, 1
	bstrpick.d	$a0, $s1, 31, 11
	addi.w	$s6, $s6, 1
	bgeu	$a0, $s5, .LBB4_13
.LBB4_6:                                # %.loopexit
                                        #   in Loop: Header=BB4_7 Depth=1
	ld.w	$a0, $fp, 4
	bgeu	$s6, $a0, .LBB4_74
.LBB4_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_44 Depth 2
	ld.h	$a1, $sp, 80
	ld.h	$a0, $sp, 82
	bstrpick.d	$a2, $a1, 15, 0
	blez	$a1, .LBB4_4
# %bb.8:                                #   in Loop: Header=BB4_7 Depth=1
	slli.d	$a1, $a0, 1
	ext.w.h	$a1, $a1
	addi.d	$s0, $a2, -1
	st.h	$s0, $sp, 80
	bstrpick.d	$a3, $a2, 15, 0
	bltz	$a0, .LBB4_11
# %bb.9:                                # %decode_len.exit.thread
                                        #   in Loop: Header=BB4_7 Depth=1
	ori	$a0, $zero, 8
	bltu	$a0, $a3, .LBB4_5
# %bb.10:                               #   in Loop: Header=BB4_7 Depth=1
	ld.hu	$a0, $sp, 66
	srl.w	$a0, $a0, $s0
	bstrpick.d	$a2, $s0, 15, 0
	or	$a0, $a1, $a0
	st.h	$a0, $sp, 82
	ori	$s0, $zero, 16
	sub.d	$a1, $s0, $a2
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $sp, 82
	b	.LBB4_5
	.p2align	4, , 16
.LBB4_11:                               #   in Loop: Header=BB4_7 Depth=1
	ori	$s0, $zero, 16
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	bne	$a3, $s7, .LBB4_15
# %bb.12:                               # %.thread76.i
                                        #   in Loop: Header=BB4_7 Depth=1
	ld.h	$a0, $sp, 66
	or	$a0, $a0, $a1
	st.h	$a0, $sp, 82
	addi.d	$a0, $sp, 48
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	ld.h	$a1, $sp, 82
	slli.d	$a0, $a1, 1
	ori	$s6, $zero, 15
	ori	$s3, $zero, 1
	ori	$s8, $zero, 1
	bgez	$a1, .LBB4_24
	b	.LBB4_19
	.p2align	4, , 16
.LBB4_13:                               #   in Loop: Header=BB4_7 Depth=1
	ld.w	$a0, $fp, 28
	ld.d	$a1, $sp, 56
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	b	.LBB4_6
.LBB4_14:                               # %.thread103
                                        #   in Loop: Header=BB4_7 Depth=1
	ori	$s0, $zero, 16
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	slli.d	$a0, $a0, 2
	ori	$s6, $zero, 14
	ori	$s3, $zero, 1
	ori	$s8, $zero, 1
	bgez	$a1, .LBB4_24
	b	.LBB4_19
.LBB4_15:                               #   in Loop: Header=BB4_7 Depth=1
	slli.d	$a0, $a0, 2
	addi.d	$s6, $a2, -2
	st.h	$s6, $sp, 80
	ori	$s8, $zero, 1
	bltz	$a1, .LBB4_17
# %bb.16:                               #   in Loop: Header=BB4_7 Depth=1
	move	$a1, $a0
	move	$a2, $s6
	ori	$s3, $zero, 1
	b	.LBB4_21
.LBB4_17:                               #   in Loop: Header=BB4_7 Depth=1
	ori	$a1, $zero, 2
	bne	$a3, $a1, .LBB4_19
# %bb.18:                               #   in Loop: Header=BB4_7 Depth=1
	ld.h	$a1, $sp, 66
	or	$a0, $a1, $a0
	st.h	$a0, $sp, 82
	addi.d	$a0, $sp, 48
	ori	$a1, $zero, 16
	ori	$s6, $zero, 16
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $sp, 82
.LBB4_19:                               # %.thread77.i
                                        #   in Loop: Header=BB4_7 Depth=1
	slli.d	$a1, $a0, 1
	ext.w.h	$a1, $a1
	ext.w.h	$a3, $a0
	addi.d	$a2, $s6, -1
	st.h	$a2, $sp, 80
	bltz	$a3, .LBB4_35
# %bb.20:                               #   in Loop: Header=BB4_7 Depth=1
	ori	$s3, $zero, 3
	ori	$s8, $zero, 2
.LBB4_21:                               # %.thread.i
                                        #   in Loop: Header=BB4_7 Depth=1
	bstrpick.d	$a0, $a2, 15, 0
	bgeu	$a0, $s8, .LBB4_23
# %bb.22:                               #   in Loop: Header=BB4_7 Depth=1
	ld.hu	$a3, $sp, 66
	srl.w	$a2, $a3, $a2
	or	$a1, $a1, $a2
	st.h	$a1, $sp, 82
	ori	$s6, $zero, 16
	sub.d	$a1, $s6, $a0
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $sp, 82
	b	.LBB4_24
.LBB4_23:                               #   in Loop: Header=BB4_7 Depth=1
	move	$s6, $a2
	move	$a0, $a1
.LBB4_24:                               # %decode_len.exit
                                        #   in Loop: Header=BB4_7 Depth=1
	bstrpick.d	$a5, $a0, 15, 0
	sll.w	$a1, $a5, $s8
	sub.d	$a0, $s6, $s8
	ext.w.h	$a2, $a0
	st.h	$a0, $sp, 80
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	blez	$a2, .LBB4_29
# %bb.25:                               #   in Loop: Header=BB4_7 Depth=1
	ext.w.h	$a3, $a1
	slli.d	$a0, $a1, 1
	ext.w.h	$a0, $a0
	addi.d	$s0, $a2, -1
	st.h	$s0, $sp, 80
	bltz	$a3, .LBB4_32
# %bb.26:                               #   in Loop: Header=BB4_7 Depth=1
	move	$s6, $zero
	ori	$s3, $zero, 9
.LBB4_27:                               #   in Loop: Header=BB4_7 Depth=1
	bstrpick.d	$a1, $s0, 15, 0
	bgeu	$a1, $s3, .LBB4_31
# %bb.28:                               #   in Loop: Header=BB4_7 Depth=1
	ld.hu	$a2, $sp, 66
	srl.w	$a2, $a2, $s0
	or	$a0, $a0, $a2
	st.h	$a0, $sp, 82
	ori	$s4, $zero, 16
	sub.d	$a1, $s4, $a1
	addi.d	$a0, $sp, 48
	move	$s0, $a5
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	move	$a5, $s0
	ld.hu	$a1, $sp, 82
	b	.LBB4_41
.LBB4_29:                               # %.thread
                                        #   in Loop: Header=BB4_7 Depth=1
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	ld.hu	$a0, $sp, 66
	srl.w	$a0, $a0, $a2
	or	$a0, $a1, $a0
	st.h	$a0, $sp, 82
	sub.d	$a1, $s0, $a2
	addi.d	$a0, $sp, 48
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	ld.h	$a0, $sp, 82
	slli.d	$a1, $a0, 1
	ext.w.h	$a1, $a1
	bltz	$a0, .LBB4_38
# %bb.30:                               #   in Loop: Header=BB4_7 Depth=1
	move	$s6, $zero
	ori	$s4, $zero, 15
	ori	$s3, $zero, 9
	b	.LBB4_40
.LBB4_31:                               #   in Loop: Header=BB4_7 Depth=1
	move	$s4, $s0
	move	$a1, $a0
	b	.LBB4_41
.LBB4_32:                               #   in Loop: Header=BB4_7 Depth=1
	bne	$a2, $s7, .LBB4_46
# %bb.33:                               # %.thread.i56
                                        #   in Loop: Header=BB4_7 Depth=1
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	ld.h	$a1, $sp, 66
	or	$a0, $a1, $a0
	st.h	$a0, $sp, 82
	addi.d	$a0, $sp, 48
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	ld.h	$a0, $sp, 82
	slli.d	$a1, $a0, 1
	ori	$s4, $zero, 15
	bltz	$a0, .LBB4_56
# %bb.34:                               #   in Loop: Header=BB4_7 Depth=1
	ori	$s3, $zero, 10
	ori	$s6, $zero, 512
	b	.LBB4_40
.LBB4_35:                               #   in Loop: Header=BB4_7 Depth=1
	bstrpick.d	$a3, $s6, 15, 0
	ori	$a2, $zero, 2
	bgeu	$a3, $a2, .LBB4_48
# %bb.36:                               # %.thread78.i
                                        #   in Loop: Header=BB4_7 Depth=1
	ld.h	$a0, $sp, 66
	or	$a0, $a0, $a1
	st.h	$a0, $sp, 82
	addi.d	$a0, $sp, 48
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	ld.h	$a1, $sp, 82
	slli.d	$a0, $a1, 1
	ori	$s6, $zero, 15
	bltz	$a1, .LBB4_62
# %bb.37:                               #   in Loop: Header=BB4_7 Depth=1
	ori	$s8, $zero, 3
	ori	$s3, $zero, 7
	b	.LBB4_24
.LBB4_38:                               # %.thread63
                                        #   in Loop: Header=BB4_7 Depth=1
	slli.d	$a0, $a0, 2
	ori	$s4, $zero, 14
	bltz	$a1, .LBB4_50
# %bb.39:                               #   in Loop: Header=BB4_7 Depth=1
	ori	$s3, $zero, 10
	ori	$s6, $zero, 512
	move	$a1, $a0
.LBB4_40:                               # %decode_ptr.exit
                                        #   in Loop: Header=BB4_7 Depth=1
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
.LBB4_41:                               # %decode_ptr.exit
                                        #   in Loop: Header=BB4_7 Depth=1
	ori	$a4, $zero, 16
	sub.d	$a0, $a4, $s3
	bstrpick.d	$a2, $a1, 15, 0
	srl.d	$a0, $a2, $a0
	sll.d	$a1, $a1, $s3
	st.h	$a1, $sp, 82
	sub.d	$a1, $s4, $s3
	add.d	$a0, $a0, $s6
	nor	$a0, $a0, $zero
	add.d	$a0, $a0, $s1
	ext.w.h	$a2, $a0
	slti	$a2, $a2, 0
	ori	$s4, $s2, 2048
	add.d	$a3, $a0, $s4
	masknez	$a0, $a0, $a2
	maskeqz	$a2, $a3, $a2
	or	$s0, $a2, $a0
	bstrpick.d	$a0, $s0, 15, 11
	st.h	$a1, $sp, 80
	ori	$a1, $zero, 12
	bltu	$a1, $a0, .LBB4_73
# %bb.42:                               #   in Loop: Header=BB4_7 Depth=1
	sub.d	$a0, $a4, $s8
	srl.w	$a0, $a5, $a0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	addi.d	$s3, $a0, 2
	bstrpick.d	$a0, $s3, 15, 0
	ld.d	$s6, $sp, 40                    # 8-byte Folded Reload
	add.w	$s6, $s6, $a0
	ori	$s8, $zero, 16
	b	.LBB4_44
	.p2align	4, , 16
.LBB4_43:                               #   in Loop: Header=BB4_44 Depth=2
	bstrpick.d	$a0, $s3, 15, 0
	addi.d	$s3, $s3, -1
	addi.d	$a1, $s0, 1
	ext.w.h	$a2, $a1
	ori	$a3, $s2, 2047
	slt	$a2, $a3, $a2
	masknez	$s0, $a1, $a2
	bgeu	$s7, $a0, .LBB4_6
.LBB4_44:                               # %.lr.ph
                                        #   Parent Loop BB4_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 56
	ext.w.h	$a1, $s0
	ldx.b	$a1, $a0, $a1
	bstrpick.d	$a2, $s1, 31, 0
	addi.w	$s1, $s1, 1
	bstrpick.d	$a3, $s1, 31, 11
	stx.b	$a1, $a0, $a2
	bltu	$a3, $s5, .LBB4_43
# %bb.45:                               #   in Loop: Header=BB4_44 Depth=2
	ld.w	$a0, $fp, 28
	ld.d	$a1, $sp, 56
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$s1, $zero
	b	.LBB4_43
.LBB4_46:                               #   in Loop: Header=BB4_7 Depth=1
	slli.d	$a1, $a1, 2
	addi.d	$s0, $a2, -2
	st.h	$s0, $sp, 80
	bltz	$a0, .LBB4_51
# %bb.47:                               #   in Loop: Header=BB4_7 Depth=1
	ori	$s6, $zero, 512
	ori	$s3, $zero, 10
	move	$a0, $a1
	b	.LBB4_27
.LBB4_48:                               #   in Loop: Header=BB4_7 Depth=1
	slli.d	$a0, $a0, 2
	addi.d	$a2, $s6, -2
	st.h	$a2, $sp, 80
	bltz	$a1, .LBB4_53
# %bb.49:                               #   in Loop: Header=BB4_7 Depth=1
	ori	$s3, $zero, 7
	ori	$s8, $zero, 3
	move	$a1, $a0
	b	.LBB4_21
.LBB4_50:                               #   in Loop: Header=BB4_7 Depth=1
	move	$a1, $a0
	b	.LBB4_56
.LBB4_51:                               #   in Loop: Header=BB4_7 Depth=1
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	ori	$a0, $zero, 2
	bne	$a2, $a0, .LBB4_55
# %bb.52:                               #   in Loop: Header=BB4_7 Depth=1
	ld.h	$a0, $sp, 66
	or	$a0, $a0, $a1
	st.h	$a0, $sp, 82
	addi.d	$a0, $sp, 48
	ori	$a1, $zero, 16
	ori	$s4, $zero, 16
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	ld.hu	$a1, $sp, 82
	b	.LBB4_56
.LBB4_53:                               #   in Loop: Header=BB4_7 Depth=1
	ori	$a1, $zero, 2
	bne	$a3, $a1, .LBB4_61
# %bb.54:                               #   in Loop: Header=BB4_7 Depth=1
	ld.h	$a1, $sp, 66
	or	$a0, $a1, $a0
	st.h	$a0, $sp, 82
	addi.d	$a0, $sp, 48
	ori	$a1, $zero, 16
	ori	$s6, $zero, 16
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $sp, 82
	b	.LBB4_62
.LBB4_55:                               #   in Loop: Header=BB4_7 Depth=1
	move	$s4, $s0
.LBB4_56:                               # %.thread53.i
                                        #   in Loop: Header=BB4_7 Depth=1
	slli.d	$a0, $a1, 1
	ext.w.h	$a1, $a1
	addi.d	$s0, $s4, -1
	st.h	$s0, $sp, 80
	bltz	$a1, .LBB4_58
# %bb.57:                               #   in Loop: Header=BB4_7 Depth=1
	ori	$s6, $zero, 1536
	ori	$s3, $zero, 11
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	b	.LBB4_27
.LBB4_58:                               #   in Loop: Header=BB4_7 Depth=1
	bstrpick.d	$a1, $s4, 15, 0
	bltu	$s7, $a1, .LBB4_60
# %bb.59:                               #   in Loop: Header=BB4_7 Depth=1
	ld.h	$a1, $sp, 66
	or	$a0, $a1, $a0
	st.h	$a0, $sp, 82
	addi.d	$a0, $sp, 48
	ori	$a1, $zero, 16
	ori	$s0, $zero, 16
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $sp, 82
.LBB4_60:                               #   in Loop: Header=BB4_7 Depth=1
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	ext.w.h	$a1, $a0
	slli.d	$a0, $a0, 1
	addi.d	$s0, $s0, -1
	st.h	$s0, $sp, 80
	addi.w	$a2, $zero, -1
	slt	$a1, $a2, $a1
	xori	$s3, $a1, 13
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 3584
	maskeqz	$a1, $a3, $a1
	or	$s6, $a1, $a2
	b	.LBB4_27
.LBB4_61:                               #   in Loop: Header=BB4_7 Depth=1
	move	$s6, $a2
.LBB4_62:                               # %.thread79.i
                                        #   in Loop: Header=BB4_7 Depth=1
	slli.d	$a1, $a0, 1
	ext.w.h	$a1, $a1
	ext.w.h	$a3, $a0
	addi.d	$a2, $s6, -1
	st.h	$a2, $sp, 80
	bltz	$a3, .LBB4_64
# %bb.63:                               #   in Loop: Header=BB4_7 Depth=1
	ori	$s3, $zero, 15
	ori	$s8, $zero, 4
	b	.LBB4_21
.LBB4_64:                               #   in Loop: Header=BB4_7 Depth=1
	bstrpick.d	$a3, $s6, 15, 0
	ori	$a2, $zero, 2
	bgeu	$a3, $a2, .LBB4_67
# %bb.65:                               # %.thread80.i
                                        #   in Loop: Header=BB4_7 Depth=1
	ld.h	$a0, $sp, 66
	or	$a0, $a0, $a1
	st.h	$a0, $sp, 82
	addi.d	$a0, $sp, 48
	ori	$a1, $zero, 16
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	ld.h	$a1, $sp, 82
	slli.d	$a0, $a1, 1
	ori	$s6, $zero, 15
	bltz	$a1, .LBB4_72
# %bb.66:                               #   in Loop: Header=BB4_7 Depth=1
	ori	$s8, $zero, 5
	ori	$s3, $zero, 31
	b	.LBB4_24
.LBB4_67:                               #   in Loop: Header=BB4_7 Depth=1
	slli.d	$a0, $a0, 2
	addi.d	$a2, $s6, -2
	st.h	$a2, $sp, 80
	bltz	$a1, .LBB4_69
# %bb.68:                               #   in Loop: Header=BB4_7 Depth=1
	ori	$s3, $zero, 31
	ori	$s8, $zero, 5
	move	$a1, $a0
	b	.LBB4_21
.LBB4_69:                               #   in Loop: Header=BB4_7 Depth=1
	ori	$a1, $zero, 2
	bne	$a3, $a1, .LBB4_71
# %bb.70:                               #   in Loop: Header=BB4_7 Depth=1
	ld.h	$a1, $sp, 66
	or	$a0, $a1, $a0
	st.h	$a0, $sp, 82
	addi.d	$a0, $sp, 48
	ori	$a1, $zero, 16
	ori	$s6, $zero, 16
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	ld.hu	$a0, $sp, 82
	b	.LBB4_72
.LBB4_71:                               #   in Loop: Header=BB4_7 Depth=1
	move	$s6, $a2
.LBB4_72:                               # %.thread81.i
                                        #   in Loop: Header=BB4_7 Depth=1
	slli.d	$a1, $a0, 1
	ext.w.h	$a0, $a0
	addi.d	$a2, $s6, -1
	st.h	$a2, $sp, 80
	addi.w	$a3, $zero, -1
	slt	$a0, $a3, $a0
	xori	$s8, $a0, 7
	ori	$a3, $zero, 127
	masknez	$a3, $a3, $a0
	ori	$a4, $zero, 63
	maskeqz	$a0, $a4, $a0
	or	$s3, $a0, $a3
	b	.LBB4_21
.LBB4_73:
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
.LBB4_74:                               # %.loopexit69
	beqz	$s1, .LBB4_76
# %bb.75:
	ld.w	$a0, $fp, 28
	ld.d	$a1, $sp, 56
	move	$a2, $s1
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
.LBB4_76:                               # %.loopexit69.thread
	ld.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB4_77:
	lu12i.w	$a0, 2
	ori	$a0, $a0, 3264
	add.d	$sp, $sp, $a0
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
.Lfunc_end4:
	.size	decode_f, .Lfunc_end4-decode_f
                                        # -- End function
	.p2align	5                               # -- Begin function fill_buf
	.type	fill_buf,@function
fill_buf:                               # @fill_buf
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
	move	$fp, $a0
	ld.hu	$a0, $a0, 18
	ld.w	$s3, $fp, 24
	move	$s0, $a1
	sll.w	$a1, $a0, $a1
	bge	$s3, $s0, .LBB5_18
# %bb.1:                                # %.lr.ph
	ld.bu	$a0, $fp, 20
	ld.w	$a2, $fp, 28
	addi.d	$s1, $fp, 20
	sub.w	$s0, $s0, $s3
	sll.w	$a0, $a0, $s0
	or	$a1, $a1, $a0
	beqz	$a2, .LBB5_9
# %bb.2:
	ld.w	$a0, $fp, 0
	st.h	$a1, $fp, 18
	addi.d	$a1, $a2, -1
	st.w	$a1, $fp, 28
	ori	$a2, $zero, 1
	ori	$s3, $zero, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	addi.w	$s2, $zero, -123
	bne	$a0, $s3, .LBB5_19
# %bb.3:
	ori	$s3, $zero, 8
	ori	$a0, $zero, 9
	st.w	$s3, $fp, 24
	blt	$s0, $a0, .LBB5_17
# %bb.4:
	ori	$s4, $zero, 8
	ori	$s5, $zero, 16
	ori	$s6, $zero, 1
	b	.LBB5_7
	.p2align	4, , 16
.LBB5_5:                                #   in Loop: Header=BB5_7 Depth=1
	st.b	$zero, $s1, 0
.LBB5_6:                                #   in Loop: Header=BB5_7 Depth=1
	addi.w	$a0, $s0, 8
	st.w	$s4, $fp, 24
	bgeu	$s5, $a0, .LBB5_17
.LBB5_7:                                # %.lr.ph.split
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $fp, 20
	ld.h	$a2, $fp, 18
	ld.w	$a1, $fp, 28
	addi.d	$s0, $s0, -8
	sll.w	$a0, $a0, $s0
	or	$a0, $a2, $a0
	st.h	$a0, $fp, 18
	beqz	$a1, .LBB5_5
# %bb.8:                                #   in Loop: Header=BB5_7 Depth=1
	ld.w	$a0, $fp, 0
	addi.d	$a1, $a1, -1
	st.w	$a1, $fp, 28
	ori	$a2, $zero, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	beq	$a0, $s6, .LBB5_6
	b	.LBB5_19
.LBB5_9:                                # %.lr.ph.split.us
	ori	$a0, $zero, 9
	blt	$s0, $a0, .LBB5_16
# %bb.10:                               # %.peel.next.preheader
	addi.w	$a0, $s0, -9
	ori	$a2, $zero, 8
	bltu	$a0, $a2, .LBB5_14
# %bb.11:                               # %vector.ph
	bstrpick.d	$a0, $a0, 31, 3
	addi.d	$a2, $a0, 1
	bstrpick.d	$a3, $a2, 29, 1
	slli.w	$a0, $a3, 1
	slli.d	$a3, $a3, 4
	sub.w	$s0, $s0, $a3
	move	$a3, $a0
	.p2align	4, , 16
.LBB5_12:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$a3, $a3, -2
	bnez	$a3, .LBB5_12
# %bb.13:                               # %middle.block
	addi.w	$a2, $a2, 0
	beq	$a2, $a0, .LBB5_16
.LBB5_14:                               # %.peel.next.preheader58
	ori	$a0, $zero, 16
	.p2align	4, , 16
.LBB5_15:                               # %.peel.next
                                        # =>This Inner Loop Header: Depth=1
	move	$a2, $s0
	addi.w	$s0, $s0, -8
	bltu	$a0, $a2, .LBB5_15
.LBB5_16:                               # %._crit_edge.split.us
	st.b	$zero, $s1, 0
	ori	$s3, $zero, 8
	b	.LBB5_18
.LBB5_17:                               # %._crit_edge.loopexit
	ld.hu	$a1, $fp, 18
.LBB5_18:                               # %._crit_edge
	ld.bu	$a0, $fp, 20
	move	$s2, $zero
	sub.d	$a2, $s3, $s0
	st.w	$a2, $fp, 24
	srl.w	$a0, $a0, $a2
	or	$a0, $a1, $a0
	st.h	$a0, $fp, 18
.LBB5_19:                               # %.loopexit
	move	$a0, $s2
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
.Lfunc_end5:
	.size	fill_buf, .Lfunc_end5-fill_buf
                                        # -- End function
	.p2align	5                               # -- Begin function read_pt_len
	.type	read_pt_len,@function
read_pt_len:                            # @read_pt_len
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
	move	$s1, $a1
	move	$s0, $a0
	ld.hu	$s3, $a0, 18
	lu12i.w	$s2, 3
	ori	$a0, $s2, 546
	add.d	$fp, $s0, $a0
	ori	$a1, $zero, 5
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	srli.d	$a0, $s3, 11
	bnez	$a0, .LBB6_2
# %bb.1:                                # %.preheader
	ld.hu	$s1, $s0, 18
	ori	$a1, $zero, 5
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	ori	$a0, $s2, 526
	add.d	$a1, $s0, $a0
	vrepli.b	$vr0, 0
	vstx	$vr0, $s0, $a0
	st.w	$zero, $a1, 15
	srli.d	$a0, $s1, 11
	vreplgr2vr.h	$vr0, $a0
	vst	$vr0, $fp, 0
	vst	$vr0, $fp, 16
	vst	$vr0, $fp, 32
	vst	$vr0, $fp, 48
	vst	$vr0, $fp, 64
	vst	$vr0, $fp, 80
	vst	$vr0, $fp, 96
	vst	$vr0, $fp, 112
	vst	$vr0, $fp, 128
	vst	$vr0, $fp, 144
	vst	$vr0, $fp, 160
	vst	$vr0, $fp, 176
	vst	$vr0, $fp, 192
	vst	$vr0, $fp, 208
	vst	$vr0, $fp, 224
	vst	$vr0, $fp, 240
	vst	$vr0, $fp, 256
	vst	$vr0, $fp, 272
	vst	$vr0, $fp, 288
	vst	$vr0, $fp, 304
	vst	$vr0, $fp, 320
	vst	$vr0, $fp, 336
	vst	$vr0, $fp, 352
	vst	$vr0, $fp, 368
	vst	$vr0, $fp, 384
	vst	$vr0, $fp, 400
	vst	$vr0, $fp, 416
	vst	$vr0, $fp, 432
	vst	$vr0, $fp, 448
	vst	$vr0, $fp, 464
	vst	$vr0, $fp, 480
	vst	$vr0, $fp, 496
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
.LBB6_2:                                # %.lr.ph64
	move	$a1, $zero
	sltui	$a2, $a0, 19
	ori	$a3, $zero, 19
	masknez	$a3, $a3, $a2
	maskeqz	$a0, $a0, $a2
	or	$s5, $a0, $a3
	ori	$a0, $s2, 526
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	add.d	$s2, $s0, $a0
	add.d	$a0, $s2, $s1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$s7, $zero, 18
	sub.d	$s8, $s7, $s1
	ori	$s6, $zero, 2
	b	.LBB6_4
	.p2align	4, , 16
.LBB6_3:                                # %.loopexit53
                                        #   in Loop: Header=BB6_4 Depth=1
	bge	$a1, $s5, .LBB6_15
.LBB6_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_8 Depth 2
                                        #     Child Loop BB6_13 Depth 2
	ld.hu	$a0, $s0, 18
	move	$s3, $a1
	srli.d	$s4, $a0, 13
	ori	$a1, $zero, 3
	ori	$a2, $zero, 7
	bne	$s4, $a2, .LBB6_10
# %bb.5:                                # %.preheader54
                                        #   in Loop: Header=BB6_4 Depth=1
	slli.d	$a1, $a0, 51
	bltz	$a1, .LBB6_7
# %bb.6:                                #   in Loop: Header=BB6_4 Depth=1
	ori	$a1, $zero, 4
	ori	$s4, $zero, 7
	b	.LBB6_10
	.p2align	4, , 16
.LBB6_7:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB6_4 Depth=1
	ori	$s4, $zero, 7
	lu12i.w	$a1, 1
	.p2align	4, , 16
.LBB6_8:                                # %.lr.ph
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a1, $a1, 31, 1
	addi.d	$a2, $s4, 1
	and	$a3, $a1, $a0
	ext.w.h	$s4, $a2
	bnez	$a3, .LBB6_8
# %bb.9:                                # %.loopexit55
                                        #   in Loop: Header=BB6_4 Depth=1
	slti	$a0, $s4, 7
	addi.d	$a1, $s4, -3
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 3
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
.LBB6_10:                               # %.loopexit55.thread
                                        #   in Loop: Header=BB6_4 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	addi.w	$a1, $s3, 1
	stx.b	$s4, $s2, $s3
	bne	$a1, $s1, .LBB6_3
# %bb.11:                               #   in Loop: Header=BB6_4 Depth=1
	ld.hu	$s4, $s0, 18
	ori	$a1, $zero, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fill_buf)
	jirl	$ra, $ra, 0
	srli.d	$s4, $s4, 14
	move	$a1, $s1
	beqz	$s4, .LBB6_3
# %bb.12:                               # %.lr.ph61.preheader
                                        #   in Loop: Header=BB6_4 Depth=1
	ori	$a0, $zero, 17
	sub.d	$a0, $a0, $s3
	bstrpick.d	$a0, $a0, 31, 0
	addi.d	$s3, $s4, -1
	bstrpick.d	$a1, $s3, 15, 0
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	addi.d	$a2, $a0, 1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	sltu	$a0, $s4, $s3
	masknez	$a0, $s3, $a0
	sltu	$a1, $s8, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s8, $a1
	or	$a0, $a1, $a0
	addi.d	$a1, $s1, 1
	add.w	$a1, $a1, $a0
	move	$a0, $s1
	.p2align	4, , 16
.LBB6_13:                               # %.lr.ph61
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bstrpick.d	$a3, $s4, 15, 0
	bltu	$a3, $s6, .LBB6_3
# %bb.14:                               # %.lr.ph61
                                        #   in Loop: Header=BB6_13 Depth=2
	move	$a2, $a0
	addi.d	$s4, $s4, -1
	addi.d	$a0, $a0, 1
	blt	$a2, $s7, .LBB6_13
	b	.LBB6_3
.LBB6_15:                               # %.preheader52
	ori	$a0, $zero, 18
	blt	$a0, $a1, .LBB6_17
# %bb.16:                               # %.lr.ph67
	add.d	$a0, $s0, $a1
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	ori	$a2, $zero, 19
	sub.d	$a1, $a2, $a1
	bstrpick.d	$a2, $a1, 31, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB6_17:                               # %._crit_edge
	ori	$a1, $zero, 19
	ori	$a3, $zero, 8
	ori	$a5, $zero, 256
	move	$a0, $s0
	move	$a2, $s2
	move	$a4, $fp
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
	pcaddu18i	$t8, %call36(make_table)
	jr	$t8
.Lfunc_end6:
	.size	read_pt_len, .Lfunc_end6-read_pt_len
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function make_table
.LCPI7_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.text
	.p2align	5
	.type	make_table,@function
make_table:                             # @make_table
# %bb.0:                                # %.preheader106.preheader
	addi.d	$sp, $sp, -176
	st.d	$fp, $sp, 168                   # 8-byte Folded Spill
	st.d	$s0, $sp, 160                   # 8-byte Folded Spill
	st.d	$s1, $sp, 152                   # 8-byte Folded Spill
	st.d	$s2, $sp, 144                   # 8-byte Folded Spill
	st.d	$s3, $sp, 136                   # 8-byte Folded Spill
	st.d	$s4, $sp, 128                   # 8-byte Folded Spill
	st.d	$s5, $sp, 120                   # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 88
	vst	$vr0, $sp, 104
	addi.d	$a6, $sp, 86
	move	$a7, $a1
	move	$t0, $a2
	.p2align	4, , 16
.LBB7_1:                                # %.preheader106
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$t1, $t0, 0
	slli.d	$t1, $t1, 1
	ldx.h	$t2, $t1, $a6
	addi.d	$t2, $t2, 1
	stx.h	$t2, $t1, $a6
	addi.d	$a7, $a7, -1
	addi.d	$t0, $t0, 1
	bnez	$a7, .LBB7_1
# %bb.2:
	ld.h	$a6, $sp, 88
	ld.h	$a7, $sp, 90
	slli.d	$a6, $a6, 15
	st.h	$a6, $sp, 20
	ld.h	$t0, $sp, 92
	slli.d	$a7, $a7, 14
	add.d	$a6, $a6, $a7
	st.h	$a6, $sp, 22
	slli.d	$a7, $t0, 13
	ld.h	$t0, $sp, 94
	add.d	$a6, $a6, $a7
	st.h	$a6, $sp, 24
	ld.h	$a7, $sp, 96
	slli.d	$t0, $t0, 12
	add.d	$a6, $a6, $t0
	st.h	$a6, $sp, 26
	slli.d	$a7, $a7, 11
	ld.h	$t0, $sp, 98
	add.d	$a6, $a6, $a7
	st.h	$a6, $sp, 28
	ld.h	$a7, $sp, 100
	slli.d	$t0, $t0, 10
	add.d	$a6, $a6, $t0
	st.h	$a6, $sp, 30
	slli.d	$a7, $a7, 9
	ld.h	$t0, $sp, 102
	add.d	$a6, $a6, $a7
	st.h	$a6, $sp, 32
	ld.h	$a7, $sp, 104
	slli.d	$t0, $t0, 8
	add.d	$a6, $a6, $t0
	st.h	$a6, $sp, 34
	slli.d	$a7, $a7, 7
	ld.h	$t0, $sp, 106
	add.d	$a6, $a6, $a7
	st.h	$a6, $sp, 36
	ld.h	$a7, $sp, 108
	slli.d	$t0, $t0, 6
	add.d	$a6, $a6, $t0
	st.h	$a6, $sp, 38
	slli.d	$a7, $a7, 5
	ld.h	$t0, $sp, 110
	add.d	$a6, $a6, $a7
	st.h	$a6, $sp, 40
	ld.h	$a7, $sp, 112
	alsl.d	$a6, $t0, $a6, 4
	st.h	$a6, $sp, 42
	ld.h	$t0, $sp, 114
	alsl.d	$a6, $a7, $a6, 3
	st.h	$a6, $sp, 44
	ld.h	$a7, $sp, 116
	alsl.d	$a6, $t0, $a6, 2
	st.h	$a6, $sp, 46
	ld.h	$t0, $sp, 118
	alsl.d	$a6, $a7, $a6, 1
	st.h	$zero, $sp, 18
	st.h	$a6, $sp, 48
	add.d	$a6, $a6, $t0
	slli.d	$a7, $a6, 48
	st.h	$a6, $sp, 50
	beqz	$a7, .LBB7_4
.LBB7_3:                                # %.loopexit103
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB7_4:
	ori	$a6, $zero, 16
	sub.d	$a6, $a6, $a3
	bstrpick.d	$t0, $a3, 31, 0
	ori	$a7, $zero, 18
	sub.w	$t2, $a7, $a3
	addi.d	$a7, $sp, 56
	ori	$t1, $zero, 14
	addi.d	$t3, $sp, 18
	ori	$t4, $zero, 1
	move	$t5, $t0
	.p2align	4, , 16
.LBB7_5:                                # =>This Inner Loop Header: Depth=1
	ld.hu	$t6, $t3, 0
	srl.w	$t6, $t6, $a6
	st.h	$t6, $t3, 0
	add.d	$t6, $a3, $t1
	addi.d	$t6, $t6, -15
	sll.w	$t6, $t4, $t6
	st.h	$t6, $a7, -2
	addi.d	$a7, $a7, 2
	addi.d	$t1, $t1, -1
	addi.d	$t5, $t5, -1
	addi.d	$t3, $t3, 2
	bnez	$t5, .LBB7_5
# %bb.6:                                # %vector.ph
	move	$t3, $zero
	bstrpick.d	$t4, $t2, 31, 0
	addi.d	$t2, $t4, -1
	bstrins.d	$t2, $zero, 0, 0
	pcalau12i	$t5, %pc_hi20(.LCPI7_0)
	vld	$vr1, $t5, %pc_lo12(.LCPI7_0)
	addi.d	$t4, $t4, -3
	vreplgr2vr.d	$vr2, $t4
	ori	$t4, $zero, 1
	b	.LBB7_8
	.p2align	4, , 16
.LBB7_7:                                # %pred.store.continue5
                                        #   in Loop: Header=BB7_8 Depth=1
	addi.d	$t3, $t3, 2
	addi.d	$t1, $t1, -2
	addi.d	$a7, $a7, 4
	beq	$t2, $t3, .LBB7_12
.LBB7_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vreplgr2vr.d	$vr3, $t3
	vor.v	$vr3, $vr3, $vr1
	vsle.du	$vr3, $vr3, $vr2
	vpickve2gr.d	$t5, $vr3, 0
	andi	$t5, $t5, 1
	bnez	$t5, .LBB7_10
# %bb.9:                                # %pred.store.continue
                                        #   in Loop: Header=BB7_8 Depth=1
	vpickve2gr.d	$t5, $vr3, 1
	andi	$t5, $t5, 1
	beqz	$t5, .LBB7_7
	b	.LBB7_11
	.p2align	4, , 16
.LBB7_10:                               # %pred.store.if
                                        #   in Loop: Header=BB7_8 Depth=1
	addi.d	$t5, $t1, 1
	sll.w	$t5, $t4, $t5
	st.h	$t5, $a7, -2
	vpickve2gr.d	$t5, $vr3, 1
	andi	$t5, $t5, 1
	beqz	$t5, .LBB7_7
.LBB7_11:                               # %pred.store.if4
                                        #   in Loop: Header=BB7_8 Depth=1
	sll.w	$t5, $t4, $t1
	st.h	$t5, $a7, 0
	b	.LBB7_7
.LBB7_12:                               # %._crit_edge
	addi.d	$a7, $sp, 16
	alsl.d	$t0, $t0, $a7, 1
	ld.hu	$t0, $t0, 2
	srl.w	$t2, $t0, $a6
	beqz	$t2, .LBB7_27
# %bb.13:
	ori	$t0, $zero, 1
	sll.w	$t0, $t0, $a3
	beq	$t0, $t2, .LBB7_27
# %bb.14:                               # %iter.check
	sub.w	$t1, $t0, $t2
	ori	$t3, $zero, 8
	bgeu	$t1, $t3, .LBB7_16
# %bb.15:
	move	$t4, $t2
	b	.LBB7_26
.LBB7_16:                               # %vector.main.loop.iter.check
	ori	$t3, $zero, 16
	bgeu	$t1, $t3, .LBB7_21
# %bb.17:
	move	$t3, $zero
.LBB7_18:                               # %vec.epilog.ph
	move	$t5, $t1
	bstrins.d	$t5, $zero, 2, 0
	add.w	$t4, $t2, $t5
	sub.d	$t6, $t3, $t5
	add.w	$t2, $t3, $t2
	.p2align	4, , 16
.LBB7_19:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t3, $t2, 31, 0
	slli.d	$t3, $t3, 1
	vstx	$vr0, $a4, $t3
	addi.w	$t6, $t6, 8
	addi.w	$t2, $t2, 8
	bnez	$t6, .LBB7_19
# %bb.20:                               # %vec.epilog.middle.block
	bne	$t1, $t5, .LBB7_26
	b	.LBB7_27
.LBB7_21:                               # %vector.ph8
	move	$t3, $t1
	bstrins.d	$t3, $zero, 3, 0
	andi	$t4, $t1, 8
	move	$t5, $t2
	move	$t6, $t3
	.p2align	4, , 16
.LBB7_22:                               # %vector.body11
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$t7, $t5, 31, 0
	alsl.d	$t8, $t7, $a4, 1
	slli.d	$t7, $t7, 1
	vstx	$vr0, $a4, $t7
	vst	$vr0, $t8, 16
	addi.w	$t6, $t6, -16
	addi.w	$t5, $t5, 16
	bnez	$t6, .LBB7_22
# %bb.23:                               # %middle.block14
	beq	$t1, $t3, .LBB7_27
# %bb.24:                               # %vec.epilog.iter.check
	bnez	$t4, .LBB7_18
# %bb.25:
	add.w	$t4, $t2, $t3
	.p2align	4, , 16
.LBB7_26:                               # %.lr.ph115
                                        # =>This Inner Loop Header: Depth=1
	addi.w	$t1, $t4, 1
	bstrpick.d	$t2, $t4, 31, 0
	slli.d	$t2, $t2, 1
	stx.h	$zero, $a4, $t2
	move	$t4, $t1
	bne	$t0, $t1, .LBB7_26
.LBB7_27:                               # %.loopexit104
	move	$t0, $zero
	xori	$t1, $a3, 15
	ori	$t2, $zero, 1
	sll.w	$t1, $t2, $t1
	addi.d	$t2, $a0, 36
	addi.d	$a0, $a0, 2047
	addi.d	$a0, $a0, 27
	addi.d	$t3, $a4, 16
	addi.d	$t4, $sp, 52
	ori	$t5, $zero, 8
	ori	$t6, $zero, 16
	move	$t7, $a1
	b	.LBB7_31
	.p2align	4, , 16
.LBB7_28:                               # %._crit_edge125
                                        #   in Loop: Header=BB7_31 Depth=1
	st.h	$t0, $s2, 0
.LBB7_29:                               # %.loopexit
                                        #   in Loop: Header=BB7_31 Depth=1
	alsl.d	$t8, $t8, $a7, 1
	st.h	$fp, $t8, 0
.LBB7_30:                               #   in Loop: Header=BB7_31 Depth=1
	addi.d	$t0, $t0, 1
	beq	$t0, $a1, .LBB7_3
.LBB7_31:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_48 Depth 2
                                        #     Child Loop BB7_45 Depth 2
                                        #     Child Loop BB7_53 Depth 2
                                        #     Child Loop BB7_36 Depth 2
	ldx.bu	$t8, $a2, $t0
	beqz	$t8, .LBB7_30
# %bb.32:                               #   in Loop: Header=BB7_31 Depth=1
	slli.d	$fp, $t8, 1
	ldx.hu	$s0, $fp, $a7
	ldx.hu	$s1, $fp, $t4
	add.d	$fp, $s1, $s0
	bgeu	$a3, $t8, .LBB7_38
# %bb.33:                               #   in Loop: Header=BB7_31 Depth=1
	srl.w	$s1, $s0, $a6
	bstrpick.d	$s1, $s1, 31, 0
	sub.w	$s3, $t8, $a3
	alsl.d	$s2, $s1, $a4, 1
	beqz	$s3, .LBB7_28
# %bb.34:                               # %.lr.ph124.preheader
                                        #   in Loop: Header=BB7_31 Depth=1
	sub.w	$s1, $a3, $t8
	b	.LBB7_36
	.p2align	4, , 16
.LBB7_35:                               #   in Loop: Header=BB7_36 Depth=2
	and	$s2, $s0, $t1
	sltui	$s2, $s2, 1
	bstrpick.d	$s3, $s3, 15, 0
	masknez	$s4, $a0, $s2
	maskeqz	$s2, $t2, $s2
	or	$s2, $s2, $s4
	alsl.d	$s2, $s3, $s2, 1
	bstrpick.d	$s1, $s1, 31, 0
	addi.d	$s1, $s1, 1
	slli.d	$s3, $s1, 31
	slli.w	$s0, $s0, 1
	bltz	$s3, .LBB7_28
.LBB7_36:                               # %.lr.ph124
                                        #   Parent Loop BB7_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.hu	$s3, $s2, 0
	bnez	$s3, .LBB7_35
# %bb.37:                               #   in Loop: Header=BB7_36 Depth=2
	slli.d	$s3, $t7, 1
	bstrpick.d	$s3, $s3, 32, 1
	slli.d	$s3, $s3, 1
	stx.h	$zero, $t2, $s3
	stx.h	$zero, $a0, $s3
	addi.w	$s4, $t7, 1
	st.h	$t7, $s2, 0
	move	$s3, $t7
	move	$t7, $s4
	b	.LBB7_35
	.p2align	4, , 16
.LBB7_38:                               #   in Loop: Header=BB7_31 Depth=1
	bltu	$a5, $fp, .LBB7_3
# %bb.39:                               # %.preheader
                                        #   in Loop: Header=BB7_31 Depth=1
	beqz	$s1, .LBB7_29
# %bb.40:                               # %iter.check23
                                        #   in Loop: Header=BB7_31 Depth=1
	addi.d	$s1, $s0, 1
	sltu	$s2, $fp, $s1
	masknez	$s3, $fp, $s2
	maskeqz	$s1, $s1, $s2
	or	$s1, $s1, $s3
	sub.d	$s1, $s1, $s0
	bgeu	$s1, $t5, .LBB7_42
# %bb.41:                               #   in Loop: Header=BB7_31 Depth=1
	move	$s2, $s0
	b	.LBB7_52
.LBB7_42:                               # %vector.main.loop.iter.check25
                                        #   in Loop: Header=BB7_31 Depth=1
	vreplgr2vr.h	$vr0, $t0
	bgeu	$s1, $t6, .LBB7_47
# %bb.43:                               #   in Loop: Header=BB7_31 Depth=1
	move	$s3, $zero
.LBB7_44:                               # %vec.epilog.ph40
                                        #   in Loop: Header=BB7_31 Depth=1
	move	$s4, $s1
	bstrins.d	$s4, $zero, 2, 0
	add.d	$s2, $s4, $s0
	slli.d	$s5, $s3, 1
	alsl.d	$s0, $s0, $s5, 1
	add.d	$s0, $a4, $s0
	sub.d	$s3, $s3, $s4
	.p2align	4, , 16
.LBB7_45:                               # %vec.epilog.vector.body45
                                        #   Parent Loop BB7_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $s0, 0
	addi.d	$s3, $s3, 8
	addi.d	$s0, $s0, 16
	bnez	$s3, .LBB7_45
# %bb.46:                               # %vec.epilog.middle.block49
                                        #   in Loop: Header=BB7_31 Depth=1
	beq	$s1, $s4, .LBB7_29
	b	.LBB7_52
.LBB7_47:                               # %vector.ph26
                                        #   in Loop: Header=BB7_31 Depth=1
	andi	$s2, $s1, 8
	move	$s3, $s1
	bstrins.d	$s3, $zero, 3, 0
	alsl.d	$s4, $s0, $t3, 1
	move	$s5, $s3
	.p2align	4, , 16
.LBB7_48:                               # %vector.body31
                                        #   Parent Loop BB7_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vst	$vr0, $s4, -16
	vst	$vr0, $s4, 0
	addi.d	$s5, $s5, -16
	addi.d	$s4, $s4, 32
	bnez	$s5, .LBB7_48
# %bb.49:                               # %middle.block34
                                        #   in Loop: Header=BB7_31 Depth=1
	beq	$s1, $s3, .LBB7_29
# %bb.50:                               # %vec.epilog.iter.check38
                                        #   in Loop: Header=BB7_31 Depth=1
	bnez	$s2, .LBB7_44
# %bb.51:                               #   in Loop: Header=BB7_31 Depth=1
	add.d	$s2, $s3, $s0
.LBB7_52:                               # %vec.epilog.scalar.ph37.preheader
                                        #   in Loop: Header=BB7_31 Depth=1
	alsl.d	$s0, $s2, $a4, 1
	.p2align	4, , 16
.LBB7_53:                               # %vec.epilog.scalar.ph37
                                        #   Parent Loop BB7_31 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.h	$t0, $s0, 0
	addi.d	$s2, $s2, 1
	addi.d	$s0, $s0, 2
	bltu	$s2, $fp, .LBB7_53
	b	.LBB7_29
.Lfunc_end7:
	.size	make_table, .Lfunc_end7-make_table
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"in cli_unarj_open\n"
	.size	.L.str, 19

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Not in ARJ format\n"
	.size	.L.str.1, 19

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Failed to read main header\n"
	.size	.L.str.2, 28

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"in cli_unarj_prepare_file\n"
	.size	.L.str.3, 27

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"in cli_unarj_extract_file\n"
	.size	.L.str.4, 27

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"PASSWORDed file (skipping)\n"
	.size	.L.str.5, 28

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Target offset: %ld\n"
	.size	.L.str.6, 20

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"%s/file.uar"
	.size	.L.str.7, 12

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Filename: %s\n"
	.size	.L.str.8, 14

	.type	.L__const.is_arj_archive.header_id,@object # @__const.is_arj_archive.header_id
	.section	.rodata,"a",@progbits
.L__const.is_arj_archive.header_id:
	.ascii	"`\352"
	.size	.L__const.is_arj_archive.header_id, 2

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.9:
	.asciz	"Not an ARJ archive\n"
	.size	.L.str.9, 20

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Header Size: %d\n"
	.size	.L.str.10, 17

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"arj_read_header: invalid header_size: %u\n "
	.size	.L.str.11, 43

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"ARJ Main File Header\n"
	.size	.L.str.12, 22

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"First Header Size: %d\n"
	.size	.L.str.13, 23

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Version: %d\n"
	.size	.L.str.14, 13

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Min version: %d\n"
	.size	.L.str.15, 17

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Host OS: %d\n"
	.size	.L.str.16, 13

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Flags: 0x%x\n"
	.size	.L.str.17, 13

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Security version: %d\n"
	.size	.L.str.18, 22

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"File type: %d\n"
	.size	.L.str.19, 15

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Format error. First Header Size < 30\n"
	.size	.L.str.20, 38

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"Comment: %s\n"
	.size	.L.str.21, 13

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"Extended header size: %d\n"
	.size	.L.str.22, 26

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"arj_read_file_header: invalid header_size: %u\n "
	.size	.L.str.23, 48

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"ARJ File Header\n"
	.size	.L.str.24, 17

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"Method: %d\n"
	.size	.L.str.25, 12

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"Compressed size: %u\n"
	.size	.L.str.26, 21

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"Original size: %u\n"
	.size	.L.str.27, 19

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"in arj_unstore\n"
	.size	.L.str.28, 16

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"UNARJ: bounds exceeded - probably a corrupted file.\n"
	.size	.L.str.29, 53

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"ERROR: bounds exceeded\n"
	.size	.L.str.30, 24

	.section	".note.GNU-stack","",@progbits
	.addrsig
