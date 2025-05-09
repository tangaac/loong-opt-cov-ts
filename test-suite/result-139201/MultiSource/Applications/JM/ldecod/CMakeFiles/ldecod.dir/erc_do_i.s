	.file	"erc_do_i.c"
	.text
	.globl	ercConcealIntraFrame            # -- Begin function ercConcealIntraFrame
	.p2align	5
	.type	ercConcealIntraFrame,@function
ercConcealIntraFrame:                   # @ercConcealIntraFrame
# %bb.0:
	beqz	$a3, .LBB0_4
# %bb.1:
	ld.w	$a4, $a3, 64
	beqz	$a4, .LBB0_4
# %bb.2:
	ld.w	$a4, $a3, 60
	beqz	$a4, .LBB0_5
# %bb.3:
	addi.d	$sp, $sp, -48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a5, $a3, 8
	srai.d	$a4, $a2, 3
	srai.d	$a6, $a1, 3
	move	$fp, $a0
	move	$a0, $a6
	move	$s0, $a1
	move	$a1, $a4
	move	$s1, $a2
	move	$a2, $zero
	move	$s3, $a3
	move	$a3, $fp
	move	$a4, $s0
	pcaddu18i	$ra, %call36(concealBlocks)
	jirl	$ra, $ra, 0
	ld.d	$a5, $s3, 16
	srai.d	$s1, $s1, 4
	srai.d	$s2, $s0, 4
	ori	$a2, $zero, 1
	move	$a0, $s2
	move	$a1, $s1
	move	$a3, $fp
	move	$a4, $s0
	pcaddu18i	$ra, %call36(concealBlocks)
	jirl	$ra, $ra, 0
	ld.d	$a5, $s3, 24
	ori	$a2, $zero, 2
	move	$a0, $s2
	move	$a1, $s1
	move	$a3, $fp
	move	$a4, $s0
	pcaddu18i	$ra, %call36(concealBlocks)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 1
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB0_4:
	move	$a0, $zero
	ret
.LBB0_5:
	ori	$a0, $zero, 1
	ret
.Lfunc_end0:
	.size	ercConcealIntraFrame, .Lfunc_end0-ercConcealIntraFrame
                                        # -- End function
	.p2align	5                               # -- Begin function concealBlocks
	.type	concealBlocks,@function
concealBlocks:                          # @concealBlocks
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
	ori	$a6, $zero, 1
	st.d	$a4, $sp, 152                   # 8-byte Folded Spill
	st.d	$a3, $sp, 144                   # 8-byte Folded Spill
	blt	$a0, $a6, .LBB1_117
# %bb.1:                                # %.preheader281.lr.ph
	move	$s0, $a1
	blt	$a1, $a6, .LBB1_117
# %bb.2:                                # %.preheader281.us.preheader
	move	$s1, $a5
	move	$s2, $a2
	move	$a5, $a0
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
	move	$s6, $zero
	sltui	$a0, $a2, 1
	addi.d	$a6, $a0, 1
	sub.w	$a0, $s0, $a6
	st.d	$a0, $sp, 320                   # 8-byte Folded Spill
	addi.d	$a0, $s1, -4
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	addi.d	$a0, $a1, 16
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	srai.d	$a0, $a0, 1
	st.d	$a0, $sp, 240                   # 8-byte Folded Spill
	addi.d	$a0, $a1, 8
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	sub.w	$a0, $a5, $a6
	st.d	$a0, $sp, 312                   # 8-byte Folded Spill
	bstrpick.d	$a0, $a5, 31, 0
	sub.d	$a7, $zero, $a6
	slli.d	$a1, $a6, 2
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	slli.d	$a1, $a0, 2
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	mul.d	$a0, $a6, $a0
	slli.d	$t0, $a0, 2
	slli.d	$a1, $a5, 32
	slli.d	$a2, $a6, 32
	slli.d	$a0, $a0, 32
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	mul.d	$t1, $a6, $a5
	nor	$a0, $a6, $zero
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	ori	$a0, $zero, 4
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ori	$t2, $zero, 1
	ori	$t3, $zero, 2
	xvrepli.b	$xr0, 0
	xvst	$xr0, $sp, 256                  # 32-byte Folded Spill
	ori	$t4, $zero, 3
	st.d	$a6, $sp, 40                    # 8-byte Folded Spill
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	st.d	$a2, $sp, 0                     # 8-byte Folded Spill
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s0, $sp, 160                   # 8-byte Folded Spill
	st.d	$a5, $sp, 192                   # 8-byte Folded Spill
	st.d	$a6, $sp, 296                   # 8-byte Folded Spill
	st.d	$a7, $sp, 80                    # 8-byte Folded Spill
	st.d	$t0, $sp, 224                   # 8-byte Folded Spill
	st.d	$t1, $sp, 128                   # 8-byte Folded Spill
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                # %._crit_edge296.us
                                        #   in Loop: Header=BB1_4 Depth=1
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a0
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 216                   # 8-byte Folded Reload
	add.d	$a2, $a2, $a0
	st.d	$a2, $sp, 216                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a1
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a6
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a6
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	add.d	$a0, $a0, $a6
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	move	$s6, $a1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	bge	$a1, $a0, .LBB1_117
.LBB1_4:                                # %.preheader281.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
                                        #       Child Loop BB1_9 Depth 3
                                        #       Child Loop BB1_51 Depth 3
                                        #       Child Loop BB1_16 Depth 3
                                        #       Child Loop BB1_86 Depth 3
	move	$s5, $zero
	add.d	$a0, $s6, $a5
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	add.d	$a0, $s6, $a6
	st.d	$a0, $sp, 176                   # 8-byte Folded Spill
	alsl.d	$a0, $s6, $s1, 2
	st.d	$a0, $sp, 304                   # 8-byte Folded Spill
	b	.LBB1_7
	.p2align	4, , 16
.LBB1_5:                                #   in Loop: Header=BB1_7 Depth=2
	move	$a2, $s5
.LBB1_6:                                # %.loopexit.us
                                        #   in Loop: Header=BB1_7 Depth=2
	add.w	$s5, $a2, $a6
	bge	$s5, $s0, .LBB1_3
.LBB1_7:                                #   Parent Loop BB1_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_9 Depth 3
                                        #       Child Loop BB1_51 Depth 3
                                        #       Child Loop BB1_16 Depth 3
                                        #       Child Loop BB1_86 Depth 3
	mul.w	$a0, $s5, $a5
	slli.d	$a0, $a0, 2
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	blt	$t2, $a0, .LBB1_5
# %bb.8:                                # %.preheader280.us.preheader
                                        #   in Loop: Header=BB1_7 Depth=2
	move	$s3, $zero
	add.d	$a0, $a6, $s5
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	add.d	$a2, $a1, $a0
	move	$a3, $t1
	move	$a1, $s5
	.p2align	4, , 16
.LBB1_9:                                # %.preheader280.us
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a1, $a1, $a6
	bge	$a1, $s0, .LBB1_47
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=3
	move	$s4, $a3
	ld.w	$a4, $a2, 0
	add.w	$s3, $s3, $a6
	add.d	$a2, $a2, $t0
	add.d	$a3, $a3, $t1
	blt	$a4, $t3, .LBB1_9
# %bb.11:                               # %.thread.us
                                        #   in Loop: Header=BB1_7 Depth=2
	add.d	$a0, $a7, $s5
	add.w	$s8, $a0, $s3
	add.d	$a2, $s5, $s3
	beqz	$s5, .LBB1_82
# %bb.12:                               #   in Loop: Header=BB1_7 Depth=2
	blt	$s3, $t2, .LBB1_6
# %bb.13:                               # %.lr.ph289.us.preheader
                                        #   in Loop: Header=BB1_7 Depth=2
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	move	$s4, $zero
	b	.LBB1_16
	.p2align	4, , 16
.LBB1_14:                               #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	addi.d	$a3, $sp, 328
	ori	$a5, $zero, 2
	move	$a2, $s6
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ercPixConcealIMB)
	jirl	$ra, $ra, 0
	ori	$t4, $zero, 3
	ori	$t3, $zero, 2
	ld.d	$a6, $sp, 296                   # 8-byte Folded Reload
	ori	$a0, $zero, 2
	lu32i.d	$a0, 2
	stx.d	$a0, $s1, $s7
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	add.w	$a1, $s0, $a1
	slli.d	$a1, $a1, 2
	stx.d	$a0, $s1, $a1
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
.LBB1_15:                               #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	sub.d	$a0, $zero, $a0
	and	$a0, $a0, $a6
	sub.w	$s8, $s8, $a0
	maskeqz	$a0, $a6, $fp
	add.w	$s4, $s4, $a6
	add.w	$s5, $a0, $s5
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	ori	$t2, $zero, 1
	bge	$s4, $s3, .LBB1_116
.LBB1_16:                               # %.lr.ph289.us
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	andi	$a3, $s4, 1
	sltui	$fp, $a3, 1
	masknez	$a0, $s8, $fp
	maskeqz	$a1, $s5, $fp
	or	$a1, $a1, $a0
	xvld	$xr0, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 328
	addi.d	$a0, $a1, -1
	mul.w	$a0, $a0, $a5
	ld.d	$a2, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a2, 2
	st.d	$a3, $sp, 248                   # 8-byte Folded Spill
	blt	$a1, $t2, .LBB1_18
# %bb.17:                               #   in Loop: Header=BB1_16 Depth=3
	ld.w	$a2, $a0, 0
	bge	$a2, $t4, .LBB1_19
.LBB1_18:                               #   in Loop: Header=BB1_16 Depth=3
	move	$a4, $zero
	b	.LBB1_20
	.p2align	4, , 16
.LBB1_19:                               #   in Loop: Header=BB1_16 Depth=3
	st.w	$a2, $sp, 344
	ori	$a4, $zero, 1
