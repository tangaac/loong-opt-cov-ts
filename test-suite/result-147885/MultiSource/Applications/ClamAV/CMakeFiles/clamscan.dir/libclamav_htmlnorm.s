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
	ldx.hu	$a4, $a2, $a3
	lu12i.w	$a3, 2
	and	$a5, $a4, $a3
	move	$a4, $s0
	bnez	$a5, .LBB0_14
# %bb.10:                               # %.preheader84
	ori	$a5, $zero, 2
	move	$a4, $s0
	bltu	$s0, $a5, .LBB0_14
# %bb.11:                               # %.lr.ph97.preheader
	addi.d	$a5, $s1, -1
	ori	$a6, $zero, 1
	move	$a4, $s0
	.p2align	4, , 16
.LBB0_12:                               # %.lr.ph97
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a7, $a5, 0
	slli.d	$a7, $a7, 1
	ldx.hu	$a7, $a2, $a7
	and	$a7, $a7, $a3
	addi.w	$a4, $a4, -1
	bnez	$a7, .LBB0_14
# %bb.13:                               # %.lr.ph97
                                        #   in Loop: Header=BB0_12 Depth=1
	addi.d	$a5, $a5, -1
	bltu	$a6, $a4, .LBB0_12
.LBB0_14:                               # %._crit_edge
	addi.d	$a2, $a4, -1
	sltui	$a2, $a2, 1
	masknez	$a3, $a4, $a2
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
	lu12i.w	$a3, 2
	move	$a0, $fp
	.p2align	4, , 16
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	add.d	$a4, $a0, $s1
	ld.bu	$a4, $a4, -1
	slli.d	$a4, $a4, 1
	ldx.hu	$a4, $a1, $a4
	and	$a4, $a4, $a3
	bnez	$a4, .LBB0_30
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
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB1_8
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
	move	$s3, $a3
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
	addi.w	$a1, $zero, -1
	bge	$a1, $a0, .LBB3_23
# %bb.4:
	move	$fp, $a0
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(lseek)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(dup)
	jirl	$ra, $ra, 0
	bltz	$a0, .LBB3_920
# %bb.5:
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	move	$fp, $a0
	pcaddu18i	$ra, %call36(fdopen)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	beqz	$a0, .LBB3_933
.LBB3_6:
	andi	$s1, $s0, 1
	beqz	$s1, .LBB3_10
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
	bnez	$s2, .LBB3_987
# %bb.9:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	b	.LBB3_987
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
	bne	$a0, $a1, .LBB3_977
.LBB3_13:
	lu12i.w	$a0, 2
	ori	$fp, $a0, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_977
# %bb.14:
	move	$s4, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_934
# %bb.15:
	move	$s0, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_957
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
	st.w	$a0, $s4, 0
	beqz	$a0, .LBB3_959
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
	st.w	$a0, $s0, 0
	beqz	$a0, .LBB3_965
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
	beqz	$a0, .LBB3_973
# %bb.19:
	stptr.w	$zero, $s4, 8196
	stptr.w	$zero, $s0, 8196
	stptr.w	$zero, $fp, 8196
	b	.LBB3_21
.LBB3_20:
	move	$fp, $zero
	move	$s0, $zero
	move	$s4, $zero
.LBB3_21:
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	beqz	$s1, .LBB3_24
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
	b	.LBB3_987
.LBB3_24:
	lu12i.w	$a2, 2
	move	$a0, $s8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_readline)
	jirl	$ra, $ra, 0
.LBB3_25:
	move	$s7, $a0
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s2, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	st.d	$s4, $sp, 256                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	beqz	$s7, .LBB3_921
# %bb.26:                               # %.lr.ph1868
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	move	$s5, $zero
	st.d	$zero, $sp, 160                 # 8-byte Folded Spill
	st.d	$zero, $sp, 232                 # 8-byte Folded Spill
	st.d	$zero, $sp, 120                 # 8-byte Folded Spill
	move	$s6, $zero
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
	move	$s2, $zero
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	st.d	$zero, $sp, 224                 # 8-byte Folded Spill
	addi.d	$a1, $s4, 4
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 4
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	addi.d	$a1, $a0, 4
	ori	$s0, $zero, 10
	lu12i.w	$a0, 468535
	ori	$a0, $a0, 815
	lu32i.d	$a0, 290921
	lu52i.d	$a0, $a0, 7
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	lu12i.w	$a0, 1654
	ori	$a0, $a0, 3433
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	lu12i.w	$a0, -4096
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4095
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
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
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	move	$a0, $s8
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	lu12i.w	$a2, 2
	pcaddu18i	$ra, %call36(cli_readline)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ori	$s0, $zero, 10
	beqz	$a0, .LBB3_922
.LBB3_28:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_30 Depth 2
                                        #     Child Loop BB3_47 Depth 2
                                        #       Child Loop BB3_713 Depth 3
                                        #       Child Loop BB3_800 Depth 3
                                        #       Child Loop BB3_770 Depth 3
                                        #       Child Loop BB3_832 Depth 3
                                        #       Child Loop BB3_687 Depth 3
                                        #       Child Loop BB3_775 Depth 3
                                        #       Child Loop BB3_691 Depth 3
                                        #       Child Loop BB3_782 Depth 3
                                        #       Child Loop BB3_790 Depth 3
                                        #       Child Loop BB3_793 Depth 3
                                        #       Child Loop BB3_437 Depth 3
                                        #       Child Loop BB3_682 Depth 3
                                        #       Child Loop BB3_819 Depth 3
                                        #       Child Loop BB3_874 Depth 3
                                        #         Child Loop BB3_891 Depth 4
                                        #       Child Loop BB3_618 Depth 3
                                        #       Child Loop BB3_139 Depth 3
                                        #       Child Loop BB3_453 Depth 3
	ld.bu	$s4, $s7, 0
	sltui	$a0, $s2, 1
	masknez	$s2, $s7, $a0
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	beqz	$s4, .LBB3_33
# %bb.29:                               # %.lr.ph
                                        #   in Loop: Header=BB3_28 Depth=1
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a0, $a0, 0
	move	$s8, $s7
	.p2align	4, , 16
.LBB3_30:                               #   Parent Loop BB3_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	slli.d	$a1, $s4, 1
	ldx.hu	$a1, $a0, $a1
	and	$a1, $a1, $a5
	beqz	$a1, .LBB3_43
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
	beqz	$s3, .LBB3_41
# %bb.35:                               #   in Loop: Header=BB3_28 Depth=1
	ld.w	$a0, $s3, 4
	beqz	$a0, .LBB3_41
# %bb.36:                               #   in Loop: Header=BB3_28 Depth=1
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_41
# %bb.37:                               #   in Loop: Header=BB3_28 Depth=1
	beqz	$s2, .LBB3_41
# %bb.38:                               #   in Loop: Header=BB3_28 Depth=1
	bgeu	$s2, $s8, .LBB3_41
# %bb.39:                               #   in Loop: Header=BB3_28 Depth=1
	ld.d	$a0, $s3, 24
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	addi.w	$a1, $a1, -1
	slli.d	$s0, $a1, 3
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(blobGetDataSize)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1023
	bltu	$a1, $a0, .LBB3_41
# %bb.40:                               #   in Loop: Header=BB3_28 Depth=1
	ld.d	$a1, $s3, 24
	ori	$a2, $zero, 1024
	sub.d	$a2, $a2, $a0
	sub.d	$a3, $s8, $s2
	ldx.d	$a0, $a1, $s0
	sltu	$a1, $a2, $a3
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a2, $a1, $a3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
	.p2align	4, , 16
.LBB3_41:                               # %html_tag_contents_append.exit1600
                                        #   in Loop: Header=BB3_28 Depth=1
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	beqz	$s1, .LBB3_27
# %bb.42:                               #   in Loop: Header=BB3_28 Depth=1
	addi.d	$a0, $sp, 1320
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	move	$a1, $s8
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	lu12i.w	$a3, 2
	pcaddu18i	$ra, %call36(encoding_norm_readline)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ori	$s0, $zero, 10
	bnez	$a0, .LBB3_28
	b	.LBB3_922
	.p2align	4, , 16
.LBB3_43:                               # %.lr.ph1826.preheader
                                        #   in Loop: Header=BB3_28 Depth=1
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	move	$s7, $s6
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	b	.LBB3_47
.LBB3_44:                               #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	sltui	$a0, $a0, 1
	ori	$a1, $zero, 13
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s7, $a0
	move	$s6, $s7
	or	$s7, $a0, $a1
.LBB3_45:                               # %.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	.p2align	4, , 16
.LBB3_46:                               # %.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$s4, $s8, 0
	move	$fp, $s7
	move	$s7, $s6
	beqz	$s4, .LBB3_34
.LBB3_47:                               # %.lr.ph1826
                                        #   Parent Loop BB3_28 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_713 Depth 3
                                        #       Child Loop BB3_800 Depth 3
                                        #       Child Loop BB3_770 Depth 3
                                        #       Child Loop BB3_832 Depth 3
                                        #       Child Loop BB3_687 Depth 3
                                        #       Child Loop BB3_775 Depth 3
                                        #       Child Loop BB3_691 Depth 3
                                        #       Child Loop BB3_782 Depth 3
                                        #       Child Loop BB3_790 Depth 3
                                        #       Child Loop BB3_793 Depth 3
                                        #       Child Loop BB3_437 Depth 3
                                        #       Child Loop BB3_682 Depth 3
                                        #       Child Loop BB3_819 Depth 3
                                        #       Child Loop BB3_874 Depth 3
                                        #         Child Loop BB3_891 Depth 4
                                        #       Child Loop BB3_618 Depth 3
                                        #       Child Loop BB3_139 Depth 3
                                        #       Child Loop BB3_453 Depth 3
	bnez	$s5, .LBB3_50
# %bb.48:                               # %.lr.ph1826
                                        #   in Loop: Header=BB3_47 Depth=2
	bne	$s4, $s0, .LBB3_50
# %bb.49:                               #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $zero
	ori	$a0, $zero, 32
	st.b	$a0, $s8, 0
	b	.LBB3_53
	.p2align	4, , 16
.LBB3_50:                               #   in Loop: Header=BB3_47 Depth=2
	bnez	$s5, .LBB3_55
# %bb.51:                               #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 13
	bne	$s4, $a0, .LBB3_55
# %bb.52:                               #   in Loop: Header=BB3_47 Depth=2
	move	$s5, $zero
	addi.d	$s8, $s8, 1
.LBB3_53:                               # %.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $s7
.LBB3_54:                               # %.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s7, $fp
	b	.LBB3_46
	.p2align	4, , 16
.LBB3_55:                               #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ori	$a0, $zero, 23
	bltu	$a0, $fp, .LBB3_53
# %bb.56:                               #   in Loop: Header=BB3_47 Depth=2
	slli.d	$a0, $fp, 2
	pcalau12i	$a1, %pc_hi20(.LJTI3_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI3_0)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB3_57:                               #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 60
	bne	$s4, $a0, .LBB3_296
# %bb.58:                               #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	beqz	$fp, .LBB3_62
# %bb.59:                               #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	bne	$a0, $a5, .LBB3_61
# %bb.60:                               # %html_output_flush.exit.i1228
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_61:                               #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ori	$a2, $zero, 60
	stx.b	$a2, $a1, $a0
.LBB3_62:                               #   in Loop: Header=BB3_47 Depth=2
	beqz	$s6, .LBB3_66
# %bb.63:                               #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_65
# %bb.64:                               # %html_output_flush.exit13.i1227
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_65:                               #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 60
	stx.b	$a2, $a1, $a0
.LBB3_66:                               # %html_output_c.exit1229
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_71
# %bb.67:                               # %html_output_c.exit1229
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_71
# %bb.68:                               #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	bne	$a0, $a5, .LBB3_70
# %bb.69:                               # %html_output_flush.exit.i1231
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_70:                               #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ori	$a2, $zero, 60
	stx.b	$a2, $a1, $a0
.LBB3_71:                               # %html_output_c.exit1232
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s3, .LBB3_636
# %bb.72:                               #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s3, 4
	beqz	$a0, .LBB3_636
# %bb.73:                               #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_636
# %bb.74:                               #   in Loop: Header=BB3_47 Depth=2
	beqz	$s2, .LBB3_636
# %bb.75:                               #   in Loop: Header=BB3_47 Depth=2
	bgeu	$s2, $s8, .LBB3_635
# %bb.76:                               #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $s3, 24
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	addi.w	$a1, $a1, -1
	slli.d	$fp, $a1, 3
	ldx.d	$a0, $a0, $fp
	pcaddu18i	$ra, %call36(blobGetDataSize)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1023
	bltu	$a1, $a0, .LBB3_78
# %bb.77:                               #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a1, $s3, 24
	ori	$a2, $zero, 1024
	sub.d	$a2, $a2, $a0
	sub.d	$a3, $s8, $s2
	ldx.d	$a0, $a1, $fp
	sltu	$a1, $a2, $a3
	masknez	$a3, $a3, $a1
	maskeqz	$a1, $a2, $a1
	or	$a2, $a1, $a3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
.LBB3_78:                               # %html_tag_contents_append.exit
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s2, $zero
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	b	.LBB3_636
.LBB3_79:                               #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	slli.w	$fp, $fp, 4
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	lu12i.w	$a1, 1
	and	$a1, $a0, $a1
	bnez	$a1, .LBB3_247
# %bb.80:                               #   in Loop: Header=BB3_47 Depth=2
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	move	$a0, $s7
	b	.LBB3_385
.LBB3_81:                               #   in Loop: Header=BB3_47 Depth=2
	ori	$s5, $zero, 1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_364
# %bb.82:                               #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $a5, 8
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_989
# %bb.83:                               #   in Loop: Header=BB3_47 Depth=2
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a2, $a0, %pc_lo12(.L.str.10)
	lu12i.w	$a0, 1
	ori	$a0, $a0, 520
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 1024
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
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
	beqz	$a0, .LBB3_988
# %bb.84:                               # %html_output_str.exit1552
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
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_370
# %bb.85:                               # %html_output_str.exit1552
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a1, $sp, 1528
	ori	$a2, $zero, 59
	bne	$a1, $a2, .LBB3_370
# %bb.86:                               # %.thread1631
                                        #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	ld.w	$a1, $a0, 7
	ld.d	$a0, $a0, 0
	st.w	$a1, $fp, 45
	st.d	$a0, $fp, 38
	ori	$a1, $zero, 45
	stptr.w	$a1, $fp, 8196
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	b	.LBB3_373
.LBB3_87:                               #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	ori	$a2, $zero, 4
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_317
# %bb.88:                               #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 2
	ldx.w	$s0, $a0, $a1
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	beqz	$s3, .LBB3_92
# %bb.89:                               #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s3, 8196
	bne	$a0, $a5, .LBB3_91
# %bb.90:                               # %html_output_flush.exit.i1483
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s3, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_91:                               #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s3, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_92:                               #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	beqz	$s6, .LBB3_96
# %bb.93:                               #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_95
# %bb.94:                               # %html_output_flush.exit13.i1482
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_95:                               #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_96:                               # %html_output_c.exit1484
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	beqz	$a4, .LBB3_100
# %bb.97:                               #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 0
	ld.d	$a1, $fp, 0
	slli.d	$a2, $a0, 2
	ldptr.w	$a0, $a4, 8196
	ldx.w	$fp, $a1, $a2
	bne	$a0, $a5, .LBB3_99
# %bb.98:                               # %html_output_flush.exit.i1486
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_99:                               #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	stx.b	$fp, $a1, $a0
.LBB3_100:                              # %html_output_c.exit1487
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	move	$s6, $s7
	ori	$s7, $zero, 14
	b	.LBB3_46
.LBB3_101:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	ld.bu	$a0, $a0, 0
	ori	$a1, $zero, 47
	bne	$a0, $a1, .LBB3_249
