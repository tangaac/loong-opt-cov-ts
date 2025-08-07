	.file	"libclamav_str.c"
	.text
	.globl	cli_hex2ui                      # -- Begin function cli_hex2ui
	.p2align	5
	.type	cli_hex2ui,@function
cli_hex2ui:                             # @cli_hex2ui
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
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	andi	$a0, $a0, 1
	bnez	$a0, .LBB0_38
# %bb.1:
	bstrpick.d	$a0, $s1, 31, 1
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 2
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_39
# %bb.2:                                # %.preheader
	addi.w	$s1, $s1, 0
	beqz	$s1, .LBB0_40
# %bb.3:                                # %.lr.ph.preheader
	move	$s2, $zero
	ori	$s3, $zero, 63
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$s7, $a0
	b	.LBB0_6
	.p2align	4, , 16
.LBB0_4:                                #   in Loop: Header=BB0_6 Depth=1
	slli.d	$a0, $a0, 4
	ori	$a0, $a0, 768
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a1, $s7, 2
	addi.w	$s2, $s2, 2
	st.h	$a0, $s7, 0
	move	$s7, $a1
	bgeu	$s2, $s1, .LBB0_41
.LBB0_6:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $s2, 31, 0
	ldx.bu	$s4, $s0, $a0
	addi.d	$a0, $s2, 1
	bstrpick.d	$a1, $a0, 31, 0
	ldx.bu	$s6, $s0, $a1
	bne	$s4, $s3, .LBB0_9
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 256
	beq	$s6, $s3, .LBB0_5
# %bb.8:                                # %.thread
                                        #   in Loop: Header=BB0_6 Depth=1
	ldx.b	$s8, $s0, $a1
	andi	$s6, $s8, 255
	ori	$fp, $zero, 63
	beq	$s6, $fp, .LBB0_11
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_9:                                #   in Loop: Header=BB0_6 Depth=1
	ext.w.b	$s5, $s4
	bne	$s6, $s3, .LBB0_14
# %bb.10:                               #   in Loop: Header=BB0_6 Depth=1
	move	$fp, $s4
	bltz	$s5, .LBB0_43
.LBB0_11:                               # %.thread98
                                        #   in Loop: Header=BB0_6 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 2048
	bnez	$a0, .LBB0_20
# %bb.12:                               #   in Loop: Header=BB0_6 Depth=1
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $fp, 2
	ldx.w	$a1, $a0, $a1
	addi.w	$a0, $a1, -97
	ori	$a2, $zero, 5
	bltu	$a2, $a0, .LBB0_42
# %bb.13:                               # %cli_hex2int.exit.thread77
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a0, $a1, -87
	b	.LBB0_4
	.p2align	4, , 16
.LBB0_14:                               #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 40
	beq	$s4, $a0, .LBB0_24
# %bb.15:                               #   in Loop: Header=BB0_6 Depth=1
	ext.w.b	$s8, $s6
	bne	$s4, $s3, .LBB0_25
.LBB0_16:                               # %.thread99
                                        #   in Loop: Header=BB0_6 Depth=1
	ext.w.b	$a0, $s6
	bltz	$a0, .LBB0_43
# %bb.17:                               #   in Loop: Header=BB0_6 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s8, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 2048
	bnez	$a0, .LBB0_22
# %bb.18:                               #   in Loop: Header=BB0_6 Depth=1
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s8, 2
	ldx.w	$a1, $a0, $a1
	addi.w	$a0, $a1, -97
	ori	$a2, $zero, 5
	bltu	$a2, $a0, .LBB0_42
# %bb.19:                               # %cli_hex2int.exit61.thread81
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a0, $a1, -87
	ori	$a0, $a0, 1024
	b	.LBB0_5
.LBB0_20:                               # %cli_hex2int.exit
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 48
	bltu	$s4, $a0, .LBB0_43
# %bb.21:                               #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a0, $fp, -48
	b	.LBB0_4
.LBB0_22:                               # %cli_hex2int.exit61
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 48
	bltu	$s6, $a0, .LBB0_43
# %bb.23:                               #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a0, $s8, -48
	ori	$a0, $a0, 1024
	b	.LBB0_5
.LBB0_24:                               #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 512
	b	.LBB0_5
.LBB0_25:                               #   in Loop: Header=BB0_6 Depth=1
	bltz	$s5, .LBB0_43
# %bb.26:                               #   in Loop: Header=BB0_6 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$fp, $a0, 0
	slli.d	$a0, $s5, 1
	ldx.hu	$a0, $fp, $a0
	andi	$a0, $a0, 2048
	bnez	$a0, .LBB0_29
# %bb.27:                               #   in Loop: Header=BB0_6 Depth=1
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s5, 2
	ldx.w	$a1, $a0, $a1
	addi.w	$a0, $a1, -97
	ori	$a2, $zero, 5
	bltu	$a2, $a0, .LBB0_42
# %bb.28:                               # %cli_hex2int.exit68.thread85
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$s4, $a1, -87
	b	.LBB0_31
.LBB0_29:                               # %cli_hex2int.exit68
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 48
	bltu	$s4, $a0, .LBB0_43
# %bb.30:                               #   in Loop: Header=BB0_6 Depth=1
	addi.d	$s4, $s5, -48
.LBB0_31:                               #   in Loop: Header=BB0_6 Depth=1
	ext.w.b	$a0, $s6
	bltz	$a0, .LBB0_43
# %bb.32:                               #   in Loop: Header=BB0_6 Depth=1
	slli.d	$a0, $s8, 1
	ldx.hu	$a0, $fp, $a0
	andi	$a0, $a0, 2048
	bnez	$a0, .LBB0_35
# %bb.33:                               #   in Loop: Header=BB0_6 Depth=1
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s8, 2
	ldx.w	$a1, $a0, $a1
	addi.w	$a0, $a1, -97
	ori	$a2, $zero, 5
	bltu	$a2, $a0, .LBB0_42
# %bb.34:                               # %cli_hex2int.exit75.thread89
                                        #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a0, $a1, -87
	b	.LBB0_37