.LBB1_20:                               #   in Loop: Header=BB1_16 Depth=3
	add.d	$a2, $a1, $a6
	mul.w	$a2, $a2, $a5
	ld.d	$a3, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 2
	ld.d	$a2, $sp, 320                   # 8-byte Folded Reload
	bge	$a1, $a2, .LBB1_23
# %bb.21:                               #   in Loop: Header=BB1_16 Depth=3
	ld.w	$a2, $a3, 0
	blt	$a2, $t4, .LBB1_23
# %bb.22:                               #   in Loop: Header=BB1_16 Depth=3
	st.w	$a2, $sp, 352
	addi.d	$a4, $a4, 1
.LBB1_23:                               #   in Loop: Header=BB1_16 Depth=3
	mul.w	$s0, $a1, $a5
	add.d	$a2, $s6, $s0
	ld.d	$a5, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a5, $a2, $a5, 2
	beqz	$s6, .LBB1_26
# %bb.24:                               #   in Loop: Header=BB1_16 Depth=3
	ld.w	$a6, $a5, 0
	blt	$a6, $t4, .LBB1_26
# %bb.25:                               #   in Loop: Header=BB1_16 Depth=3
	st.w	$a6, $sp, 348
	addi.d	$a4, $a4, 1
.LBB1_26:                               #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	add.w	$a6, $s0, $a6
	alsl.d	$a6, $a6, $s1, 2
	ld.d	$a7, $sp, 312                   # 8-byte Folded Reload
	bge	$s6, $a7, .LBB1_29
# %bb.27:                               #   in Loop: Header=BB1_16 Depth=3
	ld.w	$a7, $a6, 0
	blt	$a7, $t4, .LBB1_29
# %bb.28:                               #   in Loop: Header=BB1_16 Depth=3
	st.w	$a7, $sp, 356
	addi.d	$a4, $a4, 1
.LBB1_29:                               #   in Loop: Header=BB1_16 Depth=3
	bltu	$t2, $a4, .LBB1_42
# %bb.30:                               # %.peel.next.i248.us
                                        #   in Loop: Header=BB1_16 Depth=3
	blt	$a1, $t2, .LBB1_33
# %bb.31:                               #   in Loop: Header=BB1_16 Depth=3
	ld.w	$a0, $a0, 0
	blt	$a0, $t3, .LBB1_33
# %bb.32:                               #   in Loop: Header=BB1_16 Depth=3
	st.w	$a0, $sp, 344
.LBB1_33:                               #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	bge	$a1, $a0, .LBB1_36
# %bb.34:                               #   in Loop: Header=BB1_16 Depth=3
	ld.w	$a0, $a3, 0
	blt	$a0, $t3, .LBB1_36
# %bb.35:                               #   in Loop: Header=BB1_16 Depth=3
	st.w	$a0, $sp, 352
.LBB1_36:                               #   in Loop: Header=BB1_16 Depth=3
	beqz	$s6, .LBB1_39
# %bb.37:                               #   in Loop: Header=BB1_16 Depth=3
	ld.w	$a0, $a5, 0
	blt	$a0, $t3, .LBB1_39
# %bb.38:                               #   in Loop: Header=BB1_16 Depth=3
	st.w	$a0, $sp, 348
.LBB1_39:                               #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	bge	$s6, $a0, .LBB1_42
# %bb.40:                               #   in Loop: Header=BB1_16 Depth=3
	ld.w	$a0, $a6, 0
	blt	$a0, $t3, .LBB1_42
# %bb.41:                               #   in Loop: Header=BB1_16 Depth=3
	st.w	$a0, $sp, 356
	.p2align	4, , 16
.LBB1_42:                               # %ercCollect8PredBlocks.exit264.us
                                        #   in Loop: Header=BB1_16 Depth=3
	slli.d	$s7, $a2, 2
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	beqz	$s2, .LBB1_14
# %bb.43:                               # %ercCollect8PredBlocks.exit264.us
                                        #   in Loop: Header=BB1_16 Depth=3
	bne	$s2, $t2, .LBB1_45
# %bb.44:                               #   in Loop: Header=BB1_16 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	addi.d	$a3, $sp, 328
	ori	$a5, $zero, 1
	move	$a2, $s6
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ercPixConcealIMB)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
	b	.LBB1_46
	.p2align	4, , 16
.LBB1_45:                               # %ercCollect8PredBlocks.exit264.us
                                        #   in Loop: Header=BB1_16 Depth=3
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	addi.d	$a3, $sp, 328
	ori	$a5, $zero, 1
	move	$a2, $s6
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ercPixConcealIMB)
	jirl	$ra, $ra, 0
.LBB1_46:                               #   in Loop: Header=BB1_16 Depth=3
	ori	$t3, $zero, 2
	stx.w	$t3, $s1, $s7
	ld.d	$a6, $sp, 296                   # 8-byte Folded Reload
	ori	$t4, $zero, 3
	b	.LBB1_15
	.p2align	4, , 16
.LBB1_47:                               # %.preheader277.us
                                        #   in Loop: Header=BB1_7 Depth=2
	move	$a2, $s0
	bge	$s5, $s0, .LBB1_6
# %bb.48:                               # %.lr.ph.us.preheader
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	mul.d	$s3, $a1, $s5
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	mul.d	$a0, $a2, $s5
	ld.d	$a3, $sp, 64                    # 8-byte Folded Reload
	add.d	$s8, $a3, $a0
	addi.d	$a0, $s5, -1
	mul.d	$a0, $a2, $a0
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	move	$fp, $s1
	move	$s7, $s5
	b	.LBB1_51
	.p2align	4, , 16
.LBB1_49:                               #   in Loop: Header=BB1_51 Depth=3
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	addi.d	$a3, $sp, 328
	ori	$a5, $zero, 2
	move	$a1, $s5
	move	$a2, $s6
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ercPixConcealIMB)
	jirl	$ra, $ra, 0
	ori	$t4, $zero, 3
	ori	$t3, $zero, 2
	ld.d	$a6, $sp, 296                   # 8-byte Folded Reload
	ori	$a0, $zero, 2
	lu32i.d	$a0, 2
	st.d	$a0, $s4, -4
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	add.d	$a1, $a1, $s3
	srai.d	$a1, $a1, 30
	stx.d	$a0, $s1, $a1
.LBB1_50:                               #   in Loop: Header=BB1_51 Depth=3
	add.d	$s7, $s7, $a6
	add.w	$s5, $s5, $a6
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	add.d	$s3, $s3, $a0
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	add.d	$fp, $fp, $a0
	ori	$t2, $zero, 1
	bge	$s7, $s0, .LBB1_81
.LBB1_51:                               # %.lr.ph.us
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 328
	blt	$s7, $t2, .LBB1_53
# %bb.52:                               #   in Loop: Header=BB1_51 Depth=3
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ldx.w	$a0, $fp, $a0
	bge	$a0, $t4, .LBB1_54
.LBB1_53:                               #   in Loop: Header=BB1_51 Depth=3
	move	$a0, $zero
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	blt	$s7, $a1, .LBB1_55
	b	.LBB1_57
	.p2align	4, , 16
.LBB1_54:                               #   in Loop: Header=BB1_51 Depth=3
	st.w	$a0, $sp, 344
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 320                   # 8-byte Folded Reload
	bge	$s7, $a1, .LBB1_57
.LBB1_55:                               #   in Loop: Header=BB1_51 Depth=3
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	ldx.w	$a1, $fp, $a1
	blt	$a1, $t4, .LBB1_57
# %bb.56:                               #   in Loop: Header=BB1_51 Depth=3
	st.w	$a1, $sp, 352
	addi.d	$a0, $a0, 1
.LBB1_57:                               #   in Loop: Header=BB1_51 Depth=3
	add.d	$s4, $fp, $s8
	beqz	$s6, .LBB1_60
# %bb.58:                               #   in Loop: Header=BB1_51 Depth=3
	ld.w	$a1, $s4, -8
	blt	$a1, $t4, .LBB1_60
# %bb.59:                               #   in Loop: Header=BB1_51 Depth=3
	st.w	$a1, $sp, 348
	addi.d	$a0, $a0, 1
.LBB1_60:                               #   in Loop: Header=BB1_51 Depth=3
	ld.d	$a1, $sp, 216                   # 8-byte Folded Reload
	add.d	$a1, $a1, $s3
	srai.d	$a1, $a1, 30
	ld.d	$a2, $sp, 312                   # 8-byte Folded Reload
	bge	$s6, $a2, .LBB1_63
# %bb.61:                               #   in Loop: Header=BB1_51 Depth=3
	ldx.w	$a2, $s1, $a1
	blt	$a2, $t4, .LBB1_63
# %bb.62:                               #   in Loop: Header=BB1_51 Depth=3
	st.w	$a2, $sp, 356
	addi.d	$a0, $a0, 1
.LBB1_63:                               #   in Loop: Header=BB1_51 Depth=3
	bltu	$t2, $a0, .LBB1_76
# %bb.64:                               # %.peel.next.i.us
                                        #   in Loop: Header=BB1_51 Depth=3
	blt	$s7, $t2, .LBB1_67
# %bb.65:                               #   in Loop: Header=BB1_51 Depth=3
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ldx.w	$a0, $fp, $a0
	blt	$a0, $t3, .LBB1_67
# %bb.66:                               #   in Loop: Header=BB1_51 Depth=3
	st.w	$a0, $sp, 344
.LBB1_67:                               #   in Loop: Header=BB1_51 Depth=3
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	bge	$s7, $a0, .LBB1_70
# %bb.68:                               #   in Loop: Header=BB1_51 Depth=3
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	ldx.w	$a0, $fp, $a0
	blt	$a0, $t3, .LBB1_70
