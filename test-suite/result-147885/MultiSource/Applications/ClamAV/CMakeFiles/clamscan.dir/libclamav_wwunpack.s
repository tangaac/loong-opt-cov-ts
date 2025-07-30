	.file	"libclamav_wwunpack.c"
	.text
	.globl	wwunpack                        # -- Begin function wwunpack
	.p2align	5
	.type	wwunpack,@function
wwunpack:                               # @wwunpack
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
	move	$s1, $a7
	move	$s2, $a6
	move	$s7, $a5
	move	$s4, $a4
	move	$s5, $a3
	move	$s3, $a2
	move	$s6, $a1
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 17
	bgeu	$s1, $a0, .LBB0_2
.LBB0_1:                                # %.split152
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	b	.LBB0_224
.LBB0_2:                                # %.split
	beqz	$s6, .LBB0_227
# %bb.3:                                # %.split.split.preheader
	ld.d	$s8, $sp, 272
	add.w	$a1, $s6, $s5
	bstrpick.d	$a0, $s1, 31, 0
	add.d	$a2, $s2, $a0
	bstrpick.d	$a0, $s3, 31, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	add.d	$a0, $fp, $a0
	bstrpick.d	$a3, $s5, 31, 0
	sub.d	$a0, $a0, $a3
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	bstrpick.d	$a0, $s6, 31, 0
	add.d	$a0, $fp, $a0
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a4, $s2, 673
	lu12i.w	$a0, 1
	ori	$a0, $a0, 4065
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	lu12i.w	$a0, 5
	ori	$a0, $a0, 4065
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	move	$a5, $a4
.LBB0_4:                                # %.split.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_16 Depth 2
                                        #       Child Loop BB0_213 Depth 3
                                        #       Child Loop BB0_217 Depth 3
	bltu	$a4, $s2, .LBB0_1
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	addi.d	$a6, $a5, 17
	bltu	$a2, $a6, .LBB0_1
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	ld.w	$s0, $a5, 8
	ld.w	$a0, $a5, 12
	slli.d	$fp, $s0, 2
	addi.w	$a7, $fp, 0
	addi.w	$a0, $a0, 4
	st.d	$a7, $sp, 128                   # 8-byte Folded Spill
	bne	$a7, $a0, .LBB0_231
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	st.d	$a4, $sp, 48                    # 8-byte Folded Spill
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$a5, $sp, 40                    # 8-byte Folded Spill
	ld.w	$s4, $a5, 0
	bstrpick.d	$s3, $fp, 31, 0
	ori	$a1, $zero, 1
	move	$a0, $s3
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_232
# %bb.8:                                #   in Loop: Header=BB0_4 Depth=1
	move	$s7, $a0
	beqz	$s0, .LBB0_230
# %bb.9:                                #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bltu	$s6, $a0, .LBB0_230
# %bb.10:                               #   in Loop: Header=BB0_4 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	sub.w	$fp, $a0, $s4
	bstrpick.d	$a1, $fp, 31, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	bltu	$a0, $a2, .LBB0_230
# %bb.11:                               #   in Loop: Header=BB0_4 Depth=1
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	add.d	$s5, $a3, $a1
	add.d	$a1, $s5, $s3
	ld.d	$a3, $sp, 136                   # 8-byte Folded Reload
	bltu	$a3, $a1, .LBB0_230
# %bb.12:                               #   in Loop: Header=BB0_4 Depth=1
	sub.d	$a0, $a0, $a2
	or	$a0, $a0, $s3
	beqz	$a0, .LBB0_230
# %bb.13:                               #   in Loop: Header=BB0_4 Depth=1
	st.d	$s8, $sp, 16                    # 8-byte Folded Spill
	move	$a0, $s7
	move	$a1, $s5
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.w	$fp, $a0, $fp
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
	sub.w	$t7, $t0, $fp
	addi.d	$a1, $s7, 4
	ld.w	$a0, $s7, 0
	st.d	$a1, $sp, 176
	add.d	$s3, $s7, $s3
	bstrpick.d	$a1, $t7, 31, 0
	add.d	$s8, $s5, $a1
	ori	$a2, $zero, 32
	move	$s4, $s5
	ori	$t1, $zero, 1
	ori	$t2, $zero, 32
	ori	$t3, $zero, 3
	ori	$t4, $zero, 2
	ori	$t5, $zero, 4
	ori	$t6, $zero, 511
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_14:                               #   in Loop: Header=BB0_16 Depth=2
	ld.b	$a0, $a0, 0
	st.d	$a2, $sp, 176
	st.b	$a0, $s4, 0
.LBB0_15:                               # %thread-pre-split.i
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a0, $sp, 172
	ld.bu	$a2, $sp, 167
	move	$s4, $a1
.LBB0_16:                               #   Parent Loop BB0_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_213 Depth 3
                                        #       Child Loop BB0_217 Depth 3
	slli.d	$a3, $a0, 1
	st.w	$a3, $sp, 172
	addi.d	$a1, $a2, -1
	st.b	$a1, $sp, 167
	andi	$a4, $a1, 255
	bltz	$a0, .LBB0_23
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=2
	beqz	$a4, .LBB0_23
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a0, $sp, 176
	bltu	$a0, $s7, .LBB0_223
# %bb.19:                               #   in Loop: Header=BB0_16 Depth=2
	beq	$t0, $fp, .LBB0_223
# %bb.20:                               #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a2, $a0, 1
	bltu	$s3, $a2, .LBB0_223
# %bb.21:                               #   in Loop: Header=BB0_16 Depth=2
	bltu	$s4, $s5, .LBB0_223
# %bb.22:                               #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a1, $s4, 1
	bgeu	$s8, $a1, .LBB0_14
	b	.LBB0_223
	.p2align	4, , 16
.LBB0_23:                               #   in Loop: Header=BB0_16 Depth=2
	beqz	$a4, .LBB0_30
# %bb.24:                               #   in Loop: Header=BB0_16 Depth=2
	bstrpick.d	$a0, $a3, 31, 30
	bltu	$t4, $a4, .LBB0_43
# %bb.25:                               #   in Loop: Header=BB0_16 Depth=2
	bne	$a4, $t4, .LBB0_38
# %bb.26:                               #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a1, $sp, 176
	bltu	$a1, $s7, .LBB0_223
# %bb.27:                               #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a2, $a1, 4
	bltu	$s3, $a2, .LBB0_223
# %bb.28:                               # %.thread531.i
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a3, $a1, 0
	st.d	$a2, $sp, 176
	addi.w	$a1, $a0, 0
	st.b	$t2, $sp, 167
	bne	$a1, $t3, .LBB0_75
