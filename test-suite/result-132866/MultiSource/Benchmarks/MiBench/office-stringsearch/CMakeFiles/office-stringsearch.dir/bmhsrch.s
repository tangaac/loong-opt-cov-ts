	.file	"bmhsrch.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function bmh_init
.LCPI0_0:
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.text
	.globl	bmh_init
	.p2align	5
	.type	bmh_init,@function
bmh_init:                               # @bmh_init
# %bb.0:                                # %vector.ph
	addi.d	$sp, $sp, -224
	st.d	$ra, $sp, 216                   # 8-byte Folded Spill
	st.d	$fp, $sp, 208                   # 8-byte Folded Spill
	st.d	$s0, $sp, 200                   # 8-byte Folded Spill
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	st.d	$s3, $sp, 176                   # 8-byte Folded Spill
	st.d	$s4, $sp, 168                   # 8-byte Folded Spill
	st.d	$s5, $sp, 160                   # 8-byte Folded Spill
	st.d	$s6, $sp, 152                   # 8-byte Folded Spill
	st.d	$s7, $sp, 144                   # 8-byte Folded Spill
	st.d	$s8, $sp, 136                   # 8-byte Folded Spill
	addi.d	$fp, $sp, 224
	bstrins.d	$sp, $zero, 4, 0
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(pat)
	st.d	$s0, $a0, %pc_lo12(pat)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	addi.w	$a1, $a0, 0
	pcalau12i	$a2, %pc_hi20(patlen)
	st.w	$a0, $a2, %pc_lo12(patlen)
	xvreplgr2vr.w	$xr0, $a0
	pcalau12i	$a2, %pc_hi20(skip)
	addi.d	$a2, $a2, %pc_lo12(skip)
	xvst	$xr0, $a2, 0
	xvst	$xr0, $a2, 32
	xvst	$xr0, $a2, 64
	xvst	$xr0, $a2, 96
	xvst	$xr0, $a2, 128
	xvst	$xr0, $a2, 160
	xvst	$xr0, $a2, 192
	xvst	$xr0, $a2, 224
	xvst	$xr0, $a2, 256
	xvst	$xr0, $a2, 288
	xvst	$xr0, $a2, 320
	xvst	$xr0, $a2, 352
	xvst	$xr0, $a2, 384
	xvst	$xr0, $a2, 416
	xvst	$xr0, $a2, 448
	xvst	$xr0, $a2, 480
	xvst	$xr0, $a2, 512
	xvst	$xr0, $a2, 544
	xvst	$xr0, $a2, 576
	xvst	$xr0, $a2, 608
	xvst	$xr0, $a2, 640
	xvst	$xr0, $a2, 672
	xvst	$xr0, $a2, 704
	xvst	$xr0, $a2, 736
	xvst	$xr0, $a2, 768
	xvst	$xr0, $a2, 800
	xvst	$xr0, $a2, 832
	xvst	$xr0, $a2, 864
	xvst	$xr0, $a2, 896
	xvst	$xr0, $a2, 928
	xvst	$xr0, $a2, 960
	ori	$a3, $zero, 1
	xvst	$xr0, $a2, 992
	blt	$a1, $a3, .LBB0_8
# %bb.1:                                # %.lr.ph.preheader
	bstrpick.d	$a3, $a0, 30, 0
	ori	$a4, $zero, 8
	bgeu	$a3, $a4, .LBB0_3
# %bb.2:
	move	$a4, $zero
	b	.LBB0_6
.LBB0_3:                                # %vector.ph30
	pcalau12i	$a4, %pc_hi20(.LCPI0_0)
	xvld	$xr1, $a4, %pc_lo12(.LCPI0_0)
	bstrpick.d	$a4, $a0, 30, 3
	slli.d	$a4, $a4, 3
	xvrepli.b	$xr2, -1
	move	$a5, $s0
	move	$a6, $a4
	.p2align	4, , 16
