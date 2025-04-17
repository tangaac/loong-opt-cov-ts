	.file	"Parser_utils.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	_ZN2PP12Parser_utilsC2Ei        # -- Begin function _ZN2PP12Parser_utilsC2Ei
	.p2align	5
	.type	_ZN2PP12Parser_utilsC2Ei,@function
_ZN2PP12Parser_utilsC2Ei:               # @_ZN2PP12Parser_utilsC2Ei
# %bb.0:
	pcalau12i	$a0, %pc_hi20(_ZN2PPL10index_baseE)
	st.w	$a1, $a0, %pc_lo12(_ZN2PPL10index_baseE)
	ret
.Lfunc_end0:
	.size	_ZN2PP12Parser_utilsC2Ei, .Lfunc_end0-_ZN2PP12Parser_utilsC2Ei
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_
.LCPI1_0:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI1_1:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.text
	.globl	_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_
	.p2align	5
	.type	_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_,@function
_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_: # @_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_
# %bb.0:
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a1, 0
	sub.d	$a0, $a0, $a1
	srli.d	$a4, $a0, 2
	addi.w	$a5, $a4, 0
	beqz	$a5, .LBB1_17
# %bb.1:
	ld.w	$a0, $a1, 0
	pcalau12i	$a3, %pc_hi20(_ZN2PPL10index_baseE)
	ld.w	$a3, $a3, %pc_lo12(_ZN2PPL10index_baseE)
	ori	$a6, $zero, 2
	sub.w	$a0, $a0, $a3
	blt	$a5, $a6, .LBB1_18
# %bb.2:                                # %.lr.ph
	ld.d	$a2, $a2, 0
	bstrpick.d	$a4, $a4, 30, 0
	addi.d	$a5, $a2, 32
	ori	$a6, $zero, 1
	ori	$a7, $zero, 3
	ori	$t0, $zero, 16
	vinsgr2vr.w	$vr0, $a6, 0
	pcalau12i	$t1, %pc_hi20(.LCPI1_1)
	vld	$vr1, $t1, %pc_lo12(.LCPI1_1)
	pcalau12i	$t1, %pc_hi20(.LCPI1_0)
	xvld	$xr2, $t1, %pc_lo12(.LCPI1_0)
	xvinsgr2vr.w	$xr3, $a6, 0
	xvpermi.d	$xr3, $xr3, 68
	xvrepli.w	$xr4, 1
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                # %.loopexit45
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.d	$a6, $a6, 1
	add.w	$a0, $t2, $a0
	beq	$a6, $a4, .LBB1_18
.LBB1_4:                                # %iter.check
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_9 Depth 2
                                        #     Child Loop BB1_13 Depth 2
                                        #     Child Loop BB1_16 Depth 2
	slli.d	$t1, $a6, 2
	ldx.w	$t1, $a1, $t1
	sub.d	$t2, $t1, $a3
	bltu	$a7, $a6, .LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	move	$t1, $zero
	b	.LBB1_15
	.p2align	4, , 16
.LBB1_6:                                # %vector.main.loop.iter.check
                                        #   in Loop: Header=BB1_4 Depth=1
	bgeu	$a6, $t0, .LBB1_8
# %bb.7:                                #   in Loop: Header=BB1_4 Depth=1
	move	$t1, $zero
	b	.LBB1_12
	.p2align	4, , 16
.LBB1_8:                                # %vector.ph
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$t3, $a6
	bstrins.d	$t3, $zero, 3, 0
	bstrpick.d	$t1, $a6, 62, 4
	slli.d	$t1, $t1, 4
	xvinsgr2vr.w	$xr5, $t2, 0
	xvpermi.d	$xr6, $xr5, 68
	xvori.b	$xr5, $xr2, 0
	xvshuf.w	$xr5, $xr3, $xr6
	move	$t2, $a5
	xvori.b	$xr6, $xr4, 0
	.p2align	4, , 16
.LBB1_9:                                # %vector.body
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr7, $t2, -32
	xvld	$xr8, $t2, 0
	xvmul.w	$xr5, $xr7, $xr5
	xvmul.w	$xr6, $xr8, $xr6
	addi.d	$t3, $t3, -16
	addi.d	$t2, $t2, 64
	bnez	$t3, .LBB1_9
# %bb.10:                               # %middle.block
                                        #   in Loop: Header=BB1_4 Depth=1
	xvmul.w	$xr5, $xr6, $xr5
	xvpermi.d	$xr6, $xr5, 78
	xvshuf4i.w	$xr6, $xr6, 228
	xvmul.w	$xr5, $xr5, $xr6
	xvpermi.d	$xr6, $xr5, 68
	xvshuf4i.w	$xr6, $xr6, 14
	xvmul.w	$xr5, $xr5, $xr6
	xvpermi.d	$xr6, $xr5, 68
	xvrepl128vei.w	$xr6, $xr6, 1
	xvmul.w	$xr5, $xr5, $xr6
	xvpickve2gr.w	$t2, $xr5, 0
	beq	$a6, $t1, .LBB1_3
# %bb.11:                               # %vec.epilog.iter.check
                                        #   in Loop: Header=BB1_4 Depth=1
	andi	$t3, $a6, 12
	beqz	$t3, .LBB1_15
.LBB1_12:                               # %vec.epilog.ph
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$t3, $a6
	bstrins.d	$t3, $zero, 1, 0
	bstrpick.d	$t5, $a6, 62, 2
	sub.d	$t3, $t1, $t3
	alsl.d	$t4, $t1, $a2, 2
	slli.d	$t1, $t5, 2
	vinsgr2vr.w	$vr6, $t2, 0
	vori.b	$vr5, $vr1, 0
	vshuf.w	$vr5, $vr0, $vr6
	.p2align	4, , 16
.LBB1_13:                               # %vec.epilog.vector.body
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr6, $t4, 0
	vmul.w	$vr5, $vr6, $vr5
	addi.d	$t3, $t3, 4
	addi.d	$t4, $t4, 16
	bnez	$t3, .LBB1_13
# %bb.14:                               # %vec.epilog.middle.block
                                        #   in Loop: Header=BB1_4 Depth=1
	vshuf4i.w	$vr6, $vr5, 14
	vmul.w	$vr5, $vr5, $vr6
	vreplvei.w	$vr6, $vr5, 1
	vmul.w	$vr5, $vr5, $vr6
	vpickve2gr.w	$t2, $vr5, 0
	beq	$a6, $t1, .LBB1_3
.LBB1_15:                               # %vec.epilog.scalar.ph.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	alsl.d	$t3, $t1, $a2, 2
	.p2align	4, , 16
.LBB1_16:                               # %vec.epilog.scalar.ph
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t4, $t3, 0
	mul.d	$t2, $t4, $t2
	addi.d	$t1, $t1, 1
	addi.d	$t3, $t3, 4
	bne	$a6, $t1, .LBB1_16
	b	.LBB1_3
.LBB1_17:
	move	$a0, $zero
.LBB1_18:                               # %.loopexit
	ret
.Lfunc_end1:
	.size	_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_, .Lfunc_end1-_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_
                                        # -- End function
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	5, 0x0                          # -- Begin function _ZN2PP12Parser_utils11reverse_dexEiiRSt6vectorIiSaIiEERKS3_
.LCPI2_0:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_1:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.text
	.globl	_ZN2PP12Parser_utils11reverse_dexEiiRSt6vectorIiSaIiEERKS3_
	.p2align	5
	.type	_ZN2PP12Parser_utils11reverse_dexEiiRSt6vectorIiSaIiEERKS3_,@function
_ZN2PP12Parser_utils11reverse_dexEiiRSt6vectorIiSaIiEERKS3_: # @_ZN2PP12Parser_utils11reverse_dexEiiRSt6vectorIiSaIiEERKS3_
# %bb.0:
	ld.d	$a5, $a3, 8
	ld.d	$a0, $a3, 0
	sub.d	$a7, $a5, $a0
	srli.d	$t0, $a7, 2
	addi.w	$a3, $t0, 0
	beqz	$a3, .LBB2_45
# %bb.1:                                # %.preheader53
	addi.d	$sp, $sp, -64
	st.d	$fp, $sp, 56                    # 8-byte Folded Spill
	st.d	$s0, $sp, 48                    # 8-byte Folded Spill
	st.d	$s1, $sp, 40                    # 8-byte Folded Spill
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	st.d	$s4, $sp, 16                    # 8-byte Folded Spill
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	bstrpick.d	$a5, $t0, 30, 0
	pcalau12i	$a6, %pc_hi20(.LCPI2_0)
	blez	$a3, .LBB2_4
# %bb.2:                                # %iter.check
	pcalau12i	$t1, %pc_hi20(_ZN2PPL10index_baseE)
	ld.w	$t2, $t1, %pc_lo12(_ZN2PPL10index_baseE)
	ori	$t3, $zero, 3
	bltu	$t3, $a5, .LBB2_5
# %bb.3:
	move	$t3, $zero
	b	.LBB2_14
.LBB2_4:                                # %._crit_edge.thread
	ld.w	$t1, $a0, 0
	pcalau12i	$t2, %pc_hi20(_ZN2PPL10index_baseE)
	ld.w	$t2, $t2, %pc_lo12(_ZN2PPL10index_baseE)
	sub.w	$t1, $t1, $t2
	b	.LBB2_17
.LBB2_5:                                # %vector.main.loop.iter.check
	ori	$t3, $zero, 16
	bgeu	$a5, $t3, .LBB2_7
# %bb.6:
	move	$t3, $zero
	b	.LBB2_11
