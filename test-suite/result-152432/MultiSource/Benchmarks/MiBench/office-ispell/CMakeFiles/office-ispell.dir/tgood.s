	.file	"tgood.c"
	.text
	.globl	chk_aff                         # -- Begin function chk_aff
	.p2align	5
	.type	chk_aff,@function
chk_aff:                                # @chk_aff
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
	pcalau12i	$a7, %got_pc_hi20(pflagindex)
	ld.d	$s6, $a7, %got_pc_lo12(pflagindex)
	ld.d	$a7, $s6, 0
	ld.w	$t0, $s6, 8
	move	$s0, $a6
	move	$s5, $a5
	move	$fp, $a4
	move	$s1, $a3
	move	$s2, $a2
	move	$s3, $a1
	move	$s4, $a0
	st.d	$a4, $sp, 0
	move	$a3, $a5
	move	$a4, $a6
	move	$a5, $a7
	move	$a6, $t0
	move	$a7, $s1
	pcaddu18i	$ra, %call36(pfx_list_chk)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s3, 0
	alsl.d	$s6, $a0, $s6, 4
	ld.w	$a6, $s6, 8
	bnez	$a6, .LBB0_19
# %bb.1:                                # %.lr.ph
	ld.d	$a0, $s6, 0
	beqz	$fp, .LBB0_9
# %bb.2:                                # %.lr.ph.split.us
	beqz	$a0, .LBB0_18
# %bb.3:                                # %.lr.ph78.preheader
	ori	$s7, $zero, 1
	.p2align	4, , 16
.LBB0_4:                                # %.lr.ph78
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a1, $s3, $s7
	beqz	$a1, .LBB0_22
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	ld.w	$a6, $a0, 8
	beqz	$a6, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a5, $a0, 0
	st.d	$fp, $sp, 0
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s2
	move	$a3, $s5
	move	$a4, $s0
	move	$a7, $s1
	pcaddu18i	$ra, %call36(pfx_list_chk)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
	ldx.bu	$a1, $s3, $s7
.LBB0_7:                                #   in Loop: Header=BB0_4 Depth=1
	alsl.d	$s6, $a1, $a0, 4
	ld.w	$a6, $s6, 8
	bnez	$a6, .LBB0_19
# %bb.8:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $s6, 0
	addi.d	$s7, $s7, 1
	bnez	$a0, .LBB0_4
	b	.LBB0_18
.LBB0_9:                                # %.lr.ph.split
	beqz	$a0, .LBB0_18
# %bb.10:                               # %.lr.ph72.preheader
	pcalau12i	$a1, %got_pc_hi20(numhits)
	ld.d	$s7, $a1, %got_pc_lo12(numhits)
	pcalau12i	$a1, %got_pc_hi20(cflag)
	ld.d	$a1, $a1, %got_pc_lo12(cflag)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ori	$s8, $zero, 1
	.p2align	4, , 16
.LBB0_11:                               # %.lr.ph72
                                        # =>This Inner Loop Header: Depth=1
	ldx.bu	$a1, $s3, $s8
	beqz	$a1, .LBB0_22
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	ld.w	$a6, $a0, 8
	beqz	$a6, .LBB0_16
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=1
	ld.d	$a5, $a0, 0
	st.d	$zero, $sp, 0
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s2
	move	$a3, $s5
	move	$a4, $s0
	move	$a7, $s1
	pcaddu18i	$ra, %call36(pfx_list_chk)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
	beqz	$a0, .LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_11 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	or	$a0, $a0, $s1
	beqz	$a0, .LBB0_22
.LBB0_15:                               # %._crit_edge
                                        #   in Loop: Header=BB0_11 Depth=1
	ld.d	$a0, $s6, 0
	ldx.bu	$a1, $s3, $s8
.LBB0_16:                               #   in Loop: Header=BB0_11 Depth=1
	alsl.d	$s6, $a1, $a0, 4
	ld.w	$a6, $s6, 8
	bnez	$a6, .LBB0_19
# %bb.17:                               #   in Loop: Header=BB0_11 Depth=1
	ld.d	$a0, $s6, 0
	move	$a6, $zero
	addi.d	$s8, $s8, 1
	bnez	$a0, .LBB0_11
	b	.LBB0_19
.LBB0_18:
	move	$a6, $zero
.LBB0_19:                               # %.critedge
	ld.d	$a5, $s6, 0
	st.d	$fp, $sp, 0
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s2
	move	$a3, $s5
	move	$a4, $s0
	move	$a7, $s1
	pcaddu18i	$ra, %call36(pfx_list_chk)
	jirl	$ra, $ra, 0
	bnez	$fp, .LBB0_23
# %bb.20:                               # %.critedge
	pcalau12i	$a0, %got_pc_hi20(numhits)
	ld.d	$a0, $a0, %got_pc_lo12(numhits)
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB0_23
# %bb.21:                               # %.critedge
	pcalau12i	$a0, %got_pc_hi20(cflag)
	ld.d	$a0, $a0, %got_pc_lo12(cflag)
	ld.w	$a0, $a0, 0
	or	$a0, $a0, $s1
	bnez	$a0, .LBB0_23
.LBB0_22:                               # %.loopexit
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
.LBB0_23:
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s2
	move	$a3, $s0
	move	$a4, $zero
	move	$a5, $s1
	move	$a6, $fp
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
	pcaddu18i	$t8, %call36(chk_suf)
	jr	$t8
.Lfunc_end0:
	.size	chk_aff, .Lfunc_end0-chk_aff
                                        # -- End function
	.p2align	5                               # -- Begin function pfx_list_chk
	.type	pfx_list_chk,@function
pfx_list_chk:                           # @pfx_list_chk
# %bb.0:
	addi.d	$sp, $sp, -560
	st.d	$ra, $sp, 552                   # 8-byte Folded Spill
	st.d	$fp, $sp, 544                   # 8-byte Folded Spill
	st.d	$s0, $sp, 536                   # 8-byte Folded Spill
	st.d	$s1, $sp, 528                   # 8-byte Folded Spill
	st.d	$s2, $sp, 520                   # 8-byte Folded Spill
	st.d	$s3, $sp, 512                   # 8-byte Folded Spill
	st.d	$s4, $sp, 504                   # 8-byte Folded Spill
	st.d	$s5, $sp, 496                   # 8-byte Folded Spill
	st.d	$s6, $sp, 488                   # 8-byte Folded Spill
	st.d	$s7, $sp, 480                   # 8-byte Folded Spill
	st.d	$s8, $sp, 472                   # 8-byte Folded Spill
	move	$fp, $a6
	addi.w	$a6, $a6, 0
	ori	$s0, $zero, 1
	st.d	$a7, $sp, 80                    # 8-byte Folded Spill
	st.d	$a3, $sp, 96                    # 8-byte Folded Spill
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	blt	$a6, $s0, .LBB1_36
# %bb.1:                                # %.lr.ph8
	move	$s1, $a5
	move	$s3, $a2
	ld.d	$a0, $sp, 560
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	andi	$s5, $a0, 2
	ori	$a0, $a4, 1
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(compoundflag)
	ld.d	$s4, $a0, %got_pc_lo12(compoundflag)
	pcalau12i	$a0, %got_pc_hi20(cflag)
	ld.d	$a0, $a0, %got_pc_lo12(cflag)
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(numhits)
	ld.d	$a0, $a0, %got_pc_lo12(numhits)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(hits)
	ld.d	$a0, $a0, %got_pc_lo12(hits)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	b	.LBB1_3
	.p2align	4, , 16
.LBB1_2:                                # %.thread
                                        #   in Loop: Header=BB1_3 Depth=1
	addi.w	$a0, $fp, 0
	addi.d	$fp, $fp, -1
	addi.d	$s1, $s1, 256
	bge	$s0, $a0, .LBB1_36
.LBB1_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_15 Depth 2
	ld.hu	$a0, $s1, 24
	bnez	$s5, .LBB1_5
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	andi	$a1, $a0, 2
	bnez	$a1, .LBB1_2
.LBB1_5:                                #   in Loop: Header=BB1_3 Depth=1
	ld.w	$a1, $s4, 0
	ori	$a2, $zero, 2
	bne	$a1, $a2, .LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	xor	$a0, $a1, $a0
	andi	$a0, $a0, 2
	bnez	$a0, .LBB1_2
.LBB1_7:                                #   in Loop: Header=BB1_3 Depth=1
	ld.h	$s7, $s1, 20
	sub.w	$s8, $s3, $s7
	blt	$s8, $s0, .LBB1_2
# %bb.8:                                #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a0, $s7, 15, 0
	bstrpick.d	$a0, $a0, 15, 0
	beqz	$a0, .LBB1_10