.LBB0_35:                               # %cli_hex2int.exit75
                                        #   in Loop: Header=BB0_6 Depth=1
	ori	$a0, $zero, 48
	bltu	$s6, $a0, .LBB0_43
# %bb.36:                               #   in Loop: Header=BB0_6 Depth=1
	addi.d	$a0, $s8, -48
.LBB0_37:                               #   in Loop: Header=BB0_6 Depth=1
	alsl.w	$a0, $s4, $a0, 4
	b	.LBB0_5
.LBB0_38:
	addi.w	$a2, $s1, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
.LBB0_39:                               # %.loopexit
	move	$a0, $zero
.LBB0_40:                               # %.loopexit
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
.LBB0_41:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	b	.LBB0_40
.LBB0_42:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
.LBB0_43:                               # %cli_hex2int.exit.thread
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB0_39
.Lfunc_end0:
	.size	cli_hex2ui, .Lfunc_end0-cli_hex2ui
                                        # -- End function
	.globl	cli_hex2str                     # -- Begin function cli_hex2str
	.p2align	5
	.type	cli_hex2str,@function
cli_hex2str:                            # @cli_hex2str
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
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	andi	$a1, $a0, 1
	bnez	$a1, .LBB1_17
# %bb.1:
	addi.w	$s1, $a0, 0
	srai.d	$a0, $s1, 1
	addi.d	$a0, $a0, 1
	ori	$a1, $zero, 1
	ori	$s2, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB1_20
# %bb.2:                                # %.preheader
	move	$fp, $a0
	blt	$s1, $s2, .LBB1_21
# %bb.3:                                # %.lr.ph.preheader
	move	$s2, $zero
	addi.d	$s0, $s0, 1
	ori	$s3, $zero, 5
	ori	$s4, $zero, 48
	move	$s5, $fp
	.p2align	4, , 16
.LBB1_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$s6, $s0, -1
	bltz	$s6, .LBB1_19
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$s7, $a0, 0
	slli.d	$a0, $s6, 1
	ldx.hu	$a0, $s7, $a0
	andi	$a0, $a0, 2048
	bnez	$a0, .LBB1_8
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s6, 2
	ldx.w	$a1, $a0, $a1
	addi.w	$a0, $a1, -97
	bltu	$s3, $a0, .LBB1_18
# %bb.7:                                # %cli_hex2int.exit.thread42
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.w	$s6, $a1, -87
	b	.LBB1_10
	.p2align	4, , 16
.LBB1_8:                                # %cli_hex2int.exit
                                        #   in Loop: Header=BB1_4 Depth=1
	blt	$s6, $s4, .LBB1_19
# %bb.9:                                #   in Loop: Header=BB1_4 Depth=1
	addi.d	$s6, $s6, -48
.LBB1_10:                               #   in Loop: Header=BB1_4 Depth=1
	ld.b	$s8, $s0, 0
	bltz	$s8, .LBB1_19
# %bb.11:                               #   in Loop: Header=BB1_4 Depth=1
	slli.d	$a0, $s8, 1
	ldx.hu	$a0, $s7, $a0
	andi	$a0, $a0, 2048
	bnez	$a0, .LBB1_14
# %bb.12:                               #   in Loop: Header=BB1_4 Depth=1
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s8, 2
	ldx.w	$a1, $a0, $a1
	addi.w	$a0, $a1, -97
	bltu	$s3, $a0, .LBB1_18
# %bb.13:                               #   in Loop: Header=BB1_4 Depth=1
	addi.w	$a0, $a1, -87
	b	.LBB1_15
	.p2align	4, , 16
.LBB1_14:                               #   in Loop: Header=BB1_4 Depth=1
	addi.d	$a0, $s8, -48
.LBB1_15:                               # %cli_hex2int.exit35
                                        #   in Loop: Header=BB1_4 Depth=1
	andi	$a1, $a0, 128
	bnez	$a1, .LBB1_19
# %bb.16:                               #   in Loop: Header=BB1_4 Depth=1
	alsl.d	$a0, $s6, $a0, 4
	st.b	$a0, $s5, 0
	addi.d	$s5, $s5, 1
	addi.w	$s2, $s2, 2
	addi.d	$s0, $s0, 2
	blt	$s2, $s1, .LBB1_4
	b	.LBB1_21
.LBB1_17:
	addi.w	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	b	.LBB1_20
.LBB1_18:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
.LBB1_19:                               # %cli_hex2int.exit.thread
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_20:                               # %.loopexit
	move	$fp, $zero
.LBB1_21:                               # %.loopexit
	move	$a0, $fp
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
.Lfunc_end1:
	.size	cli_hex2str, .Lfunc_end1-cli_hex2str
                                        # -- End function
	.globl	cli_hex2num                     # -- Begin function cli_hex2num
	.p2align	5
	.type	cli_hex2num,@function
cli_hex2num:                            # @cli_hex2num
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	andi	$a1, $a0, 1
	bnez	$a1, .LBB2_10
# %bb.1:                                # %.preheader
	addi.w	$a1, $a0, 0
	move	$s0, $zero
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB2_11
# %bb.2:                                # %.lr.ph.preheader
	bstrpick.d	$s1, $a0, 30, 0
	ori	$s2, $zero, 5
	ori	$s3, $zero, 48
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_3:                                #   in Loop: Header=BB2_4 Depth=1
	slli.w	$a1, $s0, 4
	or	$s0, $a0, $a1
	addi.d	$s1, $s1, -1
	addi.d	$fp, $fp, 1
	beqz	$s1, .LBB2_11
.LBB2_4:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$s4, $fp, 0
	bltz	$s4, .LBB2_11
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	andi	$a0, $a0, 2048
	bnez	$a0, .LBB2_8
# %bb.6:                                #   in Loop: Header=BB2_4 Depth=1
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 2
	ldx.w	$a1, $a0, $a1
	addi.w	$a0, $a1, -97
	bltu	$s2, $a0, .LBB2_12
