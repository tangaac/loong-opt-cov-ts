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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_
.LCPI1_0:
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
	beqz	$a5, .LBB1_11
# %bb.1:
	ld.w	$a0, $a1, 0
	pcalau12i	$a3, %pc_hi20(_ZN2PPL10index_baseE)
	ld.w	$a3, $a3, %pc_lo12(_ZN2PPL10index_baseE)
	ori	$a6, $zero, 2
	sub.w	$a0, $a0, $a3
	blt	$a5, $a6, .LBB1_12
# %bb.2:                                # %.lr.ph
	ld.d	$a2, $a2, 0
	bstrpick.d	$a4, $a4, 30, 0
	addi.d	$a5, $a2, 16
	ori	$a6, $zero, 1
	pcalau12i	$a7, %pc_hi20(.LCPI1_0)
	vld	$vr0, $a7, %pc_lo12(.LCPI1_0)
	ori	$a7, $zero, 8
	vinsgr2vr.w	$vr1, $a6, 0
	vrepli.w	$vr2, 1
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                # %.loopexit36
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.d	$a6, $a6, 1
	add.w	$a0, $t1, $a0
	beq	$a6, $a4, .LBB1_12
.LBB1_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_7 Depth 2
                                        #     Child Loop BB1_10 Depth 2
	slli.d	$t0, $a6, 2
	ldx.w	$t0, $a1, $t0
	sub.d	$t1, $t0, $a3
	bgeu	$a6, $a7, .LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_4 Depth=1
	move	$t0, $zero
	b	.LBB1_9
	.p2align	4, , 16
.LBB1_6:                                # %vector.ph
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$t2, $a6
	bstrins.d	$t2, $zero, 2, 0
	bstrpick.d	$t0, $a6, 62, 3
	slli.d	$t0, $t0, 3
	vinsgr2vr.w	$vr4, $t1, 0
	vori.b	$vr3, $vr0, 0
	vshuf.w	$vr3, $vr1, $vr4
	move	$t1, $a5
	vori.b	$vr4, $vr2, 0
	.p2align	4, , 16
.LBB1_7:                                # %vector.body
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr5, $t1, -16
	vld	$vr6, $t1, 0
	vmul.w	$vr3, $vr5, $vr3
	vmul.w	$vr4, $vr6, $vr4
	addi.d	$t2, $t2, -8
	addi.d	$t1, $t1, 32
	bnez	$t2, .LBB1_7
# %bb.8:                                # %middle.block
                                        #   in Loop: Header=BB1_4 Depth=1
	vmul.w	$vr3, $vr4, $vr3
	vshuf4i.w	$vr4, $vr3, 14
	vmul.w	$vr3, $vr3, $vr4
	vreplvei.w	$vr4, $vr3, 1
	vmul.w	$vr3, $vr3, $vr4
	vpickve2gr.w	$t1, $vr3, 0
	beq	$a6, $t0, .LBB1_3
.LBB1_9:                                # %scalar.ph.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	alsl.d	$t2, $t0, $a2, 2
	.p2align	4, , 16
.LBB1_10:                               # %scalar.ph
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t3, $t2, 0
	mul.d	$t1, $t3, $t1
	addi.d	$t0, $t0, 1
	addi.d	$t2, $t2, 4
	bne	$a6, $t0, .LBB1_10
	b	.LBB1_3
.LBB1_11:
	move	$a0, $zero
.LBB1_12:                               # %.loopexit
	ret
.Lfunc_end1:
	.size	_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_, .Lfunc_end1-_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN2PP12Parser_utils11reverse_dexEiiRSt6vectorIiSaIiEERKS3_
.LCPI2_0:
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
	sub.d	$a6, $a5, $a0
	srli.d	$a7, $a6, 2
	addi.w	$a3, $a7, 0
	beqz	$a3, .LBB2_33
# %bb.1:                                # %.preheader53
	addi.d	$sp, $sp, -48
	st.d	$fp, $sp, 40                    # 8-byte Folded Spill
	st.d	$s0, $sp, 32                    # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$t0, %pc_hi20(_ZN2PPL10index_baseE)
	bstrpick.d	$a5, $a7, 30, 0
	blez	$a3, .LBB2_4
# %bb.2:                                # %.lr.ph
	ld.w	$t1, $t0, %pc_lo12(_ZN2PPL10index_baseE)
	ori	$t2, $zero, 8
	bgeu	$a5, $t2, .LBB2_5
# %bb.3:
	move	$t2, $zero
	b	.LBB2_8
.LBB2_4:                                # %._crit_edge.thread
	ld.w	$t1, $a0, 0
	ld.w	$t2, $t0, %pc_lo12(_ZN2PPL10index_baseE)
	sub.w	$t1, $t1, $t2
	b	.LBB2_11
.LBB2_5:                                # %vector.ph
	bstrpick.d	$t2, $a7, 30, 3
	slli.d	$t2, $t2, 3
	vreplgr2vr.w	$vr0, $t1
	addi.d	$t3, $a0, 16
	move	$t4, $t2
	.p2align	4, , 16
.LBB2_6:                                # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $t3, -16
	vst	$vr0, $t3, 0
	addi.d	$t4, $t4, -8
	addi.d	$t3, $t3, 32
	bnez	$t4, .LBB2_6
# %bb.7:                                # %middle.block
	beq	$a5, $t2, .LBB2_10
.LBB2_8:                                # %scalar.ph.preheader
	alsl.d	$t3, $t2, $a0, 2
	sub.d	$t2, $t2, $a5
	.p2align	4, , 16
.LBB2_9:                                # %scalar.ph
                                        # =>This Inner Loop Header: Depth=1
	st.w	$t1, $t3, 0
	addi.d	$t2, $t2, 1
	addi.d	$t3, $t3, 4
	bnez	$t2, .LBB2_9
.LBB2_10:                               # %._crit_edge
	ld.w	$t1, $a0, 0
	ld.w	$t2, $t0, %pc_lo12(_ZN2PPL10index_baseE)
	ori	$t3, $zero, 1
	sub.w	$t1, $t1, $t2
	bne	$a3, $t3, .LBB2_34
.LBB2_11:                               # %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit
	beq	$t1, $a1, .LBB2_32
# %bb.12:                               # %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit
	ori	$t1, $zero, 1
	blt	$a2, $t1, .LBB2_32
# %bb.13:                               # %.preheader.lr.ph
	blt	$a3, $t1, .LBB2_32
# %bb.14:                               # %.preheader.us.preheader
	move	$t1, $zero
	ld.w	$t0, $t0, %pc_lo12(_ZN2PPL10index_baseE)
	ld.d	$t2, $a4, 0
	addi.d	$a7, $a7, -1
	bstrpick.d	$a7, $a7, 31, 0
	alsl.d	$t3, $a7, $a0, 2
	bstrpick.d	$a6, $a6, 32, 2
	slli.d	$a6, $a6, 2
	addi.d	$t4, $t2, 16
	ori	$t5, $zero, 4
	ori	$t6, $zero, 2
	pcalau12i	$t7, %pc_hi20(.LCPI2_0)
	vld	$vr0, $t7, %pc_lo12(.LCPI2_0)
	ori	$t7, $zero, 1
	vinsgr2vr.w	$vr1, $t7, 0
	ori	$t7, $zero, 8
	vrepli.w	$vr2, 1
	.p2align	4, , 16
.LBB2_15:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_17 Depth 2
                                        #     Child Loop BB2_23 Depth 2
                                        #       Child Loop BB2_26 Depth 3
                                        #       Child Loop BB2_29 Depth 3
	beq	$a6, $t5, .LBB2_19
