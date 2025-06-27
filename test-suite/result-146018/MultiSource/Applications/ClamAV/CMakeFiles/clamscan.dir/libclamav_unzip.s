	.file	"libclamav_unzip.c"
	.text
	.globl	zip_dir_close                   # -- Begin function zip_dir_close
	.p2align	5
	.type	zip_dir_close,@function
zip_dir_close:                          # @zip_dir_close
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 24
	beqz	$a0, .LBB0_2
# %bb.1:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_2:
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB0_4
# %bb.3:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_4:
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB0_6
# %bb.5:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_6:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	zip_dir_close, .Lfunc_end0-zip_dir_close
                                        # -- End function
	.globl	zip_dir_open                    # -- Begin function zip_dir_open
	.p2align	5
	.type	zip_dir_open,@function
zip_dir_open:                           # @zip_dir_open
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s2, $a1
	move	$s1, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 72
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_5
# %bb.1:
	move	$s0, $a0
	beqz	$s2, .LBB1_6
# %bb.2:
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	addi.w	$a1, $zero, -1
	bne	$a0, $a1, .LBB1_7
# %bb.3:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $s1
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	beqz	$fp, .LBB1_19
# %bb.4:
	addi.d	$a0, $zero, -123
	b	.LBB1_18
.LBB1_5:
	move	$s0, $zero
	bnez	$fp, .LBB1_15
	b	.LBB1_19
.LBB1_6:
	move	$s2, $zero
.LBB1_7:                                # %.split
	st.w	$s1, $s0, 0
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(__zip_dir_parse)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s0, 24
	beqz	$a0, .LBB1_16
# %bb.8:
	beqz	$a1, .LBB1_10
# %bb.9:
	move	$a0, $a1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_10:
	ld.d	$a0, $s0, 8
	beqz	$a0, .LBB1_12
# %bb.11:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_12:
	ld.d	$a0, $s0, 16
	beqz	$a0, .LBB1_14
# %bb.13:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_14:                               # %zip_dir_close.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$s0, $zero
	beqz	$fp, .LBB1_19
.LBB1_15:
	addi.d	$a0, $zero, -114
	b	.LBB1_18
.LBB1_16:
	st.d	$a1, $s0, 32
	beqz	$fp, .LBB1_19
# %bb.17:
	move	$a0, $zero
.LBB1_18:                               # %.sink.split
	st.w	$a0, $fp, 0
.LBB1_19:
	move	$a0, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end1:
	.size	zip_dir_open, .Lfunc_end1-zip_dir_open
                                        # -- End function
	.p2align	5                               # -- Begin function __zip_dir_parse
	.type	__zip_dir_parse,@function
__zip_dir_parse:                        # @__zip_dir_parse
# %bb.0:
	addi.d	$sp, $sp, -544
	st.d	$ra, $sp, 536                   # 8-byte Folded Spill
	st.d	$fp, $sp, 528                   # 8-byte Folded Spill
	st.d	$s0, $sp, 520                   # 8-byte Folded Spill
	st.d	$s1, $sp, 512                   # 8-byte Folded Spill
	st.d	$s2, $sp, 504                   # 8-byte Folded Spill
	st.d	$s3, $sp, 496                   # 8-byte Folded Spill
	st.d	$s4, $sp, 488                   # 8-byte Folded Spill
	st.d	$s5, $sp, 480                   # 8-byte Folded Spill
	st.d	$s6, $sp, 472                   # 8-byte Folded Spill
	st.d	$s7, $sp, 464                   # 8-byte Folded Spill
	st.d	$s8, $sp, 456                   # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 0
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a1, $sp, 152
	pcaddu18i	$ra, %call36(fstat)
	jirl	$ra, $ra, 0
	ld.w	$s1, $fp, 0
	addi.w	$a1, $zero, -1
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	beq	$a0, $a1, .LBB2_4
# %bb.1:
	ld.d	$s2, $sp, 200
	ori	$a0, $zero, 21
	blt	$a0, $s2, .LBB2_6
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
.LBB2_3:                                # %__zip_parse_root_directory.exit
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB2_34
.LBB2_4:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	move	$a1, $s1
.LBB2_5:
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	b	.LBB2_33
.LBB2_6:
	ori	$a0, $zero, 1024
	ori	$s3, $zero, 1024
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_63
# %bb.7:                                # %.lr.ph102.i
	move	$s8, $a0
	st.d	$fp, $sp, 8                     # 8-byte Folded Spill
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	bstrpick.d	$a0, $s2, 31, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	sltui	$a0, $s2, 1024
	addi.w	$a1, $zero, -1002
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	addi.w	$a1, $zero, -1024
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	masknez	$a0, $s3, $a0
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, 24660
	ori	$a0, $a0, 2896
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.w	$a0, $s2, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	lu12i.w	$a0, 8212
	ori	$a0, $a0, 2896
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	move	$s0, $s2
	st.d	$s1, $sp, 104                   # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	b	.LBB2_9
	.p2align	4, , 16
