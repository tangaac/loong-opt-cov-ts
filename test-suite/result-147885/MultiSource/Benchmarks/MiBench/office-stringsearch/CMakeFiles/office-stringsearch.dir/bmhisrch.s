	.file	"bmhisrch.c"
	.text
	.globl	bmhi_init                       # -- Begin function bmhi_init
	.p2align	5
	.type	bmhi_init,@function
bmhi_init:                              # @bmhi_init
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	st.d	$s5, $sp, 0                     # 8-byte Folded Spill
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
	beqz	$a0, .LBB0_23
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
	addi.d	$s2, $a0, %pc_lo12(skip)
	vst	$vr0, $s2, 0
	vst	$vr0, $s2, 16
	vst	$vr0, $s2, 32
	vst	$vr0, $s2, 48
	vst	$vr0, $s2, 64
	vst	$vr0, $s2, 80
	vst	$vr0, $s2, 96
	vst	$vr0, $s2, 112
	vst	$vr0, $s2, 128
	vst	$vr0, $s2, 144
	vst	$vr0, $s2, 160
	vst	$vr0, $s2, 176
	vst	$vr0, $s2, 192
	vst	$vr0, $s2, 208
	vst	$vr0, $s2, 224
	vst	$vr0, $s2, 240
	vst	$vr0, $s2, 256
	vst	$vr0, $s2, 272
	vst	$vr0, $s2, 288
	vst	$vr0, $s2, 304
	vst	$vr0, $s2, 320
	vst	$vr0, $s2, 336
	vst	$vr0, $s2, 352
	vst	$vr0, $s2, 368
	vst	$vr0, $s2, 384
	vst	$vr0, $s2, 400
	vst	$vr0, $s2, 416
	vst	$vr0, $s2, 432
	vst	$vr0, $s2, 448
	vst	$vr0, $s2, 464
	vst	$vr0, $s2, 480
	vst	$vr0, $s2, 496
	vst	$vr0, $s2, 512
	vst	$vr0, $s2, 528
	vst	$vr0, $s2, 544
	vst	$vr0, $s2, 560
	vst	$vr0, $s2, 576
	vst	$vr0, $s2, 592
	vst	$vr0, $s2, 608
	vst	$vr0, $s2, 624
	vst	$vr0, $s2, 640
	vst	$vr0, $s2, 656
	vst	$vr0, $s2, 672
	vst	$vr0, $s2, 688
	vst	$vr0, $s2, 704
	vst	$vr0, $s2, 720
	vst	$vr0, $s2, 736
	vst	$vr0, $s2, 752
	vst	$vr0, $s2, 768
	vst	$vr0, $s2, 784
	vst	$vr0, $s2, 800
	vst	$vr0, $s2, 816
	vst	$vr0, $s2, 832
	vst	$vr0, $s2, 848
	vst	$vr0, $s2, 864
	vst	$vr0, $s2, 880
	vst	$vr0, $s2, 896
	vst	$vr0, $s2, 912
	vst	$vr0, $s2, 928
	vst	$vr0, $s2, 944
	vst	$vr0, $s2, 960
	vst	$vr0, $s2, 976
	vst	$vr0, $s2, 992
	ld.d	$fp, $s1, %pc_lo12(pat)
	vst	$vr0, $s2, 1008
	ori	$a0, $zero, 1
	addi.w	$s3, $s0, -1
	bge	$a0, $s0, .LBB0_7
# %bb.5:                                # %.lr.ph41
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	move	$a1, $s3
	move	$a2, $fp
	move	$a3, $s3
	.p2align	4, , 16
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a2, 0
	slli.d	$a4, $a4, 2
	stx.w	$a3, $s2, $a4
	ldx.w	$a4, $a0, $a4
	slli.d	$a4, $a4, 2
	stx.w	$a3, $s2, $a4
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 1
	bnez	$a1, .LBB0_6
.LBB0_7:                                # %._crit_edge
	ldx.bu	$s1, $fp, $s3
	slli.d	$s4, $s1, 2
	lu12i.w	$a0, 7
	ori	$s5, $a0, 4095
	stx.w	$s5, $s2, $s4
	pcaddu18i	$ra, %call36(__ctype_tolower_loc)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	ldx.w	$a0, $a0, $s4
	slli.d	$a0, $a0, 2
	stx.w	$s5, $s2, $a0
	pcalau12i	$a0, %pc_hi20(skip2)
	ori	$a1, $zero, 2
	st.w	$s0, $a0, %pc_lo12(skip2)
	blt	$s0, $a1, .LBB0_18
# %bb.8:                                # %.lr.ph45.preheader
	ori	$a2, $zero, 5
	bstrpick.d	$a1, $s3, 31, 0
	bgeu	$s0, $a2, .LBB0_10
# %bb.9:
	move	$a2, $zero
	b	.LBB0_19
.LBB0_10:                               # %vector.ph59
	move	$a3, $zero
	bstrpick.d	$a2, $a1, 31, 2
	slli.d	$a2, $a2, 2
	vinsgr2vr.b	$vr0, $s1, 0
	vreplvei.b	$vr0, $vr0, 0
	addi.w	$a4, $zero, -2
	lu32i.d	$a4, 0
	addi.d	$a5, $zero, -3
	addi.d	$a6, $zero, -4
	move	$a7, $fp
	move	$t0, $a2
	b	.LBB0_13
	.p2align	4, , 16
.LBB0_11:                               #   in Loop: Header=BB0_13 Depth=1
	orn	$t2, $a4, $t2
	maskeqz	$t4, $a5, $t3
	masknez	$t2, $t2, $t3
	or	$t2, $t4, $t2
	masknez	$t2, $t2, $t1
	maskeqz	$t1, $a6, $t1
	or	$t1, $t1, $t2
	xor	$t1, $t1, $a3
	add.d	$t1, $s0, $t1
	st.w	$t1, $a0, %pc_lo12(skip2)