# %bb.102:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	xor	$a1, $a0, $a2
	sltu	$a1, $zero, $a1
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	maskeqz	$a3, $a3, $a1
	bne	$a0, $a2, .LBB3_107
# %bb.103:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_107
# %bb.104:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	bne	$a0, $a5, .LBB3_106
# %bb.105:                              # %html_output_flush.exit.i1345
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_106:                              #   in Loop: Header=BB3_47 Depth=2
	move	$a3, $zero
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_107:                              # %html_output_c.exit1346
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	beqz	$s3, .LBB3_113
# %bb.108:                              #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s3, 4
	beqz	$a0, .LBB3_113
# %bb.109:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_113
# %bb.110:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB3_112
# %bb.111:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $s3, 24
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 3
	addi.d	$fp, $a1, -8
	ldx.d	$a0, $a0, $fp
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$a1, $a1, %pc_lo12(.L.str.52)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 24
	ldx.d	$a0, $a0, $fp
	pcaddu18i	$ra, %call36(blobClose)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
.LBB3_112:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s2, $s8
.LBB3_113:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 1
	bnez	$a0, .LBB3_918
# %bb.114:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bnez	$a0, .LBB3_677
# %bb.115:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	b	.LBB3_918
.LBB3_116:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 61
	bne	$s4, $a0, .LBB3_261
# %bb.117:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	beqz	$fp, .LBB3_121
# %bb.118:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	bne	$a0, $a5, .LBB3_120
# %bb.119:                              # %html_output_flush.exit.i1286
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_120:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ori	$a2, $zero, 61
	stx.b	$a2, $a1, $a0
.LBB3_121:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s6, .LBB3_125
# %bb.122:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_124
# %bb.123:                              # %html_output_flush.exit13.i1285
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_124:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 61
	stx.b	$a2, $a1, $a0
.LBB3_125:                              # %html_output_c.exit1287
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 232                 # 8-byte Folded Spill
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	b	.LBB3_164
.LBB3_126:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$s7, $zero, 5
	ori	$s6, $zero, 8
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	beqz	$fp, .LBB3_318
# %bb.127:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a2, $fp, 8196
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB3_129
# %bb.128:                              #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	addi.d	$a1, $fp, 4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	stptr.w	$zero, $fp, 8196
.LBB3_129:                              # %html_output_flush.exit
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	move	$s5, $zero
	b	.LBB3_919
.LBB3_130:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	and	$a0, $a0, $a5
	bnez	$a0, .LBB3_264
# %bb.131:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $zero
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	b	.LBB3_46
.LBB3_132:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 35
	bne	$s4, $a0, .LBB3_265
# %bb.133:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	st.d	$zero, $sp, 160                 # 8-byte Folded Spill
	b	.LBB3_513
.LBB3_134:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 59
	bne	$s4, $a0, .LBB3_277
# %bb.135:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $sp, 295
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	stx.b	$zero, $a1, $a0
	addi.d	$a0, $sp, 1320
	addi.d	$a1, $sp, 295
	pcaddu18i	$ra, %call36(entity_norm)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_439
# %bb.136:                              # %.preheader1680
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s4, $a0
	move	$s1, $s2
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB3_369
# %bb.137:                              # %.lr.ph1793
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$s2, $zero
	b	.LBB3_139
	.p2align	4, , 16
.LBB3_138:                              #   in Loop: Header=BB3_139 Depth=3
	addi.d	$s2, $s2, 1
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	bgeu	$s2, $a0, .LBB3_369
.LBB3_139:                              #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.bu	$a0, $s4, $s2
	ld.d	$a1, $fp, 0
	slli.d	$a0, $a0, 2
	ldx.w	$s0, $a1, $a0
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	lu12i.w	$a2, 2
	beqz	$s3, .LBB3_143
# %bb.140:                              #   in Loop: Header=BB3_139 Depth=3
	ldptr.w	$a0, $s3, 8196
	bne	$a0, $a2, .LBB3_142
# %bb.141:                              # %html_output_flush.exit.i1427
                                        #   in Loop: Header=BB3_139 Depth=3
	ld.w	$a0, $s3, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a2, 2
	move	$a0, $zero
.LBB3_142:                              #   in Loop: Header=BB3_139 Depth=3
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s3, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_143:                              #   in Loop: Header=BB3_139 Depth=3
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	beqz	$s6, .LBB3_147
# %bb.144:                              #   in Loop: Header=BB3_139 Depth=3
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a2, .LBB3_146
# %bb.145:                              # %html_output_flush.exit13.i1426
                                        #   in Loop: Header=BB3_139 Depth=3
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_146:                              #   in Loop: Header=BB3_139 Depth=3
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_147:                              # %html_output_c.exit1428
                                        #   in Loop: Header=BB3_139 Depth=3
	ori	$a0, $zero, 9
	bne	$s7, $a0, .LBB3_138
# %bb.148:                              # %html_output_c.exit1428
                                        #   in Loop: Header=BB3_139 Depth=3
	ori	$a0, $zero, 1023
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	blt	$a0, $a2, .LBB3_138
# %bb.149:                              #   in Loop: Header=BB3_139 Depth=3
	addi.w	$a0, $a2, 1
	addi.d	$a1, $sp, 1528
	stx.b	$s0, $a2, $a1
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	b	.LBB3_138
.LBB3_150:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 34
	beq	$s4, $a0, .LBB3_342
# %bb.151:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 39
	bne	$s4, $a0, .LBB3_350
# %bb.152:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	or	$a0, $a1, $a0
	addi.w	$a0, $a0, 0
	bnez	$a0, .LBB3_504
# %bb.153:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	ori	$a0, $zero, 5
	ori	$s7, $zero, 8
	lu12i.w	$a5, 2
	b	.LBB3_634
.LBB3_154:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 61
	bne	$s4, $a0, .LBB3_283
# %bb.155:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	beqz	$fp, .LBB3_159
# %bb.156:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	bne	$a0, $a5, .LBB3_158
# %bb.157:                              # %html_output_flush.exit.i1266
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_158:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ori	$a2, $zero, 61
	stx.b	$a2, $a1, $a0
.LBB3_159:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s6, .LBB3_163
# %bb.160:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_162
# %bb.161:                              # %html_output_flush.exit13.i1265
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_162:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 61
	stx.b	$a2, $a1, $a0
.LBB3_163:                              # %html_output_c.exit1267
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 232                 # 8-byte Folded Spill
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 2559
	add.d	$a1, $sp, $a1
	stx.b	$zero, $a0, $a1
.LBB3_164:                              # %.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	ori	$s7, $zero, 5
	ori	$s6, $zero, 9
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	b	.LBB3_46
.LBB3_165:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	beqz	$s3, .LBB3_319
# %bb.166:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a2, $a0, 0
	slli.d	$a3, $s4, 2
	ldptr.w	$a1, $s3, 8196
	ldx.w	$fp, $a2, $a3
	lu12i.w	$a5, 2
	bne	$a1, $a5, .LBB3_168
# %bb.167:                              # %html_output_flush.exit.i1339
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a1, $s3, 0
	move	$s0, $a0
	move	$a0, $a1
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $s0
	ori	$s0, $zero, 10
	move	$a1, $zero
.LBB3_168:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a2, $a1, 1
	stptr.w	$a2, $s3, 8196
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	stx.b	$fp, $a2, $a1
	ld.bu	$s4, $s8, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	bnez	$a1, .LBB3_320
	b	.LBB3_324
.LBB3_169:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	and	$a0, $a0, $a5
	bnez	$a0, .LBB3_314
# %bb.170:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	beqz	$fp, .LBB3_174
# %bb.171:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	bne	$a0, $a5, .LBB3_173
# %bb.172:                              # %html_output_flush.exit.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_173:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ori	$a2, $zero, 32
	stx.b	$a2, $a1, $a0
.LBB3_174:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s6, .LBB3_580
# %bb.175:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_177
# %bb.176:                              # %html_output_flush.exit13.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_177:                              #   in Loop: Header=BB3_47 Depth=2
	move	$a2, $s6
	move	$s6, $zero
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a2, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 32
	stx.b	$a2, $a1, $a0
	b	.LBB3_46
.LBB3_178:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	addi.w	$s3, $a0, 0
	bnez	$s3, .LBB3_299
# %bb.179:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 33
	bne	$s4, $a0, .LBB3_299
# %bb.180:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	beqz	$fp, .LBB3_184
# %bb.181:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	bne	$a0, $a5, .LBB3_183
# %bb.182:                              # %html_output_flush.exit.i1242
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_183:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ori	$a2, $zero, 33
	stx.b	$a2, $a1, $a0
.LBB3_184:                              # %html_output_c.exit1243
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_189
# %bb.185:                              # %html_output_c.exit1243
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_189
# %bb.186:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	bne	$a0, $a5, .LBB3_188
# %bb.187:                              # %html_output_flush.exit.i1245
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
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
	beqz	$s6, .LBB3_192
# %bb.190:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB3_192
# %bb.191:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $a0, -1
	stptr.w	$a0, $s6, 8196
.LBB3_192:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $zero
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	ori	$s7, $zero, 2
	b	.LBB3_46
.LBB3_193:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 6
	ld.d	$fp, $sp, 232                   # 8-byte Folded Reload
	beq	$fp, $a0, .LBB3_345
# %bb.194:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 5
	bne	$fp, $a0, .LBB3_346
# %bb.195:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	addi.d	$a0, $sp, 1528
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_346
# %bb.196:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
	beqz	$s0, .LBB3_199
# %bb.197:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB3_199
# %bb.198:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $a0, -1
	stptr.w	$a0, $s0, 8196
.LBB3_199:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s6, .LBB3_202
# %bb.200:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB3_202
# %bb.201:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $a0, -1
	stptr.w	$a0, $s6, 8196
.LBB3_202:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$fp, $zero, 18
	ori	$a1, $zero, 2
	ori	$s7, $zero, 8
	beq	$a0, $a1, .LBB3_557
# %bb.203:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s0, .LBB3_207
# %bb.204:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_206
# %bb.205:                              # %html_output_flush.exit.i1291
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_206:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_207:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s6, .LBB3_676
.LBB3_208:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	ori	$s0, $zero, 10
	bne	$a0, $a5, .LBB3_210
# %bb.209:                              # %html_output_flush.exit13.i1290
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_210:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 232                 # 8-byte Folded Spill
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
	b	.LBB3_661
.LBB3_211:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $s4, -34
	ori	$a1, $zero, 5
	bltu	$a1, $a0, .LBB3_429
# %bb.212:                              #   in Loop: Header=BB3_47 Depth=2
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI3_1)
	addi.d	$a1, $a1, %pc_lo12(.LJTI3_1)
	ldx.w	$a0, $a1, $a0
	ori	$fp, $zero, 3
	add.d	$a0, $a1, $a0
	ori	$s6, $zero, 20
	jr	$a0
.LBB3_213:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	bnez	$a0, .LBB3_215
# %bb.214:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$fp, $zero, 21
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB3_428
.LBB3_215:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$fp, $zero, 20
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	beqz	$s4, .LBB3_428
# %bb.216:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s4, 8196
	bne	$a0, $a5, .LBB3_218
# %bb.217:                              # %html_output_flush.exit.i1579
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s4, 0
	addi.d	$a1, $s4, 4
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_218:                              #   in Loop: Header=BB3_47 Depth=2
	add.d	$a1, $s4, $a0
	addi.d	$a0, $a0, 1
	stptr.w	$a0, $s4, 8196
	ori	$a0, $zero, 34
	b	.LBB3_427
.LBB3_219:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	beqz	$fp, .LBB3_325
# %bb.220:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 59
	bne	$s4, $a0, .LBB3_337
	b	.LBB3_329
.LBB3_221:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_366
# %bb.222:                              #   in Loop: Header=BB3_47 Depth=2
	ext.w.b	$a0, $s4
	bltz	$a0, .LBB3_382
# %bb.223:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
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
	ldx.w	$a1, $a0, $a1
	ori	$a0, $zero, 255
	bne	$a1, $a0, .LBB3_405
# %bb.224:                              #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 1
	addi.d	$fp, $s8, 1
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	addi.d	$s4, $s4, -1
	ori	$a1, $zero, 255
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ori	$a1, $zero, 42
	bltu	$a1, $a0, .LBB3_420
# %bb.225:                              #   in Loop: Header=BB3_47 Depth=2
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI3_2)
	addi.d	$a1, $a1, %pc_lo12(.LJTI3_2)
	ldx.w	$a0, $a1, $a0
	add.d	$a0, $a1, $a0
	jr	$a0
.LBB3_226:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	beqz	$s3, .LBB3_230
# %bb.227:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s3, 8196
	bne	$a0, $a5, .LBB3_229
# %bb.228:                              # %html_output_flush.exit.i1496
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s3, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_229:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s3, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ori	$a2, $zero, 60
	stx.b	$a2, $a1, $a0
.LBB3_230:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	beqz	$s0, .LBB3_234
# %bb.231:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_233
# %bb.232:                              # %html_output_flush.exit13.i1495
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_233:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 60
	stx.b	$a2, $a1, $a0
.LBB3_234:                              # %html_output_c.exit1497
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_755
# %bb.235:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	ori	$s0, $zero, 10
	bne	$a0, $a5, .LBB3_237
# %bb.236:                              # %html_output_flush.exit.i1499
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_237:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ori	$a2, $zero, 60
	stx.b	$a2, $a1, $a0
	b	.LBB3_420
.LBB3_238:                              #   in Loop: Header=BB3_47 Depth=2
	move	$a0, $s8
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 8
	bgeu	$a0, $a1, .LBB3_316
# %bb.239:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $zero
	ori	$s7, $zero, 1
	b	.LBB3_919
.LBB3_240:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$s6, $s7
	ori	$s7, $zero, 17
	b	.LBB3_46
.LBB3_241:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB3_354
# %bb.242:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 2
	bne	$a1, $a0, .LBB3_360
# %bb.243:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	beqz	$s4, .LBB3_364
# %bb.244:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s4, 8196
	bne	$a0, $a5, .LBB3_246
# %bb.245:                              # %html_output_flush.exit.i1588
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s4, 0
	addi.d	$a1, $s4, 4
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_246:                              #   in Loop: Header=BB3_47 Depth=2
	add.d	$a1, $s4, $a0
	addi.d	$a0, $a0, 1
	stptr.w	$a0, $s4, 8196
	st.b	$fp, $a1, 4
	b	.LBB3_365
.LBB3_247:                              #   in Loop: Header=BB3_47 Depth=2
	andi	$a0, $a0, 2048
	bnez	$a0, .LBB3_383
# %bb.248:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 2
	ldx.w	$a0, $a0, $a1
	add.d	$a0, $fp, $a0
	addi.w	$a0, $a0, -87
	b	.LBB3_384
.LBB3_249:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 7
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_435
# %bb.250:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_252
# %bb.251:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_689
.LBB3_252:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$s6, $zero, 1
	beqz	$s3, .LBB3_917
# %bb.253:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	sltui	$a0, $a0, 1
	sltu	$a1, $zero, $s2
	masknez	$a2, $s8, $a1
	maskeqz	$a1, $s2, $a1
	ori	$a3, $zero, 3584
	add.d	$a3, $sp, $a3
	ld.hu	$a3, $a3, 0
	or	$a1, $a1, $a2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s2, $a0
	or	$s2, $a0, $a1
	ori	$a0, $zero, 97
	beq	$a3, $a0, .LBB3_685
# %bb.254:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_710
.LBB3_255:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	beq	$a0, $a1, .LBB3_768
# %bb.256:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a1, $a0, %pc_lo12(.L.str.42)
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 7
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_798
# %bb.257:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a1, $a0, %pc_lo12(.L.str.43)
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 10
	bnez	$a0, .LBB3_917
