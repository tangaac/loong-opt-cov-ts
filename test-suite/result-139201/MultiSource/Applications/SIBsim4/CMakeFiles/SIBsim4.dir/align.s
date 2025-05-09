	.file	"align.c"
	.text
	.globl	align_path                      # -- Begin function align_path
	.p2align	5
	.type	align_path,@function
align_path:                             # @align_path
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
	ld.d	$s3, $sp, 512
	ld.d	$t1, $sp, 528
	ld.d	$t0, $sp, 520
	move	$s4, $a7
	move	$a7, $a3
	st.d	$a1, $sp, 376                   # 8-byte Folded Spill
	st.d	$a0, $sp, 368                   # 8-byte Folded Spill
	st.d	$zero, $s3, 0
	st.d	$zero, $s4, 0
	bne	$a4, $a2, .LBB0_3
# %bb.1:
	bne	$a5, $a7, .LBB0_6
# %bb.2:
	st.d	$zero, $s4, 0
	b	.LBB0_8
.LBB0_3:
	move	$s5, $a4
	bne	$a5, $a7, .LBB0_9
# %bb.4:
	ori	$a0, $zero, 16
	move	$fp, $a2
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
.LBB0_5:
	st.b	$a1, $a0, 12
	sub.d	$a1, $s5, $fp
	b	.LBB0_7
.LBB0_6:
	ori	$a0, $zero, 16
	move	$fp, $a5
	move	$s0, $a7
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 2
	st.b	$a1, $a0, 12
	sub.d	$a1, $fp, $s0
.LBB0_7:
	st.w	$a1, $a0, 8
	st.d	$zero, $a0, 0
	st.d	$a0, $s3, 0
	st.d	$a0, $s4, 0
.LBB0_8:
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
.LBB0_9:
	ori	$a0, $zero, 1
	blt	$a0, $a6, .LBB0_12
# %bb.10:
	sub.w	$a0, $a7, $a2
	sub.w	$a1, $a5, $s5
	bne	$a1, $a0, .LBB0_96
# %bb.11:
	ori	$a0, $zero, 16
	move	$fp, $a2
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 3
	b	.LBB0_5
.LBB0_12:
	st.d	$t1, $sp, 280                   # 8-byte Folded Spill
	st.d	$t0, $sp, 288                   # 8-byte Folded Spill
	move	$a3, $a5
	bstrpick.d	$t0, $a6, 31, 1
	sub.w	$a4, $a6, $t0
	sub.w	$s8, $a7, $a2
	st.d	$a7, $sp, 296                   # 8-byte Folded Spill
	sub.w	$a5, $a7, $s5
	sub.w	$a1, $s8, $t0
	slt	$a0, $a1, $a5
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a5, $a0
	or	$fp, $a0, $a1
	st.d	$a2, $sp, 304                   # 8-byte Folded Spill
	sub.w	$a2, $a3, $a2
	st.d	$t0, $sp, 360                   # 8-byte Folded Spill
	add.w	$s7, $t0, $s8
	slt	$a0, $a2, $s7
	masknez	$a1, $s7, $a0
	maskeqz	$a0, $a2, $a0
	or	$s0, $a0, $a1
	st.d	$a3, $sp, 384                   # 8-byte Folded Spill
	sub.w	$a1, $a3, $s5
	sub.w	$a0, $a1, $a4
	st.d	$a5, $sp, 336                   # 8-byte Folded Spill
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	slt	$a0, $a0, $a5
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	add.w	$a0, $a4, $a1
	st.d	$a2, $sp, 328                   # 8-byte Folded Spill
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	slt	$a0, $a2, $a0
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	sub.w	$s2, $s0, $fp
	addi.w	$a0, $s2, 1
	slli.d	$s1, $a0, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	slli.d	$a0, $fp, 2
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$t4, $a0
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	blt	$s0, $fp, .LBB0_14
# %bb.13:                               # %.lr.ph.preheader
	bstrpick.d	$a0, $s2, 31, 0
	slli.d	$a0, $a0, 2
	addi.d	$a2, $a0, 4
	ori	$a1, $zero, 255
	move	$a0, $s6
	move	$s2, $t4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$t4, $s2
.LBB0_14:                               # %._crit_edge
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	masknez	$a2, $a0, $a1
	ld.d	$a0, $sp, 336                   # 8-byte Folded Reload
	maskeqz	$a3, $a0, $a1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 312                   # 8-byte Folded Reload
	masknez	$a4, $a0, $a1
	ld.d	$a0, $sp, 328                   # 8-byte Folded Reload
	maskeqz	$a5, $a0, $a1
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	sub.d	$a0, $s6, $a0
	ld.d	$t2, $sp, 304                   # 8-byte Folded Reload
	move	$a6, $t2
	ld.d	$t3, $sp, 296                   # 8-byte Folded Reload
	bltz	$t2, .LBB0_21
# %bb.15:
	move	$a6, $t2
	bge	$t2, $s5, .LBB0_21
# %bb.16:
	move	$a6, $t2
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	bge	$t3, $a1, .LBB0_21
# %bb.17:                               # %.lr.ph.preheader.i434
	bstrpick.d	$a1, $t2, 31, 0
	ld.d	$a6, $sp, 368                   # 8-byte Folded Reload
	add.d	$a1, $a6, $a1
	move	$a7, $t3
	move	$a6, $t2
	.p2align	4, , 16
.LBB0_18:                               # %.lr.ph.i435
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$t0, $a1, 0
	ld.d	$t1, $sp, 376                   # 8-byte Folded Reload
	ldx.bu	$t1, $t1, $a7
	bne	$t0, $t1, .LBB0_21
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=1
	addi.w	$a6, $a6, 1
	bge	$a6, $s5, .LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=1
	addi.d	$a7, $a7, 1
	addi.d	$a1, $a1, 1
	ld.d	$t0, $sp, 384                   # 8-byte Folded Reload
	blt	$a7, $t0, .LBB0_18
.LBB0_21:                               # %.lr.ph502
	st.d	$s4, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	move	$a1, $zero
	or	$a2, $a3, $a2
	st.d	$a2, $sp, 320                   # 8-byte Folded Spill
	or	$a2, $a5, $a4
	st.d	$a2, $sp, 312                   # 8-byte Folded Spill
	ld.d	$t5, $sp, 96                    # 8-byte Folded Reload
	sub.d	$a2, $t4, $t5
	slli.d	$a3, $s8, 2
	stx.w	$a6, $a0, $a3
	addi.d	$a3, $a0, -4
	addi.d	$a4, $a0, 4
	nor	$a5, $t2, $zero
	add.w	$a5, $t3, $a5
	ld.d	$a6, $sp, 360                   # 8-byte Folded Reload
	addi.w	$t0, $a6, 0
	ori	$t7, $zero, 1
	sltu	$a6, $t7, $t0
	masknez	$a7, $t7, $a6
	st.d	$t0, $sp, 32                    # 8-byte Folded Spill
	maskeqz	$a6, $t0, $a6
	or	$a6, $a6, $a7
	ld.d	$a7, $sp, 88                    # 8-byte Folded Reload
	sub.d	$t0, $a7, $t4
	st.d	$t0, $sp, 272                   # 8-byte Folded Spill
	addi.w	$t0, $s8, 1
	ori	$t1, $zero, 16
	sub.d	$t2, $t1, $t5
	st.d	$t4, $sp, 40                    # 8-byte Folded Spill
	add.d	$t1, $t4, $t2
	st.d	$t1, $sp, 360                   # 8-byte Folded Spill
	add.d	$t2, $a7, $t2
	move	$t5, $t0
	b	.LBB0_23
	.p2align	4, , 16
.LBB0_22:                               # %._crit_edge499
                                        #   in Loop: Header=BB0_23 Depth=1
	addi.w	$t7, $t6, 1
	addi.w	$a5, $a5, -1
	addi.d	$a1, $a1, 1
	addi.w	$t5, $t5, 1
	beq	$t6, $a6, .LBB0_48
.LBB0_23:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_26 Depth 2
                                        #       Child Loop BB0_38 Depth 3
                                        #     Child Loop BB0_44 Depth 2
                                        #     Child Loop BB0_47 Depth 2
	move	$t6, $t7
	sub.w	$t3, $s8, $t7
	ld.d	$a7, $sp, 352                   # 8-byte Folded Reload
	slt	$t4, $t3, $a7
	masknez	$t3, $t3, $t4
	maskeqz	$t4, $a7, $t4
	or	$fp, $t4, $t3
	add.w	$t3, $t7, $s8
	ld.d	$a7, $sp, 344                   # 8-byte Folded Reload
	slt	$t4, $a7, $t3
	masknez	$t3, $t3, $t4
	maskeqz	$t4, $a7, $t4
	or	$t7, $t4, $t3
	blt	$t7, $fp, .LBB0_22