# %bb.69:                               #   in Loop: Header=BB1_51 Depth=3
	st.w	$a0, $sp, 352
.LBB1_70:                               #   in Loop: Header=BB1_51 Depth=3
	beqz	$s6, .LBB1_73
# %bb.71:                               #   in Loop: Header=BB1_51 Depth=3
	ld.w	$a0, $s4, -8
	blt	$a0, $t3, .LBB1_73
# %bb.72:                               #   in Loop: Header=BB1_51 Depth=3
	st.w	$a0, $sp, 348
.LBB1_73:                               #   in Loop: Header=BB1_51 Depth=3
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	bge	$s6, $a0, .LBB1_76
# %bb.74:                               #   in Loop: Header=BB1_51 Depth=3
	ldx.w	$a0, $s1, $a1
	blt	$a0, $t3, .LBB1_76
# %bb.75:                               #   in Loop: Header=BB1_51 Depth=3
	st.w	$a0, $sp, 356
	.p2align	4, , 16
.LBB1_76:                               # %ercCollect8PredBlocks.exit.us
                                        #   in Loop: Header=BB1_51 Depth=3
	beqz	$s2, .LBB1_49
# %bb.77:                               # %ercCollect8PredBlocks.exit.us
                                        #   in Loop: Header=BB1_51 Depth=3
	bne	$s2, $t2, .LBB1_79
# %bb.78:                               #   in Loop: Header=BB1_51 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	b	.LBB1_80
	.p2align	4, , 16
.LBB1_79:                               #   in Loop: Header=BB1_51 Depth=3
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
.LBB1_80:                               #   in Loop: Header=BB1_51 Depth=3
	ld.d	$a0, $a0, 0
	addi.d	$a3, $sp, 328
	ori	$a5, $zero, 1
	move	$a1, $s5
	move	$a2, $s6
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ercPixConcealIMB)
	jirl	$ra, $ra, 0
	ori	$t3, $zero, 2
	st.w	$t3, $s4, -4
	ld.d	$a6, $sp, 296                   # 8-byte Folded Reload
	ori	$t4, $zero, 3
	b	.LBB1_50
.LBB1_81:                               #   in Loop: Header=BB1_7 Depth=2
	move	$a2, $s0
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 128                   # 8-byte Folded Reload
	b	.LBB1_6
.LBB1_82:                               # %.preheader.us
                                        #   in Loop: Header=BB1_7 Depth=2
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	add.d	$a1, $a7, $a1
	bltz	$a1, .LBB1_115
# %bb.83:                               # %.lr.ph293.us.preheader
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a0
	st.d	$a2, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	add.d	$a2, $a2, $a0
	st.d	$a2, $sp, 248                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	add.d	$s7, $a2, $a0
	mul.d	$a0, $a1, $s5
	add.d	$fp, $a2, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	add.d	$a0, $a0, $s5
	mul.d	$s5, $a1, $a0
	b	.LBB1_86
	.p2align	4, , 16
.LBB1_84:                               #   in Loop: Header=BB1_86 Depth=3
	ld.d	$a0, $a0, 0
	addi.d	$a3, $sp, 328
	ori	$a5, $zero, 1
	move	$a1, $s8
	move	$a2, $s6
	ld.d	$a4, $sp, 240                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ercPixConcealIMB)
	jirl	$ra, $ra, 0
	slli.d	$a0, $s3, 2
	ori	$t3, $zero, 2
	stx.w	$t3, $s1, $a0
.LBB1_85:                               #   in Loop: Header=BB1_86 Depth=3
	ld.d	$a6, $sp, 296                   # 8-byte Folded Reload
	sub.w	$s8, $s8, $a6
	addi.w	$a0, $zero, -1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	sub.d	$s4, $s4, $a1
	ori	$t2, $zero, 1
	ori	$t4, $zero, 3
	bge	$a0, $s8, .LBB1_115
.LBB1_86:                               # %.lr.ph293.us
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr0, $sp, 256                  # 32-byte Folded Reload
	xvst	$xr0, $sp, 328
	add.w	$a0, $s5, $s4
	ld.d	$a1, $sp, 304                   # 8-byte Folded Reload
	alsl.d	$a0, $a0, $a1, 2
	beqz	$s8, .LBB1_88
# %bb.87:                               #   in Loop: Header=BB1_86 Depth=3
	ld.w	$a1, $a0, 0
	bge	$a1, $t4, .LBB1_89
.LBB1_88:                               #   in Loop: Header=BB1_86 Depth=3
	move	$a2, $zero
	add.w	$a1, $fp, $s4
	alsl.d	$a1, $a1, $s1, 2
	ld.d	$a3, $sp, 320                   # 8-byte Folded Reload
	blt	$s8, $a3, .LBB1_90
	b	.LBB1_92
	.p2align	4, , 16
.LBB1_89:                               #   in Loop: Header=BB1_86 Depth=3
	st.w	$a1, $sp, 344
	ori	$a2, $zero, 1
	add.w	$a1, $fp, $s4
	alsl.d	$a1, $a1, $s1, 2
	ld.d	$a3, $sp, 320                   # 8-byte Folded Reload
	bge	$s8, $a3, .LBB1_92
.LBB1_90:                               #   in Loop: Header=BB1_86 Depth=3
	ld.w	$a3, $a1, 0
	blt	$a3, $t4, .LBB1_92
# %bb.91:                               #   in Loop: Header=BB1_86 Depth=3
	st.w	$a3, $sp, 352
	addi.d	$a2, $a2, 1
.LBB1_92:                               #   in Loop: Header=BB1_86 Depth=3
	add.w	$s3, $s7, $s4
	ld.d	$a3, $sp, 232                   # 8-byte Folded Reload
	alsl.d	$a3, $s3, $a3, 2
	beqz	$s6, .LBB1_95
# %bb.93:                               #   in Loop: Header=BB1_86 Depth=3
	ld.w	$a4, $a3, 0
	blt	$a4, $t4, .LBB1_95
# %bb.94:                               #   in Loop: Header=BB1_86 Depth=3
	st.w	$a4, $sp, 348
	addi.d	$a2, $a2, 1
.LBB1_95:                               #   in Loop: Header=BB1_86 Depth=3
	ld.d	$a4, $sp, 248                   # 8-byte Folded Reload
	add.w	$a4, $a4, $s4
	alsl.d	$a4, $a4, $s1, 2
	ld.d	$a5, $sp, 312                   # 8-byte Folded Reload
	bge	$s6, $a5, .LBB1_98
# %bb.96:                               #   in Loop: Header=BB1_86 Depth=3
	ld.w	$a5, $a4, 0
	blt	$a5, $t4, .LBB1_98
# %bb.97:                               #   in Loop: Header=BB1_86 Depth=3
	st.w	$a5, $sp, 356
	addi.d	$a2, $a2, 1
.LBB1_98:                               #   in Loop: Header=BB1_86 Depth=3
	bltu	$t2, $a2, .LBB1_111
# %bb.99:                               # %.peel.next.i219.us
                                        #   in Loop: Header=BB1_86 Depth=3
	beqz	$s8, .LBB1_102
# %bb.100:                              #   in Loop: Header=BB1_86 Depth=3
	ld.w	$a0, $a0, 0
	blt	$a0, $t3, .LBB1_102
# %bb.101:                              #   in Loop: Header=BB1_86 Depth=3
	st.w	$a0, $sp, 344
.LBB1_102:                              #   in Loop: Header=BB1_86 Depth=3
	ld.d	$a0, $sp, 320                   # 8-byte Folded Reload
	bge	$s8, $a0, .LBB1_105
# %bb.103:                              #   in Loop: Header=BB1_86 Depth=3
	ld.w	$a0, $a1, 0
	blt	$a0, $t3, .LBB1_105
# %bb.104:                              #   in Loop: Header=BB1_86 Depth=3
	st.w	$a0, $sp, 352
.LBB1_105:                              #   in Loop: Header=BB1_86 Depth=3
	beqz	$s6, .LBB1_108
# %bb.106:                              #   in Loop: Header=BB1_86 Depth=3
	ld.w	$a0, $a3, 0
	blt	$a0, $t3, .LBB1_108
# %bb.107:                              #   in Loop: Header=BB1_86 Depth=3
	st.w	$a0, $sp, 348
.LBB1_108:                              #   in Loop: Header=BB1_86 Depth=3
	ld.d	$a0, $sp, 312                   # 8-byte Folded Reload
	bge	$s6, $a0, .LBB1_111
# %bb.109:                              #   in Loop: Header=BB1_86 Depth=3
	ld.w	$a0, $a4, 0
	blt	$a0, $t3, .LBB1_111
# %bb.110:                              #   in Loop: Header=BB1_86 Depth=3
	st.w	$a0, $sp, 356
	.p2align	4, , 16
.LBB1_111:                              # %ercCollect8PredBlocks.exit235.us
                                        #   in Loop: Header=BB1_86 Depth=3
	beqz	$s2, .LBB1_114
# %bb.112:                              # %ercCollect8PredBlocks.exit235.us
                                        #   in Loop: Header=BB1_86 Depth=3
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	beq	$s2, $t3, .LBB1_84
# %bb.113:                              #   in Loop: Header=BB1_86 Depth=3
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	b	.LBB1_84
	.p2align	4, , 16
.LBB1_114:                              #   in Loop: Header=BB1_86 Depth=3
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	addi.d	$a3, $sp, 328
	ori	$a5, $zero, 2
	move	$a1, $s8
	move	$a2, $s6
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(ercPixConcealIMB)
	jirl	$ra, $ra, 0
	ori	$t3, $zero, 2
	slli.d	$a0, $s3, 2
	ori	$a1, $zero, 2
	lu32i.d	$a1, 2
	stx.d	$a1, $s1, $a0
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	add.w	$a0, $a0, $s4
	slli.d	$a0, $a0, 2
	stx.d	$a1, $s1, $a0
	b	.LBB1_85
