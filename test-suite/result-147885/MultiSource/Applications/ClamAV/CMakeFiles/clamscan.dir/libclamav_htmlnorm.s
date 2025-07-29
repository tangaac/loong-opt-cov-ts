	.file	"libclamav_htmlnorm.c"
	.text
	.globl	cli_readline                    # -- Begin function cli_readline
	.p2align	5
	.type	cli_readline,@function
cli_readline:                           # @cli_readline
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	move	$s1, $a2
	move	$fp, $a1
	move	$s0, $a0
	bstrpick.d	$a0, $a2, 31, 0
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_15
# %bb.1:
	beqz	$fp, .LBB0_16
# %bb.2:
	ld.d	$a1, $fp, 16
	ld.d	$a2, $fp, 8
	bge	$a1, $a2, .LBB0_25
# %bb.3:                                # %.lr.ph
	ld.d	$a3, $fp, 0
	add.d	$a1, $a3, $a1
	add.d	$a2, $a3, $a2
	addi.w	$a3, $s1, -1
	ori	$s0, $zero, 1
	ori	$a4, $zero, 10
	move	$s1, $a1
	.p2align	4, , 16
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	ld.bu	$a5, $s1, 0
	beq	$a5, $a4, .LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	bgeu	$s0, $a3, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	addi.d	$s1, $s1, 1
	addi.w	$s0, $s0, 1
	bltu	$s1, $a2, .LBB0_4
.LBB0_7:                                # %.critedge
	beq	$s1, $a2, .LBB0_26
# %bb.8:
	ld.bu	$s2, $s1, 0
	ori	$a2, $zero, 10
	beq	$s2, $a2, .LBB0_27
# %bb.9:                                # %.preheader84
	move	$s3, $a0
	move	$s4, $a1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	move	$a1, $s4
	move	$a2, $a0
	move	$a0, $s3
	ld.d	$a2, $a2, 0
	slli.d	$a3, $s2, 1
	ldx.hu	$a3, $a2, $a3
	slli.d	$a4, $a3, 50
	move	$a3, $s0
	bltz	$a4, .LBB0_14
# %bb.10:                               # %.preheader84
	ori	$a4, $zero, 2
	move	$a3, $s0
	bltu	$s0, $a4, .LBB0_14
# %bb.11:                               # %.lr.ph97.preheader
	addi.d	$a4, $s1, -1
	ori	$a5, $zero, 1
	move	$a3, $s0
	.p2align	4, , 16
.LBB0_12:                               # %.lr.ph97
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a6, $a4, 0
	slli.d	$a6, $a6, 1
	ldx.hu	$a6, $a2, $a6
	slli.d	$a6, $a6, 50
	addi.w	$a3, $a3, -1
	bltz	$a6, .LBB0_14
# %bb.13:                               # %.lr.ph97
                                        #   in Loop: Header=BB0_12 Depth=1
	addi.d	$a4, $a4, -1
	bltu	$a5, $a3, .LBB0_12
.LBB0_14:                               # %._crit_edge
	addi.d	$a2, $a3, -1
	sltui	$a2, $a2, 1
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $s0, $a2
	or	$s0, $a2, $a3
	b	.LBB0_27
.LBB0_15:
	move	$a0, $zero
	b	.LBB0_28
.LBB0_16:
	beqz	$s0, .LBB0_23
# %bb.17:
	move	$fp, $a0
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(fgets)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_24
# %bb.18:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB0_24
# %bb.19:
	addi.w	$s1, $s1, -1
	bne	$s1, $a0, .LBB0_29
# %bb.20:                               # %.preheader
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $a0, 0
	move	$a2, $zero
	bstrpick.d	$s1, $s1, 31, 0
	move	$a0, $fp
	.p2align	4, , 16
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	add.d	$a3, $a0, $s1
	ld.bu	$a3, $a3, -1
	slli.d	$a3, $a3, 1
	ldx.hu	$a3, $a1, $a3
	slli.d	$a3, $a3, 50
	bltz	$a3, .LBB0_30
# %bb.22:                               #   in Loop: Header=BB0_21 Depth=1
	addi.d	$s1, $s1, -1
	addi.w	$a2, $a2, -1
	bnez	$s1, .LBB0_21
	b	.LBB0_28
.LBB0_23:
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	move	$fp, $a0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_24:
	move	$a0, $fp
.LBB0_25:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB0_28
.LBB0_26:
	addi.w	$s0, $s0, -1
.LBB0_27:
	bstrpick.d	$s1, $s0, 31, 0
	move	$s0, $a0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	stx.b	$zero, $s0, $s1
	ld.d	$a1, $fp, 16
	add.d	$a1, $a1, $s1
	st.d	$a1, $fp, 16
.LBB0_28:                               # %.loopexit
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB0_29:
	move	$a0, $fp
	b	.LBB0_28
.LBB0_30:
	bstrpick.d	$a1, $a2, 31, 0
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(fseek)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	bstrpick.d	$a1, $s1, 31, 0
	stx.b	$zero, $fp, $a1
	b	.LBB0_28
.Lfunc_end0:
	.size	cli_readline, .Lfunc_end0-cli_readline
                                        # -- End function
	.globl	html_tag_arg_free               # -- Begin function html_tag_arg_free
	.p2align	5
	.type	html_tag_arg_free,@function
html_tag_arg_free:                      # @html_tag_arg_free
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a0, $a0, 0
	blez	$a0, .LBB1_8
# %bb.1:                                # %.lr.ph
	move	$s0, $zero
	move	$s1, $zero
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a0, $fp, 0
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, 8
	bge	$s1, $a0, .LBB1_8
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 8
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 16
	ldx.d	$a0, $a0, $s0
	beqz	$a0, .LBB1_5
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_5:                                #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB1_2
# %bb.6:                                #   in Loop: Header=BB1_3 Depth=1
	ldx.d	$a0, $a0, $s0
	beqz	$a0, .LBB1_2
# %bb.7:                                #   in Loop: Header=BB1_3 Depth=1
	pcaddu18i	$ra, %call36(blobDestroy)
	jirl	$ra, $ra, 0
	b	.LBB1_2
.LBB1_8:                                # %._crit_edge
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB1_10
# %bb.9:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_10:
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB1_12
# %bb.11:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_12:
	ld.d	$a0, $fp, 24
	addi.d	$s0, $fp, 8
	beqz	$a0, .LBB1_14
# %bb.13:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB1_14:
	st.w	$zero, $fp, 0
	st.d	$zero, $s0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 8
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end1:
	.size	html_tag_arg_free, .Lfunc_end1-html_tag_arg_free
                                        # -- End function
	.globl	html_normalise_mem              # -- Begin function html_normalise_mem
	.p2align	5
	.type	html_normalise_mem,@function
html_normalise_mem:                     # @html_normalise_mem
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$a0, $sp, 0
	st.d	$a1, $sp, 8
	st.d	$zero, $sp, 16
	addi.w	$a0, $zero, -1
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(cli_html_normalise)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	html_normalise_mem, .Lfunc_end2-html_normalise_mem
                                        # -- End function
	.p2align	5                               # -- Begin function cli_html_normalise
	.type	cli_html_normalise,@function
cli_html_normalise:                     # @cli_html_normalise
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
	addi.d	$sp, $sp, -2048
	addi.d	$sp, $sp, -1648
	move	$s4, $a3
	move	$s5, $a2
	move	$s2, $a1
	beqz	$a4, .LBB3_2
# %bb.1:
	ld.bu	$a1, $a4, 24
	bstrpick.d	$s0, $a1, 1, 1
	move	$s8, $zero
	st.w	$zero, $sp, 1500
	bnez	$s2, .LBB3_6
	b	.LBB3_3
.LBB3_2:
	move	$s0, $zero
	move	$s8, $zero
	st.w	$zero, $sp, 1500
	bnez	$s2, .LBB3_6
.LBB3_3:
	bltz	$a0, .LBB3_23
# %bb.4:
	move	$fp, $a0
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(dup)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB3_930
# %bb.5:
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	move	$fp, $a0
	pcaddu18i	$ra, %call36(fdopen)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	beqz	$a0, .LBB3_943
.LBB3_6:
	andi	$a0, $s0, 1
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	beqz	$a0, .LBB3_10
# %bb.7:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	lu12i.w	$a2, 4
	addi.d	$a0, $sp, 1320
	pcaddu18i	$ra, %call36(init_entity_converter)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_10
# %bb.8:
	move	$fp, $a0
	bnez	$s2, .LBB3_996
# %bb.9:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	b	.LBB3_996
.LBB3_10:
	st.w	$zero, $sp, 1496
	st.d	$zero, $sp, 1504
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 1512
	beqz	$s5, .LBB3_20
# %bb.11:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 1024
	move	$a3, $s5
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 448
	pcaddu18i	$ra, %call36(mkdir)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_13
# %bb.12:
	pcaddu18i	$ra, %call36(__errno_location)
	jirl	$ra, $ra, 0
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 17
	bne	$a0, $a1, .LBB3_986
.LBB3_13:
	lu12i.w	$a0, 2
	ori	$fp, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_986
# %bb.14:
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_944
# %bb.15:
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_956
# %bb.16:
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a2, $a0, %pc_lo12(.L.str.11)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 1024
	move	$a3, $s5
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 577
	ori	$a2, $zero, 384
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	st.w	$a0, $s0, 0
	beqz	$a0, .LBB3_958
# %bb.17:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a2, $a0, %pc_lo12(.L.str.12)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 1024
	move	$a3, $s5
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 577
	ori	$a2, $zero, 384
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	st.w	$a0, $s1, 0
	beqz	$a0, .LBB3_964
# %bb.18:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a2, $a0, %pc_lo12(.L.str.13)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 1024
	move	$a3, $s5
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 577
	ori	$a2, $zero, 384
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	st.w	$a0, $fp, 0
	beqz	$a0, .LBB3_982
# %bb.19:
	stptr.w	$zero, $s0, 8196
	stptr.w	$zero, $s1, 8196
	stptr.w	$zero, $fp, 8196
	b	.LBB3_21
.LBB3_20:
	move	$fp, $zero
	move	$s1, $zero
	move	$s0, $zero
.LBB3_21:
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_24
# %bb.22:
	lu12i.w	$a3, 2
	addi.d	$a0, $sp, 1320
	move	$a1, $s8
	move	$a2, $s2
	pcaddu18i	$ra, %call36(encoding_norm_readline)
	jirl	$ra, $ra, 0
	b	.LBB3_25
.LBB3_23:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	b	.LBB3_996
.LBB3_24:
	lu12i.w	$a2, 2
	move	$a0, $s8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_readline)
	jirl	$ra, $ra, 0
.LBB3_25:
	move	$s7, $a0
	st.d	$s4, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	st.d	$s1, $sp, 200                   # 8-byte Folded Spill
	beqz	$s7, .LBB3_931
# %bb.26:                               # %.lr.ph1868
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	move	$s6, $zero
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	st.d	$zero, $sp, 240                 # 8-byte Folded Spill
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	move	$s5, $zero
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
	move	$s3, $zero
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	move	$s0, $zero
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 4
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	addi.d	$a1, $s1, 4
	st.d	$a1, $sp, 224                   # 8-byte Folded Spill
	addi.d	$a1, $a0, 4
	lu12i.w	$a0, 468535
	ori	$a0, $a0, 815
	lu32i.d	$a0, 290921
	lu52i.d	$a0, $a0, 7
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, 1654
	ori	$a0, $a0, 3433
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, -4096
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
	ori	$fp, $zero, 1
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
                                        # implicit-def: $r4
                                        # kill: killed $r4
	st.d	$a1, $sp, 248                   # 8-byte Folded Spill
	b	.LBB3_28
	.p2align	4, , 16
.LBB3_27:                               #   in Loop: Header=BB3_28 Depth=1
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	move	$a0, $s8
	move	$a1, $s2
	lu12i.w	$a2, 2
	pcaddu18i	$ra, %call36(cli_readline)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ld.d	$s1, $sp, 200                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_932
.LBB3_28:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_30 Depth 2
                                        #     Child Loop BB3_47 Depth 2
                                        #       Child Loop BB3_748 Depth 3
                                        #       Child Loop BB3_864 Depth 3
                                        #       Child Loop BB3_833 Depth 3
                                        #       Child Loop BB3_883 Depth 3
                                        #       Child Loop BB3_683 Depth 3
                                        #       Child Loop BB3_838 Depth 3
                                        #       Child Loop BB3_691 Depth 3
                                        #       Child Loop BB3_845 Depth 3
                                        #       Child Loop BB3_854 Depth 3
                                        #       Child Loop BB3_857 Depth 3
                                        #       Child Loop BB3_425 Depth 3
                                        #       Child Loop BB3_672 Depth 3
                                        #       Child Loop BB3_867 Depth 3
                                        #       Child Loop BB3_700 Depth 3
                                        #         Child Loop BB3_717 Depth 4
                                        #       Child Loop BB3_600 Depth 3
                                        #       Child Loop BB3_133 Depth 3
                                        #       Child Loop BB3_442 Depth 3
	ld.bu	$s4, $s7, 0
	sltui	$a0, $s3, 1
	masknez	$s3, $s7, $a0
	st.d	$s7, $sp, 216                   # 8-byte Folded Spill
	beqz	$s4, .LBB3_33
# %bb.29:                               # %.lr.ph
                                        #   in Loop: Header=BB3_28 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	move	$s8, $s7
	.p2align	4, , 16
.LBB3_30:                               #   Parent Loop BB3_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a1, $s4, 1
	ldx.hu	$a1, $a0, $a1
	slli.d	$a1, $a1, 50
	bgez	$a1, .LBB3_43
# %bb.31:                               #   in Loop: Header=BB3_30 Depth=2
	ld.bu	$s4, $s8, 1
	addi.d	$a1, $s8, 1
	move	$s8, $a1
	bnez	$s4, .LBB3_30
# %bb.32:                               #   in Loop: Header=BB3_28 Depth=1
	move	$s8, $a1
	b	.LBB3_34
	.p2align	4, , 16
.LBB3_33:                               #   in Loop: Header=BB3_28 Depth=1
	move	$s8, $s7
.LBB3_34:                               # %._crit_edge1827
                                        #   in Loop: Header=BB3_28 Depth=1
	ld.d	$s4, $sp, 192                   # 8-byte Folded Reload
	beqz	$s4, .LBB3_41
# %bb.35:                               #   in Loop: Header=BB3_28 Depth=1
	ld.w	$a0, $s4, 4
	beqz	$a0, .LBB3_41
# %bb.36:                               #   in Loop: Header=BB3_28 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_41
# %bb.37:                               #   in Loop: Header=BB3_28 Depth=1
	beqz	$s3, .LBB3_41
# %bb.38:                               #   in Loop: Header=BB3_28 Depth=1
	bgeu	$s3, $s8, .LBB3_41
# %bb.39:                               #   in Loop: Header=BB3_28 Depth=1
	ld.d	$a0, $s4, 24
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	addi.w	$a1, $a1, -1
	slli.d	$s1, $a1, 3
	ldx.d	$a0, $a0, $s1
	pcaddu18i	$ra, %call36(blobGetDataSize)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1023
	bltu	$a1, $a0, .LBB3_41
# %bb.40:                               #   in Loop: Header=BB3_28 Depth=1
	ld.d	$a1, $s4, 24
	ori	$a2, $zero, 1024
	sub.d	$a2, $a2, $a0
	sub.d	$a3, $s8, $s3
	ldx.d	$a0, $a1, $s1
	sltu	$a1, $a2, $a3
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a2, $a1, $a3
	move	$a1, $s3
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB3_41:                               # %html_tag_contents_append.exit1600
                                        #   in Loop: Header=BB3_28 Depth=1
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_27
# %bb.42:                               #   in Loop: Header=BB3_28 Depth=1
	addi.d	$a0, $sp, 1320
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	move	$a1, $s8
	move	$a2, $s2
	lu12i.w	$a3, 2
	pcaddu18i	$ra, %call36(encoding_norm_readline)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ld.d	$s1, $sp, 200                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_28
	b	.LBB3_932
	.p2align	4, , 16
.LBB3_43:                               # %.lr.ph1826.preheader
                                        #   in Loop: Header=BB3_28 Depth=1
	st.d	$zero, $sp, 112                 # 8-byte Folded Spill
	move	$s7, $s5
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ori	$a0, $zero, 10
	b	.LBB3_47
	.p2align	4, , 16
.LBB3_44:                               #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $zero
	ori	$a1, $zero, 32
	st.b	$a1, $s8, 0
.LBB3_45:                               # %.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $s7
	move	$s7, $fp
.LBB3_46:                               # %.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$s4, $s8, 0
	move	$fp, $s7
	move	$s7, $s5
	beqz	$s4, .LBB3_34
.LBB3_47:                               # %.lr.ph1826
                                        #   Parent Loop BB3_28 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_748 Depth 3
                                        #       Child Loop BB3_864 Depth 3
                                        #       Child Loop BB3_833 Depth 3
                                        #       Child Loop BB3_883 Depth 3
                                        #       Child Loop BB3_683 Depth 3
                                        #       Child Loop BB3_838 Depth 3
                                        #       Child Loop BB3_691 Depth 3
                                        #       Child Loop BB3_845 Depth 3
                                        #       Child Loop BB3_854 Depth 3
                                        #       Child Loop BB3_857 Depth 3
                                        #       Child Loop BB3_425 Depth 3
                                        #       Child Loop BB3_672 Depth 3
                                        #       Child Loop BB3_867 Depth 3
                                        #       Child Loop BB3_700 Depth 3
                                        #         Child Loop BB3_717 Depth 4
                                        #       Child Loop BB3_600 Depth 3
                                        #       Child Loop BB3_133 Depth 3
                                        #       Child Loop BB3_442 Depth 3
	bnez	$s6, .LBB3_49
# %bb.48:                               # %.lr.ph1826
                                        #   in Loop: Header=BB3_47 Depth=2
	beq	$s4, $a0, .LBB3_44
.LBB3_49:                               #   in Loop: Header=BB3_47 Depth=2
	bnez	$s6, .LBB3_52
# %bb.50:                               #   in Loop: Header=BB3_47 Depth=2
	ori	$a1, $zero, 13
	bne	$s4, $a1, .LBB3_52
# %bb.51:                               #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $zero
	addi.d	$s8, $s8, 1
	b	.LBB3_45
	.p2align	4, , 16
.LBB3_52:                               #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ori	$a1, $zero, 23
	bltu	$a1, $fp, .LBB3_45