.LBB2_7:                                # %vector.ph
	bstrpick.d	$t3, $t0, 30, 4
	slli.d	$t3, $t3, 4
	xvreplgr2vr.w	$xr0, $t2
	addi.d	$t4, $a0, 32
	move	$t5, $t3
	.p2align	4, , 16
.LBB2_8:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $t4, -32
	xvst	$xr0, $t4, 0
	addi.d	$t5, $t5, -16
	addi.d	$t4, $t4, 64
	bnez	$t5, .LBB2_8
# %bb.9:                                # %middle.block
	beq	$a5, $t3, .LBB2_16
# %bb.10:                               # %vec.epilog.iter.check
	andi	$t4, $a7, 48
	beqz	$t4, .LBB2_14
.LBB2_11:                               # %vec.epilog.ph
	move	$t5, $t3
	bstrpick.d	$t3, $t0, 30, 2
	slli.d	$t3, $t3, 2
	vreplgr2vr.w	$vr0, $t2
	sub.d	$t4, $t5, $t3
	alsl.d	$t5, $t5, $a0, 2
	.p2align	4, , 16
.LBB2_12:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $t5, 0
	addi.d	$t4, $t4, 4
	addi.d	$t5, $t5, 16
	bnez	$t4, .LBB2_12
# %bb.13:                               # %vec.epilog.middle.block
	beq	$a5, $t3, .LBB2_16
.LBB2_14:                               # %vec.epilog.scalar.ph.preheader
	alsl.d	$t4, $t3, $a0, 2
	sub.d	$t3, $t3, $a5
	.p2align	4, , 16
.LBB2_15:                               # %vec.epilog.scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$t2, $t4, 0
	addi.d	$t3, $t3, 1
	addi.d	$t4, $t4, 4
	bnez	$t3, .LBB2_15
.LBB2_16:                               # %._crit_edge
	ld.w	$t4, $a0, 0
	ld.w	$t2, $t1, %pc_lo12(_ZN2PPL10index_baseE)
	ori	$t3, $zero, 1
	sub.w	$t1, $t4, $t2
	bne	$a3, $t3, .LBB2_46
.LBB2_17:                               # %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit
	beq	$t1, $a1, .LBB2_44
# %bb.18:                               # %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit
	ori	$t1, $zero, 1
	blt	$a2, $t1, .LBB2_44
# %bb.19:                               # %.preheader.lr.ph
	blt	$a3, $t1, .LBB2_44
# %bb.20:                               # %.preheader.us.preheader
	move	$t1, $zero
	pcalau12i	$t2, %pc_hi20(_ZN2PPL10index_baseE)
	ld.w	$t2, $t2, %pc_lo12(_ZN2PPL10index_baseE)
	ld.d	$t3, $a4, 0
	addi.d	$t0, $t0, -1
	bstrpick.d	$t0, $t0, 31, 0
	alsl.d	$t4, $t0, $a0, 2
	bstrpick.d	$a7, $a7, 32, 2
	slli.d	$a7, $a7, 2
	addi.d	$t5, $t3, 32
	ori	$t6, $zero, 4
	ori	$t7, $zero, 2
	ori	$t8, $zero, 16
	pcalau12i	$fp, %pc_hi20(.LCPI2_1)
	vld	$vr0, $fp, %pc_lo12(.LCPI2_1)
	ori	$fp, $zero, 1
	vinsgr2vr.w	$vr1, $fp, 0
	xvinsgr2vr.w	$xr2, $fp, 0
	xvpermi.d	$xr2, $xr2, 68
	xvrepli.w	$xr3, 1
	.p2align	4, , 16
.LBB2_21:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_23 Depth 2
                                        #     Child Loop BB2_29 Depth 2
                                        #       Child Loop BB2_34 Depth 3
                                        #       Child Loop BB2_38 Depth 3
                                        #       Child Loop BB2_41 Depth 3
	beq	$a7, $t6, .LBB2_25
# %bb.22:                               #   in Loop: Header=BB2_21 Depth=1
	ld.d	$s0, $a4, 0
	move	$fp, $a0
	move	$s1, $t0
	.p2align	4, , 16
.LBB2_23:                               # %.lr.ph117
                                        #   Parent Loop BB2_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s2, $fp, 0
	ld.w	$s3, $s0, 0
	bne	$s2, $s3, .LBB2_26
# %bb.24:                               #   in Loop: Header=BB2_23 Depth=2
	st.w	$t2, $fp, 0
	addi.d	$s1, $s1, -1
	addi.d	$s0, $s0, 4
	addi.d	$fp, $fp, 4
	bnez	$s1, .LBB2_23
.LBB2_25:                               # %._crit_edge118
                                        #   in Loop: Header=BB2_21 Depth=1
	ld.w	$fp, $t4, 0
	addi.d	$fp, $fp, 1
	st.w	$fp, $t4, 0
	ld.w	$fp, $a0, 0
	sub.w	$fp, $fp, $t2
	bge	$a3, $t7, .LBB2_27
	b	.LBB2_42
	.p2align	4, , 16
.LBB2_26:                               #   in Loop: Header=BB2_21 Depth=1
	addi.d	$s0, $s2, 1
	st.w	$s0, $fp, 0
	ld.w	$fp, $a0, 0
	sub.w	$fp, $fp, $t2
	blt	$a3, $t7, .LBB2_42
.LBB2_27:                               # %iter.check161.preheader
                                        #   in Loop: Header=BB2_21 Depth=1
	ori	$s0, $zero, 1
	b	.LBB2_29
	.p2align	4, , 16
.LBB2_28:                               # %.loopexit
                                        #   in Loop: Header=BB2_29 Depth=2
	addi.d	$s0, $s0, 1
	add.w	$fp, $s2, $fp
	beq	$s0, $a5, .LBB2_42
.LBB2_29:                               # %iter.check161
                                        #   Parent Loop BB2_21 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_34 Depth 3
                                        #       Child Loop BB2_38 Depth 3
                                        #       Child Loop BB2_41 Depth 3
	slli.d	$s1, $s0, 2
	ldx.w	$s1, $a0, $s1
	sub.d	$s2, $s1, $t2
	bgeu	$s0, $t6, .LBB2_31
# %bb.30:                               #   in Loop: Header=BB2_29 Depth=2
	move	$s1, $zero
	b	.LBB2_40
	.p2align	4, , 16
.LBB2_31:                               # %vector.main.loop.iter.check163
                                        #   in Loop: Header=BB2_29 Depth=2
	bgeu	$s0, $t8, .LBB2_33
# %bb.32:                               #   in Loop: Header=BB2_29 Depth=2
	move	$s1, $zero
	b	.LBB2_37
	.p2align	4, , 16
.LBB2_33:                               # %vector.ph164
                                        #   in Loop: Header=BB2_29 Depth=2
	move	$s3, $s0
	bstrins.d	$s3, $zero, 3, 0
	bstrpick.d	$s1, $s0, 62, 4
	xvld	$xr4, $a6, %pc_lo12(.LCPI2_0)
	slli.d	$s1, $s1, 4
	xvinsgr2vr.w	$xr5, $s2, 0
	xvpermi.d	$xr5, $xr5, 68
	xvshuf.w	$xr4, $xr2, $xr5
	move	$s2, $t5
	xvori.b	$xr5, $xr3, 0
	.p2align	4, , 16
.LBB2_34:                               # %vector.body167
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	xvld	$xr6, $s2, -32
	xvld	$xr7, $s2, 0
	xvmul.w	$xr4, $xr6, $xr4
	xvmul.w	$xr5, $xr7, $xr5
	addi.d	$s3, $s3, -16
	addi.d	$s2, $s2, 64
	bnez	$s3, .LBB2_34
# %bb.35:                               # %middle.block174
                                        #   in Loop: Header=BB2_29 Depth=2
	xvmul.w	$xr4, $xr5, $xr4
	xvpermi.d	$xr5, $xr4, 78
	xvshuf4i.w	$xr5, $xr5, 228
	xvmul.w	$xr4, $xr4, $xr5
	xvpermi.d	$xr5, $xr4, 68
	xvshuf4i.w	$xr5, $xr5, 14
	xvmul.w	$xr4, $xr4, $xr5
	xvpermi.d	$xr5, $xr4, 68
	xvrepl128vei.w	$xr5, $xr5, 1
	xvmul.w	$xr4, $xr4, $xr5
	xvpickve2gr.w	$s2, $xr4, 0
	beq	$s0, $s1, .LBB2_28
# %bb.36:                               # %vec.epilog.iter.check181
                                        #   in Loop: Header=BB2_29 Depth=2
	andi	$s3, $s0, 12
	beqz	$s3, .LBB2_40
.LBB2_37:                               # %vec.epilog.ph180
                                        #   in Loop: Header=BB2_29 Depth=2
	move	$s3, $s0
	bstrins.d	$s3, $zero, 1, 0
	bstrpick.d	$s5, $s0, 62, 2
	sub.d	$s3, $s1, $s3
	alsl.d	$s4, $s1, $t3, 2
	slli.d	$s1, $s5, 2
	vinsgr2vr.w	$vr5, $s2, 0
	vori.b	$vr4, $vr0, 0
	vshuf.w	$vr4, $vr1, $vr5
	.p2align	4, , 16
.LBB2_38:                               # %vec.epilog.vector.body186
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr5, $s4, 0
	vmul.w	$vr4, $vr5, $vr4
	addi.d	$s3, $s3, 4
	addi.d	$s4, $s4, 16
	bnez	$s3, .LBB2_38