# %bb.258:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	addi.d	$a0, $sp, 1496
	pcaddu18i	$ra, %call36(html_tag_arg_value)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_917
# %bb.259:                              #   in Loop: Header=BB3_47 Depth=2
	move	$fp, $a0
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB3_917
# %bb.260:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a1, $a0, %pc_lo12(.L.str.43)
	b	.LBB3_846
.LBB3_261:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$s7, $zero, 8
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB3_263
# %bb.262:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a1, $zero, 2559
	add.d	$a1, $sp, $a1
	stx.b	$zero, $a0, $a1
	addi.d	$a0, $sp, 1496
	ori	$a1, $zero, 2559
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
.LBB3_263:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $zero
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	b	.LBB3_46
.LBB3_264:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	move	$s6, $s7
	ori	$s7, $zero, 5
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	b	.LBB3_46
.LBB3_265:                              #   in Loop: Header=BB3_47 Depth=2
	bnez	$s1, .LBB3_282
# %bb.266:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ori	$a0, $zero, 9
	bne	$s7, $a0, .LBB3_269
# %bb.267:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	blt	$a0, $a3, .LBB3_269
# %bb.268:                              #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $a3, 1
	ori	$a1, $zero, 38
	addi.d	$a2, $sp, 1528
	stx.b	$a1, $a3, $a2
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
.LBB3_269:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$fp, .LBB3_273
# %bb.270:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	bne	$a0, $a5, .LBB3_272
# %bb.271:                              # %html_output_flush.exit.i1422
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_272:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ori	$a2, $zero, 38
	stx.b	$a2, $a1, $a0
.LBB3_273:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s6, .LBB3_580
# %bb.274:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_276
# %bb.275:                              # %html_output_flush.exit13.i1421
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_276:                              #   in Loop: Header=BB3_47 Depth=2
	move	$a2, $s6
	move	$s6, $zero
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a2, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 38
	stx.b	$a2, $a1, $a0
	b	.LBB3_46
.LBB3_277:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.h	$a0, $a0, $a1
	andi	$a0, $a0, 8
	bnez	$a0, .LBB3_280
# %bb.278:                              # %switch.early.test
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 58
	beq	$s4, $a0, .LBB3_280
# %bb.279:                              # %switch.early.test
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 95
	bne	$s4, $a0, .LBB3_602
.LBB3_280:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ori	$a0, $zero, 1023
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	bltu	$a0, $a1, .LBB3_604
.LBB3_281:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $sp, 295
	stx.b	$s4, $a1, $a0
	addi.d	$a0, $a1, 1
	addi.d	$s8, $s8, 1
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
.LBB3_282:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $s7
	ori	$s7, $zero, 4
	b	.LBB3_46
.LBB3_283:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	and	$a0, $a0, $a5
	bnez	$a0, .LBB3_386
# %bb.284:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 62
	bne	$s4, $a0, .LBB3_515
# %bb.285:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	beqz	$fp, .LBB3_289
# %bb.286:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	bne	$a0, $a5, .LBB3_288
# %bb.287:                              # %html_output_flush.exit.i1271
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $zero
.LBB3_288:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
.LBB3_289:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s6, .LBB3_293
# %bb.290:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_292
# %bb.291:                              # %html_output_flush.exit13.i1270
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $zero
.LBB3_292:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
.LBB3_293:                              # %html_output_c.exit1272
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB3_295
# %bb.294:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a1, $zero, 2559
	add.d	$a1, $sp, $a1
	stx.b	$zero, $a0, $a1
	addi.d	$a0, $sp, 1496
	ori	$a1, $zero, 2559
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
.LBB3_295:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $zero
	addi.d	$s8, $s8, 1
	ori	$s7, $zero, 11
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	b	.LBB3_46
.LBB3_296:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	and	$a0, $a0, $a5
	ori	$s6, $zero, 1
	bnez	$a0, .LBB3_315
# %bb.297:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 38
	bne	$s4, $a0, .LBB3_535
# %bb.298:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	ori	$s7, $zero, 3
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	b	.LBB3_46
.LBB3_299:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 62
	bne	$s4, $a0, .LBB3_387
# %bb.300:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	beqz	$fp, .LBB3_304
# %bb.301:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	bne	$a0, $a5, .LBB3_303
# %bb.302:                              # %html_output_flush.exit.i1250
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_303:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
.LBB3_304:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s6, .LBB3_308
# %bb.305:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_307
# %bb.306:                              # %html_output_flush.exit13.i1249
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_307:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
.LBB3_308:                              # %html_output_c.exit1251
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_313
# %bb.309:                              # %html_output_c.exit1251
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_313
# %bb.310:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	bne	$a0, $a5, .LBB3_312
# %bb.311:                              # %html_output_flush.exit.i1253
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_312:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
.LBB3_313:                              # %html_output_c.exit1254
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	stx.b	$zero, $s3, $a0
	ori	$s7, $zero, 5
	ori	$s6, $zero, 11
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	b	.LBB3_46
.LBB3_314:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	move	$s6, $s7
.LBB3_315:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$s7, $zero, 6
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	b	.LBB3_46
.LBB3_316:                              #   in Loop: Header=BB3_47 Depth=2
	slli.d	$a1, $s4, 2
	ld.bu	$a2, $s8, 1
	pcalau12i	$a0, %pc_hi20(base64_chars)
	addi.d	$a0, $a0, %pc_lo12(base64_chars)
	ldx.w	$a1, $a0, $a1
	slli.d	$a2, $a2, 2
	ldx.w	$a2, $a0, $a2
	move	$s6, $zero
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
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
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	and	$a0, $a0, $a2
	addi.w	$a0, $a0, 0
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	addi.d	$s8, $s8, 8
	ori	$s7, $zero, 16
	b	.LBB3_919
.LBB3_317:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $zero
	addi.d	$s8, $s8, 4
	ori	$s7, $zero, 15
	b	.LBB3_919
.LBB3_318:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	move	$s5, $zero
	b	.LBB3_46
.LBB3_319:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	beqz	$a1, .LBB3_324
.LBB3_320:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_324
# %bb.321:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a1, $a0, 0
	slli.d	$a2, $s4, 2
	ldptr.w	$a0, $a4, 8196
	ldx.w	$fp, $a1, $a2
	bne	$a0, $a5, .LBB3_323
# %bb.322:                              # %html_output_flush.exit.i1342
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_323:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	stx.b	$fp, $a1, $a0
	ld.bu	$s4, $s8, 0
.LBB3_324:                              # %html_output_c.exit1343
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $s4, -62
	sltui	$a0, $a0, 1
	masknez	$a1, $s7, $a0
	ori	$a2, $zero, 1
	maskeqz	$a2, $a2, $a0
	or	$s6, $a2, $a1
	ori	$a1, $zero, 2
	masknez	$a1, $a1, $a0
	ori	$a2, $zero, 5
	maskeqz	$a0, $a2, $a0
	or	$s7, $a0, $a1
	b	.LBB3_45
.LBB3_325:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 59
	beq	$s4, $a0, .LBB3_329
# %bb.326:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 120
	beq	$s4, $a0, .LBB3_328
# %bb.327:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 88
	bne	$s4, $a0, .LBB3_337
.LBB3_328:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 160                 # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	b	.LBB3_514
.LBB3_329:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 9
	bne	$s7, $a0, .LBB3_581
# %bb.330:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
	ori	$a0, $zero, 1023
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	blt	$a0, $a2, .LBB3_332
# %bb.331:                              #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $a2, 1
	addi.d	$a1, $sp, 1528
	stx.b	$fp, $a2, $a1
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
.LBB3_332:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s1, .LBB3_582
.LBB3_333:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 127
	blt	$a0, $fp, .LBB3_590
# %bb.334:                              #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $fp, 128
	ori	$a1, $zero, 383
	bltu	$a1, $a0, .LBB3_336
# %bb.335:                              # %tolower.exit.sink.split
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 2
	ldx.w	$fp, $a0, $a1
.LBB3_336:                              # %tolower.exit
                                        #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$a5, 2
	bnez	$s0, .LBB3_583
	b	.LBB3_586
.LBB3_337:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a1, $a0, $a1
	andi	$a0, $a1, 2048
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	addi.w	$fp, $a2, 0
	bnez	$a0, .LBB3_340
# %bb.338:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$fp, .LBB3_572
# %bb.339:                              #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$a2, 1
	and	$a1, $a1, $a2
	beqz	$a1, .LBB3_572
.LBB3_340:                              #   in Loop: Header=BB3_47 Depth=2
	bnez	$a0, .LBB3_511
# %bb.341:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 2
	ldx.w	$a0, $a0, $a1
	addi.d	$a0, $a0, -87
	b	.LBB3_512
.LBB3_342:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	bnez	$a0, .LBB3_507
# %bb.343:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB3_507
# %bb.344:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	ori	$a0, $zero, 5
	ori	$s7, $zero, 8
	ori	$a1, $zero, 1
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	b	.LBB3_634
.LBB3_345:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	addi.d	$a0, $sp, 1528
	ori	$a2, $zero, 6
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_550
.LBB3_346:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 34
	beq	$s4, $a0, .LBB3_477
# %bb.347:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 39
	beq	$s4, $a0, .LBB3_464
# %bb.348:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 38
	bne	$s4, $a0, .LBB3_492
# %bb.349:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	ori	$fp, $zero, 3
	ori	$s7, $zero, 9
	b	.LBB3_661
.LBB3_350:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	lu12i.w	$a5, 2
	and	$a1, $a0, $a5
	ori	$a0, $zero, 62
	ld.d	$fp, $sp, 232                   # 8-byte Folded Reload
	beq	$s4, $a0, .LBB3_509
# %bb.351:                              #   in Loop: Header=BB3_47 Depth=2
	bnez	$a1, .LBB3_509
# %bb.352:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ori	$a0, $zero, 44
	bne	$s4, $a0, .LBB3_631
# %bb.353:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s7, $zero
	addi.d	$a0, $sp, 1528
	stx.b	$zero, $fp, $a0
	addi.d	$s8, $s8, 1
	ori	$a0, $zero, 19
	b	.LBB3_634
.LBB3_354:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	beqz	$s4, .LBB3_364
# %bb.355:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s4, 8196
	bne	$a0, $a5, .LBB3_357
# %bb.356:                              # %html_output_flush.exit.i1591
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s4, 0
	addi.d	$a1, $s4, 4
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_357:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$fp, $s4, 4
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s4, 8196
	ori	$a1, $zero, 37
	stx.b	$a1, $fp, $a0
	ldptr.w	$a0, $s4, 8196
	bne	$a0, $a5, .LBB3_359
# %bb.358:                              # %html_output_flush.exit.i1594
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s4, 0
	move	$a1, $fp
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_359:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 48
	addi.d	$a2, $a0, 1
	stptr.w	$a2, $s4, 8196
	stx.b	$a1, $fp, $a0
	b	.LBB3_365
.LBB3_360:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	beqz	$fp, .LBB3_364
# %bb.361:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	bne	$a0, $a5, .LBB3_363
# %bb.362:                              # %html_output_flush.exit.i1597
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	addi.d	$a1, $fp, 4
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_363:                              #   in Loop: Header=BB3_47 Depth=2
	add.d	$a1, $fp, $a0
	addi.d	$a0, $a0, 1
	stptr.w	$a0, $fp, 8196
	ori	$a0, $zero, 37
	st.b	$a0, $a1, 4
	b	.LBB3_365
.LBB3_364:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 144                 # 8-byte Folded Spill
.LBB3_365:                              # %.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $s7
	ori	$s7, $zero, 20
	b	.LBB3_46
.LBB3_366:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$s7, $zero, 13
	ori	$s6, $zero, 1
	beqz	$a4, .LBB3_558
# %bb.367:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a2, $a4, 8196
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4086
	blt	$a2, $a0, .LBB3_570
# %bb.368:                              # %html_output_flush.exit.thread.i1491
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 12
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.w	$a0, $a4, 0
	ld.d	$fp, $sp, 248                   # 8-byte Folded Reload
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a2, $zero
	stptr.w	$zero, $a4, 8196
	b	.LBB3_571
.LBB3_369:                              # %._crit_edge
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ori	$s0, $zero, 10
	move	$s2, $s1
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	st.d	$zero, $sp, 224                 # 8-byte Folded Spill
	b	.LBB3_817
.LBB3_370:                              #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$a1, 1
	ori	$a2, $a1, 4061
	ori	$a1, $zero, 34
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	bge	$a2, $s6, .LBB3_373
# %bb.371:                              # %html_output_flush.exit.thread.i1562
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a2, $zero, 34
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a1, $zero
	bstrpick.d	$a0, $s6, 31, 13
	stptr.w	$zero, $fp, 8196
	beqz	$a0, .LBB3_373
# %bb.372:                              # %html_output_flush.exit15.i1561
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	addi.d	$a1, $sp, 1528
	move	$a2, $s6
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 2
	ori	$a0, $a1, 4
	ldx.w	$a0, $fp, $a0
	b	.LBB3_374
.LBB3_373:                              # %html_output_flush.exit.i1560.thread
                                        #   in Loop: Header=BB3_47 Depth=2
	add.d	$a0, $s4, $a1
	addi.d	$a1, $sp, 1528
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	lu12i.w	$a1, 2
	ori	$a0, $a1, 4
	ldx.w	$a0, $fp, $a0
	add.w	$a0, $a0, $s6
	stptr.w	$a0, $fp, 8196
.LBB3_374:                              # %html_output_str.exit1563
                                        #   in Loop: Header=BB3_47 Depth=2
	bne	$a0, $a1, .LBB3_376
# %bb.375:                              # %html_output_flush.exit.i1565
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	move	$a1, $s4
	lu12i.w	$a2, 2
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_376:                              # %html_output_c.exit1566
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 8196
	stx.b	$s0, $s4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a1, $a0, %pc_lo12(.L.str.50)
	addi.d	$a0, $sp, 1528
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	ldptr.w	$a2, $fp, 8196
	beqz	$a0, .LBB3_404
# %bb.377:                              #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4062
	blt	$a2, $a0, .LBB3_379
# %bb.378:                              # %html_output_flush.exit.thread.i1570
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a2, $zero
	stptr.w	$zero, $fp, 8196
.LBB3_379:                              # %html_output_str.exit1571
                                        #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$a5, 2
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a0, $a0, %pc_lo12(.L.str.51)
	vld	$vr0, $a0, 0
	ld.h	$a1, $a0, 32
	add.d	$a3, $s4, $a2
	vstx	$vr0, $s4, $a2
	st.h	$a1, $a3, 32
	vld	$vr0, $a0, 16
	vst	$vr0, $a3, 16
	ori	$a0, $a5, 4
	ldx.w	$a0, $fp, $a0
	addi.w	$a2, $a0, 34
	stptr.w	$a2, $fp, 8196
	bne	$a2, $a5, .LBB3_381
.LBB3_380:                              # %html_output_flush.exit.i1573
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	move	$a1, $s4
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a2, $zero
.LBB3_381:                              # %html_output_c.exit1574
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $a2, 1
	stptr.w	$a0, $fp, 8196
	stx.b	$s0, $s4, $a2
	move	$s6, $s7
	ori	$s7, $zero, 20
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	b	.LBB3_46
.LBB3_382:                              #   in Loop: Header=BB3_47 Depth=2
	move	$fp, $s8
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	b	.LBB3_420
.LBB3_383:                              #   in Loop: Header=BB3_47 Depth=2
	andi	$a0, $s4, 255
	add.d	$a0, $fp, $a0
	addi.w	$a0, $a0, -48
.LBB3_384:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ori	$a0, $zero, 23
.LBB3_385:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a1, $a1, -2
	sltui	$a1, $a1, 1
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	move	$s6, $s7
	or	$s7, $a1, $a0
	b	.LBB3_45