# %bb.7:                                # %cli_hex2int.exit.thread16
                                        #   in Loop: Header=BB2_4 Depth=1
	addi.w	$a0, $a1, -87
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_8:                                # %cli_hex2int.exit
                                        #   in Loop: Header=BB2_4 Depth=1
	andi	$a0, $s4, 255
	bltu	$a0, $s3, .LBB2_11
# %bb.9:                                #   in Loop: Header=BB2_4 Depth=1
	addi.w	$a0, $s4, -48
	b	.LBB2_3
.LBB2_10:
	addi.w	$a2, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	addi.w	$s0, $zero, -1
.LBB2_11:                               # %cli_hex2int.exit.thread
	move	$a0, $s0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB2_12:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	b	.LBB2_11
.Lfunc_end2:
	.size	cli_hex2num, .Lfunc_end2-cli_hex2num
                                        # -- End function
	.globl	cli_str2hex                     # -- Begin function cli_str2hex
	.p2align	5
	.type	cli_str2hex,@function
cli_str2hex:                            # @cli_str2hex
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$s0, $a1
	move	$fp, $a0
	slli.d	$a0, $a1, 1
	addi.d	$a0, $a0, 1
	bstrpick.d	$a0, $a0, 31, 0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_4
# %bb.1:
	beqz	$s0, .LBB3_4
# %bb.2:                                # %.lr.ph.preheader
	move	$a1, $zero
	bstrpick.d	$a2, $s0, 31, 0
	pcalau12i	$a3, %pc_hi20(.L__const.cli_str2hex.HEX)
	addi.d	$a3, $a3, %pc_lo12(.L__const.cli_str2hex.HEX)
	.p2align	4, , 16
.LBB3_3:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $fp, 0
	srli.d	$a4, $a4, 4
	ldx.b	$a4, $a3, $a4
	bstrpick.d	$a5, $a1, 31, 0
	stx.b	$a4, $a0, $a5
	ld.bu	$a4, $fp, 0
	andi	$a4, $a4, 15
	ldx.b	$a4, $a3, $a4
	addi.d	$a5, $a1, 1
	bstrpick.d	$a5, $a5, 31, 0
	stx.b	$a4, $a0, $a5
	addi.w	$a1, $a1, 2
	addi.d	$a2, $a2, -1
	addi.d	$fp, $fp, 1
	bnez	$a2, .LBB3_3
.LBB3_4:                                # %.loopexit
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end3:
	.size	cli_str2hex, .Lfunc_end3-cli_str2hex
                                        # -- End function
	.globl	cli_utf16toascii                # -- Begin function cli_utf16toascii
	.p2align	5
	.type	cli_utf16toascii,@function
cli_utf16toascii:                       # @cli_utf16toascii
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 8                    # 8-byte Folded Spill
	ori	$a2, $zero, 1
	bltu	$a2, $a1, .LBB4_2
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(cli_warnmsg)
	jirl	$ra, $ra, 0
	b	.LBB4_9
.LBB4_2:
	move	$fp, $a0
	bstrpick.d	$s0, $a1, 31, 1
	addi.d	$a0, $s0, 1
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_9
# %bb.3:                                # %iter.check
	addi.d	$a1, $zero, -1
	alsl.w	$a2, $s0, $a1, 1
	bstrpick.d	$a1, $a2, 31, 1
	ori	$a3, $zero, 30
	addi.d	$a1, $a1, 1
	bltu	$a2, $a3, .LBB4_6
# %bb.4:                                # %vector.memcheck
	slli.d	$a3, $s0, 1
	addi.d	$a3, $a3, -2
	bstrpick.d	$a3, $a3, 31, 1
	alsl.d	$a3, $a3, $fp, 1
	addi.d	$a3, $a3, 2
	bgeu	$a0, $a3, .LBB4_11
# %bb.5:                                # %vector.memcheck
	add.d	$a3, $a0, $a1
	bgeu	$fp, $a3, .LBB4_11
.LBB4_6:
	move	$a3, $zero
	move	$a2, $zero
.LBB4_7:                                # %.lr.ph.preheader
	add.d	$a3, $a3, $fp
	addi.d	$a3, $a3, 1
	.p2align	4, , 16
.LBB4_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a4, $a3, 0
	slli.d	$a5, $a4, 4
	stx.b	$a5, $a0, $a2
	ld.b	$a5, $a3, -1
	alsl.d	$a4, $a4, $a5, 4
	stx.b	$a4, $a0, $a2
	addi.d	$a2, $a2, 1
	addi.d	$a3, $a3, 2
	bne	$a1, $a2, .LBB4_8
	b	.LBB4_10
.LBB4_9:
	move	$a0, $zero
.LBB4_10:                               # %.loopexit
	fld.d	$fs7, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs6, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB4_11:                               # %vector.main.loop.iter.check
	ori	$a3, $zero, 62
	bgeu	$a2, $a3, .LBB4_16
# %bb.12:
	move	$a2, $zero
.LBB4_13:                               # %vec.epilog.ph
	move	$a4, $a2
	bstrpick.d	$a3, $a1, 30, 4
	slli.d	$a2, $a3, 4
	slli.d	$a3, $a3, 5
	alsl.d	$a5, $a4, $fp, 1
	addi.d	$a5, $a5, 15
	.p2align	4, , 16
