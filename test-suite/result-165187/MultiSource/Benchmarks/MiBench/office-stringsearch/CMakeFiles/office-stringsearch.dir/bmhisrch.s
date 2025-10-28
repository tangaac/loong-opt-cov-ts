	.file	"bmhisrch.c"
	.text
	.globl	bmhi_init                       # -- Begin function bmhi_init
	.p2align	5
	.type	bmhi_init,@function
bmhi_init:                              # @bmhi_init
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
	move	$fp, $a0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	pcalau12i	$s1, %pc_hi20(pat)
	ld.d	$a2, $s1, %pc_lo12(pat)
	pcalau12i	$s0, %pc_hi20(patlen)
	st.w	$a0, $s0, %pc_lo12(patlen)
	addi.w	$a1, $a0, 0
	move	$a0, $a2
	pcaddu18i	$ra, %call36(realloc)
	jirl	$ra, $ra, 0
	st.d	$a0, $s1, %pc_lo12(pat)
	beqz	$a0, .LBB0_13
# %bb.1:
	pcalau12i	$a0, %pc_hi20(bhmi_cleanup)
	addi.d	$a0, $a0, %pc_lo12(bhmi_cleanup)
	pcaddu18i	$ra, %call36(atexit)
	jirl	$ra, $ra, 0
	ld.w	$s0, $s0, %pc_lo12(patlen)
	blez	$s0, .LBB0_4
# %bb.2:                                # %.lr.ph
	pcaddu18i	$ra, %call36(__ctype_toupper_loc)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s1, %pc_lo12(pat)
	move	$a2, $s0
	.p2align	4, , 16
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	ld.b	$a3, $fp, 0
	ld.d	$a4, $a0, 0
	slli.d	$a3, $a3, 2
	ldx.b	$a3, $a4, $a3
	st.b	$a3, $a1, 0
	addi.d	$a1, $a1, 1
	addi.d	$a2, $a2, -1
	addi.d	$fp, $fp, 1
	bnez	$a2, .LBB0_3
.LBB0_4:                                # %vector.ph
	vreplgr2vr.w	$vr0, $s0
	pcalau12i	$a0, %pc_hi20(skip)
	addi.d	$fp, $a0, %pc_lo12(skip)
	vst	$vr0, $fp, 0
	vst	$vr0, $fp, 16
	vst	$vr0, $fp, 32
	vst	$vr0, $fp, 48
	vst	$vr0, $fp, 64
	vst	$vr0, $fp, 80
	vst	$vr0, $fp, 96
	vst	$vr0, $fp, 112
	vst	$vr0, $fp, 128
	vst	$vr0, $fp, 144
	vst	$vr0, $fp, 160
	vst	$vr0, $fp, 176
	vst	$vr0, $fp, 192
	vst	$vr0, $fp, 208
	vst	$vr0, $fp, 224
	vst	$vr0, $fp, 240
	vst	$vr0, $fp, 256
	vst	$vr0, $fp, 272
	vst	$vr0, $fp, 288
	vst	$vr0, $fp, 304
	vst	$vr0, $fp, 320
	vst	$vr0, $fp, 336
	vst	$vr0, $fp, 352
	vst	$vr0, $fp, 368
	vst	$vr0, $fp, 384
	vst	$vr0, $fp, 400
	vst	$vr0, $fp, 416
	vst	$vr0, $fp, 432
	vst	$vr0, $fp, 448
	vst	$vr0, $fp, 464
	vst	$vr0, $fp, 480
	vst	$vr0, $fp, 496
	vst	$vr0, $fp, 512
	vst	$vr0, $fp, 528
	vst	$vr0, $fp, 544
	vst	$vr0, $fp, 560
	vst	$vr0, $fp, 576
	vst	$vr0, $fp, 592
	vst	$vr0, $fp, 608
	vst	$vr0, $fp, 624
	vst	$vr0, $fp, 640
	vst	$vr0, $fp, 656
	vst	$vr0, $fp, 672
	vst	$vr0, $fp, 688
	vst	$vr0, $fp, 704
	vst	$vr0, $fp, 720
	vst	$vr0, $fp, 736
	vst	$vr0, $fp, 752
	vst	$vr0, $fp, 768
	vst	$vr0, $fp, 784
	vst	$vr0, $fp, 800
	vst	$vr0, $fp, 816
	vst	$vr0, $fp, 832
	vst	$vr0, $fp, 848
	vst	$vr0, $fp, 864
	vst	$vr0, $fp, 880
	vst	$vr0, $fp, 896
	vst	$vr0, $fp, 912
	vst	$vr0, $fp, 928
	vst	$vr0, $fp, 944
	vst	$vr0, $fp, 960
	vst	$vr0, $fp, 976
	vst	$vr0, $fp, 992
	ld.d	$s1, $s1, %pc_lo12(pat)
	vst	$vr0, $fp, 1008
	ori	$a0, $zero, 1
	addi.w	$s2, $s0, -1
	bge	$a0, $s0, .LBB0_7
# %bb.5:                                # %.lr.ph41
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	move	$a1, $s2
	move	$a2, $s1
	move	$a3, $s2
	.p2align	4, , 16
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a2, 0
	slli.d	$a4, $a4, 2
	stx.w	$a3, $fp, $a4
	ldx.w	$a4, $a0, $a4
	slli.d	$a4, $a4, 2
	stx.w	$a3, $fp, $a4
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB0_6
.LBB0_7:                                # %._crit_edge
	ldx.bu	$s3, $s1, $s2
	slli.d	$s4, $s3, 2
	lu12i.w	$a0, 7
	ori	$s5, $a0, 4095
	stx.w	$s5, $fp, $s4
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	ldx.w	$a0, $a0, $s4
	slli.d	$a0, $a0, 2
	stx.w	$s5, $fp, $a0
	pcalau12i	$a0, %pc_hi20(skip2)
	ori	$a1, $zero, 2
	st.w	$s0, $a0, %pc_lo12(skip2)
	blt	$s0, $a1, .LBB0_12