# %bb.39:                               # %vec.epilog.middle.block191
                                        #   in Loop: Header=BB2_29 Depth=2
	vshuf4i.w	$vr5, $vr4, 14
	vmul.w	$vr4, $vr4, $vr5
	vreplvei.w	$vr5, $vr4, 1
	vmul.w	$vr4, $vr4, $vr5
	vpickve2gr.w	$s2, $vr4, 0
	beq	$s0, $s1, .LBB2_28
.LBB2_40:                               # %vec.epilog.scalar.ph179.preheader
                                        #   in Loop: Header=BB2_29 Depth=2
	alsl.d	$s3, $s1, $t3, 2
	.p2align	4, , 16
.LBB2_41:                               # %vec.epilog.scalar.ph179
                                        #   Parent Loop BB2_21 Depth=1
                                        #     Parent Loop BB2_29 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s4, $s3, 0
	mul.d	$s2, $s4, $s2
	addi.d	$s1, $s1, 1
	addi.d	$s3, $s3, 4
	bne	$s0, $s1, .LBB2_41
	b	.LBB2_28
	.p2align	4, , 16
.LBB2_42:                               # %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit50.us
                                        #   in Loop: Header=BB2_21 Depth=1
	beq	$fp, $a1, .LBB2_44
# %bb.43:                               # %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit50.us
                                        #   in Loop: Header=BB2_21 Depth=1
	addi.w	$t1, $t1, 1
	blt	$t1, $a2, .LBB2_21
.LBB2_44:
	ld.d	$s5, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s4, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
.LBB2_45:                               # %.loopexit52
	ret
.LBB2_46:                               # %.lr.ph.i
	ld.d	$t4, $a4, 0
	addi.d	$t5, $t4, 32
	ori	$t6, $zero, 3
	ori	$t7, $zero, 16
	vinsgr2vr.w	$vr0, $t3, 0
	pcalau12i	$t8, %pc_hi20(.LCPI2_1)
	vld	$vr1, $t8, %pc_lo12(.LCPI2_1)
	xvld	$xr2, $a6, %pc_lo12(.LCPI2_0)
	xvinsgr2vr.w	$xr3, $t3, 0
	xvpermi.d	$xr3, $xr3, 68
	xvrepli.w	$xr4, 1
	b	.LBB2_48
	.p2align	4, , 16
.LBB2_47:                               # %.loopexit195
                                        #   in Loop: Header=BB2_48 Depth=1
	addi.d	$t3, $t3, 1
	add.w	$t1, $fp, $t1
	beq	$t3, $a5, .LBB2_17
.LBB2_48:                               # %iter.check129
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_53 Depth 2
                                        #     Child Loop BB2_57 Depth 2
                                        #     Child Loop BB2_60 Depth 2
	slli.d	$t8, $t3, 2
	ldx.w	$t8, $a0, $t8
	sub.d	$fp, $t8, $t2
	bltu	$t6, $t3, .LBB2_50
# %bb.49:                               #   in Loop: Header=BB2_48 Depth=1
	move	$t8, $zero
	b	.LBB2_59
	.p2align	4, , 16
.LBB2_50:                               # %vector.main.loop.iter.check131
                                        #   in Loop: Header=BB2_48 Depth=1
	bgeu	$t3, $t7, .LBB2_52
# %bb.51:                               #   in Loop: Header=BB2_48 Depth=1
	move	$t8, $zero
	b	.LBB2_56
	.p2align	4, , 16
.LBB2_52:                               # %vector.ph132
                                        #   in Loop: Header=BB2_48 Depth=1
	move	$s0, $t3
	bstrins.d	$s0, $zero, 3, 0
	bstrpick.d	$t8, $t3, 62, 4
	slli.d	$t8, $t8, 4
	xvinsgr2vr.w	$xr5, $fp, 0
	xvpermi.d	$xr6, $xr5, 68
	xvori.b	$xr5, $xr2, 0
	xvshuf.w	$xr5, $xr3, $xr6
	move	$fp, $t5
	xvori.b	$xr6, $xr4, 0
	.p2align	4, , 16
.LBB2_53:                               # %vector.body135
                                        #   Parent Loop BB2_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	xvld	$xr7, $fp, -32
	xvld	$xr8, $fp, 0
	xvmul.w	$xr5, $xr7, $xr5
	xvmul.w	$xr6, $xr8, $xr6
	addi.d	$s0, $s0, -16
	addi.d	$fp, $fp, 64
	bnez	$s0, .LBB2_53
# %bb.54:                               # %middle.block140
                                        #   in Loop: Header=BB2_48 Depth=1
	xvmul.w	$xr5, $xr6, $xr5
	xvpermi.d	$xr6, $xr5, 78
	xvshuf4i.w	$xr6, $xr6, 228
	xvmul.w	$xr5, $xr5, $xr6
	xvpermi.d	$xr6, $xr5, 68
	xvshuf4i.w	$xr6, $xr6, 14
	xvmul.w	$xr5, $xr5, $xr6
	xvpermi.d	$xr6, $xr5, 68
	xvrepl128vei.w	$xr6, $xr6, 1
	xvmul.w	$xr5, $xr5, $xr6
	xvpickve2gr.w	$fp, $xr5, 0
	beq	$t3, $t8, .LBB2_47
# %bb.55:                               # %vec.epilog.iter.check145
                                        #   in Loop: Header=BB2_48 Depth=1
	andi	$s0, $t3, 12
	beqz	$s0, .LBB2_59
.LBB2_56:                               # %vec.epilog.ph144
                                        #   in Loop: Header=BB2_48 Depth=1
	move	$s0, $t3
	bstrins.d	$s0, $zero, 1, 0
	bstrpick.d	$s2, $t3, 62, 2
	sub.d	$s0, $t8, $s0
	alsl.d	$s1, $t8, $t4, 2
	slli.d	$t8, $s2, 2
	vinsgr2vr.w	$vr6, $fp, 0
	vori.b	$vr5, $vr1, 0
	vshuf.w	$vr5, $vr0, $vr6
	.p2align	4, , 16
.LBB2_57:                               # %vec.epilog.vector.body150
                                        #   Parent Loop BB2_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr6, $s1, 0
	vmul.w	$vr5, $vr6, $vr5
	addi.d	$s0, $s0, 4
	addi.d	$s1, $s1, 16
	bnez	$s0, .LBB2_57
# %bb.58:                               # %vec.epilog.middle.block155
                                        #   in Loop: Header=BB2_48 Depth=1
	vshuf4i.w	$vr6, $vr5, 14
	vmul.w	$vr5, $vr5, $vr6
	vreplvei.w	$vr6, $vr5, 1
	vmul.w	$vr5, $vr5, $vr6
	vpickve2gr.w	$fp, $vr5, 0
	beq	$t3, $t8, .LBB2_47
.LBB2_59:                               # %vec.epilog.scalar.ph143.preheader
                                        #   in Loop: Header=BB2_48 Depth=1
	alsl.d	$s0, $t8, $t4, 2
	.p2align	4, , 16
.LBB2_60:                               # %vec.epilog.scalar.ph143
                                        #   Parent Loop BB2_48 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s1, $s0, 0
	mul.d	$fp, $s1, $fp
	addi.d	$t8, $t8, 1
	addi.d	$s0, $s0, 4
	bne	$t3, $t8, .LBB2_60
	b	.LBB2_47
.Lfunc_end2:
	.size	_ZN2PP12Parser_utils11reverse_dexEiiRSt6vectorIiSaIiEERKS3_, .Lfunc_end2-_ZN2PP12Parser_utils11reverse_dexEiiRSt6vectorIiSaIiEERKS3_
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE
.LCPI3_0:
	.word	0                               # 0x0
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	4                               # 0x4
	.text
	.globl	_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE
	.p2align	5
	.type	_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE,@function
_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE: # @_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -320
	.cfi_def_cfa_offset 320
	st.d	$ra, $sp, 312                   # 8-byte Folded Spill
	st.d	$fp, $sp, 304                   # 8-byte Folded Spill
	st.d	$s0, $sp, 296                   # 8-byte Folded Spill
	st.d	$s1, $sp, 288                   # 8-byte Folded Spill
	st.d	$s2, $sp, 280                   # 8-byte Folded Spill
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	st.d	$s4, $sp, 264                   # 8-byte Folded Spill
	st.d	$s5, $sp, 256                   # 8-byte Folded Spill
	st.d	$s6, $sp, 248                   # 8-byte Folded Spill
	st.d	$s7, $sp, 240                   # 8-byte Folded Spill
	st.d	$s8, $sp, 232                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	.cfi_offset 30, -80
	.cfi_offset 31, -88
	move	$s0, $a1
	ld.d	$s6, $a1, 0
	ld.d	$a0, $s6, 8
	ld.d	$a1, $s6, 0
	sub.d	$a1, $a0, $a1
	slli.d	$a7, $a1, 27
	srai.d	$s4, $a7, 32
	srli.d	$a0, $s4, 61
	st.d	$a5, $sp, 88                    # 8-byte Folded Spill
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	bnez	$a0, .LBB3_200
# %bb.1:                                # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
	move	$s1, $a6
	move	$s3, $a4
	st.d	$a3, $sp, 48                    # 8-byte Folded Spill
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	srli.d	$s2, $a1, 5
	srai.d	$s5, $a7, 30
	st.d	$a7, $sp, 144                   # 8-byte Folded Spill
	beqz	$a7, .LBB3_3