# %bb.53:                               #   in Loop: Header=BB3_47 Depth=2
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	ori	$s6, $zero, 10
	slli.d	$a0, $fp, 2
	pcalau12i	$a1, %pc_hi20(.LJTI3_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI3_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB3_54:                               #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 60
	bne	$s4, $a0, .LBB3_275
# %bb.55:                               #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s4, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	beqz	$s5, .LBB3_59
# %bb.56:                               #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	lu12i.w	$a1, 2
	bne	$a0, $a1, .LBB3_58
# %bb.57:                               # %html_output_flush.exit.i1228
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	lu12i.w	$a2, 2
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_58:                               #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 60
	stx.b	$a2, $a1, $a0
.LBB3_59:                               #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_63
# %bb.60:                               #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	lu12i.w	$a1, 2
	bne	$a0, $a1, .LBB3_62
# %bb.61:                               # %html_output_flush.exit13.i1227
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	lu12i.w	$a2, 2
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_62:                               #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 60
	stx.b	$a2, $a1, $a0
.LBB3_63:                               # %html_output_c.exit1229
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_68
# %bb.64:                               # %html_output_c.exit1229
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_68
# %bb.65:                               #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	lu12i.w	$a1, 2
	bne	$a0, $a1, .LBB3_67
# %bb.66:                               # %html_output_flush.exit.i1231
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	lu12i.w	$a2, 2
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_67:                               #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ori	$a2, $zero, 60
	stx.b	$a2, $a1, $a0
.LBB3_68:                               # %html_output_c.exit1232
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s4, .LBB3_617
# %bb.69:                               #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s4, 4
	beqz	$a0, .LBB3_617
# %bb.70:                               #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_617
# %bb.71:                               #   in Loop: Header=BB3_47 Depth=2
	beqz	$s3, .LBB3_617
# %bb.72:                               #   in Loop: Header=BB3_47 Depth=2
	bgeu	$s3, $s8, .LBB3_616
# %bb.73:                               #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $s4, 24
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	addi.w	$a1, $a1, -1
	slli.d	$fp, $a1, 3
	ldx.d	$a0, $a0, $fp
	pcaddu18i	$ra, %call36(blobGetDataSize)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1023
	bltu	$a1, $a0, .LBB3_75
# %bb.74:                               #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a1, $s4, 24
	ori	$a2, $zero, 1024
	sub.d	$a2, $a2, $a0
	sub.d	$a3, $s8, $s3
	ldx.d	$a0, $a1, $fp
	sltu	$a1, $a2, $a3
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a2, $a1, $a3
	move	$a1, $s3
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
.LBB3_75:                               # %html_tag_contents_append.exit
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s3, $zero
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	b	.LBB3_617
.LBB3_76:                               #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
	slli.w	$fp, $fp, 4
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a1, $a0, 51
	bltz	$a1, .LBB3_237
# %bb.77:                               #   in Loop: Header=BB3_47 Depth=2
	st.d	$fp, $sp, 152                   # 8-byte Folded Spill
	move	$a0, $s7
	b	.LBB3_356
.LBB3_78:                               #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_295
# %bb.79:                               #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$a0, 2
	ori	$a0, $a0, 8
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_998
# %bb.80:                               #   in Loop: Header=BB3_47 Depth=2
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 1024
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 1
	ori	$a0, $a0, 520
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(cli_gentemp)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a0, $a0, %pc_lo12(.L.str.46)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 577
	ori	$a2, $zero, 384
	move	$a0, $fp
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	st.w	$a0, $a1, 0
	move	$a0, $fp
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 0
	beqz	$a0, .LBB3_997
# %bb.81:                               # %html_output_str.exit1552
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a1, %pc_hi20(.L.str.47)
	addi.d	$a1, $a1, %pc_lo12(.L.str.47)
	ld.w	$a2, $a1, 16
	st.w	$a2, $fp, 20
	vld	$vr0, $a1, 0
	pcalau12i	$a1, %pc_hi20(.L.str.48)
	addi.d	$a1, $a1, %pc_lo12(.L.str.48)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 6
	addi.d	$s4, $fp, 4
	vst	$vr0, $fp, 4
	st.d	$a2, $fp, 24
	st.d	$a1, $fp, 30
	ori	$a1, $zero, 34
	stptr.w	$a1, $fp, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_342
# %bb.82:                               # %html_output_str.exit1552
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a1, $sp, 1528
	ori	$a2, $zero, 59
	bne	$a1, $a2, .LBB3_342
# %bb.83:                               # %.thread1631
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	ld.w	$a1, $a0, 7
	ld.d	$a0, $a0, 0
	st.w	$a1, $fp, 45
	st.d	$a0, $fp, 38
	ori	$a1, $zero, 45
	stptr.w	$a1, $fp, 8196
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	b	.LBB3_345
.LBB3_84:                               #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	ori	$a2, $zero, 4
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_296
# %bb.85:                               #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 2
	ldx.w	$s2, $a0, $a1
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$s4, 2
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	beqz	$s5, .LBB3_89
# %bb.86:                               #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $s4, .LBB3_88
# %bb.87:                               # %html_output_flush.exit.i1483
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_88:                               #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	stx.b	$s2, $a1, $a0
.LBB3_89:                               #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_93
# %bb.90:                               #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $s4, .LBB3_92
# %bb.91:                               # %html_output_flush.exit13.i1482
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_92:                               #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$s2, $a1, $a0
.LBB3_93:                               # %html_output_c.exit1484
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	beqz	$a4, .LBB3_97
# %bb.94:                               #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 0
	ld.d	$a1, $fp, 0
	slli.d	$a2, $a0, 2
	ldptr.w	$a0, $a4, 8196
	ldx.w	$fp, $a1, $a2
	bne	$a0, $s4, .LBB3_96
# %bb.95:                               # %html_output_flush.exit.i1486
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_96:                               #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	stx.b	$fp, $a1, $a0
.LBB3_97:                               # %html_output_c.exit1487
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	move	$s5, $s7
	ori	$s7, $zero, 14
	ori	$a0, $zero, 10
	b	.LBB3_46
.LBB3_98:                               #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 47
	bne	$a0, $a1, .LBB3_239
# %bb.99:                               #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	xor	$a1, $a0, $a2
	sltu	$a1, $zero, $a1
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	maskeqz	$s7, $a3, $a1
	ld.d	$s4, $sp, 192                   # 8-byte Folded Reload
	bne	$a0, $a2, .LBB3_104
# %bb.100:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_104
# %bb.101:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	lu12i.w	$a1, 2
	bne	$a0, $a1, .LBB3_103
# %bb.102:                              # %html_output_flush.exit.i1345
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	lu12i.w	$a2, 2
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_103:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s7, $zero
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	stx.b	$s6, $a1, $a0
.LBB3_104:                              # %html_output_c.exit1346
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s4, .LBB3_419
# %bb.105:                              #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s4, 4
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_420
# %bb.106:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_420
# %bb.107:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_109
# %bb.108:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $s4, 24
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	addi.d	$fp, $a1, -8
	ldx.d	$a0, $a0, $fp
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$a1, $a1, %pc_lo12(.L.str.52)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 24
	ldx.d	$a0, $a0, $fp
	pcaddu18i	$ra, %call36(blobClose)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
.LBB3_109:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s3, $s8
	b	.LBB3_420
.LBB3_110:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 61
	bne	$s4, $a0, .LBB3_251
# %bb.111:                              #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$fp, 2
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	beqz	$s5, .LBB3_115
# %bb.112:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $fp, .LBB3_114
# %bb.113:                              # %html_output_flush.exit.i1286
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_114:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 61
	stx.b	$a2, $a1, $a0
.LBB3_115:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_119
# %bb.116:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $fp, .LBB3_118
# %bb.117:                              # %html_output_flush.exit13.i1285
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_118:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 61
	stx.b	$a2, $a1, $a0
.LBB3_119:                              # %html_output_c.exit1287
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 240                 # 8-byte Folded Spill
	st.d	$zero, $sp, 160                 # 8-byte Folded Spill
	b	.LBB3_158
.LBB3_120:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$s7, $zero, 5
	ori	$s5, $zero, 8
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	beqz	$fp, .LBB3_297
# %bb.121:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a2, $fp, 8196
	blez	$a2, .LBB3_123
# %bb.122:                              #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	addi.d	$a1, $fp, 4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	stptr.w	$zero, $fp, 8196
.LBB3_123:                              # %html_output_flush.exit
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 160                 # 8-byte Folded Spill
	move	$s6, $zero
	b	.LBB3_929
.LBB3_124:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 50
	bltz	$a0, .LBB3_254
# %bb.125:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $zero
	b	.LBB3_536
.LBB3_126:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 35
	bne	$s4, $a0, .LBB3_255
# %bb.127:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	move	$s5, $s7
	ori	$s7, $zero, 12
	b	.LBB3_537
.LBB3_128:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 59
	bne	$s4, $a0, .LBB3_257
# %bb.129:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $sp, 295
	stx.b	$zero, $s0, $a0
	addi.d	$a0, $sp, 1320
	addi.d	$a1, $sp, 295
	pcaddu18i	$ra, %call36(entity_norm)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_428
# %bb.130:                              # %.preheader1680
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s4, $a0
	move	$s0, $s3
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB3_547
# %bb.131:                              # %.lr.ph1793
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$s2, $zero
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	b	.LBB3_133
	.p2align	4, , 16
.LBB3_132:                              #   in Loop: Header=BB3_133 Depth=3
	addi.d	$s2, $s2, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bgeu	$s2, $a0, .LBB3_548
.LBB3_133:                              #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a0, $s4, $s2
	ld.d	$a1, $fp, 0
	slli.d	$a0, $a0, 2
	ldx.w	$s3, $a1, $a0
	beqz	$s5, .LBB3_137
# %bb.134:                              #   in Loop: Header=BB3_133 Depth=3
	ldptr.w	$a0, $s5, 8196
	lu12i.w	$a1, 2
	bne	$a0, $a1, .LBB3_136
# %bb.135:                              # %html_output_flush.exit.i1427
                                        #   in Loop: Header=BB3_133 Depth=3
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	lu12i.w	$a2, 2
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_136:                              #   in Loop: Header=BB3_133 Depth=3
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	stx.b	$s3, $a1, $a0
.LBB3_137:                              #   in Loop: Header=BB3_133 Depth=3
	beqz	$s1, .LBB3_141
# %bb.138:                              #   in Loop: Header=BB3_133 Depth=3
	ldptr.w	$a0, $s1, 8196
	lu12i.w	$a1, 2
	bne	$a0, $a1, .LBB3_140
# %bb.139:                              # %html_output_flush.exit13.i1426
                                        #   in Loop: Header=BB3_133 Depth=3
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	lu12i.w	$a2, 2
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_140:                              #   in Loop: Header=BB3_133 Depth=3
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$s3, $a1, $a0
.LBB3_141:                              # %html_output_c.exit1428
                                        #   in Loop: Header=BB3_133 Depth=3
	ori	$a0, $zero, 9
	bne	$s7, $a0, .LBB3_132
# %bb.142:                              # %html_output_c.exit1428
                                        #   in Loop: Header=BB3_133 Depth=3
	ori	$a0, $zero, 1023
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	blt	$a0, $a2, .LBB3_132
# %bb.143:                              #   in Loop: Header=BB3_133 Depth=3
	addi.w	$a0, $a2, 1
	addi.d	$a1, $sp, 1528
	stx.b	$s3, $a2, $a1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	b	.LBB3_132
.LBB3_144:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 34
	beq	$s4, $a0, .LBB3_315
# %bb.145:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 39
	bne	$s4, $a0, .LBB3_323
# %bb.146:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	or	$a0, $a1, $a0
	addi.w	$a0, $a0, 0
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_492
# %bb.147:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	ori	$a0, $zero, 5
	ori	$s7, $zero, 8
	b	.LBB3_496
.LBB3_148:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 61
	bne	$s4, $a0, .LBB3_262
# %bb.149:                              #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$fp, 2
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	beqz	$s5, .LBB3_153
# %bb.150:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $fp, .LBB3_152
# %bb.151:                              # %html_output_flush.exit.i1266
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_152:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 61
	stx.b	$a2, $a1, $a0
.LBB3_153:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_157
# %bb.154:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $fp, .LBB3_156
# %bb.155:                              # %html_output_flush.exit13.i1265
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_156:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 61
	stx.b	$a2, $a1, $a0
.LBB3_157:                              # %html_output_c.exit1267
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 240                 # 8-byte Folded Spill
	st.d	$zero, $sp, 160                 # 8-byte Folded Spill
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 2559
	add.d	$a1, $sp, $a1
	stx.b	$zero, $a0, $a1
.LBB3_158:                              # %.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	ori	$s7, $zero, 5
	ori	$s5, $zero, 9
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$a0, $zero, 10
	b	.LBB3_46
.LBB3_159:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	beqz	$s5, .LBB3_163
# %bb.160:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a2, $a0, 0
	slli.d	$a3, $s4, 2
	ldptr.w	$a1, $s5, 8196
	ldx.w	$fp, $a2, $a3
	lu12i.w	$a2, 2
	bne	$a1, $a2, .LBB3_162
# %bb.161:                              # %html_output_flush.exit.i1339
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a1, $s5, 0
	move	$s1, $a0
	move	$a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	ld.d	$s1, $sp, 200                   # 8-byte Folded Reload
	move	$a1, $zero
.LBB3_162:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a2, $a1, 1
	stptr.w	$a2, $s5, 8196
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	stx.b	$fp, $a2, $a1
	ld.bu	$s4, $s8, 0
.LBB3_163:                              # %html_output_c.exit1340
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	beqz	$a1, .LBB3_168
# %bb.164:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_168
# %bb.165:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a1, $a0, 0
	slli.d	$a2, $s4, 2
	ldptr.w	$a0, $a4, 8196
	ldx.w	$fp, $a1, $a2
	lu12i.w	$a2, 2
	bne	$a0, $a2, .LBB3_167
# %bb.166:                              # %html_output_flush.exit.i1342
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_167:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	stx.b	$fp, $a1, $a0
	ld.bu	$s4, $s8, 0
.LBB3_168:                              # %html_output_c.exit1343
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $s4, -62
	sltui	$a0, $a0, 1
	masknez	$a1, $s7, $a0
	ori	$a2, $zero, 1
	maskeqz	$a2, $a2, $a0
	or	$s5, $a2, $a1
	ori	$a1, $zero, 2
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 5
	maskeqz	$a0, $a2, $a0
	or	$s7, $a0, $a1
	b	.LBB3_768
.LBB3_169:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 50
	bltz	$a0, .LBB3_293
# %bb.170:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$fp, 2
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	beqz	$s5, .LBB3_174
# %bb.171:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $fp, .LBB3_173
# %bb.172:                              # %html_output_flush.exit.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_173:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 32
	stx.b	$a2, $a1, $a0
.LBB3_174:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_570
# %bb.175:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $fp, .LBB3_177
# %bb.176:                              # %html_output_flush.exit13.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_177:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $zero
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 32
	b	.LBB3_659
.LBB3_178:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.w	$s2, $a0, 0
	bnez	$s2, .LBB3_278
# %bb.179:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 33
	bne	$s4, $a0, .LBB3_278
# %bb.180:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	lu12i.w	$fp, 2
	beqz	$s5, .LBB3_184
# %bb.181:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $fp, .LBB3_183
# %bb.182:                              # %html_output_flush.exit.i1242
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_183:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 33
	stx.b	$a2, $a1, $a0
.LBB3_184:                              # %html_output_c.exit1243
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	beqz	$a4, .LBB3_189
# %bb.185:                              # %html_output_c.exit1243
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_189
# %bb.186:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	bne	$a0, $fp, .LBB3_188
# %bb.187:                              # %html_output_flush.exit.i1245
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_188:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ori	$a2, $zero, 33
	stx.b	$a2, $a1, $a0
.LBB3_189:                              # %html_output_c.exit1246
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_192
# %bb.190:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	blez	$a0, .LBB3_192
# %bb.191:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $a0, -1
	stptr.w	$a0, $s1, 8196
.LBB3_192:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $zero
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	ori	$s7, $zero, 2
	ori	$a0, $zero, 10
	b	.LBB3_46
.LBB3_193:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 13
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s7, $a0
	move	$s5, $s7
	or	$s7, $a0, $a1
	addi.d	$s8, $s8, 1
	b	.LBB3_537
.LBB3_194:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 6
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	beq	$fp, $a0, .LBB3_318
# %bb.195:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 5
	bne	$fp, $a0, .LBB3_319
# %bb.196:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	addi.d	$a0, $sp, 1528
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_319
# %bb.197:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s5, .LBB3_200
# %bb.198:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	blez	$a0, .LBB3_200
# %bb.199:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $a0, -1
	stptr.w	$a0, $s5, 8196
.LBB3_200:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	beqz	$s1, .LBB3_203
# %bb.201:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	blez	$a0, .LBB3_203
# %bb.202:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $a0, -1
	stptr.w	$a0, $s1, 8196
.LBB3_203:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$fp, $zero, 18
	ori	$a1, $zero, 2
	ori	$s7, $zero, 8
	beq	$a0, $a1, .LBB3_545
# %bb.204:                              #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$s4, 2
	beqz	$s5, .LBB3_208
# %bb.205:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $s4, .LBB3_207
# %bb.206:                              # %html_output_flush.exit.i1291
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_207:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_208:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_666
.LBB3_209:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $s4, .LBB3_211
# %bb.210:                              # %html_output_flush.exit13.i1290
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_211:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 240                 # 8-byte Folded Spill
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
	b	.LBB3_743
.LBB3_212:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $s4, -34
	ori	$a1, $zero, 5
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	bltu	$a1, $a0, .LBB3_413
# %bb.213:                              #   in Loop: Header=BB3_47 Depth=2
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI3_1)
	addi.d	$a1, $a1, %pc_lo12(.LJTI3_1)
	ldx.w	$a0, $a1, $a0
	ori	$fp, $zero, 3
	add.d	$a0, $a1, $a0
	ori	$s5, $zero, 20
	jr	$a0
.LBB3_214:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	bnez	$a0, .LBB3_216
# %bb.215:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$fp, $zero, 21
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB3_412
.LBB3_216:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$fp, $zero, 20
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	beqz	$s4, .LBB3_412
# %bb.217:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s4, 8196
	lu12i.w	$a2, 2
	bne	$a0, $a2, .LBB3_219
# %bb.218:                              # %html_output_flush.exit.i1579
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s4, 0
	addi.d	$a1, $s4, 4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_219:                              #   in Loop: Header=BB3_47 Depth=2
	add.d	$a1, $s4, $a0
	addi.d	$a0, $a0, 1
	stptr.w	$a0, $s4, 8196
	ori	$a0, $zero, 34
	b	.LBB3_411
.LBB3_220:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
	beqz	$fp, .LBB3_298
# %bb.221:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 59
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	bne	$s4, $a0, .LBB3_310
	b	.LBB3_302
.LBB3_222:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_339
# %bb.223:                              #   in Loop: Header=BB3_47 Depth=2
	ext.w.b	$a0, $s4
	bltz	$a0, .LBB3_395
# %bb.224:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(table_order)
	addi.d	$a1, $a1, %pc_lo12(table_order)
	ldx.w	$a0, $a1, $a0
	slli.d	$a0, $a0, 9
	pcalau12i	$a1, %pc_hi20(decrypt_tables)
	addi.d	$a1, $a1, %pc_lo12(decrypt_tables)
	add.d	$a0, $a1, $a0
	slli.d	$a1, $s4, 2
	ldx.w	$fp, $a0, $a1
	ori	$a0, $zero, 255
	bne	$fp, $a0, .LBB3_381
# %bb.225:                              #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 1
	addi.d	$fp, $s8, 1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a2, $a2, -1
	ori	$a1, $zero, 255
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	ori	$a1, $zero, 42
	bltu	$a1, $a0, .LBB3_396
# %bb.226:                              #   in Loop: Header=BB3_47 Depth=2
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI3_2)
	addi.d	$a1, $a1, %pc_lo12(.LJTI3_2)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB3_227:                              #   in Loop: Header=BB3_47 Depth=2
	move	$fp, $s8
	b	.LBB3_396
.LBB3_228:                              #   in Loop: Header=BB3_47 Depth=2
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 8
	bgeu	$a0, $a1, .LBB3_294
# %bb.229:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $zero
	ori	$s7, $zero, 1
	b	.LBB3_536
.LBB3_230:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$s5, $s7
	ori	$s7, $zero, 17
	b	.LBB3_537
.LBB3_231:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB3_327
# %bb.232:                              #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$a2, 2
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB3_333
# %bb.233:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	beqz	$s4, .LBB3_337
# %bb.234:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s4, 8196
	bne	$a0, $a2, .LBB3_236
# %bb.235:                              # %html_output_flush.exit.i1588
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s4, 0
	addi.d	$a1, $s4, 4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_236:                              #   in Loop: Header=BB3_47 Depth=2
	add.d	$a1, $s4, $a0
	addi.d	$a0, $a0, 1
	stptr.w	$a0, $s4, 8196
	st.b	$fp, $a1, 4
	b	.LBB3_338
.LBB3_237:                              #   in Loop: Header=BB3_47 Depth=2
	slli.d	$a0, $a0, 52
	bltz	$a0, .LBB3_354
# %bb.238:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 2
	ldx.w	$a0, $a0, $a1
	add.d	$a0, $fp, $a0
	addi.w	$a0, $a0, -87
	b	.LBB3_355
.LBB3_239:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 7
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_423
# %bb.240:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_242
# %bb.241:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_689
.LBB3_242:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$s5, $zero, 1
	beqz	$s4, .LBB3_927
# %bb.243:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	sltui	$a0, $a0, 1
	sltu	$a1, $zero, $s3
	masknez	$a2, $s8, $a1
	maskeqz	$a1, $s3, $a1
	ori	$a3, $zero, 3584
	add.d	$a3, $sp, $a3
	ld.hu	$a3, $a3, 0
	or	$a1, $a1, $a2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s3, $a0
	or	$s3, $a0, $a1
	ori	$a0, $zero, 97
	beq	$a3, $a0, .LBB3_681
# %bb.244:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_745
.LBB3_245:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB3_831
# %bb.246:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a1, $a0, %pc_lo12(.L.str.42)
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 7
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_862
# %bb.247:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a1, $a0, %pc_lo12(.L.str.43)
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 200                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_927
# %bb.248:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	addi.d	$a0, $sp, 1496
	pcaddu18i	$ra, %call36(html_tag_arg_value)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_927
# %bb.249:                              #   in Loop: Header=BB3_47 Depth=2
	move	$fp, $a0
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB3_927
# %bb.250:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a1, $a0, %pc_lo12(.L.str.43)
	ld.d	$s4, $sp, 192                   # 8-byte Folded Reload
	b	.LBB3_897
.LBB3_251:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$s7, $zero, 8
	blez	$a0, .LBB3_253
# %bb.252:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a1, $zero, 2559
	add.d	$a1, $sp, $a1
	stx.b	$zero, $a0, $a1
	addi.d	$a0, $sp, 1496
	ori	$a1, $zero, 2559
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
.LBB3_253:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $zero
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	b	.LBB3_537
.LBB3_254:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	move	$s5, $s7
	ori	$s7, $zero, 5
	b	.LBB3_536
.LBB3_255:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 10
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	beqz	$a1, .LBB3_357
# %bb.256:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $s7
	ori	$s7, $zero, 4
	b	.LBB3_46
.LBB3_257:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.h	$a0, $a0, $a1
	andi	$a0, $a0, 8
	bnez	$a0, .LBB3_260
# %bb.258:                              # %switch.early.test
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 58
	beq	$s4, $a0, .LBB3_260
# %bb.259:                              # %switch.early.test
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 95
	bne	$s4, $a0, .LBB3_584
.LBB3_260:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ori	$a0, $zero, 1023
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	bltu	$a0, $s0, .LBB3_586
.LBB3_261:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $sp, 295
	stx.b	$s4, $s0, $a0
	addi.d	$s0, $s0, 1
	addi.d	$s8, $s8, 1
	move	$s5, $s7
	ori	$s7, $zero, 4
	ori	$a0, $zero, 10
	b	.LBB3_46
.LBB3_262:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 50
	bltz	$a0, .LBB3_361
# %bb.263:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 62
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	bne	$s4, $a0, .LBB3_501
# %bb.264:                              #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$fp, 2
	beqz	$s5, .LBB3_268
# %bb.265:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $fp, .LBB3_267
# %bb.266:                              # %html_output_flush.exit.i1271
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_267:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
.LBB3_268:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_272
# %bb.269:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $fp, .LBB3_271
# %bb.270:                              # %html_output_flush.exit13.i1270
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_271:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
.LBB3_272:                              # %html_output_c.exit1272
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	blez	$a0, .LBB3_274
# %bb.273:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a1, $zero, 2559
	add.d	$a1, $sp, $a1
	stx.b	$zero, $a0, $a1
	addi.d	$a0, $sp, 1496
	ori	$a1, $zero, 2559
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
.LBB3_274:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $zero
	addi.d	$s8, $s8, 1
	ori	$s7, $zero, 11
	b	.LBB3_929
.LBB3_275:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 50
	ori	$s5, $zero, 1
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	bltz	$a0, .LBB3_362
# %bb.276:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 38
	bne	$s4, $a0, .LBB3_521
# %bb.277:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	ori	$s7, $zero, 3
	b	.LBB3_929