# %bb.24:                               # %.lr.ph495.preheader
                                        #   in Loop: Header=BB0_23 Depth=1
	slt	$t3, $t5, $s7
	masknez	$t4, $s7, $t3
	maskeqz	$t3, $t5, $t3
	or	$t3, $t3, $t4
	ld.d	$t1, $sp, 328                   # 8-byte Folded Reload
	slt	$t4, $t3, $t1
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $t1, $t4
	or	$t3, $t3, $t4
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	slt	$t4, $a7, $a5
	masknez	$t8, $a7, $t4
	maskeqz	$t4, $a5, $t4
	or	$t4, $t4, $t8
	ld.d	$a7, $sp, 336                   # 8-byte Folded Reload
	slt	$t8, $a7, $t4
	maskeqz	$t4, $t4, $t8
	masknez	$t8, $a7, $t8
	or	$t8, $t4, $t8
	slt	$t4, $t3, $t8
	masknez	$t3, $t3, $t4
	maskeqz	$t4, $t8, $t4
	or	$t3, $t4, $t3
	sub.d	$t3, $t3, $t8
	addi.d	$s0, $t3, 1
	bstrins.d	$s0, $zero, 2, 0
	ld.d	$a7, $sp, 360                   # 8-byte Folded Reload
	alsl.d	$s1, $t8, $a7, 2
	alsl.d	$s3, $t8, $t2, 2
	add.w	$t3, $t0, $a1
	slt	$t4, $t3, $s7
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $s7, $t4
	or	$t3, $t3, $t4
	slt	$t4, $t3, $t1
	maskeqz	$t3, $t3, $t4
	masknez	$t4, $t1, $t4
	or	$t3, $t3, $t4
	slt	$t4, $t3, $t8
	masknez	$t3, $t3, $t4
	maskeqz	$t4, $t8, $t4
	or	$t3, $t4, $t3
	sub.d	$t3, $t3, $t8
	addi.d	$t1, $t3, 1
	move	$t3, $t8
	b	.LBB0_26
	.p2align	4, , 16
.LBB0_25:                               # %snake.exit455
                                        #   in Loop: Header=BB0_26 Depth=2
	stx.w	$s6, $a2, $s4
	addi.d	$t3, $s2, 1
	bge	$s2, $t7, .LBB0_41
.LBB0_26:                               # %.lr.ph495
                                        #   Parent Loop BB0_23 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_38 Depth 3
	move	$s2, $t3
	addi.w	$t3, $t3, 0
	slli.d	$s4, $s2, 2
	bne	$fp, $t3, .LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_26 Depth=2
	ldx.w	$t3, $a4, $s4
	addi.w	$s6, $t3, 1
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_28:                               #   in Loop: Header=BB0_26 Depth=2
	bne	$t7, $t3, .LBB0_30
# %bb.29:                               #   in Loop: Header=BB0_26 Depth=2
	ldx.w	$s6, $a3, $s4
	b	.LBB0_34
	.p2align	4, , 16
.LBB0_30:                               #   in Loop: Header=BB0_26 Depth=2
	alsl.d	$t3, $s2, $a0, 2
	ldx.w	$t4, $a0, $s4
	ld.w	$ra, $t3, 4
	bge	$t4, $ra, .LBB0_32
# %bb.31:                               # %._crit_edge580
                                        #   in Loop: Header=BB0_26 Depth=2
	ld.w	$t3, $t3, -4
	b	.LBB0_33
.LBB0_32:                               #   in Loop: Header=BB0_26 Depth=2
	ld.w	$t3, $t3, -4
	addi.w	$s6, $t4, 1
	bge	$s6, $t3, .LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_26 Depth=2
	addi.w	$s6, $ra, 1
	slt	$t4, $ra, $t4
	slt	$ra, $t3, $s6
	masknez	$a7, $t3, $ra
	maskeqz	$s6, $s6, $ra
	or	$a7, $s6, $a7
	masknez	$a7, $a7, $t4
	maskeqz	$t3, $t3, $t4
	or	$s6, $t3, $a7
	.p2align	4, , 16
.LBB0_34:                               #   in Loop: Header=BB0_26 Depth=2
	bltz	$s6, .LBB0_25
# %bb.35:                               #   in Loop: Header=BB0_26 Depth=2
	bge	$s6, $s5, .LBB0_25
# %bb.36:                               #   in Loop: Header=BB0_26 Depth=2
	add.w	$ra, $s6, $s2
	ld.d	$a7, $sp, 384                   # 8-byte Folded Reload
	bge	$ra, $a7, .LBB0_25
# %bb.37:                               # %.lr.ph.preheader.i446
                                        #   in Loop: Header=BB0_26 Depth=2
	bstrpick.d	$a7, $s6, 31, 0
	ld.d	$t3, $sp, 368                   # 8-byte Folded Reload
	add.d	$t4, $t3, $a7
	.p2align	4, , 16
.LBB0_38:                               # %.lr.ph.i447
                                        #   Parent Loop BB0_23 Depth=1
                                        #     Parent Loop BB0_26 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a7, $t4, 0
	ld.d	$t3, $sp, 376                   # 8-byte Folded Reload
	ldx.bu	$t3, $t3, $ra
	bne	$a7, $t3, .LBB0_25
# %bb.39:                               #   in Loop: Header=BB0_38 Depth=3
	addi.w	$s6, $s6, 1
	bge	$s6, $s5, .LBB0_25
# %bb.40:                               #   in Loop: Header=BB0_38 Depth=3
	addi.d	$ra, $ra, 1
	addi.d	$t4, $t4, 1
	ld.d	$a7, $sp, 384                   # 8-byte Folded Reload
	blt	$ra, $a7, .LBB0_38
	b	.LBB0_25
	.p2align	4, , 16
.LBB0_41:                               # %.lr.ph498.preheader
                                        #   in Loop: Header=BB0_23 Depth=1
	ori	$a7, $zero, 8
	bltu	$t1, $a7, .LBB0_46
# %bb.42:                               # %.lr.ph498.preheader
                                        #   in Loop: Header=BB0_23 Depth=1
	ld.d	$a7, $sp, 272                   # 8-byte Folded Reload
	ori	$t3, $zero, 32
	bltu	$a7, $t3, .LBB0_46
# %bb.43:                               # %vector.ph
                                        #   in Loop: Header=BB0_23 Depth=1
	move	$fp, $t1
	bstrins.d	$fp, $zero, 2, 0
	add.d	$t8, $fp, $t8
	.p2align	4, , 16
.LBB0_44:                               # %vector.body
                                        #   Parent Loop BB0_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $s1, -16
	vld	$vr1, $s1, 0
	vst	$vr0, $s3, -16
	vst	$vr1, $s3, 0
	addi.d	$s0, $s0, -8
	addi.d	$s1, $s1, 32
	addi.d	$s3, $s3, 32
	bnez	$s0, .LBB0_44
# %bb.45:                               # %middle.block
                                        #   in Loop: Header=BB0_23 Depth=1
	beq	$t1, $fp, .LBB0_22
.LBB0_46:                               # %.lr.ph498.preheader668
                                        #   in Loop: Header=BB0_23 Depth=1
	addi.d	$t4, $t8, -1
	alsl.d	$fp, $t8, $a2, 2
	alsl.d	$t8, $t8, $a0, 2
	.p2align	4, , 16
.LBB0_47:                               # %.lr.ph498
                                        #   Parent Loop BB0_23 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $fp, 0
	st.w	$a7, $t8, 0
	addi.d	$t4, $t4, 1
	addi.d	$fp, $fp, 4
	addi.d	$t8, $t8, 4
	blt	$t4, $t7, .LBB0_47
	b	.LBB0_22
.LBB0_48:                               # %._crit_edge503
	ld.d	$s1, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 320                   # 8-byte Folded Reload
	sub.w	$fp, $s1, $s2
	addi.w	$a0, $fp, 1
	slli.d	$s7, $a0, 2
	move	$a0, $s7
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	slli.d	$s4, $s2, 2
	move	$a0, $s7
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	move	$s0, $s5
	ld.d	$a6, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 280                   # 8-byte Folded Reload
	blt	$s1, $s2, .LBB0_55
# %bb.49:                               # %.lr.ph507
	ori	$a2, $zero, 7
	addi.d	$a0, $s0, 1
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	bltu	$fp, $a2, .LBB0_53
# %bb.50:                               # %vector.ph622
	bstrpick.d	$a1, $fp, 31, 0
	addi.d	$a2, $a1, 1
	bstrpick.d	$a1, $a2, 32, 3
	slli.d	$a7, $a1, 3
	ld.d	$a4, $sp, 320                   # 8-byte Folded Reload
	alsl.d	$a1, $a1, $a4, 3
	vreplgr2vr.w	$vr0, $a0
	addi.d	$a4, $s3, 16
	move	$a5, $a7
	.p2align	4, , 16
.LBB0_51:                               # %vector.body625
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a4, -16
	vst	$vr0, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB0_51
# %bb.52:                               # %middle.block629
	beq	$a2, $a7, .LBB0_55
.LBB0_53:                               # %scalar.ph620.preheader
	slli.d	$a2, $a1, 2
	sub.d	$a2, $a2, $s4
	add.d	$a2, $s3, $a2
	ld.d	$a4, $sp, 312                   # 8-byte Folded Reload
	sub.d	$a1, $a4, $a1
	addi.d	$a1, $a1, 1
	.p2align	4, , 16
.LBB0_54:                               # %scalar.ph620
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a0, $a2, 0
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB0_54
.LBB0_55:                               # %._crit_edge508
	st.d	$s3, $sp, 72                    # 8-byte Folded Spill
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	sub.d	$t2, $s3, $s4
	or	$t3, $a3, $a6
	ld.d	$a0, $sp, 376                   # 8-byte Folded Reload
	addi.d	$fp, $a0, -1
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	addi.d	$s6, $a0, -1
	move	$a0, $s0
	st.d	$t2, $sp, 224                   # 8-byte Folded Spill
	st.d	$t3, $sp, 216                   # 8-byte Folded Spill
	blt	$t0, $s0, .LBB0_62
# %bb.56:
	addi.w	$a0, $zero, -1
	bge	$a0, $t3, .LBB0_134
# %bb.57:
	ld.d	$s1, $sp, 384                   # 8-byte Folded Reload
	blt	$t1, $s1, .LBB0_135
.LBB0_58:
	move	$a7, $s0
	move	$a1, $s1
	move	$a2, $s0
	.p2align	4, , 16
.LBB0_59:                               # =>This Inner Loop Header: Depth=1
	move	$a0, $a7
	bge	$a3, $a1, .LBB0_62