# %bb.2:                                # %.noexc179
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a2, $s5
	bstrins.d	$a2, $zero, 1, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 104                   # 8-byte Folded Spill
	alsl.d	$a0, $s4, $fp, 2
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	b	.LBB3_4
.LBB3_3:
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
.LBB3_4:                                # %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 112                   # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 160                   # 8-byte Folded Spill
	ld.d	$s7, $s0, 8
	sub.d	$a0, $s7, $s6
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, -349526
	ori	$a1, $a1, 2731
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	mul.w	$a1, $a0, $a1
	ori	$a0, $zero, 1
	addi.w	$a2, $s2, 0
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	bstrpick.d	$a3, $s2, 30, 0
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	blt	$a1, $a0, .LBB3_21
# %bb.5:                                # %.preheader328.lr.ph
	blt	$a2, $a0, .LBB3_21
# %bb.6:                                # %.preheader328.us.preheader
	move	$s8, $zero
	addi.d	$s1, $sp, 216
	ori	$fp, $zero, 16
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	lu32i.d	$a0, -349526
	lu52i.d	$a0, $a0, -1366
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ori	$s5, $zero, 1
	b	.LBB3_8
	.p2align	4, , 16
.LBB3_7:                                # %._crit_edge.us
                                        #   in Loop: Header=BB3_8 Depth=1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s7, $a0, 8
	ld.d	$s6, $a0, 0
	addi.d	$s8, $s8, 1
	sub.d	$a0, $s7, $s6
	srli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	bge	$s8, $a0, .LBB3_21
.LBB3_8:                                # %.preheader328.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_10 Depth 2
	move	$s6, $zero
	slli.d	$a0, $s8, 4
	alsl.d	$s7, $s8, $a0, 3
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 104                   # 8-byte Folded Reload
	b	.LBB3_10
	.p2align	4, , 16
.LBB3_9:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us
                                        #   in Loop: Header=BB3_10 Depth=2
	addi.d	$s6, $s6, 32
	addi.d	$s4, $s4, -1
	addi.d	$s0, $s0, 4
	beqz	$s4, .LBB3_7
.LBB3_10:                               #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s7
	add.d	$a1, $a0, $s6
	st.d	$s1, $sp, 200
	ld.d	$s2, $a1, 8
	ldx.d	$s3, $a0, $s6
	st.d	$s2, $sp, 168
	move	$a0, $s1
	bltu	$s2, $fp, .LBB3_13
# %bb.11:                               # %.noexc.i.us
                                        #   in Loop: Header=BB3_10 Depth=2
.Ltmp0:
	addi.d	$a0, $sp, 200
	addi.d	$a1, $sp, 168
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1:
# %bb.12:                               # %.noexc190.us
                                        #   in Loop: Header=BB3_10 Depth=2
	ld.d	$a1, $sp, 168
	st.d	$a0, $sp, 200
	st.d	$a1, $sp, 216
.LBB3_13:                               # %._crit_edge.i.i.us
                                        #   in Loop: Header=BB3_10 Depth=2
	beqz	$s2, .LBB3_17
# %bb.14:                               # %._crit_edge.i.i.us
                                        #   in Loop: Header=BB3_10 Depth=2
	bne	$s2, $s5, .LBB3_16
# %bb.15:                               #   in Loop: Header=BB3_10 Depth=2
	ld.b	$a1, $s3, 0
	st.b	$a1, $a0, 0
	b	.LBB3_17
	.p2align	4, , 16
.LBB3_16:                               #   in Loop: Header=BB3_10 Depth=2
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_17:                               #   in Loop: Header=BB3_10 Depth=2
	ld.d	$a0, $sp, 168
	ld.d	$a1, $sp, 200
	st.d	$a0, $sp, 208
	stx.b	$zero, $a1, $a0
	ld.w	$a0, $sp, 208
	ld.w	$a1, $s0, 0
	bge	$a1, $a0, .LBB3_19
# %bb.18:                               #   in Loop: Header=BB3_10 Depth=2
	st.w	$a0, $s0, 0
.LBB3_19:                               #   in Loop: Header=BB3_10 Depth=2
	ld.d	$a0, $sp, 200
	beq	$a0, $s1, .LBB3_9
# %bb.20:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us
                                        #   in Loop: Header=BB3_10 Depth=2
	ld.d	$a1, $sp, 216
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_9
.LBB3_21:                               # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i180
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	beqz	$s5, .LBB3_24
# %bb.22:
.Ltmp3:
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp4:
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
# %bb.23:                               # %.noexc188
	move	$fp, $a0
	move	$a2, $s4
	bstrins.d	$a2, $zero, 1, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	alsl.d	$a0, $s2, $fp, 2
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ori	$a0, $zero, 1
	bge	$s3, $a0, .LBB3_25
	b	.LBB3_46
.LBB3_24:
	st.d	$zero, $sp, 128                 # 8-byte Folded Spill
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB3_46
.LBB3_25:                               # %.lr.ph.preheader
	ori	$a0, $zero, 8
	bgeu	$s8, $a0, .LBB3_27
# %bb.26:
	move	$a0, $zero
	b	.LBB3_51
.LBB3_27:                               # %vector.ph
	bstrpick.d	$a0, $fp, 30, 3
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 16
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	move	$a3, $a0
	b	.LBB3_29
	.p2align	4, , 16
.LBB3_28:                               # %pred.store.continue484
                                        #   in Loop: Header=BB3_29 Depth=1
	addi.d	$a3, $a3, -8
	addi.d	$a1, $a1, 32
	addi.d	$a2, $a2, 32
	beqz	$a3, .LBB3_45
.LBB3_29:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr0, $a2, 0
	xvld	$xr1, $a1, -16
	xvslt.w	$xr1, $xr1, $xr0
	xvpickve2gr.w	$a4, $xr1, 0
	andi	$a4, $a4, 1
	bnez	$a4, .LBB3_37
# %bb.30:                               # %pred.store.continue
                                        #   in Loop: Header=BB3_29 Depth=1
	xvpickve2gr.w	$a4, $xr1, 1
	andi	$a4, $a4, 1
	bnez	$a4, .LBB3_38
.LBB3_31:                               # %pred.store.continue472
                                        #   in Loop: Header=BB3_29 Depth=1
	xvpickve2gr.w	$a4, $xr1, 2
	andi	$a4, $a4, 1
	bnez	$a4, .LBB3_39
.LBB3_32:                               # %pred.store.continue474
                                        #   in Loop: Header=BB3_29 Depth=1
	xvpickve2gr.w	$a4, $xr1, 3
	andi	$a4, $a4, 1
	bnez	$a4, .LBB3_40
.LBB3_33:                               # %pred.store.continue476
                                        #   in Loop: Header=BB3_29 Depth=1
	xvpickve2gr.w	$a4, $xr1, 4
	andi	$a4, $a4, 1
	bnez	$a4, .LBB3_41
.LBB3_34:                               # %pred.store.continue478
                                        #   in Loop: Header=BB3_29 Depth=1
	xvpickve2gr.w	$a4, $xr1, 5
	andi	$a4, $a4, 1
	bnez	$a4, .LBB3_42
.LBB3_35:                               # %pred.store.continue480
                                        #   in Loop: Header=BB3_29 Depth=1
	xvpickve2gr.w	$a4, $xr1, 6
	andi	$a4, $a4, 1
	bnez	$a4, .LBB3_43
.LBB3_36:                               # %pred.store.continue482
                                        #   in Loop: Header=BB3_29 Depth=1
	xvpickve2gr.w	$a4, $xr1, 7
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_28
	b	.LBB3_44
	.p2align	4, , 16
.LBB3_37:                               # %pred.store.if
                                        #   in Loop: Header=BB3_29 Depth=1
	xvpickve2gr.w	$a4, $xr0, 0
	st.w	$a4, $a1, -16
	xvpickve2gr.w	$a4, $xr1, 1
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_31
.LBB3_38:                               # %pred.store.if471
                                        #   in Loop: Header=BB3_29 Depth=1
	xvpickve2gr.w	$a4, $xr0, 1
	st.w	$a4, $a1, -12
	xvpickve2gr.w	$a4, $xr1, 2
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_32
.LBB3_39:                               # %pred.store.if473
                                        #   in Loop: Header=BB3_29 Depth=1
	xvpickve2gr.w	$a4, $xr0, 2
	st.w	$a4, $a1, -8
	xvpickve2gr.w	$a4, $xr1, 3
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_33
.LBB3_40:                               # %pred.store.if475
                                        #   in Loop: Header=BB3_29 Depth=1
	xvpickve2gr.w	$a4, $xr0, 3
	st.w	$a4, $a1, -4
	xvpickve2gr.w	$a4, $xr1, 4
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_34
.LBB3_41:                               # %pred.store.if477
                                        #   in Loop: Header=BB3_29 Depth=1
	xvpickve2gr.w	$a4, $xr0, 4
	st.w	$a4, $a1, 0
	xvpickve2gr.w	$a4, $xr1, 5
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_35
.LBB3_42:                               # %pred.store.if479
                                        #   in Loop: Header=BB3_29 Depth=1
	xvpickve2gr.w	$a4, $xr0, 5
	st.w	$a4, $a1, 4
	xvpickve2gr.w	$a4, $xr1, 6
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_36
.LBB3_43:                               # %pred.store.if481
                                        #   in Loop: Header=BB3_29 Depth=1
	xvpickve2gr.w	$a4, $xr0, 6
	st.w	$a4, $a1, 8
	xvpickve2gr.w	$a4, $xr1, 7
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_28
.LBB3_44:                               # %pred.store.if483
                                        #   in Loop: Header=BB3_29 Depth=1
	xvpickve2gr.w	$a4, $xr0, 7
	st.w	$a4, $a1, 12
	b	.LBB3_28
