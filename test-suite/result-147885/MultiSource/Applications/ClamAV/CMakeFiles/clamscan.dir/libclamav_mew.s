	.file	"libclamav_mew.c"
	.text
	.globl	mew_lzma                        # -- Begin function mew_lzma
	.p2align	5
	.type	mew_lzma,@function
mew_lzma:                               # @mew_lzma
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
	ld.w	$a5, $a1, 0
	move	$s2, $a0
	lu12i.w	$a6, 6
	beqz	$a4, .LBB0_4
# %bb.1:                                # %.thread
	ori	$a0, $a6, 3691
	bgeu	$a0, $a2, .LBB0_7
# %bb.2:                                # %.split882.us.thread
	ld.w	$a0, $a1, 4
	sub.d	$a0, $a0, $a3
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$s5, $s2, $a0
	bstrpick.d	$a0, $a2, 31, 0
	add.d	$s4, $s2, $a0
	ori	$a0, $a6, 3692
	add.d	$a0, $s5, $a0
	bltu	$s4, $a0, .LBB0_7
# %bb.3:
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	move	$t4, $zero
	addi.d	$s7, $a1, 8
	b	.LBB0_9
.LBB0_4:
	ori	$a7, $a6, 3691
	addi.d	$t4, $a1, 4
	bgeu	$a7, $a2, .LBB0_6
# %bb.5:                                # %.split882.us
	sub.d	$a1, $a5, $a3
	bstrpick.d	$a1, $a1, 31, 0
	add.d	$s5, $s2, $a1
	bstrpick.d	$a1, $a2, 31, 0
	add.d	$s4, $s2, $a1
	ori	$a1, $a6, 3692
	add.d	$a1, $s5, $a1
	bgeu	$s4, $a1, .LBB0_8
.LBB0_6:                                # %.split.us.split.us
	ld.w	$a0, $t4, 0
	beqz	$a0, .LBB0_249
.LBB0_7:                                # %thread-pre-split
	addi.w	$a0, $zero, -1
	b	.LBB0_250
.LBB0_8:
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	move	$s7, $t4
.LBB0_9:                                # %.split.us.us.preheader
	move	$a7, $zero
	addi.d	$a1, $s5, 1604
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	addi.d	$a1, $s5, 1636
	st.d	$a1, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a1, $s5, 2047
	addi.d	$a5, $a1, 617
	st.d	$a5, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a1, $a1, 1645
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a1, $s5, 1374
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a1, $s5, 864
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	lu12i.w	$t0, -7
	ori	$a5, $t0, 416
	ori	$a1, $zero, 1024
	vreplgr2vr.h	$vr1, $a1
	ori	$s6, $a6, 3680
	lu12i.w	$a1, 16384
	ori	$t1, $a1, 1024
	ori	$s1, $a6, 3696
	move	$t2, $t1
	addi.w	$t3, $zero, -1
	bstrins.d	$t2, $t1, 58, 32
	st.d	$t3, $sp, 168                   # 8-byte Folded Spill
	lu32i.d	$t3, 0
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a0, $a1, %pc_lo12(.L.str)
	st.d	$a2, $sp, 232                   # 8-byte Folded Spill
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	st.d	$a4, $sp, 80                    # 8-byte Folded Spill
	st.d	$a5, $sp, 72                    # 8-byte Folded Spill
	vst	$vr1, $sp, 208                  # 16-byte Folded Spill
	st.d	$t1, $sp, 64                    # 8-byte Folded Spill
	st.d	$t2, $sp, 56                    # 8-byte Folded Spill
	st.d	$t3, $sp, 48                    # 8-byte Folded Spill
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
.LBB0_10:                               # %.split.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
                                        #       Child Loop BB0_13 Depth 3
                                        #     Child Loop BB0_17 Depth 2
                                        #     Child Loop BB0_20 Depth 2
                                        #       Child Loop BB0_159 Depth 3
                                        #       Child Loop BB0_231 Depth 3
                                        #       Child Loop BB0_222 Depth 3
                                        #       Child Loop BB0_213 Depth 3
                                        #       Child Loop BB0_63 Depth 3
                                        #       Child Loop BB0_185 Depth 3
                                        #       Child Loop BB0_80 Depth 3
	beqz	$a4, .LBB0_15
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	move	$a6, $s7
	move	$s0, $a7
	.p2align	4, , 16
.LBB0_12:                               # %thread-pre-split.us.us883
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_13 Depth 3
	ld.w	$s8, $a6, 0
	ld.w	$a2, $a6, 4
	ld.wu	$a1, $a6, 8
	move	$a7, $s0
	ori	$a4, $t0, 416
	.p2align	4, , 16
.LBB0_13:                               # %vector.body1194
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_12 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a5, $s5, $a4
	vstx	$vr1, $a5, $s6
	addi.d	$a4, $a4, 32
	vstx	$vr1, $a5, $s1
	bnez	$a4, .LBB0_13
# %bb.14:                               # %scalar.ph1192
                                        #   in Loop: Header=BB0_12 Depth=2
	stptr.d	$t2, $s5, 28256
	stptr.w	$t1, $s5, 28264
	sub.d	$a2, $a2, $a3
	bstrpick.d	$s3, $a2, 31, 0
	ld.w	$a2, $a6, 14
	add.d	$s0, $s2, $s3
	add.d	$a1, $a6, $a1
	addi.d	$s7, $a1, 13
	revb.2w	$a1, $a2
	st.w	$a1, $sp, 276
	st.w	$t3, $sp, 272
	addi.d	$a1, $a6, 18
	st.d	$a1, $sp, 264
	st.w	$zero, $sp, 256
	move	$a6, $s7
	move	$fp, $s0
	beqz	$s8, .LBB0_12
	b	.LBB0_19
.LBB0_15:                               # %.split.us.split.split.us.us
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.w	$s8, $t4, 0
	beqz	$s8, .LBB0_249
# %bb.16:                               # %.preheader618.us.us.us
                                        #   in Loop: Header=BB0_10 Depth=1
	ld.w	$a1, $t4, 4
	ld.wu	$a2, $t4, 8
	move	$a6, $a5
	.p2align	4, , 16
.LBB0_17:                               # %vector.body1185
                                        #   Parent Loop BB0_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$a5, $s5, $a6
	vstx	$vr1, $a5, $s6
	addi.d	$a6, $a6, 32
	vstx	$vr1, $a5, $s1
	bnez	$a6, .LBB0_17
# %bb.18:                               # %scalar.ph1183
                                        #   in Loop: Header=BB0_10 Depth=1
	stptr.d	$t2, $s5, 28256
	stptr.w	$t1, $s5, 28264
	ld.w	$a4, $t4, 14
	add.d	$a2, $t4, $a2
	addi.d	$s7, $a2, 13
	revb.2w	$a2, $a4
	st.w	$a2, $sp, 276
	st.w	$t3, $sp, 272
	addi.d	$a2, $t4, 18
	st.d	$a2, $sp, 264
	st.w	$zero, $sp, 256
	sub.d	$a1, $a1, $a3
	bstrpick.d	$s3, $a1, 31, 0
	add.d	$s0, $s2, $s3
	move	$fp, $a7
.LBB0_19:                               # %.split693.us.us
                                        #   in Loop: Header=BB0_10 Depth=1
	st.d	$a7, $sp, 96                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	vld	$vr1, $sp, 208                  # 16-byte Folded Reload
	move	$a3, $zero
	move	$a5, $zero
	move	$t5, $zero
	move	$t7, $zero
	bstrpick.d	$a0, $s8, 31, 0
	add.d	$a1, $s0, $a0
	st.d	$a1, $sp, 136                   # 8-byte Folded Spill
	add.d	$a0, $s3, $a0
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a0, $s0, 1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ori	$t6, $zero, 1
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	ori	$t8, $zero, 2048
.LBB0_20:                               #   Parent Loop BB0_10 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_159 Depth 3
                                        #       Child Loop BB0_231 Depth 3
                                        #       Child Loop BB0_222 Depth 3
                                        #       Child Loop BB0_213 Depth 3
                                        #       Child Loop BB0_63 Depth 3
                                        #       Child Loop BB0_185 Depth 3
                                        #       Child Loop BB0_80 Depth 3
	slli.d	$a0, $t5, 5
	bstrins.d	$a0, $t7, 2, 1
	addi.w	$a4, $zero, -26
	lu32i.d	$a4, 0
	and	$a0, $a0, $a4
	add.d	$t1, $s5, $a0
	addi.d	$a0, $t1, 4
	bltu	$s4, $a0, .LBB0_248
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=2
	ld.d	$a7, $sp, 264
	bltu	$a7, $s2, .LBB0_248
# %bb.22:                               #   in Loop: Header=BB0_20 Depth=2
	addi.d	$a2, $a7, 1
	bltu	$s4, $a2, .LBB0_248
# %bb.23:                               #   in Loop: Header=BB0_20 Depth=2
	ld.wu	$t3, $sp, 272
	ld.wu	$t2, $t1, 0
	srli.d	$a1, $t3, 11
	ld.w	$a0, $sp, 276
	bstrpick.d	$t4, $t2, 15, 0
	mul.d	$a6, $t4, $a1
	addi.w	$t0, $a6, 0
	bgeu	$a0, $t0, .LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_20 Depth=2
	sub.d	$a1, $t8, $t4
	bstrpick.d	$a1, $a1, 31, 5
	add.w	$t3, $a1, $t2
	move	$a1, $a0
	b	.LBB0_26
	.p2align	4, , 16
.LBB0_25:                               #   in Loop: Header=BB0_20 Depth=2
	sub.w	$a1, $a0, $a6
	sub.w	$a6, $t3, $a6
	st.w	$a1, $sp, 276
	bstrpick.d	$t3, $t4, 31, 5
	sub.w	$t3, $t2, $t3
.LBB0_26:                               #   in Loop: Header=BB0_20 Depth=2
	srli.d	$t2, $t2, 16
	bstrins.d	$t3, $t2, 63, 16
	st.w	$a6, $sp, 272
	bstrpick.d	$t2, $a6, 31, 24
	st.w	$t3, $t1, 0
	bnez	$t2, .LBB0_33
# %bb.27:                               #   in Loop: Header=BB0_20 Depth=2
	ld.bu	$a7, $a7, 0
	slli.w	$a1, $a1, 8
	or	$a1, $a1, $a7
	slli.d	$a6, $a6, 8
	st.w	$a1, $sp, 276
	st.w	$a6, $sp, 272
	st.d	$a2, $sp, 264
	bltu	$a0, $t0, .LBB0_34
.LBB0_28:                               #   in Loop: Header=BB0_20 Depth=2
	slli.d	$a0, $t5, 1
	bstrpick.d	$a0, $a0, 31, 1
	alsl.d	$a3, $a0, $s5, 1
	addi.d	$a0, $a3, 388
	bltu	$s4, $a0, .LBB0_248
# %bb.29:                               #   in Loop: Header=BB0_20 Depth=2
	bltu	$a2, $s2, .LBB0_248
# %bb.30:                               #   in Loop: Header=BB0_20 Depth=2
	addi.d	$a5, $a2, 1
	bltu	$s4, $a5, .LBB0_248
# %bb.31:                               #   in Loop: Header=BB0_20 Depth=2
	ld.wu	$a0, $a3, 384
	bstrpick.d	$a7, $a6, 31, 11
	bstrpick.d	$t2, $a0, 15, 0
	mul.d	$t0, $t2, $a7
	addi.w	$t1, $t0, 0
	bgeu	$a1, $t1, .LBB0_44
# %bb.32:                               #   in Loop: Header=BB0_20 Depth=2
	move	$a6, $zero
	sub.d	$a7, $t8, $t2
	bstrpick.d	$a7, $a7, 31, 5
	add.w	$t2, $a7, $a0
	move	$a7, $a1
	b	.LBB0_45
	.p2align	4, , 16
.LBB0_33:                               #   in Loop: Header=BB0_20 Depth=2
	move	$a2, $a7
	bgeu	$a0, $t0, .LBB0_28
.LBB0_34:                               #   in Loop: Header=BB0_20 Depth=2
	bstrpick.d	$a0, $a3, 7, 4
	alsl.d	$a0, $a0, $a0, 1
	slli.d	$a0, $a0, 9
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	add.d	$a0, $a3, $a0
	st.d	$a0, $sp, 248
	ori	$a3, $zero, 4
	bltu	$t5, $a3, .LBB0_37
# %bb.35:                               #   in Loop: Header=BB0_20 Depth=2
	ori	$a3, $zero, 9
	bgeu	$a3, $t5, .LBB0_77
# %bb.36:                               #   in Loop: Header=BB0_20 Depth=2
	addi.w	$t5, $t5, -6
	bnez	$a5, .LBB0_38
	b	.LBB0_78
.LBB0_37:                               #   in Loop: Header=BB0_20 Depth=2
	move	$t5, $zero
	beqz	$a5, .LBB0_78
.LBB0_38:                               #   in Loop: Header=BB0_20 Depth=2
	sub.w	$a3, $t7, $t6
	bstrpick.d	$a4, $a3, 31, 0
	add.d	$a4, $s0, $a4
	addi.d	$a5, $a4, 1
	bltu	$s4, $a5, .LBB0_248
# %bb.39:                               #   in Loop: Header=BB0_20 Depth=2
	ld.bu	$a7, $a4, 0
	srli.d	$a3, $a3, 8
	move	$a4, $a7
	bstrins.d	$a4, $a3, 31, 8
	st.w	$a4, $sp, 260
	srli.d	$a5, $a7, 7
	slli.d	$a3, $a5, 9
	add.d	$a4, $a0, $a3
	addi.d	$a3, $a4, 514
	addi.d	$a4, $a4, 518
	st.d	$a3, $sp, 248
	bltu	$s4, $a4, .LBB0_248
# %bb.40:                               #   in Loop: Header=BB0_20 Depth=2
	bltu	$a2, $s2, .LBB0_248
# %bb.41:                               #   in Loop: Header=BB0_20 Depth=2
	addi.d	$a4, $a2, 1
	bltu	$s4, $a4, .LBB0_248
# %bb.42:                               #   in Loop: Header=BB0_20 Depth=2
	ld.wu	$t1, $a3, 0
	bstrpick.d	$t0, $a6, 31, 11
	bstrpick.d	$t2, $t1, 15, 0
	mul.d	$t0, $t2, $t0
	addi.w	$t3, $t0, 0
	bgeu	$a1, $t3, .LBB0_59
# %bb.43:                               #   in Loop: Header=BB0_20 Depth=2
	move	$a6, $zero
	sub.d	$t2, $t8, $t2
	bstrpick.d	$t2, $t2, 31, 5
	add.w	$t2, $t2, $t1
	b	.LBB0_60
.LBB0_44:                               #   in Loop: Header=BB0_20 Depth=2
	sub.w	$a7, $a1, $t0
	sub.w	$t0, $a6, $t0
	st.w	$a7, $sp, 276
	bstrpick.d	$a6, $t2, 31, 5
	sub.w	$t2, $a0, $a6
	ori	$a6, $zero, 1