.LBB3_278:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 62
	bne	$s4, $a0, .LBB3_363
# %bb.279:                              #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$fp, 2
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	beqz	$s5, .LBB3_283
# %bb.280:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $fp, .LBB3_282
# %bb.281:                              # %html_output_flush.exit.i1250
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_282:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
.LBB3_283:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_287
# %bb.284:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $fp, .LBB3_286
# %bb.285:                              # %html_output_flush.exit13.i1249
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_286:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
.LBB3_287:                              # %html_output_c.exit1251
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_292
# %bb.288:                              # %html_output_c.exit1251
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_292
# %bb.289:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	bne	$a0, $fp, .LBB3_291
# %bb.290:                              # %html_output_flush.exit.i1253
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_291:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
.LBB3_292:                              # %html_output_c.exit1254
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	stx.b	$zero, $s2, $a0
	ori	$s7, $zero, 5
	ori	$s5, $zero, 11
	b	.LBB3_613
.LBB3_293:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	move	$s5, $s7
	ori	$s7, $zero, 6
	b	.LBB3_536
.LBB3_294:                              #   in Loop: Header=BB3_47 Depth=2
	slli.d	$a1, $s4, 2
	ld.bu	$a2, $s8, 1
	pcalau12i	$a0, %pc_hi20(base64_chars)
	addi.d	$a0, $a0, %pc_lo12(base64_chars)
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a0, $a2
	move	$s5, $zero
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
	ld.bu	$a3, $s8, 2
	slli.w	$a1, $a1, 2
	srai.d	$a4, $a2, 4
	add.d	$a1, $a4, $a1
	slli.d	$a3, $a3, 2
	ldx.w	$a3, $a0, $a3
	slli.d	$a2, $a2, 12
	lu12i.w	$a4, 15
	and	$a2, $a2, $a4
	add.d	$a1, $a1, $a2
	slli.d	$a2, $a3, 6
	bstrpick.d	$a2, $a2, 31, 8
	slli.w	$a2, $a2, 8
	add.d	$a1, $a1, $a2
	slli.d	$a2, $a3, 22
	ld.bu	$a3, $s8, 3
	lu12i.w	$a4, 3072
	and	$a2, $a2, $a4
	add.d	$a1, $a1, $a2
	ld.bu	$a2, $s8, 4
	slli.d	$a3, $a3, 2
	ld.bu	$a4, $s8, 5
	ldx.w	$a3, $a0, $a3
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a0, $a2
	slli.d	$a4, $a4, 2
	ldx.w	$a0, $a0, $a4
	slli.w	$a3, $a3, 16
	add.d	$a1, $a1, $a3
	slli.w	$a2, $a2, 26
	add.d	$a1, $a1, $a2
	slli.d	$a0, $a0, 20
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	and	$a0, $a0, $a2
	addi.w	$a0, $a0, 0
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	addi.d	$s8, $s8, 8
	ori	$s7, $zero, 16
	b	.LBB3_536
.LBB3_295:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
	move	$s5, $s7
	ori	$s7, $zero, 20
	ori	$a0, $zero, 10
	ori	$s6, $zero, 1
	b	.LBB3_46
.LBB3_296:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $zero
	addi.d	$s8, $s8, 4
	ori	$s7, $zero, 15
	b	.LBB3_536
.LBB3_297:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
	st.d	$zero, $sp, 160                 # 8-byte Folded Spill
	move	$s6, $zero
	ori	$a0, $zero, 10
	b	.LBB3_46
.LBB3_298:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 10
	ori	$a1, $zero, 59
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	beq	$s4, $a1, .LBB3_302
# %bb.299:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a1, $zero, 120
	beq	$s4, $a1, .LBB3_301
# %bb.300:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a1, $zero, 88
	bne	$s4, $a1, .LBB3_310
.LBB3_301:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	move	$s5, $s7
	ori	$s7, $zero, 12
	b	.LBB3_46
.LBB3_302:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 9
	bne	$s7, $a0, .LBB3_305
# %bb.303:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	blt	$a0, $a2, .LBB3_305
# %bb.304:                              #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $a2, 1
	addi.d	$a1, $sp, 1528
	stx.b	$fp, $a2, $a1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
.LBB3_305:                              #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$s4, 2
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_397
# %bb.306:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 127
	blt	$a0, $fp, .LBB3_571
# %bb.307:                              #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $fp, 128
	ori	$a1, $zero, 383
	bltu	$a1, $a0, .LBB3_309
# %bb.308:                              # %tolower.exit.sink.split
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 2
	ldx.w	$fp, $a0, $a1
.LBB3_309:                              # %tolower.exit
                                        #   in Loop: Header=BB3_47 Depth=2
	bnez	$s5, .LBB3_398
	b	.LBB3_401
.LBB3_310:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a1, $a0, $a1
	slli.d	$a0, $a1, 52
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	addi.w	$fp, $a2, 0
	bltz	$a0, .LBB3_313
# %bb.311:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$fp, .LBB3_562
# %bb.312:                              #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$a2, 1
	and	$a1, $a1, $a2
	beqz	$a1, .LBB3_562
.LBB3_313:                              #   in Loop: Header=BB3_47 Depth=2
	bltz	$a0, .LBB3_499
# %bb.314:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 2
	ldx.w	$a0, $a0, $a1
	addi.d	$a0, $a0, -87
	b	.LBB3_500
.LBB3_315:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	bnez	$a0, .LBB3_493
# %bb.316:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB3_493
# %bb.317:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	ori	$a0, $zero, 5
	ori	$s7, $zero, 8
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	b	.LBB3_496
.LBB3_318:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	addi.d	$a0, $sp, 1528
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_538
.LBB3_319:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 34
	beq	$s4, $a0, .LBB3_466
# %bb.320:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 39
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	beq	$s4, $a0, .LBB3_453
# %bb.321:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 38
	bne	$s4, $a0, .LBB3_480
# %bb.322:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	ori	$fp, $zero, 3
	ori	$s7, $zero, 9
	b	.LBB3_743
.LBB3_323:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	lu12i.w	$a1, 2
	and	$a1, $a0, $a1
	ori	$a0, $zero, 62
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	beq	$s4, $a0, .LBB3_497
# %bb.324:                              #   in Loop: Header=BB3_47 Depth=2
	bnez	$a1, .LBB3_497
# %bb.325:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ori	$a0, $zero, 44
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	bne	$s4, $a0, .LBB3_614
# %bb.326:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s7, $zero
	addi.d	$a0, $sp, 1528
	stx.b	$zero, $fp, $a0
	addi.d	$s8, $s8, 1
	ori	$a0, $zero, 19
	b	.LBB3_496
.LBB3_327:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	lu12i.w	$s4, 2
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	beqz	$s5, .LBB3_337
# %bb.328:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $s4, .LBB3_330
# %bb.329:                              # %html_output_flush.exit.i1591
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	addi.d	$a1, $s5, 4
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_330:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$fp, $s5, 4
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ori	$a1, $zero, 37
	stx.b	$a1, $fp, $a0
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $s4, .LBB3_332
# %bb.331:                              # %html_output_flush.exit.i1594
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	move	$a1, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_332:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 48
	addi.d	$a2, $a0, 1
	stptr.w	$a2, $s5, 8196
	stx.b	$a1, $fp, $a0
	b	.LBB3_338
.LBB3_333:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	beqz	$fp, .LBB3_337
# %bb.334:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	bne	$a0, $a2, .LBB3_336
# %bb.335:                              # %html_output_flush.exit.i1597
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	addi.d	$a1, $fp, 4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_336:                              #   in Loop: Header=BB3_47 Depth=2
	add.d	$a1, $fp, $a0
	addi.d	$a0, $a0, 1
	stptr.w	$a0, $fp, 8196
	ori	$a0, $zero, 37
	st.b	$a0, $a1, 4
	b	.LBB3_338
.LBB3_337:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
.LBB3_338:                              # %.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $s7
	ori	$s7, $zero, 20
	ori	$a0, $zero, 10
	b	.LBB3_46
.LBB3_339:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$s7, $zero, 13
	ori	$s5, $zero, 1
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	beqz	$a4, .LBB3_546
# %bb.340:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a2, $a4, 8196
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4086
	blt	$a2, $a0, .LBB3_560
# %bb.341:                              # %html_output_flush.exit.thread.i1491
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 12
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.w	$a0, $a4, 0
	ld.d	$fp, $sp, 248                   # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a2, $zero
	stptr.w	$zero, $a4, 8196
	b	.LBB3_561
.LBB3_342:                              #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$a1, 1
	ori	$a2, $a1, 4061
	ori	$a1, $zero, 34
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	bge	$a2, $s5, .LBB3_345
# %bb.343:                              # %html_output_flush.exit.thread.i1562
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a2, $zero, 34
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	bstrpick.d	$a0, $s5, 31, 13
	stptr.w	$zero, $fp, 8196
	beqz	$a0, .LBB3_345
# %bb.344:                              # %html_output_flush.exit15.i1561
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	addi.d	$a1, $sp, 1528
	move	$a2, $s5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 2
	ori	$a0, $a1, 4
	ldx.w	$a0, $fp, $a0
	b	.LBB3_346
.LBB3_345:                              # %html_output_flush.exit.i1560.thread
                                        #   in Loop: Header=BB3_47 Depth=2
	add.d	$a0, $s4, $a1
	addi.d	$a1, $sp, 1528
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 2
	ori	$a0, $a1, 4
	ldx.w	$a0, $fp, $a0
	add.w	$a0, $a0, $s5
	stptr.w	$a0, $fp, 8196
.LBB3_346:                              # %html_output_str.exit1563
                                        #   in Loop: Header=BB3_47 Depth=2
	bne	$a0, $a1, .LBB3_348
# %bb.347:                              # %html_output_flush.exit.i1565
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	move	$a1, $s4
	lu12i.w	$a2, 2
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_348:                              # %html_output_c.exit1566
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 8196
	stx.b	$s6, $s4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a1, $a0, %pc_lo12(.L.str.50)
	addi.d	$a0, $sp, 1528
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	ldptr.w	$a2, $fp, 8196
	beqz	$a0, .LBB3_380
# %bb.349:                              #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4062
	ori	$s6, $zero, 1
	blt	$a2, $a0, .LBB3_351
# %bb.350:                              # %html_output_flush.exit.thread.i1570
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a2, $zero
	stptr.w	$zero, $fp, 8196
.LBB3_351:                              # %html_output_str.exit1571
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	vld	$vr0, $a0, 0
	ld.h	$a1, $a0, 32
	add.d	$a3, $s4, $a2
	vstx	$vr0, $s4, $a2
	st.h	$a1, $a3, 32
	vld	$vr0, $a0, 16
	vst	$vr0, $a3, 16
	lu12i.w	$a1, 2
	ori	$a0, $a1, 4
	ldx.w	$a0, $fp, $a0
	addi.w	$a2, $a0, 34
	stptr.w	$a2, $fp, 8196
	bne	$a2, $a1, .LBB3_353
.LBB3_352:                              # %html_output_flush.exit.i1573
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	move	$a1, $s4
	lu12i.w	$a2, 2
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a2, $zero
.LBB3_353:                              # %html_output_c.exit1574
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $a2, 1
	stptr.w	$a0, $fp, 8196
	ori	$a0, $zero, 10
	stx.b	$a0, $s4, $a2
	move	$s5, $s7
	ori	$s7, $zero, 20
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	b	.LBB3_46
.LBB3_354:                              #   in Loop: Header=BB3_47 Depth=2
	andi	$a0, $s4, 255
	add.d	$a0, $fp, $a0
	addi.w	$a0, $a0, -48
.LBB3_355:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ori	$a0, $zero, 23
.LBB3_356:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	move	$s5, $s7
	or	$s7, $a1, $a0
	b	.LBB3_768
.LBB3_357:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a1, $zero, 9
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	bne	$s7, $a1, .LBB3_651
# %bb.358:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	blt	$a0, $a3, .LBB3_360
# %bb.359:                              #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $a3, 1
	ori	$a1, $zero, 38
	addi.d	$a2, $sp, 1528
	stx.b	$a1, $a3, $a2
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
.LBB3_360:                              #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$fp, 2
	ori	$a0, $zero, 10
	bnez	$s5, .LBB3_652
	b	.LBB3_655
.LBB3_361:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 2559
	add.d	$a1, $sp, $a1
	stx.b	$zero, $a0, $a1
	ori	$s7, $zero, 5
	ori	$s5, $zero, 10
	b	.LBB3_536
.LBB3_362:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$s7, $zero, 6
	b	.LBB3_929
.LBB3_363:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	slli.d	$a0, $a0, 50
	bltz	$a0, .LBB3_535
# %bb.364:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $s0
	move	$s0, $s3
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 2
	ldx.w	$s3, $a0, $a1
	lu12i.w	$s4, 2
	beqz	$s5, .LBB3_368
# %bb.365:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $s4, .LBB3_367
# %bb.366:                              # %html_output_flush.exit.i1258
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_367:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	stx.b	$s3, $a1, $a0
.LBB3_368:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	beqz	$s1, .LBB3_372
# %bb.369:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $s4, .LBB3_371
# %bb.370:                              # %html_output_flush.exit13.i1257
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_371:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$s3, $a1, $a0
.LBB3_372:                              # %html_output_c.exit1259
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s3, $s0
	move	$s0, $s6
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_377
# %bb.373:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_377
# %bb.374:                              #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 0
	ld.d	$a1, $fp, 0
	slli.d	$a2, $a0, 2
	ldptr.w	$a0, $a4, 8196
	ldx.w	$s1, $a1, $a2
	bne	$a0, $s4, .LBB3_376
# %bb.375:                              # %html_output_flush.exit.i1261
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_376:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	stx.b	$s1, $a1, $a0
	ld.d	$s1, $sp, 200                   # 8-byte Folded Reload
.LBB3_377:                              # %html_output_c.exit1262
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	blt	$a0, $s2, .LBB3_379
# %bb.378:                              #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 0
	ld.d	$a1, $fp, 0
	slli.d	$a0, $a0, 2
	ldx.b	$a0, $a1, $a0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	ori	$a1, $zero, 3584
	add.d	$a1, $sp, $a1
	stx.b	$a0, $s2, $a1
.LBB3_379:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ori	$a0, $zero, 10
	addi.d	$s8, $s8, 1
	move	$s5, $s7
	ori	$s7, $zero, 7
	b	.LBB3_46
.LBB3_380:                              #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$a1, 2
	ori	$s6, $zero, 1
	beq	$a2, $a1, .LBB3_352
	b	.LBB3_353
.LBB3_381:                              #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$s4, 2
	beqz	$s5, .LBB3_385
# %bb.382:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $s4, .LBB3_384
# %bb.383:                              # %html_output_flush.exit.i1536
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_384:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	stx.b	$fp, $a1, $a0
.LBB3_385:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_389
# %bb.386:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $s4, .LBB3_388
# %bb.387:                              # %html_output_flush.exit13.i1535
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_388:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$fp, $a1, $a0
.LBB3_389:                              # %html_output_c.exit1537
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $fp, 128
	st.d	$fp, $sp, 152                   # 8-byte Folded Spill
	ori	$a1, $zero, 383
	bltu	$a1, $a0, .LBB3_391
# %bb.390:                              # %tolower.exit1539.sink.split
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 2
	ldx.w	$fp, $a0, $a1
.LBB3_391:                              # %tolower.exit1539
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_395
# %bb.392:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	bne	$a0, $s4, .LBB3_394
# %bb.393:                              # %html_output_flush.exit.i1541
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_394:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	stx.b	$fp, $a1, $a0
.LBB3_395:                              # %html_output_c.exit1500
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$fp, $s8
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
.LBB3_396:                              # %html_output_c.exit1500
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	addi.w	$a1, $a0, 0
	bstrpick.d	$a1, $a1, 62, 57
	add.d	$a1, $a0, $a1
	bstrpick.d	$a1, $a1, 31, 6
	slli.d	$a1, $a1, 6
	sub.w	$a0, $a0, $a1
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.d	$s8, $fp, 1
	addi.d	$a2, $a2, -1
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	move	$s5, $s7
	ori	$s7, $zero, 16
	b	.LBB3_537
.LBB3_397:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	andi	$a1, $fp, 255
	slli.d	$a1, $a1, 2
	ldx.w	$fp, $a0, $a1
	beqz	$s5, .LBB3_401
.LBB3_398:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $s4, .LBB3_400
# %bb.399:                              # %html_output_flush.exit.i1473
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_400:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	stx.b	$fp, $a1, $a0
.LBB3_401:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_767
# %bb.402:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $s4, .LBB3_404
# %bb.403:                              # %html_output_flush.exit13.i1472
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_404:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$fp, $a1, $a0
	b	.LBB3_767
.LBB3_405:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 168                 # 8-byte Folded Spill
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	ori	$fp, $zero, 23
	ori	$s5, $zero, 22
	b	.LBB3_577
.LBB3_406:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	or	$a0, $a1, $a0
	addi.w	$a0, $a0, 0
	ori	$fp, $zero, 21
	beqz	$a0, .LBB3_412
# %bb.407:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$fp, $zero, 20
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	beqz	$s4, .LBB3_412
# %bb.408:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s4, 8196
	lu12i.w	$a2, 2
	bne	$a0, $a2, .LBB3_410
# %bb.409:                              # %html_output_flush.exit.i1576
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s4, 0
	addi.d	$a1, $s4, 4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_410:                              #   in Loop: Header=BB3_47 Depth=2
	add.d	$a1, $s4, $a0
	addi.d	$a0, $a0, 1
	stptr.w	$a0, $s4, 8196
	ori	$a0, $zero, 39
.LBB3_411:                              # %html_output_c.exit1577
                                        #   in Loop: Header=BB3_47 Depth=2
	st.b	$a0, $a1, 4
.LBB3_412:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $s7
	b	.LBB3_577
.LBB3_413:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 62
	beq	$s4, $a1, .LBB3_575
# %bb.414:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	lu12i.w	$a1, 2
	and	$a0, $a0, $a1
	bnez	$a0, .LBB3_575
# %bb.415:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$fp, $zero, 20
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	beqz	$s5, .LBB3_576
# %bb.416:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $a1, .LBB3_418
# %bb.417:                              # %html_output_flush.exit.i1585
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	addi.d	$a1, $s5, 4
	lu12i.w	$a2, 2
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_418:                              #   in Loop: Header=BB3_47 Depth=2
	add.d	$a1, $s5, $a0
	addi.d	$a0, $a0, 1
	stptr.w	$a0, $s5, 8196
	st.b	$s4, $a1, 4
	b	.LBB3_576
.LBB3_419:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
.LBB3_420:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	ori	$s5, $zero, 1
	move	$fp, $s7
	bnez	$a0, .LBB3_928
# %bb.421:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bnez	$a0, .LBB3_667
# %bb.422:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	b	.LBB3_928
.LBB3_423:                              #   in Loop: Header=BB3_47 Depth=2
	ld.w	$s2, $sp, 1496
	ori	$s5, $zero, 1
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	blez	$s2, .LBB3_618
# %bb.424:                              # %.lr.ph.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s4, $sp, 1504
	move	$fp, $zero
	slli.d	$s1, $s2, 3
	.p2align	4, , 16
.LBB3_425:                              #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $s4, $fp
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_668
# %bb.426:                              #   in Loop: Header=BB3_425 Depth=3
	addi.d	$fp, $fp, 8
	bne	$s1, $fp, .LBB3_425
# %bb.427:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s0, $s3
	b	.LBB3_674
.LBB3_428:                              #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$s4, 2
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	beqz	$s5, .LBB3_432
# %bb.429:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $s4, .LBB3_431
# %bb.430:                              # %html_output_flush.exit.i1432
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_431:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 38
	stx.b	$a2, $a1, $a0
.LBB3_432:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_436
# %bb.433:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $s4, .LBB3_435
# %bb.434:                              # %html_output_flush.exit13.i1431
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_435:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 38
	stx.b	$a2, $a1, $a0
.LBB3_436:                              # %html_output_c.exit1433
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $s0
	ori	$a0, $zero, 9
	bne	$s7, $a0, .LBB3_439
# %bb.437:                              # %html_output_c.exit1433
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	blt	$a0, $fp, .LBB3_439
# %bb.438:                              #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $fp, 1
	ori	$a1, $zero, 38
	addi.d	$a2, $sp, 1528
	stx.b	$a1, $fp, $a2
	move	$fp, $a0
.LBB3_439:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s0, $fp
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	beqz	$s6, .LBB3_619
# %bb.440:                              # %.lr.ph1798
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s2, $sp, 295
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	b	.LBB3_442
	.p2align	4, , 16
.LBB3_441:                              #   in Loop: Header=BB3_442 Depth=3
	addi.d	$a0, $s6, -1
	addi.d	$s2, $s2, 1
	move	$s6, $a0
	beqz	$a0, .LBB3_620
.LBB3_442:                              #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a0, $s2, 0
	ld.d	$a1, $fp, 0
	slli.d	$a0, $a0, 2
	ldx.w	$s3, $a1, $a0
	beqz	$s5, .LBB3_446
# %bb.443:                              #   in Loop: Header=BB3_442 Depth=3
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $s4, .LBB3_445
# %bb.444:                              # %html_output_flush.exit.i1437
                                        #   in Loop: Header=BB3_442 Depth=3
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_445:                              #   in Loop: Header=BB3_442 Depth=3
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	stx.b	$s3, $a1, $a0
.LBB3_446:                              #   in Loop: Header=BB3_442 Depth=3
	beqz	$s1, .LBB3_450
# %bb.447:                              #   in Loop: Header=BB3_442 Depth=3
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $s4, .LBB3_449
# %bb.448:                              # %html_output_flush.exit13.i1436
                                        #   in Loop: Header=BB3_442 Depth=3
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_449:                              #   in Loop: Header=BB3_442 Depth=3
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$s3, $a1, $a0
.LBB3_450:                              # %html_output_c.exit1438
                                        #   in Loop: Header=BB3_442 Depth=3
	ori	$a0, $zero, 9
	bne	$s7, $a0, .LBB3_441
