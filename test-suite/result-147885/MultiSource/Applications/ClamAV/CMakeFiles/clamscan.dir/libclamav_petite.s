	.file	"libclamav_petite.c"
	.text
	.globl	petite_inflate2x_1to9           # -- Begin function petite_inflate2x_1to9
	.p2align	5
	.type	petite_inflate2x_1to9,@function
petite_inflate2x_1to9:                  # @petite_inflate2x_1to9
# %bb.0:
	addi.d	$sp, $sp, -368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	st.d	$s4, $sp, 312                   # 8-byte Folded Spill
	st.d	$s5, $sp, 304                   # 8-byte Folded Spill
	st.d	$s6, $sp, 296                   # 8-byte Folded Spill
	st.d	$s7, $sp, 288                   # 8-byte Folded Spill
	st.d	$s8, $sp, 280                   # 8-byte Folded Spill
	ld.d	$t0, $sp, 368
	move	$s4, $a2
	move	$s1, $a0
	st.d	$a1, $sp, 232                   # 8-byte Folded Spill
	bstrpick.d	$s2, $a1, 31, 0
	ori	$a0, $zero, 2
	sub.d	$t7, $s1, $s2
	bne	$t0, $a0, .LBB0_2
# %bb.1:
	ori	$t1, $zero, 53
	ori	$t2, $zero, 853
	ori	$a0, $zero, 440
	b	.LBB0_4
.LBB0_2:
	ori	$a0, $zero, 1
	bne	$t0, $a0, .LBB0_5
# %bb.3:
	ori	$t1, $zero, 52
	ori	$t2, $zero, 803
	ori	$a0, $zero, 376
.LBB0_4:                                # %.sink.split
	addi.d	$a1, $a4, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a2, $a1, 5
	alsl.d	$a1, $a1, $a2, 2
	ldx.wu	$a1, $a3, $a1
	add.d	$a1, $t7, $a1
	add.d	$s3, $a1, $a0
	ori	$a0, $zero, 4
	ori	$s0, $zero, 1
	bgeu	$s4, $a0, .LBB0_6
	b	.LBB0_198
.LBB0_5:
	move	$s3, $zero
	ori	$t1, $zero, 53
	ori	$t2, $zero, 853
	ori	$a0, $zero, 4
	ori	$s0, $zero, 1
	bltu	$s4, $a0, .LBB0_198
.LBB0_6:
	bltu	$s3, $s1, .LBB0_198
# %bb.7:                                # %.lr.ph1262
	st.d	$a6, $sp, 120                   # 8-byte Folded Spill
	st.d	$t0, $sp, 128                   # 8-byte Folded Spill
	st.d	$a3, $sp, 200                   # 8-byte Folded Spill
	st.d	$a5, $sp, 136                   # 8-byte Folded Spill
	st.d	$a7, $sp, 144                   # 8-byte Folded Spill
	st.d	$zero, $sp, 248                 # 8-byte Folded Spill
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	move	$s5, $zero
	move	$t5, $zero
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	move	$s0, $zero
	ld.d	$a0, $sp, 384
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 376
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	bstrpick.d	$a0, $s4, 31, 0
	add.d	$t8, $s1, $a0
	addi.d	$s8, $t8, -1
	sub.d	$a0, $zero, $t2
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	st.d	$t2, $sp, 168                   # 8-byte Folded Spill
	add.d	$a0, $t1, $t2
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	st.d	$t1, $sp, 56                    # 8-byte Folded Spill
	sub.d	$a0, $zero, $t1
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	st.d	$a4, $sp, 208                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a4, 31, 0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	addi.w	$ra, $zero, -1
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	lu12i.w	$a0, 3
	ori	$a0, $a0, 3999
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	lu12i.w	$a0, 411116
	ori	$a0, $a0, 51
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	lu12i.w	$a0, 112817
	ori	$a0, $a0, 2187
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	lu12i.w	$a0, 476906
	ori	$a0, $a0, 1321
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	lu12i.w	$a0, -403866
	ori	$a0, $a0, 426
	lu32i.d	$a0, 0
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	lu12i.w	$a0, -456439
	ori	$a0, $a0, 144
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$t7, $sp, 264                   # 8-byte Folded Spill
	st.d	$t8, $sp, 272                   # 8-byte Folded Spill
	st.d	$ra, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_20 Depth 2
                                        #     Child Loop BB0_29 Depth 2
                                        #       Child Loop BB0_42 Depth 3
                                        #       Child Loop BB0_54 Depth 3
                                        #       Child Loop BB0_72 Depth 3
                                        #       Child Loop BB0_92 Depth 3
                                        #       Child Loop BB0_95 Depth 3
	addi.d	$a0, $s3, 4
	bltu	$t8, $a0, .LBB0_143
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	ld.w	$s7, $s3, 0
	beqz	$s7, .LBB0_145
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=1
	ori	$a0, $zero, 8
	bge	$ra, $s7, .LBB0_97
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	bltu	$s4, $a0, .LBB0_141
# %bb.12:                               #   in Loop: Header=BB0_8 Depth=1
	addi.d	$a0, $s3, 12
	bltu	$t8, $a0, .LBB0_141
# %bb.13:                               #   in Loop: Header=BB0_8 Depth=1
	ori	$a0, $zero, 95
	blt	$a0, $s0, .LBB0_151