.LBB4_14:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a6, $a5, -14
	ld.b	$a7, $a5, -12
	ld.b	$t0, $a5, -10
	ld.b	$t1, $a5, -8
	ld.b	$t2, $a5, -6
	ld.b	$t3, $a5, -4
	ld.b	$t4, $a5, -2
	ld.b	$t5, $a5, 0
	ld.b	$t6, $a5, 2
	ld.b	$t7, $a5, 4
	ld.b	$t8, $a5, 6
	ld.b	$s0, $a5, 8
	ld.b	$s1, $a5, 10
	ld.b	$s2, $a5, 12
	ld.b	$s3, $a5, 14
	ld.b	$s4, $a5, 16
	vinsgr2vr.b	$vr0, $a6, 0
	vinsgr2vr.b	$vr0, $a7, 1
	vinsgr2vr.b	$vr0, $t0, 2
	vinsgr2vr.b	$vr0, $t1, 3
	vinsgr2vr.b	$vr0, $t2, 4
	vinsgr2vr.b	$vr0, $t3, 5
	vinsgr2vr.b	$vr0, $t4, 6
	vinsgr2vr.b	$vr0, $t5, 7
	vinsgr2vr.b	$vr0, $t6, 8
	vinsgr2vr.b	$vr0, $t7, 9
	vinsgr2vr.b	$vr0, $t8, 10
	vinsgr2vr.b	$vr0, $s0, 11
	vinsgr2vr.b	$vr0, $s1, 12
	vinsgr2vr.b	$vr0, $s2, 13
	vinsgr2vr.b	$vr0, $s3, 14
	vinsgr2vr.b	$vr0, $s4, 15
	vslli.b	$vr0, $vr0, 4
	ld.b	$a6, $a5, -15
	ld.b	$a7, $a5, -13
	ld.b	$t0, $a5, -11
	ld.b	$t1, $a5, -9
	ld.b	$t2, $a5, -7
	ld.b	$t3, $a5, -5
	ld.b	$t4, $a5, -3
	ld.b	$t5, $a5, -1
	ld.b	$t6, $a5, 1
	ld.b	$t7, $a5, 3
	ld.b	$t8, $a5, 5
	ld.b	$s0, $a5, 7
	ld.b	$s1, $a5, 9
	ld.b	$s2, $a5, 11
	ld.b	$s3, $a5, 13
	ld.b	$s4, $a5, 15
	vinsgr2vr.b	$vr1, $a6, 0
	vinsgr2vr.b	$vr1, $a7, 1
	vinsgr2vr.b	$vr1, $t0, 2
	vinsgr2vr.b	$vr1, $t1, 3
	vinsgr2vr.b	$vr1, $t2, 4
	vinsgr2vr.b	$vr1, $t3, 5
	vinsgr2vr.b	$vr1, $t4, 6
	vinsgr2vr.b	$vr1, $t5, 7
	vinsgr2vr.b	$vr1, $t6, 8
	vinsgr2vr.b	$vr1, $t7, 9
	vinsgr2vr.b	$vr1, $t8, 10
	vinsgr2vr.b	$vr1, $s0, 11
	vinsgr2vr.b	$vr1, $s1, 12
	vinsgr2vr.b	$vr1, $s2, 13
	vinsgr2vr.b	$vr1, $s3, 14
	vinsgr2vr.b	$vr1, $s4, 15
	vadd.b	$vr0, $vr1, $vr0
	vstx	$vr0, $a0, $a4
	addi.d	$a4, $a4, 16
	addi.d	$a5, $a5, 32
	bne	$a2, $a4, .LBB4_14
# %bb.15:                               # %vec.epilog.middle.block
	bne	$a2, $a1, .LBB4_7
	b	.LBB4_10
.LBB4_16:                               # %vector.ph
	move	$a3, $zero
	bstrpick.d	$a2, $a1, 30, 5
	slli.d	$a2, $a2, 5
	addi.d	$a4, $fp, 31
	.p2align	4, , 16