# %bb.60:                               #   in Loop: Header=BB0_59 Depth=1
	bge	$a6, $a2, .LBB0_62
# %bb.61:                               #   in Loop: Header=BB0_59 Depth=1
	ldx.bu	$a4, $s6, $a2
	ldx.bu	$a5, $fp, $a1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, -1
	addi.d	$a7, $a0, -1
	beq	$a4, $a5, .LBB0_59
.LBB0_62:                               # %rsnake.exit
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	slli.d	$a1, $a5, 2
	ori	$a7, $zero, 1
	stx.w	$a0, $t2, $a1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	blt	$a0, $a7, .LBB0_94
# %bb.63:                               # %.lr.ph523
	move	$t4, $zero
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	sub.d	$t5, $a2, $a4
	addi.d	$t6, $t2, -4
	addi.d	$t7, $t2, 4
	nor	$a0, $s5, $zero
	ld.d	$a1, $sp, 384                   # 8-byte Folded Reload
	add.w	$t8, $a1, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	addi.w	$s0, $a0, 1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	sub.d	$a0, $a1, $a2
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.w	$s1, $a5, 1
	ori	$a0, $zero, 16
	sub.d	$a0, $a0, $a4
	add.d	$a2, $a2, $a0
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 136                   # 8-byte Folded Spill
	st.d	$t5, $sp, 208                   # 8-byte Folded Spill
	st.d	$t6, $sp, 200                   # 8-byte Folded Spill
	st.d	$t7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 144                   # 8-byte Folded Spill
	b	.LBB0_65
	.p2align	4, , 16
.LBB0_64:                               # %._crit_edge520
                                        #   in Loop: Header=BB0_65 Depth=1
	addi.w	$a7, $a7, 1
	addi.w	$t8, $t8, -1
	addi.d	$t4, $t4, 1
	addi.w	$s1, $s1, 1
	beq	$a7, $s0, .LBB0_94
.LBB0_65:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_69 Depth 2
                                        #       Child Loop BB0_80 Depth 3
                                        #     Child Loop BB0_88 Depth 2
                                        #     Child Loop BB0_93 Depth 2
	sub.w	$a0, $a5, $a7
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	slt	$a1, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a4, $a1, $a0
	add.w	$a0, $a7, $a5
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	slt	$a1, $a2, $a0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$ra, $a1, $a0
	st.d	$a4, $sp, 360                   # 8-byte Folded Spill
	blt	$ra, $a4, .LBB0_64
# %bb.66:                               # %.lr.ph516.preheader
                                        #   in Loop: Header=BB0_65 Depth=1
	st.d	$a7, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a7, $sp, 152                   # 8-byte Folded Reload
	slt	$a0, $s1, $a7
	masknez	$a1, $a7, $a0
	st.d	$s1, $sp, 248                   # 8-byte Folded Spill
	maskeqz	$a0, $s1, $a0
	or	$a0, $a0, $a1
	ld.d	$a5, $sp, 328                   # 8-byte Folded Reload
	slt	$a1, $a0, $a5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a0, $a0, $a1
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	slt	$a1, $a2, $t8
	masknez	$a2, $a2, $a1
	st.d	$t8, $sp, 256                   # 8-byte Folded Spill
	maskeqz	$a1, $t8, $a1
	or	$a1, $a1, $a2
	ld.d	$a4, $sp, 336                   # 8-byte Folded Reload
	slt	$a2, $a4, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a4, $a2
	or	$a2, $a1, $a2
	slt	$a1, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	sub.d	$a0, $a0, $a2
	addi.d	$s0, $a0, 1
	bstrins.d	$s0, $zero, 2, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$s1, $a2, $a0, 2
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	alsl.d	$s3, $a2, $a0, 2
	st.d	$t4, $sp, 264                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	add.w	$a0, $a0, $t4
	slt	$a1, $a0, $a7
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a7, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $a5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a5, $a1
	or	$a0, $a0, $a1
	slt	$a1, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$a0, $a1, $a0
	sub.d	$a0, $a0, $a2
	addi.d	$a0, $a0, 1
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	st.d	$a2, $sp, 240                   # 8-byte Folded Spill
	move	$a0, $a2
	ld.d	$a7, $sp, 360                   # 8-byte Folded Reload
	b	.LBB0_69
	.p2align	4, , 16
.LBB0_67:                               #   in Loop: Header=BB0_69 Depth=2
	move	$a0, $s7
.LBB0_68:                               # %rsnake.exit467
                                        #   in Loop: Header=BB0_69 Depth=2
	stx.w	$a0, $t5, $s2
	addi.d	$a0, $s4, 1
	bge	$s4, $ra, .LBB0_85
.LBB0_69:                               # %.lr.ph516
                                        #   Parent Loop BB0_65 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB0_80 Depth 3
	move	$s4, $a0
	addi.w	$a0, $a0, 0
	slli.d	$s2, $s4, 2
	bne	$a7, $a0, .LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_69 Depth=2
	ldx.w	$s7, $t7, $s2
	b	.LBB0_76
	.p2align	4, , 16
.LBB0_71:                               #   in Loop: Header=BB0_69 Depth=2
	bne	$ra, $a0, .LBB0_73
# %bb.72:                               #   in Loop: Header=BB0_69 Depth=2
	ldx.w	$a0, $t6, $s2
	addi.w	$s7, $a0, -1
	b	.LBB0_76
	.p2align	4, , 16
.LBB0_73:                               #   in Loop: Header=BB0_69 Depth=2
	alsl.d	$a2, $s4, $t2, 2
	ldx.w	$a1, $t2, $s2
	ld.w	$a0, $a2, 4
	ld.w	$a2, $a2, -4
	addi.w	$s7, $a1, -1
	blt	$a0, $s7, .LBB0_75
# %bb.74:                               #   in Loop: Header=BB0_69 Depth=2
	bge	$a2, $a1, .LBB0_76
.LBB0_75:                               # %._crit_edge581
                                        #   in Loop: Header=BB0_69 Depth=2
	addi.w	$a5, $a2, -1
	slt	$a1, $a1, $a2
	slt	$a2, $a5, $a0
	masknez	$a4, $a0, $a2
	maskeqz	$a2, $a5, $a2
	or	$a2, $a2, $a4
	masknez	$a2, $a2, $a1
	maskeqz	$a0, $a0, $a1
	or	$s7, $a0, $a2
	.p2align	4, , 16
.LBB0_76:                               #   in Loop: Header=BB0_69 Depth=2
	blt	$t0, $s7, .LBB0_67
# %bb.77:                               #   in Loop: Header=BB0_69 Depth=2
	addi.w	$a0, $zero, -1
	bge	$a0, $t3, .LBB0_83
# %bb.78:                               #   in Loop: Header=BB0_69 Depth=2
	add.w	$s8, $s7, $s4
	blt	$t1, $s8, .LBB0_84
.LBB0_79:                               #   in Loop: Header=BB0_69 Depth=2
	move	$a1, $s7
	.p2align	4, , 16
.LBB0_80:                               #   Parent Loop BB0_65 Depth=1
                                        #     Parent Loop BB0_69 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	move	$a0, $s7
	bge	$a3, $s8, .LBB0_68
# %bb.81:                               #   in Loop: Header=BB0_80 Depth=3
	bge	$a6, $a1, .LBB0_68
# %bb.82:                               #   in Loop: Header=BB0_80 Depth=3
	ldx.bu	$a2, $s6, $a1
	ldx.bu	$a4, $fp, $s8
	addi.d	$a1, $a1, -1
	addi.d	$s8, $s8, -1
	addi.d	$s7, $a0, -1
	beq	$a2, $a4, .LBB0_80
	b	.LBB0_68
.LBB0_83:                               #   in Loop: Header=BB0_69 Depth=2
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	move	$a2, $a6
	move	$s8, $ra
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 360                   # 8-byte Folded Reload
	move	$ra, $s8
	ld.d	$t7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 304                   # 8-byte Folded Reload
	add.w	$s8, $s7, $s4
	bge	$t1, $s8, .LBB0_79
.LBB0_84:                               #   in Loop: Header=BB0_69 Depth=2
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	move	$a2, $s7
	move	$a3, $s8
	st.d	$ra, $sp, 184                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 360                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 304                   # 8-byte Folded Reload
	b	.LBB0_79
	.p2align	4, , 16
.LBB0_85:                               # %.lr.ph519.preheader
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 272                   # 8-byte Folded Reload
	ori	$a0, $zero, 8
	ld.d	$a4, $sp, 232                   # 8-byte Folded Reload
	bltu	$a4, $a0, .LBB0_91
# %bb.86:                               # %.lr.ph519.preheader
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ori	$a1, $zero, 32
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
	bltu	$a0, $a1, .LBB0_90
# %bb.87:                               # %vector.ph645
                                        #   in Loop: Header=BB0_65 Depth=1
	move	$a0, $a4
	bstrins.d	$a0, $zero, 2, 0
	add.d	$a2, $a0, $a2
	ld.d	$t4, $sp, 264                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB0_88:                               # %vector.body648
                                        #   Parent Loop BB0_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $s1, -16
	vld	$vr1, $s1, 0
	vst	$vr0, $s3, -16
	vst	$vr1, $s3, 0
	addi.d	$s0, $s0, -8
	addi.d	$s1, $s1, 32
	addi.d	$s3, $s3, 32
	bnez	$s0, .LBB0_88
# %bb.89:                               # %middle.block654
                                        #   in Loop: Header=BB0_65 Depth=1
	ld.d	$t8, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 248                   # 8-byte Folded Reload
	beq	$a4, $a0, .LBB0_64
	b	.LBB0_92