.LBB0_45:                               #   in Loop: Header=BB0_20 Depth=2
	srli.d	$a0, $a0, 16
	bstrins.d	$t2, $a0, 63, 16
	st.w	$t0, $sp, 272
	bstrpick.d	$a0, $t0, 31, 24
	st.w	$t2, $a3, 384
	bnez	$a0, .LBB0_52
# %bb.46:                               #   in Loop: Header=BB0_20 Depth=2
	ld.bu	$a0, $a2, 0
	slli.w	$a2, $a7, 8
	or	$a7, $a2, $a0
	slli.d	$t0, $t0, 8
	st.w	$a7, $sp, 276
	st.w	$t0, $sp, 272
	st.d	$a5, $sp, 264
	andi	$a0, $t7, 3
	st.w	$a6, $sp, 260
	st.d	$t7, $sp, 200                   # 8-byte Folded Spill
	bltu	$a1, $t1, .LBB0_53
.LBB0_47:                               #   in Loop: Header=BB0_20 Depth=2
	addi.d	$a1, $a3, 412
	bltu	$s4, $a1, .LBB0_248
# %bb.48:                               #   in Loop: Header=BB0_20 Depth=2
	bltu	$a5, $s2, .LBB0_248
# %bb.49:                               #   in Loop: Header=BB0_20 Depth=2
	addi.d	$a2, $a5, 1
	bltu	$s4, $a2, .LBB0_248
# %bb.50:                               #   in Loop: Header=BB0_20 Depth=2
	ld.wu	$t2, $a3, 408
	bstrpick.d	$a1, $t0, 31, 11
	bstrpick.d	$t3, $t2, 15, 0
	mul.d	$a6, $t3, $a1
	addi.w	$t1, $a6, 0
	bgeu	$a7, $t1, .LBB0_90
# %bb.51:                               #   in Loop: Header=BB0_20 Depth=2
	move	$t0, $zero
	sub.d	$a1, $t8, $t3
	bstrpick.d	$a1, $a1, 31, 5
	add.w	$t3, $a1, $t2
	move	$a1, $a7
	b	.LBB0_91
.LBB0_52:                               #   in Loop: Header=BB0_20 Depth=2
	move	$a5, $a2
	andi	$a0, $t7, 3
	st.w	$a6, $sp, 260
	st.d	$t7, $sp, 200                   # 8-byte Folded Spill
	bgeu	$a1, $t1, .LBB0_47
.LBB0_53:                               #   in Loop: Header=BB0_20 Depth=2
	st.d	$t6, $sp, 160                   # 8-byte Folded Spill
	sltui	$a1, $t5, 7
	ori	$a2, $zero, 10
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 7
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	st.w	$a1, $sp, 260
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	st.d	$a1, $sp, 248
	addi.d	$a1, $sp, 264
	addi.d	$a2, $sp, 248
	addi.d	$a3, $sp, 256
	addi.d	$a4, $sp, 260
	move	$a5, $s2
	move	$a6, $ra
	pcaddu18i	$ra, %call36(lzma_4863da)
	jirl	$ra, $ra, 0
	addi.w	$a2, $zero, -1
	move	$a1, $a0
	move	$a0, $a2
	beq	$a1, $a2, .LBB0_250
# %bb.54:                               # %.preheader.i.us
                                        #   in Loop: Header=BB0_20 Depth=2
	ld.w	$a1, $sp, 260
	sltui	$a2, $a1, 3
	ori	$a3, $zero, 3
	masknez	$a3, $a3, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	ori	$a3, $zero, 6
	st.w	$a3, $sp, 256
	slli.d	$a2, $a2, 7
	st.w	$a2, $sp, 260
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a2
	addi.d	$a2, $a3, 6
	st.d	$a3, $sp, 248
	ori	$t8, $zero, 2048
	bltu	$s4, $a2, .LBB0_250
# %bb.55:                               #   in Loop: Header=BB0_20 Depth=2
	ld.d	$a5, $sp, 264
	bltu	$a5, $s2, .LBB0_250
# %bb.56:                               #   in Loop: Header=BB0_20 Depth=2
	addi.d	$a4, $a5, 1
	bltu	$s4, $a4, .LBB0_250
# %bb.57:                               #   in Loop: Header=BB0_20 Depth=2
	ld.w	$a6, $sp, 272
	ld.wu	$a7, $a3, 2
	ld.w	$a2, $sp, 276
	bstrpick.d	$t0, $a6, 31, 11
	bstrpick.d	$t1, $a7, 15, 0
	mul.d	$t0, $t1, $t0
	addi.w	$t2, $t0, 0
	bgeu	$a2, $t2, .LBB0_104
# %bb.58:                               #   in Loop: Header=BB0_20 Depth=2
	sub.d	$a6, $t8, $t1
	bstrpick.d	$a6, $a6, 31, 5
	add.w	$t1, $a6, $a7
	ori	$a6, $zero, 4
	b	.LBB0_105
.LBB0_59:                               #   in Loop: Header=BB0_20 Depth=2
	sub.w	$a1, $a1, $t0
	sub.w	$t0, $a6, $t0
	st.w	$a1, $sp, 276
	bstrpick.d	$a6, $t2, 31, 5
	sub.w	$t2, $t1, $a6
	ori	$a6, $zero, 1
.LBB0_60:                               #   in Loop: Header=BB0_20 Depth=2
	srli.d	$t1, $t1, 16
	bstrins.d	$t2, $t1, 63, 16
	st.w	$t0, $sp, 272
	bstrpick.d	$t1, $t0, 31, 24
	st.w	$t2, $a3, 0
	bnez	$t1, .LBB0_62
# %bb.61:                               #   in Loop: Header=BB0_20 Depth=2
	ld.bu	$a2, $a2, 0
	slli.w	$a1, $a1, 8
	or	$a1, $a1, $a2
	st.d	$a4, $sp, 248
	slli.d	$t0, $t0, 8
	st.w	$a1, $sp, 276
	st.w	$t0, $sp, 272
	st.d	$a4, $sp, 264
	addi.d	$a2, $a6, 2
	move	$a3, $a2
	beq	$a6, $a5, .LBB0_63
	b	.LBB0_183
.LBB0_62:                               #   in Loop: Header=BB0_20 Depth=2
	move	$a4, $a2
	addi.d	$a2, $a6, 2
	move	$a3, $a2
	bne	$a6, $a5, .LBB0_183
	.p2align	4, , 16
.LBB0_63:                               # %.lr.ph849.us
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$a6, $a7, 6, 6
	slli.d	$a3, $a6, 8
	add.d	$a3, $a3, $a2
	ori	$a5, $zero, 512
	alsl.w	$a3, $a3, $a5, 1
	add.d	$a3, $a0, $a3
	addi.d	$a5, $a3, 4
	bltu	$s4, $a5, .LBB0_248
# %bb.64:                               #   in Loop: Header=BB0_63 Depth=3
	bltu	$a4, $s2, .LBB0_248
# %bb.65:                               #   in Loop: Header=BB0_63 Depth=3
	addi.d	$a5, $a4, 1
	bltu	$s4, $a5, .LBB0_248
# %bb.66:                               #   in Loop: Header=BB0_63 Depth=3
	ld.wu	$t3, $a3, 0
	bstrpick.d	$t1, $t0, 31, 11
	bstrpick.d	$t4, $t3, 15, 0
	mul.d	$t2, $t4, $t1
	addi.w	$t1, $t2, 0
	bgeu	$a1, $t1, .LBB0_68
# %bb.67:                               #   in Loop: Header=BB0_63 Depth=3
	move	$t1, $zero
	sub.d	$t0, $t8, $t4
	bstrpick.d	$t0, $t0, 31, 5
	add.w	$t0, $t0, $t3
	b	.LBB0_69
	.p2align	4, , 16
.LBB0_68:                               #   in Loop: Header=BB0_63 Depth=3
	sub.w	$a1, $a1, $t2
	sub.w	$t2, $t0, $t2
	st.w	$a1, $sp, 276
	bstrpick.d	$t0, $t4, 31, 5
	sub.w	$t0, $t3, $t0
	ori	$t1, $zero, 1
.LBB0_69:                               #   in Loop: Header=BB0_63 Depth=3
	srli.d	$t3, $t3, 16
	bstrins.d	$t0, $t3, 63, 16
	st.w	$t2, $sp, 272
	bstrpick.d	$t3, $t2, 31, 24
	st.w	$t0, $a3, 0
	bnez	$t3, .LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_63 Depth=3
	ld.bu	$a3, $a4, 0
	slli.w	$a1, $a1, 8
	or	$a1, $a1, $a3
	slli.d	$t0, $t2, 8
	st.w	$a1, $sp, 276
	st.w	$t0, $sp, 272
	st.d	$a5, $sp, 264
	move	$a4, $a5
	b	.LBB0_72
	.p2align	4, , 16
.LBB0_71:                               #   in Loop: Header=BB0_63 Depth=3
	move	$a5, $a3
	move	$t0, $t2
.LBB0_72:                               # %lzma_486248.exit69.i.us
                                        #   in Loop: Header=BB0_63 Depth=3
	slli.d	$a3, $a2, 1
	or	$a3, $t1, $a3
	addi.w	$t2, $a2, 0
	bne	$t1, $a6, .LBB0_182
# %bb.73:                               # %.lr.ph.i.us
                                        #   in Loop: Header=BB0_63 Depth=3
	slli.d	$a7, $a7, 1
	move	$a2, $a3
	ori	$a6, $zero, 127
	bgeu	$a6, $t2, .LBB0_63
.LBB0_74:                               # %.sink.split
                                        #   in Loop: Header=BB0_20 Depth=2
	st.d	$a5, $sp, 248
.LBB0_75:                               #   in Loop: Header=BB0_20 Depth=2
	bstrpick.d	$a0, $t7, 31, 0
	add.d	$a0, $s0, $a0
	addi.d	$a1, $a0, 1
	st.w	$t7, $sp, 256
	bltu	$s4, $a1, .LBB0_248
# %bb.76:                               #   in Loop: Header=BB0_20 Depth=2
	move	$a5, $zero
	addi.w	$a1, $t7, 1
	st.b	$a3, $a0, 0
	b	.LBB0_177
.LBB0_77:                               #   in Loop: Header=BB0_20 Depth=2
	addi.w	$t5, $t5, -3
	bnez	$a5, .LBB0_38
.LBB0_78:                               #   in Loop: Header=BB0_20 Depth=2
	addi.d	$a3, $a0, 6
	ori	$a4, $zero, 1
	st.w	$a4, $sp, 260
	bltu	$s4, $a3, .LBB0_248
# %bb.79:                               # %.lr.ph865.us.preheader
                                        #   in Loop: Header=BB0_20 Depth=2
	addi.d	$a4, $a0, 2
	ori	$a3, $zero, 2
	.p2align	4, , 16
.LBB0_80:                               # %.lr.ph865.us
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bltu	$a2, $s2, .LBB0_248
# %bb.81:                               # %.lr.ph865.us
                                        #   in Loop: Header=BB0_80 Depth=3
	addi.d	$a5, $a2, 1
	bltu	$s4, $a5, .LBB0_248
# %bb.82:                               #   in Loop: Header=BB0_80 Depth=3
	ld.wu	$t1, $a4, 0
	bstrpick.d	$a7, $a6, 31, 11
	bstrpick.d	$t2, $t1, 15, 0
	mul.d	$t0, $t2, $a7
	addi.w	$a7, $t0, 0
	bgeu	$a1, $a7, .LBB0_84
# %bb.83:                               #   in Loop: Header=BB0_80 Depth=3
	move	$a7, $zero
	sub.d	$a6, $t8, $t2
	bstrpick.d	$a6, $a6, 31, 5
	add.w	$a6, $a6, $t1
	b	.LBB0_85
	.p2align	4, , 16
.LBB0_84:                               #   in Loop: Header=BB0_80 Depth=3
	sub.w	$a1, $a1, $t0
	sub.w	$t0, $a6, $t0
	st.w	$a1, $sp, 276
	bstrpick.d	$a6, $t2, 31, 5
	sub.w	$a6, $t1, $a6
	ori	$a7, $zero, 1
.LBB0_85:                               #   in Loop: Header=BB0_80 Depth=3
	srli.d	$t1, $t1, 16
	bstrins.d	$a6, $t1, 63, 16
	st.w	$t0, $sp, 272
	bstrpick.d	$t1, $t0, 31, 24
	st.w	$a6, $a4, 0
	bnez	$t1, .LBB0_87
# %bb.86:                               #   in Loop: Header=BB0_80 Depth=3
	ld.bu	$a2, $a2, 0
	slli.w	$a1, $a1, 8
	or	$a1, $a1, $a2
	slli.d	$a6, $t0, 8
	st.w	$a1, $sp, 276
	st.w	$a6, $sp, 272
	st.d	$a5, $sp, 264
	move	$a2, $a5
	b	.LBB0_88
	.p2align	4, , 16
.LBB0_87:                               #   in Loop: Header=BB0_80 Depth=3
	move	$a6, $t0
	move	$a5, $a4
.LBB0_88:                               #   in Loop: Header=BB0_80 Depth=3
	addi.w	$a4, $a3, 0
	or	$a3, $a7, $a3
	ori	$a7, $zero, 256
	bgeu	$a4, $a7, .LBB0_74
# %bb.89:                               #   in Loop: Header=BB0_80 Depth=3
	slli.d	$a3, $a3, 1
	addi.w	$a4, $a3, 0
	add.d	$a4, $a0, $a4
	addi.d	$a5, $a4, 4
	bgeu	$s4, $a5, .LBB0_80
	b	.LBB0_248
.LBB0_90:                               #   in Loop: Header=BB0_20 Depth=2
	sub.w	$a1, $a7, $a6
	sub.w	$a6, $t0, $a6
	st.w	$a1, $sp, 276
	bstrpick.d	$t0, $t3, 31, 5
	sub.w	$t3, $t2, $t0
	ori	$t0, $zero, 1
.LBB0_91:                               #   in Loop: Header=BB0_20 Depth=2
	srli.d	$t2, $t2, 16
	bstrins.d	$t3, $t2, 63, 16
	st.w	$a6, $sp, 272
	bstrpick.d	$t2, $a6, 31, 24
	st.w	$t3, $a3, 408
	bnez	$t2, .LBB0_98
# %bb.92:                               #   in Loop: Header=BB0_20 Depth=2
	st.d	$a5, $sp, 248
	ld.bu	$a5, $a5, 0
	slli.w	$a1, $a1, 8
	or	$a1, $a1, $a5
	slli.d	$a6, $a6, 8
	st.w	$a1, $sp, 276
	st.w	$a6, $sp, 272
	st.d	$a2, $sp, 264
	st.w	$t0, $sp, 260
	bltu	$a7, $t1, .LBB0_99
.LBB0_93:                               #   in Loop: Header=BB0_20 Depth=2
	addi.d	$a4, $a3, 436
	bltu	$s4, $a4, .LBB0_248
# %bb.94:                               #   in Loop: Header=BB0_20 Depth=2
	bltu	$a2, $s2, .LBB0_248