.LBB4_17:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.b	$a5, $a4, -30
	ld.b	$a6, $a4, -28
	ld.b	$a7, $a4, -26
	xvreplgr2vr.b	$xr0, $a5
	ld.b	$a5, $a4, -24
	xvreplgr2vr.b	$xr3, $a6
	ld.b	$a6, $a4, -22
	xvreplgr2vr.b	$xr4, $a7
	ld.b	$a7, $a4, -20
	xvreplgr2vr.b	$xr6, $a5
	ld.b	$a5, $a4, -18
	xvreplgr2vr.b	$xr7, $a6
	ld.b	$a6, $a4, -16
	xvreplgr2vr.b	$xr8, $a7
	ld.b	$a7, $a4, -14
	xvreplgr2vr.b	$xr9, $a5
	ld.b	$a5, $a4, -12
	xvreplgr2vr.b	$xr11, $a6
	ld.b	$a6, $a4, -10
	xvreplgr2vr.b	$xr13, $a7
	ld.b	$a7, $a4, -8
	xvreplgr2vr.b	$xr14, $a5
	ld.b	$a5, $a4, -6
	xvreplgr2vr.b	$xr16, $a6
	ld.b	$a6, $a4, -4
	xvreplgr2vr.b	$xr17, $a7
	ld.b	$a7, $a4, -2
	xvreplgr2vr.b	$xr18, $a5
	ld.b	$a5, $a4, 0
	xvreplgr2vr.b	$xr19, $a6
	ld.b	$a6, $a4, 2
	xvreplgr2vr.b	$xr20, $a7
	ld.b	$a7, $a4, 4
	xvreplgr2vr.b	$xr21, $a5
	ld.b	$a5, $a4, 6
	xvreplgr2vr.b	$xr22, $a6
	ld.b	$a6, $a4, 8
	xvreplgr2vr.b	$xr23, $a7
	ld.b	$a7, $a4, 10
	xvreplgr2vr.b	$xr24, $a5
	ld.b	$a5, $a4, 12
	xvreplgr2vr.b	$xr26, $a6
	ld.b	$a6, $a4, 14
	xvreplgr2vr.b	$xr27, $a7
	ld.b	$a7, $a4, 16
	xvreplgr2vr.b	$xr28, $a5
	ld.b	$a5, $a4, 18
	xvreplgr2vr.b	$xr29, $a6
	ld.b	$a6, $a4, 20
	xvreplgr2vr.b	$xr25, $a7
	ld.b	$a7, $a4, 22
	xvreplgr2vr.b	$xr12, $a5
	ld.b	$a5, $a4, 24
	xvreplgr2vr.b	$xr15, $a6
	ld.b	$a6, $a4, 26
	xvreplgr2vr.b	$xr10, $a7
	ld.b	$a7, $a4, 28
	xvreplgr2vr.b	$xr5, $a5
	xvreplgr2vr.b	$xr2, $a6
	ld.b	$a6, $a4, 30
	xvreplgr2vr.b	$xr30, $a7
	ld.b	$a5, $a4, 32
	xvpermi.q	$xr0, $xr0, 18
	xvextrins.b	$xr0, $xr0, 0
	xvpermi.q	$xr3, $xr0, 18
	xvextrins.b	$xr0, $xr3, 17
	xvpermi.q	$xr4, $xr0, 18
	xvextrins.b	$xr0, $xr4, 34
	xvpermi.q	$xr6, $xr0, 18
	xvextrins.b	$xr0, $xr6, 51
	xvpermi.q	$xr7, $xr0, 18
	xvextrins.b	$xr0, $xr7, 68
	xvpermi.q	$xr8, $xr0, 18
	xvextrins.b	$xr0, $xr8, 85
	xvpermi.q	$xr9, $xr0, 18
	xvextrins.b	$xr0, $xr9, 102
	xvpermi.q	$xr11, $xr0, 18
	xvextrins.b	$xr0, $xr11, 119
	xvpermi.q	$xr13, $xr0, 18
	xvextrins.b	$xr0, $xr13, 136
	xvpermi.q	$xr14, $xr0, 18
	xvextrins.b	$xr0, $xr14, 153
	xvpermi.q	$xr16, $xr0, 18
	xvextrins.b	$xr0, $xr16, 170
	xvpermi.q	$xr17, $xr0, 18
	xvextrins.b	$xr0, $xr17, 187
	xvpermi.q	$xr18, $xr0, 18
	xvextrins.b	$xr0, $xr18, 204
	xvpermi.q	$xr19, $xr0, 18
	xvextrins.b	$xr0, $xr19, 221
	xvpermi.q	$xr20, $xr0, 18
	xvextrins.b	$xr0, $xr20, 238
	xvpermi.q	$xr21, $xr0, 18
	xvextrins.b	$xr0, $xr21, 255
	xvpermi.q	$xr22, $xr0, 48
	xvextrins.b	$xr0, $xr22, 0
	xvpermi.q	$xr23, $xr0, 48
	xvextrins.b	$xr0, $xr23, 17
	xvpermi.q	$xr24, $xr0, 48
	xvextrins.b	$xr0, $xr24, 34
	xvpermi.q	$xr26, $xr0, 48
	xvextrins.b	$xr0, $xr26, 51
	xvpermi.q	$xr27, $xr0, 48
	xvextrins.b	$xr0, $xr27, 68
	xvpermi.q	$xr28, $xr0, 48
	xvextrins.b	$xr0, $xr28, 85
	xvpermi.q	$xr29, $xr0, 48
	xvextrins.b	$xr0, $xr29, 102
	xvpermi.q	$xr25, $xr0, 48
	xvreplgr2vr.b	$xr3, $a6
	ld.b	$a6, $a4, -31
	xvreplgr2vr.b	$xr1, $a5
	ld.b	$a5, $a4, -29
	xvextrins.b	$xr0, $xr25, 119
	xvreplgr2vr.b	$xr4, $a6
	ld.b	$a6, $a4, -27
	xvreplgr2vr.b	$xr7, $a5
	ld.b	$a5, $a4, -25
	xvpermi.q	$xr12, $xr0, 48
	xvreplgr2vr.b	$xr8, $a6
	ld.b	$a6, $a4, -23
	xvreplgr2vr.b	$xr9, $a5
	ld.b	$a5, $a4, -21
	xvextrins.b	$xr0, $xr12, 136
	xvreplgr2vr.b	$xr11, $a6
	ld.b	$a6, $a4, -19
	xvreplgr2vr.b	$xr12, $a5
	ld.b	$a5, $a4, -17
	xvpermi.q	$xr15, $xr0, 48
	xvreplgr2vr.b	$xr13, $a6
	ld.b	$a6, $a4, -15
	xvreplgr2vr.b	$xr14, $a5
	ld.b	$a5, $a4, -13
	xvextrins.b	$xr0, $xr15, 153
	xvreplgr2vr.b	$xr15, $a6
	ld.b	$a6, $a4, -11
	xvreplgr2vr.b	$xr16, $a5
	ld.b	$a5, $a4, -9
	xvpermi.q	$xr10, $xr0, 48
	xvreplgr2vr.b	$xr17, $a6
	ld.b	$a6, $a4, -7
	xvreplgr2vr.b	$xr18, $a5
	ld.b	$a5, $a4, -5
	xvextrins.b	$xr0, $xr10, 170
	xvreplgr2vr.b	$xr10, $a6
	ld.b	$a6, $a4, -3
	xvreplgr2vr.b	$xr19, $a5
	ld.b	$a5, $a4, -1
	xvpermi.q	$xr5, $xr0, 48
	xvreplgr2vr.b	$xr20, $a6
	ld.b	$a6, $a4, 1
	xvreplgr2vr.b	$xr21, $a5
	ld.b	$a5, $a4, 3
	xvextrins.b	$xr0, $xr5, 187
	xvreplgr2vr.b	$xr6, $a6
	ld.b	$a6, $a4, 5
	xvreplgr2vr.b	$xr22, $a5
	ld.b	$a5, $a4, 7
	xvpermi.q	$xr2, $xr0, 48
	xvreplgr2vr.b	$xr23, $a6
	ld.b	$a6, $a4, 9
	xvreplgr2vr.b	$xr24, $a5
	ld.b	$a5, $a4, 11
	xvextrins.b	$xr0, $xr2, 204
	xvreplgr2vr.b	$xr5, $a6
	ld.b	$a6, $a4, 13
	xvreplgr2vr.b	$xr25, $a5
	ld.b	$a5, $a4, 15
	xvpermi.q	$xr30, $xr0, 48
	xvreplgr2vr.b	$xr26, $a6
	ld.b	$a6, $a4, 17
	xvreplgr2vr.b	$xr27, $a5
	ld.b	$a5, $a4, 19
	xvextrins.b	$xr0, $xr30, 221
	xvreplgr2vr.b	$xr2, $a6
	ld.b	$a6, $a4, 21
	xvreplgr2vr.b	$xr28, $a5
	ld.b	$a5, $a4, 23
	xvpermi.q	$xr3, $xr0, 48
	xvreplgr2vr.b	$xr29, $a6
	ld.b	$a6, $a4, 25
	xvreplgr2vr.b	$xr30, $a5
	ld.b	$a5, $a4, 27
	xvextrins.b	$xr0, $xr3, 238
	xvreplgr2vr.b	$xr3, $a6
	ld.b	$a6, $a4, 29
	xvreplgr2vr.b	$xr31, $a5
	xvpermi.q	$xr1, $xr0, 48
	xvextrins.b	$xr0, $xr1, 255
	xvreplgr2vr.b	$xr1, $a6
	ld.b	$a5, $a4, 31
	xvpermi.q	$xr4, $xr0, 18
	xvextrins.b	$xr4, $xr4, 0
	xvpermi.q	$xr7, $xr4, 18
	xvextrins.b	$xr4, $xr7, 17
	xvreplgr2vr.b	$xr7, $a5
	xvpermi.q	$xr8, $xr4, 18
	xvextrins.b	$xr4, $xr8, 34
	xvpermi.q	$xr9, $xr4, 18
	xvextrins.b	$xr4, $xr9, 51
	xvpermi.q	$xr11, $xr4, 18
	xvextrins.b	$xr4, $xr11, 68
	xvpermi.q	$xr12, $xr4, 18
	xvextrins.b	$xr4, $xr12, 85
	xvpermi.q	$xr13, $xr4, 18
	xvextrins.b	$xr4, $xr13, 102
	xvpermi.q	$xr14, $xr4, 18
	xvextrins.b	$xr4, $xr14, 119
	xvpermi.q	$xr15, $xr4, 18
	xvextrins.b	$xr4, $xr15, 136
	xvpermi.q	$xr16, $xr4, 18
	xvextrins.b	$xr4, $xr16, 153
	xvpermi.q	$xr17, $xr4, 18
	xvextrins.b	$xr4, $xr17, 170
	xvpermi.q	$xr18, $xr4, 18
	xvextrins.b	$xr4, $xr18, 187
	xvpermi.q	$xr10, $xr4, 18
	xvextrins.b	$xr4, $xr10, 204
	xvpermi.q	$xr19, $xr4, 18
	xvextrins.b	$xr4, $xr19, 221
	xvpermi.q	$xr20, $xr4, 18
	xvextrins.b	$xr4, $xr20, 238
	xvpermi.q	$xr21, $xr4, 18
	xvextrins.b	$xr4, $xr21, 255
	xvpermi.q	$xr6, $xr4, 48
	xvextrins.b	$xr4, $xr6, 0
	xvpermi.q	$xr22, $xr4, 48
	xvextrins.b	$xr4, $xr22, 17
	xvpermi.q	$xr23, $xr4, 48
	xvextrins.b	$xr4, $xr23, 34
	xvpermi.q	$xr24, $xr4, 48
	xvextrins.b	$xr4, $xr24, 51
	xvpermi.q	$xr5, $xr4, 48
	xvextrins.b	$xr4, $xr5, 68
	xvpermi.q	$xr25, $xr4, 48
	xvextrins.b	$xr4, $xr25, 85
	xvpermi.q	$xr26, $xr4, 48
	xvextrins.b	$xr4, $xr26, 102
	xvpermi.q	$xr27, $xr4, 48
	xvextrins.b	$xr4, $xr27, 119
	xvpermi.q	$xr2, $xr4, 48
	xvextrins.b	$xr4, $xr2, 136
	xvpermi.q	$xr28, $xr4, 48
	xvextrins.b	$xr4, $xr28, 153
	xvpermi.q	$xr29, $xr4, 48
	xvextrins.b	$xr4, $xr29, 170
	xvpermi.q	$xr30, $xr4, 48
	xvextrins.b	$xr4, $xr30, 187
	xvpermi.q	$xr3, $xr4, 48
	xvextrins.b	$xr4, $xr3, 204
	xvpermi.q	$xr31, $xr4, 48
	xvextrins.b	$xr4, $xr31, 221
	xvpermi.q	$xr1, $xr4, 48
	xvextrins.b	$xr4, $xr1, 238
	xvslli.b	$xr0, $xr0, 4
	xvstx	$xr0, $a0, $a3
	xvpermi.q	$xr7, $xr4, 48
	xvextrins.b	$xr4, $xr7, 255
	xvadd.b	$xr0, $xr4, $xr0
	xvstx	$xr0, $a0, $a3
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 64
	bne	$a2, $a3, .LBB4_17