.LBB2_8:                                # %.loopexit81.i
                                        #   in Loop: Header=BB2_9 Depth=1
	ld.d	$s1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ori	$s3, $zero, 1024
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	blez	$a0, .LBB2_35
.LBB2_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_15 Depth 2
	ori	$a0, $zero, 1023
	sltu	$fp, $a0, $s0
	xor	$a0, $s0, $s2
	sltui	$a0, $a0, 1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	add.d	$s4, $a0, $s0
	maskeqz	$s6, $s4, $fp
	move	$a0, $s1
	move	$a1, $s6
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB2_31
# %bb.10:                               #   in Loop: Header=BB2_9 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	maskeqz	$a0, $s0, $a0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	or	$a0, $a0, $a1
	masknez	$a0, $a0, $fp
	maskeqz	$a1, $s3, $fp
	or	$s5, $a1, $a0
	move	$a0, $s1
	move	$a1, $s8
	move	$a2, $s5
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	blt	$a0, $s5, .LBB2_29
# %bb.11:                               #   in Loop: Header=BB2_9 Depth=1
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	add.d	$a0, $s8, $s5
	addi.d	$a0, $a0, -1
	st.d	$s6, $sp, 80                    # 8-byte Folded Spill
	bltu	$a0, $s8, .LBB2_8
# %bb.12:                               # %.lr.ph.i
                                        #   in Loop: Header=BB2_9 Depth=1
	addi.d	$s7, $s6, -1
	add.d	$s2, $s7, $s5
	ori	$fp, $zero, 1
	move	$s1, $s8
	ori	$s0, $zero, 80
	ori	$a7, $zero, 20
	b	.LBB2_15
.LBB2_13:                               #   in Loop: Header=BB2_15 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a7, $zero, 20
	.p2align	4, , 16
.LBB2_14:                               # %.loopexit.i
                                        #   in Loop: Header=BB2_15 Depth=2
	addi.d	$fp, $fp, 1
	addi.d	$s1, $s1, -1
	addi.d	$s7, $s7, -1
	add.d	$a0, $s1, $s5
	addi.d	$a0, $a0, -1
	addi.d	$s2, $s2, -1
	bltu	$a0, $s8, .LBB2_8
.LBB2_15:                               #   Parent Loop BB2_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a0, $s1, $s5
	ld.bu	$a1, $a0, -1
	bne	$a1, $s0, .LBB2_14
# %bb.16:                               #   in Loop: Header=BB2_15 Depth=2
	blt	$fp, $a7, .LBB2_14
# %bb.17:                               #   in Loop: Header=BB2_15 Depth=2
	ld.w	$a1, $a0, -1
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	bne	$a1, $a2, .LBB2_14
# %bb.18:                               # %__fixup_rootseek.exit.i
                                        #   in Loop: Header=BB2_15 Depth=2
	ld.wu	$a6, $a0, 11
	ld.wu	$a1, $a0, 15
	add.d	$a2, $s5, $s7
	sub.d	$a3, $a2, $a6
	slt	$a3, $a3, $a1
	slt	$a2, $a6, $a2
	sub.d	$a4, $s2, $a6
	masknez	$a5, $a1, $a3
	maskeqz	$a3, $a4, $a3
	or	$a3, $a3, $a5
	maskeqz	$a3, $a3, $a2
	masknez	$a1, $a1, $a2
	or	$s3, $a3, $a1
	addi.w	$a1, $s3, 0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	bltu	$a2, $a1, .LBB2_13
# %bb.19:                               # %.preheader.preheader.i
                                        #   in Loop: Header=BB2_15 Depth=2
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	ld.hu	$a0, $a0, 7
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	add.w	$s6, $s3, $s4
	bstrpick.d	$a1, $s6, 31, 0
	addi.d	$a0, $a1, 46
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	bgeu	$a0, $a2, .LBB2_24
# %bb.20:                               #   in Loop: Header=BB2_15 Depth=2
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB2_30
# %bb.21:                               #   in Loop: Header=BB2_15 Depth=2
	addi.d	$a1, $sp, 280
	ori	$a2, $zero, 46
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 45
	bge	$a1, $a0, .LBB2_29