# %bb.95:                               #   in Loop: Header=BB0_20 Depth=2
	addi.d	$a4, $a2, 1
	bltu	$s4, $a4, .LBB0_248
# %bb.96:                               #   in Loop: Header=BB0_20 Depth=2
	ld.wu	$t1, $a3, 432
	bstrpick.d	$a5, $a6, 31, 11
	bstrpick.d	$t2, $t1, 15, 0
	mul.d	$a7, $t2, $a5
	addi.w	$t0, $a7, 0
	bgeu	$a1, $t0, .LBB0_162
# %bb.97:                               #   in Loop: Header=BB0_20 Depth=2
	move	$a6, $zero
	sub.d	$a5, $t8, $t2
	bstrpick.d	$a5, $a5, 31, 5
	add.w	$t2, $a5, $t1
	move	$a5, $a1
	b	.LBB0_163
.LBB0_98:                               #   in Loop: Header=BB0_20 Depth=2
	move	$a2, $a5
	st.w	$t0, $sp, 260
	bgeu	$a7, $t1, .LBB0_93
.LBB0_99:                               #   in Loop: Header=BB0_20 Depth=2
	slli.d	$a3, $t5, 4
	or	$a3, $a3, $a0
	addi.d	$a3, $a3, 240
	st.w	$a3, $sp, 260
	slli.d	$a3, $a3, 1
	and	$a3, $a3, $a4
	add.d	$a4, $s5, $a3
	addi.d	$a3, $a4, 4
	st.d	$a4, $sp, 248
	bltu	$s4, $a3, .LBB0_248
# %bb.100:                              #   in Loop: Header=BB0_20 Depth=2
	bltu	$a2, $s2, .LBB0_248
# %bb.101:                              #   in Loop: Header=BB0_20 Depth=2
	addi.d	$a3, $a2, 1
	bltu	$s4, $a3, .LBB0_248
# %bb.102:                              #   in Loop: Header=BB0_20 Depth=2
	ld.wu	$t0, $a4, 0
	bstrpick.d	$a5, $a6, 31, 11
	bstrpick.d	$t2, $t0, 15, 0
	mul.d	$a7, $t2, $a5
	addi.w	$a5, $a7, 0
	bgeu	$a1, $a5, .LBB0_170
# %bb.103:                              #   in Loop: Header=BB0_20 Depth=2
	move	$a6, $zero
	sub.d	$t1, $t8, $t2
	bstrpick.d	$t1, $t1, 31, 5
	add.w	$t2, $t1, $t0
	move	$t1, $a1
	b	.LBB0_171
.LBB0_104:                              #   in Loop: Header=BB0_20 Depth=2
	sub.w	$a2, $a2, $t0
	sub.w	$t0, $a6, $t0
	st.w	$a2, $sp, 276
	bstrpick.d	$a6, $t1, 31, 5
	sub.w	$t1, $a7, $a6
	ori	$a6, $zero, 6
.LBB0_105:                              #   in Loop: Header=BB0_20 Depth=2
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	vld	$vr1, $sp, 208                  # 16-byte Folded Reload
	ld.d	$t5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 200                   # 8-byte Folded Reload
	srli.d	$a7, $a7, 16
	bstrins.d	$t1, $a7, 63, 16
	st.w	$t0, $sp, 272
	bstrpick.d	$a7, $t0, 31, 24
	st.w	$t1, $a3, 2
	bnez	$a7, .LBB0_107
# %bb.106:                              #   in Loop: Header=BB0_20 Depth=2
	ld.bu	$a5, $a5, 0
	slli.w	$a2, $a2, 8
	or	$a2, $a2, $a5
	slli.d	$t0, $t0, 8
	st.w	$a2, $sp, 276
	st.w	$t0, $sp, 272
	st.d	$a4, $sp, 264
	b	.LBB0_108
.LBB0_107:                              #   in Loop: Header=BB0_20 Depth=2
	move	$a4, $a5
.LBB0_108:                              # %lzma_486248.exit.i.us
                                        #   in Loop: Header=BB0_20 Depth=2
	add.d	$t1, $a3, $a6
	addi.d	$a5, $t1, 4
	bltu	$s4, $a5, .LBB0_250
# %bb.109:                              #   in Loop: Header=BB0_20 Depth=2
	bltu	$a4, $s2, .LBB0_250
# %bb.110:                              #   in Loop: Header=BB0_20 Depth=2
	addi.d	$a5, $a4, 1
	bltu	$s4, $a5, .LBB0_250
# %bb.111:                              #   in Loop: Header=BB0_20 Depth=2
	ld.wu	$t2, $t1, 0
	bstrpick.d	$a7, $t0, 31, 11
	bstrpick.d	$t3, $t2, 15, 0
	mul.d	$a7, $t3, $a7
	addi.w	$t4, $a7, 0
	bgeu	$a2, $t4, .LBB0_113
# %bb.112:                              #   in Loop: Header=BB0_20 Depth=2
	move	$t0, $zero
	sub.d	$t3, $t8, $t3
	bstrpick.d	$t3, $t3, 31, 5
	add.w	$t3, $t3, $t2
	b	.LBB0_114
.LBB0_113:                              #   in Loop: Header=BB0_20 Depth=2
	sub.w	$a2, $a2, $a7
	sub.w	$a7, $t0, $a7
	st.w	$a2, $sp, 276
	bstrpick.d	$t0, $t3, 31, 5
	sub.w	$t3, $t2, $t0
	ori	$t0, $zero, 1
.LBB0_114:                              #   in Loop: Header=BB0_20 Depth=2
	srli.d	$t2, $t2, 16
	bstrins.d	$t3, $t2, 63, 16
	st.w	$a7, $sp, 272
	bstrpick.d	$t2, $a7, 31, 24
	st.w	$t3, $t1, 0
	bnez	$t2, .LBB0_116
# %bb.115:                              #   in Loop: Header=BB0_20 Depth=2
	ld.bu	$a4, $a4, 0
	slli.w	$a2, $a2, 8
	or	$a2, $a2, $a4
	slli.d	$a7, $a7, 8
	st.w	$a2, $sp, 276
	st.w	$a7, $sp, 272
	st.d	$a5, $sp, 264
	b	.LBB0_117
.LBB0_116:                              #   in Loop: Header=BB0_20 Depth=2
	move	$a5, $a4
.LBB0_117:                              # %lzma_486248.exit.i.us.1
                                        #   in Loop: Header=BB0_20 Depth=2
	or	$t0, $t0, $a6
	alsl.d	$t1, $t0, $a3, 1
	addi.d	$a4, $t1, 4
	bltu	$s4, $a4, .LBB0_250
# %bb.118:                              #   in Loop: Header=BB0_20 Depth=2
	bltu	$a5, $s2, .LBB0_250
# %bb.119:                              #   in Loop: Header=BB0_20 Depth=2
	addi.d	$a4, $a5, 1
	bltu	$s4, $a4, .LBB0_250
# %bb.120:                              #   in Loop: Header=BB0_20 Depth=2
	ld.wu	$t2, $t1, 0
	bstrpick.d	$a6, $a7, 31, 11
	bstrpick.d	$t3, $t2, 15, 0
	mul.d	$a6, $t3, $a6
	addi.w	$t4, $a6, 0
	bgeu	$a2, $t4, .LBB0_122
# %bb.121:                              #   in Loop: Header=BB0_20 Depth=2
	move	$a7, $zero
	sub.d	$t3, $t8, $t3
	bstrpick.d	$t3, $t3, 31, 5
	add.w	$t3, $t3, $t2
	b	.LBB0_123
.LBB0_122:                              #   in Loop: Header=BB0_20 Depth=2
	sub.w	$a2, $a2, $a6
	sub.w	$a6, $a7, $a6
	st.w	$a2, $sp, 276
	bstrpick.d	$a7, $t3, 31, 5
	sub.w	$t3, $t2, $a7
	ori	$a7, $zero, 1
.LBB0_123:                              #   in Loop: Header=BB0_20 Depth=2
	srli.d	$t2, $t2, 16
	bstrins.d	$t3, $t2, 63, 16
	st.w	$a6, $sp, 272
	bstrpick.d	$t2, $a6, 31, 24
	st.w	$t3, $t1, 0
	bnez	$t2, .LBB0_125
# %bb.124:                              #   in Loop: Header=BB0_20 Depth=2
	ld.bu	$a5, $a5, 0
	slli.w	$a2, $a2, 8
	or	$a2, $a2, $a5
	slli.d	$a6, $a6, 8
	st.w	$a2, $sp, 276
	st.w	$a6, $sp, 272
	st.d	$a4, $sp, 264
	b	.LBB0_126
.LBB0_125:                              #   in Loop: Header=BB0_20 Depth=2
	move	$a4, $a5
.LBB0_126:                              # %lzma_486248.exit.i.us.2
                                        #   in Loop: Header=BB0_20 Depth=2
	slli.d	$a5, $t0, 1
	or	$t0, $a7, $a5
	alsl.d	$t1, $t0, $a3, 1
	addi.d	$a5, $t1, 4
	bltu	$s4, $a5, .LBB0_250
# %bb.127:                              #   in Loop: Header=BB0_20 Depth=2
	bltu	$a4, $s2, .LBB0_250
# %bb.128:                              #   in Loop: Header=BB0_20 Depth=2
	addi.d	$a5, $a4, 1
	bltu	$s4, $a5, .LBB0_250
# %bb.129:                              #   in Loop: Header=BB0_20 Depth=2
	ld.wu	$t2, $t1, 0
	bstrpick.d	$a7, $a6, 31, 11
	bstrpick.d	$t3, $t2, 15, 0
	mul.d	$a7, $t3, $a7
	addi.w	$t4, $a7, 0
	bgeu	$a2, $t4, .LBB0_131
# %bb.130:                              #   in Loop: Header=BB0_20 Depth=2
	move	$a6, $zero
	sub.d	$t3, $t8, $t3
	bstrpick.d	$t3, $t3, 31, 5
	add.w	$t3, $t3, $t2
	b	.LBB0_132
.LBB0_131:                              #   in Loop: Header=BB0_20 Depth=2
	sub.w	$a2, $a2, $a7
	sub.w	$a7, $a6, $a7
	st.w	$a2, $sp, 276
	bstrpick.d	$a6, $t3, 31, 5
	sub.w	$t3, $t2, $a6
	ori	$a6, $zero, 1
.LBB0_132:                              #   in Loop: Header=BB0_20 Depth=2
	srli.d	$t2, $t2, 16
	bstrins.d	$t3, $t2, 63, 16
	st.w	$a7, $sp, 272
	bstrpick.d	$t2, $a7, 31, 24
	st.w	$t3, $t1, 0
	bnez	$t2, .LBB0_134
# %bb.133:                              #   in Loop: Header=BB0_20 Depth=2
	ld.bu	$a4, $a4, 0
	slli.w	$a2, $a2, 8
	or	$a2, $a2, $a4
	slli.d	$a7, $a7, 8
	st.w	$a2, $sp, 276
	st.w	$a7, $sp, 272
	st.d	$a5, $sp, 264
	b	.LBB0_135
.LBB0_134:                              #   in Loop: Header=BB0_20 Depth=2
	move	$a5, $a4
.LBB0_135:                              # %lzma_486248.exit.i.us.3
                                        #   in Loop: Header=BB0_20 Depth=2
	slli.d	$a4, $t0, 1
	or	$a4, $a6, $a4
	alsl.d	$t1, $a4, $a3, 1
	addi.d	$a6, $t1, 4
	bltu	$s4, $a6, .LBB0_250
# %bb.136:                              #   in Loop: Header=BB0_20 Depth=2
	bltu	$a5, $s2, .LBB0_250
# %bb.137:                              #   in Loop: Header=BB0_20 Depth=2
	addi.d	$a6, $a5, 1
	bltu	$s4, $a6, .LBB0_250
# %bb.138:                              #   in Loop: Header=BB0_20 Depth=2
	ld.wu	$t2, $t1, 0
	bstrpick.d	$t0, $a7, 31, 11
	bstrpick.d	$t3, $t2, 15, 0
	mul.d	$t0, $t3, $t0
	addi.w	$t4, $t0, 0
	bgeu	$a2, $t4, .LBB0_140
# %bb.139:                              #   in Loop: Header=BB0_20 Depth=2
	move	$a7, $zero
	sub.d	$t3, $t8, $t3
	bstrpick.d	$t3, $t3, 31, 5
	add.w	$t3, $t3, $t2
	b	.LBB0_141
.LBB0_140:                              #   in Loop: Header=BB0_20 Depth=2
	sub.w	$a2, $a2, $t0
	sub.w	$t0, $a7, $t0
	st.w	$a2, $sp, 276
	bstrpick.d	$a7, $t3, 31, 5
	sub.w	$t3, $t2, $a7
	ori	$a7, $zero, 1
.LBB0_141:                              #   in Loop: Header=BB0_20 Depth=2
	srli.d	$t2, $t2, 16
	bstrins.d	$t3, $t2, 63, 16
	st.w	$t0, $sp, 272
	bstrpick.d	$t2, $t0, 31, 24
	st.w	$t3, $t1, 0
	bnez	$t2, .LBB0_143
# %bb.142:                              #   in Loop: Header=BB0_20 Depth=2
	ld.bu	$a5, $a5, 0
	slli.w	$a2, $a2, 8
	or	$a2, $a2, $a5
	slli.d	$t0, $t0, 8
	st.w	$a2, $sp, 276
	st.w	$t0, $sp, 272
	st.d	$a6, $sp, 264
	b	.LBB0_144
.LBB0_143:                              #   in Loop: Header=BB0_20 Depth=2
	move	$a6, $a5
.LBB0_144:                              # %lzma_486248.exit.i.us.4
                                        #   in Loop: Header=BB0_20 Depth=2
	slli.d	$a4, $a4, 1
	or	$a5, $a7, $a4
	alsl.d	$a7, $a5, $a3, 1
	addi.d	$a3, $a7, 4
	bltu	$s4, $a3, .LBB0_250
# %bb.145:                              #   in Loop: Header=BB0_20 Depth=2
	bltu	$a6, $s2, .LBB0_250
# %bb.146:                              #   in Loop: Header=BB0_20 Depth=2
	addi.d	$a3, $a6, 1
	bltu	$s4, $a3, .LBB0_250
# %bb.147:                              #   in Loop: Header=BB0_20 Depth=2
	ld.wu	$t1, $a7, 0
	bstrpick.d	$a4, $t0, 31, 11
	bstrpick.d	$t2, $t1, 15, 0
	mul.d	$a4, $t2, $a4
	addi.w	$t3, $a4, 0
	bgeu	$a2, $t3, .LBB0_149
# %bb.148:                              #   in Loop: Header=BB0_20 Depth=2
	move	$t0, $zero
	sub.d	$t2, $t8, $t2
	bstrpick.d	$t2, $t2, 31, 5
	add.w	$t2, $t2, $t1
	b	.LBB0_150