# %bb.14:                               #   in Loop: Header=BB0_8 Depth=1
	st.d	$t5, $sp, 240                   # 8-byte Folded Spill
	ld.w	$s2, $s3, 4
	ld.wu	$s4, $s3, 8
	addi.w	$s6, $s0, 1
	slli.d	$a0, $s6, 5
	alsl.d	$a1, $s6, $a0, 2
	move	$a0, $s5
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_141
# %bb.15:                               #   in Loop: Header=BB0_8 Depth=1
	move	$fp, $a0
	addi.d	$t6, $s3, 16
	slli.d	$a0, $s0, 5
	alsl.d	$a0, $s0, $a0, 2
	add.d	$s5, $fp, $a0
	stx.w	$s4, $fp, $a0
	st.w	$s2, $s5, 12
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	sub.w	$a0, $a0, $s4
	slt	$a1, $zero, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$a0, $a0, $a1
	st.w	$a0, $s5, 4
	st.w	$zero, $s5, 8
	ld.d	$ra, $sp, 256                   # 8-byte Folded Reload
	beqz	$s2, .LBB0_107
# %bb.16:                               #   in Loop: Header=BB0_8 Depth=1
	addi.w	$a0, $s4, 0
	ld.d	$t7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 240                   # 8-byte Folded Reload
	bnez	$t5, .LBB0_23
# %bb.17:                               #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a1, $sp, 208                   # 8-byte Folded Reload
	beqz	$a1, .LBB0_23
# %bb.18:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	b	.LBB0_20
	.p2align	4, , 16
.LBB0_19:                               #   in Loop: Header=BB0_20 Depth=2
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 36
	beqz	$a2, .LBB0_23
.LBB0_20:                               # %.lr.ph
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $a1, 0
	bgeu	$a3, $a0, .LBB0_19
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=2
	ld.w	$a4, $a1, 4
	add.w	$a4, $a4, $a3
	bgeu	$a0, $a4, .LBB0_19
# %bb.22:                               #   in Loop: Header=BB0_8 Depth=1
	st.w	$a3, $s5, 0
	ld.w	$a1, $a1, 0
	add.d	$a2, $s4, $s2
	sub.d	$a1, $a2, $a1
	st.w	$a1, $s5, 12
	.p2align	4, , 16
.LBB0_23:                               # %.loopexit1105
                                        #   in Loop: Header=BB0_8 Depth=1
	move	$a1, $s0
	ori	$s0, $zero, 1
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	bltu	$s7, $a3, .LBB0_142
# %bb.24:                               #   in Loop: Header=BB0_8 Depth=1
	add.d	$a2, $t7, $s7
	addi.d	$s3, $a2, 1
	bltu	$t8, $s3, .LBB0_142
# %bb.25:                               #   in Loop: Header=BB0_8 Depth=1
	bltu	$a0, $a3, .LBB0_142
# %bb.26:                               #   in Loop: Header=BB0_8 Depth=1
	add.d	$a4, $t7, $s4
	addi.d	$a3, $a4, 1
	bltu	$t8, $a3, .LBB0_142
# %bb.27:                               #   in Loop: Header=BB0_8 Depth=1
	ld.b	$a2, $a2, 0
	addi.w	$a0, $s2, -1
	st.b	$a2, $a4, 0
	beqz	$a0, .LBB0_108
# %bb.28:                               # %.lr.ph1248.preheader
                                        #   in Loop: Header=BB0_8 Depth=1
	move	$a6, $zero
	move	$t1, $zero
	bstrpick.d	$a2, $s2, 31, 16
	sltui	$a5, $a2, 1
	bstrpick.d	$a2, $s2, 31, 18
	sltui	$a7, $a2, 1
	lu12i.w	$a4, 7
	ori	$a2, $a4, 3327
	masknez	$a2, $a2, $a7
	ori	$a4, $a4, 3711
	maskeqz	$a4, $a4, $a7
	or	$a2, $a4, $a2
	ori	$a4, $zero, 1279
	masknez	$a4, $a4, $a7
	ori	$t0, $zero, 1663
	maskeqz	$t0, $t0, $a7
	or	$a4, $t0, $a4
	masknez	$a2, $a2, $a5
	ld.d	$t0, $sp, 192                   # 8-byte Folded Reload
	maskeqz	$t0, $t0, $a5
	or	$a2, $t0, $a2
	masknez	$a4, $a4, $a5
	ori	$t0, $zero, 927
	maskeqz	$t0, $t0, $a5
	or	$a4, $t0, $a4
	ori	$t0, $zero, 8
	sub.d	$a7, $t0, $a7
	masknez	$a7, $a7, $a5
	ori	$t0, $zero, 5
	maskeqz	$a5, $t0, $a5
	or	$a5, $a5, $a7
	ld.d	$s4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
.LBB0_29:                               # %.lr.ph1248
                                        #   Parent Loop BB0_8 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_42 Depth 3
                                        #       Child Loop BB0_54 Depth 3
                                        #       Child Loop BB0_72 Depth 3
                                        #       Child Loop BB0_92 Depth 3
                                        #       Child Loop BB0_95 Depth 3
	andi	$a7, $t1, 127
	beqz	$a7, .LBB0_36
# %bb.30:                               #   in Loop: Header=BB0_29 Depth=2
	slli.d	$a7, $t1, 1
	ext.w.b	$t0, $t1
	bge	$ra, $t0, .LBB0_39
.LBB0_31:                               #   in Loop: Header=BB0_29 Depth=2
	bltu	$s3, $s1, .LBB0_142
# %bb.32:                               #   in Loop: Header=BB0_29 Depth=2
	addi.d	$t2, $s3, 1
	bltu	$t8, $t2, .LBB0_142
# %bb.33:                               #   in Loop: Header=BB0_29 Depth=2
	bltu	$a3, $s1, .LBB0_142
# %bb.34:                               #   in Loop: Header=BB0_29 Depth=2
	addi.d	$t0, $a3, 1
	bltu	$t8, $t0, .LBB0_142
# %bb.35:                               #   in Loop: Header=BB0_29 Depth=2
	ld.b	$t1, $s3, 0
	xor	$t1, $t1, $a0
	st.b	$t1, $a3, 0
	addi.w	$a0, $a0, -1
	move	$a3, $t0
	move	$t1, $a7
	move	$s3, $t2
	bnez	$a0, .LBB0_29
	b	.LBB0_109
	.p2align	4, , 16