# %bb.29:                               # %.thread532.i
                                        #   in Loop: Header=BB0_16 Depth=2
	bstrpick.d	$a0, $a3, 31, 30
	st.w	$a0, $sp, 168
	ori	$a4, $zero, 32
	b	.LBB0_45
.LBB0_30:                               #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a1, $sp, 176
	bltu	$a1, $s7, .LBB0_223
# %bb.31:                               #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a2, $a1, 4
	bltu	$s3, $a2, .LBB0_223
# %bb.32:                               #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a3, $a1, 0
	st.w	$a3, $sp, 172
	st.d	$a2, $sp, 176
	st.b	$t2, $sp, 167
	addi.w	$a4, $zero, -1
	st.w	$a3, $sp, 168
	bge	$a4, $a0, .LBB0_42
# %bb.33:                               #   in Loop: Header=BB0_16 Depth=2
	beq	$t0, $fp, .LBB0_223
# %bb.34:                               #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a0, $a1, 5
	bltu	$s3, $a0, .LBB0_223
# %bb.35:                               #   in Loop: Header=BB0_16 Depth=2
	bltu	$s4, $s5, .LBB0_223
# %bb.36:                               #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a1, $s4, 1
	bltu	$s8, $a1, .LBB0_223
# %bb.37:                               #   in Loop: Header=BB0_16 Depth=2
	ld.b	$a2, $a2, 0
	st.d	$a0, $sp, 176
	st.b	$a2, $s4, 0
	b	.LBB0_15
.LBB0_38:                               #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a1, $sp, 176
	bltu	$a1, $s7, .LBB0_223
# %bb.39:                               #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a3, $a1, 4
	bltu	$s3, $a3, .LBB0_223
# %bb.40:                               # %.thread
                                        #   in Loop: Header=BB0_16 Depth=2
	sub.d	$a2, $t3, $a2
	andi	$a4, $a2, 255
	ld.wu	$a1, $a1, 0
	srl.w	$a0, $a0, $a2
	st.d	$a3, $sp, 176
	slli.d	$a0, $a0, 32
	or	$a0, $a0, $a1
	andi	$a2, $a4, 31
	sll.d	$a0, $a0, $a2
	bstrpick.d	$a0, $a0, 39, 32
	sll.w	$a3, $a1, $a4
	bgeu	$t4, $a0, .LBB0_81
# %bb.41:                               # %.thread125
                                        #   in Loop: Header=BB0_16 Depth=2
	bstrpick.d	$a0, $a3, 31, 30
	ori	$a4, $zero, 31
	b	.LBB0_45
.LBB0_42:                               # %.thread.i
                                        #   in Loop: Header=BB0_16 Depth=2
	bstrpick.d	$a0, $a3, 31, 30
	ori	$a1, $zero, 32
.LBB0_43:                               #   in Loop: Header=BB0_16 Depth=2
	slli.d	$a3, $a3, 2
	addi.d	$a4, $a1, -2
	addi.w	$a2, $a0, 0
	andi	$a5, $a4, 255
	bne	$a2, $t3, .LBB0_48
# %bb.44:                               #   in Loop: Header=BB0_16 Depth=2
	bstrpick.d	$a0, $a3, 31, 30
	bltu	$a5, $t3, .LBB0_60
.LBB0_45:                               #   in Loop: Header=BB0_16 Depth=2
	slli.d	$a3, $a3, 2
	addi.d	$a1, $a4, -2
.LBB0_46:                               #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a2, $a0, -1
	ext.w.h	$a2, $a2
	blez	$a2, .LBB0_53
# %bb.47:                               #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a4, $a0, 6
	andi	$a5, $a4, 255
	sll.w	$a0, $t1, $a4
	addu16i.d	$a0, $a0, 1
	addi.w	$a0, $a0, -159
	b	.LBB0_54
.LBB0_48:                               #   in Loop: Header=BB0_16 Depth=2
	bstrpick.d	$a2, $a3, 31, 29
	bgeu	$a5, $t5, .LBB0_76
# %bb.49:                               #   in Loop: Header=BB0_16 Depth=2
	bne	$a5, $t3, .LBB0_89
# %bb.50:                               #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a1, $sp, 176
	bltu	$a1, $s7, .LBB0_223
# %bb.51:                               #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a4, $a1, 4
	bltu	$s3, $a4, .LBB0_223
# %bb.52:                               # %getbitmap.exit41.i335.i
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a3, $a1, 0
	st.d	$a4, $sp, 176
	ori	$a1, $zero, 32
	andi	$a4, $a2, 255
	bgeu	$t3, $a4, .LBB0_77
	b	.LBB0_82
.LBB0_53:                               #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a4, $a0, 5
	andi	$a5, $a4, 255
	sll.w	$a2, $t1, $a4
	addi.d	$a0, $a2, 225
	bstrpick.d	$a2, $a2, 15, 8
	bstrins.d	$a0, $a2, 63, 8
.LBB0_54:                               #   in Loop: Header=BB0_16 Depth=2
	sub.d	$a2, $t2, $a5
	andi	$a6, $a1, 255
	andi	$a7, $a4, 255
	srl.w	$a2, $a3, $a2
	bgeu	$a7, $a6, .LBB0_56
# %bb.55:                               #   in Loop: Header=BB0_16 Depth=2
	sll.w	$a3, $a3, $a5
	st.w	$a3, $sp, 172
	sub.d	$a1, $a1, $a4
	b	.LBB0_67
.LBB0_56:                               #   in Loop: Header=BB0_16 Depth=2
	bgeu	$a6, $a7, .LBB0_64
# %bb.57:                               #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a3, $sp, 176
	bltu	$a3, $s7, .LBB0_223
# %bb.58:                               #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a5, $a3, 4
	bltu	$s3, $a5, .LBB0_223
# %bb.59:                               #   in Loop: Header=BB0_16 Depth=2
	sub.d	$a1, $a4, $a1
	andi	$a4, $a1, 255
	ld.w	$a3, $a3, 0
	st.d	$a5, $sp, 176
	addi.d	$a5, $zero, -1
	sll.w	$a5, $a5, $a4
	and	$a2, $a5, $a2
	sub.d	$a5, $t2, $a4
	srl.w	$a5, $a3, $a5
	or	$a2, $a5, $a2
	sll.w	$a3, $a3, $a4
	st.w	$a3, $sp, 172
	sub.d	$a1, $t2, $a1
	b	.LBB0_67