.LBB0_149:                              #   in Loop: Header=BB0_20 Depth=2
	sub.w	$a2, $a2, $a4
	sub.w	$a4, $t0, $a4
	st.w	$a2, $sp, 276
	bstrpick.d	$t0, $t2, 31, 5
	sub.w	$t2, $t1, $t0
	ori	$t0, $zero, 1
.LBB0_150:                              #   in Loop: Header=BB0_20 Depth=2
	srli.d	$t1, $t1, 16
	bstrins.d	$t2, $t1, 63, 16
	st.w	$a4, $sp, 272
	bstrpick.d	$t1, $a4, 31, 24
	st.w	$t2, $a7, 0
	bnez	$t1, .LBB0_152
# %bb.151:                              #   in Loop: Header=BB0_20 Depth=2
	ld.bu	$a6, $a6, 0
	slli.w	$a2, $a2, 8
	or	$a2, $a2, $a6
	slli.d	$a4, $a4, 8
	st.w	$a2, $sp, 276
	st.w	$a4, $sp, 272
	st.d	$a3, $sp, 264
	move	$a7, $a3
	b	.LBB0_153
.LBB0_152:                              #   in Loop: Header=BB0_20 Depth=2
	move	$a3, $a6
.LBB0_153:                              # %lzma_486248.exit.i.us.5
                                        #   in Loop: Header=BB0_20 Depth=2
	slli.d	$a5, $a5, 1
	or	$a5, $t0, $a5
	st.d	$a7, $sp, 248
	ori	$a6, $zero, 64
	st.w	$a6, $sp, 256
	addi.d	$a6, $a5, -64
	st.w	$a6, $sp, 260
	ori	$a5, $zero, 4
	bgeu	$a6, $a5, .LBB0_155
.LBB0_154:                              #   in Loop: Header=BB0_20 Depth=2
	addi.w	$t1, $a6, 1
	b	.LBB0_199
.LBB0_155:                              #   in Loop: Header=BB0_20 Depth=2
	bstrpick.d	$a7, $a6, 31, 1
	addi.d	$t1, $a7, -1
	addi.d	$a5, $t0, 2
	sll.w	$a5, $a5, $t1
	ori	$t0, $zero, 13
	bgeu	$t0, $a6, .LBB0_181
# %bb.156:                              # %.preheader.i474.preheader.us
                                        #   in Loop: Header=BB0_20 Depth=2
	move	$a6, $zero
	addi.d	$t0, $a7, -5
	st.w	$t0, $sp, 256
	ori	$t0, $zero, 5
	sub.w	$a7, $t0, $a7
	b	.LBB0_159
.LBB0_157:                              #   in Loop: Header=BB0_159 Depth=3
	ld.bu	$a3, $a3, 0
	slli.w	$a2, $a2, 8
	slli.d	$a4, $a4, 8
	or	$a2, $a2, $a3
	st.d	$t1, $sp, 264
	move	$a3, $t1
.LBB0_158:                              #   in Loop: Header=BB0_159 Depth=3
	slli.d	$a6, $a6, 1
	bstrpick.d	$a7, $a7, 31, 0
	addi.d	$a7, $a7, 1
	slli.d	$t1, $a7, 31
	or	$a6, $a6, $t0
	bltz	$t1, .LBB0_225
.LBB0_159:                              # %.preheader.i474.us
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$t1, $a4, 31, 25
	bstrpick.d	$a4, $a4, 31, 1
	sltu	$t0, $a2, $a4
	xori	$t0, $t0, 1
	maskeqz	$t2, $a4, $t0
	sub.w	$a2, $a2, $t2
	bnez	$t1, .LBB0_158
# %bb.160:                              #   in Loop: Header=BB0_159 Depth=3
	bltu	$a3, $s2, .LBB0_250
# %bb.161:                              #   in Loop: Header=BB0_159 Depth=3
	addi.d	$t1, $a3, 1
	bgeu	$s4, $t1, .LBB0_157
	b	.LBB0_250
.LBB0_162:                              #   in Loop: Header=BB0_20 Depth=2
	sub.w	$a5, $a1, $a7
	sub.w	$a7, $a6, $a7
	st.w	$a5, $sp, 276
	bstrpick.d	$a6, $t2, 31, 5
	sub.w	$t2, $t1, $a6
	ori	$a6, $zero, 1
.LBB0_163:                              #   in Loop: Header=BB0_20 Depth=2
	srli.d	$t1, $t1, 16
	bstrins.d	$t2, $t1, 63, 16
	st.w	$a7, $sp, 272
	bstrpick.d	$t1, $a7, 31, 24
	st.w	$t2, $a3, 432
	bnez	$t1, .LBB0_178
# %bb.164:                              #   in Loop: Header=BB0_20 Depth=2
	st.d	$a2, $sp, 248
	ld.bu	$a2, $a2, 0
	slli.w	$a5, $a5, 8
	or	$a5, $a5, $a2
	slli.d	$a7, $a7, 8
	st.w	$a5, $sp, 276
	st.w	$a7, $sp, 272
	st.d	$a4, $sp, 264
	st.w	$a6, $sp, 260
	bltu	$a1, $t0, .LBB0_179
.LBB0_165:                              #   in Loop: Header=BB0_20 Depth=2
	addi.d	$a1, $a3, 460
	bltu	$s4, $a1, .LBB0_248
# %bb.166:                              #   in Loop: Header=BB0_20 Depth=2
	bltu	$a4, $s2, .LBB0_248
# %bb.167:                              #   in Loop: Header=BB0_20 Depth=2
	addi.d	$a1, $a4, 1
	bltu	$s4, $a1, .LBB0_248
# %bb.168:                              #   in Loop: Header=BB0_20 Depth=2
	ld.wu	$t0, $a3, 456
	bstrpick.d	$a2, $a7, 31, 11
	bstrpick.d	$t2, $t0, 15, 0
	mul.d	$a6, $t2, $a2
	addi.w	$a2, $a6, 0
	bgeu	$a5, $a2, .LBB0_192
# %bb.169:                              #   in Loop: Header=BB0_20 Depth=2
	sub.d	$a7, $t8, $t2
	bstrpick.d	$a7, $a7, 31, 5
	add.w	$a7, $a7, $t0
	move	$t1, $a5
	b	.LBB0_193
.LBB0_170:                              #   in Loop: Header=BB0_20 Depth=2
	sub.d	$t1, $a1, $a7
	sub.w	$a7, $a6, $a7
	st.w	$t1, $sp, 276
	bstrpick.d	$a6, $t2, 31, 5
	sub.w	$t2, $t0, $a6
	ori	$a6, $zero, 1
.LBB0_171:                              #   in Loop: Header=BB0_20 Depth=2
	srli.d	$t0, $t0, 16
	bstrins.d	$t2, $t0, 63, 16
	st.w	$a7, $sp, 272
	bstrpick.d	$t0, $a7, 31, 24
	st.w	$t2, $a4, 0
	bnez	$t0, .LBB0_173
# %bb.172:                              #   in Loop: Header=BB0_20 Depth=2
	st.d	$a2, $sp, 248
	ld.bu	$a2, $a2, 0
	slli.d	$a4, $t1, 8
	or	$a2, $a4, $a2
	st.d	$a3, $sp, 248
	slli.d	$a4, $a7, 8
	st.w	$a2, $sp, 276
	st.w	$a4, $sp, 272
	st.d	$a3, $sp, 264
.LBB0_173:                              # %lzma_486248.exit532.us
                                        #   in Loop: Header=BB0_20 Depth=2
	st.w	$a6, $sp, 260
	bgeu	$a1, $a5, .LBB0_180
# %bb.174:                              #   in Loop: Header=BB0_20 Depth=2
	sub.d	$a0, $t7, $t6
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$a0, $s0, $a0
	addi.d	$a1, $a0, 1
	bltu	$s4, $a1, .LBB0_248
# %bb.175:                              #   in Loop: Header=BB0_20 Depth=2
	ld.bu	$a3, $a0, 0
	bstrpick.d	$a0, $t7, 31, 0
	add.d	$a0, $s0, $a0
	addi.d	$a1, $a0, 1
	st.w	$t7, $sp, 256
	bltu	$s4, $a1, .LBB0_248
# %bb.176:                              #   in Loop: Header=BB0_20 Depth=2
	ori	$a1, $zero, 6
	sltu	$a1, $a1, $t5
	ori	$a2, $zero, 9
	masknez	$a2, $a2, $a1
	ori	$a4, $zero, 11
	maskeqz	$a1, $a4, $a1
	or	$t5, $a1, $a2
	addi.w	$a1, $t7, 1
	st.b	$a3, $a0, 0
	ori	$a5, $zero, 1
.LBB0_177:                              # %.loopexit613.us
                                        #   in Loop: Header=BB0_20 Depth=2
	ld.d	$a0, $sp, 240                   # 8-byte Folded Reload
	st.w	$a1, $sp, 260
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	move	$t7, $a1
	bltu	$a1, $s8, .LBB0_20
	b	.LBB0_244
.LBB0_178:                              #   in Loop: Header=BB0_20 Depth=2
	move	$a4, $a2
	st.w	$a6, $sp, 260
	bgeu	$a1, $t0, .LBB0_165
.LBB0_179:                              #   in Loop: Header=BB0_20 Depth=2
	ld.d	$a3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	b	.LBB0_196
.LBB0_180:                              #   in Loop: Header=BB0_20 Depth=2
	st.d	$t5, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 240                   # 8-byte Folded Reload
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	st.d	$t6, $sp, 16                    # 8-byte Folded Spill
	b	.LBB0_197
.LBB0_181:                              #   in Loop: Header=BB0_20 Depth=2
	sub.d	$a6, $a5, $a6
	slli.d	$a6, $a6, 1
	bstrpick.d	$a6, $a6, 31, 1
	ld.d	$a7, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a6, $a6, $a7, 1
	b	.LBB0_226
.LBB0_182:                              # %.preheader.i557.us
                                        #   in Loop: Header=BB0_20 Depth=2
	st.d	$a5, $sp, 248
	ori	$a2, $zero, 127
	bltu	$a2, $t2, .LBB0_75
.LBB0_183:                              # %.lr.ph92.i.us.preheader
                                        #   in Loop: Header=BB0_20 Depth=2
	move	$a2, $a3
	b	.LBB0_185
	.p2align	4, , 16
.LBB0_184:                              # %lzma_486248.exit80.i.us
                                        #   in Loop: Header=BB0_185 Depth=3
	or	$a3, $t0, $a3
	addi.w	$a6, $a2, 0
	move	$t0, $a7
	move	$a2, $a3
	ori	$a7, $zero, 128
	bgeu	$a6, $a7, .LBB0_74
.LBB0_185:                              # %.lr.ph92.i.us
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bltu	$a4, $s2, .LBB0_248
# %bb.186:                              # %.lr.ph92.i.us
                                        #   in Loop: Header=BB0_185 Depth=3
	addi.d	$a6, $a4, 1
	bltu	$s4, $a6, .LBB0_248
# %bb.187:                              #   in Loop: Header=BB0_185 Depth=3
	slli.d	$a3, $a2, 1
	addi.w	$a5, $a3, 0
	add.d	$a5, $a0, $a5
	ld.wu	$t1, $a5, 0
	bstrpick.d	$a7, $t0, 31, 11
	bstrpick.d	$t2, $t1, 15, 0
	mul.d	$a7, $t2, $a7
	addi.w	$t3, $a7, 0
	bgeu	$a1, $t3, .LBB0_189
# %bb.188:                              #   in Loop: Header=BB0_185 Depth=3
	move	$t0, $zero
	sub.d	$t2, $t8, $t2
	bstrpick.d	$t2, $t2, 31, 5
	add.w	$t2, $t2, $t1
	b	.LBB0_190
	.p2align	4, , 16
.LBB0_189:                              #   in Loop: Header=BB0_185 Depth=3
	sub.w	$a1, $a1, $a7
	sub.w	$a7, $t0, $a7
	st.w	$a1, $sp, 276
	bstrpick.d	$t0, $t2, 31, 5
	sub.w	$t2, $t1, $t0
	ori	$t0, $zero, 1
.LBB0_190:                              #   in Loop: Header=BB0_185 Depth=3
	srli.d	$t1, $t1, 16
	bstrins.d	$t2, $t1, 63, 16
	st.w	$a7, $sp, 272
	bstrpick.d	$t1, $a7, 31, 24
	st.w	$t2, $a5, 0
	bnez	$t1, .LBB0_184
# %bb.191:                              #   in Loop: Header=BB0_185 Depth=3
	ld.bu	$a4, $a4, 0
	slli.w	$a1, $a1, 8
	or	$a1, $a1, $a4
	slli.d	$a7, $a7, 8
	st.w	$a1, $sp, 276
	st.w	$a7, $sp, 272
	st.d	$a6, $sp, 264
	move	$a5, $a6
	move	$a4, $a6
	b	.LBB0_184
.LBB0_192:                              #   in Loop: Header=BB0_20 Depth=2
	sub.d	$t1, $a5, $a6
	sub.w	$a6, $a7, $a6
	st.w	$t1, $sp, 276
	bstrpick.d	$a7, $t2, 31, 5
	sub.w	$a7, $t0, $a7
.LBB0_193:                              #   in Loop: Header=BB0_20 Depth=2
	ld.d	$t2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 160                   # 8-byte Folded Reload
	srli.d	$t0, $t0, 16
	bstrins.d	$a7, $t0, 63, 16
	st.w	$a6, $sp, 272
	bstrpick.d	$t0, $a6, 31, 24
	st.w	$a7, $a3, 456
	bnez	$t0, .LBB0_195
# %bb.194:                              #   in Loop: Header=BB0_20 Depth=2
	st.d	$a4, $sp, 248
	ld.bu	$a3, $a4, 0
	slli.d	$a4, $t1, 8
	or	$a3, $a4, $a3
	st.d	$a1, $sp, 248
	slli.d	$a4, $a6, 8
	st.w	$a3, $sp, 276
	st.w	$a4, $sp, 272
	st.d	$a1, $sp, 264
.LBB0_195:                              # %lzma_486248.exit521.us
                                        #   in Loop: Header=BB0_20 Depth=2
	sltu	$a1, $a5, $a2
	masknez	$a2, $t3, $a1
	maskeqz	$a3, $t2, $a1
	or	$a3, $a3, $a2
	masknez	$a2, $t2, $a1
	maskeqz	$a1, $t3, $a1
	or	$a1, $a1, $a2
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
.LBB0_196:                              #   in Loop: Header=BB0_20 Depth=2
	st.d	$t5, $sp, 184                   # 8-byte Folded Spill
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	st.w	$a3, $sp, 260
	st.d	$t6, $sp, 8                     # 8-byte Folded Spill
.LBB0_197:                              #   in Loop: Header=BB0_20 Depth=2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$a1, $sp, 248
	addi.d	$a1, $sp, 264
	addi.d	$a2, $sp, 248
	addi.d	$a3, $sp, 256
	addi.d	$a4, $sp, 260
	move	$a5, $s2
	move	$a6, $ra
	pcaddu18i	$ra, %call36(lzma_4863da)
	jirl	$ra, $ra, 0
	addi.w	$a2, $zero, -1
	move	$a1, $a0
	move	$a0, $a2
	beq	$a1, $a2, .LBB0_250