.LBB3_386:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 2559
	add.d	$a1, $sp, $a1
	stx.b	$zero, $a0, $a1
	ori	$s7, $zero, 5
	ori	$s6, $zero, 10
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	b	.LBB3_46
.LBB3_387:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	and	$a0, $a0, $a5
	bnez	$a0, .LBB3_549
# %bb.388:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 2
	ldx.w	$s0, $a0, $a1
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	beqz	$s4, .LBB3_392
# %bb.389:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s4, 8196
	bne	$a0, $a5, .LBB3_391
# %bb.390:                              # %html_output_flush.exit.i1258
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $zero
.LBB3_391:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s4, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_392:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	beqz	$s6, .LBB3_396
# %bb.393:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_395
# %bb.394:                              # %html_output_flush.exit13.i1257
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_395:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_396:                              # %html_output_c.exit1259
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_401
# %bb.397:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_401
# %bb.398:                              #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 0
	ld.d	$a1, $fp, 0
	slli.d	$a2, $a0, 2
	ldptr.w	$a0, $a4, 8196
	ldx.w	$s0, $a1, $a2
	bne	$a0, $a5, .LBB3_400
# %bb.399:                              # %html_output_flush.exit.i1261
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_400:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_401:                              # %html_output_c.exit1262
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	blt	$a0, $s3, .LBB3_403
# %bb.402:                              #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 0
	ld.d	$a1, $fp, 0
	slli.d	$a0, $a0, 2
	ldx.b	$a0, $a1, $a0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ori	$a1, $zero, 3584
	add.d	$a1, $sp, $a1
	stx.b	$a0, $s3, $a1
.LBB3_403:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ori	$s0, $zero, 10
	addi.d	$s8, $s8, 1
	move	$s6, $s7
	ori	$s7, $zero, 7
	b	.LBB3_46
.LBB3_404:                              #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$a5, 2
	beq	$a2, $a5, .LBB3_380
	b	.LBB3_381
.LBB3_405:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	beqz	$fp, .LBB3_409
# %bb.406:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	bne	$a0, $a5, .LBB3_408
# %bb.407:                              # %html_output_flush.exit.i1536
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_408:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	stx.b	$a2, $a1, $a0
.LBB3_409:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	beqz	$s6, .LBB3_413
# %bb.410:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_412
# %bb.411:                              # %html_output_flush.exit13.i1535
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_412:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	stx.b	$fp, $a1, $a0
.LBB3_413:                              # %html_output_c.exit1537
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $fp, 128
	ori	$a1, $zero, 383
	bltu	$a1, $a0, .LBB3_415
# %bb.414:                              # %tolower.exit1539.sink.split
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	slli.d	$a1, $a1, 2
	ldx.w	$fp, $a0, $a1
.LBB3_415:                              # %tolower.exit1539
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_419
# %bb.416:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	bne	$a0, $a5, .LBB3_418
# %bb.417:                              # %html_output_flush.exit.i1541
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_418:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	stx.b	$fp, $a1, $a0
.LBB3_419:                              # %html_output_c.exit1500
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$fp, $s8
.LBB3_420:                              # %html_output_c.exit1500
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	addi.d	$a0, $a0, 1
	addi.w	$a1, $a0, 0
	bstrpick.d	$a1, $a1, 62, 57
	add.d	$a1, $a0, $a1
	bstrpick.d	$a1, $a1, 31, 6
	slli.d	$a1, $a1, 6
	sub.w	$a0, $a0, $a1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.d	$s8, $fp, 1
	addi.d	$s4, $s4, -1
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	move	$s6, $s7
	ori	$s7, $zero, 16
	b	.LBB3_46
.LBB3_421:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 168                 # 8-byte Folded Spill
	st.d	$zero, $sp, 160                 # 8-byte Folded Spill
	ori	$fp, $zero, 23
	ori	$s6, $zero, 22
	b	.LBB3_596
.LBB3_422:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	or	$a0, $a1, $a0
	addi.w	$a0, $a0, 0
	ori	$fp, $zero, 21
	beqz	$a0, .LBB3_428
# %bb.423:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$fp, $zero, 20
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	beqz	$s4, .LBB3_428
# %bb.424:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s4, 8196
	bne	$a0, $a5, .LBB3_426
# %bb.425:                              # %html_output_flush.exit.i1576
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s4, 0
	addi.d	$a1, $s4, 4
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_426:                              #   in Loop: Header=BB3_47 Depth=2
	add.d	$a1, $s4, $a0
	addi.d	$a0, $a0, 1
	stptr.w	$a0, $s4, 8196
	ori	$a0, $zero, 39
.LBB3_427:                              # %html_output_c.exit1577
                                        #   in Loop: Header=BB3_47 Depth=2
	st.b	$a0, $a1, 4
.LBB3_428:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $s7
	b	.LBB3_596
.LBB3_429:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ori	$a1, $zero, 62
	beq	$s4, $a1, .LBB3_594
# %bb.430:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 1
	ldx.hu	$a0, $a0, $a1
	and	$a0, $a0, $a5
	bnez	$a0, .LBB3_594
# %bb.431:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$fp, $zero, 20
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	beqz	$s6, .LBB3_595
# %bb.432:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_434
# %bb.433:                              # %html_output_flush.exit.i1585
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	addi.d	$a1, $s6, 4
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $zero
.LBB3_434:                              #   in Loop: Header=BB3_47 Depth=2
	add.d	$a1, $s6, $a0
	addi.d	$a0, $a0, 1
	stptr.w	$a0, $s6, 8196
	st.b	$s4, $a1, 4
	b	.LBB3_595
.LBB3_435:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	ld.w	$s2, $sp, 1496
	ori	$s6, $zero, 1
	blt	$s2, $s6, .LBB3_637
# %bb.436:                              # %.lr.ph.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s4, $sp, 1504
	move	$fp, $zero
	slli.d	$s0, $s2, 3
	.p2align	4, , 16
.LBB3_437:                              #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $s4, $fp
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_678
# %bb.438:                              #   in Loop: Header=BB3_437 Depth=3
	addi.d	$fp, $fp, 8
	bne	$s0, $fp, .LBB3_437
	b	.LBB3_684
.LBB3_439:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ld.d	$s1, $sp, 232                   # 8-byte Folded Reload
	beqz	$s4, .LBB3_443
# %bb.440:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s4, 8196
	bne	$a0, $a5, .LBB3_442
# %bb.441:                              # %html_output_flush.exit.i1432
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $zero
.LBB3_442:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s4, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ori	$a2, $zero, 38
	stx.b	$a2, $a1, $a0
.LBB3_443:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s6, .LBB3_447
# %bb.444:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_446
# %bb.445:                              # %html_output_flush.exit13.i1431
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $zero
.LBB3_446:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 38
	stx.b	$a2, $a1, $a0
.LBB3_447:                              # %html_output_c.exit1433
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 9
	bne	$s7, $a0, .LBB3_450
# %bb.448:                              # %html_output_c.exit1433
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	blt	$a0, $s1, .LBB3_450
# %bb.449:                              #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $s1, 1
	ori	$a1, $zero, 38
	addi.d	$a2, $sp, 1528
	stx.b	$a1, $s1, $a2
	move	$s1, $a0
.LBB3_450:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_638
# %bb.451:                              # %.lr.ph1798
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s2, $sp, 295
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$fp, $a0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	b	.LBB3_453
	.p2align	4, , 16
.LBB3_452:                              #   in Loop: Header=BB3_453 Depth=3
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -1
	addi.d	$s2, $s2, 1
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	beqz	$a0, .LBB3_639
.LBB3_453:                              #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a0, $s2, 0
	ld.d	$a1, $fp, 0
	slli.d	$a0, $a0, 2
	ldx.w	$s0, $a1, $a0
	beqz	$s4, .LBB3_457
# %bb.454:                              #   in Loop: Header=BB3_453 Depth=3
	ldptr.w	$a0, $s4, 8196
	bne	$a0, $a5, .LBB3_456
# %bb.455:                              # %html_output_flush.exit.i1437
                                        #   in Loop: Header=BB3_453 Depth=3
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_456:                              #   in Loop: Header=BB3_453 Depth=3
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s4, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_457:                              #   in Loop: Header=BB3_453 Depth=3
	beqz	$s6, .LBB3_461
# %bb.458:                              #   in Loop: Header=BB3_453 Depth=3
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_460
# %bb.459:                              # %html_output_flush.exit13.i1436
                                        #   in Loop: Header=BB3_453 Depth=3
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_460:                              #   in Loop: Header=BB3_453 Depth=3
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_461:                              # %html_output_c.exit1438
                                        #   in Loop: Header=BB3_453 Depth=3
	ori	$a0, $zero, 9
	bne	$s7, $a0, .LBB3_452
# %bb.462:                              # %html_output_c.exit1438
                                        #   in Loop: Header=BB3_453 Depth=3
	ori	$a0, $zero, 1023
	blt	$a0, $s1, .LBB3_452
# %bb.463:                              #   in Loop: Header=BB3_453 Depth=3
	move	$a2, $s1
	addi.w	$s1, $s1, 1
	addi.d	$a1, $sp, 1528
	stx.b	$s0, $a2, $a1
	b	.LBB3_452
.LBB3_464:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$fp, .LBB3_651
# %bb.465:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	or	$a0, $a1, $a0
	addi.w	$a0, $a0, 0
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_559
# %bb.466:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s4, $sp, 1528
	beqz	$fp, .LBB3_470
# %bb.467:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	bne	$a0, $a5, .LBB3_469
# %bb.468:                              # %html_output_flush.exit.i1306
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $zero
.LBB3_469:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_470:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 232                   # 8-byte Folded Reload
	beqz	$s6, .LBB3_474
# %bb.471:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_473
# %bb.472:                              # %html_output_flush.exit13.i1305
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_473:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_474:                              # %html_output_c.exit1307
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	blt	$a0, $fp, .LBB3_476
# %bb.475:                              #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $fp, 1
	ori	$a1, $zero, 34
	stx.b	$a1, $fp, $s4
	move	$fp, $a0
.LBB3_476:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$fp, $sp, 232                   # 8-byte Folded Spill
	stx.b	$zero, $fp, $s4
	addi.d	$a0, $sp, 1496
	ori	$a1, $zero, 2559
	add.d	$a1, $sp, $a1
	addi.d	$a2, $sp, 1528
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	ori	$fp, $zero, 5
	ori	$s7, $zero, 8
	b	.LBB3_491
.LBB3_477:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$fp, .LBB3_662
# %bb.478:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_559
# %bb.479:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB3_559
# %bb.480:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s4, $sp, 1528
	beqz	$fp, .LBB3_484
# %bb.481:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	bne	$a0, $a5, .LBB3_483
# %bb.482:                              # %html_output_flush.exit.i1321
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $zero
.LBB3_483:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_484:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 232                   # 8-byte Folded Reload
	beqz	$s6, .LBB3_488
# %bb.485:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_487
# %bb.486:                              # %html_output_flush.exit13.i1320
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_487:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_488:                              # %html_output_c.exit1322
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	blt	$a0, $fp, .LBB3_490
# %bb.489:                              #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $fp, 1
	ori	$a1, $zero, 34
	stx.b	$a1, $fp, $s4
	move	$fp, $a0
.LBB3_490:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$fp, $sp, 232                   # 8-byte Folded Spill
	stx.b	$zero, $fp, $s4
	addi.d	$a0, $sp, 1496
	ori	$a1, $zero, 2559
	add.d	$a1, $sp, $a1
	addi.d	$a2, $sp, 1528
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	ori	$fp, $zero, 5
	ori	$s7, $zero, 8
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
.LBB3_491:                              # %html_output_c.exit1292
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	b	.LBB3_661
.LBB3_492:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_b_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ori	$a1, $zero, 62
	beq	$s4, $a1, .LBB3_597
# %bb.493:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a1, $a0, 0
	slli.d	$a2, $s4, 1
	ldx.hu	$a1, $a1, $a2
	and	$a1, $a1, $a5
	bnez	$a1, .LBB3_597
# %bb.494:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 2
	ldx.w	$fp, $a0, $a1
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
	beqz	$s0, .LBB3_498
# %bb.495:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_497
# %bb.496:                              # %html_output_flush.exit.i1336
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_497:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	stx.b	$fp, $a1, $a0
.LBB3_498:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	beqz	$s6, .LBB3_502
# %bb.499:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_501
# %bb.500:                              # %html_output_flush.exit13.i1335
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_501:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	stx.b	$fp, $a1, $a0
.LBB3_502:                              # %html_output_c.exit1337
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	blt	$a0, $a3, .LBB3_569
# %bb.503:                              #   in Loop: Header=BB3_47 Depth=2
	ld.b	$a0, $s8, 0
	addi.w	$a1, $a3, 1
	addi.d	$a2, $sp, 1528
	stx.b	$a0, $a3, $a2
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	b	.LBB3_569
.LBB3_504:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	blt	$a0, $a3, .LBB3_506
# %bb.505:                              #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $a3, 1
	addi.d	$a1, $sp, 1528
	ori	$a2, $zero, 34
	stx.b	$a2, $a3, $a1
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
.LBB3_506:                              #   in Loop: Header=BB3_47 Depth=2
	lu12i.w	$a5, 2
	b	.LBB3_633
.LBB3_507:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	blt	$a0, $a3, .LBB3_633
# %bb.508:                              #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $a3, 1
	addi.d	$a1, $sp, 1528
	ori	$a2, $zero, 34
	stx.b	$a2, $a3, $a1
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	b	.LBB3_633
.LBB3_509:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a2, $a0, 0
	ori	$a6, $zero, 2
	ori	$a0, $zero, 5
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ori	$a3, $zero, 2
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	bne	$a2, $a6, .LBB3_599
# %bb.510:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	ori	$s7, $zero, 8
	b	.LBB3_634
.LBB3_511:                              #   in Loop: Header=BB3_47 Depth=2
	andi	$a0, $s4, 255
	addi.d	$a0, $a0, -48
.LBB3_512:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	sltui	$a1, $fp, 1
	ld.d	$a6, $sp, 160                   # 8-byte Folded Reload
	slli.d	$a2, $a6, 4
	slli.d	$a3, $a6, 3
	alsl.w	$a3, $a6, $a3, 1
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	add.w	$a0, $a0, $a1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
.LBB3_513:                              # %.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
.LBB3_514:                              # %.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $s7
	ori	$s7, $zero, 12
	b	.LBB3_46
.LBB3_515:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	addi.w	$s2, $a0, 0
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	bnez	$s2, .LBB3_524
# %bb.516:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s4, .LBB3_520
# %bb.517:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s4, 8196
	bne	$a0, $a5, .LBB3_519
# %bb.518:                              # %html_output_flush.exit.i1276
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $zero
.LBB3_519:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s4, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ori	$a2, $zero, 32
	stx.b	$a2, $a1, $a0
.LBB3_520:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s6, .LBB3_524
# %bb.521:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_523
# %bb.522:                              # %html_output_flush.exit13.i1275
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_523:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 32
	stx.b	$a2, $a1, $a0
.LBB3_524:                              # %html_output_c.exit1277
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$fp, $a0
	ld.bu	$a0, $s8, 0
	ld.d	$a1, $fp, 0
	slli.d	$a0, $a0, 2
	ldx.w	$s0, $a1, $a0
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	beqz	$s4, .LBB3_528
# %bb.525:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s4, 8196
	bne	$a0, $a5, .LBB3_527
