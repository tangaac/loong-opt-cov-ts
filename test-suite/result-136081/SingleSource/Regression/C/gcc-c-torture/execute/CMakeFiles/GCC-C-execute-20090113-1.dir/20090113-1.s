	.file	"20090113-1.c"
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function msum_i4
.LCPI0_0:
	.dword	0                               # 0x0
	.dword	1                               # 0x1
	.dword	0                               # 0x0
	.dword	0                               # 0x0
	.text
	.globl	msum_i4
	.p2align	5
	.type	msum_i4,@function
msum_i4:                                # @msum_i4
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
	ld.w	$s5, $a2, 0
	move	$fp, $a1
	addi.w	$a2, $s5, -1
	slli.d	$a1, $a2, 3
	alsl.d	$a1, $a2, $a1, 2
	add.d	$a1, $fp, $a1
	ld.w	$s2, $a1, 20
	ld.w	$s3, $a1, 16
	move	$s0, $a0
	sub.d	$a0, $s2, $s3
	ori	$a3, $zero, 2
	addi.w	$s1, $a0, 1
                                        # implicit-def: $r5
                                        # implicit-def: $r11
	blt	$s5, $a3, .LBB0_8
# %bb.1:                                # %.lr.ph.preheader
	bstrpick.d	$s4, $a2, 31, 0
	slli.d	$a2, $s4, 2
	addi.d	$a0, $sp, 32
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 9
	move	$a0, $zero
	bltu	$s5, $a1, .LBB0_5
# %bb.2:                                # %vector.ph
	bstrpick.d	$a0, $s4, 30, 3
	slli.d	$a0, $a0, 3
	addi.d	$a1, $fp, 52
	addi.d	$a2, $sp, 4
	move	$a3, $a0
	.p2align	4, , 16
.LBB0_3:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a1, -32
	ld.w	$a5, $a1, -20
	ld.w	$a6, $a1, -8
	ld.w	$a7, $a1, 4
	ld.w	$t0, $a1, 16
	ld.w	$t1, $a1, 28
	ld.w	$t2, $a1, 40
	ld.w	$t3, $a1, 52
	xvinsgr2vr.w	$xr0, $a4, 0
	xvinsgr2vr.w	$xr0, $a5, 1
	xvinsgr2vr.w	$xr0, $a6, 2
	xvinsgr2vr.w	$xr0, $a7, 3
	xvinsgr2vr.w	$xr0, $t0, 4
	xvinsgr2vr.w	$xr0, $t1, 5
	xvinsgr2vr.w	$xr0, $t2, 6
	xvinsgr2vr.w	$xr0, $t3, 7
	ld.w	$a4, $a1, -36
	ld.w	$a5, $a1, -24
	ld.w	$a6, $a1, -12
	ld.w	$a7, $a1, 0
	ld.w	$t0, $a1, 12
	ld.w	$t1, $a1, 24
	ld.w	$t2, $a1, 36
	ld.w	$t3, $a1, 48
	xvinsgr2vr.w	$xr1, $a4, 0
	xvinsgr2vr.w	$xr1, $a5, 1
	xvinsgr2vr.w	$xr1, $a6, 2
	xvinsgr2vr.w	$xr1, $a7, 3
	xvinsgr2vr.w	$xr1, $t0, 4
	xvinsgr2vr.w	$xr1, $t1, 5
	xvinsgr2vr.w	$xr1, $t2, 6
	xvinsgr2vr.w	$xr1, $t3, 7
	xvsub.w	$xr0, $xr0, $xr1
	xvaddi.wu	$xr0, $xr0, 1
	xvst	$xr0, $a2, 0
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 32
	addi.d	$a1, $a1, 96
	bnez	$a3, .LBB0_3
# %bb.4:                                # %middle.block
	beq	$a0, $s4, .LBB0_7
.LBB0_5:                                # %.lr.ph.preheader63
	addi.d	$a1, $sp, 4
	alsl.d	$a1, $a0, $a1, 2
	slli.d	$a2, $a0, 3
	alsl.d	$a2, $a0, $a2, 2
	add.d	$a2, $a2, $fp
	addi.d	$a2, $a2, 20
	sub.d	$a0, $s4, $a0
	.p2align	4, , 16
.LBB0_6:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	ld.w	$a4, $a2, -4
	sub.d	$a3, $a3, $a4
	addi.d	$a3, $a3, 1
	st.w	$a3, $a1, 0
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, -1
	addi.d	$a2, $a2, 12
	bnez	$a0, .LBB0_6