# %bb.18:                               # %middle.block
	beq	$a2, $a1, .LBB4_10
# %bb.19:                               # %vec.epilog.iter.check
	andi	$a3, $a1, 16
	bnez	$a3, .LBB4_13
# %bb.20:
	slli.d	$a3, $a2, 1
	b	.LBB4_7
.Lfunc_end4:
	.size	cli_utf16toascii, .Lfunc_end4-cli_utf16toascii
                                        # -- End function
	.globl	cli_strbcasestr                 # -- Begin function cli_strbcasestr
	.p2align	5
	.type	cli_strbcasestr,@function
cli_strbcasestr:                        # @cli_strbcasestr
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	addi.w	$s2, $a0, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	bge	$s2, $a1, .LBB5_2
# %bb.1:
	move	$a0, $zero
	b	.LBB5_3
.LBB5_2:
	sub.d	$a0, $s1, $a0
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$a0, $s0, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	sltui	$a0, $a0, 1
.LBB5_3:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end5:
	.size	cli_strbcasestr, .Lfunc_end5-cli_strbcasestr
                                        # -- End function
	.globl	cli_chomp                       # -- Begin function cli_chomp
	.p2align	5
	.type	cli_chomp,@function
cli_chomp:                              # @cli_chomp
# %bb.0:
	beqz	$a0, .LBB6_9
