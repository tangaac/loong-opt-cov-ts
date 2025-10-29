	.file	"bmhsrch.c"
	.text
	.globl	bmh_init                        # -- Begin function bmh_init
	.p2align	5
	.type	bmh_init,@function
bmh_init:                               # @bmh_init
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(pat)
	st.d	$fp, $a0, %pc_lo12(pat)
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	pcalau12i	$a2, %pc_hi20(patlen)
	st.w	$a0, $a2, %pc_lo12(patlen)
	vreplgr2vr.w	$vr0, $a0
	pcalau12i	$a2, %pc_hi20(skip)
	addi.d	$a2, $a2, %pc_lo12(skip)
	vst	$vr0, $a2, 0
	vst	$vr0, $a2, 16
	vst	$vr0, $a2, 32
	vst	$vr0, $a2, 48
	vst	$vr0, $a2, 64
	vst	$vr0, $a2, 80
	vst	$vr0, $a2, 96
	vst	$vr0, $a2, 112
	vst	$vr0, $a2, 128
	vst	$vr0, $a2, 144
	vst	$vr0, $a2, 160
	vst	$vr0, $a2, 176
	vst	$vr0, $a2, 192
	vst	$vr0, $a2, 208
	vst	$vr0, $a2, 224
	vst	$vr0, $a2, 240
	vst	$vr0, $a2, 256
	vst	$vr0, $a2, 272
	vst	$vr0, $a2, 288
	vst	$vr0, $a2, 304
	vst	$vr0, $a2, 320
	vst	$vr0, $a2, 336
	vst	$vr0, $a2, 352
	vst	$vr0, $a2, 368
	vst	$vr0, $a2, 384
	vst	$vr0, $a2, 400
	vst	$vr0, $a2, 416
	vst	$vr0, $a2, 432
	vst	$vr0, $a2, 448
	vst	$vr0, $a2, 464
	vst	$vr0, $a2, 480
	vst	$vr0, $a2, 496
	vst	$vr0, $a2, 512
	vst	$vr0, $a2, 528
	vst	$vr0, $a2, 544
	vst	$vr0, $a2, 560
	vst	$vr0, $a2, 576
	vst	$vr0, $a2, 592
	vst	$vr0, $a2, 608
	vst	$vr0, $a2, 624
	vst	$vr0, $a2, 640
	vst	$vr0, $a2, 656
	vst	$vr0, $a2, 672
	vst	$vr0, $a2, 688
	vst	$vr0, $a2, 704
	vst	$vr0, $a2, 720
	vst	$vr0, $a2, 736
	vst	$vr0, $a2, 752
	vst	$vr0, $a2, 768
	vst	$vr0, $a2, 784
	vst	$vr0, $a2, 800
	vst	$vr0, $a2, 816
	vst	$vr0, $a2, 832
	vst	$vr0, $a2, 848
	vst	$vr0, $a2, 864
	vst	$vr0, $a2, 880
	vst	$vr0, $a2, 896
	vst	$vr0, $a2, 912
	vst	$vr0, $a2, 928
	vst	$vr0, $a2, 944
	vst	$vr0, $a2, 960
	vst	$vr0, $a2, 976
	vst	$vr0, $a2, 992
	vst	$vr0, $a2, 1008
	blez	$a1, .LBB0_8
# %bb.1:                                # %.lr.ph.preheader
	bstrpick.d	$a3, $a0, 30, 0
	ori	$a4, $zero, 2
	bgeu	$a3, $a4, .LBB0_3
# %bb.2:
	move	$a4, $zero
	b	.LBB0_6
.LBB0_3:                                # %vector.ph29
	move	$a5, $zero
	bstrpick.d	$a4, $a0, 30, 1
	slli.d	$a4, $a4, 1
	addi.d	$a6, $fp, 1
	addi.d	$a7, $a0, -1
	addi.w	$t0, $zero, -2
	lu32i.d	$t0, 0
	move	$t1, $a4
	.p2align	4, , 16
.LBB0_4:                                # %vector.body30
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$t2, $a6, -1
	ld.bu	$t3, $a6, 0
	xor	$t4, $a5, $t0
	add.d	$t4, $t4, $a0
	slli.d	$t2, $t2, 2
	slli.d	$t3, $t3, 2
	stx.w	$a7, $a2, $t2
	stx.w	$t4, $a2, $t3
	addi.d	$a6, $a6, 2
	addi.d	$t1, $t1, -2
	addi.d	$a5, $a5, 2
	addi.d	$a7, $a7, -2
	bnez	$t1, .LBB0_4
# %bb.5:                                # %middle.block33
	beq	$a3, $a4, .LBB0_8