.LBB3_45:                               # %middle.block
	bne	$s8, $a0, .LBB3_51
.LBB3_46:                               # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i191
	beqz	$s5, .LBB3_55
# %bb.47:
.Ltmp6:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp7:
# %bb.48:                               # %iter.check
	addi.d	$a2, $s4, -4
	ori	$a0, $zero, 12
	alsl.d	$a4, $s2, $a1, 2
	move	$a5, $a1
	bltu	$a2, $a0, .LBB3_64
# %bb.49:                               # %vector.main.loop.iter.check
	move	$a6, $a4
	srli.d	$a0, $a2, 2
	ori	$a1, $zero, 60
	addi.d	$a0, $a0, 1
	bgeu	$a2, $a1, .LBB3_56
# %bb.50:
	move	$a2, $zero
	b	.LBB3_60
.LBB3_51:                               # %.lr.ph.preheader555
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 2
	sub.d	$a0, $a0, $s8
	b	.LBB3_53
	.p2align	4, , 16
.LBB3_52:                               #   in Loop: Header=BB3_53 Depth=1
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	beqz	$a0, .LBB3_46
.LBB3_53:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a2, 0
	bge	$a4, $a3, .LBB3_52
# %bb.54:                               #   in Loop: Header=BB3_53 Depth=1
	st.w	$a3, $a2, 0
	b	.LBB3_52
.LBB3_55:
	move	$a5, $zero
	move	$a4, $zero
	b	.LBB3_65
.LBB3_56:                               # %vector.ph489
	bstrpick.d	$a1, $a0, 62, 4
	slli.d	$a2, $a1, 4
	xvreplgr2vr.w	$xr0, $s1
	addi.d	$a1, $a5, 32
	move	$a3, $a2
	.p2align	4, , 16
.LBB3_57:                               # %vector.body492
                                        # =>This Inner Loop Header: Depth=1
	xvst	$xr0, $a1, -32
	xvst	$xr0, $a1, 0
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, 64
	bnez	$a3, .LBB3_57
# %bb.58:                               # %middle.block495
	move	$a4, $a6
	beq	$a0, $a2, .LBB3_65
# %bb.59:                               # %vec.epilog.iter.check
	andi	$a1, $a0, 12
	beqz	$a1, .LBB3_63
.LBB3_60:                               # %vec.epilog.ph
	bstrpick.d	$a1, $a0, 62, 2
	slli.d	$a3, $a1, 2
	alsl.d	$a1, $a1, $a5, 4
	vreplgr2vr.w	$vr0, $s1
	alsl.d	$a4, $a2, $a5, 2
	sub.d	$a2, $a2, $a3
	.p2align	4, , 16
.LBB3_61:                               # %vec.epilog.vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a4, 0
	addi.d	$a2, $a2, 4
	addi.d	$a4, $a4, 16
	bnez	$a2, .LBB3_61
# %bb.62:                               # %vec.epilog.middle.block
	move	$a4, $a6
	bne	$a0, $a3, .LBB3_64
	b	.LBB3_65
.LBB3_63:
	alsl.d	$a1, $a2, $a5, 2
	move	$a4, $a6
	.p2align	4, , 16
.LBB3_64:                               # %.lr.ph.i.i.i.i.i.i.i.i.i193
                                        # =>This Inner Loop Header: Depth=1
	st.w	$s1, $a1, 0
	addi.d	$a1, $a1, 4
	bne	$a1, $a4, .LBB3_64
.LBB3_65:                               # %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit200
	st.d	$a5, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.w	$a0, $a5, 0
	ori	$a1, $zero, 1
	addi.w	$a6, $fp, -1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	st.d	$a4, $sp, 40                    # 8-byte Folded Spill
	st.d	$a6, $sp, 112                   # 8-byte Folded Spill
	blt	$a0, $a1, .LBB3_138
# %bb.66:                               # %.preheader327
	blt	$s3, $a1, .LBB3_69
# %bb.67:                               # %iter.check509
	ori	$a0, $zero, 3
	bltu	$a0, $s8, .LBB3_70
# %bb.68:
	move	$a0, $zero
	move	$a1, $zero
	b	.LBB3_79
.LBB3_69:
	move	$a1, $zero
	b	.LBB3_81
.LBB3_70:                               # %vector.main.loop.iter.check511
	ori	$a0, $zero, 16
	bgeu	$s8, $a0, .LBB3_72
# %bb.71:
	move	$a0, $zero
	move	$a1, $zero
	b	.LBB3_76
.LBB3_72:                               # %vector.ph512
	bstrpick.d	$a0, $fp, 30, 4
	slli.d	$a0, $a0, 4
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 32
	xvrepli.b	$xr0, 0
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 32
	move	$a3, $a0
	xvori.b	$xr1, $xr0, 0
	.p2align	4, , 16
.LBB3_73:                               # %vector.body515
                                        # =>This Inner Loop Header: Depth=1
	xvld	$xr2, $a2, -32
	xvld	$xr3, $a2, 0
	xvld	$xr4, $a1, -32
	xvld	$xr5, $a1, 0
	xvadd.w	$xr0, $xr2, $xr0
	xvadd.w	$xr1, $xr3, $xr1
	xvadd.w	$xr0, $xr0, $xr4
	xvadd.w	$xr1, $xr1, $xr5
	addi.d	$a3, $a3, -16
	addi.d	$a1, $a1, 64
	addi.d	$a2, $a2, 64
	bnez	$a3, .LBB3_73
# %bb.74:                               # %middle.block523
	xvadd.w	$xr0, $xr1, $xr0
	xvpermi.d	$xr1, $xr0, 78
	xvshuf4i.w	$xr1, $xr1, 228
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvshuf4i.w	$xr1, $xr1, 14
	xvadd.w	$xr0, $xr0, $xr1
	xvpermi.d	$xr1, $xr0, 68
	xvrepl128vei.w	$xr1, $xr1, 1
	xvadd.w	$xr0, $xr0, $xr1
	xvpickve2gr.w	$a1, $xr0, 0
	beq	$s8, $a0, .LBB3_81
# %bb.75:                               # %vec.epilog.iter.check528
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	andi	$a2, $a2, 384
	beqz	$a2, .LBB3_79
.LBB3_76:                               # %vec.epilog.ph527
	move	$a3, $a0
	bstrpick.d	$a0, $fp, 30, 2
	pcalau12i	$a2, %pc_hi20(.LCPI3_0)
	vld	$vr0, $a2, %pc_lo12(.LCPI3_0)
	slli.d	$a0, $a0, 2
	vinsgr2vr.w	$vr1, $a1, 0
	vinsgr2vr.w	$vr2, $zero, 0
	vshuf.w	$vr0, $vr2, $vr1
	sub.d	$a1, $a3, $a0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a2, $a3, $a2, 2
	ld.d	$a4, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a3, $a3, $a4, 2
	.p2align	4, , 16
.LBB3_77:                               # %vec.epilog.vector.body533
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a3, 0
	vld	$vr2, $a2, 0
	vadd.w	$vr0, $vr1, $vr0
	vadd.w	$vr0, $vr0, $vr2
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 16
	addi.d	$a3, $a3, 16
	bnez	$a1, .LBB3_77
# %bb.78:                               # %vec.epilog.middle.block539
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a1, $vr0, 0
	beq	$s8, $a0, .LBB3_81
.LBB3_79:                               # %.lr.ph359.preheader
	ld.d	$a2, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 2
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$a3, $a0, $a3, 2
	sub.d	$a0, $a0, $s8
	.p2align	4, , 16
.LBB3_80:                               # %.lr.ph359
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	ld.w	$a5, $a3, 0
	add.d	$a1, $a4, $a1
	add.d	$a1, $a1, $a5
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 4
	bnez	$a0, .LBB3_80
.LBB3_81:                               # %._crit_edge
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	sub.w	$a0, $a1, $a0
	blez	$a0, .LBB3_138
# %bb.82:
	slli.d	$a1, $a6, 2
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	ldx.w	$a2, $a3, $a1
	sub.d	$a0, $a2, $a0
	sub.d	$a2, $s7, $s6
	srli.d	$a2, $a2, 3
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	mul.w	$a2, $a2, $a4
	ori	$a5, $zero, 1
	stx.w	$a0, $a3, $a1
	blt	$a2, $a5, .LBB3_138
# %bb.83:                               # %.preheader315.lr.ph
	move	$a1, $zero
	addi.d	$s4, $sp, 216
	bstrpick.d	$s5, $a6, 31, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a0, $s5, $a0, 2
	st.d	$a0, $sp, 144                   # 8-byte Folded Spill
	move	$a0, $a4
	lu32i.d	$a0, -349526
	lu52i.d	$a0, $a0, -1366
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	b	.LBB3_86
	.p2align	4, , 16
.LBB3_84:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219
                                        #   in Loop: Header=BB3_86 Depth=1
	ld.d	$s6, $s0, 0
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
.LBB3_85:                               #   in Loop: Header=BB3_86 Depth=1
	ld.d	$s7, $s0, 8
	addi.d	$a1, $a1, 1
	sub.d	$a0, $s7, $s6
	srli.d	$a0, $a0, 3
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	mul.w	$a0, $a0, $a2
	bge	$a1, $a0, .LBB3_138
.LBB3_86:                               # %.preheader315
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_89 Depth 2
	slli.d	$a2, $a1, 4
	ori	$a0, $zero, 1
	st.d	$a1, $sp, 96                    # 8-byte Folded Spill
	blt	$s3, $a0, .LBB3_103