.LBB0_36:                               #   in Loop: Header=BB0_29 Depth=2
	bltu	$s3, $s1, .LBB0_142
# %bb.37:                               #   in Loop: Header=BB0_29 Depth=2
	bgeu	$s3, $s8, .LBB0_142
# %bb.38:                               #   in Loop: Header=BB0_29 Depth=2
	ld.bu	$t1, $s3, 0
	slli.d	$a7, $t1, 1
	addi.d	$a7, $a7, 1
	addi.d	$s3, $s3, 1
	ext.w.b	$t0, $t1
	blt	$ra, $t0, .LBB0_31
.LBB0_39:                               # %.preheader1103.preheader
                                        #   in Loop: Header=BB0_29 Depth=2
	ori	$t1, $zero, 1
	b	.LBB0_42
	.p2align	4, , 16
.LBB0_40:                               #   in Loop: Header=BB0_42 Depth=3
	slli.d	$a7, $t2, 1
.LBB0_41:                               # %doubledl.exit909
                                        #   in Loop: Header=BB0_42 Depth=3
	bstrpick.d	$t0, $t0, 7, 7
	slli.w	$t1, $t1, 1
	ext.w.b	$t2, $t2
	or	$t1, $t1, $t0
	bgez	$t2, .LBB0_50
.LBB0_42:                               # %.preheader1103
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$t0, $a7, 127
	beqz	$t0, .LBB0_44
# %bb.43:                               #   in Loop: Header=BB0_42 Depth=3
	slli.d	$t2, $a7, 1
	move	$t0, $a7
	andi	$a7, $t2, 127
	bnez	$a7, .LBB0_40
	b	.LBB0_47
	.p2align	4, , 16
.LBB0_44:                               #   in Loop: Header=BB0_42 Depth=3
	bltu	$s3, $s1, .LBB0_139
# %bb.45:                               #   in Loop: Header=BB0_42 Depth=3
	bgeu	$s3, $s8, .LBB0_139
# %bb.46:                               #   in Loop: Header=BB0_42 Depth=3
	ld.bu	$t0, $s3, 0
	slli.d	$a7, $t0, 1
	addi.d	$t2, $a7, 1
	addi.d	$s3, $s3, 1
	andi	$a7, $t2, 127
	bnez	$a7, .LBB0_40
.LBB0_47:                               #   in Loop: Header=BB0_42 Depth=3
	bltu	$s3, $s1, .LBB0_139
# %bb.48:                               #   in Loop: Header=BB0_42 Depth=3
	bgeu	$s3, $s8, .LBB0_139
# %bb.49:                               #   in Loop: Header=BB0_42 Depth=3
	ld.bu	$t2, $s3, 0
	slli.d	$a7, $t2, 1
	addi.d	$a7, $a7, 1
	addi.d	$s3, $s3, 1
	b	.LBB0_41
.LBB0_50:                               #   in Loop: Header=BB0_29 Depth=2
	ori	$t0, $zero, 3
	blt	$t1, $t0, .LBB0_58
# %bb.51:                               #   in Loop: Header=BB0_29 Depth=2
	addi.d	$t0, $t1, -3
	move	$a6, $a5
	b	.LBB0_54
	.p2align	4, , 16
.LBB0_52:                               #   in Loop: Header=BB0_54 Depth=3
	slli.d	$t1, $a7, 1
.LBB0_53:                               # %doubledl.exit916
                                        #   in Loop: Header=BB0_54 Depth=3
	bstrpick.d	$a7, $a7, 7, 7
	slli.w	$t0, $t0, 1
	addi.w	$a6, $a6, -1
	or	$t0, $t0, $a7
	move	$a7, $t1
	beqz	$a6, .LBB0_61
.LBB0_54:                               #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$t1, $a7, 127
	bnez	$t1, .LBB0_52
# %bb.55:                               #   in Loop: Header=BB0_54 Depth=3
	bltu	$s3, $s1, .LBB0_139
# %bb.56:                               #   in Loop: Header=BB0_54 Depth=3
	bgeu	$s3, $s8, .LBB0_139
# %bb.57:                               #   in Loop: Header=BB0_54 Depth=3
	ld.bu	$a7, $s3, 0
	slli.d	$t1, $a7, 1
	addi.d	$t1, $t1, 1
	addi.d	$s3, $s3, 1
	b	.LBB0_53
.LBB0_58:                               #   in Loop: Header=BB0_29 Depth=2
	move	$t0, $zero
	addi.d	$t2, $zero, -4
	alsl.w	$t2, $t1, $t2, 1
	move	$t1, $a7
	andi	$a7, $t1, 127
	beqz	$a7, .LBB0_62
.LBB0_59:                               #   in Loop: Header=BB0_29 Depth=2
	slli.d	$t3, $t1, 1
	andi	$a7, $t3, 127
	beqz	$a7, .LBB0_65
.LBB0_60:                               #   in Loop: Header=BB0_29 Depth=2
	slli.d	$a7, $t3, 1
	b	.LBB0_68
.LBB0_61:                               #   in Loop: Header=BB0_29 Depth=2
	move	$t2, $zero
	nor	$a6, $t0, $zero
	slt	$a7, $a4, $t0
	slt	$t0, $a2, $t0
	add.d	$a7, $a7, $t0
	addi.d	$t0, $a7, 1
	andi	$a7, $t1, 127
	bnez	$a7, .LBB0_59
.LBB0_62:                               #   in Loop: Header=BB0_29 Depth=2
	bltu	$s3, $s1, .LBB0_139
# %bb.63:                               #   in Loop: Header=BB0_29 Depth=2
	bgeu	$s3, $s8, .LBB0_139