# %bb.22:                               #   in Loop: Header=BB2_15 Depth=2
	ld.w	$a0, $sp, 280
	move	$a1, $s6
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	beq	$a0, $a2, .LBB2_37
# %bb.23:                               #   in Loop: Header=BB2_15 Depth=2
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	add.w	$s6, $s3, $s4
	bstrpick.d	$a1, $s6, 31, 0
	addi.d	$a0, $a1, 46
	ori	$s0, $zero, 80
	ori	$a7, $zero, 20
.LBB2_24:                               # %.preheader.1.i
                                        #   in Loop: Header=BB2_15 Depth=2
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	bgeu	$a0, $a2, .LBB2_28
# %bb.25:                               #   in Loop: Header=BB2_15 Depth=2
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB2_30
# %bb.26:                               #   in Loop: Header=BB2_15 Depth=2
	addi.d	$a1, $sp, 280
	ori	$a2, $zero, 46
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 46
	blt	$a0, $a1, .LBB2_29
# %bb.27:                               #   in Loop: Header=BB2_15 Depth=2
	ld.w	$a0, $sp, 280
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	ori	$s0, $zero, 80
	ori	$a7, $zero, 20
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB2_14
	b	.LBB2_36
.LBB2_28:                               #   in Loop: Header=BB2_15 Depth=2
	st.d	$s4, $sp, 128                   # 8-byte Folded Spill
	b	.LBB2_14
.LBB2_29:
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	move	$a1, $s5
	b	.LBB2_32
.LBB2_30:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	move	$a1, $s0
	b	.LBB2_32
.LBB2_31:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	move	$a1, $s1
.LBB2_32:                               # %__zip_find_disk_trailer.exit.thread
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB2_33:
	addi.w	$a0, $zero, -123
.LBB2_34:
	ld.d	$s8, $sp, 456                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 464                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 520                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 528                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 536                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 544
	ret
.LBB2_35:                               # %._crit_edge.i
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	b	.LBB2_34
.LBB2_36:                               # %._crit_edge
	add.w	$a1, $s4, $s3
	st.d	$s4, $sp, 128                   # 8-byte Folded Spill
.LBB2_37:                               # %split
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a0, $a0, %pc_lo12(.L.str.19)
	move	$a1, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s8
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$s2, $a0, 0
	addi.d	$a1, $sp, 280
	move	$a0, $s2
	pcaddu18i	$ra, %call36(fstat)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB2_41
# %bb.38:
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB2_43
# %bb.39:
	ld.w	$a0, $sp, 328
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	addi.w	$s7, $s0, 0
	bgeu	$a0, $s7, .LBB2_44
# %bb.40:
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a0, $a0, %pc_lo12(.L.str.22)
	b	.LBB2_3
.LBB2_41:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
.LBB2_42:                               # %__zip_parse_root_directory.exit
	move	$a1, $s2
	b	.LBB2_5
.LBB2_43:
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	b	.LBB2_3
.LBB2_44:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_63
# %bb.45:                               # %.preheader.i
	move	$s3, $zero
	move	$s8, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	lu12i.w	$a1, 15
	ori	$a1, $a1, 4095
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.L.str.32)
	addi.d	$a1, $a1, %pc_lo12(.L.str.32)
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	move	$s1, $a0
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	st.d	$s7, $sp, 104                   # 8-byte Folded Spill
	st.d	$s2, $sp, 96                    # 8-byte Folded Spill
.LBB2_46:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	add.d	$a0, $a0, $s8
	bstrpick.d	$a1, $a0, 31, 0
	move	$a0, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB2_64
# %bb.47:                               #   in Loop: Header=BB2_46 Depth=1
	addi.d	$a1, $sp, 410
	ori	$a2, $zero, 46
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 45
	bge	$a1, $a0, .LBB2_65
# %bb.48:                               #   in Loop: Header=BB2_46 Depth=1
	bstrpick.d	$a0, $s8, 31, 0
	addi.d	$s6, $a0, 46
	bltu	$s0, $s6, .LBB2_67
# %bb.49:                               #   in Loop: Header=BB2_46 Depth=1
	st.d	$s3, $sp, 120                   # 8-byte Folded Spill
	ld.hu	$s4, $sp, 438
	ori	$a0, $zero, 1024
	bltu	$a0, $s4, .LBB2_68