.LBB0_4:                                # %vector.body33
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a7, $a5, 0
	vinsgr2vr.d	$vr3, $a7, 0
	vsrli.d	$vr4, $vr3, 32
	vst	$vr4, $sp, 96
	vst	$vr3, $sp, 64
	st.b	$zero, $sp, 31
	st.h	$zero, $sp, 29
	st.w	$zero, $sp, 25
	st.b	$zero, $sp, 23
	st.h	$zero, $sp, 21
	st.w	$zero, $sp, 17
	st.b	$zero, $sp, 15
	st.h	$zero, $sp, 13
	st.w	$zero, $sp, 9
	st.b	$zero, $sp, 7
	st.h	$zero, $sp, 5
	st.w	$zero, $sp, 1
	xvld	$xr3, $sp, 96
	vpickve2gr.b	$a7, $vr3, 3
	st.b	$a7, $sp, 24
	vpickve2gr.b	$a7, $vr3, 2
	st.b	$a7, $sp, 16
	vpickve2gr.b	$a7, $vr3, 1
	st.b	$a7, $sp, 8
	vpickve2gr.b	$a7, $vr3, 0
	st.b	$a7, $sp, 0
	st.b	$zero, $sp, 63
	st.h	$zero, $sp, 61
	st.w	$zero, $sp, 57
	st.b	$zero, $sp, 55
	st.h	$zero, $sp, 53
	st.w	$zero, $sp, 49
	st.b	$zero, $sp, 47
	st.h	$zero, $sp, 45
	st.w	$zero, $sp, 41
	st.b	$zero, $sp, 39
	st.h	$zero, $sp, 37
	st.w	$zero, $sp, 33
	xvld	$xr3, $sp, 64
	vpickve2gr.b	$a7, $vr3, 3
	st.b	$a7, $sp, 56
	vpickve2gr.b	$a7, $vr3, 2
	st.b	$a7, $sp, 48
	vpickve2gr.b	$a7, $vr3, 1
	st.b	$a7, $sp, 40
	vpickve2gr.b	$a7, $vr3, 0
	st.b	$a7, $sp, 32
	xvld	$xr3, $sp, 32
	xvxor.v	$xr4, $xr1, $xr2
	xvadd.w	$xr4, $xr0, $xr4
	xvld	$xr5, $sp, 0
	xvpickve2gr.d	$a7, $xr3, 0
	slli.d	$a7, $a7, 2
	xvpickve2gr.d	$t0, $xr3, 1
	slli.d	$t0, $t0, 2
	xvpickve2gr.d	$t1, $xr3, 2
	slli.d	$t1, $t1, 2
	xvpickve2gr.d	$t2, $xr3, 3
	slli.d	$t2, $t2, 2
	xvpickve2gr.d	$t3, $xr5, 0
	slli.d	$t3, $t3, 2
	xvpickve2gr.d	$t4, $xr5, 1
	slli.d	$t4, $t4, 2
	xvpickve2gr.d	$t5, $xr5, 2
	slli.d	$t5, $t5, 2
	xvpickve2gr.d	$t6, $xr5, 3
	slli.d	$t6, $t6, 2
	xvpickve2gr.w	$t7, $xr4, 0
	stx.w	$t7, $a2, $a7
	xvpickve2gr.w	$a7, $xr4, 1
	stx.w	$a7, $a2, $t0
	xvpickve2gr.w	$a7, $xr4, 2
	stx.w	$a7, $a2, $t1
	xvpickve2gr.w	$a7, $xr4, 3
	stx.w	$a7, $a2, $t2
	xvpickve2gr.w	$a7, $xr4, 4
	stx.w	$a7, $a2, $t3
	xvpickve2gr.w	$a7, $xr4, 5
	stx.w	$a7, $a2, $t4
	xvpickve2gr.w	$a7, $xr4, 6
	stx.w	$a7, $a2, $t5
	xvpickve2gr.w	$a7, $xr4, 7
	stx.w	$a7, $a2, $t6
	xvaddi.wu	$xr1, $xr1, 8
	addi.d	$a6, $a6, -8
	addi.d	$a5, $a5, 8
	bnez	$a6, .LBB0_4
# %bb.5:                                # %middle.block36
	beq	$a3, $a4, .LBB0_8
.LBB0_6:                                # %.lr.ph.preheader85
	nor	$a5, $a4, $zero
	add.d	$a5, $a5, $a0
	add.d	$a6, $s0, $a4
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
	add.d	$a3, $s0, $a1
	ld.bu	$a3, $a3, -1
	slli.d	$a4, $a3, 2
	lu12i.w	$a5, 7
	ori	$a5, $a5, 4095
	stx.w	$a5, $a2, $a4
	pcalau12i	$a2, %pc_hi20(skip2)
	ori	$a4, $zero, 2
	st.w	$a0, $a2, %pc_lo12(skip2)
	blt	$a1, $a4, .LBB0_23