.LBB0_90:                               #   in Loop: Header=BB0_65 Depth=1
	ld.d	$t4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 248                   # 8-byte Folded Reload
	b	.LBB0_92
.LBB0_91:                               #   in Loop: Header=BB0_65 Depth=1
	ld.d	$t4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 240                   # 8-byte Folded Reload
.LBB0_92:                               # %.lr.ph519.preheader667
                                        #   in Loop: Header=BB0_65 Depth=1
	addi.d	$a0, $a2, -1
	alsl.d	$a1, $a2, $t5, 2
	alsl.d	$a2, $a2, $t2, 2
	.p2align	4, , 16
.LBB0_93:                               # %.lr.ph519
                                        #   Parent Loop BB0_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a4, $a1, 0
	st.w	$a4, $a2, 0
	addi.d	$a0, $a0, 1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	blt	$a0, $ra, .LBB0_93
	b	.LBB0_64
.LBB0_94:                               # %._crit_edge524
	ld.d	$a2, $sp, 352                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	slt	$a0, $a1, $a2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ld.d	$a4, $sp, 344                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	slt	$a1, $a4, $a2
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a4, $a1
	or	$a4, $a1, $a2
	ori	$fp, $zero, 1
	bge	$a4, $a0, .LBB0_105
# %bb.95:
	move	$s8, $a6
	move	$s7, $a3
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	move	$s2, $s5
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	b	.LBB0_110
.LBB0_96:
	sub.w	$a0, $a5, $a7
	sub.w	$a1, $s5, $a2
	addi.w	$a3, $a1, 1
	bne	$a0, $a3, .LBB0_115
# %bb.97:
	bltz	$a2, .LBB0_124
# %bb.98:
	bge	$a2, $s5, .LBB0_124
# %bb.99:                               # %.lr.ph.preheader.i
	move	$a4, $a5
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	move	$fp, $a2
	.p2align	4, , 16
.LBB0_100:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 0
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	ldx.bu	$a3, $a3, $a7
	bne	$a1, $a3, .LBB0_103
# %bb.101:                              #   in Loop: Header=BB0_100 Depth=1
	addi.w	$fp, $fp, 1
	bge	$fp, $s5, .LBB0_103
# %bb.102:                              #   in Loop: Header=BB0_100 Depth=1
	addi.d	$a7, $a7, 1
	addi.d	$a0, $a0, 1
	blt	$a7, $a4, .LBB0_100
.LBB0_103:                              # %snake.exit
	bge	$a2, $fp, .LBB0_126
# %bb.104:
	ori	$a0, $zero, 16
	move	$s0, $a2
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 3
	st.b	$a0, $s2, 12
	sub.d	$a0, $fp, $s0
	st.w	$a0, $s2, 8
	st.d	$s2, $s4, 0
	b	.LBB0_127
.LBB0_105:                              # %.lr.ph529.preheader
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	slt	$a0, $a1, $a2
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	ld.d	$a2, $sp, 336                   # 8-byte Folded Reload
	slt	$a1, $a2, $a0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$a1, $a0, $a1
	sub.d	$t0, $zero, $a1
	slli.d	$a2, $a1, 2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	sub.d	$a1, $a2, $a0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	add.d	$a1, $a0, $a1
	ld.d	$a5, $sp, 64                    # 8-byte Folded Reload
	sub.d	$a2, $a2, $a5
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	add.d	$a2, $s3, $a2
	nor	$a7, $a4, $zero
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	move	$s2, $s5
	.p2align	4, , 16
.LBB0_106:                              # %.lr.ph529
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, 0
	ld.w	$a5, $a2, 0
	bge	$a4, $a5, .LBB0_109
# %bb.107:                              #   in Loop: Header=BB0_106 Depth=1
	addi.w	$t0, $t0, -1
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	bne	$a7, $t0, .LBB0_106
# %bb.108:
	move	$s8, $a6
	move	$s7, $a3
	b	.LBB0_110
.LBB0_109:
	move	$fp, $zero
	sub.w	$a1, $a4, $a6
	sub.w	$a2, $s2, $a5
	slt	$a1, $a1, $a2
	masknez	$a2, $a4, $a1
	maskeqz	$a1, $a5, $a1
	or	$s8, $a1, $a2
	sub.w	$s7, $s8, $t0
.LBB0_110:                              # %.loopexit
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	bnez	$fp, .LBB0_133
# %bb.111:
	ld.d	$s5, $sp, 280                   # 8-byte Folded Reload
	st.d	$s5, $sp, 16
	ld.d	$s4, $sp, 288                   # 8-byte Folded Reload
	st.d	$s4, $sp, 8
	addi.d	$a0, $sp, 408
	addi.d	$a7, $sp, 416
	st.d	$a0, $sp, 0
	ld.d	$s3, $sp, 368                   # 8-byte Folded Reload
	move	$a0, $s3
	ld.d	$fp, $sp, 376                   # 8-byte Folded Reload
	move	$a1, $fp
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	move	$a4, $s8
	move	$a5, $s7
	ld.d	$a6, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(align_path)
	jirl	$ra, $ra, 0
	st.d	$s5, $sp, 16
	st.d	$s4, $sp, 8
	addi.d	$a0, $sp, 392
	addi.d	$a7, $sp, 400
	st.d	$a0, $sp, 0
	move	$a0, $s3
	move	$a1, $fp
	move	$a2, $s8
	move	$a3, $s7
	move	$a4, $s2
	ld.d	$a5, $sp, 384                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(align_path)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 416
	ld.d	$a1, $sp, 400
	ld.d	$a0, $sp, 408
	beqz	$a2, .LBB0_113
# %bb.112:
	st.d	$a1, $a0, 0
	b	.LBB0_114
.LBB0_113:
	move	$a2, $a1
.LBB0_114:
	ld.d	$a3, $sp, 392
	st.d	$a2, $s1, 0
	sltui	$a1, $a1, 1
	masknez	$a2, $a3, $a1
	maskeqz	$a0, $a0, $a1
	or	$a0, $a0, $a2
	st.d	$a0, $s0, 0
	b	.LBB0_8
.LBB0_115:
	addi.w	$a0, $a0, 1
	bne	$a0, $a1, .LBB0_136
# %bb.116:
	bltz	$a2, .LBB0_125
# %bb.117:
	bge	$a7, $a5, .LBB0_125
# %bb.118:                              # %.lr.ph.preheader.i422
	move	$a4, $a5
	ld.d	$a0, $sp, 368                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	move	$fp, $a2
	.p2align	4, , 16
.LBB0_119:                              # %.lr.ph.i423
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a1, $a0, 0
	ld.d	$a3, $sp, 376                   # 8-byte Folded Reload
	ldx.bu	$a3, $a3, $a7
	bne	$a1, $a3, .LBB0_122
# %bb.120:                              #   in Loop: Header=BB0_119 Depth=1
	addi.w	$fp, $fp, 1
	bge	$fp, $s5, .LBB0_122
# %bb.121:                              #   in Loop: Header=BB0_119 Depth=1
	addi.d	$a7, $a7, 1
	addi.d	$a0, $a0, 1
	blt	$a7, $a4, .LBB0_119
.LBB0_122:                              # %snake.exit431
	bge	$a2, $fp, .LBB0_129
# %bb.123:
	ori	$a0, $zero, 16
	move	$s0, $a2
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 3
	st.b	$a0, $s2, 12
	sub.d	$a0, $fp, $s0
	st.w	$a0, $s2, 8
	st.d	$s2, $s4, 0
	b	.LBB0_130
.LBB0_124:
                                        # implicit-def: $r25
	move	$fp, $a2
	b	.LBB0_127
.LBB0_125:
                                        # implicit-def: $r25
	move	$fp, $a2
	b	.LBB0_130
.LBB0_126:
                                        # implicit-def: $r25
.LBB0_127:                              # %snake.exit.thread
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ori	$a0, $zero, 2
	ld.d	$a1, $s4, 0
	st.b	$a0, $s1, 12
	ori	$a0, $zero, 1
	st.w	$a0, $s1, 8
	sltui	$a0, $a1, 1
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	st.d	$s1, $a0, 0
	st.d	$s1, $s3, 0
	st.d	$zero, $s1, 0
	beq	$s5, $fp, .LBB0_8
# %bb.128:
	sub.d	$fp, $s5, $fp
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
	ori	$a1, $zero, 3
	st.b	$a1, $a0, 12
	st.w	$fp, $a0, 8
	b	.LBB0_132
.LBB0_129:
                                        # implicit-def: $r25
.LBB0_130:                              # %snake.exit431.thread
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	ld.d	$a0, $s4, 0
	ori	$a1, $zero, 1
	st.b	$a1, $s1, 12
	st.w	$a1, $s1, 8
	sltui	$a0, $a0, 1
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $s4, $a0
	or	$a0, $a0, $a1
	st.d	$s1, $a0, 0
	st.d	$s1, $s3, 0
	addi.w	$a0, $fp, 1
	st.d	$zero, $s1, 0
	bge	$a0, $s5, .LBB0_8
# %bb.131:
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s3, 0
	ori	$a1, $zero, 3
	st.b	$a1, $a0, 12
	nor	$a1, $fp, $zero
	add.d	$a1, $s5, $a1
	st.w	$a1, $a0, 8
.LBB0_132:
	st.d	$zero, $a0, 0
	st.d	$a0, $s1, 0
	b	.LBB0_8
.LBB0_133:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a0, $a0, %pc_lo12(.L.str.1)
	ori	$a1, $zero, 48
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(fwrite)
	jirl	$ra, $ra, 0
	move	$a2, $zero
                                        # implicit-def: $r4
                                        # implicit-def: $r5
	b	.LBB0_114
.LBB0_134:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	move	$a2, $a6
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$t3, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 384                   # 8-byte Folded Reload
	bge	$t1, $s1, .LBB0_58