# %bb.526:                              # %html_output_flush.exit.i1281
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_527:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s4, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_528:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s6, .LBB3_532
# %bb.529:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_531
# %bb.530:                              # %html_output_flush.exit13.i1280
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_531:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_532:                              # %html_output_c.exit1282
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	blt	$a0, $s2, .LBB3_534
# %bb.533:                              #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 0
	ld.d	$a1, $fp, 0
	slli.d	$a0, $a0, 2
	ldx.b	$a0, $a1, $a0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	ori	$a1, $zero, 2559
	add.d	$a1, $sp, $a1
	stx.b	$a0, $s2, $a1
.LBB3_534:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	addi.d	$s8, $s8, 1
	move	$s6, $s7
	ori	$s7, $zero, 8
	b	.LBB3_46
.LBB3_535:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 2
	ldx.w	$s0, $a0, $a1
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	beqz	$s3, .LBB3_539
# %bb.536:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s3, 8196
	bne	$a0, $a5, .LBB3_538
# %bb.537:                              # %html_output_flush.exit.i1236
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s3, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	move	$a0, $zero
.LBB3_538:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s3, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_539:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	beqz	$s4, .LBB3_543
# %bb.540:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s4, 8196
	bne	$a0, $a5, .LBB3_542
# %bb.541:                              # %html_output_flush.exit13.i1235
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_542:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s4, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_543:                              # %html_output_c.exit1237
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_548
# %bb.544:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_548
# %bb.545:                              #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 0
	ld.d	$a1, $fp, 0
	slli.d	$a2, $a0, 2
	ldptr.w	$a0, $a4, 8196
	ldx.w	$fp, $a1, $a2
	bne	$a0, $a5, .LBB3_547
# %bb.546:                              # %html_output_flush.exit.i1239
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_547:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	stx.b	$fp, $a1, $a0
.LBB3_548:                              # %html_output_c.exit1240
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	move	$s6, $s7
	ori	$s7, $zero, 1
	b	.LBB3_46
.LBB3_549:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	ori	$a0, $zero, 3584
	add.d	$a0, $sp, $a0
	stx.b	$zero, $s3, $a0
	ori	$s7, $zero, 5
	ori	$s6, $zero, 8
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	b	.LBB3_46
.LBB3_550:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
	beqz	$s0, .LBB3_553
# %bb.551:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB3_553
# %bb.552:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $a0, -1
	stptr.w	$a0, $s0, 8196
.LBB3_553:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s6, .LBB3_556
# %bb.554:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB3_556
# %bb.555:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $a0, -1
	stptr.w	$a0, $s6, 8196
.LBB3_556:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$fp, $zero, 18
	ori	$a1, $zero, 2
	ori	$s7, $zero, 8
	bne	$a0, $a1, .LBB3_671
.LBB3_557:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 232                 # 8-byte Folded Spill
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ori	$s0, $zero, 10
	b	.LBB3_661
.LBB3_558:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 12
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	b	.LBB3_46
.LBB3_559:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$fp, .LBB3_563
# %bb.560:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	bne	$a0, $a5, .LBB3_562
# %bb.561:                              # %html_output_flush.exit.i1311
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_562:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_563:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 232                   # 8-byte Folded Reload
	beqz	$s6, .LBB3_567
# %bb.564:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_566
# %bb.565:                              # %html_output_flush.exit13.i1310
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_566:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_567:                              # %html_output_c.exit1312
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	blt	$a0, $fp, .LBB3_569
# %bb.568:                              #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $fp, 1
	addi.d	$a1, $sp, 1528
	ori	$a2, $zero, 34
	stx.b	$a2, $fp, $a1
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
.LBB3_569:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	b	.LBB3_660
.LBB3_570:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 12
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 248                   # 8-byte Folded Reload
.LBB3_571:                              # %html_output_flush.exit.i1490
                                        #   in Loop: Header=BB3_47 Depth=2
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
	b	.LBB3_46
.LBB3_572:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	beqz	$fp, .LBB3_576
# %bb.573:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	bne	$a0, $a5, .LBB3_575
# %bb.574:                              # %html_output_flush.exit.i1478
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_575:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	stx.b	$a2, $a1, $a0
.LBB3_576:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s6, .LBB3_580
# %bb.577:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	bne	$a0, $a5, .LBB3_579
# %bb.578:                              # %html_output_flush.exit13.i1477
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_579:                              #   in Loop: Header=BB3_47 Depth=2
	move	$a2, $s6
	move	$s6, $zero
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a2, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	stx.b	$fp, $a1, $a0
	b	.LBB3_46
.LBB3_580:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $zero
	b	.LBB3_46
.LBB3_581:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
	bnez	$s1, .LBB3_333
.LBB3_582:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	andi	$a1, $fp, 255
	slli.d	$a1, $a1, 2
	ldx.w	$fp, $a0, $a1
	beqz	$s0, .LBB3_586
.LBB3_583:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_585
# %bb.584:                              # %html_output_flush.exit.i1473
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_585:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	stx.b	$fp, $a1, $a0
.LBB3_586:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	beqz	$s6, .LBB3_817
# %bb.587:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_589
# %bb.588:                              # %html_output_flush.exit13.i1472
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_589:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	stx.b	$fp, $a1, $a0
	b	.LBB3_817
.LBB3_590:                              #   in Loop: Header=BB3_47 Depth=2
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
	beqz	$s0, .LBB3_806
# %bb.591:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s4, $a0
	move	$s1, $s2
	ldptr.w	$a2, $s0, 8196
	addi.w	$fp, $a0, 0
	ori	$a0, $zero, 1
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	blt	$a2, $a0, .LBB3_715
# %bb.592:                              #   in Loop: Header=BB3_47 Depth=2
	add.w	$a0, $a2, $s4
	bge	$s2, $a0, .LBB3_715
# %bb.593:                              # %html_output_flush.exit.thread.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a2, $zero
	stptr.w	$zero, $s0, 8196
	blt	$s2, $fp, .LBB3_718
	b	.LBB3_804
.LBB3_594:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a0, $a0, 0
	ori	$fp, $zero, 21
	ori	$a1, $zero, 2
	bne	$a0, $a1, .LBB3_694
.LBB3_595:                              # %html_output_c.exit1577
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $s7
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
.LBB3_596:                              # %html_output_c.exit1577
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 1
	addi.d	$s8, $s8, 1
	addi.d	$a0, $a0, -92
	sltui	$a0, $a0, 1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	b	.LBB3_54
.LBB3_597:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	addi.w	$a1, $a1, 0
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB3_699
# %bb.598:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $sp, 1528
	stx.b	$zero, $fp, $a0
	addi.d	$a0, $sp, 1496
	ori	$a1, $zero, 2559
	add.d	$a1, $sp, $a1
	addi.d	$a2, $sp, 1528
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	ori	$fp, $zero, 5
	ori	$s7, $zero, 8
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	b	.LBB3_661
.LBB3_599:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a2, $zero, 1023
	addi.d	$a6, $sp, 1528
	blt	$a2, $fp, .LBB3_601
# %bb.600:                              # %.sink.split1977
                                        #   in Loop: Header=BB3_47 Depth=2
	sltui	$a1, $a1, 1
	addi.w	$a2, $fp, 1
	ori	$a3, $zero, 32
	masknez	$a3, $a3, $a1
	ori	$a7, $zero, 62
	maskeqz	$a1, $a7, $a1
	or	$a1, $a1, $a3
	stx.b	$a1, $fp, $a6
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
.LBB3_601:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	ori	$s7, $zero, 18
	b	.LBB3_634
.LBB3_602:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ori	$a0, $zero, 45
	ld.d	$a1, $sp, 224                   # 8-byte Folded Reload
	bne	$s4, $a0, .LBB3_604
# %bb.603:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1024
	bltu	$a1, $a0, .LBB3_281
.LBB3_604:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	ori	$a0, $zero, 9
	ld.d	$fp, $sp, 232                   # 8-byte Folded Reload
	bne	$s7, $a0, .LBB3_607
# %bb.605:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	blt	$a0, $fp, .LBB3_607
# %bb.606:                              #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $fp, 1
	ori	$a1, $zero, 38
	addi.d	$a2, $sp, 1528
	stx.b	$a1, $fp, $a2
	move	$fp, $a0
.LBB3_607:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s4, .LBB3_611
# %bb.608:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s4, 8196
	bne	$a0, $a5, .LBB3_610
# %bb.609:                              # %html_output_flush.exit.i1447
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_610:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s4, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ori	$a2, $zero, 38
	stx.b	$a2, $a1, $a0
.LBB3_611:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$fp, $sp, 232                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	beqz	$s6, .LBB3_615
# %bb.612:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_614
# %bb.613:                              # %html_output_flush.exit13.i1446
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_614:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 38
	stx.b	$a2, $a1, $a0
.LBB3_615:                              # %html_output_c.exit1448
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_630
# %bb.616:                              # %.lr.ph1789
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s2, $sp, 295
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$fp, $a0
	b	.LBB3_618
	.p2align	4, , 16
.LBB3_617:                              #   in Loop: Header=BB3_618 Depth=3
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	addi.d	$a0, $a0, -1
	addi.d	$s2, $s2, 1
	st.d	$a0, $sp, 224                   # 8-byte Folded Spill
	beqz	$a0, .LBB3_629
.LBB3_618:                              #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a0, $s2, 0
	ld.d	$a1, $fp, 0
	slli.d	$a0, $a0, 2
	ldx.w	$s0, $a1, $a0
	beqz	$s4, .LBB3_622
# %bb.619:                              #   in Loop: Header=BB3_618 Depth=3
	ldptr.w	$a0, $s4, 8196
	bne	$a0, $a5, .LBB3_621
# %bb.620:                              # %html_output_flush.exit.i1452
                                        #   in Loop: Header=BB3_618 Depth=3
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_621:                              #   in Loop: Header=BB3_618 Depth=3
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s4, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_622:                              #   in Loop: Header=BB3_618 Depth=3
	beqz	$s6, .LBB3_626
# %bb.623:                              #   in Loop: Header=BB3_618 Depth=3
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_625
# %bb.624:                              # %html_output_flush.exit13.i1451
                                        #   in Loop: Header=BB3_618 Depth=3
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_625:                              #   in Loop: Header=BB3_618 Depth=3
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
.LBB3_626:                              # %html_output_c.exit1453
                                        #   in Loop: Header=BB3_618 Depth=3
	ori	$a0, $zero, 9
	bne	$s7, $a0, .LBB3_617
# %bb.627:                              # %html_output_c.exit1453
                                        #   in Loop: Header=BB3_618 Depth=3
	ori	$a0, $zero, 1023
	ld.d	$a2, $sp, 232                   # 8-byte Folded Reload
	blt	$a0, $a2, .LBB3_617
# %bb.628:                              #   in Loop: Header=BB3_618 Depth=3
	addi.w	$a0, $a2, 1
	addi.d	$a1, $sp, 1528
	stx.b	$s0, $a2, $a1
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	b	.LBB3_617
.LBB3_629:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 224                 # 8-byte Folded Spill
	move	$s6, $zero
	ori	$s0, $zero, 10
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	b	.LBB3_46
.LBB3_630:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 224                 # 8-byte Folded Spill
	move	$s6, $zero
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	b	.LBB3_46
.LBB3_631:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	blt	$a0, $fp, .LBB3_633
# %bb.632:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	slli.d	$a1, $s4, 2
	ldx.b	$a0, $a0, $a1
	addi.w	$a1, $fp, 1
	addi.d	$a2, $sp, 1528
	stx.b	$a0, $fp, $a2
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
.LBB3_633:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	ori	$a0, $zero, 18
.LBB3_634:                              #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a1, $s8, 0
	addi.d	$a1, $a1, -92
	sltui	$a1, $a1, 1
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	move	$s6, $s7
	move	$s7, $a0
	b	.LBB3_46
.LBB3_635:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s2, $zero
.LBB3_636:                              # %html_tag_contents_append.exit
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	st.d	$s8, $sp, 104                   # 8-byte Folded Spill
	addi.d	$s8, $s8, 1
	ori	$s7, $zero, 5
	ori	$s6, $zero, 7
	b	.LBB3_46
.LBB3_637:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a1, $zero, 1
	b	.LBB3_858
.LBB3_638:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
.LBB3_639:                              # %._crit_edge1799
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 9
	bne	$s7, $a0, .LBB3_698
# %bb.640:                              # %._crit_edge1799
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1023
	ori	$s0, $zero, 10
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	blt	$a0, $s1, .LBB3_642
# %bb.641:                              #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $s1, 1
	addi.d	$a1, $sp, 1528
	ori	$a2, $zero, 59
	stx.b	$a2, $s1, $a1
	move	$s1, $a0
.LBB3_642:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	beqz	$s4, .LBB3_646
.LBB3_643:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s4, 8196
	bne	$a0, $a5, .LBB3_645
# %bb.644:                              # %html_output_flush.exit.i1442
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s4, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_645:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s4, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ori	$a2, $zero, 59
	stx.b	$a2, $a1, $a0
.LBB3_646:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$s1, $sp, 232                   # 8-byte Folded Spill
	beqz	$s6, .LBB3_650
# %bb.647:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_649
# %bb.648:                              # %html_output_flush.exit13.i1441
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_649:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 59
	stx.b	$a2, $a1, $a0
.LBB3_650:                              # %html_output_c.exit1443
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s1, $fp
	st.d	$zero, $sp, 224                 # 8-byte Folded Spill
	b	.LBB3_817
.LBB3_651:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	beqz	$fp, .LBB3_655
# %bb.652:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	bne	$a0, $a5, .LBB3_654
# %bb.653:                              # %html_output_flush.exit.i1301
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_654:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_655:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s6, .LBB3_659
# %bb.656:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_658
# %bb.657:                              # %html_output_flush.exit13.i1300
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_658:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_659:                              # %html_output_c.exit1302
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	ori	$a0, $zero, 34
	st.b	$a0, $sp, 1528
	addi.d	$s8, $s8, 1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
.LBB3_660:                              # %html_output_c.exit1292
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$fp, $zero, 9
.LBB3_661:                              # %html_output_c.exit1292
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s8, 0
	addi.d	$a0, $a0, -92
	sltui	$a0, $a0, 1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	b	.LBB3_53
.LBB3_662:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	beqz	$fp, .LBB3_666
# %bb.663:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $fp, 8196
	bne	$a0, $a5, .LBB3_665
# %bb.664:                              # %html_output_flush.exit.i1316
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $fp, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_665:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $fp, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_666:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s6, .LBB3_670
# %bb.667:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_669
# %bb.668:                              # %html_output_flush.exit13.i1315
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_669:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s6, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_670:                              # %html_output_c.exit1317
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 34
	st.b	$a0, $sp, 1528
	addi.d	$s8, $s8, 1
	ori	$fp, $zero, 9
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	b	.LBB3_661
.LBB3_671:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$s0, .LBB3_675
# %bb.672:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_674
# %bb.673:                              # %html_output_flush.exit.i1296
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_674:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ori	$a2, $zero, 34
	stx.b	$a2, $a1, $a0
.LBB3_675:                              #   in Loop: Header=BB3_47 Depth=2
	bnez	$s6, .LBB3_208
.LBB3_676:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 232                 # 8-byte Folded Spill
	ori	$s0, $zero, 10
	b	.LBB3_661
.LBB3_677:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	b	.LBB3_918
.LBB3_678:                              # %html_tag_arg_value.exit
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s3, $sp, 1512
	ldx.d	$fp, $s3, $fp
	beqz	$fp, .LBB3_684
# %bb.679:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	ori	$s0, $zero, 10
	beqz	$a0, .LBB3_818
# %bb.680:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	bnez	$a0, .LBB3_858
# %bb.681:                              # %.lr.ph.i1352.preheader
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s0, $zero
.LBB3_682:                              # %.lr.ph.i1352
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_853
# %bb.683:                              #   in Loop: Header=BB3_682 Depth=3
	addi.d	$s0, $s0, 1
	addi.d	$s4, $s4, 8
	ori	$s6, $zero, 14
	bne	$s2, $s0, .LBB3_682
	b	.LBB3_856