# %bb.87:                               # %.lr.ph362.preheader
                                        #   in Loop: Header=BB3_86 Depth=1
	move	$s2, $zero
	move	$s3, $zero
	move	$fp, $zero
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	alsl.d	$s0, $a1, $a2, 3
	ld.d	$s8, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 152                   # 8-byte Folded Reload
	b	.LBB3_89
	.p2align	4, , 16
.LBB3_88:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207
                                        #   in Loop: Header=BB3_89 Depth=2
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 32
	addi.d	$s1, $s1, 4
	addi.d	$s8, $s8, 4
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$a0, $s3, .LBB3_102
.LBB3_89:                               # %.lr.ph362
                                        #   Parent Loop BB3_86 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s0
	add.d	$a1, $a0, $s2
	st.d	$s4, $sp, 200
	ld.d	$s6, $a1, 8
	ldx.d	$s7, $a0, $s2
	st.d	$s6, $sp, 168
	move	$a0, $s4
	ori	$a1, $zero, 16
	bltu	$s6, $a1, .LBB3_92
# %bb.90:                               # %.noexc.i202
                                        #   in Loop: Header=BB3_89 Depth=2
.Ltmp9:
	addi.d	$a0, $sp, 200
	addi.d	$a1, $sp, 168
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp10:
# %bb.91:                               # %.noexc203
                                        #   in Loop: Header=BB3_89 Depth=2
	ld.d	$a1, $sp, 168
	st.d	$a0, $sp, 200
	st.d	$a1, $sp, 216
.LBB3_92:                               # %._crit_edge.i.i201
                                        #   in Loop: Header=BB3_89 Depth=2
	beqz	$s6, .LBB3_96
# %bb.93:                               # %._crit_edge.i.i201
                                        #   in Loop: Header=BB3_89 Depth=2
	ori	$a1, $zero, 1
	bne	$s6, $a1, .LBB3_95
# %bb.94:                               #   in Loop: Header=BB3_89 Depth=2
	ld.b	$a1, $s7, 0
	st.b	$a1, $a0, 0
	b	.LBB3_96
	.p2align	4, , 16
.LBB3_95:                               #   in Loop: Header=BB3_89 Depth=2
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_96:                               #   in Loop: Header=BB3_89 Depth=2
	ld.d	$a0, $sp, 168
	ld.d	$a1, $sp, 200
	st.d	$a0, $sp, 208
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	blt	$s3, $a0, .LBB3_99
# %bb.97:                               #   in Loop: Header=BB3_89 Depth=2
	beq	$s5, $s3, .LBB3_100
.LBB3_98:                               #   in Loop: Header=BB3_89 Depth=2
	ld.d	$a0, $sp, 200
	bne	$a0, $s4, .LBB3_101
	b	.LBB3_88
	.p2align	4, , 16
.LBB3_99:                               #   in Loop: Header=BB3_89 Depth=2
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s8, 0
	add.d	$a0, $a0, $fp
	add.w	$fp, $a0, $a1
	bne	$s5, $s3, .LBB3_98
.LBB3_100:                              #   in Loop: Header=BB3_89 Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.w	$a1, $sp, 208
	add.d	$a0, $a0, $fp
	add.w	$fp, $a0, $a1
	ld.d	$a0, $sp, 200
	beq	$a0, $s4, .LBB3_88
.LBB3_101:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205
                                        #   in Loop: Header=BB3_89 Depth=2
	ld.d	$a1, $sp, 216
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_88
	.p2align	4, , 16
.LBB3_102:                              # %._crit_edge363.loopexit
                                        #   in Loop: Header=BB3_86 Depth=1
	ld.d	$s0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $s0, 0
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	bge	$a0, $fp, .LBB3_85
	b	.LBB3_104
	.p2align	4, , 16
.LBB3_103:                              #   in Loop: Header=BB3_86 Depth=1
	move	$fp, $zero
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	bge	$a0, $fp, .LBB3_85
.LBB3_104:                              #   in Loop: Header=BB3_86 Depth=1
	alsl.d	$s2, $a1, $a2, 3
	ldx.d	$a0, $s6, $s2
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	slli.d	$s1, $a1, 5
	add.d	$a1, $a0, $s1
	addi.d	$a2, $sp, 216
	st.d	$a2, $sp, 200
	ld.d	$s6, $a1, 8
	ldx.d	$s7, $a0, $s1
	st.d	$s6, $sp, 168
	move	$a0, $a2
	ori	$a1, $zero, 16
	bltu	$s6, $a1, .LBB3_107
# %bb.105:                              # %.noexc.i209
                                        #   in Loop: Header=BB3_86 Depth=1
.Ltmp12:
	addi.d	$a0, $sp, 200
	addi.d	$a1, $sp, 168
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp13:
# %bb.106:                              # %.noexc210
                                        #   in Loop: Header=BB3_86 Depth=1
	ld.d	$a1, $sp, 168
	st.d	$a0, $sp, 200
	st.d	$a1, $sp, 216
.LBB3_107:                              # %._crit_edge.i.i208
                                        #   in Loop: Header=BB3_86 Depth=1
	beqz	$s6, .LBB3_111
# %bb.108:                              # %._crit_edge.i.i208
                                        #   in Loop: Header=BB3_86 Depth=1
	ori	$a1, $zero, 1
	bne	$s6, $a1, .LBB3_110
# %bb.109:                              #   in Loop: Header=BB3_86 Depth=1
	ld.b	$a1, $s7, 0
	st.b	$a1, $a0, 0
	b	.LBB3_111
.LBB3_110:                              #   in Loop: Header=BB3_86 Depth=1
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_111:                              #   in Loop: Header=BB3_86 Depth=1
	ld.d	$a0, $sp, 168
	ld.d	$a1, $sp, 200
	st.d	$a0, $sp, 208
	stx.b	$zero, $a1, $a0
	ld.d	$a3, $sp, 208
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	sub.d	$a0, $fp, $a0
	sub.w	$a1, $a3, $a0
	ori	$a4, $zero, 4
	slt	$a2, $a4, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a4, $a2
	or	$a1, $a1, $a2
	addi.w	$a1, $a1, -4
	bltu	$a3, $a1, .LBB3_198
# %bb.112:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
                                        #   in Loop: Header=BB3_86 Depth=1
	addi.w	$a2, $a3, 0
	addi.w	$a0, $a0, 4
	slt	$a4, $a0, $a2
	maskeqz	$a0, $a0, $a4
	masknez	$a2, $a2, $a4
	or	$a0, $a0, $a2
	beqz	$a0, .LBB3_116
# %bb.113:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
                                        #   in Loop: Header=BB3_86 Depth=1
	addi.w	$a2, $zero, -1
	bne	$a0, $a2, .LBB3_115
# %bb.114:                              #   in Loop: Header=BB3_86 Depth=1
	ld.d	$a0, $sp, 200
	st.d	$a1, $sp, 208
	stx.b	$zero, $a0, $a1
	b	.LBB3_116
.LBB3_115:                              #   in Loop: Header=BB3_86 Depth=1
	sub.d	$a2, $a3, $a1
	sltu	$a3, $a0, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a0, $a0, $a3
	or	$a2, $a0, $a2
.Ltmp15:
	addi.d	$a0, $sp, 200
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm)
	jirl	$ra, $ra, 0
.Ltmp16:
.LBB3_116:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
                                        #   in Loop: Header=BB3_86 Depth=1
	ld.d	$s6, $sp, 200
	ld.d	$s7, $sp, 208
	addi.d	$a0, $sp, 184
	st.d	$a0, $sp, 168
	st.d	$zero, $sp, 176
	st.b	$zero, $sp, 184
	addi.d	$a1, $s7, 4
.Ltmp18:
	addi.d	$a0, $sp, 168
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp19:
# %bb.117:                              #   in Loop: Header=BB3_86 Depth=1
	ld.d	$a0, $sp, 176
	addi.w	$fp, $zero, -1
	lu52i.d	$a1, $fp, 1023
	sub.d	$a0, $a1, $a0
	bltu	$a0, $s7, .LBB3_196
# %bb.118:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
                                        #   in Loop: Header=BB3_86 Depth=1
.Ltmp20:
	addi.d	$a0, $sp, 168
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp21:
# %bb.119:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
                                        #   in Loop: Header=BB3_86 Depth=1
	ld.d	$a0, $sp, 176
	srli.d	$a0, $a0, 2
	lu52i.d	$a1, $fp, 255
	beq	$a0, $a1, .LBB3_196
# %bb.120:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
                                        #   in Loop: Header=BB3_86 Depth=1
.Ltmp22:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a0, $sp, 168
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp23:
# %bb.121:                              # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
                                        #   in Loop: Header=BB3_86 Depth=1
	ld.d	$a0, $s0, 0
	ldx.d	$a1, $a0, $s2
	ldx.d	$a0, $a1, $s1
	add.d	$fp, $a1, $s1
	addi.d	$a1, $fp, 16
	beq	$a0, $a1, .LBB3_125
# %bb.122:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
                                        #   in Loop: Header=BB3_86 Depth=1
	ld.d	$a1, $sp, 168
	addi.d	$s1, $sp, 184
	beq	$a1, $s1, .LBB3_128
# %bb.123:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
                                        #   in Loop: Header=BB3_86 Depth=1
	st.d	$a1, $fp, 0
	ld.d	$a1, $sp, 176
	st.d	$a1, $fp, 8
	ld.d	$a2, $sp, 184
	ld.d	$a1, $fp, 16
	st.d	$a2, $fp, 16
	beqz	$a0, .LBB3_127