.LBB0_7:                                # %._crit_edge.loopexit
	ld.w	$a7, $sp, 4
	ld.w	$a1, $sp, 32
.LBB0_8:                                # %._crit_edge
	ld.d	$a0, $s0, 0
	blez	$s1, .LBB0_19
# %bb.9:                                # %.lr.ph34.us.preheader
	ld.d	$t2, $fp, 0
	bstrpick.d	$a3, $s1, 30, 4
	slli.d	$a2, $a3, 4
	slli.d	$a3, $a3, 6
	nor	$a4, $s2, $zero
	add.d	$a4, $a4, $s3
	ori	$a5, $zero, 16
	ori	$a6, $zero, 0
	pcalau12i	$t0, %pc_hi20(.LCPI0_0)
	xvld	$xr0, $t0, %pc_lo12(.LCPI0_0)
	lu32i.d	$a6, 1
	addi.w	$a7, $a7, 0
	xvrepli.b	$xr1, 0
	b	.LBB0_11
	.p2align	4, , 16
.LBB0_10:                               # %._crit_edge35.us
                                        #   in Loop: Header=BB0_11 Depth=1
	st.w	$t1, $a0, 0
	addi.w	$a1, $a1, 1
	st.w	$a1, $sp, 32
	addi.d	$a0, $a0, 4
	move	$t2, $t0
	beq	$a1, $a7, .LBB0_18
.LBB0_11:                               # %.lr.ph34.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_14 Depth 2
                                        #     Child Loop BB0_17 Depth 2
	bgeu	$s1, $a5, .LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	move	$t1, $zero
	move	$t3, $zero
	move	$t0, $t2
	b	.LBB0_16
	.p2align	4, , 16
.LBB0_13:                               # %vector.ph47
                                        #   in Loop: Header=BB0_11 Depth=1
	add.d	$t0, $t2, $a3
	addi.d	$t1, $t2, 32
	move	$t2, $a2
	xvori.b	$xr2, $xr1, 0
	xvori.b	$xr3, $xr1, 0
	.p2align	4, , 16
.LBB0_14:                               # %vector.body50
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr4, $t1, -32
	xvld	$xr5, $t1, 0
	xvadd.w	$xr2, $xr4, $xr2
	xvadd.w	$xr3, $xr5, $xr3
	addi.d	$t2, $t2, -16
	addi.d	$t1, $t1, 64
	bnez	$t2, .LBB0_14
# %bb.15:                               # %middle.block55
                                        #   in Loop: Header=BB0_11 Depth=1
	xvadd.w	$xr2, $xr3, $xr2
	xvpermi.d	$xr3, $xr2, 78
	xvori.b	$xr4, $xr0, 0
	xvshuf.d	$xr4, $xr0, $xr3
	xvadd.w	$xr2, $xr2, $xr4
	xvpermi.d	$xr3, $xr2, 68
	xvrepl128vei.d	$xr3, $xr3, 1
	xvadd.w	$xr2, $xr2, $xr3
	xvpermi.d	$xr3, $xr2, 68
	xvrepl128vei.w	$xr3, $xr3, 1
	xvadd.w	$xr2, $xr2, $xr3
	xvpickve2gr.w	$t1, $xr2, 0
	move	$t3, $a2
	beq	$a2, $s1, .LBB0_10
.LBB0_16:                               # %scalar.ph45.preheader
                                        #   in Loop: Header=BB0_11 Depth=1
	add.w	$t2, $a4, $t3
	.p2align	4, , 16
.LBB0_17:                               # %scalar.ph45
                                        #   Parent Loop BB0_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t0, 0
	add.d	$t1, $t3, $t1
	bstrpick.d	$t2, $t2, 31, 0
	addi.d	$t2, $t2, 1
	and	$t3, $t2, $a6
	addi.d	$t0, $t0, 4
	beqz	$t3, .LBB0_17
	b	.LBB0_10
.LBB0_18:                               # %.split38.us
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
.LBB0_19:                               # %.split.preheader
	nor	$a1, $a1, $zero
	add.d	$a1, $a7, $a1
	bstrpick.d	$a1, $a1, 31, 0
	slli.d	$a1, $a1, 2
	addi.d	$a2, $a1, 4
	move	$a1, $zero
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 120                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 128
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.Lfunc_end0:
	.size	msum_i4, .Lfunc_end0-msum_i4
                                        # -- End function
	.globl	main                            # -- Begin function main
	.p2align	5
	.type	main,@function
main:                                   # @main
# %bb.0:                                # %.lr.ph34.us.i.preheader
	move	$a0, $zero
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
	.addrsig