# %bb.50:                               #   in Loop: Header=BB2_46 Depth=1
	ld.w	$a0, $sp, 426
	ld.hu	$s3, $sp, 440
	ld.hu	$s0, $sp, 442
	ld.hu	$a5, $sp, 418
	st.w	$a0, $s1, 8
	ld.w	$a1, $sp, 430
	st.w	$a1, $s1, 4
	ld.w	$a2, $sp, 434
	st.w	$a2, $s1, 0
	ld.w	$a0, $sp, 452
	ld.hu	$a3, $sp, 420
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a4
	st.w	$a0, $s1, 12
	st.h	$a3, $s1, 20
	beqz	$a3, .LBB2_53
# %bb.51:                               #   in Loop: Header=BB2_46 Depth=1
	bne	$a1, $a2, .LBB2_57
# %bb.52:                               #   in Loop: Header=BB2_46 Depth=1
	move	$s5, $zero
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$s2, $a0, %pc_lo12(.L.str.30)
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a0, $a0, %pc_lo12(.L.str.29)
	b	.LBB2_55
.LBB2_53:                               #   in Loop: Header=BB2_46 Depth=1
	ori	$s5, $zero, 8
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	bne	$a1, $a2, .LBB2_55
# %bb.54:                               #   in Loop: Header=BB2_46 Depth=1
	move	$a0, $zero
	b	.LBB2_56
.LBB2_55:                               # %.thread.sink.split.i
                                        #   in Loop: Header=BB2_46 Depth=1
	move	$s7, $a5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a5, $s7
	st.h	$s5, $s1, 22
	ori	$a0, $zero, 1
.LBB2_56:                               # %.thread.i
                                        #   in Loop: Header=BB2_46 Depth=1
	ld.d	$s7, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	b	.LBB2_58
.LBB2_57:                               #   in Loop: Header=BB2_46 Depth=1
	move	$a0, $zero
.LBB2_58:                               # %.thread.i
                                        #   in Loop: Header=BB2_46 Depth=1
	alsl.d	$a0, $a0, $s1, 1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.h	$a1, $a0, 22
	add.d	$a0, $s6, $s4
	st.h	$a5, $s1, 26
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB2_69
# %bb.59:                               #   in Loop: Header=BB2_46 Depth=1
	addi.d	$s5, $s1, 28
	move	$a0, $s2
	move	$a1, $s5
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	bne	$a0, $s4, .LBB2_70
# %bb.60:                               #   in Loop: Header=BB2_46 Depth=1
	stx.b	$zero, $s5, $s4
	add.d	$a0, $s3, $s0
	add.d	$a0, $a0, $s4
	add.d	$a0, $a0, $s8
	addi.w	$s8, $a0, 46
	st.h	$s4, $s1, 18
	bltu	$s7, $s8, .LBB2_71
# %bb.61:                               #   in Loop: Header=BB2_46 Depth=1
	add.d	$a0, $s1, $s4
	addi.d	$a0, $a0, 33
	andi	$a1, $a0, 1
	add.d	$a0, $a0, $a1
	andi	$a1, $a0, 2
	add.d	$a0, $a0, $a1
	sub.d	$a0, $a0, $s1
	addi.d	$s3, $s1, 16
	st.h	$a0, $s1, 16
	bstrpick.d	$a0, $a0, 15, 0
	addi.d	$fp, $fp, -1
	bstrpick.d	$a1, $fp, 15, 0
	add.d	$s1, $s1, $a0
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	bnez	$a1, .LBB2_46
# %bb.62:
	move	$a0, $zero
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	b	.LBB2_74
.LBB2_63:
	addi.w	$a0, $zero, -114
	b	.LBB2_34
.LBB2_64:
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a0, $a0, %pc_lo12(.L.str.23)
	b	.LBB2_42
.LBB2_65:
	bstrpick.d	$a0, $fp, 15, 0
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB2_75
# %bb.66:
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a0, $a0, %pc_lo12(.L.str.24)
	ori	$a1, $zero, 46
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB2_33
.LBB2_67:
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	b	.LBB2_73
.LBB2_68:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	b	.LBB2_72
.LBB2_69:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	b	.LBB2_72
.LBB2_70:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	b	.LBB2_72
.LBB2_71:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
.LBB2_72:                               # %.loopexit.sink.split.i
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
.LBB2_73:                               # %.loopexit.sink.split.i
	bstrpick.d	$a1, $fp, 15, 0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -124
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	beqz	$s3, .LBB2_76
.LBB2_74:                               # %.loopexit.thread.i
	st.h	$zero, $s3, 0
	st.d	$a2, $a1, 24
	b	.LBB2_34