# %bb.9:                                #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $s1, 8
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	move	$a2, $s7
	pcaddu18i	$ra, %call36(strncmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_2
.LBB1_10:                               #   in Loop: Header=BB1_3 Depth=1
	ld.h	$s6, $s1, 18
	ld.h	$s2, $s1, 22
	add.w	$s8, $s8, $s6
	blt	$s8, $s2, .LBB1_2
# %bb.11:                               #   in Loop: Header=BB1_3 Depth=1
	bstrpick.d	$a0, $s6, 15, 0
	bstrpick.d	$a0, $a0, 15, 0
	beqz	$a0, .LBB1_13
# %bb.12:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a1, $s1, 0
	addi.d	$a0, $sp, 288
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
.LBB1_13:                               #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $sp, 288
	add.d	$a0, $a0, $s6
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	add.d	$a1, $a1, $s7
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	blt	$s2, $s0, .LBB1_17
# %bb.14:                               # %.lr.ph
                                        #   in Loop: Header=BB1_3 Depth=1
	move	$a0, $zero
	addi.d	$a1, $s1, 26
	addi.d	$a2, $sp, 288
	.p2align	4, , 16
.LBB1_15:                               #   Parent Loop BB1_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a3, $a2, 0
	ldx.b	$a3, $a1, $a3
	srl.w	$a3, $a3, $a0
	andi	$a3, $a3, 1
	beqz	$a3, .LBB1_2
# %bb.16:                               #   in Loop: Header=BB1_15 Depth=2
	addi.w	$a0, $a0, 1
	addi.d	$a2, $a2, 1
	bne	$s2, $a0, .LBB1_15
.LBB1_17:                               # %._crit_edge
                                        #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB1_21
# %bb.18:                               #   in Loop: Header=BB1_3 Depth=1
	ld.h	$a0, $s1, 16
	addi.d	$a1, $a0, 65
	addi.w	$a4, $zero, -1
	addi.d	$a0, $sp, 288
	move	$a2, $s6
	move	$a3, $s7
	move	$a5, $zero
	pcaddu18i	$ra, %call36(flagpr)
	jirl	$ra, $ra, 0
.LBB1_19:                               #   in Loop: Header=BB1_3 Depth=1
	ld.hu	$a0, $s1, 24
	andi	$a0, $a0, 1
	beqz	$a0, .LBB1_2
# %bb.20:                               #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a1, $sp, 288
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	move	$a2, $s8
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	move	$a4, $s1
	ld.d	$a5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 56                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(chk_suf)
	jirl	$ra, $ra, 0
	b	.LBB1_2
.LBB1_21:                               #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a0, $sp, 288
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(lookup)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	beqz	$a0, .LBB1_25
# %bb.22:                               #   in Loop: Header=BB1_3 Depth=1
	beqz	$s7, .LBB1_19
# %bb.23:                               #   in Loop: Header=BB1_3 Depth=1
	ld.h	$s2, $s1, 20
	beqz	$s2, .LBB1_32
# %bb.24:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a1, $s1, 8
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 104
	add.d	$a0, $a1, $s2
	addi.d	$s6, $a0, 1
	ori	$a0, $zero, 43
	stx.b	$a0, $s2, $a1
	b	.LBB1_33
.LBB1_25:                               #   in Loop: Header=BB1_3 Depth=1
	beqz	$s7, .LBB1_19
# %bb.26:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $s7, 16
	ld.h	$a1, $s1, 16
	srl.d	$a0, $a0, $a1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB1_19
# %bb.27:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 9
	blt	$a1, $a0, .LBB1_29
# %bb.28:                               #   in Loop: Header=BB1_3 Depth=1
	slli.d	$a1, $a0, 4
	alsl.d	$a1, $a0, $a1, 3
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	add.d	$a2, $a3, $a1
	stx.d	$s7, $a3, $a1
	st.d	$s1, $a2, 8
	st.d	$zero, $a2, 16
	addi.d	$a0, $a0, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
.LBB1_29:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bnez	$a0, .LBB1_19
# %bb.30:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cap_ok)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB1_36
# %bb.31:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.w	$zero, $a0, 0
	b	.LBB1_19
.LBB1_32:                               #   in Loop: Header=BB1_3 Depth=1
	addi.d	$s6, $sp, 104
.LBB1_33:                               #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a1, $sp, 288
	move	$a0, $s6
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.hu	$s2, $s1, 18
	add.d	$a4, $s6, $s8
	beqz	$s2, .LBB1_35
# %bb.34:                               #   in Loop: Header=BB1_3 Depth=1
	ld.d	$a1, $s1, 0
	addi.d	$a0, $a4, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$a2, $zero, 45
	st.b	$a2, $a4, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
.LBB1_35:                               #   in Loop: Header=BB1_3 Depth=1
	addi.d	$a1, $sp, 104
	sub.w	$a3, $s6, $a1
	add.d	$a1, $s6, $s8
	sub.w	$a5, $a4, $a1
	ext.w.h	$a2, $s2
	addi.d	$a0, $sp, 104
	st.d	$zero, $sp, 0
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	move	$a4, $zero
	move	$a6, $s7
	move	$a7, $s1
	pcaddu18i	$ra, %call36(ins_root_cap)
	jirl	$ra, $ra, 0
	b	.LBB1_19
.LBB1_36:                               # %._crit_edge9
	ld.d	$s8, $sp, 472                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 480                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 536                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 544                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 552                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 560
	ret
.Lfunc_end1:
	.size	pfx_list_chk, .Lfunc_end1-pfx_list_chk
                                        # -- End function
	.p2align	5                               # -- Begin function chk_suf
	.type	chk_suf,@function
chk_suf:                                # @chk_suf
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
	pcalau12i	$a7, %got_pc_hi20(sflagindex)
	ld.d	$s3, $a7, %got_pc_lo12(sflagindex)
	ld.d	$a7, $s3, 0
	ld.w	$t0, $s3, 8
	move	$s2, $a6
	move	$fp, $a5
	move	$s0, $a4
	move	$s1, $a3
	move	$s8, $a2
	move	$s4, $a1
	move	$s5, $a0
	st.d	$a6, $sp, 0
	move	$a3, $a7
	move	$a4, $t0
	move	$a5, $s1
	move	$a6, $s0
	move	$a7, $fp
	pcaddu18i	$ra, %call36(suf_list_chk)
	jirl	$ra, $ra, 0
	add.d	$a0, $s4, $s8
	ld.bu	$a0, $a0, -1
	alsl.d	$s6, $a0, $s3, 4
	ld.w	$a4, $s6, 8
	bnez	$a4, .LBB2_19
# %bb.1:                                # %.lr.ph
	ld.d	$a0, $s6, 0
	beqz	$s2, .LBB2_9
# %bb.2:                                # %.lr.ph.split.us
	beqz	$a0, .LBB2_18
# %bb.3:
	ori	$s3, $zero, 1
	move	$s7, $s8
	.p2align	4, , 16
.LBB2_4:                                # %.lr.ph66
                                        # =>This Inner Loop Header: Depth=1
	beq	$s7, $s3, .LBB2_20
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	ld.w	$a4, $a0, 8
	beqz	$a4, .LBB2_7
# %bb.6:                                #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a3, $a0, 0
	st.d	$s2, $sp, 0
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s8
	move	$a5, $s1
	move	$a6, $s0
	move	$a7, $fp
	pcaddu18i	$ra, %call36(suf_list_chk)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 0
.LBB2_7:                                #   in Loop: Header=BB2_4 Depth=1
	add.d	$a1, $s4, $s7
	ld.bu	$a1, $a1, -2
	alsl.d	$s6, $a1, $a0, 4
	ld.w	$a4, $s6, 8
	bnez	$a4, .LBB2_19
# %bb.8:                                #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $s6, 0
	addi.d	$s7, $s7, -1
	bnez	$a0, .LBB2_4
	b	.LBB2_18
.LBB2_9:                                # %.lr.ph.split
	beqz	$a0, .LBB2_18
# %bb.10:
	pcalau12i	$a1, %got_pc_hi20(numhits)
	ld.d	$s7, $a1, %got_pc_lo12(numhits)
	pcalau12i	$a1, %got_pc_hi20(cflag)
	ld.d	$a1, $a1, %got_pc_lo12(cflag)
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	move	$s3, $s8
	.p2align	4, , 16
.LBB2_11:                               # %.lr.ph60
                                        # =>This Inner Loop Header: Depth=1
	ori	$a1, $zero, 1
	beq	$s3, $a1, .LBB2_20
# %bb.12:                               #   in Loop: Header=BB2_11 Depth=1
	ld.w	$a4, $a0, 8
	beqz	$a4, .LBB2_16
# %bb.13:                               #   in Loop: Header=BB2_11 Depth=1
	ld.d	$a3, $a0, 0
	st.d	$zero, $sp, 0
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s8
	move	$a5, $s1
	move	$a6, $s0
	move	$a7, $fp
	pcaddu18i	$ra, %call36(suf_list_chk)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s7, 0
	beqz	$a0, .LBB2_15
# %bb.14:                               #   in Loop: Header=BB2_11 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	or	$a0, $a0, $fp
	beqz	$a0, .LBB2_20
.LBB2_15:                               # %._crit_edge
                                        #   in Loop: Header=BB2_11 Depth=1
	ld.d	$a0, $s6, 0
.LBB2_16:                               #   in Loop: Header=BB2_11 Depth=1
	add.d	$a1, $s4, $s3
	ld.bu	$a1, $a1, -2
	alsl.d	$s6, $a1, $a0, 4
	ld.w	$a4, $s6, 8
	bnez	$a4, .LBB2_19
# %bb.17:                               #   in Loop: Header=BB2_11 Depth=1
	ld.d	$a0, $s6, 0
	move	$a4, $zero
	addi.d	$s3, $s3, -1
	bnez	$a0, .LBB2_11
	b	.LBB2_19
.LBB2_18:
	move	$a4, $zero
.LBB2_19:                               # %.critedge
	ld.d	$a3, $s6, 0
	st.d	$s2, $sp, 0
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s8
	move	$a5, $s1
	move	$a6, $s0
	move	$a7, $fp
	pcaddu18i	$ra, %call36(suf_list_chk)
	jirl	$ra, $ra, 0
.LBB2_20:                               # %.loopexit
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
.Lfunc_end2:
	.size	chk_suf, .Lfunc_end2-chk_suf
                                        # -- End function
	.globl	expand_pre                      # -- Begin function expand_pre
	.p2align	5
	.type	expand_pre,@function
expand_pre:                             # @expand_pre
# %bb.0:
	addi.d	$sp, $sp, -448
	st.d	$ra, $sp, 440                   # 8-byte Folded Spill
	st.d	$fp, $sp, 432                   # 8-byte Folded Spill
	st.d	$s0, $sp, 424                   # 8-byte Folded Spill
	st.d	$s1, $sp, 416                   # 8-byte Folded Spill
	st.d	$s2, $sp, 408                   # 8-byte Folded Spill
	st.d	$s3, $sp, 400                   # 8-byte Folded Spill
	st.d	$s4, $sp, 392                   # 8-byte Folded Spill
	st.d	$s5, $sp, 384                   # 8-byte Folded Spill
	st.d	$s6, $sp, 376                   # 8-byte Folded Spill
	st.d	$s7, $sp, 368                   # 8-byte Folded Spill
	st.d	$s8, $sp, 360                   # 8-byte Folded Spill
	pcalau12i	$a5, %got_pc_hi20(numpflags)
	ld.d	$a5, $a5, %got_pc_lo12(numpflags)
	ld.w	$a5, $a5, 0
	ori	$s3, $zero, 1
	st.d	$a4, $sp, 200                   # 8-byte Folded Spill
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	blt	$a5, $s3, .LBB3_73
# %bb.1:                                # %.lr.ph
	move	$s1, $a3
	move	$s2, $a2
	move	$s5, $a1
	pcalau12i	$a0, %got_pc_hi20(pflaglist)
	ld.d	$a0, $a0, %got_pc_lo12(pflaglist)
	move	$s4, $zero
	ld.d	$s7, $a0, 0
	pcalau12i	$a0, %got_pc_hi20(hashheader)
	ld.d	$s8, $a0, %got_pc_lo12(hashheader)
	st.d	$a1, $sp, 216                   # 8-byte Folded Spill
	b	.LBB3_5
	.p2align	4, , 16
.LBB3_2:                                #   in Loop: Header=BB3_5 Depth=1
	move	$fp, $zero
.LBB3_3:                                # %pr_pre_expansion.exit
                                        #   in Loop: Header=BB3_5 Depth=1
	add.w	$s4, $fp, $s4
.LBB3_4:                                #   in Loop: Header=BB3_5 Depth=1
	addi.d	$s7, $s7, 256
	addi.w	$a5, $s6, -1
	bge	$s3, $s6, .LBB3_74
.LBB3_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_10 Depth 2
                                        #     Child Loop BB3_16 Depth 2
                                        #     Child Loop BB3_19 Depth 2
                                        #     Child Loop BB3_53 Depth 2
                                        #     Child Loop BB3_43 Depth 2
                                        #     Child Loop BB3_58 Depth 2
                                        #     Child Loop BB3_60 Depth 2
                                        #     Child Loop BB3_26 Depth 2
                                        #     Child Loop BB3_65 Depth 2
                                        #     Child Loop BB3_46 Depth 2
                                        #     Child Loop BB3_35 Depth 2
                                        #     Child Loop BB3_51 Depth 2
	ld.d	$a0, $s2, 0
	ld.h	$a1, $s7, 16
	srl.d	$a0, $a0, $a1
	andi	$a0, $a0, 1
	move	$s6, $a5
	beqz	$a0, .LBB3_4
# %bb.6:                                #   in Loop: Header=BB3_5 Depth=1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.h	$a1, $s7, 22
	addi.w	$a2, $a0, 0
	blt	$a2, $a1, .LBB3_2
# %bb.7:                                #   in Loop: Header=BB3_5 Depth=1
	ld.h	$fp, $s7, 18
	sub.w	$s0, $a0, $fp
	blt	$s0, $s3, .LBB3_2
# %bb.8:                                #   in Loop: Header=BB3_5 Depth=1
	st.d	$s6, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	ld.h	$s6, $s7, 20
	move	$s4, $s5
	blt	$a1, $s3, .LBB3_12
# %bb.9:                                # %.lr.ph.i
                                        #   in Loop: Header=BB3_5 Depth=1
	move	$a0, $zero
	addi.d	$a2, $s7, 26
	ld.d	$a3, $sp, 216                   # 8-byte Folded Reload
	add.d	$s4, $a3, $a1
	.p2align	4, , 16
.LBB3_10:                               #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a4, $a3, 0
	add.d	$a4, $s8, $a4
	ld.bu	$a4, $a4, 754
	ldx.b	$a4, $a2, $a4
	srl.w	$a4, $a4, $a0
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_28
# %bb.11:                               #   in Loop: Header=BB3_10 Depth=2
	addi.w	$a0, $a0, 1
	addi.d	$a3, $a3, 1
	bne	$a1, $a0, .LBB3_10
.LBB3_12:                               # %._crit_edge.i
                                        #   in Loop: Header=BB3_5 Depth=1
	bstrpick.d	$a0, $s6, 15, 0
	bstrpick.d	$a0, $a0, 15, 0
	beqz	$a0, .LBB3_14
# %bb.13:                               #   in Loop: Header=BB3_5 Depth=1
	ld.d	$a1, $s7, 8
	addi.d	$a0, $sp, 240
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 240
	add.d	$s4, $a0, $s6
.LBB3_14:                               #   in Loop: Header=BB3_5 Depth=1
	add.w	$a0, $s0, $s6
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	ld.d	$s5, $sp, 216                   # 8-byte Folded Reload
	add.d	$a1, $s5, $fp
	move	$a0, $s4
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.bu	$a0, $s5, 0
	add.d	$a0, $s8, $a0
	ld.bu	$a0, $a0, 1210
	beqz	$a0, .LBB3_29
# %bb.15:                               # %.preheader76.i.preheader
                                        #   in Loop: Header=BB3_5 Depth=1
	move	$a0, $s5
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB3_16:                               # %.preheader76.i
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $a0, 1
	beqz	$a1, .LBB3_66
# %bb.17:                               #   in Loop: Header=BB3_16 Depth=2
	add.d	$a2, $s8, $a1
	ld.bu	$a2, $a2, 1210
	addi.d	$a0, $a0, 1
	bnez	$a2, .LBB3_16
# %bb.18:                               # %.lr.ph84.i.preheader
                                        #   in Loop: Header=BB3_5 Depth=1
	ori	$a2, $zero, 1
	.p2align	4, , 16
.LBB3_19:                               # %.lr.ph84.i
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a1, $s8, $a1
	ld.bu	$a1, $a1, 1210
	bnez	$a1, .LBB3_37
# %bb.20:                               #   in Loop: Header=BB3_19 Depth=2
	ldx.bu	$a1, $a0, $a2
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB3_19
# %bb.21:                               # %._crit_edge85.i
                                        #   in Loop: Header=BB3_5 Depth=1
	ori	$a0, $zero, 2
	blt	$fp, $a0, .LBB3_66
# %bb.22:                               # %iter.check48
                                        #   in Loop: Header=BB3_5 Depth=1
	add.d	$a0, $s0, $s6
	addi.w	$a0, $a0, -2
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$s4, $a1, 1
	addi.d	$a2, $sp, 241
	ori	$a1, $zero, 15
	bltu	$a0, $a1, .LBB3_64
# %bb.23:                               # %vector.main.loop.iter.check50
                                        #   in Loop: Header=BB3_5 Depth=1
	ori	$a1, $zero, 31
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	bgeu	$a0, $a1, .LBB3_59
# %bb.24:                               #   in Loop: Header=BB3_5 Depth=1
	move	$a5, $zero
.LBB3_25:                               # %vec.epilog.ph63
                                        #   in Loop: Header=BB3_5 Depth=1
	bstrpick.d	$a0, $s4, 32, 4
	slli.d	$a3, $a0, 4
	addi.d	$a1, $sp, 241
	alsl.d	$a2, $a0, $a1, 4
	sub.d	$a4, $a5, $a3
	add.d	$a1, $a1, $a5
	.p2align	4, , 16
.LBB3_26:                               # %vec.epilog.vector.body69
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a1, 0
	vpickve2gr.b	$a0, $vr0, 15
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.b	$a5, $vr0, 14
	andi	$a5, $a5, 255
	bstrpick.d	$a5, $a5, 15, 0
	vpickve2gr.b	$a6, $vr0, 13
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	vpickve2gr.b	$a7, $vr0, 12
	andi	$a7, $a7, 255
	bstrpick.d	$a7, $a7, 15, 0
	vpickve2gr.b	$t0, $vr0, 11
	andi	$t0, $t0, 255
	bstrpick.d	$t0, $t0, 15, 0
	vpickve2gr.b	$t1, $vr0, 10
	andi	$t1, $t1, 255
	bstrpick.d	$t1, $t1, 15, 0
	vpickve2gr.b	$t2, $vr0, 9
	andi	$t2, $t2, 255
	bstrpick.d	$t2, $t2, 15, 0
	vpickve2gr.b	$t3, $vr0, 8
	andi	$t3, $t3, 255
	bstrpick.d	$t3, $t3, 15, 0
	vpickve2gr.b	$t4, $vr0, 7
	andi	$t4, $t4, 255
	bstrpick.d	$t4, $t4, 15, 0
	vpickve2gr.b	$t5, $vr0, 6
	andi	$t5, $t5, 255
	bstrpick.d	$t5, $t5, 15, 0
	vpickve2gr.b	$t6, $vr0, 5
	andi	$t6, $t6, 255
	bstrpick.d	$t6, $t6, 15, 0
	vpickve2gr.b	$t7, $vr0, 4
	andi	$t7, $t7, 255
	bstrpick.d	$t7, $t7, 15, 0
	vpickve2gr.b	$t8, $vr0, 3
	andi	$t8, $t8, 255
	bstrpick.d	$t8, $t8, 15, 0
	vpickve2gr.b	$fp, $vr0, 2
	andi	$fp, $fp, 255
	bstrpick.d	$fp, $fp, 15, 0
	vpickve2gr.b	$s0, $vr0, 1
	andi	$s0, $s0, 255
	bstrpick.d	$s0, $s0, 15, 0
	vpickve2gr.b	$s1, $vr0, 0
	andi	$s1, $s1, 255
	bstrpick.d	$s1, $s1, 15, 0
	addi.d	$s2, $s8, 526
	ldx.b	$s1, $s2, $s1
	ldx.b	$s0, $s2, $s0
	ldx.b	$fp, $s2, $fp
	ldx.b	$t8, $s2, $t8
	ldx.b	$t7, $s2, $t7
	ldx.b	$t6, $s2, $t6
	ldx.b	$t5, $s2, $t5
	ldx.b	$t4, $s2, $t4
	ldx.b	$t3, $s2, $t3
	ldx.b	$t2, $s2, $t2
	ldx.b	$t1, $s2, $t1
	ldx.b	$t0, $s2, $t0
	ldx.b	$a7, $s2, $a7
	ldx.b	$a6, $s2, $a6
	ldx.b	$a5, $s2, $a5
	ldx.b	$a0, $s2, $a0
	vinsgr2vr.b	$vr0, $s1, 0
	vinsgr2vr.b	$vr0, $s0, 1
	vinsgr2vr.b	$vr0, $fp, 2
	vinsgr2vr.b	$vr0, $t8, 3
	vinsgr2vr.b	$vr0, $t7, 4
	vinsgr2vr.b	$vr0, $t6, 5
	vinsgr2vr.b	$vr0, $t5, 6
	vinsgr2vr.b	$vr0, $t4, 7
	vinsgr2vr.b	$vr0, $t3, 8
	vinsgr2vr.b	$vr0, $t2, 9
	vinsgr2vr.b	$vr0, $t1, 10
	vinsgr2vr.b	$vr0, $t0, 11
	vinsgr2vr.b	$vr0, $a7, 12
	vinsgr2vr.b	$vr0, $a6, 13
	vinsgr2vr.b	$vr0, $a5, 14
	vinsgr2vr.b	$vr0, $a0, 15
	vst	$vr0, $a1, 0
	addi.d	$a4, $a4, 16
	addi.d	$a1, $a1, 16
	bnez	$a4, .LBB3_26
# %bb.27:                               # %vec.epilog.middle.block74
                                        #   in Loop: Header=BB3_5 Depth=1
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	bne	$s4, $a3, .LBB3_64
	b	.LBB3_66
.LBB3_28:                               #   in Loop: Header=BB3_5 Depth=1
	move	$fp, $zero
	ld.d	$s5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 224                   # 8-byte Folded Reload
	b	.LBB3_3
.LBB3_29:                               #   in Loop: Header=BB3_5 Depth=1
	ld.bu	$a0, $s4, 0
	add.d	$a0, $s8, $a0
	ld.bu	$a0, $a0, 1210
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_66
# %bb.30:                               #   in Loop: Header=BB3_5 Depth=1
	ld.h	$a0, $s7, 20
	blt	$a0, $s3, .LBB3_66
# %bb.31:                               # %iter.check
                                        #   in Loop: Header=BB3_5 Depth=1
	bstrpick.d	$s4, $a0, 15, 0
	addi.d	$s6, $sp, 240
	addi.d	$a3, $sp, 240
	ori	$a0, $zero, 16
	bltu	$s4, $a0, .LBB3_50
# %bb.32:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB3_5 Depth=1
	ori	$a0, $zero, 32
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	bgeu	$s4, $a0, .LBB3_45
# %bb.33:                               #   in Loop: Header=BB3_5 Depth=1
	move	$a2, $zero
.LBB3_34:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB3_5 Depth=1
	bstrpick.d	$a0, $s4, 14, 4
	slli.d	$a4, $a0, 4
	addi.d	$a1, $sp, 240
	alsl.d	$a3, $a0, $a1, 4
	sub.d	$a5, $a2, $a4
	add.d	$a2, $a1, $a2
	.p2align	4, , 16
.LBB3_35:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, 0
	vpickve2gr.b	$a0, $vr0, 15
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.b	$a1, $vr0, 14
	andi	$a1, $a1, 255
	bstrpick.d	$a1, $a1, 15, 0
	vpickve2gr.b	$a6, $vr0, 13
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	vpickve2gr.b	$a7, $vr0, 12
	andi	$a7, $a7, 255
	bstrpick.d	$a7, $a7, 15, 0
	vpickve2gr.b	$t0, $vr0, 11
	andi	$t0, $t0, 255
	bstrpick.d	$t0, $t0, 15, 0
	vpickve2gr.b	$t1, $vr0, 10
	andi	$t1, $t1, 255
	bstrpick.d	$t1, $t1, 15, 0
	vpickve2gr.b	$t2, $vr0, 9
	andi	$t2, $t2, 255
	bstrpick.d	$t2, $t2, 15, 0
	vpickve2gr.b	$t3, $vr0, 8
	andi	$t3, $t3, 255
	bstrpick.d	$t3, $t3, 15, 0
	vpickve2gr.b	$t4, $vr0, 7
	andi	$t4, $t4, 255
	bstrpick.d	$t4, $t4, 15, 0
	vpickve2gr.b	$t5, $vr0, 6
	andi	$t5, $t5, 255
	bstrpick.d	$t5, $t5, 15, 0
	vpickve2gr.b	$t6, $vr0, 5
	andi	$t6, $t6, 255
	bstrpick.d	$t6, $t6, 15, 0
	vpickve2gr.b	$t7, $vr0, 4
	andi	$t7, $t7, 255
	bstrpick.d	$t7, $t7, 15, 0
	vpickve2gr.b	$t8, $vr0, 3
	andi	$t8, $t8, 255
	bstrpick.d	$t8, $t8, 15, 0
	vpickve2gr.b	$fp, $vr0, 2
	andi	$fp, $fp, 255
	bstrpick.d	$fp, $fp, 15, 0
	vpickve2gr.b	$s0, $vr0, 1
	andi	$s0, $s0, 255
	bstrpick.d	$s0, $s0, 15, 0
	vpickve2gr.b	$s1, $vr0, 0
	andi	$s1, $s1, 255
	bstrpick.d	$s1, $s1, 15, 0
	addi.d	$s2, $s8, 526
	ldx.b	$s1, $s2, $s1
	ldx.b	$s0, $s2, $s0
	ldx.b	$fp, $s2, $fp
	ldx.b	$t8, $s2, $t8
	ldx.b	$t7, $s2, $t7
	ldx.b	$t6, $s2, $t6
	ldx.b	$t5, $s2, $t5
	ldx.b	$t4, $s2, $t4
	ldx.b	$t3, $s2, $t3
	ldx.b	$t2, $s2, $t2
	ldx.b	$t1, $s2, $t1
	ldx.b	$t0, $s2, $t0
	ldx.b	$a7, $s2, $a7
	ldx.b	$a6, $s2, $a6
	ldx.b	$a1, $s2, $a1
	ldx.b	$a0, $s2, $a0
	vinsgr2vr.b	$vr0, $s1, 0
	vinsgr2vr.b	$vr0, $s0, 1
	vinsgr2vr.b	$vr0, $fp, 2
	vinsgr2vr.b	$vr0, $t8, 3
	vinsgr2vr.b	$vr0, $t7, 4
	vinsgr2vr.b	$vr0, $t6, 5
	vinsgr2vr.b	$vr0, $t5, 6
	vinsgr2vr.b	$vr0, $t4, 7
	vinsgr2vr.b	$vr0, $t3, 8
	vinsgr2vr.b	$vr0, $t2, 9
	vinsgr2vr.b	$vr0, $t1, 10
	vinsgr2vr.b	$vr0, $t0, 11
	vinsgr2vr.b	$vr0, $a7, 12
	vinsgr2vr.b	$vr0, $a6, 13
	vinsgr2vr.b	$vr0, $a1, 14
	vinsgr2vr.b	$vr0, $a0, 15
	vst	$vr0, $a2, 0
	addi.d	$a5, $a5, 16
	addi.d	$a2, $a2, 16
	bnez	$a5, .LBB3_35
# %bb.36:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB3_5 Depth=1
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	bne	$a4, $s4, .LBB3_50
	b	.LBB3_66
.LBB3_37:                               #   in Loop: Header=BB3_5 Depth=1
	ld.h	$a0, $s7, 20
	blt	$a0, $s3, .LBB3_66
# %bb.38:                               #   in Loop: Header=BB3_5 Depth=1
	addi.d	$a1, $sp, 240
	ldx.bu	$a1, $a0, $a1
	add.d	$a1, $s8, $a1
	ld.bu	$a1, $a1, 1210
	bnez	$a1, .LBB3_66
# %bb.39:                               # %iter.check80
                                        #   in Loop: Header=BB3_5 Depth=1
	bstrpick.d	$a0, $a0, 15, 0
	addi.d	$t1, $sp, 240
	bstrpick.d	$a3, $a0, 15, 0
	addi.d	$a4, $sp, 240
	ori	$a1, $zero, 16
	bltu	$a3, $a1, .LBB3_57
# %bb.40:                               # %vector.main.loop.iter.check82
                                        #   in Loop: Header=BB3_5 Depth=1
	addi.d	$a2, $s8, 526
	ori	$a1, $zero, 32
	bgeu	$a3, $a1, .LBB3_52
# %bb.41:                               #   in Loop: Header=BB3_5 Depth=1
	move	$a1, $s2
	move	$ra, $s1
	move	$a3, $zero
.LBB3_42:                               # %vec.epilog.ph95
                                        #   in Loop: Header=BB3_5 Depth=1
	bstrpick.d	$a4, $a0, 14, 4
	slli.d	$a5, $a4, 4
	addi.d	$a7, $sp, 240
	alsl.d	$a4, $a4, $a7, 4
	sub.d	$a6, $a3, $a5
	add.d	$a3, $a7, $a3
	.p2align	4, , 16
.LBB3_43:                               # %vec.epilog.vector.body101
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a3, 0
	vpickve2gr.b	$a7, $vr0, 15
	andi	$a7, $a7, 255
	bstrpick.d	$a7, $a7, 15, 0
	vpickve2gr.b	$t0, $vr0, 14
	andi	$t0, $t0, 255
	bstrpick.d	$t0, $t0, 15, 0
	vpickve2gr.b	$t1, $vr0, 13
	andi	$t1, $t1, 255
	bstrpick.d	$t1, $t1, 15, 0
	vpickve2gr.b	$t2, $vr0, 12
	andi	$t2, $t2, 255
	bstrpick.d	$t2, $t2, 15, 0
	vpickve2gr.b	$t3, $vr0, 11
	andi	$t3, $t3, 255
	bstrpick.d	$t3, $t3, 15, 0
	vpickve2gr.b	$t4, $vr0, 10
	andi	$t4, $t4, 255
	bstrpick.d	$t4, $t4, 15, 0
	vpickve2gr.b	$t5, $vr0, 9
	andi	$t5, $t5, 255
	bstrpick.d	$t5, $t5, 15, 0
	vpickve2gr.b	$t6, $vr0, 8
	andi	$t6, $t6, 255
	bstrpick.d	$t6, $t6, 15, 0
	vpickve2gr.b	$t7, $vr0, 7
	andi	$t7, $t7, 255
	bstrpick.d	$t7, $t7, 15, 0
	vpickve2gr.b	$t8, $vr0, 6
	andi	$t8, $t8, 255
	bstrpick.d	$t8, $t8, 15, 0
	vpickve2gr.b	$fp, $vr0, 5
	andi	$fp, $fp, 255
	bstrpick.d	$fp, $fp, 15, 0
	vpickve2gr.b	$s0, $vr0, 4
	andi	$s0, $s0, 255
	bstrpick.d	$s0, $s0, 15, 0
	vpickve2gr.b	$s1, $vr0, 3
	andi	$s1, $s1, 255
	bstrpick.d	$s1, $s1, 15, 0
	vpickve2gr.b	$s2, $vr0, 2
	andi	$s2, $s2, 255
	bstrpick.d	$s2, $s2, 15, 0
	vpickve2gr.b	$s4, $vr0, 1
	andi	$s4, $s4, 255
	bstrpick.d	$s4, $s4, 15, 0
	vpickve2gr.b	$s5, $vr0, 0
	andi	$s5, $s5, 255
	bstrpick.d	$s5, $s5, 15, 0
	ldx.b	$s5, $a2, $s5
	ldx.b	$s4, $a2, $s4
	ldx.b	$s2, $a2, $s2
	ldx.b	$s1, $a2, $s1
	ldx.b	$s0, $a2, $s0
	ldx.b	$fp, $a2, $fp
	ldx.b	$t8, $a2, $t8
	ldx.b	$t7, $a2, $t7
	ldx.b	$t6, $a2, $t6
	ldx.b	$t5, $a2, $t5
	ldx.b	$t4, $a2, $t4
	ldx.b	$t3, $a2, $t3
	ldx.b	$t2, $a2, $t2
	ldx.b	$t1, $a2, $t1
	ldx.b	$t0, $a2, $t0
	ldx.b	$a7, $a2, $a7
	vinsgr2vr.b	$vr0, $s5, 0
	vinsgr2vr.b	$vr0, $s4, 1
	vinsgr2vr.b	$vr0, $s2, 2
	vinsgr2vr.b	$vr0, $s1, 3
	vinsgr2vr.b	$vr0, $s0, 4
	vinsgr2vr.b	$vr0, $fp, 5
	vinsgr2vr.b	$vr0, $t8, 6
	vinsgr2vr.b	$vr0, $t7, 7
	vinsgr2vr.b	$vr0, $t6, 8
	vinsgr2vr.b	$vr0, $t5, 9
	vinsgr2vr.b	$vr0, $t4, 10
	vinsgr2vr.b	$vr0, $t3, 11
	vinsgr2vr.b	$vr0, $t2, 12
	vinsgr2vr.b	$vr0, $t1, 13
	vinsgr2vr.b	$vr0, $t0, 14
	vinsgr2vr.b	$vr0, $a7, 15
	vst	$vr0, $a3, 0
	addi.d	$a6, $a6, 16
	addi.d	$a3, $a3, 16
	bnez	$a6, .LBB3_43
# %bb.44:                               # %vec.epilog.middle.block106
                                        #   in Loop: Header=BB3_5 Depth=1
	move	$s1, $ra
	move	$s2, $a1
	ld.d	$s5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	addi.d	$t1, $sp, 240
	bne	$a5, $a0, .LBB3_57
	b	.LBB3_66
.LBB3_45:                               # %vector.ph
                                        #   in Loop: Header=BB3_5 Depth=1
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s4, 14, 5
	slli.d	$a0, $a0, 5
	addi.d	$ra, $sp, 240
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB3_46:                               # %vector.body
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	xvld	$xr0, $ra, 0
	xvpermi.q	$xr1, $xr0, 1
	vpickve2gr.b	$a0, $vr1, 15
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr1, 14
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr1, 13
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr1, 12
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr1, 11
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr1, 10
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr1, 9
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr1, 8
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr1, 7
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr1, 6
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr1, 5
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr1, 4
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr1, 3
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr1, 2
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr1, 1
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr1, 0
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 15
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 14
	andi	$a0, $a0, 255
	bstrpick.d	$a2, $a0, 15, 0
	vpickve2gr.b	$a0, $vr0, 13
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.b	$fp, $vr0, 12
	andi	$fp, $fp, 255
	bstrpick.d	$s1, $fp, 15, 0
	vpickve2gr.b	$fp, $vr0, 11
	andi	$fp, $fp, 255
	bstrpick.d	$s3, $fp, 15, 0
	vpickve2gr.b	$fp, $vr0, 10
	andi	$fp, $fp, 255
	bstrpick.d	$s2, $fp, 15, 0
	vpickve2gr.b	$fp, $vr0, 9
	andi	$fp, $fp, 255
	bstrpick.d	$fp, $fp, 15, 0
	vpickve2gr.b	$s4, $vr0, 8
	andi	$s4, $s4, 255
	bstrpick.d	$s4, $s4, 15, 0
	vpickve2gr.b	$a5, $vr0, 7
	andi	$a5, $a5, 255
	bstrpick.d	$a5, $a5, 15, 0
	vpickve2gr.b	$a6, $vr0, 6
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	vpickve2gr.b	$a7, $vr0, 5
	andi	$a7, $a7, 255
	bstrpick.d	$a7, $a7, 15, 0
	vpickve2gr.b	$t0, $vr0, 4
	andi	$t0, $t0, 255
	bstrpick.d	$t0, $t0, 15, 0
	vpickve2gr.b	$t1, $vr0, 3
	andi	$t1, $t1, 255
	bstrpick.d	$t1, $t1, 15, 0
	vpickve2gr.b	$t2, $vr0, 2
	andi	$t2, $t2, 255
	bstrpick.d	$t2, $t2, 15, 0
	vpickve2gr.b	$t3, $vr0, 1
	andi	$t3, $t3, 255
	bstrpick.d	$t3, $t3, 15, 0
	vpickve2gr.b	$t4, $vr0, 0
	andi	$t4, $t4, 255
	bstrpick.d	$t4, $t4, 15, 0
	addi.d	$a4, $s8, 526
	ldx.b	$t5, $a4, $t4
	ldx.b	$t6, $a4, $t3
	ldx.b	$t7, $a4, $t2
	ldx.b	$t8, $a4, $t1
	ldx.b	$s0, $a4, $t0
	ldx.b	$s5, $a4, $a7
	ldx.b	$a3, $a4, $a6
	ldx.b	$s6, $a4, $a5
	ldx.b	$a1, $a4, $s4
	ldx.b	$fp, $a4, $fp
	ldx.b	$s2, $a4, $s2
	ldx.b	$s4, $a4, $s3
	ldx.b	$s1, $a4, $s1
	ldx.b	$a0, $a4, $a0
	ldx.b	$a2, $a4, $a2
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	ldx.b	$a5, $a4, $a5
	ld.d	$a6, $sp, 64                    # 8-byte Folded Reload
	ldx.b	$a6, $a4, $a6
	ld.d	$a7, $sp, 72                    # 8-byte Folded Reload
	ldx.b	$a7, $a4, $a7
	ld.d	$t0, $sp, 80                    # 8-byte Folded Reload
	ldx.b	$t0, $a4, $t0
	ld.d	$t1, $sp, 88                    # 8-byte Folded Reload
	ldx.b	$t1, $a4, $t1
	ld.d	$t2, $sp, 96                    # 8-byte Folded Reload
	ldx.b	$t2, $a4, $t2
	ld.d	$t3, $sp, 104                   # 8-byte Folded Reload
	ldx.b	$t3, $a4, $t3
	ld.d	$t4, $sp, 112                   # 8-byte Folded Reload
	ldx.b	$t4, $a4, $t4
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	ldx.b	$s3, $a4, $s3
	st.d	$s3, $sp, 120                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 136                   # 8-byte Folded Reload
	ldx.b	$s3, $a4, $s3
	st.d	$s3, $sp, 136                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 144                   # 8-byte Folded Reload
	ldx.b	$s3, $a4, $s3
	st.d	$s3, $sp, 144                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 152                   # 8-byte Folded Reload
	ldx.b	$s3, $a4, $s3
	st.d	$s3, $sp, 152                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ldx.b	$s3, $a4, $s3
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	ldx.b	$s3, $a4, $s3
	st.d	$s3, $sp, 168                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ldx.b	$s3, $a4, $s3
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 184                   # 8-byte Folded Reload
	ldx.b	$s3, $a4, $s3
	st.d	$s3, $sp, 184                   # 8-byte Folded Spill
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ldx.b	$a4, $a4, $s3
	vinsgr2vr.b	$vr0, $t5, 0
	vinsgr2vr.b	$vr0, $t6, 1
	vinsgr2vr.b	$vr0, $t7, 2
	vinsgr2vr.b	$vr0, $t8, 3
	vinsgr2vr.b	$vr0, $s0, 4
	vinsgr2vr.b	$vr0, $s5, 5
	vinsgr2vr.b	$vr0, $a3, 6
	vinsgr2vr.b	$vr0, $s6, 7
	vinsgr2vr.b	$vr0, $a1, 8
	vinsgr2vr.b	$vr0, $fp, 9
	vinsgr2vr.b	$vr0, $s2, 10
	vinsgr2vr.b	$vr0, $s4, 11
	vinsgr2vr.b	$vr0, $s1, 12
	vinsgr2vr.b	$vr0, $a0, 13
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	vinsgr2vr.b	$vr0, $a2, 14
	vinsgr2vr.b	$vr0, $a5, 15
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a6, 0
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a7, 1
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $t0, 2
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $t1, 3
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $t2, 4
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $t3, 5
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $t4, 6
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	vinsgr2vr.b	$vr1, $a1, 7
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	vinsgr2vr.b	$vr1, $a1, 8
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	vinsgr2vr.b	$vr1, $a1, 9
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	vinsgr2vr.b	$vr1, $a1, 10
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	vinsgr2vr.b	$vr1, $a1, 11
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	vinsgr2vr.b	$vr1, $a1, 12
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	vinsgr2vr.b	$vr1, $a1, 13
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	vinsgr2vr.b	$vr1, $a1, 14
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a4, 15
	xvpermi.q	$xr0, $xr1, 2
	xvst	$xr0, $ra, 0
	addi.d	$a0, $a0, -32
	addi.d	$ra, $ra, 32
	bnez	$a0, .LBB3_46
# %bb.47:                               # %middle.block
                                        #   in Loop: Header=BB3_5 Depth=1
	ori	$s3, $zero, 1
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	addi.d	$s6, $sp, 240
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	beq	$a2, $s4, .LBB3_66
# %bb.48:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB3_5 Depth=1
	andi	$a0, $s4, 16
	bnez	$a0, .LBB3_34
# %bb.49:                               #   in Loop: Header=BB3_5 Depth=1
	addi.d	$a0, $sp, 240
	add.d	$a3, $a0, $a2
.LBB3_50:                               # %.lr.ph.i68.i.preheader
                                        #   in Loop: Header=BB3_5 Depth=1
	add.d	$a0, $s6, $s4
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a3, -1
	.p2align	4, , 16
.LBB3_51:                               # %.lr.ph.i68.i
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $a1, 1
	add.d	$a2, $s8, $a2
	ld.b	$a2, $a2, 526
	addi.d	$a3, $a1, 1
	st.b	$a2, $a1, 1
	move	$a1, $a3
	bne	$a3, $a0, .LBB3_51
	b	.LBB3_66
.LBB3_52:                               # %vector.ph83
                                        #   in Loop: Header=BB3_5 Depth=1
	bstrpick.d	$a3, $a0, 14, 5
	slli.d	$a3, $a3, 5
	move	$a5, $a3
	.p2align	4, , 16
.LBB3_53:                               # %vector.body86
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr1, $a4, 0
	vpickve2gr.b	$a6, $vr1, 0
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	ldx.b	$a7, $a2, $a6
	vpickve2gr.b	$a6, $vr1, 9
	vpickve2gr.b	$t0, $vr1, 2
	vinsgr2vr.b	$vr0, $a7, 0
	vpickve2gr.b	$a7, $vr1, 1
	andi	$a7, $a7, 255
	bstrpick.d	$a7, $a7, 15, 0
	ldx.b	$a7, $a2, $a7
	andi	$t0, $t0, 255
	bstrpick.d	$t0, $t0, 15, 0
	ldx.b	$t0, $a2, $t0
	vinsgr2vr.b	$vr0, $a7, 1
	vpickve2gr.b	$a7, $vr1, 4
	andi	$a7, $a7, 255
	vinsgr2vr.b	$vr0, $t0, 2
	vpickve2gr.b	$t0, $vr1, 3
	andi	$t0, $t0, 255
	bstrpick.d	$t0, $t0, 15, 0
	ldx.b	$t0, $a2, $t0
	bstrpick.d	$a7, $a7, 15, 0
	ldx.b	$a7, $a2, $a7
	andi	$a6, $a6, 255
	vinsgr2vr.b	$vr0, $t0, 3
	vpickve2gr.b	$t0, $vr1, 6
	vinsgr2vr.b	$vr0, $a7, 4
	vpickve2gr.b	$a7, $vr1, 5
	andi	$a7, $a7, 255
	bstrpick.d	$a7, $a7, 15, 0
	ldx.b	$a7, $a2, $a7
	andi	$t0, $t0, 255
	bstrpick.d	$t0, $t0, 15, 0
	ldx.b	$t0, $a2, $t0
	vinsgr2vr.b	$vr0, $a7, 5
	vpickve2gr.b	$a7, $vr1, 8
	andi	$a7, $a7, 255
	bstrpick.d	$a7, $a7, 15, 0
	vinsgr2vr.b	$vr0, $t0, 6
	vpickve2gr.b	$t0, $vr1, 7
	andi	$t0, $t0, 255
	bstrpick.d	$t0, $t0, 15, 0
	ldx.b	$t0, $a2, $t0
	ldx.b	$a7, $a2, $a7
	bstrpick.d	$a6, $a6, 15, 0
	ldx.b	$a6, $a2, $a6
	vinsgr2vr.b	$vr0, $t0, 7
	vinsgr2vr.b	$vr0, $a7, 8
	vpickve2gr.b	$a7, $vr1, 11
	vinsgr2vr.b	$vr0, $a6, 9
	vpickve2gr.b	$a6, $vr1, 10
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	ldx.b	$a6, $a2, $a6
	andi	$a7, $a7, 255
	bstrpick.d	$a7, $a7, 15, 0
	ldx.b	$a7, $a2, $a7
	vinsgr2vr.b	$vr0, $a6, 10
	vpickve2gr.b	$a6, $vr1, 13
	andi	$a6, $a6, 255
	vinsgr2vr.b	$vr0, $a7, 11
	vpickve2gr.b	$a7, $vr1, 12
	andi	$a7, $a7, 255
	bstrpick.d	$a7, $a7, 15, 0
	ldx.b	$a7, $a2, $a7
	bstrpick.d	$a6, $a6, 15, 0
	ldx.b	$a6, $a2, $a6
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr0, $a7, 12
	vpickve2gr.b	$a7, $vr1, 15
	vinsgr2vr.b	$vr0, $a6, 13
	vpickve2gr.b	$a6, $vr1, 14
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	ldx.b	$a6, $a2, $a6
	andi	$a7, $a7, 255
	bstrpick.d	$a7, $a7, 15, 0
	ldx.b	$a7, $a2, $a7
	vinsgr2vr.b	$vr0, $a6, 14
	vpickve2gr.b	$a6, $vr2, 1
	andi	$a6, $a6, 255
	vinsgr2vr.b	$vr0, $a7, 15
	vpickve2gr.b	$a7, $vr2, 0
	andi	$a7, $a7, 255
	bstrpick.d	$a7, $a7, 15, 0
	ldx.b	$a7, $a2, $a7
	bstrpick.d	$a6, $a6, 15, 0
	ldx.b	$a6, $a2, $a6
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a7, 0
	vpickve2gr.b	$a7, $vr2, 5
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a6, 1
	vpickve2gr.b	$a6, $vr2, 2
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	ldx.b	$a6, $a2, $a6
	andi	$a7, $a7, 255
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a6, 2
	vpickve2gr.b	$a6, $vr2, 3
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	ldx.b	$a6, $a2, $a6
	bstrpick.d	$a7, $a7, 15, 0
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a6, 3
	vpickve2gr.b	$a6, $vr2, 4
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	ldx.b	$a6, $a2, $a6
	ldx.b	$a7, $a2, $a7
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a6, 4
	vpickve2gr.b	$a6, $vr2, 9
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a7, 5
	vpickve2gr.b	$a7, $vr2, 6
	andi	$a7, $a7, 255
	bstrpick.d	$a7, $a7, 15, 0
	ldx.b	$a7, $a2, $a7
	andi	$a6, $a6, 255
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a7, 6
	vpickve2gr.b	$a7, $vr2, 7
	andi	$a7, $a7, 255
	bstrpick.d	$a7, $a7, 15, 0
	ldx.b	$a7, $a2, $a7
	bstrpick.d	$a6, $a6, 15, 0
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a7, 7
	vpickve2gr.b	$a7, $vr2, 8
	andi	$a7, $a7, 255
	bstrpick.d	$a7, $a7, 15, 0
	ldx.b	$a7, $a2, $a7
	ldx.b	$a6, $a2, $a6
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a7, 8
	vpickve2gr.b	$a7, $vr2, 13
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a6, 9
	vpickve2gr.b	$a6, $vr2, 10
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	ldx.b	$a6, $a2, $a6
	andi	$a7, $a7, 255
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a6, 10
	vpickve2gr.b	$a6, $vr2, 11
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	ldx.b	$a6, $a2, $a6
	bstrpick.d	$a7, $a7, 15, 0
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a6, 11
	vpickve2gr.b	$a6, $vr2, 12
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	ldx.b	$a6, $a2, $a6
	ldx.b	$a7, $a2, $a7
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a6, 12
	vpickve2gr.b	$a6, $vr2, 15
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a7, 13
	vpickve2gr.b	$a7, $vr2, 14
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	andi	$a7, $a7, 255
	bstrpick.d	$a7, $a7, 15, 0
	ldx.b	$a7, $a2, $a7
	ldx.b	$a6, $a2, $a6
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a7, 14
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a6, 15
	xvpermi.q	$xr0, $xr1, 2
	xvst	$xr0, $a4, 0
	addi.d	$a5, $a5, -32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB3_53
# %bb.54:                               # %middle.block91
                                        #   in Loop: Header=BB3_5 Depth=1
	beq	$a3, $a0, .LBB3_66
# %bb.55:                               # %vec.epilog.iter.check96
                                        #   in Loop: Header=BB3_5 Depth=1
	andi	$a4, $a0, 16
	bnez	$a4, .LBB3_72
# %bb.56:                               #   in Loop: Header=BB3_5 Depth=1
	addi.d	$a1, $sp, 240
	add.d	$a4, $a1, $a3
.LBB3_57:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB3_5 Depth=1
	add.d	$a0, $t1, $a0
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a4, -1
	.p2align	4, , 16
.LBB3_58:                               # %.lr.ph.i.i
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $a1, 1
	add.d	$a2, $s8, $a2
	ld.b	$a2, $a2, 526
	addi.d	$a3, $a1, 1
	st.b	$a2, $a1, 1
	move	$a1, $a3
	bne	$a3, $a0, .LBB3_58
	b	.LBB3_66
.LBB3_59:                               # %vector.ph51
                                        #   in Loop: Header=BB3_5 Depth=1
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s4, 32, 5
	slli.d	$a0, $a0, 5
	addi.d	$ra, $sp, 241
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB3_60:                               # %vector.body54
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	xvld	$xr0, $ra, 0
	xvpermi.q	$xr1, $xr0, 1
	vpickve2gr.b	$a0, $vr1, 15
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr1, 14
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr1, 13
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr1, 12
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr1, 11
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr1, 10
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr1, 9
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr1, 8
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr1, 7
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr1, 6
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr1, 5
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr1, 4
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr1, 3
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr1, 2
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr1, 1
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr1, 0
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 15
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	vpickve2gr.b	$a0, $vr0, 14
	andi	$a0, $a0, 255
	bstrpick.d	$a1, $a0, 15, 0
	vpickve2gr.b	$a0, $vr0, 13
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	vpickve2gr.b	$fp, $vr0, 12
	andi	$fp, $fp, 255
	bstrpick.d	$s1, $fp, 15, 0
	vpickve2gr.b	$fp, $vr0, 11
	andi	$fp, $fp, 255
	bstrpick.d	$s4, $fp, 15, 0
	vpickve2gr.b	$fp, $vr0, 10
	andi	$fp, $fp, 255
	bstrpick.d	$s2, $fp, 15, 0
	vpickve2gr.b	$fp, $vr0, 9
	andi	$fp, $fp, 255
	bstrpick.d	$fp, $fp, 15, 0
	vpickve2gr.b	$a4, $vr0, 8
	andi	$a4, $a4, 255
	bstrpick.d	$a4, $a4, 15, 0
	vpickve2gr.b	$a5, $vr0, 7
	andi	$a5, $a5, 255
	bstrpick.d	$a5, $a5, 15, 0
	vpickve2gr.b	$a6, $vr0, 6
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	vpickve2gr.b	$a7, $vr0, 5
	andi	$a7, $a7, 255
	bstrpick.d	$a7, $a7, 15, 0
	vpickve2gr.b	$t0, $vr0, 4
	andi	$t0, $t0, 255
	bstrpick.d	$t0, $t0, 15, 0
	vpickve2gr.b	$t1, $vr0, 3
	andi	$t1, $t1, 255
	bstrpick.d	$t1, $t1, 15, 0
	vpickve2gr.b	$t2, $vr0, 2
	andi	$t2, $t2, 255
	bstrpick.d	$t2, $t2, 15, 0
	vpickve2gr.b	$t3, $vr0, 1
	andi	$t3, $t3, 255
	bstrpick.d	$t3, $t3, 15, 0
	vpickve2gr.b	$t4, $vr0, 0
	andi	$t4, $t4, 255
	bstrpick.d	$t4, $t4, 15, 0
	addi.d	$s3, $s8, 526
	ldx.b	$a3, $s3, $t4
	ldx.b	$t5, $s3, $t3
	ldx.b	$t6, $s3, $t2
	ldx.b	$t7, $s3, $t1
	ldx.b	$t8, $s3, $t0
	ldx.b	$s0, $s3, $a7
	ldx.b	$a2, $s3, $a6
	ldx.b	$s5, $s3, $a5
	ldx.b	$s6, $s3, $a4
	ldx.b	$fp, $s3, $fp
	ldx.b	$s2, $s3, $s2
	ldx.b	$s4, $s3, $s4
	ldx.b	$s1, $s3, $s1
	ldx.b	$a0, $s3, $a0
	ldx.b	$a1, $s3, $a1
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ldx.b	$a4, $s3, $a4
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	ldx.b	$a5, $s3, $a5
	ld.d	$a6, $sp, 72                    # 8-byte Folded Reload
	ldx.b	$a6, $s3, $a6
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	ldx.b	$a7, $s3, $a7
	ld.d	$t0, $sp, 88                    # 8-byte Folded Reload
	ldx.b	$t0, $s3, $t0
	ld.d	$t1, $sp, 96                    # 8-byte Folded Reload
	ldx.b	$t1, $s3, $t1
	ld.d	$t2, $sp, 104                   # 8-byte Folded Reload
	ldx.b	$t2, $s3, $t2
	ld.d	$t3, $sp, 112                   # 8-byte Folded Reload
	ldx.b	$t3, $s3, $t3
	ld.d	$t4, $sp, 120                   # 8-byte Folded Reload
	ldx.b	$t4, $s3, $t4
	st.d	$t4, $sp, 120                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 136                   # 8-byte Folded Reload
	ldx.b	$t4, $s3, $t4
	st.d	$t4, $sp, 136                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 144                   # 8-byte Folded Reload
	ldx.b	$t4, $s3, $t4
	st.d	$t4, $sp, 144                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 152                   # 8-byte Folded Reload
	ldx.b	$t4, $s3, $t4
	st.d	$t4, $sp, 152                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 160                   # 8-byte Folded Reload
	ldx.b	$t4, $s3, $t4
	st.d	$t4, $sp, 160                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 168                   # 8-byte Folded Reload
	ldx.b	$t4, $s3, $t4
	st.d	$t4, $sp, 168                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 176                   # 8-byte Folded Reload
	ldx.b	$t4, $s3, $t4
	st.d	$t4, $sp, 176                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 184                   # 8-byte Folded Reload
	ldx.b	$t4, $s3, $t4
	st.d	$t4, $sp, 184                   # 8-byte Folded Spill
	ld.d	$t4, $sp, 128                   # 8-byte Folded Reload
	ldx.b	$s3, $s3, $t4
	vinsgr2vr.b	$vr0, $a3, 0
	vinsgr2vr.b	$vr0, $t5, 1
	vinsgr2vr.b	$vr0, $t6, 2
	vinsgr2vr.b	$vr0, $t7, 3
	vinsgr2vr.b	$vr0, $t8, 4
	vinsgr2vr.b	$vr0, $s0, 5
	vinsgr2vr.b	$vr0, $a2, 6
	vinsgr2vr.b	$vr0, $s5, 7
	vinsgr2vr.b	$vr0, $s6, 8
	vinsgr2vr.b	$vr0, $fp, 9
	vinsgr2vr.b	$vr0, $s2, 10
	vinsgr2vr.b	$vr0, $s4, 11
	vinsgr2vr.b	$vr0, $s1, 12
	vinsgr2vr.b	$vr0, $a0, 13
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	vinsgr2vr.b	$vr0, $a1, 14
	vinsgr2vr.b	$vr0, $a4, 15
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a5, 0
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a6, 1
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a7, 2
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $t0, 3
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $t1, 4
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $t2, 5
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $t3, 6
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	vinsgr2vr.b	$vr1, $a1, 7
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	vinsgr2vr.b	$vr1, $a1, 8
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	vinsgr2vr.b	$vr1, $a1, 9
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	vinsgr2vr.b	$vr1, $a1, 10
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	vinsgr2vr.b	$vr1, $a1, 11
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	vinsgr2vr.b	$vr1, $a1, 12
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	vinsgr2vr.b	$vr1, $a1, 13
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	vinsgr2vr.b	$vr1, $a1, 14
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $s3, 15
	xvpermi.q	$xr0, $xr1, 2
	xvst	$xr0, $ra, 0
	addi.d	$a0, $a0, -32
	addi.d	$ra, $ra, 32
	bnez	$a0, .LBB3_60
# %bb.61:                               # %middle.block59
                                        #   in Loop: Header=BB3_5 Depth=1
	ori	$s3, $zero, 1
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 16                    # 8-byte Folded Reload
	beq	$s4, $a5, .LBB3_66
# %bb.62:                               # %vec.epilog.iter.check64
                                        #   in Loop: Header=BB3_5 Depth=1
	andi	$a0, $s4, 16
	bnez	$a0, .LBB3_25
# %bb.63:                               #   in Loop: Header=BB3_5 Depth=1
	addi.d	$a0, $sp, 241
	add.d	$a2, $a0, $a5
.LBB3_64:                               # %.lr.ph.i64.i.preheader
                                        #   in Loop: Header=BB3_5 Depth=1
	addi.d	$a0, $sp, 240
	add.d	$a0, $s4, $a0
	addi.d	$a1, $a2, -1
	.p2align	4, , 16
.LBB3_65:                               # %.lr.ph.i64.i
                                        #   Parent Loop BB3_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a2, $a1, 1
	add.d	$a2, $s8, $a2
	ld.b	$a2, $a2, 526
	addi.d	$a3, $a1, 1
	st.b	$a2, $a1, 1
	move	$a1, $a3
	bne	$a3, $a0, .LBB3_65
.LBB3_66:                               # %forcelc.exit.i
                                        #   in Loop: Header=BB3_5 Depth=1
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ori	$a0, $zero, 4
	ld.d	$s6, $sp, 224                   # 8-byte Folded Reload
	beq	$s1, $a0, .LBB3_70
# %bb.67:                               # %forcelc.exit.i
                                        #   in Loop: Header=BB3_5 Depth=1
	ori	$a0, $zero, 3
	bne	$s1, $a0, .LBB3_69
# %bb.68:                               #   in Loop: Header=BB3_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB3_69:                               #   in Loop: Header=BB3_5 Depth=1
	addi.d	$a0, $sp, 240
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(ichartosstr)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ld.d	$a2, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB3_70:                               #   in Loop: Header=BB3_5 Depth=1
	ld.hu	$a0, $s7, 24
	andi	$a0, $a0, 1
	beqz	$a0, .LBB3_3
# %bb.71:                               #   in Loop: Header=BB3_5 Depth=1
	addi.d	$a1, $sp, 240
	ori	$a3, $zero, 1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	move	$a2, $s2
	move	$a4, $s1
	ld.d	$a5, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(expand_suf)
	jirl	$ra, $ra, 0
	add.d	$fp, $a0, $fp
	b	.LBB3_3
.LBB3_72:                               #   in Loop: Header=BB3_5 Depth=1
	move	$a1, $s2
	move	$ra, $s1
	b	.LBB3_42
.LBB3_73:
	move	$s4, $zero
.LBB3_74:                               # %._crit_edge
	move	$a0, $s4
	ld.d	$s8, $sp, 360                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 368                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 376                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 392                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 400                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 408                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 416                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 424                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 432                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 440                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 448
	ret
.Lfunc_end3:
	.size	expand_pre, .Lfunc_end3-expand_pre
                                        # -- End function
	.globl	expand_suf                      # -- Begin function expand_suf
	.p2align	5
	.type	expand_suf,@function
expand_suf:                             # @expand_suf
# %bb.0:
	addi.d	$sp, $sp, -288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
	pcalau12i	$a6, %got_pc_hi20(numsflags)
	ld.d	$a6, $a6, %got_pc_lo12(numsflags)
	ld.w	$a6, $a6, 0
	ori	$s6, $zero, 1
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	blt	$a6, $s6, .LBB4_38
# %bb.1:                                # %.lr.ph
	move	$s1, $a2
	move	$s2, $a1
	pcalau12i	$a0, %got_pc_hi20(sflaglist)
	ld.d	$a0, $a0, %got_pc_lo12(sflaglist)
	move	$s4, $zero
	ld.d	$s7, $a0, 0
	andi	$s0, $a3, 1
	pcalau12i	$a0, %got_pc_hi20(hashheader)
	ld.d	$s3, $a0, %got_pc_lo12(hashheader)
	st.d	$a4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	b	.LBB4_5
	.p2align	4, , 16
.LBB4_2:                                #   in Loop: Header=BB4_5 Depth=1
	move	$a0, $zero
.LBB4_3:                                # %pr_suf_expansion.exit
                                        #   in Loop: Header=BB4_5 Depth=1
	add.w	$s4, $a0, $s4
.LBB4_4:                                #   in Loop: Header=BB4_5 Depth=1
	addi.d	$s7, $s7, 256
	addi.w	$a6, $fp, -1
	bge	$s6, $fp, .LBB4_39
.LBB4_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_11 Depth 2
                                        #     Child Loop BB4_26 Depth 2
                                        #     Child Loop BB4_23 Depth 2
                                        #     Child Loop BB4_31 Depth 2
	ld.d	$a0, $s1, 0
	ld.h	$a1, $s7, 16
	srl.d	$a0, $a0, $a1
	andi	$a0, $a0, 1
	move	$fp, $a6
	beqz	$a0, .LBB4_4
# %bb.6:                                #   in Loop: Header=BB4_5 Depth=1
	beqz	$s0, .LBB4_8
# %bb.7:                                #   in Loop: Header=BB4_5 Depth=1
	ld.hu	$a0, $s7, 24
	andi	$a0, $a0, 1
	beqz	$a0, .LBB4_4
.LBB4_8:                                #   in Loop: Header=BB4_5 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	ld.h	$a1, $s7, 22
	addi.w	$s8, $a0, 0
	blt	$s8, $a1, .LBB4_2
# %bb.9:                                #   in Loop: Header=BB4_5 Depth=1
	ld.h	$s0, $s7, 18
	bge	$s0, $s8, .LBB4_13
# %bb.10:                               #   in Loop: Header=BB4_5 Depth=1
	addi.d	$a2, $s7, 26
	addi.d	$a3, $s8, -1
	.p2align	4, , 16
.LBB4_11:                               #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blt	$a1, $s6, .LBB4_14
# %bb.12:                               #   in Loop: Header=BB4_11 Depth=2
	ldx.bu	$a4, $s2, $a3
	add.d	$a4, $s3, $a4
	ld.bu	$a4, $a4, 754
	ldx.b	$a4, $a2, $a4
	addi.w	$a1, $a1, -1
	srl.w	$a4, $a4, $a1
	andi	$a4, $a4, 1
	addi.d	$a3, $a3, -1
	bnez	$a4, .LBB4_11
.LBB4_13:                               #   in Loop: Header=BB4_5 Depth=1
	move	$a0, $zero
	b	.LBB4_37
.LBB4_14:                               #   in Loop: Header=BB4_5 Depth=1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a0, $sp, 80
	move	$a1, $s2
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.hu	$t0, $s7, 20
	addi.d	$a0, $sp, 80
	add.d	$a0, $a0, $s8
	sub.d	$s5, $a0, $s0
	beqz	$t0, .LBB4_19
# %bb.15:                               #   in Loop: Header=BB4_5 Depth=1
	ld.d	$a1, $s7, 8
	move	$a0, $s5
	st.d	$t0, $sp, 40                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$t0, $sp, 40                    # 8-byte Folded Reload
	ext.w.h	$a1, $t0
	ld.d	$t1, $sp, 64                    # 8-byte Folded Reload
	blt	$a1, $s6, .LBB4_32
# %bb.16:                               #   in Loop: Header=BB4_5 Depth=1
	ld.bu	$a1, $s5, -1
	add.d	$a1, $s3, $a1
	ld.bu	$a1, $a1, 1210
	bnez	$a1, .LBB4_32
# %bb.17:                               # %iter.check
                                        #   in Loop: Header=BB4_5 Depth=1
	ori	$a0, $zero, 16
	bgeu	$t0, $a0, .LBB4_20
# %bb.18:                               #   in Loop: Header=BB4_5 Depth=1
	move	$a0, $t0
	b	.LBB4_30
.LBB4_19:                               #   in Loop: Header=BB4_5 Depth=1
	st.b	$zero, $s5, 0
	ld.d	$t1, $sp, 64                    # 8-byte Folded Reload
	b	.LBB4_32
.LBB4_20:                               # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB4_5 Depth=1
	addi.d	$a1, $s3, 526
	ori	$a0, $zero, 32
	bgeu	$t0, $a0, .LBB4_25
# %bb.21:                               #   in Loop: Header=BB4_5 Depth=1
	move	$a2, $zero
.LBB4_22:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB4_5 Depth=1
	bstrpick.d	$a5, $t0, 14, 4
	slli.d	$a3, $a5, 4
	sub.d	$a0, $t0, $a3
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	alsl.d	$s5, $a5, $s5, 4
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	sub.d	$a5, $a2, $a3
	add.d	$a2, $a2, $s8
	sub.d	$a2, $a2, $s0
	addi.d	$a0, $sp, 80
	add.d	$a2, $a0, $a2
	.p2align	4, , 16
.LBB4_23:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a2, 0
	vpickve2gr.b	$a6, $vr0, 15
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	vpickve2gr.b	$a7, $vr0, 14
	andi	$a7, $a7, 255
	bstrpick.d	$a7, $a7, 15, 0
	vpickve2gr.b	$t0, $vr0, 13
	andi	$t0, $t0, 255
	bstrpick.d	$t0, $t0, 15, 0
	vpickve2gr.b	$t1, $vr0, 12
	andi	$t1, $t1, 255
	bstrpick.d	$t1, $t1, 15, 0
	vpickve2gr.b	$t2, $vr0, 11
	andi	$t2, $t2, 255
	bstrpick.d	$t2, $t2, 15, 0
	vpickve2gr.b	$t3, $vr0, 10
	andi	$t3, $t3, 255
	bstrpick.d	$t3, $t3, 15, 0
	vpickve2gr.b	$t4, $vr0, 9
	andi	$t4, $t4, 255
	bstrpick.d	$t4, $t4, 15, 0
	vpickve2gr.b	$t5, $vr0, 8
	andi	$t5, $t5, 255
	bstrpick.d	$t5, $t5, 15, 0
	vpickve2gr.b	$t6, $vr0, 7
	andi	$t6, $t6, 255
	bstrpick.d	$t6, $t6, 15, 0
	vpickve2gr.b	$t7, $vr0, 6
	andi	$t7, $t7, 255
	bstrpick.d	$t7, $t7, 15, 0
	vpickve2gr.b	$t8, $vr0, 5
	andi	$t8, $t8, 255
	bstrpick.d	$t8, $t8, 15, 0
	vpickve2gr.b	$s8, $vr0, 4
	andi	$s8, $s8, 255
	bstrpick.d	$s8, $s8, 15, 0
	vpickve2gr.b	$ra, $vr0, 3
	andi	$ra, $ra, 255
	bstrpick.d	$ra, $ra, 15, 0
	vpickve2gr.b	$a4, $vr0, 2
	andi	$a4, $a4, 255
	bstrpick.d	$a4, $a4, 15, 0
	vpickve2gr.b	$a3, $vr0, 1
	andi	$a3, $a3, 255
	bstrpick.d	$a3, $a3, 15, 0
	vpickve2gr.b	$a0, $vr0, 0
	andi	$a0, $a0, 255
	bstrpick.d	$a0, $a0, 15, 0
	ldx.b	$a0, $a1, $a0
	ldx.b	$a3, $a1, $a3
	ldx.b	$a4, $a1, $a4
	ldx.b	$ra, $a1, $ra
	ldx.b	$s8, $a1, $s8
	ldx.b	$t8, $a1, $t8
	ldx.b	$t7, $a1, $t7
	ldx.b	$t6, $a1, $t6
	ldx.b	$t5, $a1, $t5
	ldx.b	$t4, $a1, $t4
	ldx.b	$t3, $a1, $t3
	ldx.b	$t2, $a1, $t2
	ldx.b	$t1, $a1, $t1
	ldx.b	$t0, $a1, $t0
	ldx.b	$a7, $a1, $a7
	ldx.b	$a6, $a1, $a6
	vinsgr2vr.b	$vr0, $a0, 0
	vinsgr2vr.b	$vr0, $a3, 1
	vinsgr2vr.b	$vr0, $a4, 2
	vinsgr2vr.b	$vr0, $ra, 3
	vinsgr2vr.b	$vr0, $s8, 4
	vinsgr2vr.b	$vr0, $t8, 5
	vinsgr2vr.b	$vr0, $t7, 6
	vinsgr2vr.b	$vr0, $t6, 7
	vinsgr2vr.b	$vr0, $t5, 8
	vinsgr2vr.b	$vr0, $t4, 9
	vinsgr2vr.b	$vr0, $t3, 10
	vinsgr2vr.b	$vr0, $t2, 11
	vinsgr2vr.b	$vr0, $t1, 12
	vinsgr2vr.b	$vr0, $t0, 13
	vinsgr2vr.b	$vr0, $a7, 14
	vinsgr2vr.b	$vr0, $a6, 15
	vst	$vr0, $a2, 0
	addi.d	$a5, $a5, 16
	addi.d	$a2, $a2, 16
	bnez	$a5, .LBB4_23
# %bb.24:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB4_5 Depth=1
	ld.d	$t0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	bne	$a1, $t0, .LBB4_30
	b	.LBB4_32
.LBB4_25:                               # %vector.ph
                                        #   in Loop: Header=BB4_5 Depth=1
	bstrpick.d	$a2, $t0, 14, 5
	slli.d	$a2, $a2, 5
	move	$a3, $s5
	move	$a4, $a2
	.p2align	4, , 16
.LBB4_26:                               # %vector.body
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr1, $a3, 0
	vpickve2gr.b	$a5, $vr1, 0
	andi	$a5, $a5, 255
	bstrpick.d	$a5, $a5, 15, 0
	ldx.b	$a6, $a1, $a5
	vpickve2gr.b	$a5, $vr1, 9
	vpickve2gr.b	$a7, $vr1, 2
	vinsgr2vr.b	$vr0, $a6, 0
	vpickve2gr.b	$a6, $vr1, 1
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	ldx.b	$a6, $a1, $a6
	andi	$a7, $a7, 255
	bstrpick.d	$a7, $a7, 15, 0
	ldx.b	$a7, $a1, $a7
	vinsgr2vr.b	$vr0, $a6, 1
	vpickve2gr.b	$a6, $vr1, 4
	andi	$a6, $a6, 255
	vinsgr2vr.b	$vr0, $a7, 2
	vpickve2gr.b	$a7, $vr1, 3
	andi	$a7, $a7, 255
	bstrpick.d	$a7, $a7, 15, 0
	ldx.b	$a7, $a1, $a7
	bstrpick.d	$a6, $a6, 15, 0
	ldx.b	$a6, $a1, $a6
	andi	$a5, $a5, 255
	vinsgr2vr.b	$vr0, $a7, 3
	vpickve2gr.b	$a7, $vr1, 6
	vinsgr2vr.b	$vr0, $a6, 4
	vpickve2gr.b	$a6, $vr1, 5
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	ldx.b	$a6, $a1, $a6
	andi	$a7, $a7, 255
	bstrpick.d	$a7, $a7, 15, 0
	ldx.b	$a7, $a1, $a7
	vinsgr2vr.b	$vr0, $a6, 5
	vpickve2gr.b	$a6, $vr1, 8
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	vinsgr2vr.b	$vr0, $a7, 6
	vpickve2gr.b	$a7, $vr1, 7
	andi	$a7, $a7, 255
	bstrpick.d	$a7, $a7, 15, 0
	ldx.b	$a7, $a1, $a7
	ldx.b	$a6, $a1, $a6
	bstrpick.d	$a5, $a5, 15, 0
	ldx.b	$a5, $a1, $a5
	vinsgr2vr.b	$vr0, $a7, 7
	vinsgr2vr.b	$vr0, $a6, 8
	vpickve2gr.b	$a6, $vr1, 11
	vinsgr2vr.b	$vr0, $a5, 9
	vpickve2gr.b	$a5, $vr1, 10
	andi	$a5, $a5, 255
	bstrpick.d	$a5, $a5, 15, 0
	ldx.b	$a5, $a1, $a5
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	ldx.b	$a6, $a1, $a6
	vinsgr2vr.b	$vr0, $a5, 10
	vpickve2gr.b	$a5, $vr1, 13
	andi	$a5, $a5, 255
	vinsgr2vr.b	$vr0, $a6, 11
	vpickve2gr.b	$a6, $vr1, 12
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	ldx.b	$a6, $a1, $a6
	bstrpick.d	$a5, $a5, 15, 0
	ldx.b	$a5, $a1, $a5
	xvpermi.q	$xr2, $xr1, 1
	vinsgr2vr.b	$vr0, $a6, 12
	vpickve2gr.b	$a6, $vr1, 15
	vinsgr2vr.b	$vr0, $a5, 13
	vpickve2gr.b	$a5, $vr1, 14
	andi	$a5, $a5, 255
	bstrpick.d	$a5, $a5, 15, 0
	ldx.b	$a5, $a1, $a5
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	ldx.b	$a6, $a1, $a6
	vinsgr2vr.b	$vr0, $a5, 14
	vpickve2gr.b	$a5, $vr2, 1
	andi	$a5, $a5, 255
	vinsgr2vr.b	$vr0, $a6, 15
	vpickve2gr.b	$a6, $vr2, 0
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	ldx.b	$a6, $a1, $a6
	bstrpick.d	$a5, $a5, 15, 0
	ldx.b	$a5, $a1, $a5
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a6, 0
	vpickve2gr.b	$a6, $vr2, 5
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a5, 1
	vpickve2gr.b	$a5, $vr2, 2
	andi	$a5, $a5, 255
	bstrpick.d	$a5, $a5, 15, 0
	ldx.b	$a5, $a1, $a5
	andi	$a6, $a6, 255
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a5, 2
	vpickve2gr.b	$a5, $vr2, 3
	andi	$a5, $a5, 255
	bstrpick.d	$a5, $a5, 15, 0
	ldx.b	$a5, $a1, $a5
	bstrpick.d	$a6, $a6, 15, 0
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a5, 3
	vpickve2gr.b	$a5, $vr2, 4
	andi	$a5, $a5, 255
	bstrpick.d	$a5, $a5, 15, 0
	ldx.b	$a5, $a1, $a5
	ldx.b	$a6, $a1, $a6
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a5, 4
	vpickve2gr.b	$a5, $vr2, 9
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a6, 5
	vpickve2gr.b	$a6, $vr2, 6
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	ldx.b	$a6, $a1, $a6
	andi	$a5, $a5, 255
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a6, 6
	vpickve2gr.b	$a6, $vr2, 7
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	ldx.b	$a6, $a1, $a6
	bstrpick.d	$a5, $a5, 15, 0
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a6, 7
	vpickve2gr.b	$a6, $vr2, 8
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	ldx.b	$a6, $a1, $a6
	ldx.b	$a5, $a1, $a5
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a6, 8
	vpickve2gr.b	$a6, $vr2, 13
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a5, 9
	vpickve2gr.b	$a5, $vr2, 10
	andi	$a5, $a5, 255
	bstrpick.d	$a5, $a5, 15, 0
	ldx.b	$a5, $a1, $a5
	andi	$a6, $a6, 255
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a5, 10
	vpickve2gr.b	$a5, $vr2, 11
	andi	$a5, $a5, 255
	bstrpick.d	$a5, $a5, 15, 0
	ldx.b	$a5, $a1, $a5
	bstrpick.d	$a6, $a6, 15, 0
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a5, 11
	vpickve2gr.b	$a5, $vr2, 12
	andi	$a5, $a5, 255
	bstrpick.d	$a5, $a5, 15, 0
	ldx.b	$a5, $a1, $a5
	ldx.b	$a6, $a1, $a6
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a5, 12
	vpickve2gr.b	$a5, $vr2, 15
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a6, 13
	vpickve2gr.b	$a6, $vr2, 14
	andi	$a5, $a5, 255
	bstrpick.d	$a5, $a5, 15, 0
	andi	$a6, $a6, 255
	bstrpick.d	$a6, $a6, 15, 0
	ldx.b	$a6, $a1, $a6
	ldx.b	$a5, $a1, $a5
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a6, 14
	xvpermi.q	$xr0, $xr1, 2
	xvpermi.d	$xr1, $xr0, 14
	vinsgr2vr.b	$vr1, $a5, 15
	xvpermi.q	$xr0, $xr1, 2
	xvst	$xr0, $a3, 0
	addi.d	$a4, $a4, -32
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB4_26
# %bb.27:                               # %middle.block
                                        #   in Loop: Header=BB4_5 Depth=1
	beq	$a2, $t0, .LBB4_32
# %bb.28:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB4_5 Depth=1
	andi	$a3, $t0, 16
	bnez	$a3, .LBB4_22
# %bb.29:                               #   in Loop: Header=BB4_5 Depth=1
	sub.d	$a0, $t0, $a2
	add.d	$s5, $s5, $a2
.LBB4_30:                               # %.lr.ph.i.i.preheader
                                        #   in Loop: Header=BB4_5 Depth=1
	addi.d	$a1, $a0, 1
	.p2align	4, , 16
.LBB4_31:                               # %.lr.ph.i.i
                                        #   Parent Loop BB4_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a0, $s5, 0
	add.d	$a0, $s3, $a0
	ld.b	$a0, $a0, 526
	st.b	$a0, $s5, 0
	addi.w	$a1, $a1, -1
	addi.d	$s5, $s5, 1
	bltu	$s6, $a1, .LBB4_31
.LBB4_32:                               # %forcelc.exit.i
                                        #   in Loop: Header=BB4_5 Depth=1
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	ori	$a0, $zero, 4
	beq	$s5, $a0, .LBB4_36
# %bb.33:                               # %forcelc.exit.i
                                        #   in Loop: Header=BB4_5 Depth=1
	ori	$a0, $zero, 3
	bne	$s5, $a0, .LBB4_35
# %bb.34:                               #   in Loop: Header=BB4_5 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB4_35:                               #   in Loop: Header=BB4_5 Depth=1
	addi.d	$a0, $sp, 80
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(ichartosstr)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	ld.hu	$t0, $s7, 20
	ld.h	$s0, $s7, 18
	ld.d	$t1, $sp, 64                    # 8-byte Folded Reload
.LBB4_36:                               #   in Loop: Header=BB4_5 Depth=1
	ext.w.h	$a0, $t0
	sub.d	$a1, $t1, $s0
	add.d	$a0, $a1, $a0
.LBB4_37:                               # %pr_suf_expansion.exit
                                        #   in Loop: Header=BB4_5 Depth=1
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	b	.LBB4_3
.LBB4_38:
	move	$s4, $zero
.LBB4_39:                               # %._crit_edge
	move	$a0, $s4
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	ret
.Lfunc_end4:
	.size	expand_suf, .Lfunc_end4-expand_suf
                                        # -- End function
	.p2align	5                               # -- Begin function suf_list_chk
	.type	suf_list_chk,@function
suf_list_chk:                           # @suf_list_chk
# %bb.0:
	addi.d	$sp, $sp, -576
	st.d	$ra, $sp, 568                   # 8-byte Folded Spill
	st.d	$fp, $sp, 560                   # 8-byte Folded Spill
	st.d	$s0, $sp, 552                   # 8-byte Folded Spill
	st.d	$s1, $sp, 544                   # 8-byte Folded Spill
	st.d	$s2, $sp, 536                   # 8-byte Folded Spill
	st.d	$s3, $sp, 528                   # 8-byte Folded Spill
	st.d	$s4, $sp, 520                   # 8-byte Folded Spill
	st.d	$s5, $sp, 512                   # 8-byte Folded Spill
	st.d	$s6, $sp, 504                   # 8-byte Folded Spill
	st.d	$s7, $sp, 496                   # 8-byte Folded Spill
	st.d	$s8, $sp, 488                   # 8-byte Folded Spill
	st.d	$a7, $sp, 72                    # 8-byte Folded Spill
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	move	$s0, $a5
	move	$s5, $a4
	move	$s2, $a3
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	addi.w	$fp, $a4, 0
	addi.d	$a0, $sp, 304
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ori	$s6, $zero, 1
	blt	$fp, $s6, .LBB5_51
# %bb.1:                                # %.lr.ph
	ld.d	$a0, $sp, 576
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	andi	$fp, $s0, 1
	andi	$s8, $s0, 2
	pcalau12i	$a0, %got_pc_hi20(compoundflag)
	ld.d	$a4, $a0, %got_pc_lo12(compoundflag)
	ori	$a5, $zero, 2
	pcalau12i	$a0, %got_pc_hi20(cflag)
	ld.d	$a0, $a0, %got_pc_lo12(cflag)
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	pcalau12i	$a0, %got_pc_hi20(numhits)
	ld.d	$a0, $a0, %got_pc_lo12(numhits)
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	b	.LBB5_6
.LBB5_2:                                #   in Loop: Header=BB5_6 Depth=1
	ld.h	$a0, $s2, 16
	addi.d	$a4, $a0, 65
	addi.w	$a1, $zero, -1
	addi.d	$a0, $sp, 304
	move	$a2, $zero
	move	$a3, $zero
.LBB5_3:                                # %.loopexit
                                        #   in Loop: Header=BB5_6 Depth=1
	move	$a5, $s7
	pcaddu18i	$ra, %call36(flagpr)
	jirl	$ra, $ra, 0
.LBB5_4:                                # %.loopexit
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	ori	$a5, $zero, 2
	.p2align	4, , 16
.LBB5_5:                                # %.loopexit
                                        #   in Loop: Header=BB5_6 Depth=1
	addi.w	$a0, $s5, 0
	addi.d	$s5, $s5, -1
	addi.d	$s2, $s2, 256
	bge	$s6, $a0, .LBB5_51
.LBB5_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_20 Depth 2
	ld.hu	$a0, $s2, 24
	beqz	$fp, .LBB5_8
# %bb.7:                                #   in Loop: Header=BB5_6 Depth=1
	andi	$a1, $a0, 1
	beqz	$a1, .LBB5_5
.LBB5_8:                                # %._crit_edge8
                                        #   in Loop: Header=BB5_6 Depth=1
	bnez	$s8, .LBB5_10
# %bb.9:                                # %._crit_edge8
                                        #   in Loop: Header=BB5_6 Depth=1
	andi	$a1, $a0, 2
	bnez	$a1, .LBB5_5
.LBB5_10:                               #   in Loop: Header=BB5_6 Depth=1
	ld.w	$a1, $a4, 0
	bne	$a1, $a5, .LBB5_12
# %bb.11:                               #   in Loop: Header=BB5_6 Depth=1
	xor	$a0, $s0, $a0
	andi	$a0, $a0, 2
	bnez	$a0, .LBB5_5
.LBB5_12:                               #   in Loop: Header=BB5_6 Depth=1
	ld.h	$s7, $s2, 20
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	sub.w	$s4, $a0, $s7
	blt	$s4, $s6, .LBB5_5
# %bb.13:                               #   in Loop: Header=BB5_6 Depth=1
	bstrpick.d	$a0, $s7, 15, 0
	bstrpick.d	$a0, $a0, 15, 0
	beqz	$a0, .LBB5_15
# %bb.14:                               #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a0, $s2, 8
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	add.d	$a1, $a1, $s4
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	ori	$a5, $zero, 2
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	bnez	$a0, .LBB5_5
.LBB5_15:                               #   in Loop: Header=BB5_6 Depth=1
	ld.h	$a0, $s2, 18
	ld.h	$s1, $s2, 22
	add.w	$s3, $s4, $a0
	blt	$s3, $s1, .LBB5_5
# %bb.16:                               #   in Loop: Header=BB5_6 Depth=1
	bstrpick.d	$s0, $a0, 15, 0
	addi.d	$a0, $sp, 304
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	bstrpick.d	$a1, $s0, 15, 0
	addi.d	$s0, $sp, 304
	add.d	$a0, $s0, $s4
	beqz	$a1, .LBB5_18
# %bb.17:                               #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a1, $s2, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	add.d	$a0, $s0, $s3
	b	.LBB5_19
.LBB5_18:                               #   in Loop: Header=BB5_6 Depth=1
	st.b	$zero, $a0, 0
	move	$s3, $s4
.LBB5_19:                               #   in Loop: Header=BB5_6 Depth=1
	addi.d	$a1, $s2, 26
	addi.d	$a0, $a0, -1
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	ori	$a5, $zero, 2
	.p2align	4, , 16
.LBB5_20:                               #   Parent Loop BB5_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blt	$s1, $s6, .LBB5_22
# %bb.21:                               #   in Loop: Header=BB5_20 Depth=2
	ld.bu	$a2, $a0, 0
	ldx.b	$a2, $a1, $a2
	addi.w	$s1, $s1, -1
	srl.w	$a2, $a2, $s1
	andi	$a2, $a2, 1
	addi.d	$a0, $a0, -1
	bnez	$a2, .LBB5_20
	b	.LBB5_5
.LBB5_22:                               #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	beqz	$a0, .LBB5_25
# %bb.23:                               #   in Loop: Header=BB5_6 Depth=1
	beqz	$fp, .LBB5_2
# %bb.24:                               #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.h	$a0, $a1, 16
	ld.h	$a2, $a1, 18
	ld.h	$a4, $s2, 16
	ld.h	$a3, $a1, 20
	addi.d	$a1, $a0, 65
	addi.d	$a4, $a4, 65
	addi.d	$a0, $sp, 304
	b	.LBB5_3
.LBB5_25:                               #   in Loop: Header=BB5_6 Depth=1
	addi.d	$a0, $sp, 304
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(lookup)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beqz	$a0, .LBB5_30
# %bb.26:                               #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	ori	$a5, $zero, 2
	beqz	$s4, .LBB5_5
# %bb.27:                               #   in Loop: Header=BB5_6 Depth=1
	beqz	$fp, .LBB5_39
# %bb.28:                               #   in Loop: Header=BB5_6 Depth=1
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	ld.h	$s1, $s0, 20
	beqz	$s1, .LBB5_40
# %bb.29:                               #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a1, $s0, 8
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	addi.d	$a1, $sp, 120
	add.d	$a0, $a1, $s1
	addi.d	$s7, $a0, 1
	ori	$a0, $zero, 43
	stx.b	$a0, $s1, $a1
	b	.LBB5_41
.LBB5_30:                               #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	ori	$a5, $zero, 2
	beqz	$s4, .LBB5_5
# %bb.31:                               #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a0, $s4, 16
	ld.h	$a1, $s2, 16
	srl.d	$a1, $a0, $a1
	andi	$a1, $a1, 1
	beqz	$a1, .LBB5_5
# %bb.32:                               #   in Loop: Header=BB5_6 Depth=1
	beqz	$fp, .LBB5_34
# %bb.33:                               #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.h	$a1, $a1, 16
	srl.d	$a0, $a0, $a1
	andi	$a0, $a0, 1
	beqz	$a0, .LBB5_5
.LBB5_34:                               #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 9
	blt	$a1, $a0, .LBB5_36
# %bb.35:                               #   in Loop: Header=BB5_6 Depth=1
	pcalau12i	$a1, %got_pc_hi20(hits)
	ld.d	$a1, $a1, %got_pc_lo12(hits)
	slli.d	$a2, $a0, 4
	alsl.d	$a2, $a0, $a2, 3
	add.d	$a3, $a1, $a2
	stx.d	$s4, $a1, $a2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a1, $a3, 8
	st.d	$s2, $a3, 16
	addi.d	$a0, $a0, 1
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.w	$a0, $a1, 0
.LBB5_36:                               #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bnez	$a0, .LBB5_5
# %bb.37:                               #   in Loop: Header=BB5_6 Depth=1
	pcalau12i	$a0, %got_pc_hi20(hits)
	ld.d	$a1, $a0, %got_pc_lo12(hits)
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(cap_ok)
	jirl	$ra, $ra, 0
	ori	$a5, $zero, 2
	ld.d	$a4, $sp, 104                   # 8-byte Folded Reload
	bnez	$a0, .LBB5_51
# %bb.38:                               #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.w	$zero, $a0, 0
	b	.LBB5_5
.LBB5_39:                               #   in Loop: Header=BB5_6 Depth=1
	addi.d	$s7, $sp, 120
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 304
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	add.d	$a3, $s7, $s3
	ld.d	$s0, $sp, 80                    # 8-byte Folded Reload
	b	.LBB5_43
.LBB5_40:                               #   in Loop: Header=BB5_6 Depth=1
	addi.d	$s7, $sp, 120
	addi.d	$a1, $sp, 120
.LBB5_41:                               #   in Loop: Header=BB5_6 Depth=1
	sub.w	$a0, $s7, $a1
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a1, $sp, 304
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.h	$s1, $s0, 18
	add.d	$a3, $s7, $s3
	beqz	$s1, .LBB5_43
# %bb.42:                               #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a1, $s0, 0
	addi.d	$a0, $a3, 1
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$a2, $zero, 45
	st.b	$a2, $a3, 0
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	add.d	$a3, $a0, $s1
.LBB5_43:                               #   in Loop: Header=BB5_6 Depth=1
	move	$s1, $s7
	ld.hu	$a1, $s2, 18
	beqz	$a1, .LBB5_45
# %bb.44:                               #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a1, $s2, 0
	addi.d	$s7, $a3, 1
	ori	$a2, $zero, 45
	st.b	$a2, $a3, 0
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 18
	add.d	$a3, $s7, $a0
.LBB5_45:                               #   in Loop: Header=BB5_6 Depth=1
	ld.hu	$a1, $s2, 20
	beqz	$a1, .LBB5_47
# %bb.46:                               #   in Loop: Header=BB5_6 Depth=1
	ori	$a1, $zero, 43
	st.b	$a1, $a3, 0
	ld.d	$a1, $s2, 8
	addi.d	$s7, $a3, 1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(strcpy)
	jirl	$ra, $ra, 0
	ld.h	$a0, $s2, 20
	add.d	$a3, $s7, $a0
.LBB5_47:                               #   in Loop: Header=BB5_6 Depth=1
	beqz	$fp, .LBB5_49
# %bb.48:                               #   in Loop: Header=BB5_6 Depth=1
	ld.h	$a2, $s0, 18
	b	.LBB5_50
.LBB5_49:                               #   in Loop: Header=BB5_6 Depth=1
	move	$a2, $zero
.LBB5_50:                               #   in Loop: Header=BB5_6 Depth=1
	ld.h	$a4, $s2, 18
	add.d	$a1, $s1, $s3
	sub.w	$a5, $a3, $a1
	addi.d	$a0, $sp, 120
	st.d	$s2, $sp, 0
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	move	$a6, $s4
	move	$a7, $s0
	pcaddu18i	$ra, %call36(ins_root_cap)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	b	.LBB5_4
.LBB5_51:                               # %._crit_edge
	ld.d	$s8, $sp, 488                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 496                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 504                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 512                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 520                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 528                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 536                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 544                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 552                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 560                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 568                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 576
	ret
.Lfunc_end5:
	.size	suf_list_chk, .Lfunc_end5-suf_list_chk
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"\n%s"
	.size	.L.str, 4

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	" %s%s"
	.size	.L.str.1, 6

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym hits