.LBB0_12:                               #   in Loop: Header=BB0_13 Depth=1
	addi.d	$t0, $t0, -4
	addi.d	$a7, $a7, 4
	addi.d	$a3, $a3, 4
	beqz	$t0, .LBB0_17
.LBB0_13:                               # %vector.body62
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$t1, $a7, 0
	vinsgr2vr.w	$vr1, $t1, 0
	vseq.b	$vr1, $vr1, $vr0
	vilvl.b	$vr2, $vr1, $vr1
	vilvl.h	$vr2, $vr2, $vr2
	vslli.w	$vr2, $vr2, 24
	vsrai.w	$vr2, $vr2, 24
	vpickve2gr.w	$t1, $vr1, 0
	andi	$t4, $t1, 1
	vpickve2gr.w	$t2, $vr2, 1
	vpickve2gr.w	$t1, $vr2, 2
	vpickve2gr.w	$t5, $vr2, 3
	andi	$t3, $t1, 1
	andi	$t1, $t5, 1
	bnez	$t4, .LBB0_11
# %bb.14:                               # %vector.body62
                                        #   in Loop: Header=BB0_13 Depth=1
	andi	$t4, $t2, 1
	bnez	$t4, .LBB0_11
# %bb.15:                               # %vector.body62
                                        #   in Loop: Header=BB0_13 Depth=1
	bnez	$t3, .LBB0_11
# %bb.16:                               # %vector.body62
                                        #   in Loop: Header=BB0_13 Depth=1
	beqz	$t1, .LBB0_12
	b	.LBB0_11
.LBB0_17:                               # %middle.block71
	bne	$a2, $a1, .LBB0_19
.LBB0_18:                               # %._crit_edge46
	ld.d	$s5, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB0_19:                               # %.lr.ph45.preheader81
	add.d	$a3, $fp, $a2
	nor	$a4, $a2, $zero
	add.d	$a4, $a4, $s0
	sub.d	$a1, $a1, $a2
	b	.LBB0_21
	.p2align	4, , 16
.LBB0_20:                               #   in Loop: Header=BB0_21 Depth=1
	addi.d	$a3, $a3, 1
	addi.d	$a1, $a1, -1
	addi.d	$a4, $a4, -1
	beqz	$a1, .LBB0_18
.LBB0_21:                               # %.lr.ph45
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $a3, 0
	bne	$a2, $s1, .LBB0_20
# %bb.22:                               #   in Loop: Header=BB0_21 Depth=1
	st.w	$a4, $a0, %pc_lo12(skip2)
	b	.LBB0_20
.LBB0_23:
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
	pcalau12i	$a2, %pc_hi20(patlen)
	ld.w	$a2, $a2, %pc_lo12(patlen)
	nor	$a3, $a1, $zero
	add.w	$s0, $a2, $a3
	bltz	$s0, .LBB2_3
.LBB2_1:
	move	$fp, $zero
.LBB2_2:                                # %.critedge.thread
	move	$a0, $fp
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
.LBB2_3:
	add.d	$s1, $a0, $a1
	lu12i.w	$a3, 7
	ori	$a3, $a3, 4095
	sub.w	$s7, $a3, $a1
	addi.w	$s2, $a2, -1
	pcalau12i	$a2, %pc_hi20(pat)
	pcalau12i	$a3, %pc_hi20(skip2)
	ld.w	$a3, $a3, %pc_lo12(skip2)
	ld.d	$a2, $a2, %pc_lo12(pat)
	lu12i.w	$a4, -8
	ori	$a4, $a4, 1
	add.d	$a3, $a3, $a4
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	bstrpick.d	$a3, $s2, 31, 0
	add.d	$a2, $a3, $a2
	addi.d	$s6, $a2, -1
	add.d	$a1, $a1, $a3
	nor	$a2, $s2, $zero
	add.d	$a1, $a2, $a1
	add.d	$a2, $a0, $a1
	pcalau12i	$a0, %pc_hi20(skip)
	addi.d	$s8, $a0, %pc_lo12(skip)
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	st.d	$a2, $sp, 0                     # 8-byte Folded Spill
.LBB2_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
	ldx.bu	$a0, $s1, $s0
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $s8, $a0
	add.w	$s0, $a0, $s0
	bltz	$s0, .LBB2_4
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	blt	$s0, $s7, .LBB2_1
# %bb.6:                                #   in Loop: Header=BB2_4 Depth=1
	add.w	$a0, $s0, $a4
	sub.w	$a1, $a0, $s2
	add.d	$fp, $s1, $a1
	add.d	$s5, $a2, $a0
	move	$s4, $s6
	move	$s3, $s2
	.p2align	4, , 16
.LBB2_7:                                #   Parent Loop BB2_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blez	$s3, .LBB2_2
# %bb.8:                                #   in Loop: Header=BB2_7 Depth=2
	pcaddu18i	$ra, %call36(__ctype_toupper_loc)
	jirl	$ra, $ra, 0
	ld.b	$a1, $s5, 0
	ld.d	$a0, $a0, 0
	slli.d	$a1, $a1, 2
	ldx.w	$a0, $a0, $a1
	ld.bu	$a1, $s6, 0
	addi.w	$s3, $s3, -1
	addi.d	$s6, $s6, -1
	addi.d	$s5, $s5, -1
	beq	$a0, $a1, .LBB2_7
# %bb.9:                                # %.critedge
                                        #   in Loop: Header=BB2_4 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	add.w	$s0, $s0, $a0
	move	$s6, $s4
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a2, $sp, 0                     # 8-byte Folded Reload
	bltz	$s0, .LBB2_4
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