# %bb.64:                               #   in Loop: Header=BB0_29 Depth=2
	ld.bu	$t1, $s3, 0
	slli.d	$a7, $t1, 1
	addi.d	$t3, $a7, 1
	addi.d	$s3, $s3, 1
	andi	$a7, $t3, 127
	bnez	$a7, .LBB0_60
.LBB0_65:                               #   in Loop: Header=BB0_29 Depth=2
	bltu	$s3, $s1, .LBB0_139
# %bb.66:                               #   in Loop: Header=BB0_29 Depth=2
	bgeu	$s3, $s8, .LBB0_139
# %bb.67:                               #   in Loop: Header=BB0_29 Depth=2
	ld.bu	$t3, $s3, 0
	slli.d	$a7, $t3, 1
	addi.d	$a7, $a7, 1
	addi.d	$s3, $s3, 1
.LBB0_68:                               # %doubledl.exit930
                                        #   in Loop: Header=BB0_29 Depth=2
	bstrpick.d	$t1, $t1, 7, 7
	bstrpick.d	$t3, $t3, 7, 7
	add.d	$t1, $t2, $t1
	slli.w	$t1, $t1, 1
	or	$t1, $t1, $t3
	bnez	$t1, .LBB0_81
# %bb.69:                               # %.preheader1102.preheader
                                        #   in Loop: Header=BB0_29 Depth=2
	ori	$t1, $zero, 1
	b	.LBB0_72
	.p2align	4, , 16
.LBB0_70:                               #   in Loop: Header=BB0_72 Depth=3
	slli.d	$a7, $t3, 1
.LBB0_71:                               # %doubledl.exit944
                                        #   in Loop: Header=BB0_72 Depth=3
	bstrpick.d	$t2, $t2, 7, 7
	slli.d	$t1, $t1, 1
	ext.w.b	$t3, $t3
	or	$t1, $t1, $t2
	bgez	$t3, .LBB0_80
.LBB0_72:                               # %.preheader1102
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$t2, $a7, 127
	beqz	$t2, .LBB0_74
# %bb.73:                               #   in Loop: Header=BB0_72 Depth=3
	slli.d	$t3, $a7, 1
	move	$t2, $a7
	andi	$a7, $t3, 127
	bnez	$a7, .LBB0_70
	b	.LBB0_77
	.p2align	4, , 16
.LBB0_74:                               #   in Loop: Header=BB0_72 Depth=3
	bltu	$s3, $s1, .LBB0_139
# %bb.75:                               #   in Loop: Header=BB0_72 Depth=3
	bgeu	$s3, $s8, .LBB0_139
# %bb.76:                               #   in Loop: Header=BB0_72 Depth=3
	ld.bu	$t2, $s3, 0
	slli.d	$a7, $t2, 1
	addi.d	$t3, $a7, 1
	addi.d	$s3, $s3, 1
	andi	$a7, $t3, 127
	bnez	$a7, .LBB0_70
.LBB0_77:                               #   in Loop: Header=BB0_72 Depth=3
	bltu	$s3, $s1, .LBB0_139
# %bb.78:                               #   in Loop: Header=BB0_72 Depth=3
	bgeu	$s3, $s8, .LBB0_139
# %bb.79:                               #   in Loop: Header=BB0_72 Depth=3
	ld.bu	$t3, $s3, 0
	slli.d	$a7, $t3, 1
	addi.d	$a7, $a7, 1
	addi.d	$s3, $s3, 1
	b	.LBB0_71
.LBB0_80:                               #   in Loop: Header=BB0_29 Depth=2
	addi.d	$t1, $t1, 2
.LBB0_81:                               #   in Loop: Header=BB0_29 Depth=2
	add.w	$t2, $t1, $t0
	ori	$t0, $zero, 1
	blt	$t2, $t0, .LBB0_139
# %bb.82:                               #   in Loop: Header=BB0_29 Depth=2
	bltu	$s4, $t2, .LBB0_139
# %bb.83:                               #   in Loop: Header=BB0_29 Depth=2
	bltu	$a3, $s1, .LBB0_139
# %bb.84:                               #   in Loop: Header=BB0_29 Depth=2
	add.d	$t0, $a3, $t2
	bltu	$t8, $t0, .LBB0_139
# %bb.85:                               #   in Loop: Header=BB0_29 Depth=2
	bgeu	$s1, $t0, .LBB0_139
# %bb.86:                               #   in Loop: Header=BB0_29 Depth=2
	addi.w	$t1, $a6, 0
	add.d	$t0, $a3, $t1
	bltu	$t0, $s1, .LBB0_139
# %bb.87:                               #   in Loop: Header=BB0_29 Depth=2
	add.d	$t0, $t0, $t2
	bltu	$t8, $t0, .LBB0_139
# %bb.88:                               #   in Loop: Header=BB0_29 Depth=2
	bgeu	$s1, $t0, .LBB0_139
# %bb.89:                               # %.lr.ph1241.preheader
                                        #   in Loop: Header=BB0_29 Depth=2
	sub.w	$a0, $a0, $t2
	ori	$t3, $zero, 32
	bltu	$t2, $t3, .LBB0_94
# %bb.90:                               # %.lr.ph1241.preheader
                                        #   in Loop: Header=BB0_29 Depth=2
	addi.d	$t0, $t1, 31
	bltu	$t0, $t3, .LBB0_94
# %bb.91:                               # %vector.ph
                                        #   in Loop: Header=BB0_29 Depth=2
	move	$s7, $t6
	bstrpick.d	$t0, $t2, 30, 5
	slli.d	$t4, $t0, 5
	sub.d	$t3, $t2, $t4
	add.d	$t0, $a3, $t4
	move	$t5, $t4
	.p2align	4, , 16
.LBB0_92:                               # %vector.body
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$t6, $a3, $t1
	vldx	$vr0, $a3, $t1
	vld	$vr1, $t6, 16
	vst	$vr0, $a3, 0
	vst	$vr1, $a3, 16
	addi.d	$t5, $t5, -32
	addi.d	$a3, $a3, 32
	bnez	$t5, .LBB0_92