# %bb.198:                              #   in Loop: Header=BB0_20 Depth=2
	ld.w	$a1, $sp, 260
	ori	$a0, $zero, 6
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	sltu	$a0, $a0, $a2
	ori	$a2, $zero, 8
	masknez	$a2, $a2, $a0
	ori	$a3, $zero, 11
	maskeqz	$a0, $a3, $a0
	or	$t5, $a0, $a2
	st.w	$t5, $sp, 260
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 8                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	vld	$vr1, $sp, 208                  # 16-byte Folded Reload
	ori	$t8, $zero, 2048
	ld.d	$t7, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 16                    # 8-byte Folded Reload
.LBB0_199:                              #   in Loop: Header=BB0_20 Depth=2
	beqz	$t1, .LBB0_244
# %bb.200:                              #   in Loop: Header=BB0_20 Depth=2
	addi.w	$a2, $a1, 2
	st.d	$s0, $sp, 248
	st.w	$t7, $sp, 260
	sub.w	$a0, $t7, $t1
	sub.w	$a4, $s8, $t7
	addi.w	$a3, $a1, 1
	bstrpick.d	$a1, $a0, 31, 0
	bgeu	$a2, $a4, .LBB0_206
# %bb.201:                              #   in Loop: Header=BB0_20 Depth=2
	bgeu	$a3, $ra, .LBB0_248
# %bb.202:                              #   in Loop: Header=BB0_20 Depth=2
	add.d	$a6, $s0, $a1
	bstrpick.d	$a5, $a2, 31, 0
	add.d	$a6, $a6, $a5
	bltu	$s4, $a6, .LBB0_248
# %bb.203:                              #   in Loop: Header=BB0_20 Depth=2
	add.d	$a6, $s3, $a1
	or	$a6, $a6, $a5
	beqz	$a6, .LBB0_248
# %bb.204:                              #   in Loop: Header=BB0_20 Depth=2
	bstrpick.d	$a6, $t7, 31, 0
	add.d	$a7, $s0, $a6
	add.d	$a7, $a7, $a5
	bltu	$s4, $a7, .LBB0_248
# %bb.205:                              #   in Loop: Header=BB0_20 Depth=2
	add.d	$a6, $s3, $a6
	or	$a5, $a6, $a5
	beqz	$a5, .LBB0_248
.LBB0_206:                              #   in Loop: Header=BB0_20 Depth=2
	beq	$s8, $t7, .LBB0_248
# %bb.207:                              #   in Loop: Header=BB0_20 Depth=2
	bltu	$ra, $a4, .LBB0_248
# %bb.208:                              #   in Loop: Header=BB0_20 Depth=2
	bstrpick.d	$a4, $t7, 31, 0
	ld.d	$a5, $sp, 144                   # 8-byte Folded Reload
	add.d	$a5, $a5, $a1
	bgeu	$a4, $a5, .LBB0_248
# %bb.209:                              #   in Loop: Header=BB0_20 Depth=2
	ld.d	$a6, $sp, 136                   # 8-byte Folded Reload
	add.d	$a5, $a6, $a1
	sub.d	$a5, $a5, $a4
	bltu	$s4, $a5, .LBB0_248
# %bb.210:                              #   in Loop: Header=BB0_20 Depth=2
	bltu	$s4, $a6, .LBB0_248
# %bb.211:                              # %.preheader612.us.preheader
                                        #   in Loop: Header=BB0_20 Depth=2
	addi.w	$a5, $t7, 1
	sltu	$a6, $a5, $s8
	masknez	$a5, $a5, $a6
	maskeqz	$a6, $s8, $a6
	or	$a5, $a6, $a5
	nor	$a6, $t7, $zero
	add.w	$a5, $a5, $a6
	sltu	$a7, $a5, $a3
	maskeqz	$a5, $a5, $a7
	masknez	$a3, $a3, $a7
	or	$a5, $a5, $a3
	addi.w	$a3, $a5, 1
	ori	$a7, $zero, 16
	bgeu	$a3, $a7, .LBB0_216
.LBB0_212:                              # %.preheader612.us.preheader1211
                                        #   in Loop: Header=BB0_20 Depth=2
	addi.w	$a2, $a2, -1
	move	$a1, $t7
	.p2align	4, , 16
.LBB0_213:                              # %.preheader612.us
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	bstrpick.d	$a3, $a0, 31, 0
	ldx.bu	$a3, $s0, $a3
	bstrpick.d	$a4, $a1, 31, 0
	stx.b	$a3, $s0, $a4
	addi.w	$a1, $a1, 1
	st.w	$a1, $sp, 256
	bstrpick.d	$a2, $a2, 31, 0
	addi.w	$a4, $zero, -1
	lu32i.d	$a4, 0
	add.d	$a2, $a2, $a4
	slli.d	$a4, $a2, 31
	ori	$a5, $zero, 1
	bgez	$a4, .LBB0_215
# %bb.214:                              # %.preheader612.us
                                        #   in Loop: Header=BB0_213 Depth=3
	addi.w	$a0, $a0, 1
	bltu	$a1, $s8, .LBB0_213
.LBB0_215:                              #   in Loop: Header=BB0_20 Depth=2
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	move	$a0, $t6
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	st.d	$a2, $sp, 192                   # 8-byte Folded Spill
	move	$t6, $t1
	st.w	$a1, $sp, 260
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	move	$t7, $a1
	bltu	$a1, $s8, .LBB0_20
	b	.LBB0_244
.LBB0_216:                              # %vector.scevcheck
                                        #   in Loop: Header=BB0_20 Depth=2
	addi.w	$a6, $a6, 0
	bltu	$a6, $a5, .LBB0_212
# %bb.217:                              # %vector.scevcheck
                                        #   in Loop: Header=BB0_20 Depth=2
	nor	$a6, $a0, $zero
	bltu	$a6, $a5, .LBB0_212
# %bb.218:                              # %vector.memcheck
                                        #   in Loop: Header=BB0_20 Depth=2
	add.d	$a6, $s0, $a4
	bstrpick.d	$a5, $a5, 31, 0
	ld.d	$a7, $sp, 112                   # 8-byte Folded Reload
	add.d	$a5, $a7, $a5
	add.d	$a4, $a5, $a4
	addi.d	$a7, $sp, 260
	sltu	$a7, $a6, $a7
	addi.d	$t0, $sp, 256
	sltu	$t0, $t0, $a4
	and	$a7, $a7, $t0
	bnez	$a7, .LBB0_212
# %bb.219:                              # %vector.memcheck
                                        #   in Loop: Header=BB0_20 Depth=2
	add.d	$a7, $s0, $a1
	add.d	$a1, $a5, $a1
	sltu	$a5, $a6, $a1
	sltu	$a4, $a7, $a4
	and	$a4, $a5, $a4
	bnez	$a4, .LBB0_212
# %bb.220:                              # %vector.memcheck
                                        #   in Loop: Header=BB0_20 Depth=2
	addi.d	$a4, $sp, 256
	sltu	$a1, $a4, $a1
	addi.d	$a4, $sp, 260
	sltu	$a4, $a7, $a4
	and	$a1, $a1, $a4
	bnez	$a1, .LBB0_212
# %bb.221:                              # %vector.ph
                                        #   in Loop: Header=BB0_20 Depth=2
	move	$a4, $a3
	bstrins.d	$a4, $zero, 1, 0
	add.w	$a1, $t7, $a4
	add.w	$a0, $a0, $a4
	sub.d	$a2, $a2, $a4
	sub.w	$a5, $zero, $t1
	move	$a6, $a4
	.p2align	4, , 16
.LBB0_222:                              # %vector.body
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a7, $a5, $t7
	bstrpick.d	$a7, $a7, 31, 0
	ldx.w	$a7, $s0, $a7
	bstrpick.d	$t0, $t7, 31, 0
	stx.w	$a7, $s0, $t0
	addi.w	$a6, $a6, -4
	addi.w	$t7, $t7, 4
	bnez	$a6, .LBB0_222
# %bb.223:                              # %middle.block
                                        #   in Loop: Header=BB0_20 Depth=2
	st.w	$t7, $sp, 256
	bne	$a3, $a4, .LBB0_243
# %bb.224:                              #   in Loop: Header=BB0_20 Depth=2
	vinsgr2vr.w	$vr0, $a7, 0
	vpickve2gr.b	$a3, $vr0, 3
	ori	$a5, $zero, 1
	b	.LBB0_215
.LBB0_225:                              # %.thread.us
                                        #   in Loop: Header=BB0_20 Depth=2
	st.w	$a2, $sp, 276
	st.w	$a4, $sp, 272
	st.w	$a6, $sp, 260
	alsl.w	$a5, $a6, $a5, 4
	ori	$t1, $zero, 4
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
.LBB0_226:                              # %.preheader.i476.us
                                        #   in Loop: Header=BB0_20 Depth=2
	st.d	$a6, $sp, 248
	addi.d	$t3, $a6, 2
	ori	$a7, $zero, 1
	st.w	$a7, $sp, 256
	bltu	$t3, $s2, .LBB0_250
# %bb.227:                              # %.preheader.i476.us
                                        #   in Loop: Header=BB0_20 Depth=2
	addi.d	$a7, $a6, 6
	bltu	$s4, $a7, .LBB0_250
# %bb.228:                              # %.lr.ph.us
                                        #   in Loop: Header=BB0_20 Depth=2
	bltu	$a3, $s2, .LBB0_250
# %bb.229:                              # %.lr.ph.us
                                        #   in Loop: Header=BB0_20 Depth=2
	addi.d	$t2, $a3, 1
	bltu	$s4, $t2, .LBB0_250
# %bb.230:                              # %.lr.ph.preheader
                                        #   in Loop: Header=BB0_20 Depth=2
	move	$a7, $zero
	move	$t0, $zero
	addi.w	$t1, $t1, -1
	ori	$t4, $zero, 2
	.p2align	4, , 16
.LBB0_231:                              # %.lr.ph
                                        #   Parent Loop BB0_10 Depth=1
                                        #     Parent Loop BB0_20 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.wu	$t7, $t3, 0
	bstrpick.d	$t5, $a4, 31, 11
	bstrpick.d	$t8, $t7, 15, 0
	mul.d	$t6, $t8, $t5
	addi.w	$t5, $t6, 0
	bgeu	$a2, $t5, .LBB0_233
# %bb.232:                              #   in Loop: Header=BB0_231 Depth=3
	move	$t5, $zero
	ori	$a4, $zero, 2048
	sub.d	$a4, $a4, $t8
	ori	$t8, $zero, 2048
	bstrpick.d	$a4, $a4, 31, 5
	add.w	$a4, $a4, $t7
	b	.LBB0_234
.LBB0_233:                              #   in Loop: Header=BB0_231 Depth=3
	sub.w	$a2, $a2, $t6
	sub.w	$t6, $a4, $t6
	st.w	$a2, $sp, 276
	bstrpick.d	$a4, $t8, 31, 5
	sub.w	$a4, $t7, $a4
	ori	$t5, $zero, 1
	ori	$t8, $zero, 2048
.LBB0_234:                              #   in Loop: Header=BB0_231 Depth=3
	srli.d	$t7, $t7, 16
	bstrins.d	$a4, $t7, 63, 16
	st.w	$t6, $sp, 272
	bstrpick.d	$t7, $t6, 31, 24
	st.w	$a4, $t3, 0
	bnez	$t7, .LBB0_236
# %bb.235:                              #   in Loop: Header=BB0_231 Depth=3
	ld.bu	$a3, $a3, 0
	slli.w	$a2, $a2, 8
	or	$a2, $a2, $a3
	slli.d	$a4, $t6, 8
	st.w	$a2, $sp, 276
	st.w	$a4, $sp, 272
	st.d	$t2, $sp, 264
	move	$a3, $t2
	b	.LBB0_237
.LBB0_236:                              #   in Loop: Header=BB0_231 Depth=3
	move	$a4, $t6
	move	$t2, $t3
.LBB0_237:                              # %lzma_486248.exit.i488.us
                                        #   in Loop: Header=BB0_231 Depth=3
	or	$t3, $t5, $t4
	sll.w	$t4, $t5, $t0
	or	$a7, $t4, $a7
	ld.d	$t5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 160                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 200                   # 8-byte Folded Reload
	beq	$t1, $t0, .LBB0_242
# %bb.238:                              #   in Loop: Header=BB0_231 Depth=3
	slli.d	$t4, $t3, 1
	bstrpick.d	$t2, $t4, 31, 1
	alsl.d	$t3, $t2, $a6, 1
	bltu	$t3, $s2, .LBB0_250
# %bb.239:                              #   in Loop: Header=BB0_231 Depth=3
	addi.d	$t2, $t3, 4
	bltu	$s4, $t2, .LBB0_250
# %bb.240:                              #   in Loop: Header=BB0_231 Depth=3
	bltu	$a3, $s2, .LBB0_250
# %bb.241:                              #   in Loop: Header=BB0_231 Depth=3
	addi.d	$t2, $a3, 1
	addi.w	$t0, $t0, 1
	bgeu	$s4, $t2, .LBB0_231
	b	.LBB0_250
.LBB0_242:                              #   in Loop: Header=BB0_20 Depth=2
	st.d	$t2, $sp, 248
	st.w	$t3, $sp, 256
	st.w	$a7, $sp, 260
	add.d	$a6, $a7, $a5
	b	.LBB0_154
.LBB0_243:                              #   in Loop: Header=BB0_20 Depth=2
	move	$t7, $a1
	b	.LBB0_212
.LBB0_244:                              #   in Loop: Header=BB0_10 Depth=1
	move	$t4, $s7
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 96                    # 8-byte Folded Reload
	lu12i.w	$t0, -7
	ld.d	$a5, $sp, 72                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$t3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beqz	$a4, .LBB0_10
# %bb.245:                              # %.split914.us
	ld.w	$a1, $sp, 256
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	move	$a2, $s1
	move	$s2, $ra
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $s1, -1
	bgeu	$a0, $s2, .LBB0_248
# %bb.246:                              # %.split914.us
	bstrpick.d	$a0, $s1, 31, 0
	add.d	$a1, $s0, $a0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	bltu	$s4, $a1, .LBB0_250
# %bb.247:                              # %.preheader.preheader
	move	$a1, $zero
	ori	$a2, $zero, 232
	b	.LBB0_252
.LBB0_248:
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	b	.LBB0_250
.LBB0_249:
	move	$a0, $zero
.LBB0_250:                              # %lzma_4862e0.exit.thread
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
.LBB0_251:                              #   in Loop: Header=BB0_252 Depth=1
	add.w	$a1, $a1, $a3
	move	$a0, $zero
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	beq	$a1, $a3, .LBB0_250
.LBB0_252:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a0, $a1, 31, 0
	ldx.bu	$a3, $fp, $a0
	andi	$a4, $a3, 254
	ori	$a3, $zero, 1
	bne	$a4, $a2, .LBB0_251