# %bb.451:                              # %html_output_c.exit1438
                                        #   in Loop: Header=BB3_442 Depth=3
	ori	$a0, $zero, 1023
	blt	$a0, $s0, .LBB3_441
# %bb.452:                              #   in Loop: Header=BB3_442 Depth=3
	move	$a2, $s0
	addi.w	$s0, $s0, 1
	addi.d	$a1, $sp, 1528
	stx.b	$s3, $a2, $a1
	b	.LBB3_441
.LBB3_453:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$fp, .LBB3_632
# %bb.454:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	or	$a0, $a1, $a0
	addi.w	$a0, $a0, 0
	lu12i.w	$fp, 2
	bnez	$a0, .LBB3_549
# %bb.455:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s4, $sp, 1528
	beqz	$s5, .LBB3_459
# %bb.456:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $fp, .LBB3_458
# %bb.457:                              # %html_output_flush.exit.i1306
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_458:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_459:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_463
# %bb.460:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $fp, .LBB3_462
# %bb.461:                              # %html_output_flush.exit13.i1305
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_462:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_463:                              # %html_output_c.exit1307
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	blt	$a0, $a2, .LBB3_465
# %bb.464:                              #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $a2, 1
	ori	$a1, $zero, 34
	stx.b	$a1, $a2, $s4
	move	$a2, $a0
.LBB3_465:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	stx.b	$zero, $a2, $s4
	addi.d	$a0, $sp, 1496
	ori	$a1, $zero, 2559
	add.d	$a1, $sp, $a1
	addi.d	$a2, $sp, 1528
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	ori	$fp, $zero, 5
	ori	$s7, $zero, 8
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	b	.LBB3_743
.LBB3_466:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	beqz	$fp, .LBB3_642
# %bb.467:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	lu12i.w	$fp, 2
	bnez	$a0, .LBB3_549
# %bb.468:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB3_549
# %bb.469:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s4, $sp, 1528
	beqz	$s5, .LBB3_473
# %bb.470:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $fp, .LBB3_472
# %bb.471:                              # %html_output_flush.exit.i1321
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_472:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_473:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_477
# %bb.474:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $fp, .LBB3_476
# %bb.475:                              # %html_output_flush.exit13.i1320
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_476:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_477:                              # %html_output_c.exit1322
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	blt	$a0, $a2, .LBB3_479
# %bb.478:                              #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $a2, 1
	ori	$a1, $zero, 34
	stx.b	$a1, $a2, $s4
	move	$a2, $a0
.LBB3_479:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	stx.b	$zero, $a2, $s4
	addi.d	$a0, $sp, 1496
	ori	$a1, $zero, 2559
	add.d	$a1, $sp, $a1
	addi.d	$a2, $sp, 1528
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	ori	$fp, $zero, 5
	ori	$s7, $zero, 8
	ori	$a0, $zero, 1
	b	.LBB3_580
.LBB3_480:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 62
	beq	$s4, $a1, .LBB3_578
# %bb.481:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a1, $a0, 0
	slli.d	$a2, $s4, 1
	ldx.hu	$a1, $a1, $a2
	lu12i.w	$a2, 2
	and	$a1, $a1, $a2
	bnez	$a1, .LBB3_578
# %bb.482:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 2
	ldx.w	$fp, $a0, $a1
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$s4, 2
	beqz	$s5, .LBB3_486
# %bb.483:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $s4, .LBB3_485
# %bb.484:                              # %html_output_flush.exit.i1336
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_485:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	stx.b	$fp, $a1, $a0
.LBB3_486:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_490
# %bb.487:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $s4, .LBB3_489
# %bb.488:                              # %html_output_flush.exit13.i1335
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_489:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$fp, $a1, $a0
.LBB3_490:                              # %html_output_c.exit1337
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	blt	$a0, $a3, .LBB3_559
# %bb.491:                              #   in Loop: Header=BB3_47 Depth=2
	ld.b	$a0, $s8, 0
	addi.w	$a1, $a3, 1
	addi.d	$a2, $sp, 1528
	stx.b	$a0, $a3, $a2
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	b	.LBB3_559
.LBB3_492:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	bge	$a0, $a3, .LBB3_494
	b	.LBB3_495
.LBB3_493:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	blt	$a0, $a3, .LBB3_495
.LBB3_494:                              #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $a3, 1
	addi.d	$a1, $sp, 1528
	ori	$a2, $zero, 34
	stx.b	$a2, $a3, $a1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
.LBB3_495:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	ori	$a0, $zero, 18
.LBB3_496:                              #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a1, $s8, 0
	addi.d	$a1, $a1, -92
	sltui	$a1, $a1, 1
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	move	$s5, $s7
	move	$s7, $a0
	ori	$a0, $zero, 10
	b	.LBB3_46
.LBB3_497:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.w	$a2, $a0, 0
	ori	$a5, $zero, 2
	ori	$a0, $zero, 5
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ori	$a3, $zero, 2
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	bne	$a2, $a5, .LBB3_581
# %bb.498:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	ori	$s7, $zero, 8
	b	.LBB3_496
.LBB3_499:                              #   in Loop: Header=BB3_47 Depth=2
	andi	$a0, $s4, 255
	addi.d	$a0, $a0, -48
.LBB3_500:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	sltui	$a1, $fp, 1
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	slli.d	$a2, $a5, 4
	slli.d	$a3, $a5, 3
	alsl.w	$a3, $a5, $a3, 1
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	add.w	$a0, $a0, $a1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	move	$s5, $s7
	ori	$s7, $zero, 12
	ori	$a0, $zero, 10
	b	.LBB3_46
.LBB3_501:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	addi.w	$s2, $a0, 0
	lu12i.w	$s4, 2
	bnez	$s2, .LBB3_510
# %bb.502:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s5, .LBB3_506
# %bb.503:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $s4, .LBB3_505
# %bb.504:                              # %html_output_flush.exit.i1276
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_505:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 32
	stx.b	$a2, $a1, $a0
.LBB3_506:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_510
# %bb.507:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $s4, .LBB3_509
# %bb.508:                              # %html_output_flush.exit13.i1275
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_509:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 32
	stx.b	$a2, $a1, $a0
.LBB3_510:                              # %html_output_c.exit1277
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $s0
	move	$s0, $s3
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.bu	$a0, $s8, 0
	ld.d	$a1, $fp, 0
	slli.d	$a0, $a0, 2
	ldx.w	$s3, $a1, $a0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	beqz	$s5, .LBB3_514
# %bb.511:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $s4, .LBB3_513
# %bb.512:                              # %html_output_flush.exit.i1281
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_513:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	stx.b	$s3, $a1, $a0
.LBB3_514:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_518
# %bb.515:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $s4, .LBB3_517
# %bb.516:                              # %html_output_flush.exit13.i1280
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_517:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$s3, $a1, $a0
.LBB3_518:                              # %html_output_c.exit1282
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	blt	$a0, $s2, .LBB3_520
# %bb.519:                              #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 0
	ld.d	$a1, $fp, 0
	slli.d	$a0, $a0, 2
	ldx.b	$a0, $a1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	ori	$a1, $zero, 2559
	add.d	$a1, $sp, $a1
	stx.b	$a0, $s2, $a1
.LBB3_520:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ori	$a0, $zero, 10
	move	$s3, $s0
	addi.d	$s8, $s8, 1
	move	$s5, $s7
	ori	$s7, $zero, 8
	move	$s0, $s6
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	b	.LBB3_46
.LBB3_521:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 2
	ldx.w	$s2, $a0, $a1
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	beqz	$s4, .LBB3_525
# %bb.522:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s4, 8196
	lu12i.w	$a1, 2
	bne	$a0, $a1, .LBB3_524
# %bb.523:                              # %html_output_flush.exit.i1236
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	lu12i.w	$a2, 2
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_524:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s4, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	stx.b	$s2, $a1, $a0
.LBB3_525:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$s4, 2
	beqz	$s1, .LBB3_529
# %bb.526:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $s4, .LBB3_528
# %bb.527:                              # %html_output_flush.exit13.i1235
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_528:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$s2, $a1, $a0
.LBB3_529:                              # %html_output_c.exit1237
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_534
# %bb.530:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_534
# %bb.531:                              #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 0
	ld.d	$a1, $fp, 0
	slli.d	$a2, $a0, 2
	ldptr.w	$a0, $a4, 8196
	ldx.w	$fp, $a1, $a2
	bne	$a0, $s4, .LBB3_533
# %bb.532:                              # %html_output_flush.exit.i1239
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_533:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	stx.b	$fp, $a1, $a0
.LBB3_534:                              # %html_output_c.exit1240
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	move	$s5, $s7
	ori	$s7, $zero, 1
	ori	$a0, $zero, 10
	b	.LBB3_46
.LBB3_535:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	stx.b	$zero, $s2, $a0
	ori	$s7, $zero, 5
	ori	$s5, $zero, 8
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
.LBB3_536:                              # %.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
.LBB3_537:                              # %.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 10
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	b	.LBB3_46
.LBB3_538:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s5, .LBB3_541
# %bb.539:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	blez	$a0, .LBB3_541
# %bb.540:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $a0, -1
	stptr.w	$a0, $s5, 8196
.LBB3_541:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	beqz	$s1, .LBB3_544
# %bb.542:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	blez	$a0, .LBB3_544
# %bb.543:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $a0, -1
	stptr.w	$a0, $s1, 8196
.LBB3_544:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$fp, $zero, 18
	ori	$a1, $zero, 2
	ori	$s7, $zero, 8
	bne	$a0, $a1, .LBB3_661
.LBB3_545:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 240                 # 8-byte Folded Spill
	b	.LBB3_742
.LBB3_546:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 12
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ori	$a0, $zero, 10
	b	.LBB3_46
.LBB3_547:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
.LBB3_548:                              # %._crit_edge
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$s3, $s0
	move	$s0, $zero
	b	.LBB3_767
.LBB3_549:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s5, .LBB3_553
# %bb.550:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $fp, .LBB3_552
# %bb.551:                              # %html_output_flush.exit.i1326
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_552:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_553:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_557
# %bb.554:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $fp, .LBB3_556
# %bb.555:                              # %html_output_flush.exit13.i1310
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_556:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_557:                              # %html_output_c.exit1312
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	blt	$a0, $a3, .LBB3_559
# %bb.558:                              #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $a3, 1
	addi.d	$a1, $sp, 1528
	ori	$a2, $zero, 34
	stx.b	$a2, $a3, $a1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
.LBB3_559:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	b	.LBB3_641
.LBB3_560:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 12
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 248                   # 8-byte Folded Reload
.LBB3_561:                              # %html_output_flush.exit.i1490
                                        #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$a5, 2
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a0, $a0, %pc_lo12(.L.str.45)
	ld.d	$a1, $a0, 0
	ld.h	$a0, $a0, 8
	add.d	$a3, $fp, $a2
	stx.d	$a1, $fp, $a2
	st.h	$a0, $a3, 8
	ori	$a0, $a5, 4
	ldx.w	$a0, $a4, $a0
	addi.d	$a0, $a0, 10
	stptr.w	$a0, $a4, 8196
	ori	$a0, $zero, 10
	b	.LBB3_46
.LBB3_562:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$fp, 2
	beqz	$s5, .LBB3_566
# %bb.563:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $fp, .LBB3_565
# %bb.564:                              # %html_output_flush.exit.i1478
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_565:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	stx.b	$a2, $a1, $a0
.LBB3_566:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_570
# %bb.567:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $fp, .LBB3_569
# %bb.568:                              # %html_output_flush.exit13.i1477
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_569:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $zero
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	b	.LBB3_659
.LBB3_570:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $zero
	ori	$a0, $zero, 10
	b	.LBB3_46
.LBB3_571:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $s0
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a2, $a0, %pc_lo12(.L.str.44)
	addi.d	$a0, $sp, 280
	ori	$a1, $zero, 9
	move	$a3, $fp
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	st.b	$zero, $sp, 289
	addi.d	$a0, $sp, 280
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	beqz	$s5, .LBB3_756
# %bb.572:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s4, $a0
	move	$s0, $s3
	ldptr.w	$a2, $s5, 8196
	addi.w	$fp, $a0, 0
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	blez	$a2, .LBB3_750
# %bb.573:                              #   in Loop: Header=BB3_47 Depth=2
	add.w	$a0, $a2, $s4
	bge	$s3, $a0, .LBB3_750
# %bb.574:                              # %html_output_flush.exit.thread.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a2, $zero
	stptr.w	$zero, $s5, 8196
	blt	$s3, $fp, .LBB3_753
	b	.LBB3_754
.LBB3_575:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$fp, $zero, 21
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB3_726
.LBB3_576:                              # %html_output_c.exit1577
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $s7
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
.LBB3_577:                              # %html_output_c.exit1577
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 1
	addi.d	$s8, $s8, 1
	addi.d	$a0, $a0, -92
	sltui	$a0, $a0, 1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	b	.LBB3_744
.LBB3_578:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 0
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB3_731
# %bb.579:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $sp, 1528
	stx.b	$zero, $fp, $a0
	addi.d	$a0, $sp, 1496
	ori	$a1, $zero, 2559
	add.d	$a1, $sp, $a1
	addi.d	$a2, $sp, 1528
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	ori	$fp, $zero, 5
	ori	$s7, $zero, 8
	ori	$a0, $zero, 2
.LBB3_580:                              # %html_output_c.exit1292
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	b	.LBB3_743
.LBB3_581:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a2, $zero, 1023
	addi.d	$a5, $sp, 1528
	blt	$a2, $fp, .LBB3_583
# %bb.582:                              # %.sink.split1977
                                        #   in Loop: Header=BB3_47 Depth=2
	sltui	$a1, $a1, 1
	addi.w	$a2, $fp, 1
	ori	$a3, $zero, 32
	masknez	$a3, $a3, $a1
	ori	$a6, $zero, 62
	maskeqz	$a1, $a6, $a1
	or	$a1, $a1, $a3
	stx.b	$a1, $fp, $a5
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
.LBB3_583:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	ori	$s7, $zero, 18
	b	.LBB3_496
.LBB3_584:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ori	$a0, $zero, 45
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	bne	$s4, $a0, .LBB3_586
# %bb.585:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1024
	bltu	$s0, $a0, .LBB3_261
.LBB3_586:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 9
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	lu12i.w	$s4, 2
	bne	$s7, $a0, .LBB3_589
# %bb.587:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	blt	$a0, $fp, .LBB3_589
# %bb.588:                              #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $fp, 1
	ori	$a1, $zero, 38
	addi.d	$a2, $sp, 1528
	stx.b	$a1, $fp, $a2
	move	$fp, $a0
.LBB3_589:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s5, .LBB3_593
# %bb.590:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $s4, .LBB3_592
# %bb.591:                              # %html_output_flush.exit.i1447
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_592:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 38
	stx.b	$a2, $a1, $a0
.LBB3_593:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	beqz	$s1, .LBB3_597
# %bb.594:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $s4, .LBB3_596
# %bb.595:                              # %html_output_flush.exit13.i1446
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_596:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 38
	stx.b	$a2, $a1, $a0
.LBB3_597:                              # %html_output_c.exit1448
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s0, .LBB3_612
# %bb.598:                              # %.lr.ph1789
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $s0
	move	$s0, $s3
	addi.d	$s2, $sp, 295
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$fp, $a0
	b	.LBB3_600
	.p2align	4, , 16
.LBB3_599:                              #   in Loop: Header=BB3_600 Depth=3
	addi.d	$a0, $s6, -1
	addi.d	$s2, $s2, 1
	move	$s6, $a0
	beqz	$a0, .LBB3_611
.LBB3_600:                              #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a0, $s2, 0
	ld.d	$a1, $fp, 0
	slli.d	$a0, $a0, 2
	ldx.w	$s3, $a1, $a0
	beqz	$s5, .LBB3_604
# %bb.601:                              #   in Loop: Header=BB3_600 Depth=3
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $s4, .LBB3_603
# %bb.602:                              # %html_output_flush.exit.i1452
                                        #   in Loop: Header=BB3_600 Depth=3
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_603:                              #   in Loop: Header=BB3_600 Depth=3
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	stx.b	$s3, $a1, $a0
.LBB3_604:                              #   in Loop: Header=BB3_600 Depth=3
	beqz	$s1, .LBB3_608
# %bb.605:                              #   in Loop: Header=BB3_600 Depth=3
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $s4, .LBB3_607
# %bb.606:                              # %html_output_flush.exit13.i1451
                                        #   in Loop: Header=BB3_600 Depth=3
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_607:                              #   in Loop: Header=BB3_600 Depth=3
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$s3, $a1, $a0
.LBB3_608:                              # %html_output_c.exit1453
                                        #   in Loop: Header=BB3_600 Depth=3
	ori	$a0, $zero, 9
	bne	$s7, $a0, .LBB3_599
# %bb.609:                              # %html_output_c.exit1453
                                        #   in Loop: Header=BB3_600 Depth=3
	ori	$a0, $zero, 1023
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	blt	$a0, $a2, .LBB3_599
# %bb.610:                              #   in Loop: Header=BB3_600 Depth=3
	addi.w	$a0, $a2, 1
	addi.d	$a1, $sp, 1528
	stx.b	$s3, $a2, $a1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	b	.LBB3_599
.LBB3_611:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $zero
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ori	$a0, $zero, 10
	move	$s3, $s0
	move	$s0, $zero
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	b	.LBB3_46
.LBB3_612:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s0, $zero
	move	$s5, $zero
.LBB3_613:                              # %.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ori	$a0, $zero, 10
	b	.LBB3_46
.LBB3_614:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	blt	$a0, $fp, .LBB3_495
# %bb.615:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 2
	ldx.b	$a0, $a0, $a1
	addi.w	$a1, $fp, 1
	addi.d	$a2, $sp, 1528
	stx.b	$a0, $fp, $a2
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	b	.LBB3_495
.LBB3_616:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s3, $zero
.LBB3_617:                              # %html_tag_contents_append.exit
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 10
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
	st.d	$s8, $sp, 112                   # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	ori	$s7, $zero, 5
	ori	$s5, $zero, 7
	b	.LBB3_46
.LBB3_618:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s0, $s3
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	move	$s3, $s0
	bnez	$a3, .LBB3_676
	b	.LBB3_695
.LBB3_619:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
.LBB3_620:                              # %._crit_edge1799
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 9
	bne	$s7, $a0, .LBB3_730
# %bb.621:                              # %._crit_edge1799
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ori	$a0, $zero, 1023
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	blt	$a0, $s0, .LBB3_623
# %bb.622:                              #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $s0, 1
	addi.d	$a1, $sp, 1528
	ori	$a2, $zero, 59
	stx.b	$a2, $s0, $a1
	move	$s0, $a0
.LBB3_623:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s5, .LBB3_627
.LBB3_624:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $s4, .LBB3_626
# %bb.625:                              # %html_output_flush.exit.i1442
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_626:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 59
	stx.b	$a2, $a1, $a0
.LBB3_627:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$s0, $sp, 240                   # 8-byte Folded Spill
	beqz	$s1, .LBB3_631
# %bb.628:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $s4, .LBB3_630
# %bb.629:                              # %html_output_flush.exit13.i1441
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_630:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 59
	stx.b	$a2, $a1, $a0
.LBB3_631:                              # %html_output_c.exit1443
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s0, $zero
	b	.LBB3_767
.LBB3_632:                              #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$fp, 2
	beqz	$s5, .LBB3_636
# %bb.633:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $fp, .LBB3_635
# %bb.634:                              # %html_output_flush.exit.i1301
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_635:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_636:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_640
# %bb.637:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $fp, .LBB3_639
# %bb.638:                              # %html_output_flush.exit13.i1300
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_639:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_640:                              # %html_output_c.exit1302
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 136                 # 8-byte Folded Spill
	ori	$a0, $zero, 34
	st.b	$a0, $sp, 1528
	addi.d	$s8, $s8, 1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
.LBB3_641:                              # %html_output_c.exit1292
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$fp, $zero, 9
	b	.LBB3_743
.LBB3_642:                              #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$fp, 2
	beqz	$s5, .LBB3_646
# %bb.643:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $fp, .LBB3_645
# %bb.644:                              # %html_output_flush.exit.i1316
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_645:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_646:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_650
# %bb.647:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $fp, .LBB3_649
# %bb.648:                              # %html_output_flush.exit13.i1315
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_649:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_650:                              # %html_output_c.exit1317
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 34
	st.b	$a0, $sp, 1528
	addi.d	$s8, $s8, 1
	ori	$fp, $zero, 9
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	b	.LBB3_743
.LBB3_651:                              #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$fp, 2
	beqz	$s5, .LBB3_655
.LBB3_652:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $fp, .LBB3_654
# %bb.653:                              # %html_output_flush.exit.i1422
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_654:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 38
	stx.b	$a2, $a1, $a0
	ori	$a0, $zero, 10
.LBB3_655:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_660
# %bb.656:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $fp, .LBB3_658
# %bb.657:                              # %html_output_flush.exit13.i1421
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_658:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $zero
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 38
.LBB3_659:                              # %.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	stx.b	$a2, $a1, $a0
	ori	$a0, $zero, 10
	b	.LBB3_46
.LBB3_660:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $zero
	b	.LBB3_46
.LBB3_661:                              #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$s4, 2
	beqz	$s5, .LBB3_665
# %bb.662:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $s4, .LBB3_664
# %bb.663:                              # %html_output_flush.exit.i1296
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_664:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_665:                              #   in Loop: Header=BB3_47 Depth=2
	bnez	$s1, .LBB3_209
.LBB3_666:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 240                 # 8-byte Folded Spill
	b	.LBB3_743
.LBB3_667:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	b	.LBB3_928
.LBB3_668:                              # %html_tag_arg_value.exit
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s0, $s3
	ld.d	$s3, $sp, 1512
	ldx.d	$fp, $s3, $fp
	beqz	$fp, .LBB3_674