# %bb.9:                                # %.lr.ph20.preheader
	addi.w	$a1, $zero, -1
	lu32i.d	$a1, 0
	add.d	$a4, $a0, $a1
	bstrpick.d	$a1, $a4, 31, 0
	ori	$a5, $zero, 8
	bgeu	$a1, $a5, .LBB0_11
# %bb.10:
	move	$a4, $zero
	b	.LBB0_24
.LBB0_11:                               # %vector.ph40
	move	$a5, $zero
	bstrpick.d	$a4, $a4, 31, 3
	slli.d	$a4, $a4, 3
	vinsgr2vr.b	$vr0, $a3, 0
	vreplvei.b	$vr0, $vr0, 0
	addi.d	$a6, $zero, -2
	addi.d	$a7, $zero, -3
	addi.d	$t0, $zero, -4
	addi.d	$t1, $zero, -5
	addi.d	$t2, $zero, -6
	addi.d	$t3, $zero, -7
	addi.d	$t4, $zero, -8
	move	$t5, $s0
	move	$t6, $a4
	b	.LBB0_14
	.p2align	4, , 16
.LBB0_12:                               #   in Loop: Header=BB0_14 Depth=1
	orn	$s2, $a6, $s2
	masknez	$s2, $s2, $s5
	maskeqz	$s5, $a7, $s5
	or	$s2, $s5, $s2
	masknez	$s2, $s2, $s4
	maskeqz	$s4, $t0, $s4
	or	$s2, $s4, $s2
	masknez	$s2, $s2, $s3
	maskeqz	$s3, $t1, $s3
	or	$s2, $s3, $s2
	masknez	$s2, $s2, $s1
	maskeqz	$s1, $t2, $s1
	or	$s1, $s1, $s2
	masknez	$s1, $s1, $t8
	maskeqz	$t8, $t3, $t8
	or	$t8, $t8, $s1
	masknez	$t8, $t8, $t7
	maskeqz	$t7, $t4, $t7
	or	$t7, $t7, $t8
	xor	$t7, $t7, $a5
	add.d	$t7, $t7, $a0
	st.w	$t7, $a2, %pc_lo12(skip2)
.LBB0_13:                               #   in Loop: Header=BB0_14 Depth=1
	addi.d	$t6, $t6, -8
	addi.d	$t5, $t5, 8
	addi.d	$a5, $a5, 8
	beqz	$t6, .LBB0_22
.LBB0_14:                               # %vector.body45
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$t7, $t5, 0
	vinsgr2vr.d	$vr1, $t7, 0
	vseq.b	$vr1, $vr1, $vr0
	vilvl.b	$vr2, $vr1, $vr1
	vslli.h	$vr2, $vr2, 8
	vsrai.h	$vr2, $vr2, 8
	vpickve2gr.h	$t7, $vr1, 0
	andi	$s6, $t7, 1
	vpickve2gr.h	$s2, $vr2, 1
	vpickve2gr.h	$t7, $vr2, 2
	vpickve2gr.h	$t8, $vr2, 3
	vpickve2gr.h	$s1, $vr2, 4
	vpickve2gr.h	$s7, $vr2, 5
	vpickve2gr.h	$s8, $vr2, 6
	vpickve2gr.h	$ra, $vr2, 7
	andi	$s5, $t7, 1
	andi	$s4, $t8, 1
	andi	$s3, $s1, 1
	andi	$s1, $s7, 1
	andi	$t8, $s8, 1
	andi	$t7, $ra, 1
	bnez	$s6, .LBB0_12
# %bb.15:                               # %vector.body45
                                        #   in Loop: Header=BB0_14 Depth=1
	andi	$s6, $s2, 1
	bnez	$s6, .LBB0_12
# %bb.16:                               # %vector.body45
                                        #   in Loop: Header=BB0_14 Depth=1
	bnez	$s5, .LBB0_12
# %bb.17:                               # %vector.body45
                                        #   in Loop: Header=BB0_14 Depth=1
	bnez	$s4, .LBB0_12
# %bb.18:                               # %vector.body45
                                        #   in Loop: Header=BB0_14 Depth=1
	bnez	$s3, .LBB0_12
# %bb.19:                               # %vector.body45
                                        #   in Loop: Header=BB0_14 Depth=1
	bnez	$s1, .LBB0_12
# %bb.20:                               # %vector.body45
                                        #   in Loop: Header=BB0_14 Depth=1
	bnez	$t8, .LBB0_12
# %bb.21:                               # %vector.body45
                                        #   in Loop: Header=BB0_14 Depth=1
	beqz	$t7, .LBB0_13
	b	.LBB0_12