.LBB1_115:                              # %._crit_edge.us
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
.LBB1_116:                              # %.loopexit.us
                                        #   in Loop: Header=BB1_7 Depth=2
	ld.d	$a7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$t0, $sp, 224                   # 8-byte Folded Reload
	ld.d	$t1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	b	.LBB1_6
.LBB1_117:                              # %._crit_edge298
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
.Lfunc_end1:
	.size	concealBlocks, .Lfunc_end1-concealBlocks
                                        # -- End function
	.globl	ercPixConcealIMB                # -- Begin function ercPixConcealIMB
	.p2align	5
	.type	ercPixConcealIMB,@function
ercPixConcealIMB:                       # @ercPixConcealIMB
# %bb.0:
	ld.w	$a6, $a3, 16
	slli.w	$t4, $a2, 3
	beqz	$a6, .LBB2_6
# %bb.1:
	sub.d	$a6, $a1, $a5
	mul.d	$a6, $a4, $a6
	slli.w	$a6, $a6, 3
	alsl.d	$a6, $a6, $a0, 1
	alsl.d	$t1, $t4, $a6, 1
	ld.w	$a7, $a3, 20
	mul.d	$a6, $a4, $a1
	beqz	$a7, .LBB2_7
.LBB2_2:
	slli.w	$a7, $a6, 3
	alsl.d	$a7, $a7, $a0, 1
	sub.d	$t0, $a2, $a5
	slli.w	$t0, $t0, 3
	alsl.d	$t8, $t0, $a7, 1
	ld.w	$a7, $a3, 24
	beqz	$a7, .LBB2_8
.LBB2_3:
	add.d	$a1, $a5, $a1
	mul.d	$a1, $a4, $a1
	slli.w	$a1, $a1, 3
	alsl.d	$a1, $a1, $a0, 1
	alsl.d	$t0, $t4, $a1, 1
	ld.w	$a1, $a3, 28
	slli.w	$t5, $a6, 3
	alsl.d	$t7, $t5, $a0, 1
	beqz	$a1, .LBB2_9
.LBB2_4:
	add.d	$a1, $a5, $a2
	slli.w	$a1, $a1, 3
	alsl.d	$t2, $a1, $t7, 1
	ori	$a1, $zero, 1
	bge	$a5, $a1, .LBB2_10
.LBB2_5:                                # %pixMeanInterpolateBlock.exit
	ret
.LBB2_6:
	move	$t1, $zero
	ld.w	$a7, $a3, 20
	mul.d	$a6, $a4, $a1
	bnez	$a7, .LBB2_2
.LBB2_7:
	move	$t8, $zero
	ld.w	$a7, $a3, 24
	bnez	$a7, .LBB2_3
.LBB2_8:
	move	$t0, $zero
	ld.w	$a1, $a3, 28
	slli.w	$t5, $a6, 3
	alsl.d	$t7, $t5, $a0, 1
	bnez	$a1, .LBB2_4
.LBB2_9:
	move	$t2, $zero
	ori	$a1, $zero, 1
	blt	$a5, $a1, .LBB2_5
.LBB2_10:                               # %.preheader.lr.ph.i
	addi.d	$sp, $sp, -80
	st.d	$fp, $sp, 72                    # 8-byte Folded Spill
	st.d	$s0, $sp, 64                    # 8-byte Folded Spill
	st.d	$s1, $sp, 56                    # 8-byte Folded Spill
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s3, $sp, 40                    # 8-byte Folded Spill
	st.d	$s4, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	st.d	$s7, $sp, 8                     # 8-byte Folded Spill
	st.d	$s8, $sp, 0                     # 8-byte Folded Spill
	alsl.d	$a1, $t4, $t7, 1
	slli.d	$a6, $a5, 3
	addi.w	$a2, $a6, -1
	mul.w	$t6, $a2, $a4
	addi.d	$a3, $a5, -1
	sltui	$a3, $a3, 1
	lu12i.w	$a7, 1
	ori	$t3, $a7, 1796
	masknez	$t3, $t3, $a3
	ori	$a7, $a7, 1800
	maskeqz	$a3, $a7, $a3
	or	$a7, $a3, $t3
	alsl.d	$a3, $t6, $t1, 1
	alsl.d	$t3, $a2, $t8, 1
	bstrpick.d	$a2, $a6, 31, 0
	beqz	$t0, .LBB2_24
# %bb.11:                               # %.preheader.us.i.preheader
	beqz	$t8, .LBB2_35
# %bb.12:                               # %.preheader.us.i.preheader238
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	move	$t5, $zero
	slli.d	$a5, $a4, 1
	ori	$t4, $zero, 1
	b	.LBB2_14
	.p2align	4, , 16
.LBB2_13:                               # %._crit_edge.split.us85.i.split
                                        #   in Loop: Header=BB2_14 Depth=1
	add.d	$a1, $a1, $a5
	addi.d	$t4, $t4, 1
	beq	$t5, $a2, .LBB2_120
.LBB2_14:                               # %.preheader.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_17 Depth 2
	mul.d	$t8, $t5, $a4
	alsl.d	$t6, $t8, $t3, 1
	sub.d	$t7, $a6, $t5
	addi.d	$t5, $t5, 1
	alsl.d	$t8, $t8, $t2, 1
	move	$fp, $a3
	move	$s0, $a6
	ori	$s1, $zero, 1
	move	$s2, $t0
	move	$s3, $a1
	move	$s4, $a2
	b	.LBB2_17
	.p2align	4, , 16
.LBB2_15:                               #   in Loop: Header=BB2_17 Depth=2
	div.w	$s5, $s5, $s6
	andi	$s5, $s5, 255
.LBB2_16:                               #   in Loop: Header=BB2_17 Depth=2
	st.h	$s5, $s3, 0
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, 2
	addi.d	$s2, $s2, 2
	addi.d	$s1, $s1, 1
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 2
	beqz	$s4, .LBB2_13
.LBB2_17:                               #   Parent Loop BB2_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$t1, .LBB2_19
# %bb.18:                               #   in Loop: Header=BB2_17 Depth=2
	ld.hu	$s5, $fp, 0
	mul.d	$s5, $t7, $s5
	move	$s6, $t7
	b	.LBB2_20
	.p2align	4, , 16
.LBB2_19:                               #   in Loop: Header=BB2_17 Depth=2
	move	$s5, $zero
	move	$s6, $zero
.LBB2_20:                               #   in Loop: Header=BB2_17 Depth=2
	ld.hu	$s7, $t6, 0
	ld.hu	$s8, $s2, 0
	mul.d	$s7, $s0, $s7
	add.d	$s5, $s7, $s5
	mul.d	$s7, $s8, $t5
	add.w	$s5, $s7, $s5
	add.d	$s6, $t4, $s6
	add.w	$s6, $s6, $s0
	beqz	$t2, .LBB2_22
# %bb.21:                               #   in Loop: Header=BB2_17 Depth=2
	ld.hu	$s7, $t8, 0
	mul.d	$s7, $s1, $s7
	add.w	$s5, $s7, $s5
	add.w	$s6, $s6, $s1
.LBB2_22:                               #   in Loop: Header=BB2_17 Depth=2
	bgtz	$s6, .LBB2_15
# %bb.23:                               #   in Loop: Header=BB2_17 Depth=2
	ld.d	$s5, $a0, 0
	ldx.h	$s5, $s5, $a7
	b	.LBB2_16
.LBB2_24:                               # %.preheader.lr.ph.split.us.split.us.i
	beqz	$t8, .LBB2_45
# %bb.25:                               # %.preheader.us.us.i.preheader
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	beqz	$t2, .LBB2_54
# %bb.26:                               # %.preheader.us.us.i.preheader230
	move	$a5, $zero
	slli.d	$t0, $a4, 1
	b	.LBB2_28
	.p2align	4, , 16
.LBB2_27:                               # %._crit_edge.split.us.us.us.split.i.split
                                        #   in Loop: Header=BB2_28 Depth=1
	addi.d	$a5, $a5, 1
	add.d	$a1, $a1, $t0
	beq	$a5, $a2, .LBB2_120
.LBB2_28:                               # %.preheader.us.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_31 Depth 2
	mul.d	$t5, $a5, $a4
	alsl.d	$t4, $t5, $t3, 1
	alsl.d	$t5, $t5, $t2, 1
	sub.d	$t6, $a6, $a5
	ori	$t7, $zero, 1
	move	$t8, $a3
	move	$fp, $a6
	move	$s0, $a1
	move	$s1, $a2
	b	.LBB2_31
	.p2align	4, , 16
.LBB2_29:                               #   in Loop: Header=BB2_31 Depth=2
	ld.hu	$s4, $t5, 0
	ld.hu	$s5, $t4, 0
	mul.d	$s4, $t7, $s4
	mul.d	$s5, $fp, $s5
	add.d	$s2, $s5, $s2
	add.w	$s2, $s4, $s2
	div.w	$s2, $s2, $s3
	andi	$s2, $s2, 255
.LBB2_30:                               #   in Loop: Header=BB2_31 Depth=2
	st.h	$s2, $s0, 0
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 2
	addi.d	$t7, $t7, 1
	addi.d	$fp, $fp, -1
	addi.d	$t8, $t8, 2
	beqz	$s1, .LBB2_27
.LBB2_31:                               #   Parent Loop BB2_28 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$t1, .LBB2_33
# %bb.32:                               #   in Loop: Header=BB2_31 Depth=2
	ld.hu	$s2, $t8, 0
	mul.d	$s2, $t6, $s2
	move	$s3, $t6
	add.d	$s3, $s3, $fp
	add.w	$s3, $s3, $t7
	bgtz	$s3, .LBB2_29
	b	.LBB2_34
	.p2align	4, , 16