# %bb.93:                               # %middle.block
                                        #   in Loop: Header=BB0_29 Depth=2
	ld.d	$t5, $sp, 240                   # 8-byte Folded Reload
	move	$t6, $s7
	bne	$t4, $t2, .LBB0_95
	b	.LBB0_96
.LBB0_94:                               #   in Loop: Header=BB0_29 Depth=2
	move	$t3, $t2
	move	$t0, $a3
	.p2align	4, , 16
.LBB0_95:                               # %.lr.ph1241
                                        #   Parent Loop BB0_8 Depth=1
                                        #     Parent Loop BB0_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.b	$a3, $t0, $t1
	addi.w	$t3, $t3, -1
	st.b	$a3, $t0, 0
	addi.d	$t0, $t0, 1
	bnez	$t3, .LBB0_95
.LBB0_96:                               #   in Loop: Header=BB0_29 Depth=2
	move	$t2, $s3
	move	$a3, $t0
	move	$t1, $a7
	move	$s3, $t2
	bnez	$a0, .LBB0_29
	b	.LBB0_109
	.p2align	4, , 16
.LBB0_97:                               #   in Loop: Header=BB0_8 Depth=1
	bltu	$s4, $a0, .LBB0_141
# %bb.98:                               #   in Loop: Header=BB0_8 Depth=1
	addi.d	$a7, $s3, 12
	bltu	$t8, $a7, .LBB0_141
# %bb.99:                               #   in Loop: Header=BB0_8 Depth=1
	alsl.w	$a0, $s7, $ra, 2
	bgeu	$a0, $s4, .LBB0_141
# %bb.100:                              #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a1, $s3, 4
	slli.d	$a2, $s7, 2
	addi.d	$a0, $a2, -4
	bstrpick.d	$a4, $a0, 31, 2
	alsl.d	$a0, $a4, $s2, 2
	blt	$a1, $a0, .LBB0_141
# %bb.101:                              #   in Loop: Header=BB0_8 Depth=1
	bstrpick.d	$a2, $a2, 31, 0
	sub.d	$a3, $a2, $a0
	add.d	$a5, $a3, $a1
	ori	$a6, $zero, 1
	blt	$a5, $a6, .LBB0_141
# %bb.102:                              #   in Loop: Header=BB0_8 Depth=1
	add.d	$a1, $t7, $a1
	slli.d	$a5, $a4, 2
	sub.d	$a1, $a1, $a5
	add.d	$a4, $a1, $a2
	bltu	$t8, $a4, .LBB0_141
# %bb.103:                              #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a4, $s3, 8
	blt	$a4, $a0, .LBB0_141
# %bb.104:                              #   in Loop: Header=BB0_8 Depth=1
	add.d	$a0, $t7, $a4
	sub.d	$a0, $a0, $a5
	add.d	$a5, $a0, $a2
	bltu	$t8, $a5, .LBB0_141
# %bb.105:                              #   in Loop: Header=BB0_8 Depth=1
	add.d	$a3, $a3, $a4
	blez	$a3, .LBB0_141
# %bb.106:                              #   in Loop: Header=BB0_8 Depth=1
	addi.d	$a3, $a4, 4
	st.d	$a3, $sp, 248                   # 8-byte Folded Spill
	move	$fp, $a7
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	move	$t6, $fp
	ld.d	$ra, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 264                   # 8-byte Folded Reload
	move	$t5, $zero
	move	$s6, $s0
	move	$fp, $s5
	b	.LBB0_115
.LBB0_107:                              #   in Loop: Header=BB0_8 Depth=1
	ld.d	$s4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 240                   # 8-byte Folded Reload
	b	.LBB0_115
.LBB0_108:                              #   in Loop: Header=BB0_8 Depth=1
	move	$t0, $a3
	ld.d	$s4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
.LBB0_109:                              # %._crit_edge
                                        #   in Loop: Header=BB0_8 Depth=1
	beqz	$s6, .LBB0_114
# %bb.110:                              #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a0, $s5, 12
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	bgeu	$a2, $a0, .LBB0_112
# %bb.111:                              #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	add.d	$a4, $t0, $a2
	addi.d	$a2, $a4, 84
	bgeu	$a2, $s1, .LBB0_116
.LBB0_112:                              # %.thread1024
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	bgeu	$a2, $a0, .LBB0_114
# %bb.113:                              #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	add.d	$a0, $t0, $a0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	addi.d	$a3, $a0, 84
	bgeu	$a3, $s1, .LBB0_121
.LBB0_114:                              # %.thread1029
                                        #   in Loop: Header=BB0_8 Depth=1
	addi.w	$t5, $t5, 1
	.p2align	4, , 16
.LBB0_115:                              # %.thread1037
                                        #   in Loop: Header=BB0_8 Depth=1
	move	$s3, $t6
	move	$s5, $fp
	move	$s0, $s6
	bgeu	$t6, $s1, .LBB0_8
	b	.LBB0_144
.LBB0_116:                              #   in Loop: Header=BB0_8 Depth=1
	addi.d	$a3, $a4, 92
	bltu	$t8, $a3, .LBB0_112
# %bb.117:                              #   in Loop: Header=BB0_8 Depth=1
	bgeu	$s1, $a3, .LBB0_112
# %bb.118:                              #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a2, $a2, 0
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	bne	$a2, $a3, .LBB0_112
# %bb.119:                              #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a2, $a4, 88
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	bne	$a2, $a3, .LBB0_112
# %bb.120:                              #   in Loop: Header=BB0_8 Depth=1
	move	$s0, $zero
	b	.LBB0_125