.LBB0_135:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a0, $a0, 0
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(fprintf)
	jirl	$ra, $ra, 0
	ld.d	$t3, $sp, 216                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 280                   # 8-byte Folded Reload
	ld.d	$t0, $sp, 288                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 296                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 304                   # 8-byte Folded Reload
	b	.LBB0_58
.LBB0_136:
	pcalau12i	$a0, %got_pc_hi20(stderr)
	ld.d	$a0, $a0, %got_pc_lo12(stderr)
	ld.d	$a3, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ori	$a1, $zero, 48
	ori	$a2, $zero, 1
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
	pcaddu18i	$t8, %call36(fwrite)
	jr	$t8
.Lfunc_end0:
	.size	align_path, .Lfunc_end0-align_path
                                        # -- End function
	.globl	align_get_dist                  # -- Begin function align_get_dist
	.p2align	5
	.type	align_get_dist,@function
align_get_dist:                         # @align_get_dist
# %bb.0:
	addi.d	$sp, $sp, -208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
	move	$s1, $a5
	move	$s8, $a2
	move	$s3, $a1
	move	$s4, $a0
	sub.w	$t0, $a3, $a2
	sub.w	$a2, $a5, $a2
	add.w	$a1, $a6, $t0
	slt	$a0, $a2, $a1
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	masknez	$a1, $a1, $a0
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	maskeqz	$a0, $a2, $a0
	or	$a5, $a0, $a1
	sub.w	$a7, $s1, $a4
	addi.w	$a0, $zero, -1
	blt	$a5, $a7, .LBB1_53
# %bb.1:
	move	$s2, $a4
	sub.w	$a4, $a3, $a4
	sub.w	$a1, $t0, $a6
	slt	$a2, $a1, $a4
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	masknez	$a1, $a1, $a2
	st.d	$a4, $sp, 80                    # 8-byte Folded Spill
	maskeqz	$a2, $a4, $a2
	or	$s0, $a2, $a1
	blt	$a7, $s0, .LBB1_53
# %bb.2:
	st.d	$t0, $sp, 24                    # 8-byte Folded Spill
	st.d	$a7, $sp, 56                    # 8-byte Folded Spill
	st.d	$a3, $sp, 64                    # 8-byte Folded Spill
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	st.d	$a6, $sp, 112                   # 8-byte Folded Spill
	sub.w	$fp, $a5, $s0
	addi.w	$a0, $fp, 1
	slli.d	$s6, $a0, 2
	move	$a0, $s6
	st.d	$a5, $sp, 88                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	slli.d	$s5, $s0, 2
	move	$a0, $s6
	pcaddu18i	$ra, %call36(xmalloc)
	jirl	$ra, $ra, 0
	move	$t6, $s5
	ld.d	$t3, $sp, 88                    # 8-byte Folded Reload
	move	$s6, $a0
	blt	$t3, $s0, .LBB1_9
# %bb.3:                                # %.lr.ph.preheader
	ori	$a2, $zero, 7
	lu12i.w	$a0, -524288
	move	$a1, $s0
	bltu	$fp, $a2, .LBB1_7
# %bb.4:                                # %vector.ph
	bstrpick.d	$a1, $fp, 31, 0
	addi.d	$a2, $a1, 1
	bstrpick.d	$a1, $a2, 32, 3
	slli.d	$a3, $a1, 3
	alsl.d	$a1, $a1, $s0, 3
	addi.d	$a4, $s7, 16
	vreplgr2vr.w	$vr0, $a0
	move	$a5, $a3
	.p2align	4, , 16
.LBB1_5:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a4, -16
	vst	$vr0, $a4, 0
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB1_5
# %bb.6:                                # %middle.block
	beq	$a2, $a3, .LBB1_9
.LBB1_7:                                # %.lr.ph.preheader234
	slli.d	$a2, $a1, 2
	sub.d	$a2, $a2, $t6
	add.d	$a2, $s7, $a2
	sub.d	$a1, $t3, $a1
	addi.d	$a1, $a1, 1
	lu32i.d	$a0, 0
	.p2align	4, , 16
.LBB1_8:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$a0, $a2, 0
	addi.w	$a1, $a1, -1
	addi.d	$a2, $a2, 4
	bnez	$a1, .LBB1_8
.LBB1_9:                                # %._crit_edge
	sub.d	$a0, $s7, $t6
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	bltz	$s8, .LBB1_16
# %bb.10:
	ld.d	$a6, $sp, 64                    # 8-byte Folded Reload
	bge	$s8, $s2, .LBB1_17
# %bb.11:
	bge	$a6, $s1, .LBB1_17
# %bb.12:                               # %.lr.ph.preheader.i
	bstrpick.d	$a1, $s8, 31, 0
	add.d	$a2, $s4, $a1
	move	$a3, $a6
	move	$a1, $s8
	.p2align	4, , 16
.LBB1_13:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a2, 0
	ldx.bu	$a5, $s3, $a3
	bne	$a4, $a5, .LBB1_18
# %bb.14:                               #   in Loop: Header=BB1_13 Depth=1
	addi.w	$a1, $a1, 1
	bge	$a1, $s2, .LBB1_18
# %bb.15:                               #   in Loop: Header=BB1_13 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a2, $a2, 1
	blt	$a3, $s1, .LBB1_13
	b	.LBB1_18
.LBB1_16:
	move	$a1, $s8
	ld.d	$a6, $sp, 64                    # 8-byte Folded Reload
	b	.LBB1_18
.LBB1_17:
	move	$a1, $s8
.LBB1_18:                               # %snake.exit
	slli.d	$a2, $s5, 2
	stx.w	$a1, $a0, $a2
	slli.d	$a1, $t1, 2
	ldx.w	$a1, $a0, $a1
	bge	$a1, $s2, .LBB1_50
# %bb.19:                               # %.preheader162
	ori	$a7, $zero, 1
	blt	$t2, $a7, .LBB1_49
# %bb.20:                               # %.lr.ph181
	move	$a1, $zero
	sub.d	$a2, $s6, $t6
	alsl.d	$t4, $t1, $a0, 2
	addi.d	$a4, $a0, -4
	addi.d	$a5, $a0, 4
	nor	$a3, $s8, $zero
	add.w	$a6, $a6, $a3
	sub.d	$a3, $s7, $s6
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	addi.w	$t5, $s5, 1
	ori	$a3, $zero, 16
	sub.d	$a3, $a3, $t6
	st.d	$s6, $sp, 0                     # 8-byte Folded Spill
	add.d	$t1, $s6, $a3
	st.d	$t1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	add.d	$a3, $s7, $a3
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$t5, $sp, 56                    # 8-byte Folded Spill
	st.d	$t4, $sp, 64                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB1_21:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_24 Depth 2
                                        #       Child Loop BB1_36 Depth 3
                                        #     Child Loop BB1_42 Depth 2
                                        #     Child Loop BB1_46 Depth 2
	move	$s8, $a7
	sub.w	$a3, $s5, $a7
	slt	$a7, $a3, $s0
	masknez	$a3, $a3, $a7
	maskeqz	$a7, $s0, $a7
	or	$t8, $a7, $a3
	add.w	$a3, $s8, $s5
	slt	$a7, $t3, $a3
	masknez	$a3, $a3, $a7
	maskeqz	$a7, $t3, $a7
	or	$t6, $a7, $a3
	blt	$t6, $t8, .LBB1_47
# %bb.22:                               # %.lr.ph174.preheader
                                        #   in Loop: Header=BB1_21 Depth=1
	ld.d	$t2, $sp, 96                    # 8-byte Folded Reload
	slt	$a3, $t5, $t2
	masknez	$a7, $t2, $a3
	maskeqz	$a3, $t5, $a3
	or	$a3, $a3, $a7
	ld.d	$t1, $sp, 104                   # 8-byte Folded Reload
	slt	$a7, $a3, $t1
	maskeqz	$a3, $a3, $a7
	masknez	$a7, $t1, $a7
	or	$a3, $a3, $a7
	ld.d	$t0, $sp, 72                    # 8-byte Folded Reload
	slt	$a7, $t0, $a6
	masknez	$t0, $t0, $a7
	maskeqz	$a7, $a6, $a7
	or	$a7, $a7, $t0
	ld.d	$t3, $sp, 80                    # 8-byte Folded Reload
	slt	$t0, $t3, $a7
	maskeqz	$a7, $a7, $t0
	masknez	$t0, $t3, $t0
	or	$t7, $a7, $t0
	slt	$a7, $a3, $t7
	masknez	$a3, $a3, $a7
	maskeqz	$a7, $t7, $a7
	or	$a3, $a7, $a3
	sub.d	$a3, $a3, $t7
	addi.d	$ra, $a3, 1
	bstrins.d	$ra, $zero, 2, 0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	alsl.d	$t4, $t7, $a3, 2
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	alsl.d	$t3, $t7, $a3, 2
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	add.w	$a3, $a3, $a1
	slt	$a7, $a3, $t2
	maskeqz	$a3, $a3, $a7
	masknez	$a7, $t2, $a7
	or	$a3, $a3, $a7
	slt	$a7, $a3, $t1
	maskeqz	$a3, $a3, $a7
	masknez	$a7, $t1, $a7
	or	$a3, $a3, $a7
	slt	$a7, $a3, $t7
	masknez	$a3, $a3, $a7
	maskeqz	$a7, $t7, $a7
	or	$a3, $a7, $a3
	sub.d	$a3, $a3, $t7
	addi.d	$s6, $a3, 1
	move	$a3, $t7
	b	.LBB1_24
	.p2align	4, , 16