# %bb.1:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB6_8
# %bb.2:                                # %.preheader
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB6_7
# %bb.3:                                # %.lr.ph.preheader
	bstrpick.d	$a0, $a1, 30, 0
	addi.d	$a1, $fp, -1
	ori	$a3, $zero, 13
	ori	$a4, $zero, 10
	move	$a5, $a0
	b	.LBB6_5
	.p2align	4, , 16
.LBB6_4:                                # %.critedge2
                                        #   in Loop: Header=BB6_5 Depth=1
	stx.b	$zero, $a1, $a5
	addi.d	$a5, $a5, -1
	addi.d	$a6, $a5, 1
	addi.w	$a0, $a0, -1
	bgeu	$a2, $a6, .LBB6_8
.LBB6_5:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a6, $a1, $a5
	beq	$a6, $a3, .LBB6_4
# %bb.6:                                # %.lr.ph
                                        #   in Loop: Header=BB6_5 Depth=1
	beq	$a6, $a4, .LBB6_4
.LBB6_7:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB6_8:
	move	$a0, $zero
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB6_9:
	addi.w	$a0, $zero, -1
	ret
.Lfunc_end6:
	.size	cli_chomp, .Lfunc_end6-cli_chomp
                                        # -- End function
	.globl	cli_strtok                      # -- Begin function cli_strtok
	.p2align	5
	.type	cli_strtok,@function
cli_strtok:                             # @cli_strtok
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
	move	$s0, $a0
	ld.bu	$a0, $a0, 0
	move	$fp, $a2
	move	$s2, $zero
	beqz	$a0, .LBB7_10
# %bb.1:
	move	$s1, $a1
	beqz	$a1, .LBB7_10
# %bb.2:                                # %.lr.ph.preheader
	move	$s2, $zero
	move	$s3, $zero
	addi.d	$s4, $s0, 1
	.p2align	4, , 16
.LBB7_3:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_5 Depth 2
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_8
# %bb.4:                                #   in Loop: Header=BB7_3 Depth=1
	addi.w	$s3, $s3, 1
	add.d	$s5, $s4, $s2
	.p2align	4, , 16
.LBB7_5:                                #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s5, 0
	move	$s6, $s2
	beqz	$a0, .LBB7_7
# %bb.6:                                #   in Loop: Header=BB7_5 Depth=2
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s6, 1
	addi.d	$s5, $s5, 1
	bnez	$a0, .LBB7_5
.LBB7_7:                                #   in Loop: Header=BB7_3 Depth=1
	move	$s2, $s6
.LBB7_8:                                # %.critedge
                                        #   in Loop: Header=BB7_3 Depth=1
	addi.w	$s2, $s2, 1
	ldx.bu	$a0, $s0, $s2
	beqz	$a0, .LBB7_10
# %bb.9:                                # %.critedge
                                        #   in Loop: Header=BB7_3 Depth=1
	bne	$s3, $s1, .LBB7_3
.LBB7_10:                               # %._crit_edge
	beqz	$a0, .LBB7_17
# %bb.11:                               # %.lr.ph60.preheader
	add.d	$s1, $s0, $s2
	add.d	$a1, $s2, $s0
	addi.d	$s3, $a1, 1
	move	$s0, $s2
	.p2align	4, , 16
.LBB7_12:                               # %.lr.ph60
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB7_14
# %bb.13:                               #   in Loop: Header=BB7_12 Depth=1
	ld.bu	$a0, $s3, 0
	addi.w	$s0, $s0, 1
	addi.d	$s3, $s3, 1
	bnez	$a0, .LBB7_12
.LBB7_14:                               # %._crit_edge61
	beq	$s0, $s2, .LBB7_17
# %bb.15:
	sub.w	$fp, $s0, $s2
	addi.w	$a0, $fp, 1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB7_17
# %bb.16:
	move	$s0, $a0
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	stx.b	$zero, $s0, $fp
	b	.LBB7_18
.LBB7_17:
	move	$a0, $zero
.LBB7_18:
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
.Lfunc_end7:
	.size	cli_strtok, .Lfunc_end7-cli_strtok
                                        # -- End function
	.globl	cli_strtokbuf                   # -- Begin function cli_strtokbuf
	.p2align	5
	.type	cli_strtokbuf,@function
cli_strtokbuf:                          # @cli_strtokbuf
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
	move	$s1, $a0
	ld.bu	$a0, $a0, 0
	move	$fp, $a3
	move	$s0, $a2
	move	$s3, $zero
	beqz	$a0, .LBB8_10
# %bb.1:
	move	$s2, $a1
	beqz	$a1, .LBB8_10
# %bb.2:                                # %.lr.ph.preheader
	move	$s3, $zero
	move	$s4, $zero
	addi.d	$s5, $s1, 1
	.p2align	4, , 16
.LBB8_3:                                # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_5 Depth 2
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB8_8
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=1
	addi.w	$s4, $s4, 1
	add.d	$s6, $s5, $s3
	.p2align	4, , 16
.LBB8_5:                                #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s6, 0
	move	$s7, $s3
	beqz	$a0, .LBB8_7
# %bb.6:                                #   in Loop: Header=BB8_5 Depth=2
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s7, 1
	addi.d	$s6, $s6, 1
	bnez	$a0, .LBB8_5
.LBB8_7:                                #   in Loop: Header=BB8_3 Depth=1
	move	$s3, $s7
.LBB8_8:                                # %.critedge
                                        #   in Loop: Header=BB8_3 Depth=1
	addi.w	$s3, $s3, 1
	ldx.bu	$a0, $s1, $s3
	beqz	$a0, .LBB8_10
# %bb.9:                                # %.critedge
                                        #   in Loop: Header=BB8_3 Depth=1
	bne	$s4, $s2, .LBB8_3
.LBB8_10:                               # %._crit_edge
	beqz	$a0, .LBB8_15