# %bb.669:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 200                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_866
# %bb.670:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	bnez	$a0, .LBB3_675
# %bb.671:                              # %.lr.ph.i1352.preheader
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $zero
.LBB3_672:                              # %.lr.ph.i1352
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_907
# %bb.673:                              #   in Loop: Header=BB3_672 Depth=3
	addi.d	$s6, $s6, 1
	addi.d	$s4, $s4, 8
	ori	$s5, $zero, 14
	bne	$s2, $s6, .LBB3_672
	b	.LBB3_870
.LBB3_674:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s1, $sp, 200                   # 8-byte Folded Reload
.LBB3_675:                              # %.critedge1211
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	move	$s3, $s0
	beqz	$a3, .LBB3_695
.LBB3_676:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a3, 8196
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	lu12i.w	$a2, 2
	bne	$a0, $a2, .LBB3_678
# %bb.677:                              # %html_output_flush.exit.i.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a3, 0
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_678:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a2, $a0, 1
	stptr.w	$a2, $a3, 8196
	ori	$a2, $zero, 60
	stx.b	$a2, $a1, $a0
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ldptr.w	$a2, $a1, 8196
	move	$s4, $a0
	addi.w	$fp, $a0, 0
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	blez	$a2, .LBB3_685
# %bb.679:                              #   in Loop: Header=BB3_47 Depth=2
	add.w	$a0, $a2, $s4
	bge	$s2, $a0, .LBB3_685
# %bb.680:                              # %html_output_flush.exit.thread.i.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a1, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	move	$a2, $zero
	stptr.w	$zero, $a1, 8196
	blt	$s2, $fp, .LBB3_688
	b	.LBB3_694
.LBB3_681:                              #   in Loop: Header=BB3_47 Depth=2
	ld.w	$fp, $sp, 1496
	blez	$fp, .LBB3_927
# %bb.682:                              # %.lr.ph.i1378
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $s0
	move	$s0, $s3
	ld.d	$s2, $sp, 1504
	move	$s1, $zero
	slli.d	$s3, $fp, 3
	.p2align	4, , 16
.LBB3_683:                              #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $s2, $s1
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a1, $a1, %pc_lo12(.L.str.34)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_835
# %bb.684:                              #   in Loop: Header=BB3_683 Depth=3
	addi.d	$s1, $s1, 8
	bne	$s3, $s1, .LBB3_683
	b	.LBB3_841
.LBB3_685:                              # %html_output_flush.exit.i30.i
                                        #   in Loop: Header=BB3_47 Depth=2
	bge	$s2, $fp, .LBB3_694
# %bb.686:                              #   in Loop: Header=BB3_47 Depth=2
	blez	$a2, .LBB3_688
# %bb.687:                              #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a1, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	stptr.w	$zero, $a1, 8196
.LBB3_688:                              # %html_output_flush.exit15.i.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a1, 0
	ori	$a1, $zero, 3584
	add.d	$a1, $sp, $a1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	b	.LBB3_695
.LBB3_689:                              #   in Loop: Header=BB3_47 Depth=2
	ld.w	$fp, $sp, 1496
	ori	$s5, $zero, 1
	blez	$fp, .LBB3_927
# %bb.690:                              # %.lr.ph.i1364
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $s0
	move	$s0, $s3
	ld.d	$s2, $sp, 1504
	move	$s1, $zero
	slli.d	$s3, $fp, 3
.LBB3_691:                              #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $s2, $s1
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_843
# %bb.692:                              #   in Loop: Header=BB3_691 Depth=3
	addi.d	$s1, $s1, 8
	bne	$s3, $s1, .LBB3_691
# %bb.693:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s4, $zero
	b	.LBB3_844
.LBB3_694:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	ori	$a1, $zero, 3584
	add.d	$a1, $sp, $a1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$a0, 2
	ori	$a0, $a0, 4
	ldx.w	$a0, $a3, $a0
	add.d	$a0, $a0, $s4
	stptr.w	$a0, $a3, 8196
.LBB3_695:                              # %html_output_str.exit.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $sp, 1496
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	lu12i.w	$s4, 2
	blez	$a0, .LBB3_721
# %bb.696:                              # %.lr.ph58.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 1504
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 1512
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	move	$s2, $zero
	b	.LBB3_700
.LBB3_697:                              # %html_output_flush.exit.i49.i
                                        #   in Loop: Header=BB3_700 Depth=3
	ld.w	$a0, $a3, 0
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	move	$fp, $zero
.LBB3_698:                              #   in Loop: Header=BB3_700 Depth=3
	addi.d	$a0, $fp, 1
	stptr.w	$a0, $a3, 8196
	ori	$a0, $zero, 34
	stx.b	$a0, $a1, $fp
.LBB3_699:                              # %html_output_c.exit50.i
                                        #   in Loop: Header=BB3_700 Depth=3
	ld.w	$a0, $sp, 1496
	addi.d	$s2, $s2, 1
	bge	$s2, $a0, .LBB3_721
.LBB3_700:                              #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_717 Depth 4
	beqz	$a3, .LBB3_699
# %bb.701:                              #   in Loop: Header=BB3_700 Depth=3
	move	$s0, $s3
	ldptr.w	$a0, $a3, 8196
	bne	$a0, $s4, .LBB3_703
# %bb.702:                              # %html_output_flush.exit.i32.i
                                        #   in Loop: Header=BB3_700 Depth=3
	ld.w	$a0, $a3, 0
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_703:                              #   in Loop: Header=BB3_700 Depth=3
	addi.d	$a2, $a0, 1
	stptr.w	$a2, $a3, 8196
	ori	$a2, $zero, 32
	stx.b	$a2, $a1, $a0
	slli.d	$s6, $s2, 3
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$fp, $a0, $s6
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ldptr.w	$a2, $a1, 8196
	move	$s7, $a0
	addi.w	$s4, $a0, 0
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	blez	$a2, .LBB3_706
# %bb.704:                              #   in Loop: Header=BB3_700 Depth=3
	add.w	$a0, $a2, $s7
	bge	$s3, $a0, .LBB3_706
# %bb.705:                              # %html_output_flush.exit.thread.i38.i
                                        #   in Loop: Header=BB3_700 Depth=3
	ld.w	$a0, $a1, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	move	$a2, $zero
	stptr.w	$zero, $a1, 8196
	blt	$s3, $s4, .LBB3_709
	b	.LBB3_710
	.p2align	4, , 16
.LBB3_706:                              # %html_output_flush.exit.i36.i
                                        #   in Loop: Header=BB3_700 Depth=3
	bge	$s3, $s4, .LBB3_710
# %bb.707:                              #   in Loop: Header=BB3_700 Depth=3
	blez	$a2, .LBB3_709
# %bb.708:                              #   in Loop: Header=BB3_700 Depth=3
	ld.w	$a0, $a1, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	stptr.w	$zero, $a1, 8196
.LBB3_709:                              # %html_output_flush.exit15.i37.i
                                        #   in Loop: Header=BB3_700 Depth=3
	ld.w	$a0, $a1, 0
	move	$a1, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$s4, 2
	b	.LBB3_711
	.p2align	4, , 16
.LBB3_710:                              #   in Loop: Header=BB3_700 Depth=3
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	move	$a1, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$s4, 2
	ori	$a0, $s4, 4
	ldx.w	$a0, $a3, $a0
	add.d	$a0, $a0, $s7
	stptr.w	$a0, $a3, 8196
.LBB3_711:                              # %html_output_str.exit39.i
                                        #   in Loop: Header=BB3_700 Depth=3
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $s6
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$s3, $s0
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_699
# %bb.712:                              #   in Loop: Header=BB3_700 Depth=3
	ldptr.w	$a2, $a3, 8196
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4094
	blt	$a2, $a0, .LBB3_714
# %bb.713:                              # %html_output_flush.exit.thread.i43.i
                                        #   in Loop: Header=BB3_700 Depth=3
	ld.w	$a0, $a3, 0
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	move	$a2, $zero
	stptr.w	$zero, $a3, 8196
.LBB3_714:                              # %html_output_str.exit44.thread.i
                                        #   in Loop: Header=BB3_700 Depth=3
	ori	$a0, $s4, 573
	stx.h	$a0, $a1, $a2
	ori	$s6, $s4, 4
	ldx.w	$a1, $a3, $s6
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$s7, $s2, $a0, 3
	ld.d	$a0, $s7, 0
	addi.w	$fp, $a1, 2
	stptr.w	$fp, $a3, 8196
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.w	$a0, $a0, 0
	blez	$a0, .LBB3_720
# %bb.715:                              # %.lr.ph.split.preheader.i
                                        #   in Loop: Header=BB3_700 Depth=3
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$s1, $zero
	bstrpick.d	$s4, $s4, 30, 0
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	b	.LBB3_717
	.p2align	4, , 16
.LBB3_716:                              # %html_output_c.exit47.i
                                        #   in Loop: Header=BB3_717 Depth=4
	addi.d	$a2, $a0, 1
	stptr.w	$a2, $a3, 8196
	addi.d	$s1, $s1, 1
	stx.b	$s3, $a1, $a0
	beq	$s4, $s1, .LBB3_719
.LBB3_717:                              # %.lr.ph.split.i
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        #       Parent Loop BB3_700 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $s7, 0
	ldx.bu	$a0, $a0, $s1
	ld.d	$a4, $fp, 0
	slli.d	$a2, $a0, 2
	ldptr.w	$a0, $a3, 8196
	ldx.w	$s3, $a4, $a2
	lu12i.w	$a2, 2
	bne	$a0, $a2, .LBB3_716
# %bb.718:                              # %html_output_flush.exit.i46.i
                                        #   in Loop: Header=BB3_717 Depth=4
	ld.w	$a0, $a3, 0
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
	b	.LBB3_716
	.p2align	4, , 16
.LBB3_719:                              # %._crit_edge.thread65.ithread-pre-split
                                        #   in Loop: Header=BB3_700 Depth=3
	ldx.w	$fp, $a3, $s6
	ld.d	$s1, $sp, 200                   # 8-byte Folded Reload
	move	$s3, $s0
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	lu12i.w	$s4, 2
	beq	$fp, $s4, .LBB3_697
	b	.LBB3_698
.LBB3_720:                              #   in Loop: Header=BB3_700 Depth=3
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	lu12i.w	$s4, 2
	bne	$fp, $s4, .LBB3_698
	b	.LBB3_697
.LBB3_721:                              # %._crit_edge59.i
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a3, .LBB3_725
# %bb.722:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a3, 8196
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	bne	$a0, $s4, .LBB3_724
# %bb.723:                              # %html_output_flush.exit.i52.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a3, 0
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_724:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a2, $a0, 1
	stptr.w	$a2, $a3, 8196
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	b	.LBB3_928
.LBB3_725:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	b	.LBB3_928
.LBB3_726:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$fp, $zero, 20
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	beqz	$s5, .LBB3_412
# %bb.727:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	lu12i.w	$a1, 2
	bne	$a0, $a1, .LBB3_729
# %bb.728:                              # %html_output_flush.exit.i1582
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	addi.d	$a1, $s5, 4
	lu12i.w	$a2, 2
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_729:                              #   in Loop: Header=BB3_47 Depth=2
	add.d	$a1, $s5, $a0
	addi.d	$a0, $a0, 1
	stptr.w	$a0, $s5, 8196
	st.b	$s4, $a1, 4
	b	.LBB3_412
.LBB3_730:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	bnez	$s5, .LBB3_624
	b	.LBB3_627
.LBB3_731:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	addi.d	$s6, $sp, 1528
	beqz	$s5, .LBB3_735
# %bb.732:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a1, $s5, 8196
	lu12i.w	$a2, 2
	bne	$a1, $a2, .LBB3_734
# %bb.733:                              # %html_output_flush.exit.i1331
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a1, $s5, 0
	move	$fp, $a0
	move	$a0, $a1
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $fp
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	move	$a1, $zero
.LBB3_734:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a2, $a1, 1
	stptr.w	$a2, $s5, 8196
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	stx.b	$s4, $a2, $a1
.LBB3_735:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_739
# %bb.736:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a1, $s1, 8196
	lu12i.w	$a2, 2
	bne	$a1, $a2, .LBB3_738
# %bb.737:                              # %html_output_flush.exit13.i1330
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a1, $s1, 0
	move	$fp, $a0
	move	$a0, $a1
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $fp
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	move	$a1, $zero
.LBB3_738:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a2, $a1, 1
	stptr.w	$a2, $s1, 8196
	ld.d	$a2, $sp, 224                   # 8-byte Folded Reload
	stx.b	$s4, $a2, $a1
.LBB3_739:                              # %html_output_c.exit1332
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a1, $zero, 1023
	blt	$a1, $fp, .LBB3_741
# %bb.740:                              # %.sink.split
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a1, $s8, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	lu12i.w	$a1, 2
	and	$a0, $a0, $a1
	sltui	$a0, $a0, 1
	addi.w	$a1, $fp, 1
	ori	$a2, $zero, 32
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 62
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	stx.b	$a0, $fp, $s6
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
.LBB3_741:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	addi.d	$s8, $s8, 1
	ori	$fp, $zero, 5
	ori	$s7, $zero, 9
.LBB3_742:                              # %html_output_c.exit1292
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
.LBB3_743:                              # %html_output_c.exit1292
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 0
	addi.d	$a0, $a0, -92
	sltui	$a0, $a0, 1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	move	$s5, $s7
.LBB3_744:                              # %.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s7, $fp
	ori	$a0, $zero, 10
	b	.LBB3_46
.LBB3_745:                              #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s4, 4
	beqz	$a0, .LBB3_245
# %bb.746:                              #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $sp, 1496
	blez	$a0, .LBB3_927
# %bb.747:                              # %.lr.ph.i1392
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 1504
	move	$s1, $zero
	slli.d	$s2, $a0, 3
.LBB3_748:                              #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $fp, $s1
	pcalau12i	$a1, %pc_hi20(.L.str.38)
	addi.d	$a1, $a1, %pc_lo12(.L.str.38)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_885
# %bb.749:                              #   in Loop: Header=BB3_748 Depth=3
	addi.d	$s1, $s1, 8
	bne	$s2, $s1, .LBB3_748
	b	.LBB3_902
.LBB3_750:                              # %html_output_flush.exit.i1461
                                        #   in Loop: Header=BB3_47 Depth=2
	bge	$s3, $fp, .LBB3_754
# %bb.751:                              #   in Loop: Header=BB3_47 Depth=2
	blez	$a2, .LBB3_753
# %bb.752:                              #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	stptr.w	$zero, $s5, 8196
.LBB3_753:                              # %html_output_flush.exit15.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	addi.d	$a1, $sp, 280
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	b	.LBB3_755
.LBB3_754:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	addi.d	$a1, $sp, 280
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 4
	ldx.w	$a0, $s5, $a0
	add.d	$a0, $a0, $s4
	stptr.w	$a0, $s5, 8196
.LBB3_755:                              # %html_output_str.exit
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s3, $s0
.LBB3_756:                              # %html_output_str.exit
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $sp, 280
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB3_766
# %bb.757:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s4, $a0
	move	$s0, $s3
	ldptr.w	$a2, $s1, 8196
	addi.w	$fp, $a0, 0
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	blez	$a2, .LBB3_760
# %bb.758:                              #   in Loop: Header=BB3_47 Depth=2
	add.w	$a0, $a2, $s4
	bge	$s3, $a0, .LBB3_760
# %bb.759:                              # %html_output_flush.exit.thread.i1466
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a2, $zero
	stptr.w	$zero, $s1, 8196
	blt	$s3, $fp, .LBB3_763
	b	.LBB3_764
.LBB3_760:                              # %html_output_flush.exit.i1464
                                        #   in Loop: Header=BB3_47 Depth=2
	bge	$s3, $fp, .LBB3_764
# %bb.761:                              #   in Loop: Header=BB3_47 Depth=2
	blez	$a2, .LBB3_763
# %bb.762:                              #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	stptr.w	$zero, $s1, 8196
.LBB3_763:                              # %html_output_flush.exit15.i1465
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	addi.d	$a1, $sp, 280
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	b	.LBB3_765
.LBB3_764:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	addi.d	$a1, $sp, 280
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 4
	ldx.w	$a0, $s1, $a0
	add.d	$a0, $a0, $s4
	stptr.w	$a0, $s1, 8196
.LBB3_765:                              # %html_output_str.exit1467
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s3, $s0
.LBB3_766:                              # %html_output_str.exit1467
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$s0, $s6
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
.LBB3_767:                              # %html_output_c.exit1458
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $zero
.LBB3_768:                              # %.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	ori	$a0, $zero, 10
	b	.LBB3_46
.LBB3_769:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $a2
	lu12i.w	$s4, 2
	beqz	$s5, .LBB3_773
# %bb.770:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $s4, .LBB3_772
# %bb.771:                              # %html_output_flush.exit.i1504
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_772:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 13
	stx.b	$a2, $a1, $a0
.LBB3_773:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_777
# %bb.774:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $s4, .LBB3_776
# %bb.775:                              # %html_output_flush.exit13.i1503
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_776:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 13
	stx.b	$a2, $a1, $a0
.LBB3_777:                              # %html_output_c.exit1505
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_818
# %bb.778:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	bne	$a0, $s4, .LBB3_780
# %bb.779:                              # %html_output_flush.exit.i1507
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_780:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ori	$a2, $zero, 13
	b	.LBB3_817
.LBB3_781:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $a2
	lu12i.w	$s4, 2
	beqz	$s5, .LBB3_785
# %bb.782:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $s4, .LBB3_784
# %bb.783:                              # %html_output_flush.exit.i1528
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_784:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
.LBB3_785:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_789
# %bb.786:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $s4, .LBB3_788
# %bb.787:                              # %html_output_flush.exit13.i1527
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_788:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
.LBB3_789:                              # %html_output_c.exit1529
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_818
# %bb.790:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	bne	$a0, $s4, .LBB3_792
# %bb.791:                              # %html_output_flush.exit.i1531
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_792:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	b	.LBB3_817
.LBB3_793:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $a2
	lu12i.w	$s4, 2
	beqz	$s5, .LBB3_797
# %bb.794:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $s4, .LBB3_796
# %bb.795:                              # %html_output_flush.exit.i1496
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_796:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 60
	stx.b	$a2, $a1, $a0
.LBB3_797:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_801
# %bb.798:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $s4, .LBB3_800
# %bb.799:                              # %html_output_flush.exit13.i1495
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_800:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 60
	stx.b	$a2, $a1, $a0
.LBB3_801:                              # %html_output_c.exit1497
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_818
# %bb.802:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	bne	$a0, $s4, .LBB3_804
# %bb.803:                              # %html_output_flush.exit.i1499
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_804:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ori	$a2, $zero, 60
	b	.LBB3_817
.LBB3_805:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $a2
	lu12i.w	$s4, 2
	beqz	$s5, .LBB3_809
# %bb.806:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $s4, .LBB3_808
# %bb.807:                              # %html_output_flush.exit.i1512
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_808:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ori	$a2, $zero, 64
	stx.b	$a2, $a1, $a0
.LBB3_809:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_813
# %bb.810:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $s4, .LBB3_812
# %bb.811:                              # %html_output_flush.exit13.i1511
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_812:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	ori	$a2, $zero, 64
	stx.b	$a2, $a1, $a0
.LBB3_813:                              # %html_output_c.exit1513
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_818
# %bb.814:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	bne	$a0, $s4, .LBB3_816
# %bb.815:                              # %html_output_flush.exit.i1515
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_816:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ori	$a2, $zero, 64
.LBB3_817:                              # %html_output_c.exit1500
                                        #   in Loop: Header=BB3_47 Depth=2
	stx.b	$a2, $a1, $a0
	move	$a2, $s6
	b	.LBB3_396
.LBB3_818:                              #   in Loop: Header=BB3_47 Depth=2
	move	$a2, $s6
	b	.LBB3_396
.LBB3_819:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s8, $a2
	lu12i.w	$s4, 2
	beqz	$s5, .LBB3_823
# %bb.820:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s5, 8196
	bne	$a0, $s4, .LBB3_822
# %bb.821:                              # %html_output_flush.exit.i1520
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s5, 0
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_822:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s5, 8196
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	stx.b	$s6, $a1, $a0
.LBB3_823:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_827
# %bb.824:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $s4, .LBB3_826
# %bb.825:                              # %html_output_flush.exit13.i1519
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s1, 0
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_826:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$s6, $a1, $a0
.LBB3_827:                              # %html_output_c.exit1521
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_871
# %bb.828:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	bne	$a0, $s4, .LBB3_830
# %bb.829:                              # %html_output_flush.exit.i1523
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_830:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	stx.b	$s6, $a1, $a0
	move	$a2, $s8
	b	.LBB3_396
.LBB3_831:                              #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $sp, 1496
	blez	$a0, .LBB3_902
# %bb.832:                              # %.lr.ph.i1399
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $s0
	move	$s0, $s3
	ld.d	$fp, $sp, 1504
	move	$s1, $zero
	bstrpick.d	$s2, $a0, 31, 0
	slli.d	$s3, $s2, 3
.LBB3_833:                              #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $fp, $s1
	pcalau12i	$a1, %pc_hi20(.L.str.40)
	addi.d	$a1, $a1, %pc_lo12(.L.str.40)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_872
# %bb.834:                              #   in Loop: Header=BB3_833 Depth=3
	addi.d	$s1, $s1, 8
	bne	$s3, $s1, .LBB3_833
	b	.LBB3_879
.LBB3_835:                              # %html_tag_arg_value.exit1383
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s3, $sp, 1512
	ldx.d	$s4, $s3, $s1
	beqz	$s4, .LBB3_841
# %bb.836:                              #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s4, 0
	ld.d	$s1, $sp, 200                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_910
# %bb.837:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 4
	beqz	$a0, .LBB3_912
.LBB3_838:                              # %.lr.ph.i1385
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s2, 0
	pcalau12i	$a1, %pc_hi20(.L.str.35)
	addi.d	$a1, $a1, %pc_lo12(.L.str.35)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_914