.LBB2_75:
	move	$a0, $zero
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	bnez	$s3, .LBB2_74
.LBB2_76:
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	b	.LBB2_34
.Lfunc_end2:
	.size	__zip_dir_parse, .Lfunc_end2-__zip_dir_parse
                                        # -- End function
	.globl	zip_dir_read                    # -- Begin function zip_dir_read
	.p2align	5
	.type	zip_dir_read,@function
zip_dir_read:                           # @zip_dir_read
# %bb.0:
	move	$a2, $zero
	beqz	$a0, .LBB3_4
# %bb.1:
	beqz	$a1, .LBB3_4
# %bb.2:
	ld.d	$a3, $a0, 32
	beqz	$a3, .LBB3_4
# %bb.3:
	ld.h	$a2, $a3, 20
	st.h	$a2, $a1, 0
	ld.d	$a2, $a3, 0
	rotri.d	$a2, $a2, 32
	st.d	$a2, $a1, 4
	ld.h	$a2, $a3, 26
	addi.d	$a4, $a3, 28
	st.d	$a4, $a1, 16
	st.h	$a2, $a1, 12
	ld.d	$a2, $a3, 8
	st.d	$a2, $a1, 24
	ld.hu	$a1, $a3, 16
	sltui	$a2, $a1, 1
	add.d	$a1, $a3, $a1
	masknez	$a1, $a1, $a2
	st.d	$a1, $a0, 32
	ori	$a2, $zero, 1
.LBB3_4:
	move	$a0, $a2
	ret
.Lfunc_end3:
	.size	zip_dir_read, .Lfunc_end3-zip_dir_read
                                        # -- End function
	.globl	zip_file_close                  # -- Begin function zip_file_close
	.p2align	5
	.type	zip_file_close,@function
zip_file_close:                         # @zip_file_close
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	beqz	$a0, .LBB4_4
# %bb.1:
	move	$fp, $a0
	addi.d	$a0, $a0, 64
	pcaddu18i	$ra, %call36(inflateEnd)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 56
	ld.d	$s0, $fp, 0
	beqz	$a0, .LBB4_6
# %bb.2:
	ld.d	$a1, $s0, 16
	beqz	$a1, .LBB4_5
# %bb.3:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB4_6
.LBB4_4:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -111
	b	.LBB4_9
.LBB4_5:
	st.d	$a0, $s0, 16
.LBB4_6:
	ori	$a2, $zero, 176
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
	beqz	$a0, .LBB4_8
# %bb.7:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB4_9
.LBB4_8:
	move	$a0, $zero
	st.d	$fp, $s0, 8
.LBB4_9:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	zip_file_close, .Lfunc_end4-zip_file_close
                                        # -- End function
	.globl	zip_file_open                   # -- Begin function zip_file_open
	.p2align	5
	.type	zip_file_open,@function
zip_file_open:                          # @zip_file_open
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 0
	addi.w	$s3, $zero, -1
	bge	$s3, $a0, .LBB5_11
# %bb.1:
	ld.d	$s0, $fp, 24
	beqz	$s0, .LBB5_12
# %bb.2:                                # %.preheader
	move	$s2, $a2
	move	$s1, $a1
	beq	$a2, $s3, .LBB5_8
	.p2align	4, , 16
# %bb.3:                                # %.preheader.split
	addi.d	$a0, $s0, 28
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_5
.LBB5_4:
	ld.w	$a0, $s0, 12
	beq	$s2, $a0, .LBB5_13
.LBB5_5:                                # =>This Inner Loop Header: Depth=1
	ld.hu	$a0, $s0, 16
	beqz	$a0, .LBB5_10
# %bb.6:                                #   in Loop: Header=BB5_5 Depth=1
	add.d	$s0, $s0, $a0
	addi.d	$a0, $s0, 28
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_5
	b	.LBB5_4
	.p2align	4, , 16
.LBB5_7:                                #   in Loop: Header=BB5_8 Depth=1
	add.d	$s0, $s0, $a0
.LBB5_8:                                # %.preheader.split.us
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $s0, 28
	move	$a1, $s1
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_13
# %bb.9:                                # %.lr.ph
                                        #   in Loop: Header=BB5_8 Depth=1
	ld.hu	$a0, $s0, 16
	bnez	$a0, .LBB5_7
.LBB5_10:                               # %.split88.us
	move	$a0, $zero
	addi.w	$a1, $zero, -115
	b	.LBB5_16
.LBB5_11:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB5_17
.LBB5_12:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.w	$a1, $zero, -111
	b	.LBB5_16