.LBB0_22:                               # %middle.block63
	bne	$a1, $a4, .LBB0_24
.LBB0_23:                               # %._crit_edge21
	addi.d	$sp, $fp, -224
	ld.d	$s8, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 200                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 208                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 216                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 224
	ret
.LBB0_24:                               # %.lr.ph20.preheader84
	add.d	$a5, $s0, $a4
	nor	$a6, $a4, $zero
	add.d	$a0, $a6, $a0
	sub.d	$a1, $a1, $a4
	b	.LBB0_26
	.p2align	4, , 16
.LBB0_25:                               #   in Loop: Header=BB0_26 Depth=1
	addi.d	$a5, $a5, 1
	addi.d	$a1, $a1, -1
	addi.d	$a0, $a0, -1
	beqz	$a1, .LBB0_23
.LBB0_26:                               # %.lr.ph20
                                        # =>This Inner Loop Header: Depth=1
	ld.bu	$a4, $a5, 0
	bne	$a4, $a3, .LBB0_25
# %bb.27:                               #   in Loop: Header=BB0_26 Depth=1
	st.w	$a0, $a2, %pc_lo12(skip2)
	b	.LBB0_25
.Lfunc_end0:
	.size	bmh_init, .Lfunc_end0-bmh_init
                                        # -- End function
	.globl	bmh_search                      # -- Begin function bmh_search
	.p2align	5
	.type	bmh_search,@function
bmh_search:                             # @bmh_search
# %bb.0:
	pcalau12i	$a2, %pc_hi20(patlen)
	ld.w	$a5, $a2, %pc_lo12(patlen)
	nor	$a2, $a1, $zero
	add.w	$a2, $a5, $a2
	addi.w	$a3, $zero, -1
	bge	$a3, $a2, .LBB1_3
.LBB1_1:
	move	$a0, $zero
.LBB1_2:                                # %.critedge.thread
	ret
.LBB1_3:
	add.d	$a3, $a0, $a1
	lu12i.w	$a4, 7
	ori	$a4, $a4, 4095
	sub.w	$a4, $a4, $a1
	addi.w	$a5, $a5, -1
	pcalau12i	$a6, %pc_hi20(pat)
	pcalau12i	$a7, %pc_hi20(skip2)
	ld.w	$a7, $a7, %pc_lo12(skip2)
	ld.d	$t0, $a6, %pc_lo12(pat)
	lu12i.w	$a6, -8
	ori	$a6, $a6, 1
	add.d	$a7, $a7, $a6
	bstrpick.d	$t1, $a5, 31, 0
	add.d	$t0, $t1, $t0
	addi.d	$t0, $t0, -1
	add.d	$a1, $a1, $t1
	nor	$t1, $a5, $zero
	add.d	$a1, $t1, $a1
	add.d	$a1, $a0, $a1
	pcalau12i	$a0, %pc_hi20(skip)
	addi.d	$t1, $a0, %pc_lo12(skip)
	ori	$t2, $zero, 1
.LBB1_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
	ldx.bu	$a0, $a3, $a2
	slli.d	$a0, $a0, 2
	ldx.w	$a0, $t1, $a0
	add.w	$a2, $a0, $a2
	bltz	$a2, .LBB1_4
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	blt	$a2, $a4, .LBB1_1
# %bb.6:                                #   in Loop: Header=BB1_4 Depth=1
	add.w	$t3, $a2, $a6
	sub.w	$a0, $t3, $a5
	add.d	$a0, $a3, $a0
	add.d	$t3, $a1, $t3
	move	$t4, $t0
	move	$t5, $a5
	.p2align	4, , 16
.LBB1_7:                                #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	blt	$t5, $t2, .LBB1_2
# %bb.8:                                #   in Loop: Header=BB1_7 Depth=2
	ld.b	$t6, $t3, 0
	ld.bu	$t7, $t4, 0
	addi.w	$t5, $t5, -1
	addi.d	$t4, $t4, -1
	addi.d	$t3, $t3, -1
	beq	$t6, $t7, .LBB1_7
# %bb.9:                                # %.critedge
                                        #   in Loop: Header=BB1_4 Depth=1
	add.w	$a2, $a2, $a7
	bltz	$a2, .LBB1_4
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
	.comm	skip,1024,32
	.type	skip2,@object                   # @skip2
	.local	skip2
	.comm	skip2,4,4
	.section	".note.GNU-stack","",@progbits
	.addrsig