.LBB2_33:                               #   in Loop: Header=BB2_31 Depth=2
	move	$s2, $zero
	move	$s3, $zero
	add.d	$s3, $s3, $fp
	add.w	$s3, $s3, $t7
	bgtz	$s3, .LBB2_29
.LBB2_34:                               #   in Loop: Header=BB2_31 Depth=2
	ld.d	$s2, $a0, 0
	ldx.h	$s2, $s2, $a7
	b	.LBB2_30
.LBB2_35:                               # %.preheader.us.i.preheader.split.us
	beqz	$t2, .LBB2_62
# %bb.36:                               # %.preheader.us.i.us.preheader
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	move	$t4, $zero
	slli.d	$a5, $a4, 1
	ori	$t3, $zero, 2
	b	.LBB2_38
	.p2align	4, , 16
.LBB2_37:                               # %._crit_edge.split.us85.i.split.us.us.split
                                        #   in Loop: Header=BB2_38 Depth=1
	add.d	$a1, $a1, $a5
	addi.d	$t3, $t3, 1
	beq	$t4, $a2, .LBB2_120
.LBB2_38:                               # %.preheader.us.i.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_41 Depth 2
	mul.d	$t6, $t4, $a4
	sub.d	$t5, $a6, $t4
	addi.d	$t4, $t4, 1
	alsl.d	$t6, $t6, $t2, 1
	ori	$t7, $zero, 1
	move	$t8, $a3
	move	$fp, $t0
	move	$s0, $a1
	move	$s1, $a2
	b	.LBB2_41
	.p2align	4, , 16
.LBB2_39:                               #   in Loop: Header=BB2_41 Depth=2
	ld.hu	$s4, $t6, 0
	ld.hu	$s5, $fp, 0
	mul.d	$s4, $t7, $s4
	mul.d	$s5, $s5, $t4
	add.d	$s2, $s5, $s2
	add.w	$s2, $s4, $s2
	div.w	$s2, $s2, $s3
	andi	$s2, $s2, 255
.LBB2_40:                               #   in Loop: Header=BB2_41 Depth=2
	st.h	$s2, $s0, 0
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 2
	addi.d	$t7, $t7, 1
	addi.d	$fp, $fp, 2
	addi.d	$t8, $t8, 2
	beqz	$s1, .LBB2_37
.LBB2_41:                               #   Parent Loop BB2_38 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	beqz	$t1, .LBB2_43
# %bb.42:                               #   in Loop: Header=BB2_41 Depth=2
	ld.hu	$s2, $t8, 0
	mul.d	$s2, $t5, $s2
	move	$s3, $t5
	add.d	$s3, $t3, $s3
	add.d	$s3, $s3, $t7
	addi.w	$s3, $s3, -1
	bgtz	$s3, .LBB2_39
	b	.LBB2_44
	.p2align	4, , 16
.LBB2_43:                               #   in Loop: Header=BB2_41 Depth=2
	move	$s2, $zero
	move	$s3, $zero
	add.d	$s3, $t3, $s3
	add.d	$s3, $s3, $t7
	addi.w	$s3, $s3, -1
	bgtz	$s3, .LBB2_39
.LBB2_44:                               #   in Loop: Header=BB2_41 Depth=2
	ld.d	$s2, $a0, 0
	ldx.h	$s2, $s2, $a7
	b	.LBB2_40
.LBB2_45:                               # %.preheader.lr.ph.split.us.split.us.split.us.i
	beqz	$t2, .LBB2_74
# %bb.46:                               # %.preheader.us.us.us.i.preheader
	beqz	$t1, .LBB2_90
# %bb.47:                               # %.preheader.us.us.us.i.preheader226
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	move	$a5, $zero
	slli.d	$t0, $a4, 1
	move	$t1, $a6
	b	.LBB2_49
	.p2align	4, , 16
.LBB2_48:                               # %._crit_edge.split.us.us.us.split.us.us.split.i.split
                                        #   in Loop: Header=BB2_49 Depth=1
	addi.d	$a5, $a5, 1
	add.d	$a1, $a1, $t0
	addi.d	$t1, $t1, -1
	beq	$a5, $a2, .LBB2_120
.LBB2_49:                               # %.preheader.us.us.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_52 Depth 2
	mul.d	$t3, $a5, $a4
	alsl.d	$t3, $t3, $t2, 1
	sub.d	$t4, $a6, $a5
	ori	$t5, $zero, 1
	move	$t6, $a3
	move	$t7, $a2
	move	$t8, $a1
	b	.LBB2_52
	.p2align	4, , 16
.LBB2_50:                               #   in Loop: Header=BB2_52 Depth=2
	ld.hu	$s0, $t6, 0
	ld.hu	$s1, $t3, 0
	mul.d	$s0, $t4, $s0
	mul.d	$s1, $s1, $t5
	add.w	$s0, $s1, $s0
	div.w	$fp, $s0, $fp
	andi	$fp, $fp, 255
.LBB2_51:                               #   in Loop: Header=BB2_52 Depth=2
	st.h	$fp, $t8, 0
	addi.d	$t8, $t8, 2
	addi.d	$t7, $t7, -1
	addi.d	$t5, $t5, 1
	addi.d	$t6, $t6, 2
	beqz	$t7, .LBB2_48
.LBB2_52:                               #   Parent Loop BB2_49 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.w	$fp, $t1, $t5
	bgtz	$fp, .LBB2_50
# %bb.53:                               #   in Loop: Header=BB2_52 Depth=2
	ld.d	$fp, $a0, 0
	ldx.h	$fp, $fp, $a7
	b	.LBB2_51
.LBB2_54:                               # %.preheader.us.us.i.preheader.split.us
	beqz	$t1, .LBB2_94
# %bb.55:                               # %.preheader.us.us.i.us.preheader
	move	$t0, $zero
	slli.d	$t1, $a4, 1
	slli.w	$a5, $a5, 4
	b	.LBB2_57
	.p2align	4, , 16
.LBB2_56:                               # %._crit_edge.split.us.us.us.split.i.split.us.split.us95
                                        #   in Loop: Header=BB2_57 Depth=1
	addi.d	$t0, $t0, 1
	add.d	$a1, $a1, $t1
	addi.w	$a5, $a5, -1
	beq	$t0, $a2, .LBB2_120
.LBB2_57:                               # %.preheader.us.us.i.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_60 Depth 2
	mul.d	$t2, $t0, $a4
	alsl.d	$t2, $t2, $t3, 1
	sub.d	$t4, $a6, $t0
	move	$t5, $a3
	move	$t6, $a6
	move	$t7, $a5
	move	$t8, $a1
	move	$fp, $a2
	b	.LBB2_60
	.p2align	4, , 16
.LBB2_58:                               #   in Loop: Header=BB2_60 Depth=2
	ld.hu	$s0, $t2, 0
	ld.hu	$s1, $t5, 0
	mul.d	$s0, $t6, $s0
	mul.d	$s1, $t4, $s1
	add.w	$s0, $s0, $s1
	div.w	$s0, $s0, $t7
	andi	$s0, $s0, 255
.LBB2_59:                               #   in Loop: Header=BB2_60 Depth=2
	st.h	$s0, $t8, 0
	addi.d	$fp, $fp, -1
	addi.d	$t8, $t8, 2
	addi.w	$t7, $t7, -1
	addi.d	$t6, $t6, -1
	addi.d	$t5, $t5, 2
	beqz	$fp, .LBB2_56
.LBB2_60:                               #   Parent Loop BB2_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	bgtz	$t7, .LBB2_58
# %bb.61:                               #   in Loop: Header=BB2_60 Depth=2
	ld.d	$s0, $a0, 0
	ldx.h	$s0, $s0, $a7
	b	.LBB2_59
.LBB2_62:                               # %.preheader.us.i.preheader.split.us.split.us
	beqz	$t1, .LBB2_101
# %bb.63:                               # %.preheader.us.i.us.us.preheader
	move	$a0, $zero
	ori	$t5, $a6, 1
	alsl.d	$t2, $t4, $t7, 1
	alsl.d	$a5, $t6, $t1, 1
	sub.d	$a5, $t2, $a5
	slli.d	$a4, $a4, 1
	sub.d	$t1, $t2, $t0
	vreplgr2vr.w	$vr0, $t5
	addi.w	$t2, $a6, 0
	addi.w	$t3, $zero, -1
	addi.w	$t4, $t5, 0
	pcalau12i	$t5, %got_pc_hi20(img)
	ld.d	$t5, $t5, %got_pc_lo12(img)
	ori	$t6, $zero, 8
	vrepli.b	$vr1, 0
	vrepli.h	$vr2, 255
	b	.LBB2_65
	.p2align	4, , 16
.LBB2_64:                               # %._crit_edge.split.us85.i.split.us.us.split.us.split.us87
                                        #   in Loop: Header=BB2_65 Depth=1
	add.d	$a1, $a1, $a4
	beq	$a0, $a2, .LBB2_120
.LBB2_65:                               # %.preheader.us.i.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_71 Depth 2
                                        #     Child Loop BB2_70 Depth 2
                                        #     Child Loop BB2_73 Depth 2
	move	$fp, $a0
	addi.d	$a0, $a0, 1
	move	$t7, $a1
	move	$t8, $a2
	bge	$t3, $t2, .LBB2_71
# %bb.66:                               # %.preheader.us.i.split.us.us.split.us.split.split.us.us.preheader
                                        #   in Loop: Header=BB2_65 Depth=1
	sub.d	$t7, $a6, $fp
	beqz	$t2, .LBB2_72