.LBB5_13:                               # %.split.us
	ld.hu	$a1, $s0, 20
	ori	$a0, $zero, 99
	bltu	$a0, $a1, .LBB5_23
# %bb.14:                               # %.split.us
	slli.d	$a0, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI5_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI5_0)
	ldx.w	$a0, $a2, $a0
	add.d	$a0, $a2, $a0
	jr	$a0
.LBB5_15:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.w	$a1, $zero, -125
.LBB5_16:
	lu32i.d	$a1, 0
	st.w	$a1, $fp, 4
.LBB5_17:
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB5_18:
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB5_20
# %bb.19:
	st.d	$zero, $fp, 8
	b	.LBB5_21
.LBB5_20:
	ori	$a0, $zero, 1
	ori	$a1, $zero, 176
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_35
.LBB5_21:
	ld.d	$a1, $fp, 16
	st.d	$fp, $a0, 0
	move	$s1, $a0
	beqz	$a1, .LBB5_24
# %bb.22:
	st.d	$a1, $a0, 56
	st.d	$zero, $fp, 16
	b	.LBB5_25
.LBB5_23:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	addi.w	$a1, $zero, -124
	b	.LBB5_16
.LBB5_24:
	lu12i.w	$a0, 8
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, 56
	beqz	$a0, .LBB5_36
.LBB5_25:
	ld.w	$a0, $fp, 0
	ld.wu	$a1, $s0, 12
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	bge	$s3, $a0, .LBB5_31
# %bb.26:
	ld.d	$s2, $s1, 56
	ld.w	$a0, $fp, 0
	ori	$a2, $zero, 30
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a2, $zero, 29
	blt	$a2, $a0, .LBB5_28
# %bb.27:
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	b	.LBB5_32
.LBB5_28:
	ld.hu	$a1, $s2, 26
	ld.hu	$a2, $s2, 28
	ld.w	$a0, $fp, 0
	add.d	$a1, $a2, $a1
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	bge	$s3, $a0, .LBB5_31
# %bb.29:
	ld.wu	$a1, $s0, 0
	ld.wu	$a2, $s0, 4
	move	$a0, $s1
	st.d	$a1, $s1, 40
	st.d	$a2, $s1, 48
	addi.d	$a1, $s0, 22
	st.d	$a1, $s1, 16
	move	$a1, $s0
	pcaddu18i	$ra, %call36(__zip_inflate_init)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_33
# %bb.30:
	move	$a0, $s1
	b	.LBB5_17
.LBB5_31:
	ld.w	$a1, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
.LBB5_32:
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
.LBB5_33:
	addi.w	$a0, $zero, -123
	lu32i.d	$a0, 0
	st.w	$a0, $fp, 4
	move	$a0, $s1
.LBB5_34:
	pcaddu18i	$ra, %call36(zip_file_close)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB5_17
.LBB5_35:
	move	$a0, $zero
	addi.w	$a1, $zero, -114
	b	.LBB5_16
.LBB5_36:
	move	$a0, $s1
	addi.w	$a1, $zero, -114
	lu32i.d	$a1, 0
	st.w	$a1, $fp, 4
	b	.LBB5_34
.Lfunc_end5:
	.size	zip_file_open, .Lfunc_end5-zip_file_open
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI5_0:
	.word	.LBB5_18-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_18-.LJTI5_0
	.word	.LBB5_18-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_23-.LJTI5_0
	.word	.LBB5_15-.LJTI5_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function __zip_inflate_init
	.type	__zip_inflate_init,@function
__zip_inflate_init:                     # @__zip_inflate_init
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$s0, $a1
	ld.hu	$a1, $a1, 20
	ld.wu	$a2, $s0, 0
	st.h	$a1, $a0, 8
	st.d	$a2, $a0, 24
	beqz	$a1, .LBB6_3
# %bb.1:
	move	$fp, $a0
	addi.d	$s1, $a0, 64
	ori	$a2, $zero, 112
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a2, $a0, %pc_lo12(.L.str.34)
	addi.w	$a1, $zero, -15
	ori	$a3, $zero, 112
	move	$a0, $s1
	pcaddu18i	$ra, %call36(inflateInit2_)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB6_4
# %bb.2:
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -104
	b	.LBB6_5
.LBB6_3:
	move	$a0, $zero
	b	.LBB6_5
.LBB6_4:
	ld.wu	$a1, $s0, 4
	move	$a0, $zero
	st.d	$a1, $fp, 32