.LBB0_60:                               #   in Loop: Header=BB0_16 Depth=2
	bne	$a5, $t4, .LBB0_92
# %bb.61:                               #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a1, $sp, 176
	bltu	$a1, $s7, .LBB0_223
# %bb.62:                               #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a2, $a1, 4
	bltu	$s3, $a2, .LBB0_223
# %bb.63:                               # %getbitmap.exit41.i311.i
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a3, $a1, 0
	st.d	$a2, $sp, 176
	ori	$a1, $zero, 32
	b	.LBB0_46
.LBB0_64:                               #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a1, $sp, 176
	bltu	$a1, $s7, .LBB0_223
# %bb.65:                               #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a3, $a1, 4
	bltu	$s3, $a3, .LBB0_223
# %bb.66:                               # %getbitmap.exit41.i323.i
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a1, $a1, 0
	st.w	$a1, $sp, 172
	st.d	$a3, $sp, 176
	ori	$a1, $zero, 32
.LBB0_67:                               #   in Loop: Header=BB0_16 Depth=2
	bstrpick.d	$a3, $a2, 15, 0
	st.b	$a1, $sp, 167
	beq	$a3, $t6, .LBB0_218
# %bb.68:                               #   in Loop: Header=BB0_16 Depth=2
	st.w	$a3, $sp, 168
	bltu	$t7, $t4, .LBB0_223
# %bb.69:                               #   in Loop: Header=BB0_16 Depth=2
	add.d	$a0, $a2, $a0
	bstrpick.d	$a0, $a0, 15, 0
	sub.d	$a1, $s4, $a0
	bltu	$a1, $s5, .LBB0_223
# %bb.70:                               #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a1, $a1, 2
	bltu	$s8, $a1, .LBB0_223
# %bb.71:                               #   in Loop: Header=BB0_16 Depth=2
	bgeu	$s5, $a1, .LBB0_223
# %bb.72:                               #   in Loop: Header=BB0_16 Depth=2
	bltu	$s4, $s5, .LBB0_223
# %bb.73:                               #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a1, $s4, 2
	bltu	$s8, $a1, .LBB0_223
# %bb.74:                               #   in Loop: Header=BB0_16 Depth=2
	sub.d	$a0, $zero, $a0
	ldx.b	$a2, $s4, $a0
	st.b	$a2, $s4, 0
	addi.d	$a2, $s4, 1
	ldx.b	$a0, $a2, $a0
	st.b	$a0, $s4, 1
	b	.LBB0_15
.LBB0_75:                               # %.thread533.i
                                        #   in Loop: Header=BB0_16 Depth=2
	bstrpick.d	$a2, $a3, 31, 29
	st.w	$a2, $sp, 168
	ori	$a4, $zero, 32
.LBB0_76:                               #   in Loop: Header=BB0_16 Depth=2
	slli.d	$a3, $a3, 3
	addi.d	$a1, $a4, -3
	andi	$a4, $a2, 255
	bltu	$t3, $a4, .LBB0_82
.LBB0_77:                               #   in Loop: Header=BB0_16 Depth=2
	bne	$a4, $t3, .LBB0_80
# %bb.78:                               #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a1, $a1, -1
	andi	$a5, $a1, 255
	bstrpick.d	$a4, $a3, 31, 31
	beqz	$a5, .LBB0_95
# %bb.79:                               #   in Loop: Header=BB0_16 Depth=2
	slli.d	$a3, $a3, 1
	b	.LBB0_98
.LBB0_80:                               #   in Loop: Header=BB0_16 Depth=2
	move	$a4, $zero
	b	.LBB0_98
.LBB0_81:                               # %.thread126
                                        #   in Loop: Header=BB0_16 Depth=2
	bstrpick.d	$a2, $a3, 31, 29
	ori	$a4, $zero, 31
	slli.d	$a3, $a3, 3
	addi.d	$a1, $a4, -3
	andi	$a4, $a2, 255
	bgeu	$t3, $a4, .LBB0_77
.LBB0_82:                               #   in Loop: Header=BB0_16 Depth=2
	bne	$a4, $t5, .LBB0_85
# %bb.83:                               #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a1, $a1, -1
	andi	$a4, $a1, 255
	beqz	$a4, .LBB0_99
# %bb.84:                               #   in Loop: Header=BB0_16 Depth=2
	slli.d	$a4, $a3, 1
	b	.LBB0_102
.LBB0_85:                               #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a6, $a2, 7
	andi	$a2, $a6, 255
	ori	$a4, $zero, 13
	bltu	$a2, $a4, .LBB0_103
# %bb.86:                               #   in Loop: Header=BB0_16 Depth=2
	bne	$a2, $a4, .LBB0_133
# %bb.87:                               #   in Loop: Header=BB0_16 Depth=2
	andi	$a2, $a1, 255
	bstrpick.d	$a4, $a3, 31, 18
	ori	$a5, $zero, 15
	bltu	$a2, $a5, .LBB0_138
# %bb.88:                               #   in Loop: Header=BB0_16 Depth=2
	slli.d	$a2, $a3, 14
	st.w	$a2, $sp, 172
	addi.d	$a1, $a1, -14
	b	.LBB0_158
.LBB0_89:                               #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a3, $sp, 176
	bltu	$a3, $s7, .LBB0_223
# %bb.90:                               #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a4, $a3, 4
	bltu	$s3, $a4, .LBB0_223
# %bb.91:                               #   in Loop: Header=BB0_16 Depth=2
	ori	$a5, $zero, 5
	sub.d	$a5, $a5, $a1
	andi	$a6, $a5, 255
	ld.wu	$a3, $a3, 0
	srl.w	$a2, $a2, $a5
	st.d	$a4, $sp, 176
	slli.d	$a2, $a2, 32
	or	$a2, $a2, $a3
	andi	$a4, $a6, 31
	sll.d	$a2, $a2, $a4
	srli.d	$a2, $a2, 32
	sll.w	$a3, $a3, $a6
	addi.d	$a1, $a1, 27
	andi	$a4, $a2, 255
	bgeu	$t3, $a4, .LBB0_77
	b	.LBB0_82
.LBB0_92:                               #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a2, $sp, 176
	bltu	$a2, $s7, .LBB0_223
# %bb.93:                               #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a3, $a2, 4
	bltu	$s3, $a3, .LBB0_223