# %bb.253:                              #   in Loop: Header=BB0_252 Depth=1
	add.d	$a0, $fp, $a0
	ld.w	$a3, $a0, 1
	nor	$a4, $a1, $zero
	revb.2w	$a3, $a3
	add.d	$a3, $a3, $a4
	st.w	$a3, $a0, 1
	ori	$a3, $zero, 5
	b	.LBB0_251
.Lfunc_end0:
	.size	mew_lzma, .Lfunc_end0-mew_lzma
                                        # -- End function
	.p2align	5                               # -- Begin function lzma_4863da
	.type	lzma_4863da,@function
lzma_4863da:                            # @lzma_4863da
# %bb.0:
	ld.d	$t0, $a2, 0
	move	$a7, $a0
	addi.w	$a0, $zero, -1
	bltu	$t0, $a5, .LBB1_2
# %bb.1:
	addi.d	$t1, $t0, 4
	bstrpick.d	$a6, $a6, 31, 0
	add.d	$a6, $a5, $a6
	bgeu	$a6, $t1, .LBB1_3
.LBB1_2:                                # %lzma_486248.exit.thread
	ret
.LBB1_3:
	ld.d	$t2, $a1, 0
	bltu	$t2, $a5, .LBB1_2
# %bb.4:
	addi.d	$t2, $t2, 1
	bltu	$a6, $t2, .LBB1_2
# %bb.5:
	ld.wu	$t5, $a1, 8
	ld.wu	$t4, $t0, 0
	ld.w	$t2, $a1, 12
	srli.d	$t3, $t5, 11
	bstrpick.d	$t6, $t4, 15, 0
	mul.w	$t3, $t6, $t3
	bgeu	$t2, $t3, .LBB1_7
# %bb.6:
	ori	$t5, $zero, 2048
	sub.d	$t5, $t5, $t6
	bstrpick.d	$t5, $t5, 31, 5
	add.w	$t6, $t5, $t4
	move	$t5, $t3
	b	.LBB1_8
.LBB1_7:
	sub.d	$t5, $t5, $t3
	sub.d	$t7, $t2, $t3
	st.w	$t7, $a1, 12
	bstrpick.d	$t6, $t6, 31, 5
	sub.w	$t6, $t4, $t6
.LBB1_8:
	srli.d	$t4, $t4, 16
	bstrins.d	$t6, $t4, 63, 16
	st.w	$t5, $a1, 8
	st.w	$t6, $t0, 0
	ld.wu	$t4, $a1, 8
	srli.d	$t5, $t4, 24
	bnez	$t5, .LBB1_10
# %bb.9:
	ld.d	$t5, $a1, 0
	st.d	$t5, $a2, 0
	ld.w	$t6, $a1, 12
	ld.bu	$t7, $t5, 0
	slli.d	$t6, $t6, 8
	or	$t6, $t6, $t7
	addi.d	$t5, $t5, 1
	st.d	$t5, $a2, 0
	slli.d	$t4, $t4, 8
	st.w	$t6, $a1, 12
	st.w	$t4, $a1, 8
	st.d	$t5, $a1, 0
.LBB1_10:                               # %lzma_486248.exit
	bgeu	$t2, $t3, .LBB1_17
# %bb.11:                               # %.preheader.i77
	slli.d	$a7, $a7, 4
	ori	$t0, $zero, 3
	st.w	$t0, $a3, 0
	bstrpick.d	$a7, $a7, 31, 4
	alsl.d	$a7, $a7, $t1, 4
	addi.d	$t1, $a7, 2
	st.d	$t1, $a2, 0
	bltu	$t1, $a5, .LBB1_2
# %bb.12:                               # %.preheader.i77
	addi.d	$t0, $a7, 6
	bltu	$a6, $t0, .LBB1_2
# %bb.13:
	ld.d	$t0, $a1, 0
	bltu	$t0, $a5, .LBB1_2
# %bb.14:
	addi.d	$t0, $t0, 1
	bltu	$a6, $t0, .LBB1_2
# %bb.15:
	ld.wu	$t0, $a1, 8
	ld.wu	$t2, $t1, 0
	ld.w	$t5, $a1, 12
	srli.d	$t3, $t0, 11
	bstrpick.d	$t4, $t2, 15, 0
	mul.w	$t3, $t4, $t3
	bgeu	$t5, $t3, .LBB1_43
# %bb.16:
	ori	$t0, $zero, 2048
	sub.d	$t0, $t0, $t4
	bstrpick.d	$t0, $t0, 31, 5
	add.w	$t4, $t0, $t2
	ori	$t0, $zero, 4
	b	.LBB1_44
.LBB1_17:
	addi.d	$t3, $t0, 2
	addi.d	$t1, $t0, 6
	st.d	$t3, $a2, 0
	bltu	$a6, $t1, .LBB1_2
# %bb.18:
	ld.d	$t1, $a1, 0
	bltu	$t1, $a5, .LBB1_2
# %bb.19:
	addi.d	$t1, $t1, 1
	bltu	$a6, $t1, .LBB1_2
# %bb.20:
	ld.wu	$t5, $t3, 0
	ld.w	$t1, $a1, 12
	bstrpick.d	$t2, $t4, 31, 11
	bstrpick.d	$t6, $t5, 15, 0
	mul.w	$t2, $t6, $t2
	bgeu	$t1, $t2, .LBB1_22
# %bb.21:
	ori	$t4, $zero, 2048
	sub.d	$t4, $t4, $t6
	bstrpick.d	$t4, $t4, 31, 5
	add.w	$t6, $t4, $t5
	move	$t4, $t2
	b	.LBB1_23
.LBB1_22:
	sub.d	$t4, $t4, $t2
	sub.d	$t7, $t1, $t2
	st.w	$t7, $a1, 12
	bstrpick.d	$t6, $t6, 31, 5
	sub.w	$t6, $t5, $t6
.LBB1_23:
	srli.d	$t5, $t5, 16
	bstrins.d	$t6, $t5, 63, 16
	st.w	$t4, $a1, 8
	st.w	$t6, $t3, 0
	ld.wu	$t3, $a1, 8
	srli.d	$t4, $t3, 24
	bnez	$t4, .LBB1_25
# %bb.24:
	ld.d	$t4, $a1, 0
	st.d	$t4, $a2, 0
	ld.w	$t5, $a1, 12
	ld.bu	$t6, $t4, 0
	slli.d	$t5, $t5, 8
	or	$t5, $t5, $t6
	addi.d	$t4, $t4, 1
	st.d	$t4, $a2, 0
	slli.d	$t3, $t3, 8
	st.w	$t5, $a1, 12
	st.w	$t3, $a1, 8
	st.d	$t4, $a1, 0
.LBB1_25:                               # %lzma_486248.exit51
	bgeu	$t1, $t2, .LBB1_32
# %bb.26:                               # %.preheader.i57
	slli.d	$a7, $a7, 4
	ori	$t1, $zero, 3
	st.w	$t1, $a3, 0
	bstrpick.d	$a7, $a7, 31, 4
	alsl.d	$t0, $a7, $t0, 4
	addi.d	$t1, $t0, 262
	st.d	$t1, $a2, 0
	bltu	$t1, $a5, .LBB1_2
# %bb.27:                               # %.preheader.i57
	addi.d	$a7, $t0, 266
	bltu	$a6, $a7, .LBB1_2
# %bb.28:
	ld.d	$a7, $a1, 0
	bltu	$a7, $a5, .LBB1_2
# %bb.29:
	addi.d	$a7, $a7, 1
	bltu	$a6, $a7, .LBB1_2
# %bb.30:
	ld.wu	$a7, $a1, 8
	ld.wu	$t2, $t1, 0
	ld.w	$t5, $a1, 12
	srli.d	$t3, $a7, 11
	bstrpick.d	$t4, $t2, 15, 0
	mul.w	$t3, $t4, $t3
	bgeu	$t5, $t3, .LBB1_62
# %bb.31:
	ori	$a7, $zero, 2048
	sub.d	$a7, $a7, $t4
	bstrpick.d	$a7, $a7, 31, 5
	add.w	$t4, $a7, $t2
	ori	$a7, $zero, 4
	b	.LBB1_63
.LBB1_32:                               # %.preheader.i
	ori	$a7, $zero, 8
	st.w	$a7, $a3, 0
	addi.d	$a7, $t0, 516
	ori	$t2, $zero, 1
	addi.w	$t0, $zero, -8
	ori	$t1, $zero, 2048
	b	.LBB1_34
.LBB1_33:                               # %lzma_486248.exit.i
                                        #   in Loop: Header=BB1_34 Depth=1
	bstrpick.d	$t0, $t0, 31, 0
	addi.d	$t0, $t0, 1
	slli.d	$t3, $t0, 31
	or	$t2, $t4, $t2
	bltz	$t3, .LBB1_52
.LBB1_34:                               # =>This Inner Loop Header: Depth=1
	slli.d	$t2, $t2, 1
	bstrpick.d	$t3, $t2, 31, 1
	alsl.d	$t3, $t3, $a7, 1
	st.d	$t3, $a2, 0
	bltu	$t3, $a5, .LBB1_2
# %bb.35:                               #   in Loop: Header=BB1_34 Depth=1
	addi.d	$t4, $t3, 4
	bltu	$a6, $t4, .LBB1_2
# %bb.36:                               #   in Loop: Header=BB1_34 Depth=1
	ld.d	$t4, $a1, 0
	bltu	$t4, $a5, .LBB1_2
# %bb.37:                               #   in Loop: Header=BB1_34 Depth=1
	addi.d	$t4, $t4, 1
	bltu	$a6, $t4, .LBB1_2
# %bb.38:                               #   in Loop: Header=BB1_34 Depth=1
	ld.wu	$t4, $a1, 8
	ld.wu	$t5, $t3, 0
	ld.w	$t8, $a1, 12
	srli.d	$t6, $t4, 11
	bstrpick.d	$t7, $t5, 15, 0
	mul.w	$t6, $t7, $t6
	bgeu	$t8, $t6, .LBB1_40
# %bb.39:                               #   in Loop: Header=BB1_34 Depth=1
	move	$t4, $zero
	sub.d	$t7, $t1, $t7
	bstrpick.d	$t7, $t7, 31, 5
	add.w	$t7, $t7, $t5
	b	.LBB1_41
.LBB1_40:                               #   in Loop: Header=BB1_34 Depth=1
	sub.d	$t8, $t8, $t6
	sub.d	$t6, $t4, $t6
	st.w	$t8, $a1, 12
	bstrpick.d	$t4, $t7, 31, 5
	sub.w	$t7, $t5, $t4
	ori	$t4, $zero, 1
.LBB1_41:                               #   in Loop: Header=BB1_34 Depth=1
	srli.d	$t5, $t5, 16
	bstrins.d	$t7, $t5, 63, 16
	st.w	$t6, $a1, 8
	st.w	$t7, $t3, 0
	ld.wu	$t3, $a1, 8
	srli.d	$t5, $t3, 24
	bnez	$t5, .LBB1_33
# %bb.42:                               #   in Loop: Header=BB1_34 Depth=1
	ld.d	$t5, $a1, 0
	st.d	$t5, $a2, 0
	ld.w	$t6, $a1, 12
	ld.bu	$t7, $t5, 0
	slli.d	$t6, $t6, 8
	or	$t6, $t6, $t7
	addi.d	$t5, $t5, 1
	st.d	$t5, $a2, 0
	slli.d	$t3, $t3, 8
	st.w	$t6, $a1, 12
	st.w	$t3, $a1, 8
	st.d	$t5, $a1, 0
	b	.LBB1_33
.LBB1_43:
	sub.d	$t5, $t5, $t3
	sub.d	$t3, $t0, $t3
	st.w	$t5, $a1, 12
	bstrpick.d	$t0, $t4, 31, 5
	sub.w	$t4, $t2, $t0
	ori	$t0, $zero, 6
.LBB1_44:
	srli.d	$t2, $t2, 16
	bstrins.d	$t4, $t2, 63, 16
	st.w	$t3, $a1, 8
	st.w	$t4, $t1, 0
	ld.wu	$t2, $a1, 8
	srli.d	$t1, $t2, 24
	bnez	$t1, .LBB1_46
# %bb.45:
	ld.d	$t1, $a1, 0
	st.d	$t1, $a2, 0
	ld.w	$t3, $a1, 12
	ld.bu	$t4, $t1, 0
	slli.d	$t3, $t3, 8
	or	$t3, $t3, $t4
	addi.d	$t1, $t1, 1
	slli.d	$t2, $t2, 8
	st.w	$t3, $a1, 12
	st.w	$t2, $a1, 8
	st.d	$t1, $a1, 0
.LBB1_46:                               # %lzma_486248.exit.i90
	add.d	$t1, $a7, $t0
	st.d	$t1, $a2, 0
	bltu	$t1, $a5, .LBB1_2
# %bb.47:                               # %lzma_486248.exit.i90
	addi.d	$t3, $t1, 4
	bltu	$a6, $t3, .LBB1_2
# %bb.48:
	ld.d	$t3, $a1, 0
	bltu	$t3, $a5, .LBB1_2
# %bb.49:
	addi.d	$t3, $t3, 1
	bltu	$a6, $t3, .LBB1_2
# %bb.50:
	ld.wu	$t3, $t1, 0
	ld.w	$t6, $a1, 12
	bstrpick.d	$t4, $t2, 31, 11
	bstrpick.d	$t5, $t3, 15, 0
	mul.w	$t4, $t5, $t4
	bgeu	$t6, $t4, .LBB1_53
# %bb.51:
	move	$t2, $zero
	ori	$t6, $zero, 2048
	sub.d	$t5, $t6, $t5
	bstrpick.d	$t5, $t5, 31, 5
	add.w	$t5, $t5, $t3
	b	.LBB1_54
.LBB1_52:
	ori	$a0, $zero, 256
	st.w	$a0, $a3, 0
	addi.d	$a1, $t2, -240
	move	$a0, $zero
	st.w	$a1, $a4, 0
	ret
.LBB1_53:
	sub.d	$t6, $t6, $t4
	sub.d	$t4, $t2, $t4
	st.w	$t6, $a1, 12
	bstrpick.d	$t2, $t5, 31, 5
	sub.w	$t5, $t3, $t2
	ori	$t2, $zero, 1
.LBB1_54:
	srli.d	$t3, $t3, 16
	bstrins.d	$t5, $t3, 63, 16
	st.w	$t4, $a1, 8
	st.w	$t5, $t1, 0
	ld.wu	$t1, $a1, 8
	srli.d	$t3, $t1, 24
	bnez	$t3, .LBB1_56
# %bb.55:
	ld.d	$t3, $a1, 0
	st.d	$t3, $a2, 0
	ld.w	$t4, $a1, 12
	ld.bu	$t5, $t3, 0
	slli.d	$t4, $t4, 8
	or	$t4, $t4, $t5
	addi.d	$t3, $t3, 1
	slli.d	$t1, $t1, 8
	st.w	$t4, $a1, 12
	st.w	$t1, $a1, 8
	st.d	$t3, $a1, 0