.LBB0_6:                                # %.lr.ph.preheader34
	nor	$a5, $a4, $zero
	add.d	$a5, $a5, $a0
	add.d	$a6, $fp, $a4
	sub.d	$a3, $a3, $a4
	.p2align	4, , 16
.LBB0_7:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a6, 0
	slli.d	$a4, $a4, 2
	stx.w	$a5, $a2, $a4
	addi.d	$a5, $a5, -1
	addi.d	$a3, $a3, -1
	addi.d	$a6, $a6, 1
	bnez	$a3, .LBB0_7
.LBB0_8:                                # %._crit_edge
	add.d	$a3, $fp, $a1
	ld.bu	$a3, $a3, -1
	slli.d	$a4, $a3, 2
	lu12i.w	$a5, 7
	ori	$a5, $a5, 4095
	stx.w	$a5, $a2, $a4
	pcalau12i	$a2, %pc_hi20(skip2)
	ori	$a4, $zero, 2
	st.w	$a0, $a2, %pc_lo12(skip2)
	blt	$a1, $a4, .LBB0_13
# %bb.9:                                # %.lr.ph20.preheader
	addi.d	$a0, $a0, -1
	bstrpick.d	$a1, $a0, 31, 0
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_10:                               #   in Loop: Header=BB0_11 Depth=1
	addi.d	$fp, $fp, 1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, -1
	beqz	$a1, .LBB0_13
.LBB0_11:                               # %.lr.ph20
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $fp, 0
	bne	$a4, $a3, .LBB0_10
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	st.w	$a0, $a2, %pc_lo12(skip2)
	b	.LBB0_10
.LBB0_13:                               # %._crit_edge21
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end0:
	.size	bmh_init, .Lfunc_end0-bmh_init
                                        # -- End function
	.globl	bmh_search                      # -- Begin function bmh_search
	.p2align	5
	.type	bmh_search,@function
bmh_search:                             # @bmh_search
# %bb.0:
	pcalau12i	$a2, %pc_hi20(patlen)
	ld.w	$a4, $a2, %pc_lo12(patlen)
	nor	$a2, $a1, $zero
	add.w	$t1, $a4, $a2
	bltz	$t1, .LBB1_3
.LBB1_1:
	move	$a0, $zero
.LBB1_2:                                # %.critedge.thread
	ret
.LBB1_3:
	add.d	$a2, $a0, $a1
	lu12i.w	$a3, 7
	ori	$a3, $a3, 4095
	sub.w	$a3, $a3, $a1
	addi.w	$a4, $a4, -1
	pcalau12i	$a5, %pc_hi20(pat)
	ld.d	$a6, $a5, %pc_lo12(pat)
	pcalau12i	$a5, %pc_hi20(skip2)
	ld.w	$a5, $a5, %pc_lo12(skip2)
	bstrpick.d	$a7, $a4, 31, 0
	add.d	$a6, $a7, $a6
	addi.d	$a6, $a6, -1
	add.d	$a1, $a1, $a7
	nor	$a7, $a4, $zero
	add.d	$a1, $a7, $a1
	add.d	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(skip)
	addi.d	$a7, $a0, %pc_lo12(skip)
	lu12i.w	$a0, -8
	ori	$t0, $a0, 1
.LBB1_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
	ldx.bu	$a0, $a2, $t1
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $a7, $a0
	add.w	$t1, $a0, $t1
	bltz	$t1, .LBB1_4
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	blt	$t1, $a3, .LBB1_1
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	add.w	$t1, $t1, $t0
	sub.w	$a0, $t1, $a4
	add.d	$a0, $a2, $a0
	add.d	$t2, $a1, $t1
	move	$t3, $a6
	move	$t4, $a4
	.p2align	4, , 16
.LBB1_7:                                #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blez	$t4, .LBB1_2
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=2
	ld.b	$t5, $t2, 0
	ld.bu	$t6, $t3, 0
	addi.w	$t4, $t4, -1
	addi.d	$t3, $t3, -1
	addi.d	$t2, $t2, -1
	beq	$t5, $t6, .LBB1_7
# %bb.9:                                # %.critedge
                                        #   in Loop: Header=BB1_4 Depth=1
	add.w	$t1, $a5, $t1
	bltz	$t1, .LBB1_4
	b	.LBB1_1
.Lfunc_end1:
	.size	bmh_search, .Lfunc_end1-bmh_search
                                        # -- End function
	.type	pat,@object                     # @pat
	.local	pat
	.comm	pat,8,8
	.type	patlen,@object                  # @patlen
	.local	patlen
	.comm	patlen,4,4
	.type	skip,@object                    # @skip
	.local	skip
	.comm	skip,1024,16
	.type	skip2,@object                   # @skip2
	.local	skip2
	.comm	skip2,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