# %bb.839:                              #   in Loop: Header=BB3_838 Depth=3
	addi.d	$s3, $s3, 8
	addi.d	$fp, $fp, -1
	addi.d	$s2, $s2, 8
	bnez	$fp, .LBB3_838
# %bb.840:                              #   in Loop: Header=BB3_47 Depth=2
	move	$a2, $zero
	b	.LBB3_915
.LBB3_841:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 200                   # 8-byte Folded Reload
.LBB3_842:                              # %.critedge1215
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s3, $s0
	b	.LBB3_906
.LBB3_843:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 1512
	ldx.d	$s4, $a0, $s1
.LBB3_844:                              # %.lr.ph.i1371
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s1, $zero
	move	$s3, $s0
.LBB3_845:                              #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $s2, $s1
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_848
# %bb.846:                              #   in Loop: Header=BB3_845 Depth=3
	addi.d	$fp, $fp, -1
	addi.d	$s1, $s1, 8
	bnez	$fp, .LBB3_845
# %bb.847:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	b	.LBB3_905
.LBB3_848:                              # %html_tag_arg_value.exit1376
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	beqz	$s4, .LBB3_904
# %bb.849:                              # %html_tag_arg_value.exit1376
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 1512
	ldx.d	$fp, $a0, $s1
	move	$s0, $s6
	beqz	$fp, .LBB3_903
# %bb.850:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_927
# %bb.851:                              #   in Loop: Header=BB3_47 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_999
# %bb.852:                              # %.preheader1675
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s7, $a0
	beqz	$s4, .LBB3_855
# %bb.853:                              # %.lr.ph1802
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$a1, $s7
	move	$a2, $s4
.LBB3_854:                              #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a3, $fp, 0
	ld.d	$a4, $a0, 0
	slli.d	$a3, $a3, 2
	ldx.b	$a3, $a4, $a3
	st.b	$a3, $a1, 0
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 1
	addi.d	$fp, $fp, 1
	bnez	$a2, .LBB3_854
.LBB3_855:                              # %._crit_edge1803
                                        #   in Loop: Header=BB3_47 Depth=2
	stx.b	$zero, $s7, $s4
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_918
# %bb.856:                              # %.preheader1674
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB3_859
.LBB3_857:                              # %.preheader1674
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ori	$a2, $zero, 61
	beq	$a1, $a2, .LBB3_859
# %bb.858:                              #   in Loop: Header=BB3_857 Depth=3
	addi.d	$a0, $a0, 1
	ld.bu	$a1, $a0, 0
	bnez	$a1, .LBB3_857
.LBB3_859:                              # %.critedge14
                                        #   in Loop: Header=BB3_47 Depth=2
	sltu	$s1, $zero, $a1
	add.d	$fp, $a0, $s1
	pcalau12i	$a1, %pc_hi20(.L.str.32)
	addi.d	$a1, $a1, %pc_lo12(.L.str.32)
	move	$s2, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcspn)
	jirl	$ra, $ra, 0
	add.d	$a1, $a0, $s1
	stx.b	$zero, $s2, $a1
	beqz	$a0, .LBB3_861
# %bb.860:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $sp, 1320
	ori	$a2, $zero, 5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(process_encoding_set)
	jirl	$ra, $ra, 0
.LBB3_861:                              #   in Loop: Header=BB3_47 Depth=2
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB3_902
.LBB3_862:                              #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $sp, 1496
	blez	$a0, .LBB3_902
# %bb.863:                              # %.lr.ph.i1413
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 1504
	move	$s1, $zero
	slli.d	$s2, $a0, 3
.LBB3_864:                              #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $fp, $s1
	pcalau12i	$a1, %pc_hi20(.L.str.40)
	addi.d	$a1, $a1, %pc_lo12(.L.str.40)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_891
# %bb.865:                              #   in Loop: Header=BB3_864 Depth=3
	addi.d	$s1, $s1, 8
	bne	$s2, $s1, .LBB3_864
	b	.LBB3_902
.LBB3_866:                              # %.lr.ph.i1347.preheader
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $zero
.LBB3_867:                              # %.lr.ph.i1347
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_889
# %bb.868:                              #   in Loop: Header=BB3_867 Depth=3
	addi.d	$s6, $s6, 1
	addi.d	$s4, $s4, 8
	bne	$s2, $s6, .LBB3_867
# %bb.869:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$s5, $zero, 14
.LBB3_870:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	b	.LBB3_909
.LBB3_871:                              #   in Loop: Header=BB3_47 Depth=2
	move	$a2, $s8
	b	.LBB3_396
.LBB3_872:                              # %html_tag_arg_value.exit1404
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 1512
	ldx.d	$fp, $a0, $s1
	beqz	$fp, .LBB3_879
# %bb.873:                              #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $fp, 0
	ld.d	$s1, $sp, 200                   # 8-byte Folded Reload
	move	$s3, $s0
	beqz	$a0, .LBB3_880
# %bb.874:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a1, $a0, %pc_lo12(.L.str.40)
	move	$a0, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 4
	move	$s0, $s6
	beqz	$a0, .LBB3_877
# %bb.875:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_877
# %bb.876:                              #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a1, $s4, 0
	move	$a0, $s4
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(html_tag_set_inahref)
	jirl	$ra, $ra, 0
.LBB3_877:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_881
# %bb.878:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	move	$a0, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(blobCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 24
	ld.w	$fp, $s4, 0
	alsl.d	$a1, $fp, $a1, 3
	st.d	$a0, $a1, -8
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a3, $s2, $a0
	move	$a0, $s4
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(html_tag_contents_append)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(html_tag_contents_done)
	jirl	$ra, $ra, 0
	ld.wu	$s2, $sp, 1496
	b	.LBB3_881
.LBB3_879:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s1, $sp, 200                   # 8-byte Folded Reload
	move	$s3, $s0
.LBB3_880:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s0, $s6
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
.LBB3_881:                              # %html_tag_arg_value.exit1404.thread
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $s2, 0
	blez	$a0, .LBB3_890
# %bb.882:                              # %.lr.ph.i1406
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 1504
	move	$s1, $zero
	slli.d	$s2, $s2, 3
.LBB3_883:                              #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $fp, $s1
	pcalau12i	$a1, %pc_hi20(.L.str.41)
	addi.d	$a1, $a1, %pc_lo12(.L.str.41)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_894
# %bb.884:                              #   in Loop: Header=BB3_883 Depth=3
	addi.d	$s1, $s1, 8
	bne	$s2, $s1, .LBB3_883
	b	.LBB3_902
.LBB3_885:                              # %html_tag_arg_value.exit1397
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 1512
	ldx.d	$fp, $a0, $s1
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	beqz	$fp, .LBB3_913
# %bb.886:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_888
# %bb.887:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_888:                              #   in Loop: Header=BB3_47 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	b	.LBB3_927
.LBB3_889:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$fp, $a0, %pc_lo12(.L.str.24)
	b	.LBB3_908
.LBB3_890:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	b	.LBB3_928
.LBB3_891:                              # %html_tag_arg_value.exit1418
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 1512
	ldx.d	$fp, $a0, $s1
	ld.d	$s4, $sp, 192                   # 8-byte Folded Reload
	beqz	$fp, .LBB3_902
# %bb.892:                              #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $fp, 0
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 200                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_927
# %bb.893:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a1, $a0, %pc_lo12(.L.str.42)
	b	.LBB3_897
.LBB3_894:                              # %html_tag_arg_value.exit1411
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 1512
	ldx.d	$fp, $a0, $s1
	beqz	$fp, .LBB3_902
# %bb.895:                              #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $fp, 0
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 200                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_927
# %bb.896:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a1, $a0, %pc_lo12(.L.str.41)
.LBB3_897:                              #   in Loop: Header=BB3_47 Depth=2
	move	$a0, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 4
	beqz	$a0, .LBB3_900
# %bb.898:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_900
# %bb.899:                              #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a1, $s4, 0
	move	$a0, $s4
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(html_tag_set_inahref)
	jirl	$ra, $ra, 0
.LBB3_900:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s7, $sp, 56                    # 8-byte Folded Reload
	beqz	$s7, .LBB3_911
# %bb.901:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	move	$a0, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(blobCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s4, 24
	ld.w	$fp, $s4, 0
	alsl.d	$a1, $fp, $a1, 3
	st.d	$a0, $a1, -8
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a3, $s7, $a0
	move	$a0, $s4
	move	$a1, $fp
	move	$a2, $s7
	pcaddu18i	$ra, %call36(html_tag_contents_append)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s4, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(html_tag_contents_done)
	jirl	$ra, $ra, 0
	b	.LBB3_927
.LBB3_902:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 200                   # 8-byte Folded Reload
	b	.LBB3_928
.LBB3_903:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	b	.LBB3_928
.LBB3_904:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
.LBB3_905:                              # %.critedge1215
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s1, $sp, 200                   # 8-byte Folded Reload
.LBB3_906:                              # %.critedge1215
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s0, $s6
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	b	.LBB3_928
.LBB3_907:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$fp, $a0, %pc_lo12(.L.str.26)
.LBB3_908:                              # %.critedge1211.sink.split
                                        #   in Loop: Header=BB3_47 Depth=2
	slli.d	$s1, $s6, 3
	ldx.d	$a0, $s3, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s3, $s1
	ori	$s5, $zero, 14
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s1, $sp, 200                   # 8-byte Folded Reload
.LBB3_909:                              # %.critedge1211
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	move	$s3, $s0
	bnez	$a3, .LBB3_676
	b	.LBB3_695
.LBB3_910:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	b	.LBB3_842
.LBB3_911:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	b	.LBB3_927
.LBB3_912:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	move	$s3, $s0
	move	$s0, $s6
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	b	.LBB3_925
.LBB3_913:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 200                   # 8-byte Folded Reload
	b	.LBB3_928
.LBB3_914:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a2, $s3, 0
.LBB3_915:                              # %html_tag_arg_value.exit1390
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s3, $s0
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	move	$s0, $s6
	beqz	$a0, .LBB3_919
# %bb.916:                              # %html_tag_arg_value.exit1390
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	beqz	$s3, .LBB3_920
# %bb.917:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	move	$a0, $s7
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	move	$a1, $fp
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	move	$a2, $s3
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(html_tag_contents_append)
	jirl	$ra, $ra, 0
	move	$a0, $s7
	move	$a1, $fp
	pcaddu18i	$ra, %call36(html_tag_contents_done)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
	b	.LBB3_920
.LBB3_918:                              # %.thread
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB3_927
.LBB3_919:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
.LBB3_920:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$a2, .LBB3_922
# %bb.921:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a1, $a0, %pc_lo12(.L.str.36)
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	move	$a0, $s7
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(blobCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 24
	ld.w	$fp, $s7, 0
	alsl.d	$a1, $fp, $a1, 3
	st.d	$a0, $a1, -8
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a3, $s4, $a0
	move	$a0, $s7
	move	$a1, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(html_tag_contents_append)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(html_tag_contents_done)
	jirl	$ra, $ra, 0
.LBB3_922:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	beqz	$fp, .LBB3_924
# %bb.923:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	move	$a0, $s7
	move	$a2, $s4
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(blobCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 24
	ld.w	$a2, $s7, 0
	st.d	$a2, $sp, 264                   # 8-byte Folded Spill
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a0, $a1, -8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a3, $fp, $a0
	move	$a0, $s7
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	move	$a2, $fp
	pcaddu18i	$ra, %call36(html_tag_contents_append)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s7, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(html_tag_contents_done)
	jirl	$ra, $ra, 0
	b	.LBB3_925
.LBB3_924:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
.LBB3_925:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	move	$a0, $s7
	move	$a2, $s4
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 4
	beqz	$a0, .LBB3_927
# %bb.926:                              #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s7, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(blobCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s7, 24
	ld.w	$a2, $s7, 0
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a0, $a1, -8
	move	$s3, $s8
.LBB3_927:                              # %.critedge1215
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
.LBB3_928:                              # %.critedge1215
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $sp, 1496
	pcaddu18i	$ra, %call36(html_tag_arg_free)
	jirl	$ra, $ra, 0
	ori	$s7, $zero, 5
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
.LBB3_929:                              # %.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ori	$a0, $zero, 10
	b	.LBB3_46
.LBB3_930:
	move	$fp, $zero
	b	.LBB3_996
.LBB3_931:
	move	$s0, $zero
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	st.d	$zero, $sp, 176                 # 8-byte Folded Spill
.LBB3_932:                              # %._crit_edge1869
	ori	$fp, $zero, 1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_971
# %bb.933:
	addi.d	$a0, $sp, 295
	stx.b	$zero, $s0, $a0
	addi.d	$a0, $sp, 1320
	addi.d	$a1, $sp, 295
	pcaddu18i	$ra, %call36(entity_norm)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_945
# %bb.934:                              # %.preheader
	move	$s0, $a0
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB3_970
# %bb.935:                              # %.lr.ph1874
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.d	$s5, $s1, 4
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_959
# %bb.936:                              # %.lr.ph1874.split
	addi.d	$s6, $a0, 4
	move	$s2, $zero
	beqz	$s1, .LBB3_966
# %bb.937:                              # %.lr.ph1874.split.split.preheader
	lu12i.w	$s7, 2
	b	.LBB3_939
	.p2align	4, , 16
.LBB3_938:                              # %html_output_c.exit1605
                                        #   in Loop: Header=BB3_939 Depth=1
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	stx.b	$s3, $s5, $a0
	addi.d	$s2, $s2, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	bgeu	$s2, $a0, .LBB3_970
.LBB3_939:                              # %.lr.ph1874.split.split
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a0, $s0, $s2
	ld.d	$a1, $s4, 0
	slli.d	$a2, $a0, 2
	ld.d	$s8, $sp, 256                   # 8-byte Folded Reload
	ldptr.w	$a0, $s8, 8196
	ldx.w	$s3, $a1, $a2
	bne	$a0, $s7, .LBB3_941
# %bb.940:                              # %html_output_flush.exit.i1604
                                        #   in Loop: Header=BB3_939 Depth=1
	ld.w	$a0, $s8, 0
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_941:                              #   in Loop: Header=BB3_939 Depth=1
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s8, 8196
	stx.b	$s3, $s6, $a0
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $s7, .LBB3_938
# %bb.942:                              # %html_output_flush.exit13.i1603
                                        #   in Loop: Header=BB3_939 Depth=1
	ld.w	$a0, $s1, 0
	move	$a1, $s5
	move	$a2, $s7
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB3_938
.LBB3_943:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	b	.LBB3_996
.LBB3_944:
	move	$a0, $s0
	b	.LBB3_985
.LBB3_945:
	move	$a1, $s0
	beqz	$s0, .LBB3_971
# %bb.946:
	move	$s8, $a1
	ori	$a2, $zero, 38
	ld.d	$s2, $sp, 256                   # 8-byte Folded Reload
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(html_output_c)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$s4, $s2, 4
	addi.d	$s5, $s1, 4
	addi.d	$s2, $sp, 295
	lu12i.w	$s6, 2
	b	.LBB3_949
	.p2align	4, , 16
.LBB3_947:                              #   in Loop: Header=BB3_949 Depth=1
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s1, 8196
	stx.b	$s3, $s5, $a0
.LBB3_948:                              # %html_output_c.exit1610
                                        #   in Loop: Header=BB3_949 Depth=1
	addi.d	$a0, $s8, -1
	addi.d	$s2, $s2, 1
	move	$s8, $a0
	beqz	$a0, .LBB3_957
.LBB3_949:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s2, 0
	ld.d	$a1, $s0, 0
	slli.d	$a0, $a0, 2
	ldx.w	$s3, $a1, $a0
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	beqz	$s7, .LBB3_953
# %bb.950:                              #   in Loop: Header=BB3_949 Depth=1
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $s6, .LBB3_952
# %bb.951:                              # %html_output_flush.exit.i1609
                                        #   in Loop: Header=BB3_949 Depth=1
	ld.w	$a0, $s7, 0
	move	$a1, $s4
	move	$a2, $s6
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_952:                              #   in Loop: Header=BB3_949 Depth=1
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	stx.b	$s3, $s4, $a0
.LBB3_953:                              #   in Loop: Header=BB3_949 Depth=1
	beqz	$s1, .LBB3_948
# %bb.954:                              #   in Loop: Header=BB3_949 Depth=1
	ldptr.w	$a0, $s1, 8196
	bne	$a0, $s6, .LBB3_947
# %bb.955:                              # %html_output_flush.exit13.i1608
                                        #   in Loop: Header=BB3_949 Depth=1
	ld.w	$a0, $s1, 0
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB3_947
.LBB3_956:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	b	.LBB3_985
.LBB3_957:
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	b	.LBB3_971
.LBB3_958:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	lu12i.w	$a1, 1
	ori	$a1, $a1, 520
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB3_984
.LBB3_959:                              # %.lr.ph1874.split.us
	beqz	$s1, .LBB3_970
# %bb.960:                              # %.lr.ph1874.split.us.split.preheader
	move	$s2, $zero
	lu12i.w	$s6, 2
	b	.LBB3_962
	.p2align	4, , 16
.LBB3_961:                              # %html_output_c.exit1605.us
                                        #   in Loop: Header=BB3_962 Depth=1
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	stx.b	$s1, $s5, $a0
	addi.d	$s2, $s2, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s1, $s7
	bgeu	$s2, $a0, .LBB3_970
.LBB3_962:                              # %.lr.ph1874.split.us.split
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a0, $s0, $s2
	ld.d	$a1, $s4, 0
	slli.d	$a2, $a0, 2
	ldptr.w	$a0, $s1, 8196
	move	$s7, $s1
	ldx.w	$s1, $a1, $a2
	bne	$a0, $s6, .LBB3_961
# %bb.963:                              # %html_output_flush.exit13.i1603.us
                                        #   in Loop: Header=BB3_962 Depth=1
	ld.w	$a0, $s7, 0
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB3_961
.LBB3_964:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	lu12i.w	$a1, 1
	ori	$a1, $a1, 520
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	b	.LBB3_983
.LBB3_965:
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB3_998
.LBB3_966:                              # %.lr.ph1874.split.split.us.preheader
	lu12i.w	$s5, 2
	b	.LBB3_968
	.p2align	4, , 16
.LBB3_967:                              # %html_output_c.exit1605.us1877
                                        #   in Loop: Header=BB3_968 Depth=1
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	stx.b	$s1, $s6, $a0
	addi.d	$s2, $s2, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 200                   # 8-byte Folded Reload
	bgeu	$s2, $a0, .LBB3_970
.LBB3_968:                              # %.lr.ph1874.split.split.us
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a0, $s0, $s2
	ld.d	$a1, $s4, 0
	slli.d	$a2, $a0, 2
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	ldptr.w	$a0, $s7, 8196
	ldx.w	$s1, $a1, $a2
	bne	$a0, $s5, .LBB3_967
# %bb.969:                              # %html_output_flush.exit.i1604.us
                                        #   in Loop: Header=BB3_968 Depth=1
	ld.w	$a0, $s7, 0
	move	$a1, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB3_967
.LBB3_970:                              # %._crit_edge1875
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
.LBB3_971:                              # %.loopexit
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 176                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_973
.LBB3_972:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_973:
	beqz	$s0, .LBB3_975
# %bb.974:
	ld.d	$a0, $s4, 24
	slli.d	$a1, $s0, 3
	addi.d	$s0, $a1, -8
	ldx.d	$a0, $a0, $s0
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$a1, $a1, %pc_lo12(.L.str.52)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 24
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(blobClose)
	jirl	$ra, $ra, 0
.LBB3_975:                              # %.thread1648
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_987
.LBB3_976:
	addi.d	$a0, $sp, 1320
	pcaddu18i	$ra, %call36(entity_norm_done)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1496
	pcaddu18i	$ra, %call36(html_tag_arg_free)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB3_988
.LBB3_977:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	bnez	$s5, .LBB3_989
.LBB3_978:
	beqz	$s1, .LBB3_992
.LBB3_979:
	ldptr.w	$a2, $s1, 8196
	blez	$a2, .LBB3_981
# %bb.980:
	ld.w	$a0, $s1, 0
	addi.d	$a1, $s1, 4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	stptr.w	$zero, $s1, 8196
.LBB3_981:                              # %html_output_flush.exit1612
	ld.w	$a0, $s1, 0
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	bnez	$s0, .LBB3_993
	b	.LBB3_996
.LBB3_982:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	lu12i.w	$a1, 1
	ori	$a1, $a1, 520
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 0
.LBB3_983:                              # %.thread1648
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
.LBB3_984:                              # %.thread1648
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB3_985:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_986:
	st.d	$zero, $sp, 272                 # 8-byte Folded Spill
	move	$s1, $zero
	move	$s5, $zero
	move	$fp, $zero
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_976
.LBB3_987:
	addi.d	$a0, $sp, 1496
	pcaddu18i	$ra, %call36(html_tag_arg_free)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB3_977
.LBB3_988:
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	beqz	$s5, .LBB3_978
.LBB3_989:
	ldptr.w	$a2, $s5, 8196
	blez	$a2, .LBB3_991
# %bb.990:
	ld.w	$a0, $s5, 0
	addi.d	$a1, $s5, 4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	stptr.w	$zero, $s5, 8196
.LBB3_991:                              # %html_output_flush.exit1611
	ld.w	$a0, $s5, 0
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	bnez	$s1, .LBB3_979
.LBB3_992:
	beqz	$s0, .LBB3_996
.LBB3_993:
	ldptr.w	$a2, $s0, 8196
	blez	$a2, .LBB3_995
# %bb.994:
	ld.w	$a0, $s0, 0
	addi.d	$a1, $s0, 4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	stptr.w	$zero, $s0, 8196
.LBB3_995:                              # %html_output_flush.exit1613
	ld.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_996:                              # %.critedge1214
	move	$a0, $fp
	addi.d	$sp, $sp, 2032
	addi.d	$sp, $sp, 1664
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
.LBB3_997:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	lu12i.w	$a1, 1
	ori	$a1, $a1, 520
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_998:
	move	$fp, $zero
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 176                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_972
	b	.LBB3_973
.LBB3_999:
	addi.w	$fp, $zero, -114
	b	.LBB3_996
.Lfunc_end3:
	.size	cli_html_normalise, .Lfunc_end3-cli_html_normalise
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_965-.LJTI3_0
	.word	.LBB3_54-.LJTI3_0
	.word	.LBB3_159-.LJTI3_0
	.word	.LBB3_126-.LJTI3_0
	.word	.LBB3_128-.LJTI3_0
	.word	.LBB3_124-.LJTI3_0
	.word	.LBB3_169-.LJTI3_0
	.word	.LBB3_178-.LJTI3_0
	.word	.LBB3_148-.LJTI3_0
	.word	.LBB3_194-.LJTI3_0
	.word	.LBB3_110-.LJTI3_0
	.word	.LBB3_98-.LJTI3_0
	.word	.LBB3_220-.LJTI3_0
	.word	.LBB3_193-.LJTI3_0
	.word	.LBB3_84-.LJTI3_0
	.word	.LBB3_228-.LJTI3_0
	.word	.LBB3_222-.LJTI3_0
	.word	.LBB3_230-.LJTI3_0
	.word	.LBB3_144-.LJTI3_0
	.word	.LBB3_78-.LJTI3_0
	.word	.LBB3_212-.LJTI3_0
	.word	.LBB3_120-.LJTI3_0
	.word	.LBB3_231-.LJTI3_0
	.word	.LBB3_76-.LJTI3_0
.LJTI3_1:
	.word	.LBB3_214-.LJTI3_1
	.word	.LBB3_413-.LJTI3_1
	.word	.LBB3_413-.LJTI3_1
	.word	.LBB3_405-.LJTI3_1
	.word	.LBB3_577-.LJTI3_1
	.word	.LBB3_406-.LJTI3_1
.LJTI3_2:
	.word	.LBB3_227-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_793-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_769-.LJTI3_2
	.word	.LBB3_805-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_819-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_396-.LJTI3_2
	.word	.LBB3_781-.LJTI3_2
                                        # -- End function
	.text
	.globl	html_normalise_fd               # -- Begin function html_normalise_fd
	.p2align	5
	.type	html_normalise_fd,@function
html_normalise_fd:                      # @html_normalise_fd
# %bb.0:
	addi.d	$sp, $sp, -192
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	st.d	$fp, $sp, 176                   # 8-byte Folded Spill
	st.d	$s0, $sp, 168                   # 8-byte Folded Spill
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	st.d	$s2, $sp, 152                   # 8-byte Folded Spill
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s2, $a0
	addi.d	$a1, $sp, 0
	pcaddu18i	$ra, %call36(fstat)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB4_3
# %bb.1:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
.LBB4_2:
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $zero
	move	$a2, $s1
	move	$a3, $s0
	move	$a4, $fp
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	pcaddu18i	$t8, %call36(cli_html_normalise)
	jr	$t8
.LBB4_3:
	ld.d	$a1, $sp, 48
	st.d	$a1, $sp, 136
	ori	$a2, $zero, 1
	ori	$a3, $zero, 2
	move	$a0, $zero
	move	$a4, $s2
	move	$a5, $zero
	pcaddu18i	$ra, %call36(mmap)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 128
	addi.w	$a1, $zero, -1
	st.d	$zero, $sp, 144
	beq	$a0, $a1, .LBB4_5
# %bb.4:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	addi.d	$a1, $sp, 128
	move	$a2, $s1
	move	$a3, $s0
	move	$a4, $fp
	pcaddu18i	$ra, %call36(cli_html_normalise)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 128
	ld.d	$a1, $sp, 136
	move	$fp, $a0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(munmap)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$s2, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 176                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 192
	ret
.LBB4_5:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	b	.LBB4_2
.Lfunc_end4:
	.size	html_normalise_fd, .Lfunc_end4-html_normalise_fd
                                        # -- End function
	.globl	html_screnc_decode              # -- Begin function html_screnc_decode
	.p2align	5
	.type	html_screnc_decode,@function
html_screnc_decode:                     # @html_screnc_decode
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
	lu12i.w	$a2, 1
	ori	$a2, $a2, 3200
	sub.d	$sp, $sp, $a2
	move	$s0, $a1
	move	$fp, $a0
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(dup)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB5_13
# %bb.1:
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	move	$s1, $a0
	pcaddu18i	$ra, %call36(fdopen)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_11
# %bb.2:
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a2, $a0, %pc_lo12(.L.str.5)
	lu12i.w	$a0, 2
	ori	$a0, $a0, 24
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 1024
	move	$a3, $s0
	pcaddu18i	$ra, %call36(snprintf)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 24
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 577
	ori	$a2, $zero, 384
	pcaddu18i	$ra, %call36(open)
	jirl	$ra, $ra, 0
	st.w	$a0, $sp, 16
	lu12i.w	$a1, 2
	ori	$a1, $a1, 20
	add.d	$a1, $sp, $a1
	stptr.w	$zero, $a1, 0
	beqz	$a0, .LBB5_12
# %bb.3:                                # %.preheader109
	lu12i.w	$a2, 2
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readline)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_7
# %bb.4:
	move	$s1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s2, $a0, %pc_lo12(.L.str.7)
	lu12i.w	$s0, 2
	.p2align	4, , 16
.LBB5_5:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_15
# %bb.6:                                #   in Loop: Header=BB5_5 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cli_readline)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	bnez	$a0, .LBB5_5
.LBB5_7:
	move	$s3, $zero
.LBB5_8:                                # %.thread
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 20
	add.d	$a0, $sp, $a0
	ldptr.w	$a2, $a0, 0
	blez	$a2, .LBB5_10
# %bb.9:
	ld.w	$a0, $sp, 16
	addi.d	$a1, $sp, 20
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 20
	add.d	$a0, $sp, $a0
	stptr.w	$zero, $a0, 0
.LBB5_10:                               # %html_output_flush.exit
	ld.w	$a0, $sp, 16
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	b	.LBB5_14
.LBB5_11:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	b	.LBB5_13
.LBB5_12:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	lu12i.w	$a1, 2
	ori	$a1, $a1, 24
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
.LBB5_13:
	move	$s3, $zero
.LBB5_14:
	move	$a0, $s3
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3200
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
.LBB5_15:
	ld.bu	$s2, $a0, 4
	beqz	$s2, .LBB5_22
# %bb.16:
	addi.d	$a0, $a0, 4
	ld.bu	$s3, $a0, 1
	beqz	$s3, .LBB5_24
.LBB5_17:
	addi.d	$a0, $a0, 1
	ld.bu	$s4, $a0, 1
	beqz	$s4, .LBB5_26
.LBB5_18:
	addi.d	$a0, $a0, 1
	ld.bu	$s5, $a0, 1
	beqz	$s5, .LBB5_28
.LBB5_19:
	addi.d	$a0, $a0, 1
	ld.bu	$s6, $a0, 1
	beqz	$s6, .LBB5_30
.LBB5_20:
	addi.d	$a0, $a0, 1
	ld.bu	$a1, $a0, 1
	beqz	$a1, .LBB5_32
.LBB5_21:
	addi.d	$a0, $a0, 1
	b	.LBB5_34
.LBB5_22:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	lu12i.w	$a2, 2
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readline)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_7
# %bb.23:                               # %._crit_edge
	move	$s1, $a0
	ld.bu	$s2, $a0, 0
	ld.bu	$s3, $a0, 1
	bnez	$s3, .LBB5_17