.LBB0_121:                              #   in Loop: Header=BB0_8 Depth=1
	addi.d	$a2, $a3, 8
	bltu	$t8, $a2, .LBB0_114
# %bb.122:                              #   in Loop: Header=BB0_8 Depth=1
	bgeu	$s1, $a2, .LBB0_114
# %bb.123:                              #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a2, $a3, 0
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	bne	$a2, $a3, .LBB0_114
# %bb.124:                              #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a0, $a0, 88
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	bne	$a0, $a2, .LBB0_114
.LBB0_125:                              # %.thread1032
                                        #   in Loop: Header=BB0_8 Depth=1
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	add.d	$s4, $t0, $a0
	sub.d	$a0, $s4, $s0
	addi.d	$a0, $a0, 7
	bgeu	$a0, $s1, .LBB0_127
.LBB0_126:                              #   in Loop: Header=BB0_8 Depth=1
	ld.d	$s4, $sp, 224                   # 8-byte Folded Reload
	b	.LBB0_114
.LBB0_127:                              #   in Loop: Header=BB0_8 Depth=1
	addi.d	$a2, $a0, 8
	bltu	$t8, $a2, .LBB0_126
# %bb.128:                              #   in Loop: Header=BB0_8 Depth=1
	bgeu	$s1, $a2, .LBB0_126
# %bb.129:                              #   in Loop: Header=BB0_8 Depth=1
	st.d	$t6, $sp, 16                    # 8-byte Folded Spill
	sub.d	$s7, $zero, $s0
	ld.w	$s3, $a0, 0
	add.d	$a0, $s4, $s7
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.w	$s2, $a0, 11
	ld.w	$a2, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	ori	$a1, $zero, 437
	bltu	$a0, $a1, .LBB0_134
# %bb.130:                              #   in Loop: Header=BB0_8 Depth=1
	xor	$a0, $s2, $s3
	ld.d	$t7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 256                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 16                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB0_133
# %bb.131:                              #   in Loop: Header=BB0_8 Depth=1
	addi.d	$a0, $s4, 15
	add.d	$a0, $a0, $s7
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	bgeu	$a0, $s1, .LBB0_135
# %bb.132:                              #   in Loop: Header=BB0_8 Depth=1
	ld.d	$s4, $sp, 224                   # 8-byte Folded Reload
	b	.LBB0_138
.LBB0_133:                              #   in Loop: Header=BB0_8 Depth=1
	ld.d	$s4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	b	.LBB0_138
.LBB0_134:                              #   in Loop: Header=BB0_8 Depth=1
	ld.d	$s4, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 16                    # 8-byte Folded Reload
	b	.LBB0_138
.LBB0_135:                              #   in Loop: Header=BB0_8 Depth=1
	addi.d	$a1, $a0, 437
	ld.d	$s4, $sp, 224                   # 8-byte Folded Reload
	bltu	$t8, $a1, .LBB0_138
# %bb.136:                              #   in Loop: Header=BB0_8 Depth=1
	bgeu	$s1, $a1, .LBB0_138
# %bb.137:                              #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a2, $a1, 289
	ld.w	$a3, $a1, 448
	xor	$a0, $s3, $a0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	xor	$a0, $a0, $a1
	addi.w	$a1, $a0, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	xor	$a0, $a3, $a0
	sltu	$a0, $zero, $a0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$t6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 256                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 272                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 264                   # 8-byte Folded Reload
.LBB0_138:                              #   in Loop: Header=BB0_8 Depth=1
	ld.w	$a0, $s5, 12
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	add.d	$a1, $s0, $a1
	sub.d	$a0, $a0, $a1
	st.w	$a0, $s5, 12
	b	.LBB0_114
.LBB0_139:
	move	$s5, $fp
.LBB0_140:                              # %.thread1059.sink.split
	ori	$s0, $zero, 1
	b	.LBB0_197
.LBB0_141:
	ori	$s0, $zero, 1
	bnez	$s5, .LBB0_197
	b	.LBB0_198
.LBB0_142:
	move	$s5, $fp
	b	.LBB0_197
.LBB0_143:
	move	$fp, $s5
.LBB0_144:                              # %._crit_edge1263
	ori	$s0, $zero, 1
	move	$s5, $fp
	bnez	$fp, .LBB0_197
	b	.LBB0_198
.LBB0_145:
	move	$t5, $s0
	ori	$s0, $zero, 1
	ld.d	$s6, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 208                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 120                   # 8-byte Folded Reload
	blt	$t5, $s0, .LBB0_198
# %bb.146:                              # %.preheader1099
	ori	$a0, $zero, 1
	ld.d	$t4, $sp, 104                   # 8-byte Folded Reload
	bne	$t5, $a0, .LBB0_152
.LBB0_147:                              # %._crit_edge1273
	beqz	$t4, .LBB0_162
# %bb.148:
	ori	$a1, $zero, 2
	addi.d	$a0, $s3, 5
	bne	$fp, $a1, .LBB0_187
# %bb.149:                              # %.preheader
	ld.d	$a1, $sp, 232                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	bgeu	$a3, $a1, .LBB0_163
.LBB0_150:                              # %.critedge
	move	$s8, $t5
	ld.w	$fp, $s5, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	b	.LBB0_188
.LBB0_151:
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	b	.LBB0_205
.LBB0_152:                              # %.preheader1098.us.preheader
	addi.w	$a0, $t5, -1
	bstrpick.d	$a1, $a0, 31, 0
	addi.d	$a2, $s5, 36
	b	.LBB0_154
	.p2align	4, , 16
.LBB0_153:                              # %..loopexit_crit_edge.us
                                        #   in Loop: Header=BB0_154 Depth=1
	beqz	$a6, .LBB0_158
.LBB0_154:                              # %.preheader1098.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_156 Depth 2
	ld.w	$a3, $s5, 0
	move	$a6, $zero
	move	$a4, $a1
	move	$a5, $a2
	b	.LBB0_156
	.p2align	4, , 16