.LBB1_23:                               # %snake.exit160
                                        #   in Loop: Header=BB1_24 Depth=2
	stx.w	$t2, $a2, $t1
	addi.d	$a3, $a7, 1
	bge	$a7, $t6, .LBB1_39
.LBB1_24:                               # %.lr.ph174
                                        #   Parent Loop BB1_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_36 Depth 3
	move	$a7, $a3
	addi.w	$a3, $a3, 0
	slli.d	$t1, $a7, 2
	bne	$t8, $a3, .LBB1_26
# %bb.25:                               #   in Loop: Header=BB1_24 Depth=2
	ldx.w	$a3, $a5, $t1
	addi.w	$t2, $a3, 1
	b	.LBB1_32
	.p2align	4, , 16
.LBB1_26:                               #   in Loop: Header=BB1_24 Depth=2
	bne	$t6, $a3, .LBB1_28
# %bb.27:                               #   in Loop: Header=BB1_24 Depth=2
	ldx.w	$t2, $a4, $t1
	b	.LBB1_32
	.p2align	4, , 16
.LBB1_28:                               #   in Loop: Header=BB1_24 Depth=2
	alsl.d	$a3, $a7, $a0, 2
	ldx.w	$t0, $a0, $t1
	ld.w	$fp, $a3, 4
	bge	$t0, $fp, .LBB1_30
# %bb.29:                               # %._crit_edge201
                                        #   in Loop: Header=BB1_24 Depth=2
	ld.w	$a3, $a3, -4
	b	.LBB1_31
.LBB1_30:                               #   in Loop: Header=BB1_24 Depth=2
	ld.w	$a3, $a3, -4
	addi.w	$t2, $t0, 1
	bge	$t2, $a3, .LBB1_32
.LBB1_31:                               #   in Loop: Header=BB1_24 Depth=2
	addi.w	$t2, $fp, 1
	slt	$t0, $fp, $t0
	slt	$fp, $a3, $t2
	masknez	$s7, $a3, $fp
	maskeqz	$t2, $t2, $fp
	or	$t2, $t2, $s7
	masknez	$t2, $t2, $t0
	maskeqz	$a3, $a3, $t0
	or	$t2, $a3, $t2
	.p2align	4, , 16
.LBB1_32:                               #   in Loop: Header=BB1_24 Depth=2
	bltz	$t2, .LBB1_23
# %bb.33:                               #   in Loop: Header=BB1_24 Depth=2
	bge	$t2, $s2, .LBB1_23
# %bb.34:                               #   in Loop: Header=BB1_24 Depth=2
	add.w	$t0, $t2, $a7
	bge	$t0, $s1, .LBB1_23
# %bb.35:                               # %.lr.ph.preheader.i151
                                        #   in Loop: Header=BB1_24 Depth=2
	bstrpick.d	$a3, $t2, 31, 0
	add.d	$fp, $s4, $a3
	.p2align	4, , 16
.LBB1_36:                               # %.lr.ph.i152
                                        #   Parent Loop BB1_21 Depth=1
                                        #     Parent Loop BB1_24 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.bu	$a3, $fp, 0
	ldx.bu	$s7, $s3, $t0
	bne	$a3, $s7, .LBB1_23
# %bb.37:                               #   in Loop: Header=BB1_36 Depth=3
	addi.w	$t2, $t2, 1
	bge	$t2, $s2, .LBB1_23
# %bb.38:                               #   in Loop: Header=BB1_36 Depth=3
	addi.d	$t0, $t0, 1
	addi.d	$fp, $fp, 1
	blt	$t0, $s1, .LBB1_36
	b	.LBB1_23
	.p2align	4, , 16
.LBB1_39:                               # %.lr.ph177.preheader
                                        #   in Loop: Header=BB1_21 Depth=1
	ori	$a3, $zero, 8
	bltu	$s6, $a3, .LBB1_44
# %bb.40:                               # %.lr.ph177.preheader
                                        #   in Loop: Header=BB1_21 Depth=1
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ori	$a7, $zero, 32
	bltu	$a3, $a7, .LBB1_44
# %bb.41:                               # %vector.ph217
                                        #   in Loop: Header=BB1_21 Depth=1
	move	$a7, $s6
	bstrins.d	$a7, $zero, 2, 0
	add.d	$t7, $a7, $t7
	.p2align	4, , 16
.LBB1_42:                               # %vector.body220
                                        #   Parent Loop BB1_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t4, -16
	vld	$vr1, $t4, 0
	vst	$vr0, $t3, -16
	vst	$vr1, $t3, 0
	addi.d	$ra, $ra, -8
	addi.d	$t4, $t4, 32
	addi.d	$t3, $t3, 32
	bnez	$ra, .LBB1_42
# %bb.43:                               # %middle.block225
                                        #   in Loop: Header=BB1_21 Depth=1
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 64                    # 8-byte Folded Reload
	bne	$s6, $a7, .LBB1_45
	b	.LBB1_47
	.p2align	4, , 16
.LBB1_44:                               #   in Loop: Header=BB1_21 Depth=1
	ld.d	$t2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 64                    # 8-byte Folded Reload
.LBB1_45:                               # %.lr.ph177.preheader229
                                        #   in Loop: Header=BB1_21 Depth=1
	addi.d	$a7, $t7, -1
	alsl.d	$t0, $t7, $a2, 2
	alsl.d	$t1, $t7, $a0, 2
	.p2align	4, , 16
.LBB1_46:                               # %.lr.ph177
                                        #   Parent Loop BB1_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a3, $t0, 0
	st.w	$a3, $t1, 0
	addi.d	$a7, $a7, 1
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, 4
	blt	$a7, $t6, .LBB1_46
.LBB1_47:                               # %._crit_edge178
                                        #   in Loop: Header=BB1_21 Depth=1
	ld.w	$a3, $t4, 0
	bge	$a3, $s2, .LBB1_51
# %bb.48:                               #   in Loop: Header=BB1_21 Depth=1
	addi.w	$a7, $s8, 1
	addi.w	$a6, $a6, -1
	addi.d	$a1, $a1, 1
	addi.w	$t5, $t5, 1
	bne	$s8, $t2, .LBB1_21
.LBB1_49:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	b	.LBB1_53
.LBB1_50:
	move	$s8, $zero
	b	.LBB1_52
.LBB1_51:
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s6, $sp, 0                     # 8-byte Folded Reload
.LBB1_52:                               # %.loopexit.sink.split
	move	$a0, $s7
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $s8
.LBB1_53:                               # %.loopexit
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.Lfunc_end1:
	.size	align_get_dist, .Lfunc_end1-align_get_dist
                                        # -- End function
	.globl	Condense_both_Ends              # -- Begin function Condense_both_Ends
	.p2align	5
	.type	Condense_both_Ends,@function
Condense_both_Ends:                     # @Condense_both_Ends
# %bb.0:
	addi.d	$sp, $sp, -32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	ld.d	$s1, $a0, 0
	st.d	$zero, $a2, 0
	beqz	$s1, .LBB2_8
# %bb.1:                                # %.preheader.preheader
	move	$fp, $a2
	move	$s0, $a1
	b	.LBB2_4
	.p2align	4, , 16
.LBB2_2:                                #   in Loop: Header=BB2_4 Depth=1
	move	$a1, $fp
.LBB2_3:                                # %.critedge
                                        #   in Loop: Header=BB2_4 Depth=1
	st.d	$s1, $a1, 0
	ld.d	$s1, $s1, 0
	beqz	$s1, .LBB2_8
.LBB2_4:                                # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_5 Depth 2
	ld.d	$a0, $s1, 0
	move	$a1, $s0
	beqz	$a0, .LBB2_3
	.p2align	4, , 16
.LBB2_5:                                #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$a1, $s1, 12
	ld.bu	$a2, $a0, 12
	bne	$a1, $a2, .LBB2_2
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=2
	ld.w	$a1, $s1, 8
	ld.w	$a2, $a0, 8
	ld.d	$a3, $a0, 0
	add.d	$a1, $a2, $a1
	st.w	$a1, $s1, 8
	st.d	$a3, $s1, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	bnez	$a0, .LBB2_5
# %bb.7:                                #   in Loop: Header=BB2_4 Depth=1
	move	$a1, $s0
	b	.LBB2_3
.LBB2_8:                                # %._crit_edge25
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end2:
	.size	Condense_both_Ends, .Lfunc_end2-Condense_both_Ends
                                        # -- End function
	.globl	S2A                             # -- Begin function S2A
	.p2align	5
	.type	S2A,@function
S2A:                                    # @S2A
# %bb.0:
	move	$a6, $a1
	beqz	$a0, .LBB3_22
# %bb.1:                                # %.lr.ph31
	beqz	$a2, .LBB3_12
# %bb.2:
	ori	$a2, $zero, 2
	ori	$a3, $zero, 3
	ori	$a4, $zero, 1
	move	$a5, $a1
	b	.LBB3_6
	.p2align	4, , 16
.LBB3_3:                                #   in Loop: Header=BB3_6 Depth=1
	sub.d	$a7, $zero, $a7
.LBB3_4:                                # %.loopexit.sink.split
                                        #   in Loop: Header=BB3_6 Depth=1
	addi.d	$a6, $a5, 4
	st.w	$a7, $a5, 0
.LBB3_5:                                # %.loopexit
                                        #   in Loop: Header=BB3_6 Depth=1
	ld.d	$a0, $a0, 0
	move	$a5, $a6
	beqz	$a0, .LBB3_22
.LBB3_6:                                # %.lr.ph31.split.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_10 Depth 2
	ld.bu	$a6, $a0, 12
	ld.w	$a7, $a0, 8
	beq	$a6, $a2, .LBB3_3
# %bb.7:                                # %.lr.ph31.split.split
                                        #   in Loop: Header=BB3_6 Depth=1
	bne	$a6, $a3, .LBB3_4