# %bb.94:                               #   in Loop: Header=BB0_16 Depth=2
	sub.d	$a1, $t5, $a1
	andi	$a4, $a1, 255
	ld.wu	$a2, $a2, 0
	srl.w	$a0, $a0, $a1
	st.d	$a3, $sp, 176
	slli.d	$a0, $a0, 32
	or	$a0, $a0, $a2
	andi	$a1, $a4, 31
	sll.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 32
	sll.w	$a3, $a2, $a4
	ori	$a1, $zero, 31
	b	.LBB0_46
.LBB0_95:                               #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a1, $sp, 176
	bltu	$a1, $s7, .LBB0_223
# %bb.96:                               #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a5, $a1, 4
	bltu	$s3, $a5, .LBB0_223
# %bb.97:                               # %getbitmap.exit348.i
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a3, $a1, 0
	st.d	$a5, $sp, 176
	ori	$a1, $zero, 32
.LBB0_98:                               #   in Loop: Header=BB0_16 Depth=2
	add.d	$a2, $a2, $a4
	addi.d	$a6, $a2, 5
	b	.LBB0_103
.LBB0_99:                               #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a1, $sp, 176
	bltu	$a1, $s7, .LBB0_223
# %bb.100:                              #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a5, $a1, 4
	bltu	$s3, $a5, .LBB0_223
# %bb.101:                              # %getbitmap.exit353.i
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a4, $a1, 0
	st.d	$a5, $sp, 176
	ori	$a1, $zero, 32
.LBB0_102:                              #   in Loop: Header=BB0_16 Depth=2
	bstrpick.d	$a3, $a3, 31, 31
	add.d	$a2, $a2, $a3
	addi.d	$a6, $a2, 6
	move	$a3, $a4
.LBB0_103:                              # %.critedge.i
                                        #   in Loop: Header=BB0_16 Depth=2
	andi	$a4, $a6, 255
	sub.d	$a5, $t2, $a4
	andi	$a2, $a1, 255
	srl.w	$a5, $a3, $a5
	bgeu	$a4, $a2, .LBB0_105
# %bb.104:                              #   in Loop: Header=BB0_16 Depth=2
	sll.w	$a2, $a3, $a4
	st.w	$a2, $sp, 172
	sub.d	$a1, $a1, $a6
	b	.LBB0_112
.LBB0_105:                              #   in Loop: Header=BB0_16 Depth=2
	bgeu	$a2, $a4, .LBB0_109
# %bb.106:                              #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a2, $sp, 176
	bltu	$a2, $s7, .LBB0_223
# %bb.107:                              #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a3, $a2, 4
	bltu	$s3, $a3, .LBB0_223
# %bb.108:                              #   in Loop: Header=BB0_16 Depth=2
	sub.d	$a1, $a6, $a1
	andi	$a6, $a1, 255
	ld.w	$a2, $a2, 0
	st.d	$a3, $sp, 176
	addi.d	$a3, $zero, -1
	sll.w	$a3, $a3, $a6
	and	$a3, $a3, $a5
	sub.d	$a5, $t2, $a6
	srl.w	$a5, $a2, $a5
	or	$a5, $a5, $a3
	sll.w	$a2, $a2, $a6
	st.w	$a2, $sp, 172
	sub.d	$a1, $t2, $a1
	b	.LBB0_112
.LBB0_109:                              #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a1, $sp, 176
	bltu	$a1, $s7, .LBB0_223
# %bb.110:                              #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a3, $a1, 4
	bltu	$s3, $a3, .LBB0_223
# %bb.111:                              # %getbitmap.exit41.i381.i
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a2, $a1, 0
	st.w	$a2, $sp, 172
	st.d	$a3, $sp, 176
	ori	$a1, $zero, 32
.LBB0_112:                              #   in Loop: Header=BB0_16 Depth=2
	st.b	$a1, $sp, 167
	sll.w	$a3, $t1, $a4
	add.d	$a3, $a3, $a5
	addu16i.d	$a3, $a3, 1
	addi.w	$a3, $a3, -31
.LBB0_113:                              #   in Loop: Header=BB0_16 Depth=2
	bstrpick.d	$s0, $a3, 15, 0
	addi.w	$a0, $a0, 0
	st.w	$s0, $sp, 168
	beqz	$a0, .LBB0_115
# %bb.114:                              #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a0, $a0, -1
	sltui	$a0, $a0, 1
	sub.d	$a0, $t5, $a0
	b	.LBB0_202
.LBB0_115:                              #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a4, $a1, -1
	andi	$a5, $a4, 255
	beqz	$a5, .LBB0_121
# %bb.116:                              #   in Loop: Header=BB0_16 Depth=2
	addi.w	$a0, $a2, 0
	addi.w	$a6, $zero, -1
	slli.d	$a3, $a2, 1
	bge	$a6, $a0, .LBB0_127
# %bb.117:                              #   in Loop: Header=BB0_16 Depth=2
	bstrpick.d	$a0, $a3, 31, 31
	slli.d	$a2, $a2, 2
	st.w	$a2, $sp, 172
	addi.d	$a1, $a1, -2
	andi	$a2, $a1, 255
	st.b	$a1, $sp, 167
	bnez	$a2, .LBB0_126
# %bb.118:                              #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a1, $sp, 176
	bltu	$a1, $s7, .LBB0_223
# %bb.119:                              #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a2, $a1, 4
	bltu	$s3, $a2, .LBB0_223
# %bb.120:                              # %getbitmap.exit399.i
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a1, $a1, 0
	st.w	$a1, $sp, 172
	st.d	$a2, $sp, 176
	ori	$a1, $zero, 32
	b	.LBB0_125
.LBB0_121:                              #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a0, $sp, 176
	bltu	$a0, $s7, .LBB0_223
# %bb.122:                              #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a1, $a0, 4
	bltu	$s3, $a1, .LBB0_223
# %bb.123:                              # %.thread534.i
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a3, $a0, 0
	addi.w	$a0, $a2, 0
	st.d	$a1, $sp, 176
	bltz	$a0, .LBB0_135
# %bb.124:                              # %.thread540.i
                                        #   in Loop: Header=BB0_16 Depth=2
	bstrpick.d	$a0, $a3, 31, 31
	slli.d	$a1, $a3, 1
	st.w	$a1, $sp, 172
	ori	$a1, $zero, 31
.LBB0_125:                              # %.sink.split.i
                                        #   in Loop: Header=BB0_16 Depth=2
	st.b	$a1, $sp, 167
.LBB0_126:                              #   in Loop: Header=BB0_16 Depth=2
	addi.w	$a0, $a0, 5
	b	.LBB0_201