.LBB0_155:                              #   in Loop: Header=BB0_156 Depth=2
	ld.w	$a6, $a5, -24
	ld.w	$t0, $a5, 12
	ld.w	$t1, $a5, 4
	ld.w	$t2, $a5, -32
	st.w	$a7, $a5, -36
	st.w	$t0, $a5, -24
	st.w	$t1, $a5, -32
	st.w	$a3, $a5, 0
	st.w	$a6, $a5, 12
	st.w	$t2, $a5, 4
	ori	$a6, $zero, 1
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 36
	beqz	$a4, .LBB0_153
.LBB0_156:                              #   Parent Loop BB0_154 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $a5, 0
	bltu	$a7, $a3, .LBB0_155
# %bb.157:                              #   in Loop: Header=BB0_156 Depth=2
	move	$a3, $a7
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 36
	bnez	$a4, .LBB0_156
	b	.LBB0_153
.LBB0_158:                              # %.lr.ph1272.preheader
	ori	$a1, $zero, 1
	slt	$a3, $a1, $a0
	masknez	$a1, $a1, $a3
	ld.w	$a2, $s5, 0
	maskeqz	$a0, $a0, $a3
	or	$a0, $a0, $a1
	addi.d	$a1, $s5, 36
	b	.LBB0_160
	.p2align	4, , 16
.LBB0_159:                              #   in Loop: Header=BB0_160 Depth=1
	addi.d	$a0, $a0, -1
	addi.d	$a1, $a1, 36
	beqz	$a0, .LBB0_147
.LBB0_160:                              # %.lr.ph1272
                                        # =>This Inner Loop Header: Depth=1
	move	$a3, $a2
	ld.w	$a2, $a1, 0
	ld.w	$a4, $a1, -32
	sub.w	$a3, $a2, $a3
	beq	$a4, $a3, .LBB0_159
# %bb.161:                              #   in Loop: Header=BB0_160 Depth=1
	st.w	$a3, $a1, -32
	b	.LBB0_159
.LBB0_162:
	move	$s8, $t5
	move	$fp, $zero
	b	.LBB0_189
.LBB0_163:                              # %.lr.ph1311
	add.w	$a2, $a0, $s7
	bstrpick.d	$a6, $a3, 31, 0
	add.d	$t0, $t7, $a6
	addi.d	$a1, $t6, -1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a3, $a1, 5
	alsl.d	$a1, $a1, $a3, 2
	add.d	$a1, $t3, $a1
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	beqz	$a3, .LBB0_178
# %bb.164:                              # %.lr.ph1311.split.us.preheader
	move	$a5, $zero
	addi.d	$a3, $t7, 4
	add.d	$a4, $a3, $a6
	lu12i.w	$a6, -262399
	ori	$a6, $a6, 823
.LBB0_165:                              # %.lr.ph1311.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_172 Depth 2
	addi.d	$a7, $t0, 4
	bltu	$t8, $a7, .LBB0_150
# %bb.166:                              #   in Loop: Header=BB0_165 Depth=1
	ld.w	$t0, $t0, 0
	beqz	$t0, .LBB0_187
# %bb.167:                              #   in Loop: Header=BB0_165 Depth=1
	blt	$t0, $s2, .LBB0_150
# %bb.168:                              # %.lr.ph1280.us.preheader
                                        #   in Loop: Header=BB0_165 Depth=1
	add.d	$t0, $a3, $t0
	move	$t1, $t0
	b	.LBB0_172
.LBB0_169:                              #   in Loop: Header=BB0_172 Depth=2
	addi.w	$a5, $a5, -1
.LBB0_170:                              #   in Loop: Header=BB0_172 Depth=2
	move	$t2, $a2
	move	$a2, $a6
.LBB0_171:                              #   in Loop: Header=BB0_172 Depth=2
	ld.w	$t3, $a1, 0
	add.w	$t3, $t3, $s7
	sltu	$t3, $t3, $a2
	sltu	$a2, $a2, $t2
	sub.d	$a2, $t4, $a2
	sub.d	$a2, $a2, $t3
	rotri.w	$t4, $a2, 3
	addi.d	$t1, $t1, 4
	move	$a2, $t2
	bltu	$t0, $s1, .LBB0_150
.LBB0_172:                              # %.lr.ph1280.us
                                        #   Parent Loop BB0_165 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$t8, $t1, .LBB0_150
# %bb.173:                              #   in Loop: Header=BB0_172 Depth=2
	ld.w	$t2, $t1, -4
	beqz	$t2, .LBB0_177
# %bb.174:                              #   in Loop: Header=BB0_172 Depth=2
	bltz	$t2, .LBB0_170
# %bb.175:                              #   in Loop: Header=BB0_172 Depth=2
	bgtz	$a5, .LBB0_169
# %bb.176:                              #   in Loop: Header=BB0_172 Depth=2
	addi.w	$t2, $a2, 5
	andi	$a5, $t2, 7
	b	.LBB0_171
.LBB0_177:                              # %.critedge7.us
                                        #   in Loop: Header=BB0_165 Depth=1
	move	$t0, $a7
	bgeu	$a4, $s1, .LBB0_165
	b	.LBB0_150
.LBB0_178:                              # %.lr.ph1311.split
	lu12i.w	$a3, -262399
	ori	$a3, $a3, 823
	sltu	$a2, $a3, $a2
	sub.d	$a2, $zero, $a2
	addi.d	$a4, $t7, 4
	add.d	$a5, $a4, $a6
.LBB0_179:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_183 Depth 2
	addi.d	$a6, $t0, 4
	bltu	$t8, $a6, .LBB0_150
# %bb.180:                              #   in Loop: Header=BB0_179 Depth=1
	ld.w	$a7, $t0, 0
	beqz	$a7, .LBB0_187