# %bb.8:                                # %.preheader
                                        #   in Loop: Header=BB3_6 Depth=1
	blt	$a7, $a4, .LBB3_11
# %bb.9:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB3_6 Depth=1
	move	$a7, $zero
	.p2align	4, , 16
.LBB3_10:                               # %.lr.ph
                                        #   Parent Loop BB3_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$zero, $a5, 0
	ld.w	$t0, $a0, 8
	addi.d	$a6, $a5, 4
	addi.w	$a7, $a7, 1
	move	$a5, $a6
	blt	$a7, $t0, .LBB3_10
	b	.LBB3_5
.LBB3_11:                               #   in Loop: Header=BB3_6 Depth=1
	move	$a6, $a5
	b	.LBB3_5
.LBB3_12:                               # %.lr.ph31.split.us.split.us.preheader
	ori	$a2, $zero, 2
	ori	$a3, $zero, 3
	ori	$a4, $zero, 1
	move	$a5, $a1
	b	.LBB3_16
	.p2align	4, , 16
.LBB3_13:                               #   in Loop: Header=BB3_16 Depth=1
	sub.d	$a7, $zero, $a7
.LBB3_14:                               # %.loopexit.us.us.sink.split
                                        #   in Loop: Header=BB3_16 Depth=1
	addi.d	$a6, $a5, 4
	st.w	$a7, $a5, 0
.LBB3_15:                               # %.loopexit.us.us
                                        #   in Loop: Header=BB3_16 Depth=1
	ld.d	$a0, $a0, 0
	move	$a5, $a6
	beqz	$a0, .LBB3_22
.LBB3_16:                               # %.lr.ph31.split.us.split.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_20 Depth 2
	ld.bu	$a6, $a0, 12
	ld.w	$a7, $a0, 8
	beq	$a6, $a2, .LBB3_14
# %bb.17:                               # %.lr.ph31.split.us.split.us
                                        #   in Loop: Header=BB3_16 Depth=1
	bne	$a6, $a3, .LBB3_13
# %bb.18:                               # %.preheader.us.us
                                        #   in Loop: Header=BB3_16 Depth=1
	blt	$a7, $a4, .LBB3_21
# %bb.19:                               # %.lr.ph.us.us.preheader
                                        #   in Loop: Header=BB3_16 Depth=1
	move	$a7, $zero
	.p2align	4, , 16
.LBB3_20:                               # %.lr.ph.us.us
                                        #   Parent Loop BB3_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	st.w	$zero, $a5, 0
	ld.w	$t0, $a0, 8
	addi.d	$a6, $a5, 4
	addi.w	$a7, $a7, 1
	move	$a5, $a6
	blt	$a7, $t0, .LBB3_20
	b	.LBB3_15
.LBB3_21:                               #   in Loop: Header=BB3_16 Depth=1
	move	$a6, $a5
	b	.LBB3_15
.LBB3_22:                               # %._crit_edge
	sub.d	$a0, $a6, $a1
	srli.d	$a0, $a0, 2
	st.w	$a0, $a1, -4
	ret
.Lfunc_end3:
	.size	S2A, .Lfunc_end3-S2A
                                        # -- End function
	.globl	IDISPLAY                        # -- Begin function IDISPLAY
	.p2align	5
	.type	IDISPLAY,@function
IDISPLAY:                               # @IDISPLAY
# %bb.0:
	addi.d	$sp, $sp, -256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
	ld.wu	$t4, $a7, 8
	st.d	$a7, $sp, 32                    # 8-byte Folded Spill
	ld.d	$t1, $a7, 0
	addi.w	$t0, $t4, -1
	bstrpick.d	$t2, $t0, 31, 0
	slli.d	$t2, $t2, 3
	ldx.d	$t2, $t1, $t2
	pcalau12i	$t3, %got_pc_hi20(options)
	ld.d	$a7, $t3, %got_pc_lo12(options)
	ld.w	$t2, $t2, 8
	st.d	$a7, $sp, 104                   # 8-byte Folded Spill
	ld.w	$t3, $a7, 68
	move	$s3, $a5
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	move	$t5, $a2
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	add.w	$a1, $t3, $t2
	ori	$a2, $zero, 10
	ori	$a0, $zero, 1
	bltu	$a1, $a2, .LBB4_3
# %bb.1:                                # %.lr.ph.i.preheader
	ori	$a0, $zero, 1
	lu12i.w	$a2, -209716
	ori	$a2, $a2, 3277
	lu32i.d	$a2, 0
	ori	$a3, $zero, 99
	.p2align	4, , 16
.LBB4_2:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a7, $a1
	bstrpick.d	$a1, $a1, 31, 0
	mul.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 35
	addi.w	$a0, $a0, 1
	bltu	$a3, $a7, .LBB4_2
.LBB4_3:                                # %get_pos_width.exit
	beqz	$t4, .LBB4_46
# %bb.4:                                # %.lr.ph.preheader
	move	$s6, $zero
	ld.d	$a1, $sp, 256
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ori	$a1, $zero, 7
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	b	.LBB4_6
	.p2align	4, , 16
.LBB4_5:                                # %.critedge2
                                        #   in Loop: Header=BB4_6 Depth=1
	addi.w	$s6, $s6, 1
	addi.d	$t4, $t4, -1
	addi.d	$t1, $t1, 8
	beqz	$t4, .LBB4_46
.LBB4_6:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s5, $t1, 0
	ld.w	$a0, $s5, 0
	bne	$a0, $s3, .LBB4_5
# %bb.7:                                #   in Loop: Header=BB4_6 Depth=1
	ld.w	$a0, $s5, 4
	bne	$a0, $a6, .LBB4_5
# %bb.8:
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	bgeu	$s6, $t0, .LBB4_10
# %bb.9:
	ld.w	$a0, $s5, 8
	addi.w	$a0, $a0, 1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	or	$a0, $t5, $a0
	bnez	$a0, .LBB4_11
	b	.LBB4_45
.LBB4_10:
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	or	$a0, $t5, $a0
	beqz	$a0, .LBB4_45
.LBB4_11:                               # %.lr.ph272
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	move	$a7, $zero
	move	$s2, $zero
	move	$a4, $zero
	move	$t2, $zero
	move	$a0, $zero
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	slt	$a1, $zero, $a1
	ori	$a2, $zero, 60
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 62
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(BLINE)
	addi.d	$fp, $a1, %pc_lo12(BLINE)
	pcalau12i	$a1, %pc_hi20(CLINE)
	addi.d	$s8, $a1, %pc_lo12(CLINE)
	ori	$a1, $zero, 42
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(ALINE)
	addi.d	$t1, $a1, %pc_lo12(ALINE)
	move	$s0, $a6
	move	$s1, $s3
	st.d	$t1, $sp, 88                    # 8-byte Folded Spill
	st.d	$t5, $sp, 96                    # 8-byte Folded Spill
	st.d	$a6, $sp, 80                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB4_12:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_38 Depth 2
	bnez	$t2, .LBB4_14
# %bb.13:                               #   in Loop: Header=BB4_12 Depth=1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.w	$t2, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	beqz	$t2, .LBB4_23
.LBB4_14:                               # %.critedge196
                                        #   in Loop: Header=BB4_12 Depth=1
	ori	$a1, $zero, 1
	blt	$t2, $a1, .LBB4_16
# %bb.15:                               #   in Loop: Header=BB4_12 Depth=1
	ori	$a1, $zero, 32
	stx.b	$a1, $t1, $a0
	addi.w	$a7, $a7, 1
	bstrpick.d	$a1, $a7, 31, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ldx.b	$a1, $a2, $a1
	st.b	$a1, $fp, 0
	ori	$a1, $zero, 45
	st.b	$a1, $s8, 0
	addi.w	$t2, $t2, -1
	b	.LBB4_33
	.p2align	4, , 16
.LBB4_16:                               #   in Loop: Header=BB4_12 Depth=1
	add.w	$a1, $s2, $s3
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	bne	$a1, $a2, .LBB4_20
# %bb.17:                               #   in Loop: Header=BB4_12 Depth=1
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a2, $a1, 8
	addi.w	$s6, $s6, 1
	bgeu	$s6, $a2, .LBB4_24
# %bb.18:                               #   in Loop: Header=BB4_12 Depth=1
	ld.d	$a1, $a1, 0
	bstrpick.d	$a3, $s6, 31, 0
	slli.d	$a3, $a3, 3
	ldx.d	$a1, $a1, $a3
	addi.w	$a2, $a2, -1
	bltu	$s6, $a2, .LBB4_25
.LBB4_19:                               #   in Loop: Header=BB4_12 Depth=1
	addi.w	$a2, $zero, -1
	b	.LBB4_26
.LBB4_20:                               #   in Loop: Header=BB4_12 Depth=1
	ori	$a1, $zero, 8
	bltu	$a1, $a4, .LBB4_42
# %bb.21:                               #   in Loop: Header=BB4_12 Depth=1
	slli.d	$a1, $a4, 2
	pcalau12i	$a2, %pc_hi20(.LJTI4_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI4_0)
	ldx.w	$a1, $a2, $a1
	add.d	$a1, $a2, $a1
	jr	$a1
.LBB4_22:                               #   in Loop: Header=BB4_12 Depth=1
	addi.w	$s2, $s2, 1
	bstrpick.d	$a1, $s2, 31, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ldx.b	$a1, $a2, $a1
	stx.b	$a1, $t1, $a0
	ori	$a1, $zero, 32
	st.b	$a1, $fp, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.b	$a1, $s8, 0
	b	.LBB4_28