.LBB0_127:                              #   in Loop: Header=BB0_16 Depth=2
	bstrpick.d	$a0, $a3, 31, 29
	bgeu	$a5, $t5, .LBB0_136
# %bb.128:                              #   in Loop: Header=BB0_16 Depth=2
	bne	$a5, $t3, .LBB0_146
# %bb.129:                              #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a1, $sp, 176
	bltu	$a1, $s7, .LBB0_223
# %bb.130:                              #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a4, $a1, 4
	bltu	$s3, $a4, .LBB0_223
# %bb.131:                              # %.thread537.i
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a2, $a1, 0
	st.w	$a2, $sp, 172
	st.d	$a4, $sp, 176
	bstrpick.d	$a1, $a3, 31, 29
	st.b	$t2, $sp, 167
	bnez	$a1, .LBB0_137
# %bb.132:                              # %.thread539.i
                                        #   in Loop: Header=BB0_16 Depth=2
	bstrpick.d	$a0, $a2, 31, 28
	st.w	$a0, $sp, 168
	ori	$a1, $zero, 32
	b	.LBB0_150
.LBB0_133:                              #   in Loop: Header=BB0_16 Depth=2
	andi	$a2, $a1, 255
	bstrpick.d	$a4, $a3, 31, 17
	ori	$a5, $zero, 16
	bltu	$a2, $a5, .LBB0_142
# %bb.134:                              #   in Loop: Header=BB0_16 Depth=2
	slli.d	$a2, $a3, 15
	st.w	$a2, $sp, 172
	addi.d	$a1, $a1, -15
	b	.LBB0_162
.LBB0_135:                              # %.thread536.i
                                        #   in Loop: Header=BB0_16 Depth=2
	bstrpick.d	$a0, $a3, 31, 29
	ori	$a4, $zero, 32
.LBB0_136:                              #   in Loop: Header=BB0_16 Depth=2
	slli.d	$a2, $a3, 3
	st.w	$a2, $sp, 172
	addi.d	$a1, $a4, -3
	andi	$a3, $a0, 255
	st.b	$a1, $sp, 167
	beqz	$a3, .LBB0_149
.LBB0_137:                              #   in Loop: Header=BB0_16 Depth=2
	addi.w	$a0, $a0, 6
	b	.LBB0_201
.LBB0_138:                              #   in Loop: Header=BB0_16 Depth=2
	ori	$a3, $zero, 14
	bne	$a2, $a3, .LBB0_155
# %bb.139:                              #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a1, $sp, 176
	bltu	$a1, $s7, .LBB0_223
# %bb.140:                              #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a3, $a1, 4
	bltu	$s3, $a3, .LBB0_223
# %bb.141:                              # %getbitmap.exit41.i357.i
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a2, $a1, 0
	st.w	$a2, $sp, 172
	st.d	$a3, $sp, 176
	ori	$a1, $zero, 32
	b	.LBB0_158
.LBB0_142:                              #   in Loop: Header=BB0_16 Depth=2
	ori	$a3, $zero, 15
	bne	$a2, $a3, .LBB0_159
# %bb.143:                              #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a1, $sp, 176
	bltu	$a1, $s7, .LBB0_223
# %bb.144:                              #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a3, $a1, 4
	bltu	$s3, $a3, .LBB0_223
# %bb.145:                              # %getbitmap.exit41.i369.i
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a2, $a1, 0
	st.w	$a2, $sp, 172
	st.d	$a3, $sp, 176
	ori	$a1, $zero, 32
	b	.LBB0_162
.LBB0_146:                              #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a2, $sp, 176
	bltu	$a2, $s7, .LBB0_223
# %bb.147:                              #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a3, $a2, 4
	bltu	$s3, $a3, .LBB0_223
# %bb.148:                              #   in Loop: Header=BB0_16 Depth=2
	sub.d	$a4, $t5, $a1
	andi	$a5, $a4, 255
	ld.wu	$a2, $a2, 0
	srl.w	$a0, $a0, $a4
	st.d	$a3, $sp, 176
	slli.d	$a0, $a0, 32
	or	$a0, $a0, $a2
	andi	$a3, $a5, 31
	sll.d	$a0, $a0, $a3
	srli.d	$a0, $a0, 32
	sll.w	$a2, $a2, $a5
	st.w	$a2, $sp, 172
	addi.d	$a1, $a1, 28
	andi	$a3, $a0, 255
	st.b	$a1, $sp, 167
	bnez	$a3, .LBB0_137
.LBB0_149:                              #   in Loop: Header=BB0_16 Depth=2
	bstrpick.d	$a0, $a2, 31, 28
	andi	$a3, $a1, 255
	st.w	$a0, $sp, 168
	ori	$a4, $zero, 5
	bltu	$a3, $a4, .LBB0_151
.LBB0_150:                              #   in Loop: Header=BB0_16 Depth=2
	slli.w	$a3, $a2, 4
	st.w	$a3, $sp, 172
	addi.d	$a1, $a1, -4
	b	.LBB0_166
.LBB0_151:                              #   in Loop: Header=BB0_16 Depth=2
	bne	$a3, $t5, .LBB0_163
# %bb.152:                              #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a1, $sp, 176
	bltu	$a1, $s7, .LBB0_223
# %bb.153:                              #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a2, $a1, 4
	bltu	$s3, $a2, .LBB0_223
# %bb.154:                              # %getbitmap.exit41.i415.i
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a3, $a1, 0
	st.w	$a3, $sp, 172
	st.d	$a2, $sp, 176
	ori	$a1, $zero, 32
	b	.LBB0_166
.LBB0_155:                              #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a2, $sp, 176
	bltu	$a2, $s7, .LBB0_223
# %bb.156:                              #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a3, $a2, 4
	bltu	$s3, $a3, .LBB0_223
# %bb.157:                              #   in Loop: Header=BB0_16 Depth=2
	ori	$a5, $zero, 14
	sub.d	$a5, $a5, $a1
	andi	$a6, $a5, 255
	ld.wu	$a2, $a2, 0
	srl.w	$a4, $a4, $a5
	st.d	$a3, $sp, 176
	slli.d	$a3, $a4, 32
	or	$a3, $a3, $a2
	andi	$a4, $a6, 31
	sll.d	$a3, $a3, $a4
	srli.d	$a4, $a3, 32
	st.w	$a4, $sp, 168
	sll.w	$a2, $a2, $a6
	st.w	$a2, $sp, 172
	addi.d	$a1, $a1, 18