.LBB1_56:                               # %lzma_486248.exit.i90.1
	or	$t0, $t2, $t0
	alsl.d	$a7, $t0, $a7, 1
	st.d	$a7, $a2, 0
	bltu	$a7, $a5, .LBB1_2
# %bb.57:                               # %lzma_486248.exit.i90.1
	addi.d	$t2, $a7, 4
	bltu	$a6, $t2, .LBB1_2
# %bb.58:
	ld.d	$t2, $a1, 0
	bltu	$t2, $a5, .LBB1_2
# %bb.59:
	addi.d	$a5, $t2, 1
	bltu	$a6, $a5, .LBB1_2
# %bb.60:
	ld.wu	$a0, $a7, 0
	ld.w	$a5, $a1, 12
	bstrpick.d	$a6, $t1, 31, 11
	bstrpick.d	$t2, $a0, 15, 0
	mul.w	$a6, $t2, $a6
	bgeu	$a5, $a6, .LBB1_71
# %bb.61:
	move	$a5, $zero
	ori	$t1, $zero, 2048
	sub.d	$t1, $t1, $t2
	bstrpick.d	$t1, $t1, 31, 5
	add.w	$t1, $t1, $a0
	b	.LBB1_72
.LBB1_62:
	sub.d	$t5, $t5, $t3
	sub.d	$t3, $a7, $t3
	st.w	$t5, $a1, 12
	bstrpick.d	$a7, $t4, 31, 5
	sub.w	$t4, $t2, $a7
	ori	$a7, $zero, 6
.LBB1_63:
	srli.d	$t2, $t2, 16
	bstrins.d	$t4, $t2, 63, 16
	st.w	$t3, $a1, 8
	st.w	$t4, $t1, 0
	ld.wu	$t2, $a1, 8
	srli.d	$t1, $t2, 24
	addi.d	$t0, $t0, 260
	bnez	$t1, .LBB1_65
# %bb.64:
	ld.d	$t1, $a1, 0
	st.d	$t1, $a2, 0
	ld.w	$t3, $a1, 12
	ld.bu	$t4, $t1, 0
	slli.d	$t3, $t3, 8
	or	$t3, $t3, $t4
	addi.d	$t1, $t1, 1
	slli.d	$t2, $t2, 8
	st.w	$t3, $a1, 12
	st.w	$t2, $a1, 8
	st.d	$t1, $a1, 0
.LBB1_65:                               # %lzma_486248.exit.i70
	add.d	$t1, $t0, $a7
	st.d	$t1, $a2, 0
	bltu	$t1, $a5, .LBB1_2
# %bb.66:                               # %lzma_486248.exit.i70
	addi.d	$t3, $t1, 4
	bltu	$a6, $t3, .LBB1_2
# %bb.67:
	ld.d	$t3, $a1, 0
	bltu	$t3, $a5, .LBB1_2
# %bb.68:
	addi.d	$t3, $t3, 1
	bltu	$a6, $t3, .LBB1_2
# %bb.69:
	ld.wu	$t3, $t1, 0
	ld.w	$t6, $a1, 12
	bstrpick.d	$t4, $t2, 31, 11
	bstrpick.d	$t5, $t3, 15, 0
	mul.w	$t4, $t5, $t4
	bgeu	$t6, $t4, .LBB1_75
# %bb.70:
	move	$t2, $zero
	ori	$t6, $zero, 2048
	sub.d	$t5, $t6, $t5
	bstrpick.d	$t5, $t5, 31, 5
	add.w	$t5, $t5, $t3
	b	.LBB1_76
.LBB1_71:
	sub.d	$a5, $a5, $a6
	sub.d	$a6, $t1, $a6
	st.w	$a5, $a1, 12
	bstrpick.d	$a5, $t2, 31, 5
	sub.w	$t1, $a0, $a5
	ori	$a5, $zero, 1
.LBB1_72:
	srli.d	$a0, $a0, 16
	bstrins.d	$t1, $a0, 63, 16
	st.w	$a6, $a1, 8
	st.w	$t1, $a7, 0
	ld.wu	$a6, $a1, 8
	srli.d	$a7, $a6, 24
	slli.d	$a0, $t0, 1
	bnez	$a7, .LBB1_74
# %bb.73:
	ld.d	$a7, $a1, 0
	st.d	$a7, $a2, 0
	ld.w	$t0, $a1, 12
	ld.bu	$t1, $a7, 0
	slli.d	$t0, $t0, 8
	or	$t0, $t0, $t1
	addi.d	$a7, $a7, 1
	st.d	$a7, $a2, 0
	slli.d	$a2, $a6, 8
	st.w	$t0, $a1, 12
	st.w	$a2, $a1, 8
	st.d	$a7, $a1, 0
.LBB1_74:                               # %lzma_486248.exit.i90.2
	or	$a0, $a5, $a0
	ori	$a1, $zero, 8
	st.w	$a1, $a3, 0
	addi.d	$a1, $a0, -8
	move	$a0, $zero
	st.w	$a1, $a4, 0
	ret
.LBB1_75:
	sub.d	$t6, $t6, $t4
	sub.d	$t4, $t2, $t4
	st.w	$t6, $a1, 12
	bstrpick.d	$t2, $t5, 31, 5
	sub.w	$t5, $t3, $t2
	ori	$t2, $zero, 1
.LBB1_76:
	srli.d	$t3, $t3, 16
	bstrins.d	$t5, $t3, 63, 16
	st.w	$t4, $a1, 8
	st.w	$t5, $t1, 0
	ld.wu	$t1, $a1, 8
	srli.d	$t3, $t1, 24
	bnez	$t3, .LBB1_78
# %bb.77:
	ld.d	$t3, $a1, 0
	st.d	$t3, $a2, 0
	ld.w	$t4, $a1, 12
	ld.bu	$t5, $t3, 0
	slli.d	$t4, $t4, 8
	or	$t4, $t4, $t5
	addi.d	$t3, $t3, 1
	slli.d	$t1, $t1, 8
	st.w	$t4, $a1, 12
	st.w	$t1, $a1, 8
	st.d	$t3, $a1, 0
.LBB1_78:                               # %lzma_486248.exit.i70.1
	or	$a7, $t2, $a7
	alsl.d	$t0, $a7, $t0, 1
	st.d	$t0, $a2, 0
	bltu	$t0, $a5, .LBB1_2
# %bb.79:                               # %lzma_486248.exit.i70.1
	addi.d	$t2, $t0, 4
	bltu	$a6, $t2, .LBB1_2
# %bb.80:
	ld.d	$t2, $a1, 0
	bltu	$t2, $a5, .LBB1_2
# %bb.81:
	addi.d	$a5, $t2, 1
	bltu	$a6, $a5, .LBB1_2
# %bb.82:
	ld.wu	$a0, $t0, 0
	ld.w	$a5, $a1, 12
	bstrpick.d	$a6, $t1, 31, 11
	bstrpick.d	$t2, $a0, 15, 0
	mul.w	$a6, $t2, $a6
	bgeu	$a5, $a6, .LBB1_84
# %bb.83:
	move	$a5, $zero
	ori	$t1, $zero, 2048
	sub.d	$t1, $t1, $t2
	bstrpick.d	$t1, $t1, 31, 5
	add.w	$t1, $t1, $a0
	b	.LBB1_85
.LBB1_84:
	sub.d	$a5, $a5, $a6
	sub.d	$a6, $t1, $a6
	st.w	$a5, $a1, 12
	bstrpick.d	$a5, $t2, 31, 5
	sub.w	$t1, $a0, $a5
	ori	$a5, $zero, 1
.LBB1_85:
	srli.d	$a0, $a0, 16
	bstrins.d	$t1, $a0, 63, 16
	st.w	$a6, $a1, 8
	st.w	$t1, $t0, 0
	ld.wu	$a6, $a1, 8
	srli.d	$t0, $a6, 24
	slli.d	$a0, $a7, 1
	bnez	$t0, .LBB1_87
# %bb.86:
	ld.d	$a7, $a1, 0
	st.d	$a7, $a2, 0
	ld.w	$t0, $a1, 12
	ld.bu	$t1, $a7, 0
	slli.d	$t0, $t0, 8
	or	$t0, $t0, $t1
	addi.d	$a7, $a7, 1
	st.d	$a7, $a2, 0
	slli.d	$a2, $a6, 8
	st.w	$t0, $a1, 12
	st.w	$a2, $a1, 8
	st.d	$a7, $a1, 0
.LBB1_87:                               # %lzma_486248.exit.i70.2
	or	$a1, $a5, $a0
	ori	$a0, $zero, 8
	st.w	$a0, $a3, 0
	move	$a0, $zero
	st.w	$a1, $a4, 0
	ret
.Lfunc_end1:
	.size	lzma_4863da, .Lfunc_end1-lzma_4863da
                                        # -- End function
	.globl	lzma_upack_esi_00               # -- Begin function lzma_upack_esi_00
	.p2align	5
	.type	lzma_upack_esi_00,@function
lzma_upack_esi_00:                      # @lzma_upack_esi_00
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	move	$a5, $a1
	bltu	$a1, $a2, .LBB2_7
# %bb.1:
	ori	$a1, $zero, 3
	bgeu	$a1, $a3, .LBB2_7
# %bb.2:
	addi.d	$a6, $a5, 4
	bstrpick.d	$a1, $a3, 31, 0
	add.d	$a4, $a2, $a1
	bltu	$a4, $a6, .LBB2_8
# %bb.3:
	ld.d	$a6, $a0, 0
	bltu	$a6, $a2, .LBB2_10
# %bb.4:
	addi.d	$a1, $a6, 4
	bltu	$a4, $a1, .LBB2_10
# %bb.5:
	ld.wu	$a2, $a0, 8
	ld.w	$a1, $a5, 0
	ld.w	$a6, $a6, 0
	ld.w	$a4, $a0, 12
	srli.d	$a3, $a2, 11
	mul.w	$a3, $a1, $a3
	revb.2w	$a6, $a6
	sub.w	$a6, $a6, $a4
	bgeu	$a6, $a3, .LBB2_11
# %bb.6:
	move	$a2, $zero
	st.w	$a3, $a0, 8
	ld.w	$a3, $a5, 0
	ori	$a4, $zero, 2048
	sub.d	$a1, $a4, $a1
	bstrpick.d	$a1, $a1, 31, 5
	add.d	$a1, $a3, $a1
	st.w	$a1, $a5, 0
	ld.wu	$a1, $a0, 8
	srli.d	$a3, $a1, 24
	beqz	$a3, .LBB2_12
	b	.LBB2_13
.LBB2_7:                                # %._crit_edge
	bstrpick.d	$a1, $a3, 31, 0
.LBB2_8:                                # %.thread
	add.d	$a4, $a2, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
.LBB2_9:
	move	$a1, $a2
	move	$a2, $a3
	move	$a3, $a5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	addi.w	$a0, $zero, -1
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB2_10:
	ld.d	$a5, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	b	.LBB2_9
.LBB2_11:
	add.d	$a4, $a4, $a3
	st.w	$a4, $a0, 12
	sub.d	$a2, $a2, $a3
	st.w	$a2, $a0, 8
	ld.w	$a2, $a5, 0
	bstrpick.d	$a1, $a1, 31, 5
	sub.d	$a1, $a2, $a1
	ori	$a2, $zero, 1
	st.w	$a1, $a5, 0
	ld.wu	$a1, $a0, 8
	srli.d	$a3, $a1, 24
	bnez	$a3, .LBB2_13
.LBB2_12:
	ld.w	$a3, $a0, 12
	slli.d	$a3, $a3, 8
	ld.d	$a4, $a0, 0
	st.w	$a3, $a0, 12
	slli.d	$a1, $a1, 8
	st.w	$a1, $a0, 8
	addi.d	$a1, $a4, 1
	st.d	$a1, $a0, 0
.LBB2_13:
	move	$a0, $a2
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end2:
	.size	lzma_upack_esi_00, .Lfunc_end2-lzma_upack_esi_00
                                        # -- End function
	.globl	lzma_upack_esi_50               # -- Begin function lzma_upack_esi_50
	.p2align	5
	.type	lzma_upack_esi_50,@function
lzma_upack_esi_50:                      # @lzma_upack_esi_50
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
	st.d	$s7, $sp, 0                     # 8-byte Folded Spill
	move	$s2, $a7
	move	$s3, $a6
	move	$fp, $a5
	move	$s4, $a4
	move	$s6, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s7, $a0
	addi.w	$s5, $zero, -1
	.p2align	4, , 16
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $s1, 2
	bstrpick.d	$a0, $a0, 31, 2
	alsl.d	$a1, $a0, $s4, 2
	st.d	$a1, $s6, 0
	move	$a0, $s7
	move	$a2, $s3
	move	$a3, $s2
	pcaddu18i	$ra, %call36(lzma_upack_esi_00)
	jirl	$ra, $ra, 0
	beq	$a0, $s5, .LBB3_4
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	alsl.w	$s1, $s1, $a0, 1
	bltu	$s1, $s0, .LBB3_1
# %bb.3:
	move	$s5, $zero
	sub.d	$a0, $s1, $s0
	st.w	$a0, $fp, 0
.LBB3_4:                                # %.loopexit
	move	$a0, $s5
	ld.d	$s7, $sp, 0                     # 8-byte Folded Reload
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
.Lfunc_end3:
	.size	lzma_upack_esi_50, .Lfunc_end3-lzma_upack_esi_50
                                        # -- End function
	.globl	lzma_upack_esi_54               # -- Begin function lzma_upack_esi_54
	.p2align	5
	.type	lzma_upack_esi_54,@function
lzma_upack_esi_54:                      # @lzma_upack_esi_54
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
	move	$fp, $a3
	move	$s4, $a2
	ori	$a2, $zero, 8
	st.b	$a2, $s4, 0
	ld.d	$a2, $a3, 0
	move	$s1, $a6
	move	$s2, $a5
	move	$s0, $a4
	move	$s5, $a1
	move	$s3, $a0
	move	$a1, $a2
	move	$a2, $a5
	move	$a3, $a6
	pcaddu18i	$ra, %call36(lzma_upack_esi_00)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $fp, 0
	bstrins.d	$s5, $zero, 7, 0
	beqz	$a0, .LBB4_3
# %bb.1:
	move	$a0, $s3
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(lzma_upack_esi_00)
	jirl	$ra, $ra, 0
	ld.w	$s6, $s4, 0
	beqz	$a0, .LBB4_4
# %bb.2:
	slli.w	$s6, $s6, 5
	st.w	$s6, $s4, 0
	ori	$s5, $zero, 17
	b	.LBB4_5
.LBB4_3:                                # %._crit_edge
	ld.w	$s6, $s4, 0
	ori	$s5, $s5, 1
	b	.LBB4_5
.LBB4_4:
	ori	$s5, $s5, 9
.LBB4_5:
	ld.d	$a0, $fp, 0
	slli.d	$a1, $s5, 2
	bstrpick.d	$a1, $a1, 31, 2
	alsl.d	$s8, $a1, $a0, 2
	ori	$s7, $zero, 1
	addi.w	$s4, $zero, -1
	.p2align	4, , 16