# %bb.16:                               #   in Loop: Header=BB2_15 Depth=1
	ld.d	$fp, $a4, 0
	move	$t8, $a0
	move	$s0, $a7
	.p2align	4, , 16
.LBB2_17:                               # %.lr.ph117
                                        #   Parent Loop BB2_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s1, $t8, 0
	ld.w	$s2, $fp, 0
	bne	$s1, $s2, .LBB2_20
# %bb.18:                               #   in Loop: Header=BB2_17 Depth=2
	st.w	$t0, $t8, 0
	addi.d	$s0, $s0, -1
	addi.d	$fp, $fp, 4
	addi.d	$t8, $t8, 4
	bnez	$s0, .LBB2_17
.LBB2_19:                               # %._crit_edge118
                                        #   in Loop: Header=BB2_15 Depth=1
	ld.w	$t8, $t3, 0
	addi.d	$t8, $t8, 1
	st.w	$t8, $t3, 0
	ld.w	$t8, $a0, 0
	sub.w	$t8, $t8, $t0
	bge	$a3, $t6, .LBB2_21
	b	.LBB2_30
	.p2align	4, , 16
.LBB2_20:                               #   in Loop: Header=BB2_15 Depth=1
	addi.d	$fp, $s1, 1
	st.w	$fp, $t8, 0
	ld.w	$t8, $a0, 0
	sub.w	$t8, $t8, $t0
	blt	$a3, $t6, .LBB2_30
.LBB2_21:                               # %.lr.ph.i40.us.preheader
                                        #   in Loop: Header=BB2_15 Depth=1
	ori	$fp, $zero, 1
	b	.LBB2_23
	.p2align	4, , 16
.LBB2_22:                               # %.loopexit
                                        #   in Loop: Header=BB2_23 Depth=2
	addi.d	$fp, $fp, 1
	add.w	$t8, $s1, $t8
	beq	$fp, $a5, .LBB2_30
.LBB2_23:                               # %.lr.ph.i40.us
                                        #   Parent Loop BB2_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_26 Depth 3
                                        #       Child Loop BB2_29 Depth 3
	slli.d	$s0, $fp, 2
	ldx.w	$s0, $a0, $s0
	sub.d	$s1, $s0, $t0
	bgeu	$fp, $t7, .LBB2_25
# %bb.24:                               #   in Loop: Header=BB2_23 Depth=2
	move	$s0, $zero
	b	.LBB2_28
	.p2align	4, , 16
.LBB2_25:                               # %vector.ph134
                                        #   in Loop: Header=BB2_23 Depth=2
	move	$s2, $fp
	bstrins.d	$s2, $zero, 2, 0
	bstrpick.d	$s0, $fp, 62, 3
	slli.d	$s0, $s0, 3
	vinsgr2vr.w	$vr4, $s1, 0
	vori.b	$vr3, $vr0, 0
	vshuf.w	$vr3, $vr1, $vr4
	move	$s1, $t4
	vori.b	$vr4, $vr2, 0
	.p2align	4, , 16
.LBB2_26:                               # %vector.body137
                                        #   Parent Loop BB2_15 Depth=1
                                        #     Parent Loop BB2_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr5, $s1, -16
	vld	$vr6, $s1, 0
	vmul.w	$vr3, $vr5, $vr3
	vmul.w	$vr4, $vr6, $vr4
	addi.d	$s2, $s2, -8
	addi.d	$s1, $s1, 32
	bnez	$s2, .LBB2_26
# %bb.27:                               # %middle.block144
                                        #   in Loop: Header=BB2_23 Depth=2
	vmul.w	$vr3, $vr4, $vr3
	vshuf4i.w	$vr4, $vr3, 14
	vmul.w	$vr3, $vr3, $vr4
	vreplvei.w	$vr4, $vr3, 1
	vmul.w	$vr3, $vr3, $vr4
	vpickve2gr.w	$s1, $vr3, 0
	beq	$fp, $s0, .LBB2_22
.LBB2_28:                               # %scalar.ph132.preheader
                                        #   in Loop: Header=BB2_23 Depth=2
	alsl.d	$s2, $s0, $t2, 2
	.p2align	4, , 16
.LBB2_29:                               # %scalar.ph132
                                        #   Parent Loop BB2_15 Depth=1
                                        #     Parent Loop BB2_23 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$s3, $s2, 0
	mul.d	$s1, $s3, $s1
	addi.d	$s0, $s0, 1
	addi.d	$s2, $s2, 4
	bne	$fp, $s0, .LBB2_29
	b	.LBB2_22
	.p2align	4, , 16
.LBB2_30:                               # %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit50.us
                                        #   in Loop: Header=BB2_15 Depth=1
	beq	$t8, $a1, .LBB2_32
# %bb.31:                               # %_ZN2PP12Parser_utils9start_dexERSt6vectorIiSaIiEERKS3_.exit50.us
                                        #   in Loop: Header=BB2_15 Depth=1
	addi.w	$t1, $t1, 1
	blt	$t1, $a2, .LBB2_15
.LBB2_32:
	ld.d	$s3, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
.LBB2_33:                               # %.loopexit52
	ret
.LBB2_34:                               # %.lr.ph.i
	ld.d	$t4, $a4, 0
	addi.d	$t5, $t4, 16
	pcalau12i	$t6, %pc_hi20(.LCPI2_0)
	vld	$vr0, $t6, %pc_lo12(.LCPI2_0)
	ori	$t6, $zero, 8
	vinsgr2vr.w	$vr1, $t3, 0
	vrepli.w	$vr2, 1
	b	.LBB2_36
	.p2align	4, , 16
.LBB2_35:                               # %.loopexit149
                                        #   in Loop: Header=BB2_36 Depth=1
	addi.d	$t3, $t3, 1
	add.w	$t1, $t8, $t1
	beq	$t3, $a5, .LBB2_11
.LBB2_36:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_39 Depth 2
                                        #     Child Loop BB2_42 Depth 2
	slli.d	$t7, $t3, 2
	ldx.w	$t7, $a0, $t7
	sub.d	$t8, $t7, $t2
	bgeu	$t3, $t6, .LBB2_38
# %bb.37:                               #   in Loop: Header=BB2_36 Depth=1
	move	$t7, $zero
	b	.LBB2_41
	.p2align	4, , 16
.LBB2_38:                               # %vector.ph121
                                        #   in Loop: Header=BB2_36 Depth=1
	move	$fp, $t3
	bstrins.d	$fp, $zero, 2, 0
	bstrpick.d	$t7, $t3, 62, 3
	slli.d	$t7, $t7, 3
	vinsgr2vr.w	$vr4, $t8, 0
	vori.b	$vr3, $vr0, 0
	vshuf.w	$vr3, $vr1, $vr4
	move	$t8, $t5
	vori.b	$vr4, $vr2, 0
	.p2align	4, , 16
.LBB2_39:                               # %vector.body124
                                        #   Parent Loop BB2_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr5, $t8, -16
	vld	$vr6, $t8, 0
	vmul.w	$vr3, $vr5, $vr3
	vmul.w	$vr4, $vr6, $vr4
	addi.d	$fp, $fp, -8
	addi.d	$t8, $t8, 32
	bnez	$fp, .LBB2_39