# %bb.67:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_65 Depth=1
	mul.d	$t8, $a4, $fp
	add.d	$fp, $a5, $t8
	bltu	$fp, $t6, .LBB2_72
# %bb.68:                               # %vector.memcheck
                                        #   in Loop: Header=BB2_65 Depth=1
	add.d	$t8, $t1, $t8
	bltu	$t8, $t6, .LBB2_72
# %bb.69:                               # %vector.ph
                                        #   in Loop: Header=BB2_65 Depth=1
	move	$t8, $zero
	vreplgr2vr.w	$vr3, $t7
	vreplgr2vr.w	$vr4, $a0
	move	$t7, $a2
	.p2align	4, , 16
.LBB2_70:                               # %vector.body
                                        #   Parent Loop BB2_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$fp, $a3, $t8
	ldx.d	$s0, $t0, $t8
	vinsgr2vr.d	$vr5, $fp, 0
	vilvl.h	$vr5, $vr1, $vr5
	vinsgr2vr.d	$vr6, $s0, 0
	vilvl.h	$vr6, $vr1, $vr6
	vmul.w	$vr6, $vr4, $vr6
	vmadd.w	$vr6, $vr3, $vr5
	vdiv.w	$vr5, $vr6, $vr0
	vpickev.h	$vr5, $vr5, $vr5
	vand.v	$vr5, $vr5, $vr2
	add.d	$fp, $a1, $t8
	vstelm.d	$vr5, $fp, 0, 0
	addi.d	$t7, $t7, -4
	addi.d	$t8, $t8, 8
	bnez	$t7, .LBB2_70
	b	.LBB2_64
	.p2align	4, , 16
.LBB2_71:                               # %.preheader.us.i.split.us.us.split.us.split.split.us86
                                        #   Parent Loop BB2_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$fp, $t5, 0
	ldx.h	$fp, $fp, $a7
	st.h	$fp, $t7, 0
	addi.d	$t8, $t8, -1
	addi.d	$t7, $t7, 2
	bnez	$t8, .LBB2_71
	b	.LBB2_64
	.p2align	4, , 16
.LBB2_72:                               # %.preheader.us.i.split.us.us.split.us.split.split.us.us.preheader216
                                        #   in Loop: Header=BB2_65 Depth=1
	move	$t8, $zero
	move	$fp, $a2
	.p2align	4, , 16
.LBB2_73:                               # %.preheader.us.i.split.us.us.split.us.split.split.us.us
                                        #   Parent Loop BB2_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.hu	$s0, $a3, $t8
	ldx.hu	$s1, $t0, $t8
	mul.d	$s0, $t7, $s0
	mul.d	$s1, $s1, $a0
	add.w	$s0, $s1, $s0
	div.w	$s0, $s0, $t4
	andi	$s0, $s0, 255
	stx.h	$s0, $a1, $t8
	addi.d	$fp, $fp, -1
	addi.d	$t8, $t8, 2
	bnez	$fp, .LBB2_73
	b	.LBB2_64
.LBB2_74:                               # %.preheader.lr.ph.split.us.split.us.split.us.split.us.i
	beqz	$t1, .LBB2_116
# %bb.75:                               # %.lr.ph.split.us.us.us.split.us.us.split.us.split.split.us.us.preheader.i.preheader
	move	$a5, $zero
	move	$a7, $zero
	add.d	$t0, $t5, $t4
	alsl.d	$t2, $t0, $a0, 1
	alsl.d	$t0, $t6, $t1, 1
	sub.d	$t1, $t2, $t0
	slli.d	$a4, $a4, 1
	bstrpick.d	$t2, $a2, 31, 5
	slli.d	$t2, $t2, 5
	andi	$t3, $a2, 24
	addi.d	$t6, $t0, 32
	slli.d	$t5, $t5, 1
	alsl.d	$t4, $t4, $t5, 1
	add.d	$a0, $t4, $a0
	addi.d	$a0, $a0, 32
	addi.w	$a6, $a6, 0
	ori	$t4, $zero, 64
	ori	$t5, $zero, 32
	vrepli.h	$vr0, 255
	xvrepli.h	$xr1, 255
	b	.LBB2_77
	.p2align	4, , 16
.LBB2_76:                               # %._crit_edge.split.us.us.us.split.us.us.split.us.split.us93.i
                                        #   in Loop: Header=BB2_77 Depth=1
	addi.w	$a7, $a7, 1
	addi.d	$a5, $a5, 1
	add.d	$a0, $a0, $a4
	add.d	$a1, $a1, $a4
	beq	$a7, $a6, .LBB2_120
.LBB2_77:                               # %iter.check177
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_85 Depth 2
                                        #     Child Loop BB2_89 Depth 2
                                        #     Child Loop BB2_81 Depth 2
	beqz	$a6, .LBB2_79
# %bb.78:                               # %vector.memcheck172
                                        #   in Loop: Header=BB2_77 Depth=1
	mul.d	$t7, $a4, $a5
	add.d	$t7, $t1, $t7
	bgeu	$t7, $t4, .LBB2_82
.LBB2_79:                               #   in Loop: Header=BB2_77 Depth=1
	move	$t8, $zero
.LBB2_80:                               # %.lr.ph.split.us.us.us.split.us.us.split.us.split.split.us.us.i.preheader
                                        #   in Loop: Header=BB2_77 Depth=1
	sub.d	$t7, $a2, $t8
	slli.d	$t8, $t8, 1
	.p2align	4, , 16
.LBB2_81:                               # %.lr.ph.split.us.us.us.split.us.us.split.us.split.split.us.us.i
                                        #   Parent Loop BB2_77 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$fp, $a3, $t8
	stx.h	$fp, $a1, $t8
	addi.d	$t7, $t7, -1
	addi.d	$t8, $t8, 2
	bnez	$t7, .LBB2_81
	b	.LBB2_76
	.p2align	4, , 16
.LBB2_82:                               # %vector.main.loop.iter.check179
                                        #   in Loop: Header=BB2_77 Depth=1
	bgeu	$a6, $t5, .LBB2_84
# %bb.83:                               #   in Loop: Header=BB2_77 Depth=1
	move	$fp, $zero
	b	.LBB2_88
.LBB2_84:                               # %vector.body183.preheader
                                        #   in Loop: Header=BB2_77 Depth=1
	move	$t7, $a0
	move	$t8, $t6
	move	$fp, $t2
	.p2align	4, , 16
.LBB2_85:                               # %vector.body183
                                        #   Parent Loop BB2_77 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr2, $t8, -32
	xvld	$xr3, $t8, 0
	xvand.v	$xr2, $xr2, $xr1
	xvand.v	$xr3, $xr3, $xr1
	xvst	$xr2, $t7, -32
	xvst	$xr3, $t7, 0
	addi.d	$fp, $fp, -32
	addi.d	$t8, $t8, 64
	addi.d	$t7, $t7, 64
	bnez	$fp, .LBB2_85
# %bb.86:                               # %middle.block188
                                        #   in Loop: Header=BB2_77 Depth=1
	beq	$t2, $a2, .LBB2_76
# %bb.87:                               # %vec.epilog.iter.check193
                                        #   in Loop: Header=BB2_77 Depth=1
	move	$t8, $t2
	move	$fp, $t2
	beqz	$t3, .LBB2_80
.LBB2_88:                               # %vec.epilog.vector.body198.preheader
                                        #   in Loop: Header=BB2_77 Depth=1
	sub.d	$t7, $a2, $fp
	alsl.d	$t8, $fp, $a1, 1
	alsl.d	$fp, $fp, $t0, 1
	.p2align	4, , 16
.LBB2_89:                               # %vec.epilog.vector.body198
                                        #   Parent Loop BB2_77 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $fp, 0
	vand.v	$vr2, $vr2, $vr0
	vst	$vr2, $t8, 0
	addi.d	$t7, $t7, -8
	addi.d	$t8, $t8, 16
	addi.d	$fp, $fp, 16
	bnez	$t7, .LBB2_89
	b	.LBB2_76
.LBB2_90:                               # %.preheader.us.us.us.i.us.preheader
	move	$a0, $zero
	slli.d	$a3, $a4, 1
	.p2align	4, , 16
.LBB2_91:                               # %.preheader.us.us.us.i.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_92 Depth 2
	mul.d	$a5, $a0, $a4
	alsl.d	$a5, $a5, $t2, 1
	move	$a6, $a2
	move	$a7, $a1
	.p2align	4, , 16
.LBB2_92:                               #   Parent Loop BB2_91 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.bu	$t0, $a5, 0
	st.h	$t0, $a7, 0
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 2
	bnez	$a6, .LBB2_92
# %bb.93:                               # %._crit_edge.split.us.us.us.split.us.us.split.i.split.us.us
                                        #   in Loop: Header=BB2_91 Depth=1
	addi.d	$a0, $a0, 1
	add.d	$a1, $a1, $a3
	bne	$a0, $a2, .LBB2_91
	b	.LBB2_120
.LBB2_94:                               # %.preheader.us.us.i.us.us.preheader
	move	$a3, $zero
	slli.d	$a5, $a4, 1
	b	.LBB2_96
	.p2align	4, , 16
.LBB2_95:                               # %._crit_edge.split.us.us.us.split.i.split.us.split.us.us.us
                                        #   in Loop: Header=BB2_96 Depth=1
	addi.d	$a3, $a3, 1
	add.d	$a1, $a1, $a5
	beq	$a3, $a2, .LBB2_120
.LBB2_96:                               # %.preheader.us.us.i.us.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_99 Depth 2
	mul.d	$t0, $a3, $a4
	alsl.d	$t0, $t0, $t3, 1
	move	$t1, $a6
	move	$t2, $a1
	move	$t4, $a2
	b	.LBB2_99
	.p2align	4, , 16