# %bb.181:                              #   in Loop: Header=BB0_179 Depth=1
	blt	$a7, $s2, .LBB0_150
# %bb.182:                              # %.lr.ph1280.preheader
                                        #   in Loop: Header=BB0_179 Depth=1
	add.d	$a7, $a4, $a7
	move	$t0, $a7
.LBB0_183:                              # %.lr.ph1280
                                        #   Parent Loop BB0_179 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bltu	$t8, $t0, .LBB0_150
# %bb.184:                              #   in Loop: Header=BB0_183 Depth=2
	ld.w	$t1, $t0, -4
	beqz	$t1, .LBB0_186
# %bb.185:                              #   in Loop: Header=BB0_183 Depth=2
	ld.w	$t1, $a1, 0
	add.w	$t1, $t1, $s7
	sltu	$t1, $t1, $a3
	add.d	$t2, $t4, $a2
	sub.d	$t1, $t2, $t1
	rotri.w	$t4, $t1, 3
	addi.d	$t0, $t0, 4
	bgeu	$a7, $s1, .LBB0_183
	b	.LBB0_150
.LBB0_186:                              # %.critedge7
                                        #   in Loop: Header=BB0_179 Depth=1
	move	$t0, $a6
	bgeu	$a5, $s1, .LBB0_179
	b	.LBB0_150
.LBB0_187:                              # %.critedge.thread
	move	$s8, $t5
	add.w	$fp, $t4, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
.LBB0_188:
	move	$a1, $fp
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_189:
	ld.wu	$a2, $s5, 12
	ori	$s0, $zero, 1
	addi.w	$a0, $a2, -1
	st.w	$zero, $s5, 8
	bgeu	$a0, $s4, .LBB0_192
# %bb.190:
	addi.w	$a0, $a2, 0
	bltu	$s4, $a0, .LBB0_192
# %bb.191:
	ld.wu	$a0, $s5, 0
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	add.d	$a1, $a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB0_192:
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	bne	$s8, $s0, .LBB0_199
.LBB0_193:                              # %.lr.ph1335.preheader
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$s3, $zero
	move	$s0, $zero
	ori	$a0, $zero, 1
	slt	$a1, $a0, $s8
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s8, $a1
	or	$a0, $a1, $a0
	slli.d	$a1, $a0, 5
	alsl.d	$s4, $a0, $a1, 2
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$s2, $a0, %pc_lo12(.L.str.3)
	.p2align	4, , 16
.LBB0_194:                              # %.lr.ph1335
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $s5, $s3
	ldx.w	$a2, $s5, $s3
	ld.w	$a3, $a0, 4
	ld.w	$a4, $a0, 8
	ld.w	$a5, $a0, 12
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 36
	addi.w	$s0, $s0, 1
	bne	$s4, $s3, .LBB0_194
# %bb.195:                              # %._crit_edge1336
	move	$a0, $s1
	move	$a1, $s5
	move	$a2, $s8
	move	$a3, $s7
	move	$a4, $fp
	ld.d	$a5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
	move	$a7, $s6
	pcaddu18i	$ra, %call36(cli_rebuildpe)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_204
# %bb.196:
	move	$s0, $zero
.LBB0_197:                              # %.thread1059.sink.split
	move	$a0, $s5
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB0_198:                              # %.thread1059
	move	$a0, $s0
	ld.d	$s8, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.LBB0_199:                              # %.lr.ph1331.peel.next.preheader
	slt	$a0, $s0, $s8
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $s8, $a0
	or	$a0, $a0, $a1
	addi.d	$s0, $s5, 48
	addi.d	$s2, $a0, -1
	b	.LBB0_201
	.p2align	4, , 16
.LBB0_200:                              #   in Loop: Header=BB0_201 Depth=1
	addi.d	$s2, $s2, -1
	addi.d	$s0, $s0, 36
	beqz	$s2, .LBB0_193
.LBB0_201:                              # %.lr.ph1331.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $s0, -40
	ld.w	$a1, $s0, -36
	ld.wu	$a2, $s0, 0
	add.w	$a0, $a1, $a0
	addi.w	$a1, $a2, -1
	st.w	$a0, $s0, -4
	bgeu	$a1, $s4, .LBB0_200
# %bb.202:                              #   in Loop: Header=BB0_201 Depth=1
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$a0, $s1, $a0
	add.d	$a1, $a0, $a2
	bltu	$a3, $a1, .LBB0_200
# %bb.203:                              #   in Loop: Header=BB0_201 Depth=1
	ld.wu	$a1, $s0, -12
	ld.d	$a3, $sp, 264                   # 8-byte Folded Reload
	add.d	$a1, $a3, $a1
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.d	$a3, $sp, 272                   # 8-byte Folded Reload
	b	.LBB0_200
.LBB0_204:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
.LBB0_205:                              # %.thread1059.sink.split.sink.split
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_140
.Lfunc_end0:
	.size	petite_inflate2x_1to9, .Lfunc_end0-petite_inflate2x_1to9
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Petite: Old EP: %x\n"
	.size	.L.str, 20

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Petite: In troubles while attempting to decrypt old EP, using bogus %x\n"
	.size	.L.str.1, 72

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Petite: Sections dump:\n"
	.size	.L.str.2, 24

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Petite: .SECT%d RVA:%x VSize:%x ROffset: %x, RSize:%x\n"
	.size	.L.str.3, 55

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Petite: Rebuilding failed\n"
	.size	.L.str.4, 27

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Petite: maximum number of sections exceeded, giving up.\n"
	.size	.L.str.5, 57

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Petite: Found petite code in sect%d(%x). Let's strip it.\n"
	.size	.L.str.6, 58

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Petite: Encrypted EP: %x | Array of imports: %x\n"
	.size	.L.str.7, 49

	.section	".note.GNU-stack","",@progbits
	.addrsig