# %bb.40:                               # %middle.block129
                                        #   in Loop: Header=BB2_36 Depth=1
	vmul.w	$vr3, $vr4, $vr3
	vshuf4i.w	$vr4, $vr3, 14
	vmul.w	$vr3, $vr3, $vr4
	vreplvei.w	$vr4, $vr3, 1
	vmul.w	$vr3, $vr3, $vr4
	vpickve2gr.w	$t8, $vr3, 0
	beq	$t3, $t7, .LBB2_35
.LBB2_41:                               # %scalar.ph119.preheader
                                        #   in Loop: Header=BB2_36 Depth=1
	alsl.d	$fp, $t7, $t4, 2
	.p2align	4, , 16
.LBB2_42:                               # %scalar.ph119
                                        #   Parent Loop BB2_36 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$s0, $fp, 0
	mul.d	$t8, $s0, $t8
	addi.d	$t7, $t7, 1
	addi.d	$fp, $fp, 4
	bne	$t3, $t7, .LBB2_42
	b	.LBB2_35
.Lfunc_end2:
	.size	_ZN2PP12Parser_utils11reverse_dexEiiRSt6vectorIiSaIiEERKS3_, .Lfunc_end2-_ZN2PP12Parser_utils11reverse_dexEiiRSt6vectorIiSaIiEERKS3_
                                        # -- End function
	.globl	_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE # -- Begin function _ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE
	.p2align	5
	.type	_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE,@function
_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE: # @_ZN2PP12Parser_utils13print_stringsESt6vectorIS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EESaIS9_EEiiiiRNS2_18basic_stringstreamIcS5_S6_EE
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -304
	.cfi_def_cfa_offset 304
	st.d	$ra, $sp, 296                   # 8-byte Folded Spill
	st.d	$fp, $sp, 288                   # 8-byte Folded Spill
	st.d	$s0, $sp, 280                   # 8-byte Folded Spill
	st.d	$s1, $sp, 272                   # 8-byte Folded Spill
	st.d	$s2, $sp, 264                   # 8-byte Folded Spill
	st.d	$s3, $sp, 256                   # 8-byte Folded Spill
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	st.d	$s5, $sp, 240                   # 8-byte Folded Spill
	st.d	$s6, $sp, 232                   # 8-byte Folded Spill
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	st.d	$s8, $sp, 216                   # 8-byte Folded Spill
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
	sub.d	$a0, $a0, $a1
	slli.d	$a7, $a0, 27
	srai.d	$s5, $a7, 32
	srli.d	$a1, $s5, 61
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	bnez	$a1, .LBB3_187
# %bb.1:                                # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
	move	$s1, $a6
	move	$s2, $a5
	move	$s4, $a4
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	srli.d	$s3, $a0, 5
	srai.d	$s7, $a7, 30
	st.d	$a7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	beqz	$a7, .LBB3_3
# %bb.2:                                # %.noexc179
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	bstrins.d	$s7, $zero, 1, 0
	move	$a1, $zero
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 88                    # 8-byte Folded Spill
	alsl.d	$a0, $s5, $fp, 2
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	b	.LBB3_4
.LBB3_3:
	st.d	$zero, $sp, 8                   # 8-byte Folded Spill
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
.LBB3_4:                                # %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s2, $sp, 48                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 144                   # 8-byte Folded Spill
	ld.d	$s7, $s0, 8
	sub.d	$a0, $s7, $s6
	srli.d	$a0, $a0, 3
	lu12i.w	$a1, -349526
	ori	$a1, $a1, 2731
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	mul.w	$a1, $a0, $a1
	ori	$a0, $zero, 1
	addi.w	$a2, $s3, 0
	st.d	$s3, $sp, 72                    # 8-byte Folded Spill
	bstrpick.d	$a3, $s3, 30, 0
	st.d	$a3, $sp, 112                   # 8-byte Folded Spill
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	blt	$a1, $a0, .LBB3_21
# %bb.5:                                # %.preheader328.lr.ph
	blt	$a2, $a0, .LBB3_21
# %bb.6:                                # %.preheader328.us.preheader
	move	$s8, $zero
	addi.d	$s5, $sp, 200
	ori	$s4, $zero, 16
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	lu32i.d	$a0, -349526
	lu52i.d	$a0, $a0, -1366
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ori	$s1, $zero, 1
	b	.LBB3_8
	.p2align	4, , 16
.LBB3_7:                                # %._crit_edge.us
                                        #   in Loop: Header=BB3_8 Depth=1
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s7, $a0, 8
	ld.d	$s6, $a0, 0
	addi.d	$s8, $s8, 1
	sub.d	$a0, $s7, $s6
	srli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	bge	$s8, $a0, .LBB3_21
.LBB3_8:                                # %.preheader328.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_10 Depth 2
	move	$s6, $zero
	slli.d	$a0, $s8, 4
	alsl.d	$s7, $s8, $a0, 3
	ld.d	$fp, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	b	.LBB3_10
	.p2align	4, , 16
.LBB3_9:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.us
                                        #   in Loop: Header=BB3_10 Depth=2
	addi.d	$s6, $s6, 32
	addi.d	$fp, $fp, -1
	addi.d	$s0, $s0, 4
	beqz	$fp, .LBB3_7
.LBB3_10:                               #   Parent Loop BB3_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s7
	add.d	$a1, $a0, $s6
	st.d	$s5, $sp, 184
	ld.d	$s2, $a1, 8
	ldx.d	$s3, $a0, $s6
	st.d	$s2, $sp, 152
	move	$a0, $s5
	bltu	$s2, $s4, .LBB3_13
# %bb.11:                               # %.noexc.i.us
                                        #   in Loop: Header=BB3_10 Depth=2
.Ltmp0:
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 152
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp1:
# %bb.12:                               # %.noexc190.us
                                        #   in Loop: Header=BB3_10 Depth=2
	ld.d	$a1, $sp, 152
	st.d	$a0, $sp, 184
	st.d	$a1, $sp, 200
.LBB3_13:                               # %._crit_edge.i.i.us
                                        #   in Loop: Header=BB3_10 Depth=2
	beqz	$s2, .LBB3_17
# %bb.14:                               # %._crit_edge.i.i.us
                                        #   in Loop: Header=BB3_10 Depth=2
	bne	$s2, $s1, .LBB3_16
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
	ld.d	$a0, $sp, 152
	ld.d	$a1, $sp, 184
	st.d	$a0, $sp, 192
	stx.b	$zero, $a1, $a0
	ld.w	$a0, $sp, 192
	ld.w	$a1, $s0, 0
	bge	$a1, $a0, .LBB3_19
# %bb.18:                               #   in Loop: Header=BB3_10 Depth=2
	st.w	$a0, $s0, 0
.LBB3_19:                               #   in Loop: Header=BB3_10 Depth=2
	ld.d	$a0, $sp, 184
	beq	$a0, $s5, .LBB3_9
# %bb.20:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.us
                                        #   in Loop: Header=BB3_10 Depth=2
	ld.d	$a1, $sp, 200
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_9
.LBB3_21:                               # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i180
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	beqz	$s5, .LBB3_24
# %bb.22:
.Ltmp3:
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp4:
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
# %bb.23:                               # %.noexc188
	move	$fp, $a0
	move	$a2, $s4
	bstrins.d	$a2, $zero, 1, 0
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$fp, $sp, 104                   # 8-byte Folded Spill
	alsl.d	$a0, $s2, $fp, 2
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ori	$a0, $zero, 1
	bge	$s3, $a0, .LBB3_25
	b	.LBB3_46