.LBB3_684:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a1, $zero, 1
	b	.LBB3_857
.LBB3_685:                              #   in Loop: Header=BB3_47 Depth=2
	ld.w	$fp, $sp, 1496
	ori	$s6, $zero, 1
	blt	$fp, $s6, .LBB3_917
# %bb.686:                              # %.lr.ph.i1378
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s7, $s2
	ld.d	$s0, $sp, 1504
	move	$s1, $zero
	slli.d	$s2, $fp, 3
	.p2align	4, , 16
.LBB3_687:                              #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $s0, $s1
	pcalau12i	$a1, %pc_hi20(.L.str.34)
	addi.d	$a1, $a1, %pc_lo12(.L.str.34)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_772
# %bb.688:                              #   in Loop: Header=BB3_687 Depth=3
	addi.d	$s1, $s1, 8
	bne	$s2, $s1, .LBB3_687
	b	.LBB3_778
.LBB3_689:                              #   in Loop: Header=BB3_47 Depth=2
	ld.w	$fp, $sp, 1496
	ori	$s6, $zero, 1
	blt	$fp, $s6, .LBB3_917
# %bb.690:                              # %.lr.ph.i1364
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s7, $s2
	ld.d	$s0, $sp, 1504
	move	$s1, $zero
	slli.d	$s2, $fp, 3
.LBB3_691:                              #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $s0, $s1
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_780
# %bb.692:                              #   in Loop: Header=BB3_691 Depth=3
	addi.d	$s1, $s1, 8
	bne	$s2, $s1, .LBB3_691
# %bb.693:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s4, $zero
	b	.LBB3_781
.LBB3_694:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$fp, $zero, 20
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	beqz	$s6, .LBB3_428
# %bb.695:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s6, 8196
	bne	$a0, $a5, .LBB3_697
# %bb.696:                              # %html_output_flush.exit.i1582
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	addi.d	$a1, $s6, 4
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_697:                              #   in Loop: Header=BB3_47 Depth=2
	add.d	$a1, $s6, $a0
	addi.d	$a0, $a0, 1
	stptr.w	$a0, $s6, 8196
	st.b	$s4, $a1, 4
	b	.LBB3_428
.LBB3_698:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	bnez	$s4, .LBB3_643
	b	.LBB3_646
.LBB3_699:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
	addi.d	$s7, $sp, 1528
	beqz	$s0, .LBB3_703
# %bb.700:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a1, $s0, 8196
	bne	$a1, $a5, .LBB3_702
# %bb.701:                              # %html_output_flush.exit.i1331
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a1, $s0, 0
	move	$fp, $a0
	move	$a0, $a1
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $fp
	ld.d	$fp, $sp, 232                   # 8-byte Folded Reload
	move	$a1, $zero
.LBB3_702:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a2, $a1, 1
	stptr.w	$a2, $s0, 8196
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	stx.b	$s4, $a2, $a1
.LBB3_703:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	beqz	$s6, .LBB3_707
# %bb.704:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a1, $s6, 8196
	bne	$a1, $a5, .LBB3_706
# %bb.705:                              # %html_output_flush.exit13.i1330
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a1, $s6, 0
	move	$fp, $a0
	move	$a0, $a1
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $fp
	ld.d	$fp, $sp, 232                   # 8-byte Folded Reload
	move	$a1, $zero
.LBB3_706:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a2, $a1, 1
	stptr.w	$a2, $s6, 8196
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	stx.b	$s4, $a2, $a1
.LBB3_707:                              # %html_output_c.exit1332
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$a1, $zero, 1023
	blt	$a1, $fp, .LBB3_709
# %bb.708:                              # %.sink.split
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a1, $s8, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 1
	ldx.hu	$a0, $a0, $a1
	and	$a0, $a0, $a5
	sltui	$a0, $a0, 1
	addi.w	$a1, $fp, 1
	ori	$a2, $zero, 32
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 62
	maskeqz	$a0, $a3, $a0
	or	$a0, $a0, $a2
	stx.b	$a0, $fp, $s7
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
.LBB3_709:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$s8, $s8, 1
	ori	$fp, $zero, 5
	ori	$s7, $zero, 9
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	b	.LBB3_661
.LBB3_710:                              #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s3, 4
	beqz	$a0, .LBB3_255
# %bb.711:                              #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $sp, 1496
	ori	$s6, $zero, 1
	blt	$a0, $s6, .LBB3_917
# %bb.712:                              # %.lr.ph.i1392
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 1504
	move	$s0, $zero
	slli.d	$s1, $a0, 3
.LBB3_713:                              #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $fp, $s0
	pcalau12i	$a1, %pc_hi20(.L.str.38)
	addi.d	$a1, $a1, %pc_lo12(.L.str.38)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_834
# %bb.714:                              #   in Loop: Header=BB3_713 Depth=3
	addi.d	$s0, $s0, 8
	bne	$s1, $s0, .LBB3_713
	b	.LBB3_802
.LBB3_715:                              # %html_output_flush.exit.i1461
                                        #   in Loop: Header=BB3_47 Depth=2
	bge	$s2, $fp, .LBB3_803
# %bb.716:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB3_718
# %bb.717:                              #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	stptr.w	$zero, $s0, 8196
.LBB3_718:                              # %html_output_flush.exit15.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	addi.d	$a1, $sp, 280
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	b	.LBB3_805
.LBB3_719:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	beqz	$s3, .LBB3_723
# %bb.720:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s3, 8196
	bne	$a0, $a5, .LBB3_722
# %bb.721:                              # %html_output_flush.exit.i1504
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s3, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_722:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s3, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ori	$a2, $zero, 13
	stx.b	$a2, $a1, $a0
.LBB3_723:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	beqz	$s0, .LBB3_727
# %bb.724:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_726
# %bb.725:                              # %html_output_flush.exit13.i1503
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_726:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 13
	stx.b	$a2, $a1, $a0
.LBB3_727:                              # %html_output_c.exit1505
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_755
# %bb.728:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	ori	$s0, $zero, 10
	bne	$a0, $a5, .LBB3_730
# %bb.729:                              # %html_output_flush.exit.i1507
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_730:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ori	$a2, $zero, 13
	stx.b	$a2, $a1, $a0
	b	.LBB3_420
.LBB3_731:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	beqz	$s3, .LBB3_735
# %bb.732:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s3, 8196
	bne	$a0, $a5, .LBB3_734
# %bb.733:                              # %html_output_flush.exit.i1528
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s3, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_734:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s3, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
.LBB3_735:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	beqz	$s0, .LBB3_739
# %bb.736:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_738
# %bb.737:                              # %html_output_flush.exit13.i1527
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_738:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
.LBB3_739:                              # %html_output_c.exit1529
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_755
# %bb.740:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	ori	$s0, $zero, 10
	bne	$a0, $a5, .LBB3_742
# %bb.741:                              # %html_output_flush.exit.i1531
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_742:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
	b	.LBB3_420
.LBB3_743:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	beqz	$s3, .LBB3_747
# %bb.744:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s3, 8196
	bne	$a0, $a5, .LBB3_746
# %bb.745:                              # %html_output_flush.exit.i1512
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s3, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_746:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s3, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	ori	$a2, $zero, 64
	stx.b	$a2, $a1, $a0
.LBB3_747:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	beqz	$s0, .LBB3_751
# %bb.748:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_750
# %bb.749:                              # %html_output_flush.exit13.i1511
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_750:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	ori	$a2, $zero, 64
	stx.b	$a2, $a1, $a0
.LBB3_751:                              # %html_output_c.exit1513
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_755
# %bb.752:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	ori	$s0, $zero, 10
	bne	$a0, $a5, .LBB3_754
# %bb.753:                              # %html_output_flush.exit.i1515
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_754:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ori	$a2, $zero, 64
	stx.b	$a2, $a1, $a0
	b	.LBB3_420
.LBB3_755:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	b	.LBB3_420
.LBB3_756:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $s4
	ori	$s4, $zero, 10
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	beqz	$s3, .LBB3_760
# %bb.757:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s3, 8196
	bne	$a0, $a5, .LBB3_759
# %bb.758:                              # %html_output_flush.exit.i1520
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s3, 0
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_759:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s3, 8196
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	stx.b	$s4, $a1, $a0
.LBB3_760:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	beqz	$s0, .LBB3_764
# %bb.761:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $s0, 8196
	bne	$a0, $a5, .LBB3_763
# %bb.762:                              # %html_output_flush.exit13.i1519
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s0, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_763:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s0, 8196
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	stx.b	$s4, $a1, $a0
.LBB3_764:                              # %html_output_c.exit1521
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a4, .LBB3_821
# %bb.765:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a4, 8196
	ori	$s0, $zero, 10
	move	$s4, $s6
	bne	$a0, $a5, .LBB3_767
# %bb.766:                              # %html_output_flush.exit.i1523
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a4, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_767:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $a4, 8196
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	stx.b	$s0, $a1, $a0
	b	.LBB3_420
.LBB3_768:                              #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $sp, 1496
	ori	$s6, $zero, 1
	blt	$a0, $s6, .LBB3_902
# %bb.769:                              # %.lr.ph.i1399
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s4, $s2
	ld.d	$fp, $sp, 1504
	move	$s0, $zero
	bstrpick.d	$s2, $a0, 31, 0
	slli.d	$s1, $s2, 3
.LBB3_770:                              #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $fp, $s0
	pcalau12i	$a1, %pc_hi20(.L.str.40)
	addi.d	$a1, $a1, %pc_lo12(.L.str.40)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_822
# %bb.771:                              #   in Loop: Header=BB3_770 Depth=3
	addi.d	$s0, $s0, 8
	bne	$s1, $s0, .LBB3_770
	b	.LBB3_829
.LBB3_772:                              # %html_tag_arg_value.exit1383
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s2, $sp, 1512
	ldx.d	$s4, $s2, $s1
	beqz	$s4, .LBB3_778
# %bb.773:                              #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $s4, 0
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_900
# %bb.774:                              #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s3, 4
	beqz	$a0, .LBB3_904
.LBB3_775:                              # %.lr.ph.i1385
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.35)
	addi.d	$a1, $a1, %pc_lo12(.L.str.35)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_905
# %bb.776:                              #   in Loop: Header=BB3_775 Depth=3
	addi.d	$s2, $s2, 8
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 8
	bnez	$fp, .LBB3_775
# %bb.777:                              #   in Loop: Header=BB3_47 Depth=2
	move	$fp, $zero
	b	.LBB3_906
.LBB3_778:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
.LBB3_779:                              # %.critedge1215
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	move	$s2, $s7
	b	.LBB3_918
.LBB3_780:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 1512
	ldx.d	$s4, $a0, $s1
.LBB3_781:                              # %.lr.ph.i1371
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s1, $zero
	move	$s2, $s7
.LBB3_782:                              #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $s0, $s1
	pcalau12i	$a1, %pc_hi20(.L.str.29)
	addi.d	$a1, $a1, %pc_lo12(.L.str.29)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_784
# %bb.783:                              #   in Loop: Header=BB3_782 Depth=3
	addi.d	$fp, $fp, -1
	addi.d	$s1, $s1, 8
	bnez	$fp, .LBB3_782
	b	.LBB3_802
.LBB3_784:                              # %html_tag_arg_value.exit1376
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s4, .LBB3_802
# %bb.785:                              # %html_tag_arg_value.exit1376
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 1512
	ldx.d	$fp, $a0, $s1
	ori	$s0, $zero, 10
	beqz	$fp, .LBB3_852
# %bb.786:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strcasecmp)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_917
# %bb.787:                              #   in Loop: Header=BB3_47 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.d	$a0, $a0, 1
	pcaddu18i	$ra, %call36(cli_malloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_990
# %bb.788:                              # %.preheader1675
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s7, $a0
	beqz	$s4, .LBB3_791
# %bb.789:                              # %.lr.ph1802
                                        #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$a1, $s7
	move	$a2, $s4
.LBB3_790:                              #   Parent Loop BB3_28 Depth=1
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
	bnez	$a2, .LBB3_790
.LBB3_791:                              # %._crit_edge1803
                                        #   in Loop: Header=BB3_47 Depth=2
	stx.b	$zero, $s7, $s4
	pcalau12i	$a0, %pc_hi20(.L.str.31)
	addi.d	$a1, $a0, %pc_lo12(.L.str.31)
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strstr)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_916
# %bb.792:                              # %.preheader1674
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a1, $a0, 0
	beqz	$a1, .LBB3_795
.LBB3_793:                              # %.preheader1674
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ori	$a2, $zero, 61
	beq	$a1, $a2, .LBB3_795
# %bb.794:                              #   in Loop: Header=BB3_793 Depth=3
	addi.d	$a0, $a0, 1
	ld.bu	$a1, $a0, 0
	bnez	$a1, .LBB3_793
.LBB3_795:                              # %.critedge14
                                        #   in Loop: Header=BB3_47 Depth=2
	sltu	$s0, $zero, $a1
	add.d	$fp, $a0, $s0
	pcalau12i	$a1, %pc_hi20(.L.str.32)
	addi.d	$a1, $a1, %pc_lo12(.L.str.32)
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strcspn)
	jirl	$ra, $ra, 0
	add.d	$a1, $a0, $s0
	stx.b	$zero, $s1, $a1
	beqz	$a0, .LBB3_797
# %bb.796:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $sp, 1320
	ori	$a2, $zero, 5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(process_encoding_set)
	jirl	$ra, $ra, 0
.LBB3_797:                              #   in Loop: Header=BB3_47 Depth=2
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	b	.LBB3_802
.LBB3_798:                              #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $sp, 1496
	ori	$s6, $zero, 1
	blt	$a0, $s6, .LBB3_902
# %bb.799:                              # %.lr.ph.i1413
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 1504
	move	$s0, $zero
	slli.d	$s1, $a0, 3
.LBB3_800:                              #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $fp, $s0
	pcalau12i	$a1, %pc_hi20(.L.str.40)
	addi.d	$a1, $a1, %pc_lo12(.L.str.40)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_840
# %bb.801:                              #   in Loop: Header=BB3_800 Depth=3
	addi.d	$s0, $s0, 8
	bne	$s1, $s0, .LBB3_800
.LBB3_802:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	b	.LBB3_903
.LBB3_803:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 256                   # 8-byte Folded Reload
.LBB3_804:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	addi.d	$a1, $sp, 280
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	lu12i.w	$a0, 2
	ori	$a0, $a0, 4
	ldx.w	$a0, $s0, $a0
	add.d	$a0, $a0, $s4
	stptr.w	$a0, $s0, 8196
.LBB3_805:                              # %html_output_str.exit
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s2, $s1
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
.LBB3_806:                              # %html_output_str.exit
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $sp, 280
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ori	$s0, $zero, 10
	beqz	$s6, .LBB3_816
# %bb.807:                              #   in Loop: Header=BB3_47 Depth=2
	move	$s4, $a0
	move	$s1, $s2
	ldptr.w	$a2, $s6, 8196
	addi.w	$fp, $a0, 0
	ori	$a0, $zero, 1
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	blt	$a2, $a0, .LBB3_810
# %bb.808:                              #   in Loop: Header=BB3_47 Depth=2
	add.w	$a0, $a2, $s4
	bge	$s2, $a0, .LBB3_810
# %bb.809:                              # %html_output_flush.exit.thread.i1466
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a2, $zero
	stptr.w	$zero, $s6, 8196
	blt	$s2, $fp, .LBB3_813
	b	.LBB3_814
.LBB3_810:                              # %html_output_flush.exit.i1464
                                        #   in Loop: Header=BB3_47 Depth=2
	bge	$s2, $fp, .LBB3_814