.LBB4_23:                               #   in Loop: Header=BB4_12 Depth=1
	addi.w	$s2, $s2, 1
	bstrpick.d	$a1, $s2, 31, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ldx.b	$a1, $a2, $a1
	stx.b	$a1, $t1, $a0
	addi.w	$a7, $a7, 1
	bstrpick.d	$a1, $a7, 31, 0
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ldx.bu	$a1, $a2, $a1
	ldx.bu	$a2, $t1, $a0
	move	$t2, $zero
	st.b	$a1, $fp, 0
	xor	$a1, $a2, $a1
	sltui	$a1, $a1, 1
	ori	$a2, $zero, 32
	masknez	$a2, $a2, $a1
	ori	$a3, $zero, 124
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	st.b	$a1, $s8, 0
	b	.LBB4_33
.LBB4_24:                               #   in Loop: Header=BB4_12 Depth=1
	move	$a1, $zero
	addi.w	$a2, $a2, -1
	bgeu	$s6, $a2, .LBB4_19
.LBB4_25:                               #   in Loop: Header=BB4_12 Depth=1
	ld.w	$a2, $a1, 8
	addi.w	$a2, $a2, 1
.LBB4_26:                               #   in Loop: Header=BB4_12 Depth=1
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a2, $s5, 24
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	sltui	$a3, $a3, 1
	slti	$a2, $a2, 0
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	masknez	$a4, $a4, $a2
	ori	$t3, $zero, 61
	maskeqz	$a2, $t3, $a2
	or	$a2, $a2, $a4
	masknez	$a2, $a2, $a3
	maskeqz	$a3, $t3, $a3
	or	$a2, $a3, $a2
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.b	$a2, $s8, 0
	addi.w	$s2, $s2, 1
	bstrpick.d	$a2, $s2, 31, 0
	ld.d	$a3, $sp, 56                    # 8-byte Folded Reload
	ldx.b	$a2, $a3, $a2
	stx.b	$a2, $t1, $a0
	ori	$a2, $zero, 32
	st.b	$a2, $fp, 0
	addi.w	$t2, $t2, 1
	ori	$a4, $zero, 1
	b	.LBB4_34
.LBB4_27:                               #   in Loop: Header=BB4_12 Depth=1
	ori	$a2, $zero, 46
	stx.b	$a2, $t1, $a0
	ori	$a1, $zero, 32
	st.b	$a1, $fp, 0
	st.b	$a2, $s8, 0
	addi.w	$s2, $s2, 1
.LBB4_28:                               #   in Loop: Header=BB4_12 Depth=1
	addi.w	$t2, $t2, 1
	addi.w	$a4, $a4, 1
	b	.LBB4_33
.LBB4_29:                               #   in Loop: Header=BB4_12 Depth=1
	ori	$a1, $zero, 45
	st.b	$a1, $s8, 0
	addi.w	$s2, $s2, 1
	bstrpick.d	$a1, $s2, 31, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ldx.b	$a1, $a2, $a1
	move	$a4, $zero
	stx.b	$a1, $t1, $a0
	ori	$a1, $zero, 32
	st.b	$a1, $fp, 0
	b	.LBB4_32
.LBB4_30:                               #   in Loop: Header=BB4_12 Depth=1
	ori	$a2, $zero, 46
	stx.b	$a2, $t1, $a0
	ori	$a1, $zero, 32
	st.b	$a1, $fp, 0
	st.b	$a2, $s8, 0
	sub.d	$a1, $s2, $t2
	addi.w	$s2, $a1, -3
	ori	$a4, $zero, 6
	addi.w	$t2, $zero, -3
	b	.LBB4_33
.LBB4_31:                               #   in Loop: Header=BB4_12 Depth=1
	addi.w	$s2, $s2, 1
	bstrpick.d	$a1, $s2, 31, 0
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ldx.b	$a1, $a2, $a1
	move	$a4, $zero
	stx.b	$a1, $t1, $a0
	ori	$a1, $zero, 32
	st.b	$a1, $fp, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.b	$a1, $s8, 0
.LBB4_32:                               #   in Loop: Header=BB4_12 Depth=1
	addi.w	$t2, $t2, 1
	.p2align	4, , 16
.LBB4_33:                               #   in Loop: Header=BB4_12 Depth=1
	move	$a1, $s5
.LBB4_34:                               #   in Loop: Header=BB4_12 Depth=1
	addi.d	$s8, $s8, 1
	addi.d	$fp, $fp, 1
	addi.d	$s7, $a0, 1
	move	$s5, $a1
	ori	$a1, $zero, 48
	blt	$a1, $a0, .LBB4_37
# %bb.35:                               # %.thread
                                        #   in Loop: Header=BB4_12 Depth=1
	bltu	$s2, $t5, .LBB4_43
.LBB4_36:                               # %.thread
                                        #   in Loop: Header=BB4_12 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	bltu	$a7, $a0, .LBB4_43
.LBB4_37:                               #   in Loop: Header=BB4_12 Depth=1
	st.d	$a4, $sp, 128                   # 8-byte Folded Spill
	st.d	$a7, $sp, 136                   # 8-byte Folded Spill
	st.d	$t2, $sp, 144                   # 8-byte Folded Spill
	add.d	$s4, $t1, $s7
	st.b	$zero, $s8, 0
	st.b	$zero, $fp, 0
	stx.b	$zero, $t1, $s7
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ori	$a0, $zero, 50
	mul.w	$a2, $s8, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	move	$fp, $t1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 10
	ori	$a0, $zero, 10
	blt	$s7, $a0, .LBB4_39
	.p2align	4, , 16
.LBB4_38:                               # %.lr.ph254
                                        #   Parent Loop BB4_12 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, 10
	bgeu	$s4, $fp, .LBB4_38
.LBB4_39:                               # %._crit_edge
                                        #   in Loop: Header=BB4_12 Depth=1
	addi.d	$a0, $s4, 5
	bltu	$a0, $fp, .LBB4_41
# %bb.40:                               #   in Loop: Header=BB4_12 Depth=1
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
.LBB4_41:                               #   in Loop: Header=BB4_12 Depth=1
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 68
	addi.d	$s8, $s8, 1
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
	add.w	$a2, $a0, $s1
	pcalau12i	$a0, %pc_hi20(BLINE)
	addi.d	$fp, $a0, %pc_lo12(BLINE)
	st.d	$fp, $sp, 8
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcalau12i	$a1, %pc_hi20(ALINE)
	addi.d	$a3, $a1, %pc_lo12(ALINE)
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a5, $a1, %pc_lo12(.L.str.7)
	pcalau12i	$a1, %pc_hi20(CLINE)
	addi.d	$s8, $a1, %pc_lo12(CLINE)
	st.d	$s0, $sp, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	move	$a4, $a1
	move	$a6, $s8
	move	$a7, $a1
	pcaddu18i	$ra, %call36(printf)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	add.d	$s1, $s2, $s3
	ld.d	$a6, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	add.w	$s0, $a7, $a6
	ld.d	$t5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t2, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	bgeu	$s2, $t5, .LBB4_44
	b	.LBB4_12
.LBB4_42:                               #   in Loop: Header=BB4_12 Depth=1
	move	$s7, $a0
	bgeu	$s2, $t5, .LBB4_36
	.p2align	4, , 16
.LBB4_43:                               #   in Loop: Header=BB4_12 Depth=1
	move	$a0, $s7
	bltu	$s2, $t5, .LBB4_12
.LBB4_44:                               #   in Loop: Header=BB4_12 Depth=1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	bltu	$a7, $a1, .LBB4_12
.LBB4_45:                               # %._crit_edge273
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.LBB4_46:                               # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a0, $a0, %pc_lo12(.L.str.2)
	pcaddu18i	$ra, %call36(fatal)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	IDISPLAY, .Lfunc_end4-IDISPLAY
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI4_0:
	.word	.LBB4_29-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_27-.LJTI4_0
	.word	.LBB4_27-.LJTI4_0
	.word	.LBB4_30-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_22-.LJTI4_0
	.word	.LBB4_31-.LJTI4_0
                                        # -- End function
	.text
	.globl	Free_script                     # -- Begin function Free_script
	.p2align	5
	.type	Free_script,@function
Free_script:                            # @Free_script
# %bb.0:
	beqz	$a0, .LBB5_4
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.p2align	4, , 16
.LBB5_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$fp, $a0, 0
	pcaddu18i	$ra, %call36(free)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	bnez	$fp, .LBB5_2
# %bb.3:
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
.LBB5_4:                                # %._crit_edge
	ret
.Lfunc_end5:
	.size	Free_script, .Lfunc_end5-Free_script
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"align.c: warning: something wrong when aligning."
	.size	.L.str, 49

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"align.c: warning: something wrong when dividing\n"
	.size	.L.str.1, 49

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"align.c: Alignment fragment not found.\n"
	.size	.L.str.2, 40

	.type	ALINE,@object                   # @ALINE
	.local	ALINE
	.comm	ALINE,51,1
	.type	BLINE,@object                   # @BLINE
	.local	BLINE
	.comm	BLINE,51,1
	.type	CLINE,@object                   # @CLINE
	.local	CLINE
	.comm	CLINE,51,1
	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"\n%*u "
	.size	.L.str.3, 6

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"    .    :"
	.size	.L.str.4, 11

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"    ."
	.size	.L.str.5, 6

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"\n%*u %s\n%*s %s\n%*u %s\n"
	.size	.L.str.6, 23

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	" "
	.size	.L.str.7, 2

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"TROUBLE!!! startx:  %5d,  starty:  %5d\n"
	.size	.L.str.8, 40

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"TROUBLE!!! x:  %5d,  y:  %5d\n"
	.size	.L.str.9, 30

	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym ALINE
	.addrsig_sym BLINE
	.addrsig_sym CLINE