.LBB6_5:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end6:
	.size	__zip_inflate_init, .Lfunc_end6-__zip_inflate_init
                                        # -- End function
	.globl	zip_file_read                   # -- Begin function zip_file_read
	.p2align	5
	.type	zip_file_read,@function
zip_file_read:                          # @zip_file_read
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	st.d	$s5, $sp, 0                     # 8-byte Folded Spill
	beqz	$a0, .LBB7_12
# %bb.1:
	move	$fp, $a0
	ld.d	$s3, $a0, 0
	beqz	$s3, .LBB7_12
# %bb.2:
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB7_15
# %bb.3:
	ld.hu	$a3, $fp, 8
	sltu	$a4, $a0, $a2
	masknez	$a2, $a2, $a4
	maskeqz	$a0, $a0, $a4
	addi.d	$a4, $a3, -8
	ori	$a5, $zero, 2
	or	$s0, $a0, $a2
	bgeu	$a4, $a5, .LBB7_16
# %bb.4:
	addi.d	$s1, $fp, 64
	st.w	$s0, $fp, 96
	st.d	$a1, $fp, 88
	lu12i.w	$s4, 8
	ori	$s5, $zero, 1
	.p2align	4, , 16
.LBB7_5:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $fp, 32
	beqz	$a2, .LBB7_9
# %bb.6:                                #   in Loop: Header=BB7_5 Depth=1
	ld.w	$a0, $fp, 72
	bnez	$a0, .LBB7_9
# %bb.7:                                #   in Loop: Header=BB7_5 Depth=1
	srli.d	$a0, $a2, 15
	sltui	$a3, $a0, 1
	ld.w	$a0, $s3, 0
	ld.d	$a1, $fp, 56
	masknez	$a4, $s4, $a3
	maskeqz	$a2, $a2, $a3
	or	$s2, $a2, $a4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	blt	$a0, $s5, .LBB7_29
# %bb.8:                                # %.thread
                                        #   in Loop: Header=BB7_5 Depth=1
	ld.d	$a0, $fp, 32
	ld.d	$a1, $fp, 56
	sub.d	$a0, $a0, $a2
	st.d	$a0, $fp, 32
	st.w	$a2, $fp, 72
	st.d	$a1, $fp, 64
.LBB7_9:                                #   in Loop: Header=BB7_5 Depth=1
	ld.d	$s2, $fp, 104
	move	$a0, $s1
	move	$a1, $zero
	pcaddu18i	$ra, %call36(inflate)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_22
# %bb.10:                               # %.critedge80
                                        #   in Loop: Header=BB7_5 Depth=1
	ld.d	$a0, $fp, 104
	ld.d	$a1, $fp, 24
	sub.d	$a0, $s2, $a0
	add.d	$a0, $a0, $a1
	st.d	$a0, $fp, 24
	beqz	$a0, .LBB7_24
# %bb.11:                               #   in Loop: Header=BB7_5 Depth=1
	ld.w	$a0, $fp, 96
	bnez	$a0, .LBB7_5
	b	.LBB7_24
.LBB7_12:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
.LBB7_13:
	addi.w	$a0, $zero, -1
.LBB7_14:
	ld.d	$s5, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB7_15:
	move	$a0, $zero
	b	.LBB7_14
.LBB7_16:
	bnez	$a3, .LBB7_19
# %bb.17:
	ld.w	$a0, $s3, 0
	addi.w	$a2, $s0, 0
	pcaddu18i	$ra, %call36(cli_readn)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB7_27
# %bb.18:
	ld.d	$a1, $fp, 24
	sub.d	$a1, $a1, $a0
	st.d	$a1, $fp, 24
	b	.LBB7_14
.LBB7_19:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	move	$a1, $a3
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
.LBB7_20:
	addi.w	$a0, $zero, -104
.LBB7_21:
	lu32i.d	$a0, 0
	st.w	$a0, $s3, 4
	b	.LBB7_13
.LBB7_22:
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB7_25
# %bb.23:                               # %.critedge80.thread
	st.d	$zero, $fp, 24
.LBB7_24:                               # %.critedge
	ld.wu	$a0, $fp, 96
	sub.d	$a0, $s0, $a0
	b	.LBB7_14
.LBB7_25:
	ld.hu	$a0, $fp, 8
	ori	$a1, $zero, 9
	bne	$a0, $a1, .LBB7_20
# %bb.26:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	ori	$a1, $zero, 9
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -125
	b	.LBB7_21
.LBB7_27:
	addi.w	$a1, $zero, -1
	blt	$a1, $a0, .LBB7_14