# %bb.11:                               # %.lr.ph54.preheader
	add.d	$s2, $s1, $s3
	add.d	$a1, $s3, $s1
	addi.d	$s4, $a1, 1
	move	$s1, $s3
	.p2align	4, , 16
.LBB8_12:                               # %.lr.ph54
                                        # =>This Inner Loop Header: Depth=1
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB8_14
# %bb.13:                               #   in Loop: Header=BB8_12 Depth=1
	ld.bu	$a0, $s4, 0
	addi.w	$s1, $s1, 1
	addi.d	$s4, $s4, 1
	bnez	$a0, .LBB8_12
.LBB8_14:                               # %._crit_edge55
	bne	$s1, $s3, .LBB8_16
.LBB8_15:
	move	$fp, $zero
	b	.LBB8_17
.LBB8_16:
	sub.w	$s0, $s1, $s3
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(strncpy)
	jirl	$ra, $ra, 0
	stx.b	$zero, $fp, $s0
.LBB8_17:
	move	$a0, $fp
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
.Lfunc_end8:
	.size	cli_strtokbuf, .Lfunc_end8-cli_strtokbuf
                                        # -- End function
	.globl	cli_memstr                      # -- Begin function cli_memstr
	.p2align	5
	.type	cli_memstr,@function
cli_memstr:                             # @cli_memstr
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	bge	$a1, $a3, .LBB9_2
.LBB9_1:
	move	$fp, $zero
	b	.LBB9_10
.LBB9_2:
	move	$s1, $a2
	move	$fp, $a0
	beq	$a0, $a2, .LBB9_10
# %bb.3:
	move	$s0, $a3
	move	$s3, $a1
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $a3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_10
# %bb.4:                                # %.preheader
	ld.b	$s2, $s1, 0
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_1
# %bb.5:                                # %.lr.ph.preheader
	move	$s4, $a0
	.p2align	4, , 16
.LBB9_6:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	sub.d	$a0, $fp, $s4
	add.w	$s3, $s3, $a0
	blt	$s3, $s0, .LBB9_1
# %bb.7:                                #   in Loop: Header=BB9_6 Depth=1
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB9_9
# %bb.8:                                #   in Loop: Header=BB9_6 Depth=1
	xor	$a0, $fp, $s4
	sltui	$a0, $a0, 1
	addi.d	$a1, $fp, 1
	masknez	$a2, $s4, $a0
	maskeqz	$a1, $a1, $a0
	or	$fp, $a1, $a2
	sub.w	$s3, $s3, $a0
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memchr)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	bnez	$a0, .LBB9_6
	b	.LBB9_1
.LBB9_9:
	move	$fp, $s4
.LBB9_10:                               # %.loopexit
	move	$a0, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end9:
	.size	cli_memstr, .Lfunc_end9-cli_memstr
                                        # -- End function
	.globl	cli_strrcpy                     # -- Begin function cli_strrcpy
	.p2align	5
	.type	cli_strrcpy,@function
cli_strrcpy:                            # @cli_strrcpy
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	beqz	$a0, .LBB10_5
# %bb.1:
	beqz	$a1, .LBB10_5
# %bb.2:                                # %.preheader.preheader
	addi.d	$a2, $a0, -1
	.p2align	4, , 16
.LBB10_3:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a3, $a1, 0
	addi.d	$a0, $a2, 1
	addi.d	$a1, $a1, 1
	st.b	$a3, $a2, 1
	move	$a2, $a0
	bnez	$a3, .LBB10_3
# %bb.4:                                # %.loopexit
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB10_5:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(cli_errmsg)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end10:
	.size	cli_strrcpy, .Lfunc_end10-cli_strrcpy
                                        # -- End function
	.globl	cli_strtokenize                 # -- Begin function cli_strtokenize
	.p2align	5
	.type	cli_strtokenize,@function
cli_strtokenize:                        # @cli_strtokenize
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	beqz	$a2, .LBB11_6
# %bb.1:                                # %.lr.ph
	move	$fp, $a2
	move	$s0, $a1
	move	$s3, $zero
	slli.d	$a1, $a2, 3
	addi.d	$s1, $a1, -8
	addi.d	$s2, $a3, 8
	.p2align	4, , 16
.LBB11_2:                               # =>This Inner Loop Header: Depth=1
	st.d	$a0, $s2, -8
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strchr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_4
# %bb.3:                                #   in Loop: Header=BB11_2 Depth=1
	move	$a1, $a0
	addi.d	$s3, $s3, 1
	addi.d	$a0, $a0, 1
	st.b	$zero, $a1, 0
	addi.d	$s1, $s1, -8
	addi.d	$s2, $s2, 8
	bne	$fp, $s3, .LBB11_2
	b	.LBB11_6
.LBB11_4:                               # %.preheader
	addi.d	$a0, $s3, 1
	bgeu	$a0, $fp, .LBB11_6
# %bb.5:                                # %.lr.ph19.preheader
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $s1
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.LBB11_6:                               # %.loopexit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end11:
	.size	cli_strtokenize, .Lfunc_end11-cli_strtokenize
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"cli_hex2si(): Malformed hexstring: %s (length: %u)\n"
	.size	.L.str, 52

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"cli_hex2str(): Malformed hexstring: %s (length: %d)\n"
	.size	.L.str.1, 53

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"cli_hex2num(): Malformed hexstring: %s (length: %d)\n"
	.size	.L.str.2, 53

	.type	.L__const.cli_str2hex.HEX,@object # @__const.cli_str2hex.HEX
	.section	.rodata.cst16,"aM",@progbits,16
.L__const.cli_str2hex.HEX:
	.ascii	"0123456789abcdef"
	.size	.L__const.cli_str2hex.HEX, 16

	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"cli_utf16toascii: length < 2\n"
	.size	.L.str.3, 30

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"cli_strrcpy: NULL argument\n"
	.size	.L.str.4, 28

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"hex2int() translation problem (%d)\n"
	.size	.L.str.5, 36

	.section	".note.GNU-stack","",@progbits
	.addrsig