.LBB3_24:
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	st.d	$zero, $sp, 0                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 80                    # 8-byte Folded Reload
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB3_46
.LBB3_25:                               # %.lr.ph.preheader
	ori	$a0, $zero, 8
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB3_27
# %bb.26:
	move	$a0, $zero
	b	.LBB3_53
.LBB3_27:                               # %vector.ph
	bstrpick.d	$a0, $fp, 30, 3
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 16
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	addi.d	$a2, $a2, 16
	move	$a3, $a0
	b	.LBB3_29
	.p2align	4, , 16
.LBB3_28:                               # %pred.store.continue486
                                        #   in Loop: Header=BB3_29 Depth=1
	addi.d	$a1, $a1, 32
	addi.d	$a3, $a3, -8
	addi.d	$a2, $a2, 32
	beqz	$a3, .LBB3_45
.LBB3_29:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a2, -16
	vld	$vr1, $a1, -16
	vslt.w	$vr1, $vr1, $vr0
	vpickve2gr.w	$a4, $vr1, 0
	andi	$a4, $a4, 1
	bnez	$a4, .LBB3_38
# %bb.30:                               # %pred.store.continue
                                        #   in Loop: Header=BB3_29 Depth=1
	vpickve2gr.w	$a4, $vr1, 1
	andi	$a4, $a4, 1
	bnez	$a4, .LBB3_39
.LBB3_31:                               # %pred.store.continue474
                                        #   in Loop: Header=BB3_29 Depth=1
	vpickve2gr.w	$a4, $vr1, 2
	andi	$a4, $a4, 1
	bnez	$a4, .LBB3_40
.LBB3_32:                               # %pred.store.continue476
                                        #   in Loop: Header=BB3_29 Depth=1
	vpickve2gr.w	$a4, $vr1, 3
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_34
.LBB3_33:                               # %pred.store.if477
                                        #   in Loop: Header=BB3_29 Depth=1
	vpickve2gr.w	$a4, $vr0, 3
	st.w	$a4, $a1, -4
.LBB3_34:                               # %pred.store.continue478
                                        #   in Loop: Header=BB3_29 Depth=1
	vld	$vr0, $a2, 0
	vld	$vr1, $a1, 0
	vslt.w	$vr1, $vr1, $vr0
	vpickve2gr.w	$a4, $vr1, 0
	andi	$a4, $a4, 1
	bnez	$a4, .LBB3_41
# %bb.35:                               # %pred.store.continue480
                                        #   in Loop: Header=BB3_29 Depth=1
	vpickve2gr.w	$a4, $vr1, 1
	andi	$a4, $a4, 1
	bnez	$a4, .LBB3_42
.LBB3_36:                               # %pred.store.continue482
                                        #   in Loop: Header=BB3_29 Depth=1
	vpickve2gr.w	$a4, $vr1, 2
	andi	$a4, $a4, 1
	bnez	$a4, .LBB3_43
.LBB3_37:                               # %pred.store.continue484
                                        #   in Loop: Header=BB3_29 Depth=1
	vpickve2gr.w	$a4, $vr1, 3
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_28
	b	.LBB3_44
	.p2align	4, , 16
.LBB3_38:                               # %pred.store.if
                                        #   in Loop: Header=BB3_29 Depth=1
	vpickve2gr.w	$a4, $vr0, 0
	st.w	$a4, $a1, -16
	vpickve2gr.w	$a4, $vr1, 1
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_31
.LBB3_39:                               # %pred.store.if473
                                        #   in Loop: Header=BB3_29 Depth=1
	vpickve2gr.w	$a4, $vr0, 1
	st.w	$a4, $a1, -12
	vpickve2gr.w	$a4, $vr1, 2
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_32
.LBB3_40:                               # %pred.store.if475
                                        #   in Loop: Header=BB3_29 Depth=1
	vpickve2gr.w	$a4, $vr0, 2
	st.w	$a4, $a1, -8
	vpickve2gr.w	$a4, $vr1, 3
	andi	$a4, $a4, 1
	bnez	$a4, .LBB3_33
	b	.LBB3_34
	.p2align	4, , 16
.LBB3_41:                               # %pred.store.if479
                                        #   in Loop: Header=BB3_29 Depth=1
	vpickve2gr.w	$a4, $vr0, 0
	st.w	$a4, $a1, 0
	vpickve2gr.w	$a4, $vr1, 1
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_36
.LBB3_42:                               # %pred.store.if481
                                        #   in Loop: Header=BB3_29 Depth=1
	vpickve2gr.w	$a4, $vr0, 1
	st.w	$a4, $a1, 4
	vpickve2gr.w	$a4, $vr1, 2
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_37
.LBB3_43:                               # %pred.store.if483
                                        #   in Loop: Header=BB3_29 Depth=1
	vpickve2gr.w	$a4, $vr0, 2
	st.w	$a4, $a1, 8
	vpickve2gr.w	$a4, $vr1, 3
	andi	$a4, $a4, 1
	beqz	$a4, .LBB3_28
.LBB3_44:                               # %pred.store.if485
                                        #   in Loop: Header=BB3_29 Depth=1
	vpickve2gr.w	$a4, $vr0, 3
	st.w	$a4, $a1, 12
	b	.LBB3_28
.LBB3_45:                               # %middle.block
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB3_53
.LBB3_46:                               # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i191
	beqz	$s5, .LBB3_57
# %bb.47:
.Ltmp6:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp7:
# %bb.48:                               # %.noexc199
	addi.d	$a1, $s4, -4
	ori	$a2, $zero, 28
	alsl.d	$a6, $s2, $a0, 2
	move	$a5, $a0
	bltu	$a1, $a2, .LBB3_52
# %bb.49:                               # %vector.ph489
	srli.d	$a0, $a1, 2
	addi.d	$a1, $a0, 1
	bstrpick.d	$a0, $a1, 62, 3
	slli.d	$a2, $a0, 3
	slli.d	$a0, $a0, 5
	add.d	$a0, $a5, $a0
	vreplgr2vr.w	$vr0, $s1
	addi.d	$a3, $a5, 16
	move	$a4, $a2
	.p2align	4, , 16
.LBB3_50:                               # %vector.body492
                                        # =>This Inner Loop Header: Depth=1
	vst	$vr0, $a3, -16
	vst	$vr0, $a3, 0
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB3_50
# %bb.51:                               # %middle.block495
	beq	$a1, $a2, .LBB3_58
	.p2align	4, , 16
.LBB3_52:                               # %.lr.ph.i.i.i.i.i.i.i.i.i193
                                        # =>This Inner Loop Header: Depth=1
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	bne	$a0, $a6, .LBB3_52
	b	.LBB3_58
.LBB3_53:                               # %.lr.ph.preheader526
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a1, $a0, $a1, 2
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 2
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a3
	b	.LBB3_55
	.p2align	4, , 16
.LBB3_54:                               #   in Loop: Header=BB3_55 Depth=1
	addi.d	$a1, $a1, 4
	addi.d	$a0, $a0, 1
	addi.d	$a2, $a2, 4
	beqz	$a0, .LBB3_46
.LBB3_55:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	ld.w	$a4, $a2, 0
	bge	$a4, $a3, .LBB3_54
# %bb.56:                               #   in Loop: Header=BB3_55 Depth=1
	st.w	$a3, $a2, 0
	b	.LBB3_54
.LBB3_57:
	move	$a5, $zero
	move	$a6, $zero