# %bb.124:                              #   in Loop: Header=BB3_86 Depth=1
	st.d	$a0, $sp, 168
	st.d	$a1, $sp, 184
	st.d	$zero, $sp, 176
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 168
	bne	$a0, $s1, .LBB3_134
	b	.LBB3_135
.LBB3_125:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
                                        #   in Loop: Header=BB3_86 Depth=1
	ld.d	$a1, $sp, 168
	addi.d	$s1, $sp, 184
	beq	$a1, $s1, .LBB3_128
# %bb.126:                              # %.thread.i
                                        #   in Loop: Header=BB3_86 Depth=1
	st.d	$a1, $fp, 0
	ld.d	$a0, $sp, 176
	st.d	$a0, $fp, 8
	ld.d	$a0, $sp, 184
	st.d	$a0, $fp, 16
.LBB3_127:                              #   in Loop: Header=BB3_86 Depth=1
	st.d	$s1, $sp, 168
	move	$a0, $s1
	st.d	$zero, $sp, 176
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 168
	bne	$a0, $s1, .LBB3_134
	b	.LBB3_135
.LBB3_128:                              #   in Loop: Header=BB3_86 Depth=1
	addi.d	$a2, $sp, 168
	beq	$a2, $fp, .LBB3_137
# %bb.129:                              #   in Loop: Header=BB3_86 Depth=1
	ld.d	$a2, $sp, 176
	beqz	$a2, .LBB3_133
# %bb.130:                              #   in Loop: Header=BB3_86 Depth=1
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB3_132
# %bb.131:                              #   in Loop: Header=BB3_86 Depth=1
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB3_133
.LBB3_132:                              #   in Loop: Header=BB3_86 Depth=1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_133:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
                                        #   in Loop: Header=BB3_86 Depth=1
	ld.d	$a0, $sp, 176
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 168
	st.d	$zero, $sp, 176
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 168
	beq	$a0, $s1, .LBB3_135
.LBB3_134:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214
                                        #   in Loop: Header=BB3_86 Depth=1
	ld.d	$a1, $sp, 184
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_135:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216
                                        #   in Loop: Header=BB3_86 Depth=1
	ld.d	$a0, $sp, 200
	addi.d	$a1, $sp, 216
	beq	$a0, $a1, .LBB3_84
# %bb.136:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217
                                        #   in Loop: Header=BB3_86 Depth=1
	ld.d	$a1, $sp, 216
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_84
.LBB3_137:                              #   in Loop: Header=BB3_86 Depth=1
	move	$a0, $a1
	st.d	$zero, $sp, 176
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 168
	bne	$a0, $s1, .LBB3_134
	b	.LBB3_135
.LBB3_138:                              # %.loopexit316
	sub.d	$a0, $s7, $s6
	srli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB3_189
# %bb.139:                              # %.lr.ph393
	move	$a2, $zero
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	addi.d	$s5, $a0, 16
	addi.d	$a3, $a0, 256
	st.d	$a3, $sp, 72                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 32
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s4, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s6, $a0, %pc_lo12(.L.str.2)
	lu32i.d	$a1, -349526
	lu52i.d	$a0, $a1, -1366
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB3_140:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_144 Depth 2
                                        #       Child Loop BB3_146 Depth 3
                                        #       Child Loop BB3_150 Depth 3
                                        #     Child Loop BB3_162 Depth 2
                                        #       Child Loop BB3_167 Depth 3
                                        #       Child Loop BB3_170 Depth 3
                                        #       Child Loop BB3_179 Depth 3
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	bne	$a2, $a0, .LBB3_159
# %bb.141:                              # %.preheader314
                                        #   in Loop: Header=BB3_140 Depth=1
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB3_152
# %bb.142:                              # %.preheader313.preheader
                                        #   in Loop: Header=BB3_140 Depth=1
	move	$s0, $zero
	b	.LBB3_144
	.p2align	4, , 16
.LBB3_143:                              # %._crit_edge371
                                        #   in Loop: Header=BB3_144 Depth=2
	addi.d	$s0, $s0, 1
	beq	$s0, $s8, .LBB3_152
.LBB3_144:                              # %.preheader313
                                        #   Parent Loop BB3_140 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_146 Depth 3
                                        #       Child Loop BB3_150 Depth 3
	slli.d	$s1, $s0, 2
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $s1
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB3_148
# %bb.145:                              # %.lr.ph367.preheader
                                        #   in Loop: Header=BB3_144 Depth=2
	move	$s2, $zero
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$fp, $s0, $a0, 2
	.p2align	4, , 16
.LBB3_146:                              # %.lr.ph367
                                        #   Parent Loop BB3_140 Depth=1
                                        #     Parent Loop BB3_144 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp25:
	ori	$a2, $zero, 1
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp26:
# %bb.147:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
                                        #   in Loop: Header=BB3_146 Depth=3
	ld.w	$a0, $fp, 0
	addi.w	$s2, $s2, 1
	blt	$s2, $a0, .LBB3_146
.LBB3_148:                              # %.preheader312
                                        #   in Loop: Header=BB3_144 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $s1
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB3_143
# %bb.149:                              # %.lr.ph370.preheader
                                        #   in Loop: Header=BB3_144 Depth=2
	move	$s1, $zero
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	alsl.d	$fp, $s0, $a0, 2
	.p2align	4, , 16
.LBB3_150:                              # %.lr.ph370
                                        #   Parent Loop BB3_140 Depth=1
                                        #     Parent Loop BB3_144 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp28:
	ori	$a2, $zero, 1
	move	$a0, $s5
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp29:
# %bb.151:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230
                                        #   in Loop: Header=BB3_150 Depth=3
	ld.w	$a0, $fp, 0
	addi.w	$s1, $s1, 1
	blt	$s1, $a0, .LBB3_150
	b	.LBB3_143
	.p2align	4, , 16
.LBB3_152:                              # %._crit_edge373
                                        #   in Loop: Header=BB3_140 Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a0, $a0, -24
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ldx.d	$s7, $a1, $a0
	beqz	$s7, .LBB3_194
# %bb.153:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
                                        #   in Loop: Header=BB3_140 Depth=1
	ld.bu	$a0, $s7, 56
	beqz	$a0, .LBB3_155
# %bb.154:                              #   in Loop: Header=BB3_140 Depth=1
	ld.bu	$a0, $s7, 67
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	b	.LBB3_157
.LBB3_155:                              #   in Loop: Header=BB3_140 Depth=1
.Ltmp31:
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp32:
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
# %bb.156:                              # %.noexc252
                                        #   in Loop: Header=BB3_140 Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
.Ltmp33:
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
.Ltmp34:
.LBB3_157:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
                                        #   in Loop: Header=BB3_140 Depth=1
.Ltmp35:
	ext.w.b	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp36:
# %bb.158:                              # %.noexc254
                                        #   in Loop: Header=BB3_140 Depth=1
.Ltmp37:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp38:
.LBB3_159:                              # %_ZNSolsEPFRSoS_E.exit
                                        #   in Loop: Header=BB3_140 Depth=1
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB3_181
# %bb.160:                              # %.lr.ph389
                                        #   in Loop: Header=BB3_140 Depth=1
	move	$s7, $zero
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	slli.d	$a0, $a1, 4
	alsl.d	$s8, $a1, $a0, 3
	b	.LBB3_162
	.p2align	4, , 16
.LBB3_161:                              # %._crit_edge383
                                        #   in Loop: Header=BB3_162 Depth=2
	addi.d	$s7, $s7, 1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$s7, $a0, .LBB3_181
.LBB3_162:                              #   Parent Loop BB3_140 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_167 Depth 3
                                        #       Child Loop BB3_170 Depth 3
                                        #       Child Loop BB3_179 Depth 3
	slli.d	$a0, $s7, 2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	bge	$a2, $a1, .LBB3_164
# %bb.163:                              #   in Loop: Header=BB3_162 Depth=2
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldx.d	$a1, $a1, $s8
	slli.d	$a2, $s7, 5
	add.d	$a1, $a1, $a2
	ld.d	$s3, $a1, 8
	b	.LBB3_165
	.p2align	4, , 16
.LBB3_164:                              #   in Loop: Header=BB3_162 Depth=2
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ldx.w	$s3, $a1, $a0
.LBB3_165:                              #   in Loop: Header=BB3_162 Depth=2
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ldx.w	$s0, $a2, $a0
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB3_169
# %bb.166:                              # %.lr.ph376.preheader
                                        #   in Loop: Header=BB3_162 Depth=2
	move	$s1, $zero
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$s2, $s7, $a0, 2
	.p2align	4, , 16
.LBB3_167:                              # %.lr.ph376
                                        #   Parent Loop BB3_140 Depth=1
                                        #     Parent Loop BB3_162 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp39:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp40:
# %bb.168:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234
                                        #   in Loop: Header=BB3_167 Depth=3
	ld.w	$a0, $s2, 0
	addi.w	$s1, $s1, 1
	blt	$s1, $a0, .LBB3_167
.LBB3_169:                              # %.preheader
                                        #   in Loop: Header=BB3_162 Depth=2
	sub.w	$s1, $s0, $s3
	bstrpick.d	$fp, $s1, 31, 1
	move	$s2, $fp
	ori	$a0, $zero, 2
	blt	$s1, $a0, .LBB3_172
	.p2align	4, , 16
.LBB3_170:                              # %.lr.ph378.split
                                        #   Parent Loop BB3_140 Depth=1
                                        #     Parent Loop BB3_162 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp42:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp43:
# %bb.171:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236
                                        #   in Loop: Header=BB3_170 Depth=3
	addi.w	$s2, $s2, -1
	bnez	$s2, .LBB3_170
.LBB3_172:                              # %._crit_edge379
                                        #   in Loop: Header=BB3_162 Depth=2
	move	$a0, $s7
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	blt	$a2, $a1, .LBB3_176
# %bb.173:                              #   in Loop: Header=BB3_162 Depth=2
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bge	$s7, $a0, .LBB3_175
# %bb.174:                              #   in Loop: Header=BB3_162 Depth=2
	ld.d	$a0, $s5, 0
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a1, $s7, $a1, 2
	ld.w	$a1, $a1, 0
	ld.d	$a0, $a0, -24
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	stx.d	$a1, $a2, $a0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s8
	slli.d	$a1, $s7, 5
	add.d	$a2, $a0, $a1
	ldx.d	$a1, $a0, $a1
	ld.d	$a2, $a2, 8
.Ltmp45:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp46:
.LBB3_175:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
                                        #   in Loop: Header=BB3_162 Depth=2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	move	$a0, $a1
	bne	$s7, $a1, .LBB3_177
.LBB3_176:                              # %.invoke454
                                        #   in Loop: Header=BB3_162 Depth=2
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldx.d	$a1, $a1, $s8
	slli.d	$a0, $a0, 5
	add.d	$a2, $a1, $a0
	ldx.d	$a1, $a1, $a0
	ld.d	$a2, $a2, 8
.Ltmp47:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp48:
.LBB3_177:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit239
                                        #   in Loop: Header=BB3_162 Depth=2
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB3_161
# %bb.178:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit239
                                        #   in Loop: Header=BB3_162 Depth=2
	add.d	$a0, $s3, $fp
	sub.w	$s0, $s0, $a0
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB3_161
	.p2align	4, , 16
.LBB3_179:                              # %.lr.ph382.split
                                        #   Parent Loop BB3_140 Depth=1
                                        #     Parent Loop BB3_162 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp50:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp51:
# %bb.180:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243
                                        #   in Loop: Header=BB3_179 Depth=3
	addi.w	$s0, $s0, -1
	bnez	$s0, .LBB3_179
	b	.LBB3_161
	.p2align	4, , 16
.LBB3_181:                              # %._crit_edge390
                                        #   in Loop: Header=BB3_140 Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a0, $a0, -24
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ldx.d	$s7, $a1, $a0
	ld.d	$fp, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	beqz	$s7, .LBB3_194
# %bb.182:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i257
                                        #   in Loop: Header=BB3_140 Depth=1
	ld.bu	$a0, $s7, 56
	beqz	$a0, .LBB3_184
# %bb.183:                              #   in Loop: Header=BB3_140 Depth=1
	ld.bu	$a0, $s7, 67
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
	b	.LBB3_186
	.p2align	4, , 16
.LBB3_184:                              #   in Loop: Header=BB3_140 Depth=1
.Ltmp53:
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp54:
	ld.d	$s3, $sp, 80                    # 8-byte Folded Reload
# %bb.185:                              # %.noexc262
                                        #   in Loop: Header=BB3_140 Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
.Ltmp55:
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
.Ltmp56:
.LBB3_186:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i259
                                        #   in Loop: Header=BB3_140 Depth=1
.Ltmp57:
	ext.w.b	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp58:
# %bb.187:                              # %.noexc264
                                        #   in Loop: Header=BB3_140 Depth=1
.Ltmp59:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp60:
# %bb.188:                              # %_ZNSolsEPFRSoS_E.exit232
                                        #   in Loop: Header=BB3_140 Depth=1
	ld.d	$a0, $fp, 8
	ld.d	$a1, $fp, 0
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	sub.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	blt	$a2, $a0, .LBB3_140
.LBB3_189:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_191
# %bb.190:
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_191:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit224
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_193
# %bb.192:
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_193:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit226
	ld.d	$s8, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 296                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 304                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 312                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 320
	ret
.LBB3_194:                              # %.invoke
.Ltmp62:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp63:
# %bb.195:                              # %.cont
.LBB3_196:                              # %.invoke.i.i
.Ltmp65:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp66:
# %bb.197:                              # %.cont.i.i
.LBB3_198:
.Ltmp68:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a4, %pc_hi20(.L.str.4)
	move	$a2, $a1
	addi.d	$a1, $a4, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(_ZSt24__throw_out_of_range_fmtPKcz)
	jirl	$ra, $ra, 0
.Ltmp69:
# %bb.199:                              # %.noexc212
.LBB3_200:                              # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB3_201:
.Ltmp8:
	move	$s0, $a0
	b	.LBB3_225
.LBB3_202:
.Ltmp5:
	move	$s0, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_227
	b	.LBB3_229
.LBB3_203:                              # %.loopexit317
.Ltmp17:
	b	.LBB3_206
.LBB3_204:
.Ltmp14:
	b	.LBB3_223
.LBB3_205:                              # %.loopexit.split-lp318
.Ltmp70:
.LBB3_206:
	move	$s0, $a0
	b	.LBB3_211
.LBB3_207:                              # %.loopexit.split-lp323
.Ltmp67:
	b	.LBB3_209
.LBB3_208:                              # %.loopexit322
.Ltmp24:
.LBB3_209:
	move	$s0, $a0
	ld.d	$a0, $sp, 168
	addi.d	$a1, $sp, 184
	beq	$a0, $a1, .LBB3_211
# %bb.210:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
	ld.d	$a1, $sp, 184
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_211:
	ld.d	$a0, $sp, 200
	addi.d	$a1, $sp, 216
	beq	$a0, $a1, .LBB3_224
# %bb.212:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220
	ld.d	$a1, $sp, 216
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_224
.LBB3_213:                              # %.loopexit.split-lp
.Ltmp64:
	b	.LBB3_223
.LBB3_214:
.Ltmp11:
	b	.LBB3_223
.LBB3_215:                              # %.loopexit
.Ltmp61:
	b	.LBB3_223
.LBB3_216:                              # %.split.us
.Ltmp2:
	move	$s0, $a0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_227
	b	.LBB3_229
.LBB3_217:
.Ltmp49:
	b	.LBB3_223
.LBB3_218:
.Ltmp30:
	b	.LBB3_223
.LBB3_219:
.Ltmp27:
	b	.LBB3_223
.LBB3_220:                              # %.split385
.Ltmp52:
	b	.LBB3_223
.LBB3_221:                              # %.split
.Ltmp44:
	b	.LBB3_223
.LBB3_222:
.Ltmp41:
.LBB3_223:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit245
	move	$s0, $a0
.LBB3_224:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit245
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_225:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_228
# %bb.226:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit247
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_229
.LBB3_227:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit249
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_228:
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_227
.LBB3_229:
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE, .Lfunc_end3-_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Lfunc_begin0-.Lfunc_begin0    # >> Call Site 1 <<
	.uleb128 .Ltmp0-.Lfunc_begin0           #   Call between .Lfunc_begin0 and .Ltmp0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp3-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp6-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp7-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp7
	.uleb128 .Ltmp8-.Lfunc_begin0           #     jumps to .Ltmp8
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 7 <<
	.uleb128 .Ltmp10-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp10
	.uleb128 .Ltmp11-.Lfunc_begin0          #     jumps to .Ltmp11
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp12-.Ltmp10                #   Call between .Ltmp10 and .Ltmp12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.uleb128 .Ltmp14-.Lfunc_begin0          #     jumps to .Ltmp14
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp15-.Ltmp13                #   Call between .Ltmp13 and .Ltmp15
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp23-.Ltmp18                #   Call between .Ltmp18 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin0          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp25-.Ltmp23                #   Call between .Ltmp23 and .Ltmp25
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin0          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin0          #     jumps to .Ltmp30
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp38-.Ltmp31                #   Call between .Ltmp31 and .Ltmp38
	.uleb128 .Ltmp61-.Lfunc_begin0          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin0          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin0          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp48-.Ltmp45                #   Call between .Ltmp45 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin0          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin0          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp60-.Ltmp53                #   Call between .Ltmp53 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin0          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp62-.Ltmp60                #   Call between .Ltmp60 and .Ltmp62
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin0          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.uleb128 .Ltmp67-.Lfunc_begin0          #     jumps to .Ltmp67
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp70-.Lfunc_begin0          #     jumps to .Ltmp70
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Lfunc_end3-.Ltmp69            #   Call between .Ltmp69 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.type	_ZN2PPL10index_baseE,@object    # @_ZN2PPL10index_baseE
	.data
	.p2align	2, 0x0
_ZN2PPL10index_baseE:
	.word	1                               # 0x1
	.size	_ZN2PPL10index_baseE, 4

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	" ..."
	.size	.L.str, 5

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	" "
	.size	.L.str.1, 2

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"-"
	.size	.L.str.2, 2

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str.3, 49

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"basic_string::erase"
	.size	.L.str.4, 20

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"%s: __pos (which is %zu) > this->size() (which is %zu)"
	.size	.L.str.5, 55

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"basic_string::append"
	.size	.L.str.6, 21

	.globl	_ZN2PP12Parser_utilsC1Ei
	.type	_ZN2PP12Parser_utilsC1Ei,@function
.set _ZN2PP12Parser_utilsC1Ei, _ZN2PP12Parser_utilsC2Ei
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.p2align	3, 0x0
	.type	DW.ref.__gxx_personality_v0,@object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.dword	__gxx_personality_v0
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Unwind_Resume