.LBB2_97:                               #   in Loop: Header=BB2_99 Depth=2
	ld.bu	$t5, $t0, 0
.LBB2_98:                               #   in Loop: Header=BB2_99 Depth=2
	st.h	$t5, $t2, 0
	addi.d	$t4, $t4, -1
	addi.d	$t2, $t2, 2
	addi.d	$t1, $t1, -1
	beqz	$t4, .LBB2_95
.LBB2_99:                               #   Parent Loop BB2_96 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addi.w	$t5, $t1, 0
	bgtz	$t5, .LBB2_97
# %bb.100:                              #   in Loop: Header=BB2_99 Depth=2
	ld.d	$t5, $a0, 0
	ldx.h	$t5, $t5, $a7
	b	.LBB2_98
.LBB2_101:                              # %.preheader.us.i.split.us.us.split.us.split.us.split.us.us.us.preheader.preheader
	move	$a3, $zero
	add.d	$a5, $t5, $t4
	alsl.d	$a5, $a5, $a0, 1
	sub.d	$a5, $a5, $t0
	slli.d	$a4, $a4, 1
	bstrpick.d	$a7, $a2, 31, 5
	slli.d	$a7, $a7, 5
	andi	$t1, $a2, 24
	slli.d	$t2, $t5, 1
	alsl.d	$t2, $t4, $t2, 1
	add.d	$a0, $t2, $a0
	addi.d	$a0, $a0, 32
	addi.d	$t2, $t0, 32
	addi.w	$a6, $a6, 0
	ori	$t3, $zero, 64
	ori	$t4, $zero, 32
	vrepli.h	$vr0, 255
	xvrepli.h	$xr1, 255
	b	.LBB2_103
	.p2align	4, , 16
.LBB2_102:                              # %._crit_edge.split.us85.i.split.us.us.split.us.split.us.us.us
                                        #   in Loop: Header=BB2_103 Depth=1
	addi.d	$a3, $a3, 1
	add.d	$a0, $a0, $a4
	add.d	$a1, $a1, $a4
	beq	$a3, $a2, .LBB2_120
.LBB2_103:                              # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_111 Depth 2
                                        #     Child Loop BB2_115 Depth 2
                                        #     Child Loop BB2_107 Depth 2
	beqz	$a6, .LBB2_105
# %bb.104:                              # %vector.memcheck149
                                        #   in Loop: Header=BB2_103 Depth=1
	mul.d	$t5, $a4, $a3
	add.d	$t5, $a5, $t5
	bgeu	$t5, $t3, .LBB2_108
.LBB2_105:                              #   in Loop: Header=BB2_103 Depth=1
	move	$t6, $zero
.LBB2_106:                              # %.preheader.us.i.split.us.us.split.us.split.us.split.us.us.us.preheader
                                        #   in Loop: Header=BB2_103 Depth=1
	sub.d	$t5, $a2, $t6
	slli.d	$t6, $t6, 1
	.p2align	4, , 16
.LBB2_107:                              # %.preheader.us.i.split.us.us.split.us.split.us.split.us.us.us
                                        #   Parent Loop BB2_103 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.bu	$t7, $t0, $t6
	stx.h	$t7, $a1, $t6
	addi.d	$t5, $t5, -1
	addi.d	$t6, $t6, 2
	bnez	$t5, .LBB2_107
	b	.LBB2_102
	.p2align	4, , 16
.LBB2_108:                              # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB2_103 Depth=1
	bgeu	$a6, $t4, .LBB2_110
# %bb.109:                              #   in Loop: Header=BB2_103 Depth=1
	move	$t7, $zero
	b	.LBB2_114
.LBB2_110:                              # %vector.body158.preheader
                                        #   in Loop: Header=BB2_103 Depth=1
	move	$t5, $t2
	move	$t6, $a0
	move	$t7, $a7
	.p2align	4, , 16
.LBB2_111:                              # %vector.body158
                                        #   Parent Loop BB2_103 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr2, $t5, -32
	xvld	$xr3, $t5, 0
	xvand.v	$xr2, $xr2, $xr1
	xvand.v	$xr3, $xr3, $xr1
	xvst	$xr2, $t6, -32
	xvst	$xr3, $t6, 0
	addi.d	$t7, $t7, -32
	addi.d	$t6, $t6, 64
	addi.d	$t5, $t5, 64
	bnez	$t7, .LBB2_111
# %bb.112:                              # %middle.block163
                                        #   in Loop: Header=BB2_103 Depth=1
	beq	$a7, $a2, .LBB2_102
# %bb.113:                              # %vec.epilog.iter.check
                                        #   in Loop: Header=BB2_103 Depth=1
	move	$t6, $a7
	move	$t7, $a7
	beqz	$t1, .LBB2_106
.LBB2_114:                              # %vec.epilog.vector.body.preheader
                                        #   in Loop: Header=BB2_103 Depth=1
	sub.d	$t5, $a2, $t7
	alsl.d	$t6, $t7, $a1, 1
	alsl.d	$t7, $t7, $t0, 1
	.p2align	4, , 16
.LBB2_115:                              # %vec.epilog.vector.body
                                        #   Parent Loop BB2_103 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $t7, 0
	vand.v	$vr2, $vr2, $vr0
	vst	$vr2, $t6, 0
	addi.d	$t5, $t5, -8
	addi.d	$t6, $t6, 16
	addi.d	$t7, $t7, 16
	bnez	$t5, .LBB2_115
	b	.LBB2_102
.LBB2_116:                              # %.preheader.us.us.us.us.us.i.preheader
	pcalau12i	$a0, %got_pc_hi20(img)
	ld.d	$a0, $a0, %got_pc_lo12(img)
	move	$a3, $zero
	slli.d	$a4, $a4, 1
	addi.w	$a5, $a6, 0
	.p2align	4, , 16
.LBB2_117:                              # %.preheader.us.us.us.us.us.i
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_118 Depth 2
	move	$a6, $a1
	move	$t0, $a2
	.p2align	4, , 16
.LBB2_118:                              #   Parent Loop BB2_117 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$t1, $a0, 0
	ldx.h	$t1, $t1, $a7
	st.h	$t1, $a6, 0
	addi.d	$t0, $t0, -1
	addi.d	$a6, $a6, 2
	bnez	$t0, .LBB2_118
# %bb.119:                              # %._crit_edge.split.us.us.us.split.us.us.split.us.split.us.us.us.i
                                        #   in Loop: Header=BB2_117 Depth=1
	addi.w	$a3, $a3, 1
	add.d	$a1, $a1, $a4
	bne	$a3, $a5, .LBB2_117
.LBB2_120:
	ld.d	$s8, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s7, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end2:
	.size	ercPixConcealIMB, .Lfunc_end2-ercPixConcealIMB
                                        # -- End function
	.globl	ercCollect8PredBlocks           # -- Begin function ercCollect8PredBlocks
	.p2align	5
	.type	ercCollect8PredBlocks,@function
ercCollect8PredBlocks:                  # @ercCollect8PredBlocks
# %bb.0:                                # %.peel.begin
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	xvrepli.b	$xr0, 0
	xvst	$xr0, $a0, 0
	sub.w	$t0, $a4, $a6
	add.d	$t4, $a2, $a6
	addi.d	$a4, $a1, -1
	mul.d	$t6, $a5, $a4
	add.w	$t2, $t6, $a2
	alsl.d	$t1, $t2, $a3, 2
	add.d	$a4, $a6, $a1
	mul.d	$t8, $a4, $a5
	add.w	$s0, $t8, $a2
	mul.d	$t3, $a5, $a1
	ori	$a4, $zero, 1
	add.w	$t5, $t3, $a2
	blt	$a1, $a4, .LBB3_2
# %bb.1:
	ld.w	$a4, $t1, 0
	ori	$t7, $zero, 3
	bge	$a4, $t7, .LBB3_3
.LBB3_2:
	move	$a4, $zero
	b	.LBB3_4
.LBB3_3:
	st.w	$a4, $a0, 16
	ori	$a4, $zero, 1
.LBB3_4:
	sltui	$fp, $a7, 1
	ori	$s2, $zero, 2
	ori	$s3, $zero, 4
	add.w	$t3, $t3, $t4
	add.w	$t7, $t6, $t4
	add.w	$t8, $t4, $t8
	addi.d	$s1, $a3, -4
	sub.w	$a5, $a5, $a6
	alsl.d	$t4, $s0, $a3, 2
	bge	$a1, $t0, .LBB3_7
# %bb.5:
	ld.w	$a6, $t4, 0
	ori	$t6, $zero, 3
	blt	$a6, $t6, .LBB3_7
# %bb.6:
	st.w	$a6, $a0, 24
	addi.d	$a4, $a4, 1
.LBB3_7:
	masknez	$t6, $s2, $fp
	maskeqz	$fp, $s3, $fp
	alsl.d	$t5, $t5, $s1, 2
	alsl.d	$t2, $t2, $s1, 2
	ori	$s2, $zero, 1
	alsl.d	$a6, $s0, $s1, 2
	blt	$a2, $s2, .LBB3_17
# %bb.8:
	ld.w	$s0, $t5, 0
	ori	$s1, $zero, 3
	blt	$s0, $s1, .LBB3_10
# %bb.9:
	st.w	$s0, $a0, 20
	addi.d	$a4, $a4, 1
.LBB3_10:
	bnez	$a7, .LBB3_17
# %bb.11:
	ori	$s0, $zero, 1
	blt	$a1, $s0, .LBB3_14
# %bb.12:
	ld.w	$s0, $t2, 0
	ori	$s1, $zero, 3
	blt	$s0, $s1, .LBB3_14
# %bb.13:
	st.w	$s0, $a0, 4
	addi.d	$a4, $a4, 1