.LBB3_58:                               # %_ZNSt6vectorIiSaIiEEC2EmRKiRKS0_.exit200
	st.d	$a5, $sp, 136                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.w	$a0, $a5, 0
	ori	$a0, $zero, 1
	addi.w	$a7, $fp, -1
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	st.d	$a7, $sp, 96                    # 8-byte Folded Spill
	blt	$s8, $a0, .LBB3_125
# %bb.59:                               # %.preheader327
	blt	$s3, $a0, .LBB3_62
# %bb.60:                               # %.lr.ph359.preheader
	ori	$a0, $zero, 8
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB3_63
# %bb.61:
	move	$a0, $zero
	move	$a1, $zero
	b	.LBB3_66
.LBB3_62:
	move	$a1, $zero
	b	.LBB3_68
.LBB3_63:                               # %vector.ph500
	bstrpick.d	$a0, $fp, 30, 3
	slli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 16
	vrepli.b	$vr0, 0
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 16
	move	$a3, $a0
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB3_64:                               # %vector.body503
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a2, -16
	vld	$vr3, $a2, 0
	vld	$vr4, $a1, -16
	vld	$vr5, $a1, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	vadd.w	$vr0, $vr0, $vr4
	vadd.w	$vr1, $vr1, $vr5
	addi.d	$a3, $a3, -8
	addi.d	$a1, $a1, 32
	addi.d	$a2, $a2, 32
	bnez	$a3, .LBB3_64
# %bb.65:                               # %middle.block511
	vadd.w	$vr0, $vr1, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a1, $vr0, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	beq	$a2, $a0, .LBB3_68
.LBB3_66:                               # %.lr.ph359.preheader522
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a2, $a0, $a2, 2
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$a3, $a0, $a3, 2
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	sub.d	$a0, $a0, $a4
	.p2align	4, , 16
.LBB3_67:                               # %.lr.ph359
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a4, $a2, 0
	ld.w	$a5, $a3, 0
	add.d	$a1, $a4, $a1
	add.d	$a1, $a1, $a5
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, 1
	addi.d	$a3, $a3, 4
	bnez	$a0, .LBB3_67
.LBB3_68:                               # %._crit_edge
	sub.w	$a0, $a1, $s8
	blez	$a0, .LBB3_125
# %bb.69:
	slli.d	$a1, $a7, 2
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ldx.w	$a2, $a3, $a1
	sub.d	$a0, $a2, $a0
	sub.d	$a2, $s7, $s6
	srli.d	$a2, $a2, 3
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	mul.w	$a2, $a2, $a4
	ori	$a5, $zero, 1
	stx.w	$a0, $a3, $a1
	blt	$a2, $a5, .LBB3_125
# %bb.70:                               # %.preheader315.lr.ph
	move	$a1, $zero
	addi.d	$s5, $sp, 200
	bstrpick.d	$s4, $a7, 31, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$a0, $s4, $a0, 2
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	move	$a0, $a4
	lu32i.d	$a0, -349526
	lu52i.d	$a0, $a0, -1366
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	b	.LBB3_73
	.p2align	4, , 16
.LBB3_71:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit219
                                        #   in Loop: Header=BB3_73 Depth=1
	ld.d	$s6, $s0, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
.LBB3_72:                               #   in Loop: Header=BB3_73 Depth=1
	ld.d	$s7, $s0, 8
	addi.d	$a1, $a1, 1
	sub.d	$a0, $s7, $s6
	srli.d	$a0, $a0, 3
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	mul.w	$a0, $a0, $a2
	bge	$a1, $a0, .LBB3_125
.LBB3_73:                               # %.preheader315
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_76 Depth 2
	slli.d	$a2, $a1, 4
	ori	$a0, $zero, 1
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	blt	$s3, $a0, .LBB3_90
# %bb.74:                               # %.lr.ph362.preheader
                                        #   in Loop: Header=BB3_73 Depth=1
	move	$s2, $zero
	move	$s3, $zero
	move	$fp, $zero
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	alsl.d	$s0, $a1, $a2, 3
	ld.d	$s8, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	b	.LBB3_76
	.p2align	4, , 16
.LBB3_75:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207
                                        #   in Loop: Header=BB3_76 Depth=2
	addi.d	$s3, $s3, 1
	addi.d	$s2, $s2, 32
	addi.d	$s1, $s1, 4
	addi.d	$s8, $s8, 4
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$a0, $s3, .LBB3_89
.LBB3_76:                               # %.lr.ph362
                                        #   Parent Loop BB3_73 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ldx.d	$a0, $a0, $s0
	add.d	$a1, $a0, $s2
	st.d	$s5, $sp, 184
	ld.d	$s6, $a1, 8
	ldx.d	$s7, $a0, $s2
	st.d	$s6, $sp, 152
	move	$a0, $s5
	ori	$a1, $zero, 16
	bltu	$s6, $a1, .LBB3_79
# %bb.77:                               # %.noexc.i202
                                        #   in Loop: Header=BB3_76 Depth=2
.Ltmp9:
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 152
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp10:
# %bb.78:                               # %.noexc203
                                        #   in Loop: Header=BB3_76 Depth=2
	ld.d	$a1, $sp, 152
	st.d	$a0, $sp, 184
	st.d	$a1, $sp, 200
.LBB3_79:                               # %._crit_edge.i.i201
                                        #   in Loop: Header=BB3_76 Depth=2
	beqz	$s6, .LBB3_83
# %bb.80:                               # %._crit_edge.i.i201
                                        #   in Loop: Header=BB3_76 Depth=2
	ori	$a1, $zero, 1
	bne	$s6, $a1, .LBB3_82
# %bb.81:                               #   in Loop: Header=BB3_76 Depth=2
	ld.b	$a1, $s7, 0
	st.b	$a1, $a0, 0
	b	.LBB3_83
	.p2align	4, , 16
.LBB3_82:                               #   in Loop: Header=BB3_76 Depth=2
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_83:                               #   in Loop: Header=BB3_76 Depth=2
	ld.d	$a0, $sp, 152
	ld.d	$a1, $sp, 184
	st.d	$a0, $sp, 192
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	blt	$s3, $a0, .LBB3_86
# %bb.84:                               #   in Loop: Header=BB3_76 Depth=2
	beq	$s4, $s3, .LBB3_87
.LBB3_85:                               #   in Loop: Header=BB3_76 Depth=2
	ld.d	$a0, $sp, 184
	bne	$a0, $s5, .LBB3_88
	b	.LBB3_75
	.p2align	4, , 16
.LBB3_86:                               #   in Loop: Header=BB3_76 Depth=2
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s8, 0
	add.d	$a0, $a0, $fp
	add.w	$fp, $a0, $a1
	bne	$s4, $s3, .LBB3_85
.LBB3_87:                               #   in Loop: Header=BB3_76 Depth=2
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.w	$a1, $sp, 192
	add.d	$a0, $a0, $fp
	add.w	$fp, $a0, $a1
	ld.d	$a0, $sp, 184
	beq	$a0, $s5, .LBB3_75
.LBB3_88:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i205
                                        #   in Loop: Header=BB3_76 Depth=2
	ld.d	$a1, $sp, 200
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_75
	.p2align	4, , 16
.LBB3_89:                               # %._crit_edge363.loopexit
                                        #   in Loop: Header=BB3_73 Depth=1
	ld.d	$s0, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s6, $s0, 0
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	bge	$s8, $fp, .LBB3_72
	b	.LBB3_91
	.p2align	4, , 16
.LBB3_90:                               #   in Loop: Header=BB3_73 Depth=1
	move	$fp, $zero
	bge	$s8, $fp, .LBB3_72