.LBB0_158:                              #   in Loop: Header=BB0_16 Depth=2
	st.b	$a1, $sp, 167
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	add.w	$a3, $a4, $a3
	b	.LBB0_113
.LBB0_159:                              #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a2, $sp, 176
	bltu	$a2, $s7, .LBB0_223
# %bb.160:                              #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a3, $a2, 4
	bltu	$s3, $a3, .LBB0_223
# %bb.161:                              #   in Loop: Header=BB0_16 Depth=2
	ori	$a5, $zero, 15
	sub.d	$a5, $a5, $a1
	andi	$a6, $a5, 255
	ld.wu	$a2, $a2, 0
	srl.w	$a4, $a4, $a5
	st.d	$a3, $sp, 176
	slli.d	$a3, $a4, 32
	or	$a3, $a3, $a2
	andi	$a4, $a6, 31
	sll.d	$a3, $a3, $a4
	srli.d	$a4, $a3, 32
	st.w	$a4, $sp, 168
	sll.w	$a2, $a2, $a6
	st.w	$a2, $sp, 172
	addi.d	$a1, $a1, 17
.LBB0_162:                              #   in Loop: Header=BB0_16 Depth=2
	st.b	$a1, $sp, 167
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	add.w	$a3, $a4, $a3
	b	.LBB0_113
.LBB0_163:                              #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a2, $sp, 176
	bltu	$a2, $s7, .LBB0_223
# %bb.164:                              #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a3, $a2, 4
	bltu	$s3, $a3, .LBB0_223
# %bb.165:                              #   in Loop: Header=BB0_16 Depth=2
	sub.d	$a4, $t5, $a1
	andi	$a5, $a4, 255
	ld.wu	$a2, $a2, 0
	srl.w	$a0, $a0, $a4
	st.d	$a3, $sp, 176
	slli.d	$a0, $a0, 32
	or	$a0, $a0, $a2
	andi	$a3, $a5, 31
	sll.d	$a0, $a0, $a3
	srli.d	$a0, $a0, 32
	st.w	$a0, $sp, 168
	sll.w	$a3, $a2, $a5
	st.w	$a3, $sp, 172
	addi.d	$a1, $a1, 28
.LBB0_166:                              #   in Loop: Header=BB0_16 Depth=2
	andi	$a2, $a0, 255
	st.b	$a1, $sp, 167
	beqz	$a2, .LBB0_168
# %bb.167:                              #   in Loop: Header=BB0_16 Depth=2
	addi.w	$a0, $a0, 13
	b	.LBB0_201
.LBB0_168:                              # %.preheader488.i
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.d	$a0, $sp, 176
	addi.d	$a1, $a1, -1
	andi	$a2, $a1, 255
	beqz	$a2, .LBB0_170
# %bb.169:                              #   in Loop: Header=BB0_16 Depth=2
	slli.w	$a2, $a3, 1
	b	.LBB0_173
.LBB0_170:                              #   in Loop: Header=BB0_16 Depth=2
	bltu	$a0, $s7, .LBB0_223
# %bb.171:                              #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a4, $a0, 4
	bltu	$s3, $a4, .LBB0_223
# %bb.172:                              # %getbitmap.exit428.i
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a2, $a0, 0
	ori	$a1, $zero, 32
	move	$a0, $a4
.LBB0_173:                              #   in Loop: Header=BB0_16 Depth=2
	bltz	$a3, .LBB0_176
# %bb.174:                              #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a1, $a1, -1
	andi	$a3, $a1, 255
	beqz	$a3, .LBB0_177
# %bb.175:                              #   in Loop: Header=BB0_16 Depth=2
	slli.w	$a4, $a2, 1
	b	.LBB0_180
.LBB0_176:                              #   in Loop: Header=BB0_16 Depth=2
	ori	$a3, $zero, 29
	ori	$a5, $zero, 5
	b	.LBB0_191
.LBB0_177:                              #   in Loop: Header=BB0_16 Depth=2
	bltu	$a0, $s7, .LBB0_223
# %bb.178:                              #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a3, $a0, 4
	bltu	$s3, $a3, .LBB0_223
# %bb.179:                              # %getbitmap.exit428.1.i
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a4, $a0, 0
	ori	$a1, $zero, 32
	move	$a0, $a3
.LBB0_180:                              #   in Loop: Header=BB0_16 Depth=2
	bltz	$a2, .LBB0_183
# %bb.181:                              #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a1, $a1, -1
	andi	$a2, $a1, 255
	beqz	$a2, .LBB0_184
# %bb.182:                              #   in Loop: Header=BB0_16 Depth=2
	slli.d	$a2, $a4, 1
	b	.LBB0_187
.LBB0_183:                              #   in Loop: Header=BB0_16 Depth=2
	ori	$a3, $zero, 61
	ori	$a5, $zero, 6
	move	$a2, $a4
	b	.LBB0_191
.LBB0_184:                              #   in Loop: Header=BB0_16 Depth=2
	bltu	$a0, $s7, .LBB0_223
# %bb.185:                              #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a3, $a0, 4
	bltu	$s3, $a3, .LBB0_223
# %bb.186:                              # %getbitmap.exit428.2.i
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a2, $a0, 0
	ori	$a1, $zero, 32
	move	$a0, $a3
.LBB0_187:                              #   in Loop: Header=BB0_16 Depth=2
	addi.w	$a3, $zero, -1
	bge	$a3, $a4, .LBB0_190
# %bb.188:                              #   in Loop: Header=BB0_16 Depth=2
	st.w	$a2, $sp, 172
	st.b	$a1, $sp, 167
	st.d	$a0, $sp, 176
	ori	$a0, $zero, 14
	addi.d	$a1, $sp, 168
	addi.d	$a2, $sp, 172
	addi.d	$a3, $sp, 167
	addi.d	$a4, $sp, 176
	move	$a5, $s7
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	st.d	$t7, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(getbits)
	jirl	$ra, $ra, 0
	ld.d	$t7, $sp, 8                     # 8-byte Folded Reload
	ori	$t6, $zero, 511
	ori	$t5, $zero, 4
	ori	$t4, $zero, 2
	ori	$t3, $zero, 3
	ori	$t2, $zero, 32
	ori	$t1, $zero, 1
	ld.d	$t0, $sp, 104                   # 8-byte Folded Reload
	bnez	$a0, .LBB0_223
# %bb.189:                              # %..critedge297_crit_edge.i
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a0, $sp, 168
	b	.LBB0_202
.LBB0_190:                              #   in Loop: Header=BB0_16 Depth=2
	ori	$a3, $zero, 125
	ori	$a5, $zero, 7