.LBB5_24:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	lu12i.w	$a2, 2
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readline)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_7
# %bb.25:                               # %._crit_edge205
	move	$s1, $a0
	ld.bu	$s3, $a0, 0
	ld.bu	$s4, $a0, 1
	bnez	$s4, .LBB5_18
.LBB5_26:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	lu12i.w	$a2, 2
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readline)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_7
# %bb.27:                               # %._crit_edge207
	move	$s1, $a0
	ld.bu	$s4, $a0, 0
	ld.bu	$s5, $a0, 1
	bnez	$s5, .LBB5_19
.LBB5_28:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	lu12i.w	$a2, 2
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readline)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_7
# %bb.29:                               # %._crit_edge209
	move	$s1, $a0
	ld.bu	$s5, $a0, 0
	ld.bu	$s6, $a0, 1
	bnez	$s6, .LBB5_20
.LBB5_30:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	lu12i.w	$a2, 2
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readline)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_7
# %bb.31:                               # %._crit_edge211
	move	$s1, $a0
	ld.bu	$s6, $a0, 0
	ld.bu	$a1, $a0, 1
	bnez	$a1, .LBB5_21
.LBB5_32:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	lu12i.w	$a2, 2
	move	$a0, $fp
	move	$a1, $zero
	pcaddu18i	$ra, %call36(cli_readline)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_7
# %bb.33:                               # %._crit_edge213
	move	$s1, $a0
	ld.bu	$a1, $a0, 0
.LBB5_34:
	slli.d	$a2, $s2, 2
	pcalau12i	$a3, %pc_hi20(base64_chars)
	addi.d	$a3, $a3, %pc_lo12(base64_chars)
	ldx.w	$a2, $a3, $a2
	slli.d	$a4, $s3, 2
	ldx.w	$a4, $a3, $a4
	slli.w	$a2, $a2, 2
	srai.d	$a5, $a4, 4
	add.d	$a2, $a5, $a2
	slli.d	$a4, $a4, 12
	slli.d	$a5, $s4, 2
	ldx.w	$a5, $a3, $a5
	lu12i.w	$a6, 15
	and	$a4, $a4, $a6
	add.d	$a2, $a2, $a4
	slli.d	$a4, $a5, 6
	bstrpick.d	$a4, $a4, 31, 8
	slli.w	$a4, $a4, 8
	add.d	$a2, $a2, $a4
	slli.d	$a4, $a5, 22
	slli.d	$a5, $s5, 2
	ldx.w	$a5, $a3, $a5
	lu12i.w	$a6, 3072
	and	$a4, $a4, $a6
	add.d	$a2, $a2, $a4
	slli.w	$a4, $a5, 16
	slli.d	$a5, $s6, 2
	ldx.w	$a5, $a3, $a5
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	add.d	$a2, $a2, $a4
	slli.w	$a3, $a5, 26
	add.d	$a2, $a2, $a3
	slli.d	$a1, $a1, 20
	lu12i.w	$a3, -4096
	lu32i.d	$a3, 0
	and	$a1, $a1, $a3
	addi.w	$a1, $a1, 0
	add.d	$s4, $a2, $a1
	beqz	$s4, .LBB5_63
# %bb.35:                               # %.preheader.lr.ph
	move	$s8, $zero
	addi.d	$a0, $a0, 1
	ori	$s5, $zero, 2
	ori	$s6, $zero, 13
	ori	$s7, $zero, 10
	ori	$s2, $zero, 13
	b	.LBB5_37
	.p2align	4, , 16
.LBB5_36:                               #   in Loop: Header=BB5_37 Depth=1
	addi.d	$a0, $a0, 1
.LBB5_37:                               # %.lr.ph128.split
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 0
	beq	$a1, $s7, .LBB5_36
# %bb.38:                               # %.lr.ph128.split
                                        #   in Loop: Header=BB5_37 Depth=1
	beq	$a1, $s6, .LBB5_36
# %bb.39:                               # %.lr.ph128.split
                                        #   in Loop: Header=BB5_37 Depth=1
	bnez	$a1, .LBB5_42
# %bb.40:                               #   in Loop: Header=BB5_37 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	move	$a1, $zero
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cli_readline)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 1
	beqz	$s4, .LBB5_8
# %bb.41:                               #   in Loop: Header=BB5_37 Depth=1
	move	$s1, $a0
	bnez	$a0, .LBB5_37
	b	.LBB5_8
.LBB5_42:                               # %.split.us
                                        #   in Loop: Header=BB5_37 Depth=1
	ori	$a2, $zero, 1
	beq	$s2, $a2, .LBB5_49
# %bb.43:                               # %.split.us
                                        #   in Loop: Header=BB5_37 Depth=1
	beq	$s2, $s6, .LBB5_48
# %bb.44:                               # %.split.us
                                        #   in Loop: Header=BB5_37 Depth=1
	ori	$a2, $zero, 17
	bne	$s2, $a2, .LBB5_55
# %bb.45:                               #   in Loop: Header=BB5_37 Depth=1
	addi.d	$a1, $a1, -33
	ori	$a2, $zero, 9
	bltu	$a2, $a1, .LBB5_59