.LBB3_91:                               #   in Loop: Header=BB3_73 Depth=1
	alsl.d	$s2, $a1, $a2, 3
	ldx.d	$a0, $s6, $s2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	slli.d	$s1, $a1, 5
	add.d	$a1, $a0, $s1
	addi.d	$a2, $sp, 200
	st.d	$a2, $sp, 184
	ld.d	$s6, $a1, 8
	ldx.d	$s7, $a0, $s1
	st.d	$s6, $sp, 152
	move	$a0, $a2
	ori	$a1, $zero, 16
	bltu	$s6, $a1, .LBB3_94
# %bb.92:                               # %.noexc.i209
                                        #   in Loop: Header=BB3_73 Depth=1
.Ltmp12:
	addi.d	$a0, $sp, 184
	addi.d	$a1, $sp, 152
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp13:
# %bb.93:                               # %.noexc210
                                        #   in Loop: Header=BB3_73 Depth=1
	ld.d	$a1, $sp, 152
	st.d	$a0, $sp, 184
	st.d	$a1, $sp, 200
.LBB3_94:                               # %._crit_edge.i.i208
                                        #   in Loop: Header=BB3_73 Depth=1
	beqz	$s6, .LBB3_98
# %bb.95:                               # %._crit_edge.i.i208
                                        #   in Loop: Header=BB3_73 Depth=1
	ori	$a1, $zero, 1
	bne	$s6, $a1, .LBB3_97
# %bb.96:                               #   in Loop: Header=BB3_73 Depth=1
	ld.b	$a1, $s7, 0
	st.b	$a1, $a0, 0
	b	.LBB3_98
.LBB3_97:                               #   in Loop: Header=BB3_73 Depth=1
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_98:                               #   in Loop: Header=BB3_73 Depth=1
	ld.d	$a0, $sp, 152
	ld.d	$a1, $sp, 184
	st.d	$a0, $sp, 192
	stx.b	$zero, $a1, $a0
	ld.d	$a3, $sp, 192
	sub.d	$a0, $fp, $s8
	sub.w	$a1, $a3, $a0
	ori	$a4, $zero, 4
	slt	$a2, $a4, $a1
	maskeqz	$a1, $a1, $a2
	masknez	$a2, $a4, $a2
	or	$a1, $a1, $a2
	addi.w	$a1, $a1, -4
	bltu	$a3, $a1, .LBB3_185
# %bb.99:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
                                        #   in Loop: Header=BB3_73 Depth=1
	addi.w	$a2, $a3, 0
	addi.w	$a0, $a0, 4
	slt	$a4, $a0, $a2
	maskeqz	$a0, $a0, $a4
	masknez	$a2, $a2, $a4
	or	$a0, $a0, $a2
	beqz	$a0, .LBB3_103
# %bb.100:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i
                                        #   in Loop: Header=BB3_73 Depth=1
	addi.w	$a2, $zero, -1
	bne	$a0, $a2, .LBB3_102
# %bb.101:                              #   in Loop: Header=BB3_73 Depth=1
	ld.d	$a0, $sp, 184
	st.d	$a1, $sp, 192
	stx.b	$zero, $a0, $a1
	b	.LBB3_103
.LBB3_102:                              #   in Loop: Header=BB3_73 Depth=1
	sub.d	$a2, $a3, $a1
	sltu	$a3, $a0, $a2
	masknez	$a2, $a2, $a3
	maskeqz	$a0, $a0, $a3
	or	$a2, $a0, $a2
.Ltmp15:
	addi.d	$a0, $sp, 184
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm)
	jirl	$ra, $ra, 0
.Ltmp16:
.LBB3_103:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
                                        #   in Loop: Header=BB3_73 Depth=1
	ld.d	$s6, $sp, 184
	ld.d	$s7, $sp, 192
	addi.d	$a0, $sp, 168
	st.d	$a0, $sp, 152
	st.d	$zero, $sp, 160
	st.b	$zero, $sp, 168
	addi.d	$a1, $s7, 4
.Ltmp18:
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp19:
# %bb.104:                              #   in Loop: Header=BB3_73 Depth=1
	ld.d	$a0, $sp, 160
	addi.w	$fp, $zero, -1
	lu52i.d	$a1, $fp, 1023
	sub.d	$a0, $a1, $a0
	bltu	$a0, $s7, .LBB3_183
# %bb.105:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
                                        #   in Loop: Header=BB3_73 Depth=1
.Ltmp20:
	addi.d	$a0, $sp, 152
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp21:
# %bb.106:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
                                        #   in Loop: Header=BB3_73 Depth=1
	ld.d	$a0, $sp, 160
	srli.d	$a0, $a0, 2
	lu52i.d	$a1, $fp, 255
	beq	$a0, $a1, .LBB3_183
# %bb.107:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
                                        #   in Loop: Header=BB3_73 Depth=1
.Ltmp22:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a0, $sp, 152
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp23:
# %bb.108:                              # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
                                        #   in Loop: Header=BB3_73 Depth=1
	ld.d	$a0, $s0, 0
	ldx.d	$a1, $a0, $s2
	ldx.d	$a0, $a1, $s1
	add.d	$fp, $a1, $s1
	addi.d	$a1, $fp, 16
	beq	$a0, $a1, .LBB3_112
# %bb.109:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
                                        #   in Loop: Header=BB3_73 Depth=1
	ld.d	$a1, $sp, 152
	addi.d	$s1, $sp, 168
	beq	$a1, $s1, .LBB3_115
# %bb.110:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
                                        #   in Loop: Header=BB3_73 Depth=1
	st.d	$a1, $fp, 0
	ld.d	$a1, $sp, 160
	st.d	$a1, $fp, 8
	ld.d	$a2, $sp, 168
	ld.d	$a1, $fp, 16
	st.d	$a2, $fp, 16
	beqz	$a0, .LBB3_114
# %bb.111:                              #   in Loop: Header=BB3_73 Depth=1
	st.d	$a0, $sp, 152
	st.d	$a1, $sp, 168
	st.d	$zero, $sp, 160
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 152
	bne	$a0, $s1, .LBB3_121
	b	.LBB3_122
.LBB3_112:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
                                        #   in Loop: Header=BB3_73 Depth=1
	ld.d	$a1, $sp, 152
	addi.d	$s1, $sp, 168
	beq	$a1, $s1, .LBB3_115
# %bb.113:                              # %.thread.i
                                        #   in Loop: Header=BB3_73 Depth=1
	st.d	$a1, $fp, 0
	ld.d	$a0, $sp, 160
	st.d	$a0, $fp, 8
	ld.d	$a0, $sp, 168
	st.d	$a0, $fp, 16
.LBB3_114:                              #   in Loop: Header=BB3_73 Depth=1
	st.d	$s1, $sp, 152
	move	$a0, $s1
	st.d	$zero, $sp, 160
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 152
	bne	$a0, $s1, .LBB3_121
	b	.LBB3_122
.LBB3_115:                              #   in Loop: Header=BB3_73 Depth=1
	addi.d	$a2, $sp, 152
	beq	$a2, $fp, .LBB3_124
# %bb.116:                              #   in Loop: Header=BB3_73 Depth=1
	ld.d	$a2, $sp, 160
	beqz	$a2, .LBB3_120
# %bb.117:                              #   in Loop: Header=BB3_73 Depth=1
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB3_119
# %bb.118:                              #   in Loop: Header=BB3_73 Depth=1
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB3_120
.LBB3_119:                              #   in Loop: Header=BB3_73 Depth=1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_120:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
                                        #   in Loop: Header=BB3_73 Depth=1
	ld.d	$a0, $sp, 160
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 152
	st.d	$zero, $sp, 160
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 152
	beq	$a0, $s1, .LBB3_122