.LBB4_6:                                # =>This Inner Loop Header: Depth=1
	slli.d	$a0, $s7, 2
	bstrpick.d	$a0, $a0, 31, 2
	alsl.d	$a1, $a0, $s8, 2
	st.d	$a1, $fp, 0
	move	$a0, $s3
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(lzma_upack_esi_00)
	jirl	$ra, $ra, 0
	beq	$a0, $s4, .LBB4_9
# %bb.7:                                #   in Loop: Header=BB4_6 Depth=1
	alsl.w	$s7, $s7, $a0, 1
	bltu	$s7, $s6, .LBB4_6
# %bb.8:
	move	$s4, $zero
	sub.d	$a0, $s5, $s6
	add.d	$a0, $a0, $s7
	st.w	$a0, $s0, 0
.LBB4_9:                                # %lzma_upack_esi_50.exit.thread
	move	$a0, $s4
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
.Lfunc_end4:
	.size	lzma_upack_esi_54, .Lfunc_end4-lzma_upack_esi_54
                                        # -- End function
	.globl	unmew11                         # -- Begin function unmew11
	.p2align	5
	.type	unmew11,@function
unmew11:                                # @unmew11
# %bb.0:
	addi.d	$sp, $sp, -176
	st.d	$ra, $sp, 168                   # 8-byte Folded Spill
	st.d	$fp, $sp, 160                   # 8-byte Folded Spill
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	st.d	$s1, $sp, 144                   # 8-byte Folded Spill
	st.d	$s2, $sp, 136                   # 8-byte Folded Spill
	st.d	$s3, $sp, 128                   # 8-byte Folded Spill
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	st.d	$s5, $sp, 112                   # 8-byte Folded Spill
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$s8, $sp, 88                    # 8-byte Folded Spill
	move	$fp, $a1
	add.d	$a0, $a1, $a4
	add.d	$s6, $a0, $a2
	addi.d	$s3, $s6, 12
	ld.w	$a0, $s6, 8
	add.w	$s4, $a4, $a3
	ori	$a1, $zero, 4
	add.w	$s8, $a6, $a5
	bgeu	$s4, $a1, .LBB5_4
# %bb.1:                                # %.outer.split.us
	sub.d	$a0, $a0, $s8
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$a3, $fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	move	$a1, $zero
	move	$a2, $s3
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
.LBB5_2:                                # %.split
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
.LBB5_3:                                # %.thread
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	b	.LBB5_29
.LBB5_4:                                # %.split342
	move	$s1, $a4
	move	$s2, $a3
	st.d	$a6, $sp, 56                    # 8-byte Folded Spill
	st.d	$a5, $sp, 48                    # 8-byte Folded Spill
	ld.w	$a1, $s6, 4
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	bstrpick.d	$a1, $s4, 31, 0
	add.d	$s0, $fp, $a1
	st.d	$s8, $sp, 64                    # 8-byte Folded Spill
	beqz	$a7, .LBB5_21
# %bb.5:                                # %.outer.split.split.preheader
	st.d	$a7, $sp, 32                    # 8-byte Folded Spill
	move	$s5, $zero
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$s6, $a1, %pc_lo12(.L.str.4)
	move	$s7, $s1
	.p2align	4, , 16
.LBB5_6:                                # %.outer.split.split
                                        # =>This Inner Loop Header: Depth=1
	sub.d	$a0, $a0, $s8
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$s8, $fp, $a0
	move	$a0, $s6
	move	$a1, $s5
	move	$a2, $s3
	move	$a3, $s8
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	bltu	$s3, $fp, .LBB5_2
# %bb.7:                                #   in Loop: Header=BB5_6 Depth=1
	addi.d	$a0, $s3, 4
	bltu	$s0, $a0, .LBB5_2
# %bb.8:                                #   in Loop: Header=BB5_6 Depth=1
	addi.d	$a0, $s8, 4
	bltu	$s0, $a0, .LBB5_2
# %bb.9:                                #   in Loop: Header=BB5_6 Depth=1
	addi.d	$a4, $sp, 80
	addi.d	$a5, $sp, 72
	move	$a0, $s3
	move	$a1, $s8
	move	$a2, $s2
	move	$a3, $s7
	pcaddu18i	$ra, %call36(unmew)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_27
# %bb.10:                               #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a0, $sp, 80
	bltu	$a0, $fp, .LBB5_27
# %bb.11:                               #   in Loop: Header=BB5_6 Depth=1
	addi.d	$a1, $a0, 4
	bltu	$s0, $a1, .LBB5_27
# %bb.12:                               # %.thread198
                                        #   in Loop: Header=BB5_6 Depth=1
	ld.d	$a2, $sp, 72
	sub.d	$a3, $s3, $a1
	ld.w	$a0, $a0, 0
	add.w	$s2, $s2, $a3
	sub.d	$a2, $s8, $a2
	add.w	$s7, $s7, $a2
	addi.w	$s5, $s5, 1
	move	$s3, $a1
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	bnez	$a0, .LBB5_6
# %bb.13:                               # %.thread203
	addi.w	$a1, $zero, -8
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	blt	$a0, $a1, .LBB5_31
# %bb.14:                               # %.thread203
	add.d	$s2, $fp, $a0
	addi.d	$a0, $s2, 9
	bltu	$s0, $a0, .LBB5_31
# %bb.15:
	ld.bu	$a0, $s2, 8
	addi.d	$a0, $a0, -80
	sltui	$a0, $a0, 1
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	masknez	$a1, $a1, $a0
	pcalau12i	$a2, %pc_hi20(.L.str.10)
	addi.d	$a2, $a2, %pc_lo12(.L.str.10)
	maskeqz	$a0, $a2, $a0
	or	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a0, $a0, %pc_lo12(.L.str.9)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 29
	bltu	$s4, $a0, .LBB5_32
# %bb.16:
	ld.d	$a0, $sp, 80
	addi.d	$a1, $a0, 4
	bltu	$a1, $fp, .LBB5_32
# %bb.17:
	addi.d	$a0, $a0, 33
	bltu	$s0, $a0, .LBB5_32
# %bb.18:
	ld.bu	$a0, $s2, 8
	addi.d	$a0, $a0, -80
	sltui	$a4, $a0, 1
	move	$a0, $fp
	move	$a2, $s4
	move	$a3, $s8
	pcaddu18i	$ra, %call36(mew_lzma)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	addi.w	$a0, $zero, -1
	bnez	$a1, .LBB5_30
# %bb.19:
	move	$s0, $a0
	ori	$a0, $zero, 1
	ori	$a1, $zero, 36
	ori	$s2, $zero, 1
	pcaddu18i	$ra, %call36(cli_calloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_52
# %bb.20:
	st.w	$zero, $a0, 8
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.w	$a1, $a0, 0
	st.w	$s1, $a0, 4
	st.w	$s1, $a0, 12
	b	.LBB5_48
.LBB5_21:                               # %.outer.us348.preheader
	sub.d	$a0, $a0, $s8
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$s5, $fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	move	$a1, $zero
	move	$s4, $a2
	move	$a2, $s3
	move	$a3, $s5
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	add.d	$a0, $s1, $s4
	addi.w	$a1, $zero, -12
	blt	$a0, $a1, .LBB5_2
# %bb.22:
	addi.d	$a0, $s6, 16
	bltu	$s0, $a0, .LBB5_2
# %bb.23:
	addi.d	$a0, $s5, 4
	bltu	$s0, $a0, .LBB5_2
# %bb.24:
	addi.d	$a4, $sp, 80
	addi.d	$a5, $sp, 72
	move	$a0, $s3
	move	$a1, $s5
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(unmew)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_27
# %bb.25:
	ld.d	$a0, $sp, 80
	bltu	$a0, $fp, .LBB5_27
# %bb.26:
	addi.d	$s7, $a0, 4
	bgeu	$s0, $s7, .LBB5_33
.LBB5_27:
	move	$a0, $zero
.LBB5_28:                               # %.split276.us
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
.LBB5_29:                               # %.thread
	addi.w	$a0, $zero, -1
.LBB5_30:                               # %.thread
	ld.d	$s8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 168                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 176
	ret
.LBB5_31:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a0, $a0, %pc_lo12(.L.str.8)
	b	.LBB5_3
.LBB5_32:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a0, $a0, %pc_lo12(.L.str.12)
	b	.LBB5_3
.LBB5_33:
	ld.d	$s4, $sp, 72
	ld.w	$s6, $a0, 0
	ori	$a1, $zero, 72
	move	$a0, $zero
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_45
# %bb.34:
	sub.d	$a1, $s4, $fp
	srai.d	$a2, $a1, 63
	srli.d	$a2, $a2, 52
	add.d	$a2, $a1, $a2
	srli.d	$a2, $a2, 12
	andi	$a1, $a1, 4095
	sltu	$a1, $zero, $a1
	add.d	$a1, $a2, $a1
	slli.d	$a1, $a1, 12
	st.w	$zero, $a0, 8
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	st.w	$a2, $a0, 0
	add.d	$a2, $a1, $a2
	st.w	$a2, $a0, 36
	ld.d	$a2, $sp, 80
	st.w	$a1, $a0, 44
	st.w	$a1, $a0, 4
	st.w	$a1, $a0, 12
	ld.w	$a1, $a2, 0
	beqz	$a1, .LBB5_47
# %bb.35:                               # %.outer.us348.preheader387
	move	$s8, $zero
	sub.d	$a1, $s3, $s7
	add.w	$a2, $s2, $a1
	sub.d	$a1, $s5, $s4
	move	$s5, $a2
	add.w	$s1, $s1, $a1
	ori	$s2, $zero, 1
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	move	$a1, $a0
.LBB5_36:                               # %.outer.us348
                                        # =>This Inner Loop Header: Depth=1
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	sub.d	$a0, $s6, $a0
	bstrpick.d	$a0, $a0, 31, 0
	add.d	$s6, $fp, $a0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	move	$a1, $s2
	move	$a2, $s7
	move	$a3, $s6
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	bltu	$s7, $fp, .LBB5_2
# %bb.37:                               #   in Loop: Header=BB5_36 Depth=1
	addi.d	$a0, $s7, 4
	bltu	$s0, $a0, .LBB5_2
# %bb.38:                               #   in Loop: Header=BB5_36 Depth=1
	addi.d	$a0, $s6, 4
	bltu	$s0, $a0, .LBB5_2
# %bb.39:                               #   in Loop: Header=BB5_36 Depth=1
	addi.d	$a4, $sp, 80
	addi.d	$a5, $sp, 72
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s5
	move	$a3, $s1
	pcaddu18i	$ra, %call36(unmew)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB5_53
# %bb.40:                               #   in Loop: Header=BB5_36 Depth=1
	ld.d	$a1, $sp, 80
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	bltu	$a1, $fp, .LBB5_28
# %bb.41:                               #   in Loop: Header=BB5_36 Depth=1
	addi.d	$s4, $a1, 4
	bltu	$s0, $s4, .LBB5_28
# %bb.42:                               #   in Loop: Header=BB5_36 Depth=1
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	move	$s1, $s5
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	ld.d	$s2, $sp, 72
	sub.d	$a2, $s2, $fp
	srai.d	$a3, $a2, 63
	srli.d	$a3, $a3, 52
	add.d	$a3, $a2, $a3
	srli.d	$a3, $a3, 12
	andi	$a2, $a2, 4095
	add.d	$a4, $a0, $s8
	ld.w	$a4, $a4, 44
	sltu	$a2, $zero, $a2
	add.d	$a2, $a3, $a2
	slli.w	$s5, $a2, 12
	bltu	$s5, $a4, .LBB5_54
# %bb.43:                               #   in Loop: Header=BB5_36 Depth=1
	ld.w	$s3, $a1, 0
	addi.d	$a1, $s8, 108
	pcaddu18i	$ra, %call36(cli_realloc)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_46
# %bb.44:                               #   in Loop: Header=BB5_36 Depth=1
	st.w	$zero, $a0, 8
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.w	$a1, $a0, 0
	add.d	$a2, $a0, $s8
	ld.w	$a3, $a2, 44
	add.d	$a1, $s5, $a1
	st.w	$a1, $a2, 72
	st.w	$s5, $a2, 80
	sub.d	$a1, $s5, $a3
	st.w	$a1, $a2, 40
	ld.d	$a3, $sp, 80
	st.w	$a1, $a2, 48
	sub.d	$a1, $s7, $s4
	add.w	$s5, $s1, $a1
	ld.w	$a2, $a3, 0
	sub.d	$a1, $s6, $s2
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	add.w	$s1, $s1, $a1
	addi.d	$s8, $s8, 36
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	addi.w	$s2, $s2, 1
	move	$a1, $a0
	move	$s7, $s4
	move	$s6, $s3
	bnez	$a2, .LBB5_36
	b	.LBB5_48
.LBB5_45:
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
.LBB5_46:                               # %.split359.us
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	b	.LBB5_28
.LBB5_47:
	ori	$s2, $zero, 1
.LBB5_48:                               # %.loopexit
	ld.d	$a7, $sp, 192
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	sub.w	$a4, $a1, $a3
	move	$a1, $a0
	move	$a0, $fp
	move	$fp, $a1
	move	$a2, $s2
	move	$a5, $zero
	move	$a6, $zero
	pcaddu18i	$ra, %call36(cli_rebuildpe)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB5_50
# %bb.49:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	b	.LBB5_30
.LBB5_50:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
.LBB5_51:                               # %.thread
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	b	.LBB5_28
.LBB5_52:
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	pcaddu18i	$ra, %call36(cli_dbgmsg)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB5_30
.LBB5_53:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	b	.LBB5_28
.LBB5_54:                               # %.split356.us
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	move	$fp, $a0
	move	$a0, $a1
	b	.LBB5_51
.Lfunc_end5:
	.size	unmew11, .Lfunc_end5-unmew11
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"MEWlzma: entering do while loop\n"
	.size	.L.str, 33

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"MEWlen: %08x ? %08x\n"
	.size	.L.str.1, 21

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"contain error! %08x %08x ecx: %08x [%08x]\n"
	.size	.L.str.2, 43

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"contain error! %08x %08x p0: %08x [%08x]\n"
	.size	.L.str.3, 42

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"MEW unpacking section %d (%08x->%08x)\n"
	.size	.L.str.4, 39

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Possibly programmer error or hand-crafted PE file, report to clamav team\n"
	.size	.L.str.5, 74

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"MEW: WTF - please report\n"
	.size	.L.str.6, 26

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"MEW: Out of memory\n"
	.size	.L.str.7, 20

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"MEW: couldn't access lzma 'special' tag\n"
	.size	.L.str.8, 41

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"MEW: lzma %swas used, unpacking\n"
	.size	.L.str.9, 33

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"special "
	.size	.L.str.10, 9

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.space	1
	.size	.L.str.11, 1

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"MEW: lzma initialization data not available!\n"
	.size	.L.str.12, 46

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"MEW: Rebuilding failed\n"
	.size	.L.str.13, 24

	.section	".note.GNU-stack","",@progbits
	.addrsig