.LBB0_191:                              #   in Loop: Header=BB0_16 Depth=2
	st.w	$a2, $sp, 172
	st.d	$a0, $sp, 176
	sub.d	$a4, $zero, $a5
	srl.w	$a4, $a2, $a4
	andi	$a6, $a1, 255
	st.w	$a4, $sp, 168
	bgeu	$a5, $a6, .LBB0_193
# %bb.192:                              #   in Loop: Header=BB0_16 Depth=2
	sll.w	$a0, $a2, $a5
	st.w	$a0, $sp, 172
	sub.d	$a0, $a1, $a5
	b	.LBB0_200
.LBB0_193:                              #   in Loop: Header=BB0_16 Depth=2
	bgeu	$a6, $a5, .LBB0_197
# %bb.194:                              #   in Loop: Header=BB0_16 Depth=2
	sub.d	$a1, $a5, $a1
	srl.w	$a2, $a4, $a1
	st.w	$a2, $sp, 168
	bltu	$a0, $s7, .LBB0_223
# %bb.195:                              #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a4, $a0, 4
	bltu	$s3, $a4, .LBB0_223
# %bb.196:                              #   in Loop: Header=BB0_16 Depth=2
	ld.wu	$a0, $a0, 0
	andi	$a5, $a1, 255
	st.d	$a4, $sp, 176
	slli.d	$a2, $a2, 32
	or	$a2, $a2, $a0
	andi	$a4, $a5, 31
	sll.d	$a2, $a2, $a4
	srli.d	$a4, $a2, 32
	sll.w	$a0, $a0, $a5
	st.w	$a0, $sp, 172
	sub.d	$a0, $t2, $a1
	b	.LBB0_200
.LBB0_197:                              #   in Loop: Header=BB0_16 Depth=2
	bltu	$a0, $s7, .LBB0_223
# %bb.198:                              #   in Loop: Header=BB0_16 Depth=2
	addi.d	$a1, $a0, 4
	bltu	$s3, $a1, .LBB0_223
# %bb.199:                              # %getbitmap.exit41.i
                                        #   in Loop: Header=BB0_16 Depth=2
	ld.w	$a0, $a0, 0
	st.w	$a0, $sp, 172
	st.d	$a1, $sp, 176
	ori	$a0, $zero, 32
.LBB0_200:                              #   in Loop: Header=BB0_16 Depth=2
	st.b	$a0, $sp, 167
	add.d	$a0, $a4, $a3
	srli.d	$a1, $a4, 8
	bstrins.d	$a0, $a1, 63, 8
.LBB0_201:                              #   in Loop: Header=BB0_16 Depth=2
	st.w	$a0, $sp, 168
.LBB0_202:                              #   in Loop: Header=BB0_16 Depth=2
	beq	$t0, $fp, .LBB0_223
# %bb.203:                              #   in Loop: Header=BB0_16 Depth=2
	bstrpick.d	$a3, $a0, 15, 0
	beqz	$a3, .LBB0_223
# %bb.204:                              #   in Loop: Header=BB0_16 Depth=2
	bltu	$t7, $a3, .LBB0_223
# %bb.205:                              #   in Loop: Header=BB0_16 Depth=2
	sub.d	$a1, $s4, $s0
	bltu	$a1, $s5, .LBB0_223
# %bb.206:                              #   in Loop: Header=BB0_16 Depth=2
	add.d	$a1, $a1, $a3
	bltu	$s8, $a1, .LBB0_223
# %bb.207:                              #   in Loop: Header=BB0_16 Depth=2
	bgeu	$s5, $a1, .LBB0_223
# %bb.208:                              #   in Loop: Header=BB0_16 Depth=2
	bltu	$s4, $s5, .LBB0_223
# %bb.209:                              #   in Loop: Header=BB0_16 Depth=2
	add.d	$a1, $s4, $a3
	bltu	$s8, $a1, .LBB0_223
# %bb.210:                              # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	sub.d	$a2, $zero, $s0
	bltu	$a3, $t2, .LBB0_216
# %bb.211:                              # %.lr.ph.i.preheader
                                        #   in Loop: Header=BB0_16 Depth=2
	bltu	$s0, $t2, .LBB0_215
# %bb.212:                              # %vector.ph
                                        #   in Loop: Header=BB0_16 Depth=2
	bstrpick.d	$a1, $a3, 15, 5
	slli.d	$a4, $a1, 5
	add.d	$a1, $s4, $a4
	sub.d	$a0, $a0, $a4
	move	$a5, $a4
	.p2align	4, , 16
.LBB0_213:                              # %vector.body
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a6, $s4, $a2
	vldx	$vr0, $s4, $a2
	vld	$vr1, $a6, 16
	vst	$vr0, $s4, 0
	vst	$vr1, $s4, 16
	addi.d	$a5, $a5, -32
	addi.d	$s4, $s4, 32
	bnez	$a5, .LBB0_213
# %bb.214:                              # %middle.block
                                        #   in Loop: Header=BB0_16 Depth=2
	bne	$a4, $a3, .LBB0_217
	b	.LBB0_15
.LBB0_215:                              #   in Loop: Header=BB0_16 Depth=2
	move	$a1, $s4
	b	.LBB0_217
.LBB0_216:                              #   in Loop: Header=BB0_16 Depth=2
	move	$a1, $s4
	.p2align	4, , 16
.LBB0_217:                              # %.lr.ph.i
                                        #   Parent Loop BB0_4 Depth=1
                                        #     Parent Loop BB0_16 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ldx.b	$a3, $a1, $a2
	addi.d	$a0, $a0, -1
	bstrpick.d	$a4, $a0, 15, 0
	st.b	$a3, $a1, 0
	addi.d	$a1, $a1, 1
	bnez	$a4, .LBB0_217
	b	.LBB0_15
.LBB0_218:                              #   in Loop: Header=BB0_4 Depth=1
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.bu	$a0, $a0, 16
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	bnez	$a0, .LBB0_4
# %bb.219:
	bstrpick.d	$a0, $s7, 31, 0
	add.d	$fp, $fp, $a0
	st.h	$s8, $fp, 6
	ld.w	$a0, $s2, 661
	add.d	$a0, $s4, $a0
	addi.w	$s2, $a0, 665
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	move	$a1, $s2
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	st.w	$s2, $fp, 40
	ld.w	$a0, $fp, 80
	andi	$a1, $s1, 4095
	sltu	$a1, $zero, $a1
	slli.d	$a1, $a1, 12
	add.d	$a1, $a1, $s1
	lu12i.w	$a2, -1
	lu32i.d	$a2, 0
	ld.hu	$a3, $fp, 20
	and	$a1, $a1, $a2
	sub.d	$a0, $a0, $a1
	st.w	$a0, $fp, 80
	add.d	$a0, $fp, $a3
	addi.d	$a1, $a0, 24
	beqz	$s8, .LBB0_222