# %bb.811:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB3_813
# %bb.812:                              #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	stptr.w	$zero, $s6, 8196
.LBB3_813:                              # %html_output_flush.exit15.i1465
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s6, 0
	addi.d	$a1, $sp, 280
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	b	.LBB3_815
.LBB3_814:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	addi.d	$a1, $sp, 280
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ori	$a0, $a5, 4
	ldx.w	$a0, $s6, $a0
	add.d	$a0, $a0, $s4
	stptr.w	$a0, $s6, 8196
.LBB3_815:                              # %html_output_str.exit1467
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s2, $s1
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
.LBB3_816:                              # %html_output_str.exit1467
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
.LBB3_817:                              # %.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s6, $zero
	b	.LBB3_45
.LBB3_818:                              # %.lr.ph.i1347.preheader
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s0, $zero
.LBB3_819:                              # %.lr.ph.i1347
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.d	$a0, $s4, 0
	pcalau12i	$a1, %pc_hi20(.L.str.22)
	addi.d	$a1, $a1, %pc_lo12(.L.str.22)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_838
# %bb.820:                              #   in Loop: Header=BB3_819 Depth=3
	addi.d	$s0, $s0, 1
	addi.d	$s4, $s4, 8
	bne	$s2, $s0, .LBB3_819
	b	.LBB3_855
.LBB3_821:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	move	$s4, $s6
	b	.LBB3_420
.LBB3_822:                              # %html_tag_arg_value.exit1404
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 1512
	ldx.d	$fp, $a0, $s0
	beqz	$fp, .LBB3_829
# %bb.823:                              #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $fp, 0
	ori	$s0, $zero, 10
	beqz	$a0, .LBB3_830
# %bb.824:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a1, $a0, %pc_lo12(.L.str.40)
	move	$a0, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 4
	beqz	$a0, .LBB3_827
# %bb.825:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_827
# %bb.826:                              #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a1, $s3, 0
	move	$a0, $s3
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(html_tag_set_inahref)
	jirl	$ra, $ra, 0
.LBB3_827:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_830
# %bb.828:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	move	$a0, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(blobCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 24
	ld.w	$fp, $s3, 0
	alsl.d	$a1, $fp, $a1, 3
	st.d	$a0, $a1, -8
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a3, $s0, $a0
	move	$a0, $s3
	move	$a1, $fp
	move	$a2, $s0
	ori	$s0, $zero, 10
	pcaddu18i	$ra, %call36(html_tag_contents_append)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(html_tag_contents_done)
	jirl	$ra, $ra, 0
	ld.wu	$s2, $sp, 1496
	b	.LBB3_830
.LBB3_829:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
.LBB3_830:                              # %html_tag_arg_value.exit1404.thread
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.w	$a0, $s2, 0
	ori	$s6, $zero, 1
	blt	$a0, $s6, .LBB3_839
# %bb.831:                              # %.lr.ph.i1406
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $sp, 1504
	move	$s0, $zero
	slli.d	$s1, $s2, 3
.LBB3_832:                              #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.d	$a0, $fp, $s0
	pcalau12i	$a1, %pc_hi20(.L.str.41)
	addi.d	$a1, $a1, %pc_lo12(.L.str.41)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_843
# %bb.833:                              #   in Loop: Header=BB3_832 Depth=3
	addi.d	$s0, $s0, 8
	bne	$s1, $s0, .LBB3_832
	b	.LBB3_851
.LBB3_834:                              # %html_tag_arg_value.exit1397
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 1512
	ldx.d	$fp, $a0, $s0
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	beqz	$fp, .LBB3_902
# %bb.835:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ori	$s0, $zero, 10
	beqz	$a0, .LBB3_837
# %bb.836:                              #   in Loop: Header=BB3_47 Depth=2
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_837:                              #   in Loop: Header=BB3_47 Depth=2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	b	.LBB3_917
.LBB3_838:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$fp, $a0, %pc_lo12(.L.str.24)
	b	.LBB3_854
.LBB3_839:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	move	$s2, $s4
	b	.LBB3_918
.LBB3_840:                              # %html_tag_arg_value.exit1418
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 1512
	ldx.d	$fp, $a0, $s0
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	beqz	$fp, .LBB3_902
# %bb.841:                              #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $fp, 0
	ori	$s0, $zero, 10
	beqz	$a0, .LBB3_917
# %bb.842:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.42)
	addi.d	$a1, $a0, %pc_lo12(.L.str.42)
	b	.LBB3_846
.LBB3_843:                              # %html_tag_arg_value.exit1411
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 1512
	ldx.d	$fp, $a0, $s0
	beqz	$fp, .LBB3_851
# %bb.844:                              #   in Loop: Header=BB3_47 Depth=2
	ld.bu	$a0, $fp, 0
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ori	$s0, $zero, 10
	move	$s2, $s4
	beqz	$a0, .LBB3_917
# %bb.845:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a1, $a0, %pc_lo12(.L.str.41)
.LBB3_846:                              #   in Loop: Header=BB3_47 Depth=2
	move	$a0, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 4
	beqz	$a0, .LBB3_849
# %bb.847:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_849
# %bb.848:                              #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a1, $s3, 0
	move	$a0, $s3
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(html_tag_set_inahref)
	jirl	$ra, $ra, 0
.LBB3_849:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	beqz	$s0, .LBB3_901
# %bb.850:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	move	$a0, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(blobCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 24
	ld.w	$fp, $s3, 0
	alsl.d	$a1, $fp, $a1, 3
	st.d	$a0, $a1, -8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a3, $s0, $a0
	move	$a0, $s3
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(html_tag_contents_append)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(html_tag_contents_done)
	jirl	$ra, $ra, 0
	b	.LBB3_902
.LBB3_851:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ori	$s0, $zero, 10
	move	$s2, $s4
	b	.LBB3_918
.LBB3_852:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	b	.LBB3_918
.LBB3_853:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$fp, $a0, %pc_lo12(.L.str.26)
.LBB3_854:                              # %.critedge1211.sink.split
                                        #   in Loop: Header=BB3_47 Depth=2
	slli.d	$s0, $s0, 3
	ldx.d	$a0, $s3, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(cli_strdup)
	jirl	$ra, $ra, 0
	stx.d	$a0, $s3, $s0
.LBB3_855:                              # %.critedge1211
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s6, $zero, 14
.LBB3_856:                              # %.critedge1211
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
.LBB3_857:                              # %.critedge1211
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
.LBB3_858:                              # %.critedge1211
                                        #   in Loop: Header=BB3_47 Depth=2
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	beqz	$a3, .LBB3_869
# %bb.859:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a3, 8196
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	bne	$a0, $a5, .LBB3_861
# %bb.860:                              # %html_output_flush.exit.i.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a3, 0
	lu12i.w	$a2, 2
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_861:                              #   in Loop: Header=BB3_47 Depth=2
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
	ori	$a0, $zero, 1
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	blt	$a2, $a0, .LBB3_864
# %bb.862:                              #   in Loop: Header=BB3_47 Depth=2
	add.w	$a0, $a2, $s4
	bge	$s3, $a0, .LBB3_864
# %bb.863:                              # %html_output_flush.exit.thread.i.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a1, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	move	$a2, $zero
	stptr.w	$zero, $a1, 8196
	blt	$s3, $fp, .LBB3_867
	b	.LBB3_868
.LBB3_864:                              # %html_output_flush.exit.i30.i
                                        #   in Loop: Header=BB3_47 Depth=2
	bge	$s3, $fp, .LBB3_868
# %bb.865:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB3_867
# %bb.866:                              #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a1, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	stptr.w	$zero, $a1, 8196
.LBB3_867:                              # %html_output_flush.exit15.i.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a1, 0
	ori	$a1, $zero, 3584
	add.d	$a1, $sp, $a1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	b	.LBB3_869
.LBB3_868:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	ori	$a1, $zero, 3584
	add.d	$a1, $sp, $a1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ori	$a0, $a5, 4
	ldx.w	$a0, $a3, $a0
	add.d	$a0, $a0, $s4
	stptr.w	$a0, $a3, 8196
.LBB3_869:                              # %html_output_str.exit.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $sp, 1496
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB3_895
# %bb.870:                              # %.lr.ph58.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 1504
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 1512
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	move	$s3, $zero
	b	.LBB3_874
.LBB3_871:                              # %html_output_flush.exit.i49.i
                                        #   in Loop: Header=BB3_874 Depth=3
	ld.w	$a0, $a3, 0
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	move	$fp, $zero
.LBB3_872:                              #   in Loop: Header=BB3_874 Depth=3
	addi.d	$a0, $fp, 1
	stptr.w	$a0, $a3, 8196
	ori	$a0, $zero, 34
	stx.b	$a0, $a1, $fp
.LBB3_873:                              # %html_output_c.exit50.i
                                        #   in Loop: Header=BB3_874 Depth=3
	ld.w	$a0, $sp, 1496
	addi.d	$s3, $s3, 1
	bge	$s3, $a0, .LBB3_895
.LBB3_874:                              #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB3_891 Depth 4
	beqz	$a3, .LBB3_873
# %bb.875:                              #   in Loop: Header=BB3_874 Depth=3
	ldptr.w	$a0, $a3, 8196
	bne	$a0, $a5, .LBB3_877
# %bb.876:                              # %html_output_flush.exit.i32.i
                                        #   in Loop: Header=BB3_874 Depth=3
	ld.w	$a0, $a3, 0
	lu12i.w	$a2, 2
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_877:                              #   in Loop: Header=BB3_874 Depth=3
	addi.d	$a2, $a0, 1
	stptr.w	$a2, $a3, 8196
	ori	$a2, $zero, 32
	stx.b	$a2, $a1, $a0
	slli.d	$s0, $s3, 3
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ldx.d	$fp, $a0, $s0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	ldptr.w	$a2, $a1, 8196
	move	$s7, $a0
	addi.w	$s4, $a0, 0
	ori	$a0, $zero, 1
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	blt	$a2, $a0, .LBB3_880
# %bb.878:                              #   in Loop: Header=BB3_874 Depth=3
	add.w	$a0, $a2, $s7
	bge	$s2, $a0, .LBB3_880
# %bb.879:                              # %html_output_flush.exit.thread.i38.i
                                        #   in Loop: Header=BB3_874 Depth=3
	ld.w	$a0, $a1, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	move	$a2, $zero
	stptr.w	$zero, $a1, 8196
	blt	$s2, $s4, .LBB3_883
	b	.LBB3_884
	.p2align	4, , 16
.LBB3_880:                              # %html_output_flush.exit.i36.i
                                        #   in Loop: Header=BB3_874 Depth=3
	bge	$s2, $s4, .LBB3_884
# %bb.881:                              #   in Loop: Header=BB3_874 Depth=3
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB3_883
# %bb.882:                              #   in Loop: Header=BB3_874 Depth=3
	ld.w	$a0, $a1, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 272                   # 8-byte Folded Reload
	stptr.w	$zero, $a1, 8196
.LBB3_883:                              # %html_output_flush.exit15.i37.i
                                        #   in Loop: Header=BB3_874 Depth=3
	ld.w	$a0, $a1, 0
	move	$a1, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	b	.LBB3_885
	.p2align	4, , 16
.LBB3_884:                              #   in Loop: Header=BB3_874 Depth=3
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	move	$a1, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ori	$a0, $a5, 4
	ldx.w	$a0, $a3, $a0
	add.d	$a0, $a0, $s7
	stptr.w	$a0, $a3, 8196
.LBB3_885:                              # %html_output_str.exit39.i
                                        #   in Loop: Header=BB3_874 Depth=3
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$a0, $a0, $s0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ori	$s0, $zero, 10
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_873
# %bb.886:                              #   in Loop: Header=BB3_874 Depth=3
	ldptr.w	$a2, $a3, 8196
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4094
	blt	$a2, $a0, .LBB3_888
# %bb.887:                              # %html_output_flush.exit.thread.i43.i
                                        #   in Loop: Header=BB3_874 Depth=3
	ld.w	$a0, $a3, 0
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	move	$a2, $zero
	stptr.w	$zero, $a3, 8196
.LBB3_888:                              # %html_output_str.exit44.thread.i
                                        #   in Loop: Header=BB3_874 Depth=3
	ori	$a0, $a5, 573
	stx.h	$a0, $a1, $a2
	ori	$s0, $a5, 4
	ldx.w	$a1, $a3, $s0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$s7, $s3, $a0, 3
	ld.d	$a0, $s7, 0
	addi.w	$fp, $a1, 2
	stptr.w	$fp, $a3, 8196
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB3_894
# %bb.889:                              # %.lr.ph.split.preheader.i
                                        #   in Loop: Header=BB3_874 Depth=3
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$s1, $zero
	bstrpick.d	$s4, $s4, 30, 0
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	b	.LBB3_891
	.p2align	4, , 16
.LBB3_890:                              # %html_output_c.exit47.i
                                        #   in Loop: Header=BB3_891 Depth=4
	addi.d	$a2, $a0, 1
	stptr.w	$a2, $a3, 8196
	addi.d	$s1, $s1, 1
	stx.b	$s2, $a1, $a0
	beq	$s4, $s1, .LBB3_893
.LBB3_891:                              # %.lr.ph.split.i
                                        #   Parent Loop BB3_28 Depth=1
                                        #     Parent Loop BB3_47 Depth=2
                                        #       Parent Loop BB3_874 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$a0, $s7, 0
	ldx.bu	$a0, $a0, $s1
	ld.d	$a4, $fp, 0
	slli.d	$a2, $a0, 2
	ldptr.w	$a0, $a3, 8196
	ldx.w	$s2, $a4, $a2
	bne	$a0, $a5, .LBB3_890
# %bb.892:                              # %html_output_flush.exit.i46.i
                                        #   in Loop: Header=BB3_891 Depth=4
	ld.w	$a0, $a3, 0
	move	$a2, $a5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	lu12i.w	$a5, 2
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
	b	.LBB3_890
	.p2align	4, , 16
.LBB3_893:                              # %._crit_edge.thread65.ithread-pre-split
                                        #   in Loop: Header=BB3_874 Depth=3
	ldx.w	$fp, $a3, $s0
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ori	$s0, $zero, 10
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	beq	$fp, $a5, .LBB3_871
	b	.LBB3_872
.LBB3_894:                              #   in Loop: Header=BB3_874 Depth=3
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	ori	$s0, $zero, 10
	bne	$fp, $a5, .LBB3_872
	b	.LBB3_871
.LBB3_895:                              # %._crit_edge59.i
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$a3, .LBB3_899
# %bb.896:                              #   in Loop: Header=BB3_47 Depth=2
	ldptr.w	$a0, $a3, 8196
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	bne	$a0, $a5, .LBB3_898
# %bb.897:                              # %html_output_flush.exit.i52.i
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $a3, 0
	lu12i.w	$a2, 2
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	move	$a0, $zero
.LBB3_898:                              #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a2, $a0, 1
	stptr.w	$a2, $a3, 8196
	ori	$a2, $zero, 62
	stx.b	$a2, $a1, $a0
	b	.LBB3_918
.LBB3_899:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	b	.LBB3_918
.LBB3_900:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	b	.LBB3_779
.LBB3_901:                              #   in Loop: Header=BB3_47 Depth=2
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
.LBB3_902:                              # %.critedge1215
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
.LBB3_903:                              # %.critedge1215
                                        #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	b	.LBB3_918
.LBB3_904:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
	move	$s2, $s7
	b	.LBB3_914
.LBB3_905:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$fp, $s2, 0
.LBB3_906:                              # %html_tag_arg_value.exit1390
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$s2, $s7
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_909
# %bb.907:                              # %html_tag_arg_value.exit1390
                                        #   in Loop: Header=BB3_47 Depth=2
	beqz	$s2, .LBB3_909