# %bb.46:                               #   in Loop: Header=BB5_37 Depth=1
	slli.d	$a1, $a1, 2
	pcalau12i	$a2, %pc_hi20(.LJTI5_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI5_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB5_47:                               #   in Loop: Header=BB5_37 Depth=1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 20
	add.d	$a1, $sp, $a1
	ldptr.w	$a1, $a1, 0
	ori	$s2, $zero, 60
	beq	$a1, $s0, .LBB5_57
	b	.LBB5_58
.LBB5_48:                               #   in Loop: Header=BB5_37 Depth=1
	addi.d	$a0, $a0, 1
	addi.w	$s5, $s5, -1
	sltui	$a1, $s5, 1
	masknez	$a2, $s6, $a1
	ori	$a3, $zero, 1
	maskeqz	$a1, $a3, $a1
	or	$s2, $a1, $a2
	bnez	$s4, .LBB5_37
	b	.LBB5_64
.LBB5_49:                               #   in Loop: Header=BB5_37 Depth=1
	ext.w.b	$a2, $a1
	ori	$s2, $zero, 1
	bltz	$a2, .LBB5_54
# %bb.50:                               #   in Loop: Header=BB5_37 Depth=1
	slli.d	$a2, $s8, 2
	pcalau12i	$a3, %pc_hi20(table_order)
	addi.d	$a3, $a3, %pc_lo12(table_order)
	ldx.w	$a2, $a3, $a2
	slli.d	$a2, $a2, 9
	pcalau12i	$a3, %pc_hi20(decrypt_tables)
	addi.d	$a3, $a3, %pc_lo12(decrypt_tables)
	add.d	$a2, $a3, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$s3, $a2, $a1
	ori	$s2, $zero, 17
	ori	$a1, $zero, 255
	beq	$s3, $a1, .LBB5_54
# %bb.51:                               #   in Loop: Header=BB5_37 Depth=1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 20
	add.d	$a1, $sp, $a1
	ldptr.w	$a1, $a1, 0
	bne	$a1, $s0, .LBB5_53
# %bb.52:                               # %html_output_flush.exit.i105
                                        #   in Loop: Header=BB5_37 Depth=1
	ld.w	$a1, $sp, 16
	move	$s2, $a0
	move	$a0, $a1
	addi.d	$a1, $sp, 20
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $zero
.LBB5_53:                               # %html_output_c.exit106
                                        #   in Loop: Header=BB5_37 Depth=1
	addi.d	$a2, $a1, 1
	lu12i.w	$a3, 2
	ori	$a3, $a3, 20
	add.d	$a3, $sp, $a3
	stptr.w	$a2, $a3, 0
	addi.d	$a2, $sp, 20
	stx.b	$s3, $a2, $a1
	ori	$s2, $zero, 1
.LBB5_54:                               #   in Loop: Header=BB5_37 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$s4, $s4, -1
	addi.d	$a1, $s8, 1
	addi.w	$a2, $a1, 0
	bstrpick.d	$a2, $a2, 62, 57
	add.d	$a2, $a1, $a2
	bstrpick.d	$a2, $a2, 31, 6
	slli.d	$a2, $a2, 6
	sub.w	$s8, $a1, $a2
.LBB5_55:                               # %.outer
                                        #   in Loop: Header=BB5_37 Depth=1
	bnez	$s4, .LBB5_37
	b	.LBB5_64
.LBB5_56:                               #   in Loop: Header=BB5_37 Depth=1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 20
	add.d	$a1, $sp, $a1
	ldptr.w	$a1, $a1, 0
	ori	$s2, $zero, 64
	bne	$a1, $s0, .LBB5_58
.LBB5_57:                               # %.sink.split.sink.split
                                        #   in Loop: Header=BB5_37 Depth=1
	ld.w	$a1, $sp, 16
	move	$s3, $a0
	move	$a0, $a1
	addi.d	$a1, $sp, 20
	move	$a2, $s0
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $zero
.LBB5_58:                               # %.sink.split
                                        #   in Loop: Header=BB5_37 Depth=1
	addi.d	$a2, $a1, 1
	lu12i.w	$a3, 2
	ori	$a3, $a3, 20
	add.d	$a3, $sp, $a3
	stptr.w	$a2, $a3, 0
	addi.d	$a2, $sp, 20
	stx.b	$s2, $a2, $a1
.LBB5_59:                               #   in Loop: Header=BB5_37 Depth=1
	addi.d	$a0, $a0, 1
	addi.d	$s4, $s4, -1
	ori	$s2, $zero, 1
	bnez	$s4, .LBB5_37
	b	.LBB5_64
.LBB5_60:                               #   in Loop: Header=BB5_37 Depth=1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 20
	add.d	$a1, $sp, $a1
	ldptr.w	$a1, $a1, 0
	ori	$s2, $zero, 13
	beq	$a1, $s0, .LBB5_57
	b	.LBB5_58
.LBB5_61:                               #   in Loop: Header=BB5_37 Depth=1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 20
	add.d	$a1, $sp, $a1
	ldptr.w	$a1, $a1, 0
	ori	$s2, $zero, 10
	beq	$a1, $s0, .LBB5_57
	b	.LBB5_58
.LBB5_62:                               #   in Loop: Header=BB5_37 Depth=1
	lu12i.w	$a1, 2
	ori	$a1, $a1, 20
	add.d	$a1, $sp, $a1
	ldptr.w	$a1, $a1, 0
	ori	$s2, $zero, 62
	beq	$a1, $s0, .LBB5_57
	b	.LBB5_58
.LBB5_63:
	ori	$s3, $zero, 1
	b	.LBB5_8
.LBB5_64:                               # %.thread215
	move	$a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 1
	b	.LBB5_8
.Lfunc_end5:
	.size	html_screnc_decode, .Lfunc_end5-html_screnc_decode
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI5_0:
	.word	.LBB5_47-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_60-.LJTI5_0
	.word	.LBB5_56-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_61-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_59-.LJTI5_0
	.word	.LBB5_62-.LJTI5_0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function html_output_c
	.type	html_output_c,@function
html_output_c:                          # @html_output_c
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	lu12i.w	$s1, 2
	beqz	$a0, .LBB6_4
# %bb.1:
	ldptr.w	$a1, $a0, 8196
	bne	$a1, $s1, .LBB6_3
# %bb.2:                                # %html_output_flush.exit
	ld.w	$a3, $a0, 0
	addi.d	$a1, $a0, 4
	lu12i.w	$a2, 2
	move	$s2, $a0
	move	$a0, $a3
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a1, $zero
.LBB6_3:
	add.d	$a2, $a0, $a1
	addi.d	$a1, $a1, 1
	stptr.w	$a1, $a0, 8196
	st.b	$fp, $a2, 4
.LBB6_4:
	beqz	$s0, .LBB6_8
# %bb.5:
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $s1, .LBB6_7
# %bb.6:                                # %html_output_flush.exit13
	ld.w	$a0, $s0, 0
	addi.d	$a1, $s0, 4
	lu12i.w	$a2, 2
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB6_7:
	add.d	$a1, $s0, $a0
	addi.d	$a0, $a0, 1
	stptr.w	$a0, $s0, 8196
	st.b	$fp, $a1, 4
.LBB6_8:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end6:
	.size	html_output_c, .Lfunc_end6-html_output_c
                                        # -- End function
	.p2align	5                               # -- Begin function html_tag_contents_append
	.type	html_tag_contents_append,@function
html_tag_contents_append:               # @html_tag_contents_append
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	bgeu	$a2, $a3, .LBB7_2
# %bb.1:
	move	$s0, $a3
	move	$fp, $a2
	move	$s1, $a0
	ld.d	$a0, $a0, 24
	addi.w	$a1, $a1, -1
	slli.d	$s2, $a1, 3
	ldx.d	$a0, $a0, $s2
	pcaddu18i	$ra, %call36(blobGetDataSize)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1023
	bgeu	$a1, $a0, .LBB7_3
.LBB7_2:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB7_3:
	ld.d	$a1, $s1, 24
	ori	$a2, $zero, 1024
	sub.d	$a2, $a2, $a0
	sub.d	$a3, $s0, $fp
	ldx.d	$a0, $a1, $s2
	sltu	$a1, $a2, $a3
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a2, $a1, $a3
	move	$a1, $fp
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(blobAddData)
	jr	$t8
.Lfunc_end7:
	.size	html_tag_contents_append, .Lfunc_end7-html_tag_contents_append
                                        # -- End function
	.p2align	5                               # -- Begin function html_tag_arg_add
	.type	html_tag_arg_add,@function
html_tag_arg_add:                       # @html_tag_arg_add
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.w	$a3, $a0, 0
	move	$s0, $a2
	move	$s1, $a1
	ld.d	$a0, $a0, 8
	addi.w	$a1, $a3, 1
	st.w	$a1, $fp, 0
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(cli_realloc2)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 8
	beqz	$a0, .LBB8_9
# %bb.1:
	ld.w	$a1, $fp, 0
	ld.d	$a0, $fp, 16
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(cli_realloc2)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 16
	beqz	$a0, .LBB8_9
# %bb.2:
	ld.w	$a0, $fp, 4
	beqz	$a0, .LBB8_5
# %bb.3:
	ld.w	$a1, $fp, 0
	ld.d	$a0, $fp, 24
	slli.d	$a1, $a1, 3
	pcaddu18i	$ra, %call36(cli_realloc2)
	jirl	$ra, $ra, 0
	st.d	$a0, $fp, 24
	beqz	$a0, .LBB8_9
# %bb.4:
	ld.w	$a1, $fp, 0
	alsl.d	$a0, $a1, $a0, 3
	st.d	$zero, $a0, -8
.LBB8_5:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	ld.d	$a2, $fp, 8
	ld.w	$a1, $fp, 0
	alsl.d	$a2, $a1, $a2, 3
	st.d	$a0, $a2, -8
	beqz	$s0, .LBB8_27
# %bb.6:
	ld.bu	$a0, $s0, 0
	ori	$a1, $zero, 34
	bne	$a0, $a1, .LBB8_28
# %bb.7:
	addi.d	$s0, $s0, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	ld.w	$a2, $fp, 0
	move	$fp, $a0
	alsl.d	$a0, $a2, $a1, 3
	st.d	$fp, $a0, -8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	blez	$a1, .LBB8_26
# %bb.8:
	addi.d	$a0, $a0, -1
	bstrpick.d	$a0, $a0, 31, 0
	stx.b	$zero, $fp, $a0
	b	.LBB8_26
.LBB8_9:
	ld.w	$a0, $fp, 0
	addi.d	$s0, $fp, 8
	addi.d	$a1, $a0, -1
	ori	$a2, $zero, 2
	st.w	$a1, $fp, 0
	blt	$a0, $a2, .LBB8_19
# %bb.10:                               # %.lr.ph
	move	$s1, $zero
	move	$s2, $zero
	b	.LBB8_12
	.p2align	4, , 16
.LBB8_11:                               #   in Loop: Header=BB8_12 Depth=1
	ld.w	$a0, $fp, 0
	addi.d	$s2, $s2, 1
	addi.d	$s1, $s1, 8
	bge	$s2, $a0, .LBB8_19
.LBB8_12:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB8_14
# %bb.13:                               #   in Loop: Header=BB8_12 Depth=1
	ldx.d	$a0, $a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB8_14:                               #   in Loop: Header=BB8_12 Depth=1
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB8_16
# %bb.15:                               #   in Loop: Header=BB8_12 Depth=1
	ldx.d	$a0, $a0, $s1
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB8_16:                               #   in Loop: Header=BB8_12 Depth=1
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB8_11
# %bb.17:                               #   in Loop: Header=BB8_12 Depth=1
	ldx.d	$a0, $a0, $s1
	beqz	$a0, .LBB8_11
# %bb.18:                               #   in Loop: Header=BB8_12 Depth=1
	pcaddu18i	$ra, %call36(blobDestroy)
	jirl	$ra, $ra, 0
	b	.LBB8_11
.LBB8_19:                               # %._crit_edge
	ld.d	$a0, $s0, 0
	beqz	$a0, .LBB8_21
# %bb.20:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB8_21:
	ld.d	$a0, $fp, 16
	beqz	$a0, .LBB8_23
# %bb.22:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB8_23:
	ld.d	$a0, $fp, 24
	beqz	$a0, .LBB8_25
# %bb.24:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB8_25:
	st.w	$zero, $fp, 0
	st.d	$zero, $s0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $s0, 8
.LBB8_26:
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB8_27:
	ld.d	$a0, $fp, 16
	alsl.d	$a0, $a1, $a0, 3
	st.d	$zero, $a0, -8
	b	.LBB8_26
.LBB8_28:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 16
	ld.w	$a2, $fp, 0
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a0, $a1, -8
	b	.LBB8_26
.Lfunc_end8:
	.size	html_tag_arg_add, .Lfunc_end8-html_tag_arg_add
                                        # -- End function
	.p2align	5                               # -- Begin function html_tag_contents_done
	.type	html_tag_contents_done,@function
html_tag_contents_done:                 # @html_tag_contents_done
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a0
	ld.d	$a0, $a0, 24
	slli.d	$a1, $a1, 3
	addi.d	$s0, $a1, -8
	ldx.d	$a0, $a0, $s0
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$a1, $a1, %pc_lo12(.L.str.52)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 24
	ldx.d	$a0, $a0, $s0
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(blobClose)
	jr	$t8
.Lfunc_end9:
	.size	html_tag_contents_done, .Lfunc_end9-html_tag_contents_done
                                        # -- End function
	.p2align	5                               # -- Begin function html_tag_arg_value
	.type	html_tag_arg_value,@function
html_tag_arg_value:                     # @html_tag_arg_value
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
	blez	$a0, .LBB10_4
# %bb.1:                                # %.lr.ph
	move	$s0, $a1
	ld.d	$s1, $fp, 8
	move	$s2, $zero
	slli.d	$s3, $a0, 3
	.p2align	4, , 16
.LBB10_2:                               # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $s1, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB10_5
# %bb.3:                                #   in Loop: Header=BB10_2 Depth=1
	addi.d	$s2, $s2, 8
	bne	$s3, $s2, .LBB10_2
.LBB10_4:
	move	$a0, $zero
	b	.LBB10_6
.LBB10_5:
	ld.d	$a0, $fp, 16
	ldx.d	$a0, $a0, $s2
.LBB10_6:                               # %.loopexit
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end10:
	.size	html_tag_arg_value, .Lfunc_end10-html_tag_arg_value
                                        # -- End function
	.p2align	5                               # -- Begin function html_tag_set_inahref
	.type	html_tag_set_inahref,@function
html_tag_set_inahref:                   # @html_tag_set_inahref
# %bb.0:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	move	$fp, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcaddu18i	$ra, %call36(blobCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, 16
	move	$s2, $a0
	ld.d	$a0, $s1, 24
	alsl.d	$a1, $fp, $a1, 3
	ld.d	$fp, $a1, -8
	slli.d	$a1, $s0, 3
	addi.d	$s0, $a1, -8
	stx.d	$s2, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 24
	ldx.d	$a0, $a0, $s0
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$a1, $a1, %pc_lo12(.L.str.52)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 24
	ldx.d	$a0, $a0, $s0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(blobClose)
	jr	$t8
.Lfunc_end11:
	.size	html_tag_set_inahref, .Lfunc_end11-html_tag_set_inahref
                                        # -- End function
	.type	table_order,@object             # @table_order
	.data
	.globl	table_order
	.p2align	2, 0x0
table_order:
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	2                               # 0x2
	.word	1                               # 0x1
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.size	table_order, 256

	.type	decrypt_tables,@object          # @decrypt_tables
	.globl	decrypt_tables
	.p2align	2, 0x0
decrypt_tables:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	87                              # 0x57
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	29                              # 0x1d
	.word	30                              # 0x1e
	.word	31                              # 0x1f
	.word	46                              # 0x2e
	.word	71                              # 0x47
	.word	122                             # 0x7a
	.word	86                              # 0x56
	.word	66                              # 0x42
	.word	106                             # 0x6a
	.word	47                              # 0x2f
	.word	38                              # 0x26
	.word	73                              # 0x49
	.word	65                              # 0x41
	.word	52                              # 0x34
	.word	50                              # 0x32
	.word	91                              # 0x5b
	.word	118                             # 0x76
	.word	114                             # 0x72
	.word	67                              # 0x43
	.word	56                              # 0x38
	.word	57                              # 0x39
	.word	112                             # 0x70
	.word	69                              # 0x45
	.word	104                             # 0x68
	.word	113                             # 0x71
	.word	79                              # 0x4f
	.word	9                               # 0x9
	.word	98                              # 0x62
	.word	68                              # 0x44
	.word	35                              # 0x23
	.word	117                             # 0x75
	.word	60                              # 0x3c
	.word	126                             # 0x7e
	.word	62                              # 0x3e
	.word	94                              # 0x5e
	.word	255                             # 0xff
	.word	119                             # 0x77
	.word	74                              # 0x4a
	.word	97                              # 0x61
	.word	93                              # 0x5d
	.word	34                              # 0x22
	.word	75                              # 0x4b
	.word	111                             # 0x6f
	.word	78                              # 0x4e
	.word	59                              # 0x3b
	.word	76                              # 0x4c
	.word	80                              # 0x50
	.word	103                             # 0x67
	.word	42                              # 0x2a
	.word	125                             # 0x7d
	.word	116                             # 0x74
	.word	84                              # 0x54
	.word	43                              # 0x2b
	.word	45                              # 0x2d
	.word	44                              # 0x2c
	.word	48                              # 0x30
	.word	110                             # 0x6e
	.word	107                             # 0x6b
	.word	102                             # 0x66
	.word	53                              # 0x35
	.word	37                              # 0x25
	.word	33                              # 0x21
	.word	100                             # 0x64
	.word	77                              # 0x4d
	.word	82                              # 0x52
	.word	99                              # 0x63
	.word	63                              # 0x3f
	.word	123                             # 0x7b
	.word	120                             # 0x78
	.word	41                              # 0x29
	.word	40                              # 0x28
	.word	115                             # 0x73
	.word	89                              # 0x59
	.word	51                              # 0x33
	.word	127                             # 0x7f
	.word	109                             # 0x6d
	.word	85                              # 0x55
	.word	83                              # 0x53
	.word	124                             # 0x7c
	.word	58                              # 0x3a
	.word	95                              # 0x5f
	.word	101                             # 0x65
	.word	70                              # 0x46
	.word	88                              # 0x58
	.word	49                              # 0x31
	.word	105                             # 0x69
	.word	108                             # 0x6c
	.word	90                              # 0x5a
	.word	72                              # 0x48
	.word	39                              # 0x27
	.word	92                              # 0x5c
	.word	61                              # 0x3d
	.word	36                              # 0x24
	.word	121                             # 0x79
	.word	55                              # 0x37
	.word	96                              # 0x60
	.word	81                              # 0x51
	.word	32                              # 0x20
	.word	54                              # 0x36
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	123                             # 0x7b
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	29                              # 0x1d
	.word	30                              # 0x1e
	.word	31                              # 0x1f
	.word	50                              # 0x32
	.word	48                              # 0x30
	.word	33                              # 0x21
	.word	41                              # 0x29
	.word	91                              # 0x5b
	.word	56                              # 0x38
	.word	51                              # 0x33
	.word	61                              # 0x3d
	.word	88                              # 0x58
	.word	58                              # 0x3a
	.word	53                              # 0x35
	.word	101                             # 0x65
	.word	57                              # 0x39
	.word	92                              # 0x5c
	.word	86                              # 0x56
	.word	115                             # 0x73
	.word	102                             # 0x66
	.word	78                              # 0x4e
	.word	69                              # 0x45
	.word	107                             # 0x6b
	.word	98                              # 0x62
	.word	89                              # 0x59
	.word	120                             # 0x78
	.word	94                              # 0x5e
	.word	125                             # 0x7d
	.word	74                              # 0x4a
	.word	109                             # 0x6d
	.word	113                             # 0x71
	.word	60                              # 0x3c
	.word	96                              # 0x60
	.word	62                              # 0x3e
	.word	83                              # 0x53
	.word	255                             # 0xff
	.word	66                              # 0x42
	.word	39                              # 0x27
	.word	72                              # 0x48
	.word	114                             # 0x72
	.word	117                             # 0x75
	.word	49                              # 0x31
	.word	55                              # 0x37
	.word	77                              # 0x4d
	.word	82                              # 0x52
	.word	34                              # 0x22
	.word	84                              # 0x54
	.word	106                             # 0x6a
	.word	71                              # 0x47
	.word	100                             # 0x64
	.word	45                              # 0x2d
	.word	32                              # 0x20
	.word	127                             # 0x7f
	.word	46                              # 0x2e
	.word	76                              # 0x4c
	.word	93                              # 0x5d
	.word	126                             # 0x7e
	.word	108                             # 0x6c
	.word	111                             # 0x6f
	.word	121                             # 0x79
	.word	116                             # 0x74
	.word	67                              # 0x43
	.word	38                              # 0x26
	.word	118                             # 0x76
	.word	37                              # 0x25
	.word	36                              # 0x24
	.word	43                              # 0x2b
	.word	40                              # 0x28
	.word	35                              # 0x23
	.word	65                              # 0x41
	.word	52                              # 0x34
	.word	9                               # 0x9
	.word	42                              # 0x2a
	.word	68                              # 0x44
	.word	63                              # 0x3f
	.word	119                             # 0x77
	.word	59                              # 0x3b
	.word	85                              # 0x55
	.word	105                             # 0x69
	.word	97                              # 0x61
	.word	99                              # 0x63
	.word	80                              # 0x50
	.word	103                             # 0x67
	.word	81                              # 0x51
	.word	73                              # 0x49
	.word	79                              # 0x4f
	.word	70                              # 0x46
	.word	104                             # 0x68
	.word	124                             # 0x7c
	.word	54                              # 0x36
	.word	112                             # 0x70
	.word	110                             # 0x6e
	.word	122                             # 0x7a
	.word	47                              # 0x2f
	.word	95                              # 0x5f
	.word	75                              # 0x4b
	.word	90                              # 0x5a
	.word	44                              # 0x2c
	.word	87                              # 0x57
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	110                             # 0x6e
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	6                               # 0x6
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	26                              # 0x1a
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	29                              # 0x1d
	.word	30                              # 0x1e
	.word	31                              # 0x1f
	.word	45                              # 0x2d
	.word	117                             # 0x75
	.word	82                              # 0x52
	.word	96                              # 0x60
	.word	113                             # 0x71
	.word	94                              # 0x5e
	.word	73                              # 0x49
	.word	92                              # 0x5c
	.word	98                              # 0x62
	.word	125                             # 0x7d
	.word	41                              # 0x29
	.word	54                              # 0x36
	.word	32                              # 0x20
	.word	124                             # 0x7c
	.word	122                             # 0x7a
	.word	127                             # 0x7f
	.word	107                             # 0x6b
	.word	99                              # 0x63
	.word	51                              # 0x33
	.word	43                              # 0x2b
	.word	104                             # 0x68
	.word	81                              # 0x51
	.word	102                             # 0x66
	.word	118                             # 0x76
	.word	49                              # 0x31
	.word	100                             # 0x64
	.word	84                              # 0x54
	.word	67                              # 0x43
	.word	60                              # 0x3c
	.word	58                              # 0x3a
	.word	62                              # 0x3e
	.word	126                             # 0x7e
	.word	255                             # 0xff
	.word	69                              # 0x45
	.word	44                              # 0x2c
	.word	42                              # 0x2a
	.word	116                             # 0x74
	.word	39                              # 0x27
	.word	55                              # 0x37
	.word	68                              # 0x44
	.word	121                             # 0x79
	.word	89                              # 0x59
	.word	47                              # 0x2f
	.word	111                             # 0x6f
	.word	38                              # 0x26
	.word	114                             # 0x72
	.word	106                             # 0x6a
	.word	57                              # 0x39
	.word	123                             # 0x7b
	.word	63                              # 0x3f
	.word	56                              # 0x38
	.word	119                             # 0x77
	.word	103                             # 0x67
	.word	83                              # 0x53
	.word	71                              # 0x47
	.word	52                              # 0x34
	.word	120                             # 0x78
	.word	93                              # 0x5d
	.word	48                              # 0x30
	.word	35                              # 0x23
	.word	90                              # 0x5a
	.word	91                              # 0x5b
	.word	108                             # 0x6c
	.word	72                              # 0x48
	.word	85                              # 0x55
	.word	112                             # 0x70
	.word	105                             # 0x69
	.word	46                              # 0x2e
	.word	76                              # 0x4c
	.word	33                              # 0x21
	.word	36                              # 0x24
	.word	78                              # 0x4e
	.word	80                              # 0x50
	.word	9                               # 0x9
	.word	86                              # 0x56
	.word	115                             # 0x73
	.word	53                              # 0x35
	.word	97                              # 0x61
	.word	75                              # 0x4b
	.word	88                              # 0x58
	.word	59                              # 0x3b
	.word	87                              # 0x57
	.word	34                              # 0x22
	.word	109                             # 0x6d
	.word	77                              # 0x4d
	.word	37                              # 0x25
	.word	40                              # 0x28
	.word	70                              # 0x46
	.word	74                              # 0x4a
	.word	50                              # 0x32
	.word	65                              # 0x41
	.word	61                              # 0x3d
	.word	95                              # 0x5f
	.word	79                              # 0x4f
	.word	66                              # 0x42
	.word	101                             # 0x65
	.size	decrypt_tables, 1536

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"No HTML stream\n"
	.size	.L.str, 16

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"mmap HTML failed\n"
	.size	.L.str.1, 18

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"mmap'ed file\n"
	.size	.L.str.2, 14

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"fstat HTML failed\n"
	.size	.L.str.3, 19

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"r"
	.size	.L.str.4, 2

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%s/screnc.html"
	.size	.L.str.5, 15

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"open failed: %s\n"
	.size	.L.str.6, 17

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"#@~^"
	.size	.L.str.7, 5

	.type	base64_chars,@object            # @base64_chars
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
base64_chars:
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	62                              # 0x3e
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	63                              # 0x3f
	.word	52                              # 0x34
	.word	53                              # 0x35
	.word	54                              # 0x36
	.word	55                              # 0x37
	.word	56                              # 0x38
	.word	57                              # 0x39
	.word	58                              # 0x3a
	.word	59                              # 0x3b
	.word	60                              # 0x3c
	.word	61                              # 0x3d
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	8                               # 0x8
	.word	9                               # 0x9
	.word	10                              # 0xa
	.word	11                              # 0xb
	.word	12                              # 0xc
	.word	13                              # 0xd
	.word	14                              # 0xe
	.word	15                              # 0xf
	.word	16                              # 0x10
	.word	17                              # 0x11
	.word	18                              # 0x12
	.word	19                              # 0x13
	.word	20                              # 0x14
	.word	21                              # 0x15
	.word	22                              # 0x16
	.word	23                              # 0x17
	.word	24                              # 0x18
	.word	25                              # 0x19
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	26                              # 0x1a
	.word	27                              # 0x1b
	.word	28                              # 0x1c
	.word	29                              # 0x1d
	.word	30                              # 0x1e
	.word	31                              # 0x1f
	.word	32                              # 0x20
	.word	33                              # 0x21
	.word	34                              # 0x22
	.word	35                              # 0x23
	.word	36                              # 0x24
	.word	37                              # 0x25
	.word	38                              # 0x26
	.word	39                              # 0x27
	.word	40                              # 0x28
	.word	41                              # 0x29
	.word	42                              # 0x2a
	.word	43                              # 0x2b
	.word	44                              # 0x2c
	.word	45                              # 0x2d
	.word	46                              # 0x2e
	.word	47                              # 0x2f
	.word	48                              # 0x30
	.word	49                              # 0x31
	.word	50                              # 0x32
	.word	51                              # 0x33
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.word	4294967295                      # 0xffffffff
	.size	base64_chars, 1024

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"Invalid HTML fd\n"
	.size	.L.str.8, 17

	.type	.L.str.9,@object                # @.str.9
	.section	.rodata,"a",@progbits
.L.str.9:
	.space	2
	.size	.L.str.9, 2

	.type	.L.str.10,@object               # @.str.10
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.10:
	.asciz	"%s/rfc2397"
	.size	.L.str.10, 11

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"%s/comment.html"
	.size	.L.str.11, 16

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"%s/nocomment.html"
	.size	.L.str.12, 18

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"%s/script.html"
	.size	.L.str.13, 15

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Impossible, special_char can't occur here\n"
	.size	.L.str.14, 43

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"HTML Engine Error\n"
	.size	.L.str.15, 19

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"data:"
	.size	.L.str.16, 6

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"\"data:"
	.size	.L.str.17, 7

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"/script"
	.size	.L.str.18, 8

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"/a"
	.size	.L.str.19, 3

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"/form"
	.size	.L.str.20, 6

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"script"
	.size	.L.str.21, 7

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"language"
	.size	.L.str.22, 9

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"jscript.encode"
	.size	.L.str.23, 15

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"javascript"
	.size	.L.str.24, 11

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"vbscript.encode"
	.size	.L.str.25, 16

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"vbscript"
	.size	.L.str.26, 9

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"meta"
	.size	.L.str.27, 5

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"http-equiv"
	.size	.L.str.28, 11

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"content"
	.size	.L.str.29, 8

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"content-type"
	.size	.L.str.30, 13

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"charset"
	.size	.L.str.31, 8

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	" \"'"
	.size	.L.str.32, 4

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"a"
	.size	.L.str.33, 2

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"href"
	.size	.L.str.34, 5

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"title"
	.size	.L.str.35, 6

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"href_title"
	.size	.L.str.36, 11

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"form"
	.size	.L.str.37, 5

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"action"
	.size	.L.str.38, 7

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"img"
	.size	.L.str.39, 4

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"src"
	.size	.L.str.40, 4

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"dynsrc"
	.size	.L.str.41, 7

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"iframe"
	.size	.L.str.42, 7

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"area"
	.size	.L.str.43, 5

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"&#%d;"
	.size	.L.str.44, 6

	.type	.L.str.45,@object               # @.str.45
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.45:
	.asciz	"</script>\n"
	.size	.L.str.45, 11

	.type	.L.str.46,@object               # @.str.46
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.46:
	.asciz	"RFC2397 data file: %s\n"
	.size	.L.str.46, 23

	.type	.L.str.47,@object               # @.str.47
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.47:
	.asciz	"From html-normalise\n"
	.size	.L.str.47, 21

	.type	.L.str.48,@object               # @.str.48
	.p2align	3, 0x0
.L.str.48:
	.asciz	"Content-type: "
	.size	.L.str.48, 15

	.type	.L.str.49,@object               # @.str.49
	.p2align	3, 0x0
.L.str.49:
	.asciz	"text/plain\n"
	.size	.L.str.49, 12

	.type	.L.str.50,@object               # @.str.50
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.50:
	.asciz	";base64"
	.size	.L.str.50, 8

	.type	.L.str.51,@object               # @.str.51
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.51:
	.asciz	"Content-transfer-encoding: base64\n"
	.size	.L.str.51, 35

	.type	.L.str.52,@object               # @.str.52
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.52:
	.space	1
	.size	.L.str.52, 1

	.section	".note.GNU-stack","",@progbits
	.addrsig