# %bb.28:
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	move	$fp, $a0
	move	$a0, $a1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	addi.w	$a1, $zero, -123
	lu32i.d	$a1, 0
	st.w	$a1, $s3, 4
	b	.LBB7_14
.LBB7_29:
	addi.w	$a0, $zero, -123
	lu32i.d	$a0, 0
	st.w	$a0, $s3, 4
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	b	.LBB7_13
.Lfunc_end7:
	.size	zip_file_read, .Lfunc_end7-zip_file_read
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Unzip: zip_dir_open: Can't lseek descriptor %d\n"
	.size	.L.str, 48

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Unzip: zip_file_close: fp == NULL\n"
	.size	.L.str.1, 35

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Unzip: zip_file_open: dir == NULL || dir->fd <= 0\n"
	.size	.L.str.2, 51

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Unzip: zip_file_open: hdr == NULL\n"
	.size	.L.str.3, 35

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Unzip: zip_file_open: Not supported compression method (%d)\n"
	.size	.L.str.4, 61

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Unzip: zip_file_read: Unknown compression method (%d)\n"
	.size	.L.str.5, 55

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Unzip: zip_file_open: Can't lseek descriptor %d\n"
	.size	.L.str.6, 49

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Unzip: zip_file_open: Can't read zip header (only read %d bytes)\n"
	.size	.L.str.7, 66

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Unzip: zip_file_read: fp == NULL || fp->dir == NULL\n"
	.size	.L.str.8, 53

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Unzip: zip_file_read: Can't read %d bytes\n"
	.size	.L.str.9, 43

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Unzip: zip_file_read: Can't read %d bytes (read %d)\n"
	.size	.L.str.10, 53

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Unzip: zip_file_read: Not supported compression method (%u)\n"
	.size	.L.str.11, 61

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Unzip: __zip_dir_parse: Can't fstat file descriptor %d\n"
	.size	.L.str.12, 56

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Unzip: __zip_find_disk_trailer: File too short\n"
	.size	.L.str.14, 48

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Unzip: __zip_find_disk_trailer: Central directory not found\n"
	.size	.L.str.15, 61

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Unzip: __zip_find_disk_trailer: Can't lseek descriptor %d\n"
	.size	.L.str.16, 59

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Unzip: __zip_find_disk_trailer: Can't read %u bytes\n"
	.size	.L.str.17, 53

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Unzip: __zip_find_disk_trailer: u_rootseek > filesize, continue search\n"
	.size	.L.str.18, 72

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Unzip: __zip_find_disk_trailer: found file header at %u, shift %u\n"
	.size	.L.str.19, 67

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Unzip: __zip_parse_root_directory: Can't fstat file descriptor %d\n"
	.size	.L.str.20, 67

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"Unzip: __zip_parse_root_directory: File contains no entries\n"
	.size	.L.str.21, 61

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"Unzip: __zip_parse_root_directory: Incorrect root size\n"
	.size	.L.str.22, 56

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"Unzip: __zip_parse_root_directory: Can't lseek descriptor %d\n"
	.size	.L.str.23, 62

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"Unzip: __zip_parse_root_directory: Can't read %d bytes\n"
	.size	.L.str.24, 56

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"Unzip: __zip_parse_root_directory: Entry %d outside of root directory\n"
	.size	.L.str.25, 71

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"Unzip: __zip_parse_root_directory: Entry %d name too long\n"
	.size	.L.str.26, 59

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"Unzip: __zip_parse_root_directory: File claims to be stored but csize != usize\n"
	.size	.L.str.27, 80

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"Unzip: __zip_parse_root_directory: Also checking for method 'deflated'\n"
	.size	.L.str.28, 72

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"Unzip: __zip_parse_root_directory: File claims to be deflated but csize == usize\n"
	.size	.L.str.29, 82

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"Unzip: __zip_parse_root_directory: Also checking for method 'stored'\n"
	.size	.L.str.30, 70

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"Unzip: __zip_parse_root_directory: Name of entry %d outside of root directory\n"
	.size	.L.str.31, 79

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"Unzip: __zip_parse_root_directory: Can't read name of entry %d\n"
	.size	.L.str.32, 64

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"Unzip: __zip_parse_root_directory: End of entry %d outside of root directory\n"
	.size	.L.str.33, 78

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"1.2.11"
	.size	.L.str.34, 7

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"Unzip: __zip_inflate_init: inflateInit2 failed\n"
	.size	.L.str.35, 48

	.section	".note.GNU-stack","",@progbits
	.addrsig