# %bb.908:                              #   in Loop: Header=BB3_47 Depth=2
	move	$a0, $s3
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	move	$a1, $s0
	move	$a2, $s2
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(html_tag_contents_append)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(html_tag_contents_done)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
.LBB3_909:                              #   in Loop: Header=BB3_47 Depth=2
	beqz	$fp, .LBB3_911
# %bb.910:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.36)
	addi.d	$a1, $a0, %pc_lo12(.L.str.36)
	move	$a0, $s3
	move	$a2, $fp
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(blobCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 24
	ld.w	$fp, $s3, 0
	alsl.d	$a1, $fp, $a1, 3
	st.d	$a0, $a1, -8
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a3, $s4, $a0
	move	$a0, $s3
	move	$a1, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(html_tag_contents_append)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(html_tag_contents_done)
	jirl	$ra, $ra, 0
.LBB3_911:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	beqz	$s0, .LBB3_913
# %bb.912:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.37)
	addi.d	$a1, $a0, %pc_lo12(.L.str.37)
	move	$a0, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(blobCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 24
	ld.w	$fp, $s3, 0
	alsl.d	$a1, $fp, $a1, 3
	st.d	$a0, $a1, -8
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	add.d	$a3, $s0, $a0
	move	$a0, $s3
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(html_tag_contents_append)
	jirl	$ra, $ra, 0
	ld.w	$a1, $s3, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(html_tag_contents_done)
	jirl	$ra, $ra, 0
.LBB3_913:                              #   in Loop: Header=BB3_47 Depth=2
	ori	$s0, $zero, 10
.LBB3_914:                              #   in Loop: Header=BB3_47 Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a1, $a0, %pc_lo12(.L.str.34)
	move	$a0, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(html_tag_arg_add)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s3, 4
	beqz	$a0, .LBB3_917
# %bb.915:                              #   in Loop: Header=BB3_47 Depth=2
	ld.w	$a0, $s3, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(blobCreate)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s3, 24
	ld.w	$a2, $s3, 0
	alsl.d	$a1, $a2, $a1, 3
	st.d	$a0, $a1, -8
	move	$s2, $s8
	b	.LBB3_917
.LBB3_916:                              # %.thread
                                        #   in Loop: Header=BB3_47 Depth=2
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_917:                              #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
.LBB3_918:                              # %.critedge1215
                                        #   in Loop: Header=BB3_47 Depth=2
	addi.d	$a0, $sp, 1496
	pcaddu18i	$ra, %call36(html_tag_arg_free)
	jirl	$ra, $ra, 0
	ori	$s7, $zero, 5
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
.LBB3_919:                              # %.backedge
                                        #   in Loop: Header=BB3_47 Depth=2
	ld.d	$a4, $sp, 272                   # 8-byte Folded Reload
	lu12i.w	$a5, 2
	b	.LBB3_46
.LBB3_920:
	move	$fp, $zero
	b	.LBB3_987
.LBB3_921:
	st.d	$zero, $sp, 224                 # 8-byte Folded Spill
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	st.d	$zero, $sp, 184                 # 8-byte Folded Spill
.LBB3_922:                              # %._crit_edge1869
	ori	$fp, $zero, 1
	beqz	$s1, .LBB3_946
# %bb.923:
	addi.d	$a0, $sp, 295
	ld.d	$s2, $sp, 224                   # 8-byte Folded Reload
	stx.b	$zero, $s2, $a0
	addi.d	$a0, $sp, 1320
	addi.d	$a1, $sp, 295
	pcaddu18i	$ra, %call36(entity_norm)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB3_935
# %bb.924:                              # %.preheader
	move	$s0, $a0
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB3_971
# %bb.925:                              # %.lr.ph1874
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	addi.d	$s5, $a0, 4
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	beqz	$a1, .LBB3_960
# %bb.926:                              # %.lr.ph1874.split
	addi.d	$s6, $a1, 4
	move	$s2, $zero
	beqz	$a0, .LBB3_967
# %bb.927:                              # %.lr.ph1874.split.split.preheader
	lu12i.w	$s7, 2
	b	.LBB3_929
	.p2align	4, , 16
.LBB3_928:                              # %html_output_c.exit1605
                                        #   in Loop: Header=BB3_929 Depth=1
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s8, 8196
	stx.b	$s3, $s5, $a0
	addi.d	$s2, $s2, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	bgeu	$s2, $a0, .LBB3_971
.LBB3_929:                              # %.lr.ph1874.split.split
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a0, $s0, $s2
	ld.d	$a1, $s4, 0
	slli.d	$a2, $a0, 2
	ld.d	$s8, $sp, 256                   # 8-byte Folded Reload
	ldptr.w	$a0, $s8, 8196
	ldx.w	$s3, $a1, $a2
	bne	$a0, $s7, .LBB3_931
# %bb.930:                              # %html_output_flush.exit.i1604
                                        #   in Loop: Header=BB3_929 Depth=1
	ld.w	$a0, $s8, 0
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_931:                              #   in Loop: Header=BB3_929 Depth=1
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s8, 8196
	stx.b	$s3, $s6, $a0
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ldptr.w	$a0, $s8, 8196
	bne	$a0, $s7, .LBB3_928
# %bb.932:                              # %html_output_flush.exit13.i1603
                                        #   in Loop: Header=BB3_929 Depth=1
	ld.w	$a0, $s8, 0
	move	$a1, $s5
	move	$a2, $s7
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB3_928
.LBB3_933:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$fp, $zero
	b	.LBB3_987
.LBB3_934:
	move	$a0, $s4
	b	.LBB3_976
.LBB3_935:
	beqz	$s2, .LBB3_946
# %bb.936:
	ori	$a2, $zero, 38
	move	$a0, $s4
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	move	$a1, $s2
	pcaddu18i	$ra, %call36(html_output_c)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$s4, $s4, 4
	addi.d	$s5, $s2, 4
	addi.d	$s2, $sp, 295
	lu12i.w	$s6, 2
	ld.d	$s8, $sp, 224                   # 8-byte Folded Reload
	b	.LBB3_939
	.p2align	4, , 16
.LBB3_937:                              #   in Loop: Header=BB3_939 Depth=1
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	stx.b	$s3, $s5, $a0
.LBB3_938:                              # %html_output_c.exit1610
                                        #   in Loop: Header=BB3_939 Depth=1
	addi.d	$s8, $s8, -1
	addi.d	$s2, $s2, 1
	beqz	$s8, .LBB3_958
.LBB3_939:                              # =>This Inner Loop Header: Depth=1
	ld.bu	$a0, $s2, 0
	ld.d	$a1, $s0, 0
	slli.d	$a0, $a0, 2
	ldx.w	$s3, $a1, $a0
	ld.d	$s7, $sp, 256                   # 8-byte Folded Reload
	beqz	$s7, .LBB3_943
# %bb.940:                              #   in Loop: Header=BB3_939 Depth=1
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $s6, .LBB3_942
# %bb.941:                              # %html_output_flush.exit.i1609
                                        #   in Loop: Header=BB3_939 Depth=1
	ld.w	$a0, $s7, 0
	move	$a1, $s4
	move	$a2, $s6
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
.LBB3_942:                              #   in Loop: Header=BB3_939 Depth=1
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	stx.b	$s3, $s4, $a0
.LBB3_943:                              #   in Loop: Header=BB3_939 Depth=1
	ld.d	$s7, $sp, 264                   # 8-byte Folded Reload
	beqz	$s7, .LBB3_938
# %bb.944:                              #   in Loop: Header=BB3_939 Depth=1
	ldptr.w	$a0, $s7, 8196
	bne	$a0, $s6, .LBB3_937
# %bb.945:                              # %html_output_flush.exit13.i1608
                                        #   in Loop: Header=BB3_939 Depth=1
	ld.w	$a0, $s7, 0
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB3_937
.LBB3_946:
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_948
.LBB3_947:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_948:
	beqz	$s0, .LBB3_950
# %bb.949:
	ld.d	$a0, $s3, 24
	slli.d	$a1, $s0, 3
	addi.d	$s0, $a1, -8
	ldx.d	$a0, $a0, $s0
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$a1, $a1, %pc_lo12(.L.str.52)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(blobAddData)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s3, 24
	ldx.d	$a0, $a0, $s0
	pcaddu18i	$ra, %call36(blobClose)
	jirl	$ra, $ra, 0
.LBB3_950:                              # %.thread1648
	beqz	$s1, .LBB3_978
.LBB3_951:
	addi.d	$a0, $sp, 1320
	pcaddu18i	$ra, %call36(entity_norm_done)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1496
	pcaddu18i	$ra, %call36(html_tag_arg_free)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB3_979
.LBB3_952:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(fclose)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	bnez	$s4, .LBB3_980
.LBB3_953:
	beqz	$s6, .LBB3_983
.LBB3_954:
	ldptr.w	$a2, $s6, 8196
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB3_956
# %bb.955:
	ld.w	$a0, $s6, 0
	addi.d	$a1, $s6, 4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	stptr.w	$zero, $s6, 8196
.LBB3_956:                              # %html_output_flush.exit1612
	ld.w	$a0, $s6, 0
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	bnez	$s0, .LBB3_984
	b	.LBB3_987
.LBB3_957:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB3_976
.LBB3_958:
	ld.d	$s2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	b	.LBB3_972
.LBB3_959:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	lu12i.w	$a1, 1
	ori	$a1, $a1, 520
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB3_975
.LBB3_960:                              # %.lr.ph1874.split.us
	beqz	$a0, .LBB3_971
# %bb.961:                              # %.lr.ph1874.split.us.split.preheader
	move	$s2, $zero
	lu12i.w	$s6, 2
	b	.LBB3_963
	.p2align	4, , 16
.LBB3_962:                              # %html_output_c.exit1605.us
                                        #   in Loop: Header=BB3_963 Depth=1
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s7, 8196
	stx.b	$s1, $s5, $a0
	addi.d	$s2, $s2, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	bgeu	$s2, $a0, .LBB3_971
.LBB3_963:                              # %.lr.ph1874.split.us.split
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a0, $s0, $s2
	ld.d	$a1, $s4, 0
	slli.d	$a2, $a0, 2
	ld.d	$s7, $sp, 264                   # 8-byte Folded Reload
	ldptr.w	$a0, $s7, 8196
	ldx.w	$s1, $a1, $a2
	bne	$a0, $s6, .LBB3_962
# %bb.964:                              # %html_output_flush.exit13.i1603.us
                                        #   in Loop: Header=BB3_963 Depth=1
	ld.w	$a0, $s7, 0
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB3_962
.LBB3_965:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	lu12i.w	$a1, 1
	ori	$a1, $a1, 520
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	b	.LBB3_974
.LBB3_966:
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB3_989
.LBB3_967:                              # %.lr.ph1874.split.split.us.preheader
	lu12i.w	$s5, 2
	b	.LBB3_969
	.p2align	4, , 16
.LBB3_968:                              # %html_output_c.exit1605.us1877
                                        #   in Loop: Header=BB3_969 Depth=1
	addi.d	$a1, $a0, 1
	stptr.w	$a1, $s3, 8196
	stx.b	$s1, $s6, $a0
	addi.d	$s2, $s2, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	bgeu	$s2, $a0, .LBB3_971
.LBB3_969:                              # %.lr.ph1874.split.split.us
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a0, $s0, $s2
	ld.d	$a1, $s4, 0
	slli.d	$a2, $a0, 2
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ldptr.w	$a0, $s3, 8196
	ldx.w	$s1, $a1, $a2
	bne	$a0, $s5, .LBB3_968
# %bb.970:                              # %html_output_flush.exit.i1604.us
                                        #   in Loop: Header=BB3_969 Depth=1
	ld.w	$a0, $s3, 0
	move	$a1, $s6
	move	$a2, $s5
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	b	.LBB3_968
.LBB3_971:                              # %._crit_edge1875
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 192                   # 8-byte Folded Reload
.LBB3_972:                              # %.loopexit
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_947
	b	.LBB3_948
.LBB3_973:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	lu12i.w	$a1, 1
	ori	$a1, $a1, 520
	add.d	$a1, $sp, $a1
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s4, 0
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 0
.LBB3_974:                              # %.thread1648
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
.LBB3_975:                              # %.thread1648
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
.LBB3_976:
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_977:
	st.d	$zero, $sp, 272                 # 8-byte Folded Spill
	move	$s6, $zero
	move	$s4, $zero
	move	$fp, $zero
	bnez	$s1, .LBB3_951
.LBB3_978:
	addi.d	$a0, $sp, 1496
	pcaddu18i	$ra, %call36(html_tag_arg_free)
	jirl	$ra, $ra, 0
	beqz	$s2, .LBB3_952
.LBB3_979:
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	beqz	$s4, .LBB3_953
.LBB3_980:
	ldptr.w	$a2, $s4, 8196
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB3_982
# %bb.981:
	ld.w	$a0, $s4, 0
	addi.d	$a1, $s4, 4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	stptr.w	$zero, $s4, 8196
.LBB3_982:                              # %html_output_flush.exit1611
	ld.w	$a0, $s4, 0
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	bnez	$s6, .LBB3_954
.LBB3_983:
	beqz	$s0, .LBB3_987
.LBB3_984:
	ldptr.w	$a2, $s0, 8196
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB3_986
# %bb.985:
	ld.w	$a0, $s0, 0
	addi.d	$a1, $s0, 4
	pcaddu18i	$ra, %call36(cli_writen)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 272                   # 8-byte Folded Reload
	stptr.w	$zero, $s0, 8196
.LBB3_986:                              # %html_output_flush.exit1613
	ld.w	$a0, $s0, 0
	pcaddu18i	$ra, %call36(close)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB3_987:                              # %.critedge1214
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
.LBB3_988:
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
.LBB3_989:
	move	$fp, $zero
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_947
	b	.LBB3_948
.LBB3_990:
	addi.w	$fp, $zero, -114
	b	.LBB3_987
.Lfunc_end3:
	.size	cli_html_normalise, .Lfunc_end3-cli_html_normalise
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_966-.LJTI3_0
	.word	.LBB3_57-.LJTI3_0
	.word	.LBB3_165-.LJTI3_0
	.word	.LBB3_132-.LJTI3_0
	.word	.LBB3_134-.LJTI3_0
	.word	.LBB3_130-.LJTI3_0
	.word	.LBB3_169-.LJTI3_0
	.word	.LBB3_178-.LJTI3_0
	.word	.LBB3_154-.LJTI3_0
	.word	.LBB3_193-.LJTI3_0
	.word	.LBB3_116-.LJTI3_0
	.word	.LBB3_101-.LJTI3_0
	.word	.LBB3_219-.LJTI3_0
	.word	.LBB3_44-.LJTI3_0
	.word	.LBB3_87-.LJTI3_0
	.word	.LBB3_238-.LJTI3_0
	.word	.LBB3_221-.LJTI3_0
	.word	.LBB3_240-.LJTI3_0
	.word	.LBB3_150-.LJTI3_0
	.word	.LBB3_81-.LJTI3_0
	.word	.LBB3_211-.LJTI3_0
	.word	.LBB3_126-.LJTI3_0
	.word	.LBB3_241-.LJTI3_0
	.word	.LBB3_79-.LJTI3_0
.LJTI3_1:
	.word	.LBB3_213-.LJTI3_1
	.word	.LBB3_429-.LJTI3_1
	.word	.LBB3_429-.LJTI3_1
	.word	.LBB3_421-.LJTI3_1
	.word	.LBB3_596-.LJTI3_1
	.word	.LBB3_422-.LJTI3_1
.LJTI3_2:
	.word	.LBB3_419-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_226-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_719-.LJTI3_2
	.word	.LBB3_743-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_756-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_420-.LJTI3_2
	.word	.LBB3_731-.LJTI3_2
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
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB5_10
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
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB8_26
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
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB10_4
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