# %bb.8:                                # %.lr.ph45.preheader
	bstrpick.d	$a1, $s2, 31, 0
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_9:                                #   in Loop: Header=BB0_10 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$a1, $a1, -1
	addi.d	$s2, $s2, -1
	beqz	$a1, .LBB0_12
.LBB0_10:                               # %.lr.ph45
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $s1, 0
	bne	$a2, $s3, .LBB0_9
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	st.w	$s2, $a0, %pc_lo12(skip2)
	b	.LBB0_9
.LBB0_12:                               # %._crit_edge46
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
.LBB0_13:
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	bmhi_init, .Lfunc_end0-bmhi_init
                                        # -- End function
	.globl	bhmi_cleanup                    # -- Begin function bhmi_cleanup
	.p2align	5
	.type	bhmi_cleanup,@function
bhmi_cleanup:                           # @bhmi_cleanup
# %bb.0:
	pcalau12i	$a0, %pc_hi20(pat)
	ld.d	$a0, $a0, %pc_lo12(pat)
	pcaddu18i	$t8, %call36(free)
	jr	$t8
.Lfunc_end1:
	.size	bhmi_cleanup, .Lfunc_end1-bhmi_cleanup
                                        # -- End function
	.globl	bmhi_search                     # -- Begin function bmhi_search
	.p2align	5
	.type	bmhi_search,@function
bmhi_search:                            # @bmhi_search
# %bb.0:
	addi.d	$sp, $sp, -128
	st.d	$ra, $sp, 120                   # 8-byte Folded Spill
	st.d	$fp, $sp, 112                   # 8-byte Folded Spill
	st.d	$s0, $sp, 104                   # 8-byte Folded Spill
	st.d	$s1, $sp, 96                    # 8-byte Folded Spill
	st.d	$s2, $sp, 88                    # 8-byte Folded Spill
	st.d	$s3, $sp, 80                    # 8-byte Folded Spill
	st.d	$s4, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 56                    # 8-byte Folded Spill
	st.d	$s7, $sp, 48                    # 8-byte Folded Spill
	st.d	$s8, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a2, %pc_hi20(patlen)
	ld.w	$a3, $a2, %pc_lo12(patlen)
	nor	$a2, $a1, $zero
	add.w	$a2, $a3, $a2
	bltz	$a2, .LBB2_3
.LBB2_1:
	move	$fp, $zero
.LBB2_2:                                # %.critedge.thread
	move	$a0, $fp
	ld.d	$s8, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	ret
.LBB2_3:
	add.d	$s0, $a0, $a1
	lu12i.w	$a4, 7
	ori	$a4, $a4, 4095
	sub.w	$s5, $a4, $a1
	addi.w	$s1, $a3, -1
	pcalau12i	$a3, %pc_hi20(pat)
	ld.d	$a3, $a3, %pc_lo12(pat)
	pcalau12i	$a4, %pc_hi20(skip2)
	ld.w	$a4, $a4, %pc_lo12(skip2)
	st.d	$a4, $sp, 32                    # 8-byte Folded Spill
	bstrpick.d	$a4, $s1, 31, 0
	add.d	$a3, $a4, $a3
	addi.d	$s4, $a3, -1
	add.d	$a1, $a1, $a4
	nor	$a3, $s1, $zero
	add.d	$a1, $a3, $a1
	add.d	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(skip)
	addi.d	$s6, $a0, %pc_lo12(skip)
	lu12i.w	$a0, -8
	ori	$a3, $a0, 1
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
.LBB2_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
	ldx.bu	$a0, $s0, $a2
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s6, $a0
	add.w	$a2, $a0, $a2
	bltz	$a2, .LBB2_4
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	blt	$a2, $s5, .LBB2_1
# %bb.6:                                #   in Loop: Header=BB2_4 Depth=1
	add.w	$s8, $a2, $a3
	sub.w	$a0, $s8, $s1
	add.d	$fp, $s0, $a0
	add.d	$s3, $a1, $s8
	move	$s7, $s4
	move	$s2, $s1
	.p2align	4, , 16
.LBB2_7:                                #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blez	$s2, .LBB2_2
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=2
	pcaddu18i	$ra, %call36(__ctype_toupper_loc)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s3, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a0, $a0, $a1
	ld.bu	$a1, $s4, 0
	addi.w	$s2, $s2, -1
	addi.d	$s4, $s4, -1
	addi.d	$s3, $s3, -1
	beq	$a0, $a1, .LBB2_7
# %bb.9:                                # %.critedge
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	add.w	$a2, $a0, $s8
	move	$s4, $s7
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	bltz	$a2, .LBB2_4
	b	.LBB2_1
.Lfunc_end2:
	.size	bmhi_search, .Lfunc_end2-bmhi_search
                                        # -- End function
	.type	patlen,@object                  # @patlen
	.local	patlen
	.comm	patlen,4,4
	.type	pat,@object                     # @pat
	.local	pat
	.comm	pat,8,8
	.type	skip,@object                    # @skip
	.local	skip
	.comm	skip,1024,16
	.type	skip2,@object                   # @skip2
	.local	skip2
	.comm	skip2,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym bhmi_cleanup