# %bb.220:                              # %.lr.ph
	sub.d	$a0, $s3, $s5
.LBB0_221:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 8
	ld.w	$a3, $a1, 16
	addi.d	$s8, $s8, -1
	bstrpick.d	$a4, $s8, 15, 0
	sltu	$a5, $a2, $a3
	masknez	$a2, $a2, $a5
	maskeqz	$a3, $a3, $a5
	or	$a2, $a3, $a2
	andi	$a3, $a2, 4095
	sltu	$a3, $zero, $a3
	slli.d	$a3, $a3, 12
	add.w	$a2, $a3, $a2
	ld.w	$a3, $a1, 12
	bstrins.d	$a2, $zero, 11, 0
	st.w	$a2, $a1, 8
	st.w	$a2, $a1, 16
	add.d	$a2, $a0, $a3
	st.w	$a2, $a1, 20
	addi.d	$a1, $a1, 40
	bnez	$a4, .LBB0_221
.LBB0_222:                              # %._crit_edge
	move	$a0, $zero
	st.d	$zero, $a1, 32
	vrepli.b	$vr0, 0
	vst	$vr0, $a1, 16
	vst	$vr0, $a1, 0
	b	.LBB0_226
.LBB0_223:                              # %getbits.exit.thread
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
.LBB0_224:
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB0_225:
	ori	$a0, $zero, 1
.LBB0_226:
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
.LBB0_227:                              # %.split.split.us
	ori	$a0, $zero, 690
	bltu	$s1, $a0, .LBB0_1
# %bb.228:
	ld.w	$a0, $s2, 681
	ld.w	$a1, $s2, 685
	slli.d	$fp, $a0, 2
	addi.w	$a0, $fp, 0
	addi.w	$a1, $a1, 4
	bne	$a0, $a1, .LBB0_231
# %bb.229:
	bstrpick.d	$a0, $fp, 31, 0
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	beqz	$a0, .LBB0_232
.LBB0_230:                              # %.split160.us
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	b	.LBB0_224
.LBB0_231:                              # %.split156.us
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	b	.LBB0_224
.LBB0_232:                              # %.split158.us
	addi.w	$a1, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB0_225
.Lfunc_end0:
	.size	wwunpack, .Lfunc_end0-wwunpack
                                        # -- End function
	.p2align	5                               # -- Begin function getbits
	.type	getbits,@function
getbits:                                # @getbits
# %bb.0:
	ld.w	$a7, $a2, 0
	ori	$t0, $zero, 32
	sub.d	$t0, $t0, $a0
	srl.w	$t0, $a7, $t0
	st.w	$t0, $a1, 0
	ld.bu	$a7, $a3, 0
	bgeu	$a0, $a7, .LBB1_4
# %bb.1:
	ld.w	$a1, $a2, 0
	sll.w	$a1, $a1, $a0
	st.w	$a1, $a2, 0
	ld.b	$a1, $a3, 0
	sub.d	$a1, $a1, $a0
.LBB1_2:                                # %getbitmap.exit.thread.sink.split
	move	$a0, $zero
	st.b	$a1, $a3, 0
.LBB1_3:                                # %getbitmap.exit.thread
	ret
.LBB1_4:
	bgeu	$a7, $a0, .LBB1_9
# %bb.5:
	sub.d	$a7, $a0, $a7
	srl.w	$a0, $t0, $a7
	st.w	$a0, $a1, 0
	ori	$t0, $zero, 4
	ori	$a0, $zero, 1
	bltu	$a6, $t0, .LBB1_3
# %bb.6:
	ld.d	$t0, $a4, 0
	bltu	$t0, $a5, .LBB1_3
# %bb.7:
	addi.d	$t1, $t0, 4
	bstrpick.d	$a6, $a6, 31, 0
	add.d	$a5, $a5, $a6
	bltu	$a5, $t1, .LBB1_3
# %bb.8:
	ld.w	$a0, $t0, 0
	st.w	$a0, $a2, 0
	st.d	$t1, $a4, 0
	ori	$a0, $zero, 32
	st.b	$a0, $a3, 0
	ld.w	$a4, $a1, 0
	andi	$a5, $a7, 255
	sll.w	$a4, $a4, $a5
	st.w	$a4, $a1, 0
	ld.w	$a6, $a2, 0
	sub.d	$a0, $a0, $a5
	srl.w	$a0, $a6, $a0
	or	$a0, $a0, $a4
	st.w	$a0, $a1, 0
	ld.w	$a0, $a2, 0
	sll.w	$a0, $a0, $a5
	st.w	$a0, $a2, 0
	ld.b	$a0, $a3, 0
	sub.d	$a1, $a0, $a7
	b	.LBB1_2
.LBB1_9:
	ori	$a1, $zero, 4
	ori	$a0, $zero, 1
	bltu	$a6, $a1, .LBB1_3
# %bb.10:
	ld.d	$a1, $a4, 0
	bltu	$a1, $a5, .LBB1_3
# %bb.11:
	addi.d	$a7, $a1, 4
	bstrpick.d	$a6, $a6, 31, 0
	add.d	$a5, $a5, $a6
	bltu	$a5, $a7, .LBB1_3
# %bb.12:                               # %getbitmap.exit41
	ld.w	$a0, $a1, 0
	st.w	$a0, $a2, 0
	st.d	$a7, $a4, 0
	ori	$a1, $zero, 32
	b	.LBB1_2
.Lfunc_end1:
	.size	getbits, .Lfunc_end1-getbits
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"in wwunpack\n"
	.size	.L.str, 13

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"WWPack: next chunk out ouf file, giving up.\n"
	.size	.L.str.1, 45

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"WWPack: inconsistent/hacked data, go figure!\n"
	.size	.L.str.2, 46

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"WWPack: Can't allocate %d bytes\n"
	.size	.L.str.3, 33

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"WWPack: packed data out of bounds, giving up.\n"
	.size	.L.str.4, 47

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"WWPack: unpacking failed.\n"
	.size	.L.str.5, 27

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"WWPack: found OEP @%x\n"
	.size	.L.str.6, 23

	.section	".note.GNU-stack","",@progbits
	.addrsig