.LBB3_14:
	bge	$a1, $t0, .LBB3_17
# %bb.15:
	ld.w	$s0, $a6, 0
	ori	$s1, $zero, 3
	blt	$s0, $s1, .LBB3_17
# %bb.16:
	st.w	$s0, $a0, 8
	addi.d	$a4, $a4, 1
.LBB3_17:
	or	$fp, $fp, $t6
	alsl.d	$t6, $t3, $a3, 2
	alsl.d	$t3, $t7, $a3, 2
	alsl.d	$a3, $t8, $a3, 2
	bge	$a2, $a5, .LBB3_27
# %bb.18:
	ld.w	$t7, $t6, 0
	ori	$t8, $zero, 3
	blt	$t7, $t8, .LBB3_20
# %bb.19:
	st.w	$t7, $a0, 28
	addi.d	$a4, $a4, 1
.LBB3_20:
	bnez	$a7, .LBB3_27
# %bb.21:
	ori	$t7, $zero, 1
	blt	$a1, $t7, .LBB3_24
# %bb.22:
	ld.w	$t7, $t3, 0
	ori	$t8, $zero, 3
	blt	$t7, $t8, .LBB3_24
# %bb.23:
	st.w	$t7, $a0, 0
	addi.d	$a4, $a4, 1
.LBB3_24:
	bge	$a1, $t0, .LBB3_27
# %bb.25:
	ld.w	$t7, $a3, 0
	ori	$t8, $zero, 3
	blt	$t7, $t8, .LBB3_27
# %bb.26:
	st.w	$t7, $a0, 12
	addi.d	$a4, $a4, 1
.LBB3_27:
	bgeu	$a4, $fp, .LBB3_54
# %bb.28:                               # %.peel.next
	ori	$a4, $zero, 1
	blt	$a1, $a4, .LBB3_30
# %bb.29:
	ld.w	$a4, $t1, 0
	ori	$t1, $zero, 2
	bge	$a4, $t1, .LBB3_31
.LBB3_30:
	move	$a4, $zero
	blt	$a1, $t0, .LBB3_32
	b	.LBB3_34
.LBB3_31:
	st.w	$a4, $a0, 16
	ori	$a4, $zero, 1
	bge	$a1, $t0, .LBB3_34
.LBB3_32:
	ld.w	$t1, $t4, 0
	ori	$t4, $zero, 2
	blt	$t1, $t4, .LBB3_34
# %bb.33:
	st.w	$t1, $a0, 24
	addi.d	$a4, $a4, 1
.LBB3_34:
	ori	$t1, $zero, 1
	blt	$a2, $t1, .LBB3_44
# %bb.35:
	ld.w	$t1, $t5, 0
	ori	$t4, $zero, 2
	blt	$t1, $t4, .LBB3_37
# %bb.36:
	st.w	$t1, $a0, 20
	addi.d	$a4, $a4, 1
.LBB3_37:
	bnez	$a7, .LBB3_44
# %bb.38:
	ori	$t1, $zero, 1
	blt	$a1, $t1, .LBB3_41
# %bb.39:
	ld.w	$t1, $t2, 0
	ori	$t2, $zero, 2
	blt	$t1, $t2, .LBB3_41
# %bb.40:
	st.w	$t1, $a0, 4
	addi.d	$a4, $a4, 1
.LBB3_41:
	bge	$a1, $t0, .LBB3_44
# %bb.42:
	ld.w	$a6, $a6, 0
	ori	$t1, $zero, 2
	blt	$a6, $t1, .LBB3_44
# %bb.43:
	st.w	$a6, $a0, 8
	addi.d	$a4, $a4, 1
.LBB3_44:
	bge	$a2, $a5, .LBB3_54
# %bb.45:
	ld.w	$a2, $t6, 0
	ori	$a5, $zero, 2
	blt	$a2, $a5, .LBB3_47
# %bb.46:
	st.w	$a2, $a0, 28
	addi.d	$a4, $a4, 1
.LBB3_47:
	bnez	$a7, .LBB3_54
# %bb.48:
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB3_51
# %bb.49:
	ld.w	$a2, $t3, 0
	ori	$a5, $zero, 2
	blt	$a2, $a5, .LBB3_51
# %bb.50:
	st.w	$a2, $a0, 0
	addi.d	$a4, $a4, 1
.LBB3_51:
	bge	$a1, $t0, .LBB3_54
# %bb.52:
	ld.w	$a1, $a3, 0
	ori	$a2, $zero, 2
	blt	$a1, $a2, .LBB3_54
# %bb.53:
	st.w	$a1, $a0, 12
	addi.d	$a4, $a4, 1
.LBB3_54:                               # %.loopexit
	move	$a0, $a4
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end3:
	.size	ercCollect8PredBlocks, .Lfunc_end3-ercCollect8PredBlocks
                                        # -- End function
	.globl	ercCollectColumnBlocks          # -- Begin function ercCollectColumnBlocks
	.p2align	5
	.type	ercCollectColumnBlocks,@function
ercCollectColumnBlocks:                 # @ercCollectColumnBlocks
# %bb.0:
	xvrepli.b	$xr0, 0
	xvst	$xr0, $a0, 0
	addi.d	$a4, $a1, -1
	mul.d	$a4, $a5, $a4
	add.w	$a4, $a4, $a2
	slli.d	$a4, $a4, 2
	ldx.w	$a4, $a3, $a4
	ori	$a7, $zero, 2
	blt	$a4, $a7, .LBB4_2
# %bb.1:
	ori	$a4, $zero, 1
	st.w	$a4, $a0, 16
	b	.LBB4_3
.LBB4_2:
	move	$a4, $zero
.LBB4_3:
	add.d	$a1, $a6, $a1
	mul.d	$a1, $a1, $a5
	add.w	$a1, $a1, $a2
	slli.d	$a1, $a1, 2
	ldx.w	$a1, $a3, $a1
	blt	$a1, $a7, .LBB4_5
# %bb.4:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 24
	addi.d	$a4, $a4, 1
.LBB4_5:
	move	$a0, $a4
	ret
.Lfunc_end4:
	.size	ercCollectColumnBlocks, .Lfunc_end4-ercCollectColumnBlocks
                                        # -- End function
	.type	active_pps,@object              # @active_pps
	.comm	active_pps,8,8
	.type	active_sps,@object              # @active_sps
	.comm	active_sps,8,8
	.type	imgY_ref,@object                # @imgY_ref
	.comm	imgY_ref,8,8
	.type	imgUV_ref,@object               # @imgUV_ref
	.comm	imgUV_ref,8,8
	.type	PicPos,@object                  # @PicPos
	.comm	PicPos,8,8
	.type	ReMapRef,@object                # @ReMapRef
	.comm	ReMapRef,80,4
	.type	Bframe_ctr,@object              # @Bframe_ctr
	.comm	Bframe_ctr,4,4
	.type	frame_no,@object                # @frame_no
	.comm	frame_no,4,4
	.type	g_nFrame,@object                # @g_nFrame
	.comm	g_nFrame,4,4
	.type	TopFieldForSkip_Y,@object       # @TopFieldForSkip_Y
	.comm	TopFieldForSkip_Y,1024,4
	.type	TopFieldForSkip_UV,@object      # @TopFieldForSkip_UV
	.comm	TopFieldForSkip_UV,2048,4
	.type	InvLevelScale4x4Luma_Intra,@object # @InvLevelScale4x4Luma_Intra
	.comm	InvLevelScale4x4Luma_Intra,384,4
	.type	InvLevelScale4x4Chroma_Intra,@object # @InvLevelScale4x4Chroma_Intra
	.comm	InvLevelScale4x4Chroma_Intra,768,4
	.type	InvLevelScale4x4Luma_Inter,@object # @InvLevelScale4x4Luma_Inter
	.comm	InvLevelScale4x4Luma_Inter,384,4
	.type	InvLevelScale4x4Chroma_Inter,@object # @InvLevelScale4x4Chroma_Inter
	.comm	InvLevelScale4x4Chroma_Inter,768,4
	.type	InvLevelScale8x8Luma_Intra,@object # @InvLevelScale8x8Luma_Intra
	.comm	InvLevelScale8x8Luma_Intra,1536,4
	.type	InvLevelScale8x8Luma_Inter,@object # @InvLevelScale8x8Luma_Inter
	.comm	InvLevelScale8x8Luma_Inter,1536,4
	.type	qmatrix,@object                 # @qmatrix
	.comm	qmatrix,64,8
	.type	errortext,@object               # @errortext
	.comm	errortext,300,1
	.type	tot_time,@object                # @tot_time
	.comm	tot_time,8,8
	.type	p_out,@object                   # @p_out
	.comm	p_out,4,4
	.type	p_ref,@object                   # @p_ref
	.comm	p_ref,4,4
	.type	p_log,@object                   # @p_log
	.comm	p_log,8,8
	.type	previous_frame_num,@object      # @previous_frame_num
	.comm	previous_frame_num,4,4
	.type	ref_flag,@object                # @ref_flag
	.comm	ref_flag,68,4
	.type	Is_primary_correct,@object      # @Is_primary_correct
	.comm	Is_primary_correct,4,4
	.type	Is_redundant_correct,@object    # @Is_redundant_correct
	.comm	Is_redundant_correct,4,4
	.type	redundant_slice_ref_idx,@object # @redundant_slice_ref_idx
	.comm	redundant_slice_ref_idx,4,4
	.type	nal_startcode_follows,@object   # @nal_startcode_follows
	.comm	nal_startcode_follows,8,8
	.type	last_out_fs,@object             # @last_out_fs
	.comm	last_out_fs,8,8
	.type	pocs_in_dpb,@object             # @pocs_in_dpb
	.comm	pocs_in_dpb,400,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