.LBB3_121:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i214
                                        #   in Loop: Header=BB3_73 Depth=1
	ld.d	$a1, $sp, 168
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_122:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit216
                                        #   in Loop: Header=BB3_73 Depth=1
	ld.d	$a0, $sp, 184
	addi.d	$a1, $sp, 200
	beq	$a0, $a1, .LBB3_71
# %bb.123:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i217
                                        #   in Loop: Header=BB3_73 Depth=1
	ld.d	$a1, $sp, 200
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_71
.LBB3_124:                              #   in Loop: Header=BB3_73 Depth=1
	move	$a0, $a1
	st.d	$zero, $sp, 160
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 152
	bne	$a0, $s1, .LBB3_121
	b	.LBB3_122
.LBB3_125:                              # %.loopexit316
	sub.d	$a0, $s7, $s6
	srli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB3_176
# %bb.126:                              # %.lr.ph393
	move	$a2, $zero
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	addi.d	$s5, $a0, 16
	addi.d	$a3, $a0, 256
	st.d	$a3, $sp, 56                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 32
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 31, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$s4, $a0, %pc_lo12(.L.str.1)
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$s6, $a0, %pc_lo12(.L.str.2)
	lu32i.d	$a1, -349526
	lu52i.d	$a0, $a1, -1366
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	.p2align	4, , 16
.LBB3_127:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_131 Depth 2
                                        #       Child Loop BB3_133 Depth 3
                                        #       Child Loop BB3_137 Depth 3
                                        #     Child Loop BB3_149 Depth 2
                                        #       Child Loop BB3_154 Depth 3
                                        #       Child Loop BB3_157 Depth 3
                                        #       Child Loop BB3_166 Depth 3
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bne	$a2, $a0, .LBB3_146
# %bb.128:                              # %.preheader314
                                        #   in Loop: Header=BB3_127 Depth=1
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB3_139
# %bb.129:                              # %.preheader313.preheader
                                        #   in Loop: Header=BB3_127 Depth=1
	move	$s0, $zero
	b	.LBB3_131
	.p2align	4, , 16
.LBB3_130:                              # %._crit_edge371
                                        #   in Loop: Header=BB3_131 Depth=2
	addi.d	$s0, $s0, 1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB3_139
.LBB3_131:                              # %.preheader313
                                        #   Parent Loop BB3_127 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_133 Depth 3
                                        #       Child Loop BB3_137 Depth 3
	slli.d	$s1, $s0, 2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $s1
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB3_135
# %bb.132:                              # %.lr.ph367.preheader
                                        #   in Loop: Header=BB3_131 Depth=2
	move	$s2, $zero
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$fp, $s0, $a0, 2
	.p2align	4, , 16
.LBB3_133:                              # %.lr.ph367
                                        #   Parent Loop BB3_127 Depth=1
                                        #     Parent Loop BB3_131 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp25:
	ori	$a2, $zero, 1
	move	$a0, $s5
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp26:
# %bb.134:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
                                        #   in Loop: Header=BB3_133 Depth=3
	ld.w	$a0, $fp, 0
	addi.w	$s2, $s2, 1
	blt	$s2, $a0, .LBB3_133
.LBB3_135:                              # %.preheader312
                                        #   in Loop: Header=BB3_131 Depth=2
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ldx.w	$a0, $a0, $s1
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB3_130
# %bb.136:                              # %.lr.ph370.preheader
                                        #   in Loop: Header=BB3_131 Depth=2
	move	$s1, $zero
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	alsl.d	$fp, $s0, $a0, 2
	.p2align	4, , 16
.LBB3_137:                              # %.lr.ph370
                                        #   Parent Loop BB3_127 Depth=1
                                        #     Parent Loop BB3_131 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp28:
	ori	$a2, $zero, 1
	move	$a0, $s5
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp29:
# %bb.138:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit230
                                        #   in Loop: Header=BB3_137 Depth=3
	ld.w	$a0, $fp, 0
	addi.w	$s1, $s1, 1
	blt	$s1, $a0, .LBB3_137
	b	.LBB3_130
	.p2align	4, , 16
.LBB3_139:                              # %._crit_edge373
                                        #   in Loop: Header=BB3_127 Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a0, $a0, -24
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$s7, $a1, $a0
	beqz	$s7, .LBB3_181
# %bb.140:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
                                        #   in Loop: Header=BB3_127 Depth=1
	ld.bu	$a0, $s7, 56
	beqz	$a0, .LBB3_142
# %bb.141:                              #   in Loop: Header=BB3_127 Depth=1
	ld.bu	$a0, $s7, 67
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	b	.LBB3_144
.LBB3_142:                              #   in Loop: Header=BB3_127 Depth=1
.Ltmp31:
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp32:
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
# %bb.143:                              # %.noexc252
                                        #   in Loop: Header=BB3_127 Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
.Ltmp33:
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
.Ltmp34:
.LBB3_144:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
                                        #   in Loop: Header=BB3_127 Depth=1
.Ltmp35:
	ext.w.b	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp36:
# %bb.145:                              # %.noexc254
                                        #   in Loop: Header=BB3_127 Depth=1
.Ltmp37:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp38:
.LBB3_146:                              # %_ZNSolsEPFRSoS_E.exit
                                        #   in Loop: Header=BB3_127 Depth=1
	ori	$a0, $zero, 1
	blt	$s3, $a0, .LBB3_168
# %bb.147:                              # %.lr.ph389
                                        #   in Loop: Header=BB3_127 Depth=1
	move	$s7, $zero
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	slli.d	$a0, $a1, 4
	alsl.d	$s8, $a1, $a0, 3
	b	.LBB3_149
	.p2align	4, , 16
.LBB3_148:                              # %._crit_edge383
                                        #   in Loop: Header=BB3_149 Depth=2
	addi.d	$s7, $s7, 1
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s7, $a0, .LBB3_168
.LBB3_149:                              #   Parent Loop BB3_127 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB3_154 Depth 3
                                        #       Child Loop BB3_157 Depth 3
                                        #       Child Loop BB3_166 Depth 3
	slli.d	$a0, $s7, 2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	bge	$a2, $a1, .LBB3_151
# %bb.150:                              #   in Loop: Header=BB3_149 Depth=2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	ldx.d	$a1, $a1, $s8
	slli.d	$a2, $s7, 5
	add.d	$a1, $a1, $a2
	ld.d	$s3, $a1, 8
	b	.LBB3_152
	.p2align	4, , 16
.LBB3_151:                              #   in Loop: Header=BB3_149 Depth=2
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ldx.w	$s3, $a1, $a0
.LBB3_152:                              #   in Loop: Header=BB3_149 Depth=2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ldx.w	$a1, $a1, $a0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ldx.w	$s0, $a2, $a0
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB3_156
# %bb.153:                              # %.lr.ph376.preheader
                                        #   in Loop: Header=BB3_149 Depth=2
	move	$s1, $zero
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	alsl.d	$s2, $s7, $a0, 2
	.p2align	4, , 16
.LBB3_154:                              # %.lr.ph376
                                        #   Parent Loop BB3_127 Depth=1
                                        #     Parent Loop BB3_149 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp39:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp40:
# %bb.155:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit234
                                        #   in Loop: Header=BB3_154 Depth=3
	ld.w	$a0, $s2, 0
	addi.w	$s1, $s1, 1
	blt	$s1, $a0, .LBB3_154
.LBB3_156:                              # %.preheader
                                        #   in Loop: Header=BB3_149 Depth=2
	sub.w	$s1, $s0, $s3
	bstrpick.d	$fp, $s1, 31, 1
	move	$s2, $fp
	ori	$a0, $zero, 2
	blt	$s1, $a0, .LBB3_159
	.p2align	4, , 16
.LBB3_157:                              # %.lr.ph378.split
                                        #   Parent Loop BB3_127 Depth=1
                                        #     Parent Loop BB3_149 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp42:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp43:
# %bb.158:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit236
                                        #   in Loop: Header=BB3_157 Depth=3
	addi.w	$s2, $s2, -1
	bnez	$s2, .LBB3_157
.LBB3_159:                              # %._crit_edge379
                                        #   in Loop: Header=BB3_149 Depth=2
	move	$a0, $s7
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	blt	$a2, $a1, .LBB3_163
# %bb.160:                              #   in Loop: Header=BB3_149 Depth=2
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	bge	$s7, $a0, .LBB3_162
# %bb.161:                              #   in Loop: Header=BB3_149 Depth=2
	ld.d	$a0, $s5, 0
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a1, $s7, $a1, 2
	ld.w	$a1, $a1, 0
	ld.d	$a0, $a0, -24
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	stx.d	$a1, $a2, $a0
	ld.d	$a0, $sp, 144                   # 8-byte Folded Reload
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
.LBB3_162:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
                                        #   in Loop: Header=BB3_149 Depth=2
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	move	$a0, $a1
	bne	$s7, $a1, .LBB3_164
.LBB3_163:                              # %.invoke454
                                        #   in Loop: Header=BB3_149 Depth=2
	ld.d	$a1, $sp, 144                   # 8-byte Folded Reload
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
.LBB3_164:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit239
                                        #   in Loop: Header=BB3_149 Depth=2
	ori	$a0, $zero, 1
	blt	$s1, $a0, .LBB3_148
# %bb.165:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit239
                                        #   in Loop: Header=BB3_149 Depth=2
	add.d	$a0, $s3, $fp
	sub.w	$s0, $s0, $a0
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB3_148
	.p2align	4, , 16
.LBB3_166:                              # %.lr.ph382.split
                                        #   Parent Loop BB3_127 Depth=1
                                        #     Parent Loop BB3_149 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Ltmp50:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	ori	$a2, $zero, 1
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp51:
# %bb.167:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit243
                                        #   in Loop: Header=BB3_166 Depth=3
	addi.w	$s0, $s0, -1
	bnez	$s0, .LBB3_166
	b	.LBB3_148
	.p2align	4, , 16
.LBB3_168:                              # %._crit_edge390
                                        #   in Loop: Header=BB3_127 Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a0, $a0, -24
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	ldx.d	$s7, $a1, $a0
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	beqz	$s7, .LBB3_181
# %bb.169:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i257
                                        #   in Loop: Header=BB3_127 Depth=1
	ld.bu	$a0, $s7, 56
	beqz	$a0, .LBB3_171
# %bb.170:                              #   in Loop: Header=BB3_127 Depth=1
	ld.bu	$a0, $s7, 67
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	b	.LBB3_173
	.p2align	4, , 16
.LBB3_171:                              #   in Loop: Header=BB3_127 Depth=1
.Ltmp53:
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp54:
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
# %bb.172:                              # %.noexc262
                                        #   in Loop: Header=BB3_127 Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
.Ltmp55:
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
.Ltmp56:
.LBB3_173:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i259
                                        #   in Loop: Header=BB3_127 Depth=1
.Ltmp57:
	ext.w.b	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp58:
# %bb.174:                              # %.noexc264
                                        #   in Loop: Header=BB3_127 Depth=1
.Ltmp59:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp60:
# %bb.175:                              # %_ZNSolsEPFRSoS_E.exit232
                                        #   in Loop: Header=BB3_127 Depth=1
	ld.d	$a0, $fp, 8
	ld.d	$a1, $fp, 0
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	addi.d	$a2, $a2, 1
	sub.d	$a0, $a0, $a1
	srli.d	$a0, $a0, 3
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	mul.w	$a0, $a0, $a1
	blt	$a2, $a0, .LBB3_127
.LBB3_176:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	beqz	$a0, .LBB3_178
# %bb.177:
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_178:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit224
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_180
# %bb.179:
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_180:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit226
	ld.d	$s8, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 280                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 288                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 296                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 304
	ret
.LBB3_181:                              # %.invoke
.Ltmp62:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp63:
# %bb.182:                              # %.cont
.LBB3_183:                              # %.invoke.i.i
.Ltmp65:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp66:
# %bb.184:                              # %.cont.i.i
.LBB3_185:
.Ltmp68:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a4, %pc_hi20(.L.str.4)
	move	$a2, $a1
	addi.d	$a1, $a4, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(_ZSt24__throw_out_of_range_fmtPKcz)
	jirl	$ra, $ra, 0
.Ltmp69:
# %bb.186:                              # %.noexc212
.LBB3_187:                              # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB3_188:
.Ltmp8:
	move	$s0, $a0
	b	.LBB3_212
.LBB3_189:
.Ltmp5:
	move	$s0, $a0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_214
	b	.LBB3_216
.LBB3_190:                              # %.loopexit317
.Ltmp17:
	b	.LBB3_193
.LBB3_191:
.Ltmp14:
	b	.LBB3_210
.LBB3_192:                              # %.loopexit.split-lp318
.Ltmp70:
.LBB3_193:
	move	$s0, $a0
	b	.LBB3_198
.LBB3_194:                              # %.loopexit.split-lp323
.Ltmp67:
	b	.LBB3_196
.LBB3_195:                              # %.loopexit322
.Ltmp24:
.LBB3_196:
	move	$s0, $a0
	ld.d	$a0, $sp, 152
	addi.d	$a1, $sp, 168
	beq	$a0, $a1, .LBB3_198
# %bb.197:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
	ld.d	$a1, $sp, 168
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_198:
	ld.d	$a0, $sp, 184
	addi.d	$a1, $sp, 200
	beq	$a0, $a1, .LBB3_211
# %bb.199:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i220
	ld.d	$a1, $sp, 200
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_211
.LBB3_200:                              # %.loopexit.split-lp
.Ltmp64:
	b	.LBB3_210
.LBB3_201:
.Ltmp11:
	b	.LBB3_210
.LBB3_202:                              # %.loopexit
.Ltmp61:
	b	.LBB3_210
.LBB3_203:                              # %.split.us
.Ltmp2:
	move	$s0, $a0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_214
	b	.LBB3_216
.LBB3_204:
.Ltmp49:
	b	.LBB3_210
.LBB3_205:
.Ltmp30:
	b	.LBB3_210
.LBB3_206:
.Ltmp27:
	b	.LBB3_210
.LBB3_207:                              # %.split385
.Ltmp52:
	b	.LBB3_210
.LBB3_208:                              # %.split
.Ltmp44:
	b	.LBB3_210
.LBB3_209:
.Ltmp41:
.LBB3_210:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit245
	move	$s0, $a0
.LBB3_211:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit245
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_212:
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	bnez	$a0, .LBB3_215
# %bb.213:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit247
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	bnez	$a0, .LBB3_216
.LBB3_214:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit249
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB3_215:
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	beqz	$a0, .LBB3_214
.LBB3_216:
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
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
