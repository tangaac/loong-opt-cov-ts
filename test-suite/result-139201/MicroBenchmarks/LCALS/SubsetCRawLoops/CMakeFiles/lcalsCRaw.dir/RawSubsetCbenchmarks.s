	.file	"RawSubsetCbenchmarks.cxx"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.p2align	5                               # -- Begin function _ZL15BM_HYDRO_1D_RAWRN9benchmark5StateE
	.type	_ZL15BM_HYDRO_1D_RAWRN9benchmark5StateE,@function
_ZL15BM_HYDRO_1D_RAWRN9benchmark5StateE: # @_ZL15BM_HYDRO_1D_RAWRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 13
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 8
	ld.d	$s2, $s0, 16
	ld.d	$s3, $s0, 24
	fld.d	$fa0, $s0, 384
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	fld.d	$fa0, $s0, 392
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	fld.d	$fa0, $s0, 400
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	ld.w	$s4, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	vld	$vr11, $sp, 0                   # 16-byte Folded Reload
	vld	$vr10, $sp, 16                  # 16-byte Folded Reload
	vld	$vr9, $sp, 32                   # 16-byte Folded Reload
	bnez	$s4, .LBB0_12
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB0_12
# %bb.2:                                # %.preheader.lr.ph
	ld.d	$a0, $fp, 32
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB0_12
# %bb.3:                                # %.preheader.us.preheader
	alsl.d	$a2, $a0, $s1, 3
	alsl.d	$a3, $a0, $s2, 3
	addi.d	$a4, $s3, 80
	addi.d	$a1, $s3, 88
	alsl.d	$a5, $a0, $a1, 3
	sltu	$a3, $s1, $a3
	sltu	$a6, $s2, $a2
	and	$a3, $a3, $a6
	sltu	$a5, $s1, $a5
	sltu	$a2, $a4, $a2
	and	$a2, $a5, $a2
	or	$a6, $a3, $a2
	bstrpick.d	$a2, $a0, 62, 2
	slli.d	$a2, $a2, 2
	vreplvei.d	$vr0, $vr11, 0
	vreplvei.d	$vr1, $vr10, 0
	vreplvei.d	$vr2, $vr9, 0
	addi.d	$a3, $s2, 16
	addi.d	$a4, $s1, 16
	addi.d	$a5, $s3, 104
	sltui	$a7, $a0, 4
	or	$a6, $a7, $a6
	andi	$a6, $a6, 1
	b	.LBB0_5
	.p2align	4, , 16
.LBB0_4:                                # %._crit_edge.us
                                        #   in Loop: Header=BB0_5 Depth=1
	addi.d	$s0, $s0, -1
	beqz	$s0, .LBB0_12
.LBB0_5:                                # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
                                        #     Child Loop BB0_11 Depth 2
	beqz	$a6, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	move	$t2, $zero
	b	.LBB0_10
	.p2align	4, , 16
.LBB0_7:                                # %vector.body.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$a7, $a5
	move	$t0, $a4
	move	$t1, $a3
	move	$t2, $a2
	.p2align	4, , 16
.LBB0_8:                                # %vector.body
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $t1, -16
	vld	$vr4, $t1, 0
	vld	$vr5, $a7, -16
	vld	$vr6, $a7, 0
	vld	$vr7, $a7, -24
	vld	$vr8, $a7, -8
	vfmul.d	$vr5, $vr0, $vr5
	vfmul.d	$vr6, $vr0, $vr6
	vfmadd.d	$vr5, $vr1, $vr7, $vr5
	vfmadd.d	$vr6, $vr1, $vr8, $vr6
	vfmadd.d	$vr3, $vr3, $vr5, $vr2
	vfmadd.d	$vr4, $vr4, $vr6, $vr2
	vst	$vr3, $t0, -16
	vst	$vr4, $t0, 0
	addi.d	$t2, $t2, -4
	addi.d	$t1, $t1, 32
	addi.d	$t0, $t0, 32
	addi.d	$a7, $a7, 32
	bnez	$t2, .LBB0_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB0_5 Depth=1
	move	$t2, $a2
	beq	$a0, $a2, .LBB0_4
.LBB0_10:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	alsl.d	$a7, $t2, $s2, 3
	alsl.d	$t0, $t2, $a1, 3
	alsl.d	$t1, $t2, $s1, 3
	sub.d	$t2, $a0, $t2
	.p2align	4, , 16
.LBB0_11:                               # %scalar.ph
                                        #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa3, $t0, 0
	fld.d	$fa4, $t0, -8
	fld.d	$fa5, $a7, 0
	fmul.d	$fa3, $ft3, $fa3
	fmadd.d	$fa3, $ft2, $fa4, $fa3
	fmadd.d	$fa3, $fa5, $fa3, $ft1
	fst.d	$fa3, $t1, 0
	addi.d	$a7, $a7, 8
	addi.d	$t0, $t0, 8
	addi.d	$t2, $t2, -1
	addi.d	$t1, $t1, 8
	bnez	$t2, .LBB0_11
	b	.LBB0_4
.LBB0_12:                               # %._crit_edge40
	move	$a0, $fp
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end0:
	.size	_ZL15BM_HYDRO_1D_RAWRN9benchmark5StateE, .Lfunc_end0-_ZL15BM_HYDRO_1D_RAWRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL11BM_ICCG_RAWRN9benchmark5StateE
	.type	_ZL11BM_ICCG_RAWRN9benchmark5StateE,@function
_ZL11BM_ICCG_RAWRN9benchmark5StateE:    # @_ZL11BM_ICCG_RAWRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 14
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 136
	ld.d	$s2, $s0, 144
	ld.w	$s3, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s3, .LBB1_9
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB1_9
# %bb.2:                                # %.lr.ph51
	ld.d	$a0, $fp, 32
	ld.d	$a0, $a0, 0
	addi.d	$a1, $s1, 8
	addi.d	$a2, $s2, 8
	addi.w	$a3, $a0, 0
	ori	$a4, $zero, 2
	ori	$a5, $zero, 3
	b	.LBB1_4
	.p2align	4, , 16
.LBB1_3:                                # %._crit_edge57
                                        #   in Loop: Header=BB1_4 Depth=1
	addi.d	$s0, $s0, -1
	beqz	$s0, .LBB1_9
.LBB1_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_6 Depth 2
                                        #       Child Loop BB1_7 Depth 3
	blt	$a3, $a4, .LBB1_3
# %bb.5:                                # %.lr.ph.preheader.preheader
                                        #   in Loop: Header=BB1_4 Depth=1
	move	$a7, $zero
	move	$a6, $a0
	move	$t2, $a0
	.p2align	4, , 16
.LBB1_6:                                # %.lr.ph.preheader
                                        #   Parent Loop BB1_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB1_7 Depth 3
	addi.w	$t1, $a7, 1
	move	$a7, $t2
	bstrpick.d	$t0, $a6, 31, 1
	addi.w	$t2, $t2, 0
	alsl.d	$t3, $t2, $a1, 3
	alsl.d	$t4, $t1, $a2, 3
	alsl.d	$t5, $t1, $s1, 3
	.p2align	4, , 16
.LBB1_7:                                # %.lr.ph
                                        #   Parent Loop BB1_4 Depth=1
                                        #     Parent Loop BB1_6 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fld.d	$fa0, $t5, 0
	fld.d	$fa1, $t4, -8
	fld.d	$fa2, $t5, -8
	fld.d	$fa3, $t4, 0
	fld.d	$fa4, $t5, 8
	fneg.d	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	fneg.d	$fa1, $fa3
	fmadd.d	$fa0, $fa1, $fa4, $fa0
	fst.d	$fa0, $t3, 0
	addi.d	$t1, $t1, 2
	addi.d	$t3, $t3, 8
	addi.d	$t4, $t4, 16
	addi.d	$t5, $t5, 16
	blt	$t1, $t2, .LBB1_7
# %bb.8:                                # %._crit_edge
                                        #   in Loop: Header=BB1_6 Depth=2
	addi.w	$t1, $a6, 0
	add.d	$t2, $t0, $a7
	move	$a6, $t0
	bltu	$a5, $t1, .LBB1_6
	b	.LBB1_3
.LBB1_9:                                # %._crit_edge52
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end1:
	.size	_ZL11BM_ICCG_RAWRN9benchmark5StateE, .Lfunc_end1-_ZL11BM_ICCG_RAWRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL17BM_INNER_PROD_RAWRN9benchmark5StateE
	.type	_ZL17BM_INNER_PROD_RAWRN9benchmark5StateE,@function
_ZL17BM_INNER_PROD_RAWRN9benchmark5StateE: # @_ZL17BM_INNER_PROD_RAWRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 15
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 8
	ld.d	$s0, $s0, 16
	ld.w	$s3, $fp, 28
	ld.d	$s2, $fp, 16
	st.d	$zero, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s3, .LBB2_9
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s2, .LBB2_9
# %bb.2:                                # %.lr.ph29
	ld.d	$a0, $fp, 32
	ld.d	$a2, $a0, 0
	ori	$a0, $zero, 1
	blt	$a2, $a0, .LBB2_8
# %bb.3:
	addi.d	$a1, $sp, 8
	b	.LBB2_5
	.p2align	4, , 16
.LBB2_4:                                # %._crit_edge
                                        #   in Loop: Header=BB2_5 Depth=1
	addi.d	$s2, $s2, -1
	beqz	$s2, .LBB2_9
.LBB2_5:                                # %.lr.ph29.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_7 Depth 2
	st.d	$zero, $sp, 8
	blt	$a2, $a0, .LBB2_4
# %bb.6:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB2_5 Depth=1
	move	$a3, $zero
	move	$a4, $s0
	move	$a5, $s1
	.p2align	4, , 16
.LBB2_7:                                # %.lr.ph
                                        #   Parent Loop BB2_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a4, 0
	fld.d	$fa1, $a5, 0
	fld.d	$fa2, $sp, 8
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fst.d	$fa0, $sp, 8
	#APP
	#NO_APP
	ld.d	$a2, $fp, 32
	ld.d	$a2, $a2, 0
	addi.d	$a3, $a3, 1
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 8
	blt	$a3, $a2, .LBB2_7
	b	.LBB2_4
.LBB2_8:                                # %.lr.ph29.split.us
	st.d	$zero, $sp, 8
.LBB2_9:                                # %._crit_edge30
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end2:
	.size	_ZL17BM_INNER_PROD_RAWRN9benchmark5StateE, .Lfunc_end2-_ZL17BM_INNER_PROD_RAWRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL18BM_BAND_LIN_EQ_RAWRN9benchmark5StateE
	.type	_ZL18BM_BAND_LIN_EQ_RAWRN9benchmark5StateE,@function
_ZL18BM_BAND_LIN_EQ_RAWRN9benchmark5StateE: # @_ZL18BM_BAND_LIN_EQ_RAWRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 16
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 8
	ld.d	$s0, $s0, 16
	ld.w	$s3, $fp, 28
	ld.d	$s2, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s3, .LBB3_13
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s2, .LBB3_13
# %bb.2:                                # %.preheader.lr.ph
	ld.d	$a0, $fp, 32
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 4
	bge	$a1, $a0, .LBB3_11
# %bb.3:                                # %.preheader.us.preheader
	addi.d	$a0, $a0, -5
	lu12i.w	$a1, -209716
	ori	$a1, $a1, 3277
	lu32i.d	$a1, -209716
	lu52i.d	$a1, $a1, -820
	mulh.du	$a0, $a0, $a1
	srli.d	$a0, $a0, 2
	fld.d	$fa0, $s1, 40
	addi.d	$a0, $a0, 1
	addi.d	$a1, $s0, 32
	addi.d	$a2, $s1, 2047
	addi.d	$a2, $a2, 1929
	lu12i.w	$a5, 1
	ori	$a3, $a5, 3856
	add.d	$a3, $s1, $a3
	ori	$a4, $zero, 4016
	ori	$a5, $a5, 3896
	.p2align	4, , 16
.LBB3_4:                                # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_5 Depth 2
                                        #     Child Loop BB3_7 Depth 2
                                        #     Child Loop BB3_9 Depth 2
	move	$a6, $a1
	move	$a7, $s1
	move	$t0, $a0
	.p2align	4, , 16
.LBB3_5:                                #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a7, 0
	fld.d	$fa2, $a6, 0
	fneg.d	$fa1, $fa1
	fmadd.d	$fa0, $fa1, $fa2, $fa0
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 40
	bnez	$t0, .LBB3_5
# %bb.6:                                # %._crit_edge.us.us
                                        #   in Loop: Header=BB3_4 Depth=1
	fld.d	$fa2, $s0, 32
	fldx.d	$fa1, $s1, $a4
	fmul.d	$fa0, $fa0, $fa2
	fst.d	$fa0, $s1, 40
	move	$a6, $a1
	move	$a7, $a2
	move	$t0, $a0
	.p2align	4, , 16
.LBB3_7:                                #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a7, 0
	fld.d	$fa3, $a6, 0
	fneg.d	$fa2, $fa2
	fmadd.d	$fa1, $fa2, $fa3, $fa1
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 40
	bnez	$t0, .LBB3_7
# %bb.8:                                # %._crit_edge.us.us.1
                                        #   in Loop: Header=BB3_4 Depth=1
	fld.d	$fa3, $s0, 32
	fldx.d	$fa2, $s1, $a5
	fmul.d	$fa1, $fa1, $fa3
	fstx.d	$fa1, $s1, $a4
	move	$a6, $a1
	move	$a7, $a3
	move	$t0, $a0
	.p2align	4, , 16
.LBB3_9:                                #   Parent Loop BB3_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a7, 0
	fld.d	$fa3, $a6, 0
	fneg.d	$fa1, $fa1
	fmadd.d	$fa2, $fa1, $fa3, $fa2
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 40
	bnez	$t0, .LBB3_9
# %bb.10:                               # %._crit_edge.us.us.2
                                        #   in Loop: Header=BB3_4 Depth=1
	fld.d	$fa1, $s0, 32
	fmul.d	$fa1, $fa2, $fa1
	addi.d	$s2, $s2, -1
	fstx.d	$fa1, $s1, $a5
	bnez	$s2, .LBB3_4
	b	.LBB3_13
.LBB3_11:                               # %.preheader.preheader
	fld.d	$fa0, $s1, 40
	ori	$a0, $zero, 4016
	fldx.d	$fa1, $s1, $a0
	lu12i.w	$a1, 1
	ori	$a1, $a1, 3896
	fldx.d	$fa2, $s1, $a1
	.p2align	4, , 16
.LBB3_12:                               # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa3, $s0, 32
	fmul.d	$fa0, $fa0, $fa3
	fst.d	$fa0, $s1, 40
	fld.d	$fa3, $s0, 32
	fmul.d	$fa1, $fa1, $fa3
	fstx.d	$fa1, $s1, $a0
	fld.d	$fa3, $s0, 32
	fmul.d	$fa2, $fa2, $fa3
	addi.d	$s2, $s2, -1
	fstx.d	$fa2, $s1, $a1
	bnez	$s2, .LBB3_12
.LBB3_13:                               # %._crit_edge
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end3:
	.size	_ZL18BM_BAND_LIN_EQ_RAWRN9benchmark5StateE, .Lfunc_end3-_ZL18BM_BAND_LIN_EQ_RAWRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL19BM_TRIDIAG_ELIM_RAWRN9benchmark5StateE
	.type	_ZL19BM_TRIDIAG_ELIM_RAWRN9benchmark5StateE,@function
_ZL19BM_TRIDIAG_ELIM_RAWRN9benchmark5StateE: # @_ZL19BM_TRIDIAG_ELIM_RAWRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 17
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 8
	ld.d	$s2, $s0, 16
	ld.d	$s3, $s0, 24
	ld.w	$s4, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s4, .LBB4_7
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB4_7
# %bb.2:                                # %.preheader.lr.ph
	ld.d	$a0, $fp, 32
	ld.d	$a3, $a0, 0
	ori	$a0, $zero, 2
	blt	$a3, $a0, .LBB4_7
# %bb.3:                                # %.preheader.us.preheader
	addi.d	$a0, $s3, 8
	addi.d	$a1, $s2, 8
	addi.d	$a2, $s1, 8
	addi.d	$a3, $a3, -1
	.p2align	4, , 16
.LBB4_4:                                # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_5 Depth 2
	fld.d	$fa0, $s1, 0
	move	$a4, $a3
	move	$a5, $a2
	move	$a6, $a1
	move	$a7, $a0
	.p2align	4, , 16
.LBB4_5:                                #   Parent Loop BB4_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a6, 0
	fld.d	$fa2, $a7, 0
	fsub.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa2, $fa0
	fst.d	$fa0, $a5, 0
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	bnez	$a4, .LBB4_5
# %bb.6:                                # %._crit_edge.us
                                        #   in Loop: Header=BB4_4 Depth=1
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB4_4
.LBB4_7:                                # %._crit_edge34
	move	$a0, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end4:
	.size	_ZL19BM_TRIDIAG_ELIM_RAWRN9benchmark5StateE, .Lfunc_end4-_ZL19BM_TRIDIAG_ELIM_RAWRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL10BM_EOS_RAWRN9benchmark5StateE
	.type	_ZL10BM_EOS_RAWRN9benchmark5StateE,@function
_ZL10BM_EOS_RAWRN9benchmark5StateE:     # @_ZL10BM_EOS_RAWRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 18
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 8
	ld.d	$s2, $s0, 16
	ld.d	$s3, $s0, 24
	ld.d	$s4, $s0, 32
	fld.d	$fa0, $s0, 384
	vst	$vr0, $sp, 32                   # 16-byte Folded Spill
	fld.d	$fa0, $s0, 392
	vst	$vr0, $sp, 16                   # 16-byte Folded Spill
	fld.d	$fa0, $s0, 400
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	ld.w	$s5, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	vld	$vr11, $sp, 0                   # 16-byte Folded Reload
	vld	$vr10, $sp, 16                  # 16-byte Folded Reload
	vld	$vr9, $sp, 32                   # 16-byte Folded Reload
	bnez	$s5, .LBB5_12
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB5_12
# %bb.2:                                # %.preheader.lr.ph
	ld.d	$a0, $fp, 32
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_12
# %bb.3:                                # %.preheader.us.preheader
	alsl.d	$a1, $a0, $s1, 3
	alsl.d	$a2, $a0, $s4, 3
	addi.d	$a2, $a2, 48
	alsl.d	$a3, $a0, $s3, 3
	alsl.d	$a4, $a0, $s2, 3
	sltu	$a2, $s1, $a2
	sltu	$a5, $s4, $a1
	and	$a2, $a2, $a5
	sltu	$a3, $s1, $a3
	sltu	$a5, $s3, $a1
	and	$a3, $a3, $a5
	or	$a2, $a2, $a3
	sltu	$a3, $s1, $a4
	sltu	$a1, $s2, $a1
	and	$a1, $a3, $a1
	or	$a3, $a2, $a1
	bstrpick.d	$a1, $a0, 62, 1
	slli.d	$a1, $a1, 1
	vreplvei.d	$vr0, $vr10, 0
	vreplvei.d	$vr1, $vr9, 0
	vreplvei.d	$vr2, $vr11, 0
	addi.d	$a2, $s4, 24
	addi.d	$a4, $a0, -1
	sltui	$a4, $a4, 1
	or	$a3, $a4, $a3
	andi	$a3, $a3, 1
	b	.LBB5_5
	.p2align	4, , 16
.LBB5_4:                                # %._crit_edge.us
                                        #   in Loop: Header=BB5_5 Depth=1
	addi.d	$s0, $s0, -1
	beqz	$s0, .LBB5_12
.LBB5_5:                                # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_8 Depth 2
                                        #     Child Loop BB5_11 Depth 2
	beqz	$a3, .LBB5_7
# %bb.6:                                #   in Loop: Header=BB5_5 Depth=1
	move	$t0, $zero
	b	.LBB5_10
	.p2align	4, , 16
.LBB5_7:                                # %vector.body.preheader
                                        #   in Loop: Header=BB5_5 Depth=1
	move	$a4, $s3
	move	$a5, $s2
	move	$a6, $s1
	move	$a7, $a1
	move	$t0, $a2
	.p2align	4, , 16
.LBB5_8:                                # %vector.body
                                        #   Parent Loop BB5_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr3, $a4, 0
	vld	$vr4, $a5, 0
	vld	$vr5, $t0, -24
	vld	$vr6, $t0, -8
	vld	$vr7, $t0, -16
	vfmadd.d	$vr3, $vr0, $vr4, $vr3
	vfmadd.d	$vr3, $vr0, $vr3, $vr5
	vld	$vr4, $t0, 0
	vfmadd.d	$vr5, $vr0, $vr7, $vr6
	vld	$vr6, $t0, 16
	vld	$vr7, $t0, 8
	vld	$vr8, $t0, 24
	vfmadd.d	$vr4, $vr0, $vr5, $vr4
	addi.d	$t0, $t0, 16
	vfmadd.d	$vr5, $vr1, $vr7, $vr6
	vfmadd.d	$vr5, $vr1, $vr5, $vr8
	vfmadd.d	$vr4, $vr2, $vr5, $vr4
	vfmadd.d	$vr3, $vr2, $vr4, $vr3
	vst	$vr3, $a6, 0
	addi.d	$a7, $a7, -2
	addi.d	$a6, $a6, 16
	addi.d	$a5, $a5, 16
	addi.d	$a4, $a4, 16
	bnez	$a7, .LBB5_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB5_5 Depth=1
	move	$t0, $a1
	beq	$a0, $a1, .LBB5_4
.LBB5_10:                               # %scalar.ph.preheader
                                        #   in Loop: Header=BB5_5 Depth=1
	sub.d	$a4, $a0, $t0
	alsl.d	$a5, $t0, $s1, 3
	alsl.d	$a6, $t0, $s2, 3
	alsl.d	$a7, $t0, $s3, 3
	alsl.d	$t0, $t0, $a2, 3
	.p2align	4, , 16
.LBB5_11:                               # %scalar.ph
                                        #   Parent Loop BB5_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa3, $a7, 0
	fld.d	$fa4, $a6, 0
	fld.d	$fa5, $t0, -24
	fld.d	$fa6, $t0, -8
	fld.d	$fa7, $t0, -16
	fmadd.d	$fa3, $ft2, $fa4, $fa3
	fmadd.d	$fa3, $ft2, $fa3, $fa5
	fld.d	$fa4, $t0, 0
	fmadd.d	$fa5, $ft2, $fa7, $fa6
	fld.d	$fa6, $t0, 16
	fld.d	$fa7, $t0, 8
	fld.d	$ft0, $t0, 24
	fmadd.d	$fa4, $ft2, $fa5, $fa4
	addi.d	$t0, $t0, 8
	fmadd.d	$fa5, $ft1, $fa7, $fa6
	fmadd.d	$fa5, $ft1, $fa5, $ft0
	fmadd.d	$fa4, $ft3, $fa5, $fa4
	fmadd.d	$fa3, $ft3, $fa4, $fa3
	fst.d	$fa3, $a5, 0
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 8
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, 8
	bnez	$a4, .LBB5_11
	b	.LBB5_4
.LBB5_12:                               # %._crit_edge58
	move	$a0, $fp
	ld.d	$s5, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end5:
	.size	_ZL10BM_EOS_RAWRN9benchmark5StateE, .Lfunc_end5-_ZL10BM_EOS_RAWRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL10BM_ADI_RAWRN9benchmark5StateE
	.type	_ZL10BM_ADI_RAWRN9benchmark5StateE,@function
_ZL10BM_ADI_RAWRN9benchmark5StateE:     # @_ZL10BM_ADI_RAWRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -176
	.cfi_def_cfa_offset 176
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
	fst.d	$fs0, $sp, 80                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 72                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 24                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	.cfi_offset 58, -112
	.cfi_offset 59, -120
	.cfi_offset 60, -128
	.cfi_offset 61, -136
	.cfi_offset 62, -144
	.cfi_offset 63, -152
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 19
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 8
	ld.d	$s2, $s0, 16
	ld.d	$s3, $s0, 24
	ld.d	$s4, $s0, 360
	ld.d	$s5, $s0, 368
	ld.d	$s6, $s0, 376
	fld.d	$fs0, $s0, 384
	fld.d	$fa0, $s0, 392
	fst.d	$fa0, $sp, 16                   # 8-byte Folded Spill
	fld.d	$fa0, $s0, 400
	fst.d	$fa0, $sp, 8                    # 8-byte Folded Spill
	fld.d	$fs3, $s0, 408
	fld.d	$fs4, $s0, 416
	fld.d	$fs5, $s0, 424
	fld.d	$fs6, $s0, 432
	fld.d	$fs7, $s0, 440
	fld.d	$fs1, $s0, 448
	fld.d	$fs2, $s0, 456
	ld.w	$s7, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	fld.d	$fa7, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fa6, $sp, 16                   # 8-byte Folded Reload
	bnez	$s7, .LBB6_9
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB6_9
# %bb.2:                                # %.preheader159.lr.ph
	ld.d	$a0, $fp, 32
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB6_9
# %bb.3:                                # %.preheader159.lr.ph.split.us
	ld.d	$t2, $s4, 0
	ld.d	$t3, $s5, 0
	ld.d	$t4, $s6, 0
	ld.d	$a1, $s4, 8
	ld.d	$a2, $s5, 8
	ld.d	$a3, $s6, 8
	ld.d	$a4, $t2, 0
	ld.d	$a5, $t3, 0
	ld.d	$a6, $t4, 0
	ld.d	$a7, $t2, 8
	ld.d	$t0, $t3, 8
	ld.d	$t1, $t4, 8
	addi.d	$t2, $t2, 16
	addi.d	$t3, $t3, 16
	addi.d	$t4, $t4, 16
	addi.d	$t5, $a0, -1
	vldi	$vr0, -896
	.p2align	4, , 16
.LBB6_4:                                # %.preheader159.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_5 Depth 2
                                        #     Child Loop BB6_7 Depth 2
	ori	$t6, $zero, 1
	ori	$t7, $zero, 8
	move	$t8, $t1
	move	$s4, $t0
	move	$s5, $a7
	move	$ra, $a6
	move	$s8, $a5
	move	$s7, $a4
	.p2align	4, , 16
.LBB6_5:                                #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s6, $s5
	add.d	$s5, $t2, $t7
	ld.d	$s5, $s5, -8
	fld.d	$fa1, $s7, 8
	fld.d	$fa2, $s5, 8
	move	$s7, $s4
	add.d	$s4, $t3, $t7
	ld.d	$s4, $s4, -8
	fsub.d	$fa1, $fa2, $fa1
	fstx.d	$fa1, $s1, $t7
	fld.d	$fa1, $s8, 8
	fld.d	$fa2, $s4, 8
	move	$s8, $t8
	add.d	$t8, $t4, $t7
	ld.d	$t8, $t8, -8
	fsub.d	$fa1, $fa2, $fa1
	fstx.d	$fa1, $s2, $t7
	fld.d	$fa1, $ra, 8
	fld.d	$fa2, $t8, 8
	fsub.d	$fa1, $fa2, $fa1
	fstx.d	$fa1, $s3, $t7
	fld.d	$fa2, $s6, 8
	fldx.d	$fa3, $s1, $t7
	fldx.d	$fa4, $s2, $t7
	fmadd.d	$fa3, $fa6, $fa3, $fa2
	fmadd.d	$fa3, $fa7, $fa4, $fa3
	fld.d	$fa4, $s6, 16
	fld.d	$fa5, $s6, 0
	fmadd.d	$fa1, $fs3, $fa1, $fa3
	ldx.d	$ra, $a1, $t7
	fmadd.d	$fa2, $fa2, $fa0, $fa4
	fadd.d	$fa2, $fa2, $fa5
	fmadd.d	$fa1, $fs0, $fa2, $fa1
	fst.d	$fa1, $ra, 8
	fld.d	$fa1, $s7, 8
	fldx.d	$fa2, $s1, $t7
	fldx.d	$fa3, $s2, $t7
	fmadd.d	$fa2, $fs4, $fa2, $fa1
	fldx.d	$fa4, $s3, $t7
	fmadd.d	$fa2, $fs5, $fa3, $fa2
	fld.d	$fa3, $s7, 16
	fld.d	$fa5, $s7, 0
	fmadd.d	$fa2, $fs6, $fa4, $fa2
	ldx.d	$ra, $a2, $t7
	fmadd.d	$fa1, $fa1, $fa0, $fa3
	fadd.d	$fa1, $fa1, $fa5
	fmadd.d	$fa1, $fs0, $fa1, $fa2
	fst.d	$fa1, $ra, 8
	fld.d	$fa1, $s8, 8
	fldx.d	$fa2, $s1, $t7
	fldx.d	$fa3, $s2, $t7
	fldx.d	$fa4, $s3, $t7
	fmadd.d	$fa2, $fs7, $fa2, $fa1
	fmadd.d	$fa2, $fs1, $fa3, $fa2
	fmadd.d	$fa2, $fs2, $fa4, $fa2
	fld.d	$fa3, $s8, 16
	fld.d	$fa4, $s8, 0
	addi.d	$t6, $t6, 1
	ldx.d	$ra, $a3, $t7
	fmadd.d	$fa1, $fa1, $fa0, $fa3
	fadd.d	$fa1, $fa1, $fa4
	fmadd.d	$fa1, $fs0, $fa1, $fa2
	fst.d	$fa1, $ra, 8
	addi.d	$t7, $t7, 8
	move	$ra, $s8
	move	$s8, $s7
	move	$s7, $s6
	bne	$a0, $t6, .LBB6_5
# %bb.6:                                # %._crit_edge.us.us.preheader
                                        #   in Loop: Header=BB6_4 Depth=1
	ori	$t6, $zero, 8
	move	$t7, $t5
	move	$t8, $t1
	move	$s4, $t0
	move	$s5, $a7
	move	$ra, $a6
	move	$s8, $a5
	move	$s7, $a4
	.p2align	4, , 16
.LBB6_7:                                # %._crit_edge.us.us
                                        #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	move	$s6, $s5
	add.d	$s5, $t2, $t6
	ld.d	$s5, $s5, -8
	fld.d	$fa1, $s7, 16
	fld.d	$fa2, $s5, 16
	move	$s7, $s4
	add.d	$s4, $t3, $t6
	ld.d	$s4, $s4, -8
	fsub.d	$fa1, $fa2, $fa1
	fstx.d	$fa1, $s1, $t6
	fld.d	$fa1, $s8, 16
	fld.d	$fa2, $s4, 16
	move	$s8, $t8
	add.d	$t8, $t4, $t6
	ld.d	$t8, $t8, -8
	fsub.d	$fa1, $fa2, $fa1
	fstx.d	$fa1, $s2, $t6
	fld.d	$fa1, $ra, 16
	fld.d	$fa2, $t8, 16
	fsub.d	$fa1, $fa2, $fa1
	fstx.d	$fa1, $s3, $t6
	fld.d	$fa2, $s6, 16
	fldx.d	$fa3, $s1, $t6
	fldx.d	$fa4, $s2, $t6
	fmadd.d	$fa3, $fa6, $fa3, $fa2
	fmadd.d	$fa3, $fa7, $fa4, $fa3
	fld.d	$fa4, $s6, 24
	fld.d	$fa5, $s6, 8
	fmadd.d	$fa1, $fs3, $fa1, $fa3
	ldx.d	$ra, $a1, $t6
	fmadd.d	$fa2, $fa2, $fa0, $fa4
	fadd.d	$fa2, $fa2, $fa5
	fmadd.d	$fa1, $fs0, $fa2, $fa1
	fst.d	$fa1, $ra, 16
	fld.d	$fa1, $s7, 16
	fldx.d	$fa2, $s1, $t6
	fldx.d	$fa3, $s2, $t6
	fmadd.d	$fa2, $fs4, $fa2, $fa1
	fldx.d	$fa4, $s3, $t6
	fmadd.d	$fa2, $fs5, $fa3, $fa2
	fld.d	$fa3, $s7, 24
	fld.d	$fa5, $s7, 8
	fmadd.d	$fa2, $fs6, $fa4, $fa2
	ldx.d	$ra, $a2, $t6
	fmadd.d	$fa1, $fa1, $fa0, $fa3
	fadd.d	$fa1, $fa1, $fa5
	fmadd.d	$fa1, $fs0, $fa1, $fa2
	fst.d	$fa1, $ra, 16
	fld.d	$fa1, $s8, 16
	fldx.d	$fa2, $s1, $t6
	fldx.d	$fa3, $s2, $t6
	fmadd.d	$fa2, $fs7, $fa2, $fa1
	fldx.d	$fa4, $s3, $t6
	fmadd.d	$fa2, $fs1, $fa3, $fa2
	fld.d	$fa3, $s8, 24
	fld.d	$fa5, $s8, 8
	fmadd.d	$fa2, $fs2, $fa4, $fa2
	ldx.d	$ra, $a3, $t6
	fmadd.d	$fa1, $fa1, $fa0, $fa3
	fadd.d	$fa1, $fa1, $fa5
	fmadd.d	$fa1, $fs0, $fa1, $fa2
	fst.d	$fa1, $ra, 16
	addi.d	$t7, $t7, -1
	addi.d	$t6, $t6, 8
	move	$ra, $s8
	move	$s8, $s7
	move	$s7, $s6
	bnez	$t7, .LBB6_7
# %bb.8:                                # %._crit_edge.us.us.1
                                        #   in Loop: Header=BB6_4 Depth=1
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB6_4
.LBB6_9:                                # %._crit_edge
	move	$a0, $fp
	fld.d	$fs7, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs6, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 64                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 72                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 80                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end6:
	.size	_ZL10BM_ADI_RAWRN9benchmark5StateE, .Lfunc_end6-_ZL10BM_ADI_RAWRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL18BM_INT_PREDICT_RAWRN9benchmark5StateE
	.type	_ZL18BM_INT_PREDICT_RAWRN9benchmark5StateE,@function
_ZL18BM_INT_PREDICT_RAWRN9benchmark5StateE: # @_ZL18BM_INT_PREDICT_RAWRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 64                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 56                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs6, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs7, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 56, -48
	.cfi_offset 57, -56
	.cfi_offset 58, -64
	.cfi_offset 59, -72
	.cfi_offset 60, -80
	.cfi_offset 61, -88
	.cfi_offset 62, -96
	.cfi_offset 63, -104
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 20
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 232
	fld.d	$fs0, $s0, 384
	fld.d	$fs1, $s0, 392
	fld.d	$fs2, $s0, 400
	fld.d	$fs3, $s0, 408
	fld.d	$fs4, $s0, 416
	fld.d	$fs5, $s0, 424
	fld.d	$fs6, $s0, 432
	fld.d	$fs7, $s0, 440
	ld.w	$s2, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB7_6
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB7_6
# %bb.2:                                # %.preheader.lr.ph
	ld.d	$a0, $fp, 32
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB7_6
	.p2align	4, , 16
.LBB7_3:                                # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_4 Depth 2
	move	$a1, $a0
	move	$a2, $s1
	.p2align	4, , 16
.LBB7_4:                                #   Parent Loop BB7_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a2, 0
	fld.d	$fa0, $a3, 88
	fld.d	$fa1, $a3, 96
	fmul.d	$fa0, $fs5, $fa0
	fld.d	$fa2, $a3, 80
	fld.d	$fa3, $a3, 72
	fld.d	$fa4, $a3, 64
	fmadd.d	$fa0, $fs6, $fa1, $fa0
	fmadd.d	$fa0, $fs4, $fa2, $fa0
	fmadd.d	$fa0, $fs3, $fa3, $fa0
	fmadd.d	$fa0, $fs2, $fa4, $fa0
	fld.d	$fa1, $a3, 56
	fld.d	$fa2, $a3, 48
	fld.d	$fa3, $a3, 32
	fld.d	$fa4, $a3, 40
	fmadd.d	$fa0, $fs1, $fa1, $fa0
	fld.d	$fa1, $a3, 16
	fmadd.d	$fa0, $fs0, $fa2, $fa0
	fadd.d	$fa2, $fa3, $fa4
	fmadd.d	$fa0, $fs7, $fa2, $fa0
	fadd.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $a3, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB7_4
# %bb.5:                                # %._crit_edge.us
                                        #   in Loop: Header=BB7_3 Depth=1
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB7_3
.LBB7_6:                                # %._crit_edge62
	move	$a0, $fp
	fld.d	$fs7, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs6, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs5, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs4, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 48                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 56                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 64                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end7:
	.size	_ZL18BM_INT_PREDICT_RAWRN9benchmark5StateE, .Lfunc_end7-_ZL18BM_INT_PREDICT_RAWRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL19BM_DIFF_PREDICT_RAWRN9benchmark5StateE
	.type	_ZL19BM_DIFF_PREDICT_RAWRN9benchmark5StateE,@function
_ZL19BM_DIFF_PREDICT_RAWRN9benchmark5StateE: # @_ZL19BM_DIFF_PREDICT_RAWRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 21
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 232
	ld.d	$s0, $s0, 240
	ld.w	$s3, $fp, 28
	ld.d	$s2, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s3, .LBB8_6
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s2, .LBB8_6
# %bb.2:                                # %.preheader.lr.ph
	ld.d	$a0, $fp, 32
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB8_6
	.p2align	4, , 16
.LBB8_3:                                # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_4 Depth 2
	move	$a1, $a0
	move	$a2, $s1
	move	$a3, $s0
	.p2align	4, , 16
.LBB8_4:                                #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a4, $a3, 0
	ld.d	$a5, $a2, 0
	fld.d	$fa0, $a4, 32
	fld.d	$fa1, $a5, 32
	fld.d	$fa2, $a5, 40
	fsub.d	$fa1, $fa0, $fa1
	fst.d	$fa0, $a5, 32
	fld.d	$fa0, $a5, 48
	fsub.d	$fa2, $fa1, $fa2
	fst.d	$fa1, $a5, 40
	fld.d	$fa1, $a5, 56
	fsub.d	$fa0, $fa2, $fa0
	fst.d	$fa2, $a5, 48
	fld.d	$fa2, $a5, 64
	fsub.d	$fa1, $fa0, $fa1
	fst.d	$fa0, $a5, 56
	fld.d	$fa0, $a5, 72
	fsub.d	$fa2, $fa1, $fa2
	fst.d	$fa1, $a5, 64
	fld.d	$fa1, $a5, 80
	fsub.d	$fa0, $fa2, $fa0
	fst.d	$fa2, $a5, 72
	fld.d	$fa2, $a5, 88
	fsub.d	$fa1, $fa0, $fa1
	fld.d	$fa3, $a5, 96
	fst.d	$fa0, $a5, 80
	fsub.d	$fa0, $fa1, $fa2
	fst.d	$fa1, $a5, 88
	fsub.d	$fa1, $fa0, $fa3
	fst.d	$fa1, $a5, 104
	fst.d	$fa0, $a5, 96
	addi.d	$a3, $a3, 8
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB8_4
# %bb.5:                                # %._crit_edge.us
                                        #   in Loop: Header=BB8_3 Depth=1
	addi.d	$s2, $s2, -1
	bnez	$s2, .LBB8_3
.LBB8_6:                                # %._crit_edge83
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end8:
	.size	_ZL19BM_DIFF_PREDICT_RAWRN9benchmark5StateE, .Lfunc_end8-_ZL19BM_DIFF_PREDICT_RAWRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL16BM_FIRST_SUM_RAWRN9benchmark5StateE
	.type	_ZL16BM_FIRST_SUM_RAWRN9benchmark5StateE,@function
_ZL16BM_FIRST_SUM_RAWRN9benchmark5StateE: # @_ZL16BM_FIRST_SUM_RAWRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 22
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 8
	ld.d	$s0, $s0, 16
	ld.w	$s3, $fp, 28
	ld.d	$s2, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s3, .LBB9_8
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s2, .LBB9_8
# %bb.2:                                # %.lr.ph33
	ld.d	$a0, $fp, 32
	ld.d	$a2, $a0, 0
	ori	$a0, $zero, 2
	blt	$a2, $a0, .LBB9_7
# %bb.3:                                # %.lr.ph.us.preheader
	addi.d	$a0, $s1, 8
	addi.d	$a1, $s0, 8
	addi.d	$a2, $a2, -1
	.p2align	4, , 16
.LBB9_4:                                # %.lr.ph.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_5 Depth 2
	fld.d	$fa0, $s0, 0
	fst.d	$fa0, $s1, 0
	move	$a3, $a2
	move	$a4, $a1
	move	$a5, $a0
	.p2align	4, , 16
.LBB9_5:                                #   Parent Loop BB9_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa1, $a4, 0
	fadd.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a5, 0
	addi.d	$a5, $a5, 8
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	bnez	$a3, .LBB9_5
# %bb.6:                                # %._crit_edge.us
                                        #   in Loop: Header=BB9_4 Depth=1
	addi.d	$s2, $s2, -1
	bnez	$s2, .LBB9_4
	b	.LBB9_8
.LBB9_7:                                # %.lr.ph33.split.preheader
	fld.d	$fa0, $s0, 0
	fst.d	$fa0, $s1, 0
.LBB9_8:                                # %._crit_edge34
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end9:
	.size	_ZL16BM_FIRST_SUM_RAWRN9benchmark5StateE, .Lfunc_end9-_ZL16BM_FIRST_SUM_RAWRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL17BM_FIRST_DIFF_RAWRN9benchmark5StateE
	.type	_ZL17BM_FIRST_DIFF_RAWRN9benchmark5StateE,@function
_ZL17BM_FIRST_DIFF_RAWRN9benchmark5StateE: # @_ZL17BM_FIRST_DIFF_RAWRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	st.d	$s3, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 23
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 8
	ld.d	$s2, $s0, 16
	ld.w	$s3, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s3, .LBB10_12
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB10_12
# %bb.2:                                # %.preheader.lr.ph
	ld.d	$a0, $fp, 32
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB10_12
# %bb.3:                                # %.preheader.us.preheader
	alsl.d	$a2, $a0, $s1, 3
	addi.d	$a1, $s2, 8
	alsl.d	$a3, $a0, $a1, 3
	sltu	$a3, $s1, $a3
	sltu	$a2, $s2, $a2
	and	$a5, $a3, $a2
	bstrpick.d	$a2, $a0, 62, 2
	slli.d	$a2, $a2, 2
	addi.d	$a3, $s2, 16
	addi.d	$a4, $s1, 16
	sltui	$a6, $a0, 4
	or	$a5, $a6, $a5
	andi	$a5, $a5, 1
	b	.LBB10_5
	.p2align	4, , 16
.LBB10_4:                               # %._crit_edge.us
                                        #   in Loop: Header=BB10_5 Depth=1
	addi.d	$s0, $s0, -1
	beqz	$s0, .LBB10_12
.LBB10_5:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_8 Depth 2
                                        #     Child Loop BB10_11 Depth 2
	beqz	$a5, .LBB10_7
# %bb.6:                                #   in Loop: Header=BB10_5 Depth=1
	move	$t0, $zero
	b	.LBB10_10
	.p2align	4, , 16
.LBB10_7:                               # %vector.body.preheader
                                        #   in Loop: Header=BB10_5 Depth=1
	move	$a6, $a4
	move	$a7, $a2
	move	$t0, $a3
	.p2align	4, , 16
.LBB10_8:                               # %vector.body
                                        #   Parent Loop BB10_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $t0, -8
	vld	$vr1, $t0, 8
	vld	$vr2, $t0, -16
	vld	$vr3, $t0, 0
	vfsub.d	$vr0, $vr0, $vr2
	vfsub.d	$vr1, $vr1, $vr3
	vst	$vr0, $a6, -16
	vst	$vr1, $a6, 0
	addi.d	$t0, $t0, 32
	addi.d	$a7, $a7, -4
	addi.d	$a6, $a6, 32
	bnez	$a7, .LBB10_8
# %bb.9:                                # %middle.block
                                        #   in Loop: Header=BB10_5 Depth=1
	move	$t0, $a2
	beq	$a0, $a2, .LBB10_4
.LBB10_10:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB10_5 Depth=1
	alsl.d	$a6, $t0, $a1, 3
	alsl.d	$a7, $t0, $s1, 3
	sub.d	$t0, $a0, $t0
	.p2align	4, , 16
.LBB10_11:                              # %scalar.ph
                                        #   Parent Loop BB10_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a6, 0
	fld.d	$fa1, $a6, -8
	fsub.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $a7, 0
	addi.d	$a6, $a6, 8
	addi.d	$t0, $t0, -1
	addi.d	$a7, $a7, 8
	bnez	$t0, .LBB10_11
	b	.LBB10_4
.LBB10_12:                              # %._crit_edge31
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end10:
	.size	_ZL17BM_FIRST_DIFF_RAWRN9benchmark5StateE, .Lfunc_end10-_ZL17BM_FIRST_DIFF_RAWRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL13BM_PIC_2D_RAWRN9benchmark5StateE
	.type	_ZL13BM_PIC_2D_RAWRN9benchmark5StateE,@function
_ZL13BM_PIC_2D_RAWRN9benchmark5StateE:  # @_ZL13BM_PIC_2D_RAWRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
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
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 232
	ld.d	$s2, $s0, 240
	ld.d	$s3, $s0, 248
	ld.d	$s4, $s0, 8
	ld.d	$s5, $s0, 16
	ld.d	$s6, $s0, 152
	ld.d	$s7, $s0, 160
	ld.d	$s0, $s0, 352
	ld.w	$a0, $fp, 28
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	ld.d	$s8, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	bnez	$a1, .LBB11_7
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s8, .LBB11_7
# %bb.2:                                # %.preheader.lr.ph
	ld.d	$a1, $fp, 32
	ld.d	$t1, $a1, 0
	ori	$a1, $zero, 1
	blt	$t1, $a1, .LBB11_7
# %bb.3:                                # %.preheader.us.preheader
	vldi	$vr0, -912
	.p2align	4, , 16
.LBB11_4:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_5 Depth 2
	move	$a1, $t1
	move	$a2, $s1
	.p2align	4, , 16
.LBB11_5:                               #   Parent Loop BB11_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a3, $a2, 0
	fld.d	$fa1, $a3, 0
	fld.d	$fa2, $a3, 8
	ftintrz.l.d	$fa3, $fa1
	ftintrz.l.d	$fa4, $fa2
	movfr2gr.d	$a4, $fa4
	andi	$a4, $a4, 63
	slli.d	$a4, $a4, 3
	ldx.d	$a5, $s2, $a4
	movfr2gr.d	$a6, $fa3
	andi	$a6, $a6, 63
	slli.d	$a6, $a6, 3
	fldx.d	$fa3, $a5, $a6
	fld.d	$fa4, $a3, 16
	ldx.d	$a4, $s3, $a4
	fadd.d	$fa3, $fa3, $fa4
	fst.d	$fa3, $a3, 16
	fldx.d	$fa4, $a4, $a6
	fld.d	$fa5, $a3, 24
	fadd.d	$fa4, $fa4, $fa5
	fst.d	$fa4, $a3, 24
	fadd.d	$fa1, $fa1, $fa3
	fst.d	$fa1, $a3, 0
	fadd.d	$fa2, $fa2, $fa4
	fst.d	$fa2, $a3, 8
	ftintrz.l.d	$fa3, $fa1
	movfr2gr.d	$a4, $fa3
	andi	$a4, $a4, 63
	addi.d	$a5, $a4, 32
	slli.d	$a6, $a5, 3
	fldx.d	$fa3, $s4, $a6
	ftintrz.l.d	$fa4, $fa2
	movfr2gr.d	$a6, $fa4
	andi	$a6, $a6, 63
	fadd.d	$fa1, $fa1, $fa3
	fst.d	$fa1, $a3, 0
	addi.d	$a7, $a6, 32
	slli.d	$t0, $a7, 3
	fldx.d	$fa1, $s5, $t0
	slli.d	$a7, $a7, 2
	ldx.w	$a7, $s7, $a7
	fadd.d	$fa1, $fa2, $fa1
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $s6, $a5
	add.w	$a6, $a7, $a6
	slli.d	$a6, $a6, 3
	ldx.d	$a6, $s0, $a6
	fst.d	$fa1, $a3, 8
	add.w	$a3, $a5, $a4
	slli.d	$a3, $a3, 3
	fldx.d	$fa1, $a6, $a3
	fadd.d	$fa1, $fa1, $fa0
	fstx.d	$fa1, $a6, $a3
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	bnez	$a1, .LBB11_5
# %bb.6:                                # %._crit_edge.us
                                        #   in Loop: Header=BB11_4 Depth=1
	addi.d	$s8, $s8, -1
	bnez	$s8, .LBB11_4
.LBB11_7:                               # %._crit_edge78
	move	$a0, $fp
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
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end11:
	.size	_ZL13BM_PIC_2D_RAWRN9benchmark5StateE, .Lfunc_end11-_ZL13BM_PIC_2D_RAWRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL13BM_PIC_1D_RAWRN9benchmark5StateE
	.type	_ZL13BM_PIC_1D_RAWRN9benchmark5StateE,@function
_ZL13BM_PIC_1D_RAWRN9benchmark5StateE:  # @_ZL13BM_PIC_1D_RAWRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -160
	.cfi_def_cfa_offset 160
	st.d	$ra, $sp, 152                   # 8-byte Folded Spill
	st.d	$fp, $sp, 144                   # 8-byte Folded Spill
	st.d	$s0, $sp, 136                   # 8-byte Folded Spill
	st.d	$s1, $sp, 128                   # 8-byte Folded Spill
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 112                   # 8-byte Folded Spill
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 96                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
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
	move	$s8, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 25
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 8
	ld.d	$s2, $s0, 16
	ld.d	$s3, $s0, 24
	ld.d	$a0, $s0, 32
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ld.d	$s4, $s0, 40
	ld.d	$a0, $s0, 48
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s5, $s0, 56
	ld.d	$s6, $s0, 64
	ld.d	$s7, $s0, 72
	fld.d	$fa0, $s0, 384
	vst	$vr0, $sp, 48                   # 16-byte Folded Spill
	ld.d	$a0, $s0, 168
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$fp, $s0, 176
	ld.d	$s0, $s0, 184
	move	$a0, $s8
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a1, $s8, 28
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.d	$s8, $s8, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	vld	$vr9, $sp, 48                   # 16-byte Folded Reload
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bnez	$a1, .LBB12_18
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s8, .LBB12_18
# %bb.2:                                # %.preheader123.lr.ph
	ld.d	$a1, $a0, 32
	ld.d	$t8, $a1, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	addi.d	$a1, $a1, -8
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	addi.d	$a2, $a2, -8
	alsl.d	$a3, $t8, $s1, 3
	alsl.d	$a4, $t8, $s7, 3
	alsl.d	$a5, $t8, $s2, 3
	alsl.d	$a6, $t8, $s4, 3
	alsl.d	$a7, $t8, $s3, 3
	alsl.d	$t0, $t8, $s5, 3
	sltu	$t1, $s1, $a4
	sltu	$t2, $s7, $a3
	and	$t1, $t1, $t2
	sltu	$t2, $s1, $a5
	sltu	$t3, $s2, $a3
	and	$t2, $t2, $t3
	or	$t1, $t1, $t2
	sltu	$t2, $s1, $a6
	sltu	$t3, $s4, $a3
	and	$t2, $t2, $t3
	or	$t1, $t1, $t2
	sltu	$t2, $s1, $a7
	sltu	$t3, $s3, $a3
	and	$t2, $t2, $t3
	or	$t1, $t1, $t2
	sltu	$t2, $s1, $t0
	sltu	$a3, $s5, $a3
	and	$a3, $t2, $a3
	or	$a3, $t1, $a3
	sltu	$t1, $s7, $a5
	sltu	$t2, $s2, $a4
	and	$t1, $t1, $t2
	or	$a3, $a3, $t1
	sltu	$t1, $s7, $a6
	sltu	$t2, $s4, $a4
	and	$t1, $t1, $t2
	or	$a3, $a3, $t1
	sltu	$t1, $s7, $a7
	sltu	$t2, $s3, $a4
	and	$t1, $t1, $t2
	or	$a3, $a3, $t1
	sltu	$t1, $s7, $t0
	sltu	$a4, $s5, $a4
	and	$a4, $t1, $a4
	or	$a3, $a3, $a4
	sltu	$a4, $s2, $a6
	sltu	$a6, $s4, $a5
	and	$a4, $a4, $a6
	or	$a3, $a3, $a4
	sltu	$a4, $s2, $a7
	sltu	$a6, $s3, $a5
	and	$a4, $a4, $a6
	or	$a3, $a3, $a4
	sltu	$a4, $s2, $t0
	sltu	$a5, $s5, $a5
	and	$a4, $a4, $a5
	or	$a3, $a3, $a4
	bstrpick.d	$a4, $t8, 62, 1
	slli.d	$a4, $a4, 1
	vreplvei.d	$vr0, $vr9, 0
	ori	$a5, $zero, 1
	movgr2fr.d	$fa1, $zero
	vldi	$vr2, -912
	ori	$a6, $zero, 2047
	vreplgr2vr.w	$vr3, $a6
	b	.LBB12_4
	.p2align	4, , 16
.LBB12_3:                               # %._crit_edge
                                        #   in Loop: Header=BB12_4 Depth=1
	addi.d	$s8, $s8, -1
	beqz	$s8, .LBB12_18
.LBB12_4:                               # %.preheader123
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_7 Depth 2
                                        #     Child Loop BB12_12 Depth 2
                                        #     Child Loop BB12_15 Depth 2
                                        #     Child Loop BB12_17 Depth 2
	move	$a6, $t8
	move	$a7, $s1
	move	$t0, $s2
	move	$t1, $s0
	move	$t2, $ra
	move	$t3, $s3
	move	$t4, $s5
	move	$t5, $s4
	bge	$t8, $a5, .LBB12_7
	b	.LBB12_3
	.p2align	4, , 16
.LBB12_5:                               #   in Loop: Header=BB12_7 Depth=2
	slli.d	$t6, $t6, 3
	fldx.d	$fa4, $a1, $t6
	fst.d	$fa4, $t5, 0
	fldx.d	$fa4, $a2, $t6
.LBB12_6:                               #   in Loop: Header=BB12_7 Depth=2
	fst.d	$fa4, $t4, 0
	addi.d	$t5, $t5, 8
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 8
	addi.d	$t2, $t2, 4
	addi.d	$t1, $t1, 4
	addi.d	$t0, $t0, 8
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 8
	beqz	$a6, .LBB12_9
.LBB12_7:                               # %.lr.ph
                                        #   Parent Loop BB12_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t6, $t1, 0
	st.d	$zero, $a7, 0
	st.d	$zero, $t0, 0
	st.w	$t6, $t2, 0
	movgr2fr.w	$fa4, $t6
	ffint.d.w	$fa4, $fa4
	fst.d	$fa4, $t3, 0
	bnez	$t6, .LBB12_5
# %bb.8:                                # %.thread
                                        #   in Loop: Header=BB12_7 Depth=2
	st.d	$zero, $t5, 0
	fmov.d	$fa4, $fa1
	b	.LBB12_6
	.p2align	4, , 16
.LBB12_9:                               # %.preheader122
                                        #   in Loop: Header=BB12_4 Depth=1
	addi.d	$a6, $t8, -1
	sltui	$a6, $a6, 1
	or	$a6, $a6, $a3
	andi	$a6, $a6, 1
	beqz	$a6, .LBB12_11
# %bb.10:                               #   in Loop: Header=BB12_4 Depth=1
	move	$t5, $zero
	b	.LBB12_14
	.p2align	4, , 16
.LBB12_11:                              # %vector.body.preheader
                                        #   in Loop: Header=BB12_4 Depth=1
	move	$a6, $s1
	move	$a7, $s4
	move	$t0, $s2
	move	$t1, $s3
	move	$t2, $s5
	move	$t3, $fp
	move	$t4, $s7
	move	$t5, $a4
	.p2align	4, , 16
.LBB12_12:                              # %vector.body
                                        #   Parent Loop BB12_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr4, $a6, 0
	vld	$vr5, $a7, 0
	vld	$vr6, $t0, 0
	vld	$vr7, $t1, 0
	vld	$vr8, $t2, 0
	vfadd.d	$vr4, $vr4, $vr5
	vfsub.d	$vr5, $vr6, $vr7
	vfmadd.d	$vr4, $vr5, $vr8, $vr4
	vst	$vr4, $a6, 0
	vfadd.d	$vr4, $vr4, $vr6
	vfadd.d	$vr4, $vr0, $vr4
	vreplvei.d	$vr5, $vr4, 0
	ftintrz.w.d	$fa5, $fa5
	movfr2gr.s	$t6, $fa5
	vinsgr2vr.w	$vr5, $t6, 0
	vreplvei.d	$vr6, $vr4, 1
	ftintrz.w.d	$fa6, $fa6
	movfr2gr.s	$t7, $fa6
	vinsgr2vr.w	$vr6, $t7, 0
	movgr2fr.w	$fa7, $t6
	ffint.d.w	$fa7, $fa7
	vpackev.w	$vr5, $vr6, $vr5
	movfr2gr.d	$t6, $fa7
	movgr2fr.w	$fa6, $t7
	ffint.d.w	$fa6, $fa6
	vinsgr2vr.d	$vr7, $t6, 0
	movfr2gr.d	$t6, $fa6
	vinsgr2vr.d	$vr7, $t6, 1
	vfsub.d	$vr4, $vr4, $vr7
	vst	$vr4, $t4, 0
	vand.v	$vr5, $vr5, $vr3
	vaddi.wu	$vr5, $vr5, 1
	vpickve2gr.w	$t6, $vr5, 0
	andi	$t6, $t6, 4095
	movgr2fr.w	$fa6, $t6
	ffint.d.w	$fa6, $fa6
	vstelm.d	$vr5, $t3, 0, 0
	movfr2gr.d	$t6, $fa6
	vpickve2gr.w	$t7, $vr5, 1
	andi	$t7, $t7, 4095
	movgr2fr.w	$fa5, $t7
	ffint.d.w	$fa5, $fa5
	vinsgr2vr.d	$vr6, $t6, 0
	movfr2gr.d	$t6, $fa5
	vinsgr2vr.d	$vr6, $t6, 1
	vfadd.d	$vr4, $vr4, $vr6
	vst	$vr4, $t0, 0
	addi.d	$t5, $t5, -2
	addi.d	$t4, $t4, 16
	addi.d	$t3, $t3, 8
	addi.d	$t2, $t2, 16
	addi.d	$t1, $t1, 16
	addi.d	$t0, $t0, 16
	addi.d	$a7, $a7, 16
	addi.d	$a6, $a6, 16
	bnez	$t5, .LBB12_12
# %bb.13:                               # %middle.block
                                        #   in Loop: Header=BB12_4 Depth=1
	move	$t5, $a4
	move	$a6, $t8
	move	$a7, $s7
	move	$t0, $fp
	beq	$t8, $a4, .LBB12_17
.LBB12_14:                              # %.lr.ph128.preheader
                                        #   in Loop: Header=BB12_4 Depth=1
	alsl.d	$a6, $t5, $s7, 3
	alsl.d	$a7, $t5, $fp, 2
	alsl.d	$t0, $t5, $s5, 3
	alsl.d	$t1, $t5, $s3, 3
	alsl.d	$t2, $t5, $s2, 3
	alsl.d	$t3, $t5, $s4, 3
	alsl.d	$t4, $t5, $s1, 3
	sub.d	$t5, $t8, $t5
	.p2align	4, , 16
.LBB12_15:                              # %.lr.ph128
                                        #   Parent Loop BB12_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa4, $t4, 0
	fld.d	$fa5, $t3, 0
	fld.d	$fa6, $t2, 0
	fld.d	$fa7, $t1, 0
	fld.d	$ft0, $t0, 0
	fadd.d	$fa4, $fa4, $fa5
	fsub.d	$fa5, $fa6, $fa7
	fmadd.d	$fa4, $fa5, $ft0, $fa4
	fst.d	$fa4, $t4, 0
	fld.d	$fa5, $t2, 0
	fadd.d	$fa4, $fa4, $fa5
	fadd.d	$fa4, $ft1, $fa4
	ftintrz.w.d	$fa5, $fa4
	movfr2gr.s	$t6, $fa5
	movgr2fr.w	$fa5, $t6
	ffint.d.w	$fa5, $fa5
	fsub.d	$fa4, $fa4, $fa5
	fst.d	$fa4, $a6, 0
	andi	$t6, $t6, 2047
	addi.d	$t6, $t6, 1
	st.w	$t6, $a7, 0
	movgr2fr.w	$fa5, $t6
	ffint.d.w	$fa5, $fa5
	fadd.d	$fa4, $fa4, $fa5
	fst.d	$fa4, $t2, 0
	addi.d	$a6, $a6, 8
	addi.d	$a7, $a7, 4
	addi.d	$t0, $t0, 8
	addi.d	$t1, $t1, 8
	addi.d	$t2, $t2, 8
	addi.d	$t3, $t3, 8
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 8
	bnez	$t5, .LBB12_15
# %bb.16:                               #   in Loop: Header=BB12_4 Depth=1
	move	$a6, $t8
	move	$a7, $s7
	move	$t0, $fp
	.p2align	4, , 16
.LBB12_17:                              # %.lr.ph130
                                        #   Parent Loop BB12_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$t1, $t0, 0
	fld.d	$fa4, $a7, 0
	alsl.d	$t2, $t1, $s6, 3
	fld.d	$fa5, $t2, -8
	fsub.d	$fa4, $fa2, $fa4
	slli.d	$t1, $t1, 3
	fadd.d	$fa4, $fa4, $fa5
	fst.d	$fa4, $t2, -8
	fld.d	$fa4, $a7, 0
	fldx.d	$fa5, $s6, $t1
	fadd.d	$fa4, $fa4, $fa5
	fstx.d	$fa4, $s6, $t1
	addi.d	$t0, $t0, 4
	addi.d	$a6, $a6, -1
	addi.d	$a7, $a7, 8
	bnez	$a6, .LBB12_17
	b	.LBB12_3
.LBB12_18:                              # %._crit_edge133
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 144                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 152                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 160
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end12:
	.size	_ZL13BM_PIC_1D_RAWRN9benchmark5StateE, .Lfunc_end12-_ZL13BM_PIC_1D_RAWRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZL15BM_HYDRO_2D_RAWRN9benchmark5StateE
.LCPI13_0:
	.dword	0x3f70cb295e9e1b09              # double 0.0041000000000000003
.LCPI13_1:
	.dword	0x3f6e4f765fd8adac              # double 0.0037000000000000002
	.text
	.p2align	5
	.type	_ZL15BM_HYDRO_2D_RAWRN9benchmark5StateE,@function
_ZL15BM_HYDRO_2D_RAWRN9benchmark5StateE: # @_ZL15BM_HYDRO_2D_RAWRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -288
	.cfi_def_cfa_offset 288
	st.d	$ra, $sp, 280                   # 8-byte Folded Spill
	st.d	$fp, $sp, 272                   # 8-byte Folded Spill
	st.d	$s0, $sp, 264                   # 8-byte Folded Spill
	st.d	$s1, $sp, 256                   # 8-byte Folded Spill
	st.d	$s2, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 240                   # 8-byte Folded Spill
	st.d	$s4, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 224                   # 8-byte Folded Spill
	st.d	$s6, $sp, 216                   # 8-byte Folded Spill
	st.d	$s7, $sp, 208                   # 8-byte Folded Spill
	st.d	$s8, $sp, 200                   # 8-byte Folded Spill
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
	move	$s1, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	ori	$a0, $zero, 26
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s7, $fp, 264
	ld.d	$s8, $fp, 272
	ld.d	$a0, $fp, 280
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a0, $fp, 288
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	ld.d	$a0, $fp, 296
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ld.d	$a0, $fp, 304
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a0, $fp, 312
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a0, $fp, 320
	st.d	$a0, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $s1, 32
	ld.d	$a1, $fp, 328
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	ld.d	$s2, $fp, 336
	ld.d	$s3, $fp, 344
	ld.d	$fp, $a0, 0
	ld.w	$s0, $s1, 28
	ld.d	$s4, $s1, 16
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB13_133
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s4, .LBB13_133
# %bb.2:                                # %.preheader203.lr.ph
	bstrpick.d	$a0, $fp, 30, 0
	addi.d	$a1, $a0, -1
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	slli.d	$a0, $a0, 3
	addi.d	$a2, $a0, 8
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	addi.d	$a0, $a0, -8
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	move	$t6, $a1
	bstrins.d	$t6, $zero, 0, 0
	st.d	$a1, $sp, 160                   # 8-byte Folded Spill
	ori	$a0, $a1, 1
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	addi.w	$t7, $fp, 0
	ori	$t8, $zero, 2
	lu12i.w	$a0, 392586
	ori	$a0, $a0, 3500
	lu32i.d	$a0, -110730
	lu52i.d	$a0, $a0, 1014
	vreplgr2vr.d	$vr0, $a0
	lu12i.w	$a0, 387553
	ori	$a0, $a0, 2825
	lu32i.d	$a0, 52009
	lu52i.d	$a0, $a0, 1015
	vreplgr2vr.d	$vr1, $a0
	st.d	$s7, $sp, 80                    # 8-byte Folded Spill
	st.d	$s8, $sp, 72                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$t6, $sp, 48                    # 8-byte Folded Spill
	st.d	$t7, $sp, 8                     # 8-byte Folded Spill
	b	.LBB13_4
	.p2align	4, , 16
.LBB13_3:                               # %.split.us
                                        #   in Loop: Header=BB13_4 Depth=1
	addi.d	$s4, $s4, -1
	beqz	$s4, .LBB13_133
.LBB13_4:                               # %.preheader203
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_7 Depth 2
                                        #       Child Loop BB13_28 Depth 3
                                        #       Child Loop BB13_9 Depth 3
                                        #     Child Loop BB13_32 Depth 2
                                        #       Child Loop BB13_55 Depth 3
                                        #       Child Loop BB13_34 Depth 3
                                        #     Child Loop BB13_83 Depth 2
                                        #     Child Loop BB13_60 Depth 2
                                        #     Child Loop BB13_95 Depth 2
                                        #     Child Loop BB13_63 Depth 2
                                        #     Child Loop BB13_107 Depth 2
                                        #     Child Loop BB13_66 Depth 2
                                        #     Child Loop BB13_119 Depth 2
                                        #     Child Loop BB13_69 Depth 2
                                        #     Child Loop BB13_131 Depth 2
                                        #     Child Loop BB13_72 Depth 2
	blt	$t7, $t8, .LBB13_3
# %bb.5:                                # %.preheader200.us.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t8, $a0, 8
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$t7, $a0, 8
	ld.d	$ra, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $ra, 8
	ori	$a6, $zero, 1
	b	.LBB13_7
	.p2align	4, , 16
.LBB13_6:                               # %._crit_edge.us
                                        #   in Loop: Header=BB13_7 Depth=2
	move	$a3, $t3
	move	$t7, $t0
	move	$t8, $a7
	ori	$a0, $zero, 6
	beq	$a6, $a0, .LBB13_30
.LBB13_7:                               # %.preheader200.us
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_28 Depth 3
                                        #       Child Loop BB13_9 Depth 3
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	alsl.d	$a0, $a6, $a5, 3
	slli.d	$a1, $a6, 3
	addi.d	$a6, $a6, 1
	slli.d	$a2, $a6, 3
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	ldx.d	$a7, $a4, $a2
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	ldx.d	$t0, $a4, $a2
	ldx.d	$s0, $a5, $a1
	ldx.d	$t3, $ra, $a2
	ldx.d	$t4, $s7, $a1
	ld.d	$t5, $a0, -8
	ldx.d	$t6, $s8, $a1
	ori	$s5, $zero, 1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ori	$a1, $zero, 4
	bgeu	$a0, $a1, .LBB13_10
.LBB13_8:                               # %scalar.ph605.preheader
                                        #   in Loop: Header=BB13_7 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	sub.d	$a4, $a0, $s5
	slli.d	$a5, $s5, 3
	addi.d	$t1, $t3, -8
	addi.d	$t2, $s0, -8
	addi.d	$s0, $a7, -8
	addi.d	$s3, $t0, -8
	addi.d	$t8, $t8, -8
	addi.d	$t7, $t7, -8
	.p2align	4, , 16
.LBB13_9:                               # %scalar.ph605
                                        #   Parent Loop BB13_4 Depth=1
                                        #     Parent Loop BB13_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	fldx.d	$fa2, $s0, $a5
	fldx.d	$fa3, $s3, $a5
	fldx.d	$fa4, $t8, $a5
	fadd.d	$fa2, $fa2, $fa3
	add.d	$a0, $t8, $a5
	fsub.d	$fa2, $fa2, $fa4
	fldx.d	$fa3, $t7, $a5
	add.d	$a1, $t2, $a5
	fld.d	$fa4, $a1, 8
	fldx.d	$fa5, $t2, $a5
	add.d	$a2, $a3, $a5
	fld.d	$fa6, $a2, -8
	fldx.d	$fa7, $t1, $a5
	fsub.d	$fa2, $fa2, $fa3
	fadd.d	$fa3, $fa4, $fa5
	fmul.d	$fa2, $fa2, $fa3
	fadd.d	$fa3, $fa6, $fa7
	fdiv.d	$fa2, $fa2, $fa3
	fstx.d	$fa2, $t4, $a5
	fldx.d	$fa2, $t8, $a5
	fldx.d	$fa3, $t7, $a5
	fld.d	$fa4, $a0, 8
	add.d	$a0, $t7, $a5
	fadd.d	$fa2, $fa2, $fa3
	fsub.d	$fa2, $fa2, $fa4
	fld.d	$fa3, $a0, 8
	fld.d	$fa4, $a1, 8
	fldx.d	$fa5, $t5, $a5
	fldx.d	$fa6, $a3, $a5
	fld.d	$fa7, $a2, -8
	fsub.d	$fa2, $fa2, $fa3
	fadd.d	$fa3, $fa4, $fa5
	fmul.d	$fa2, $fa2, $fa3
	fadd.d	$fa3, $fa6, $fa7
	fdiv.d	$fa2, $fa2, $fa3
	fstx.d	$fa2, $t6, $a5
	addi.d	$a4, $a4, -1
	addi.d	$t4, $t4, 8
	addi.d	$t1, $t1, 8
	addi.d	$t2, $t2, 8
	addi.d	$t5, $t5, 8
	addi.d	$a3, $a3, 8
	addi.d	$t6, $t6, 8
	addi.d	$s0, $s0, 8
	addi.d	$s3, $s3, 8
	addi.d	$t8, $t8, 8
	addi.d	$t7, $t7, 8
	bnez	$a4, .LBB13_9
	b	.LBB13_6
	.p2align	4, , 16
.LBB13_10:                              # %vector.memcheck524
                                        #   in Loop: Header=BB13_7 Depth=2
	addi.d	$t1, $t4, 8
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	add.d	$a0, $t4, $a1
	addi.d	$t2, $t6, 8
	add.d	$a4, $t6, $a1
	sltu	$a1, $t1, $a4
	sltu	$a2, $t2, $a0
	and	$a1, $a1, $a2
	ori	$s5, $zero, 1
	bnez	$a1, .LBB13_8
# %bb.11:                               # %vector.memcheck524
                                        #   in Loop: Header=BB13_7 Depth=2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	add.d	$a1, $a7, $a1
	sltu	$a2, $t1, $a1
	sltu	$a5, $a7, $a0
	and	$a2, $a2, $a5
	ori	$s5, $zero, 1
	bnez	$a2, .LBB13_8
# %bb.12:                               # %vector.memcheck524
                                        #   in Loop: Header=BB13_7 Depth=2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	add.d	$a2, $t0, $a2
	sltu	$a5, $t1, $a2
	sltu	$fp, $t0, $a0
	and	$a5, $a5, $fp
	ori	$s5, $zero, 1
	bnez	$a5, .LBB13_8
# %bb.13:                               # %vector.memcheck524
                                        #   in Loop: Header=BB13_7 Depth=2
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	add.d	$fp, $t8, $a5
	sltu	$a5, $t1, $fp
	sltu	$s1, $t8, $a0
	and	$a5, $a5, $s1
	ori	$s5, $zero, 1
	bnez	$a5, .LBB13_8
# %bb.14:                               # %vector.memcheck524
                                        #   in Loop: Header=BB13_7 Depth=2
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	add.d	$s1, $t7, $a5
	sltu	$a5, $t1, $s1
	sltu	$s2, $t7, $a0
	and	$a5, $a5, $s2
	ori	$s5, $zero, 1
	bnez	$a5, .LBB13_8
# %bb.15:                               # %vector.memcheck524
                                        #   in Loop: Header=BB13_7 Depth=2
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	add.d	$s2, $s0, $a5
	sltu	$a5, $t1, $s2
	sltu	$s3, $s0, $a0
	and	$a5, $a5, $s3
	ori	$s5, $zero, 1
	bnez	$a5, .LBB13_8
# %bb.16:                               # %vector.memcheck524
                                        #   in Loop: Header=BB13_7 Depth=2
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	add.d	$s3, $a3, $a5
	sltu	$a5, $t1, $s3
	sltu	$s4, $a3, $a0
	and	$a5, $a5, $s4
	ori	$s5, $zero, 1
	bnez	$a5, .LBB13_8
# %bb.17:                               # %vector.memcheck524
                                        #   in Loop: Header=BB13_7 Depth=2
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	add.d	$s4, $t3, $a5
	sltu	$a5, $t1, $s4
	sltu	$s5, $t3, $a0
	and	$a5, $a5, $s5
	ori	$s5, $zero, 1
	bnez	$a5, .LBB13_8
# %bb.18:                               # %vector.memcheck524
                                        #   in Loop: Header=BB13_7 Depth=2
	addi.d	$a5, $t5, 8
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	add.d	$s6, $t5, $s5
	sltu	$s5, $t1, $s6
	sltu	$a0, $a5, $a0
	and	$a0, $s5, $a0
	ori	$s5, $zero, 1
	bnez	$a0, .LBB13_8
# %bb.19:                               # %vector.memcheck524
                                        #   in Loop: Header=BB13_7 Depth=2
	sltu	$a0, $t2, $a1
	sltu	$a1, $a7, $a4
	and	$a0, $a0, $a1
	ori	$s5, $zero, 1
	bnez	$a0, .LBB13_8
# %bb.20:                               # %vector.memcheck524
                                        #   in Loop: Header=BB13_7 Depth=2
	sltu	$a0, $t2, $a2
	sltu	$a1, $t0, $a4
	and	$a0, $a0, $a1
	ori	$s5, $zero, 1
	bnez	$a0, .LBB13_8
# %bb.21:                               # %vector.memcheck524
                                        #   in Loop: Header=BB13_7 Depth=2
	sltu	$a0, $t2, $fp
	sltu	$a1, $t8, $a4
	and	$a0, $a0, $a1
	ori	$s5, $zero, 1
	bnez	$a0, .LBB13_8
# %bb.22:                               # %vector.memcheck524
                                        #   in Loop: Header=BB13_7 Depth=2
	sltu	$a0, $t2, $s1
	sltu	$a1, $t7, $a4
	and	$a0, $a0, $a1
	ori	$s5, $zero, 1
	bnez	$a0, .LBB13_8
# %bb.23:                               # %vector.memcheck524
                                        #   in Loop: Header=BB13_7 Depth=2
	sltu	$a0, $t2, $s2
	sltu	$a1, $s0, $a4
	and	$a0, $a0, $a1
	ori	$s5, $zero, 1
	bnez	$a0, .LBB13_8
# %bb.24:                               # %vector.memcheck524
                                        #   in Loop: Header=BB13_7 Depth=2
	sltu	$a0, $t2, $s3
	sltu	$a1, $a3, $a4
	and	$a0, $a0, $a1
	ori	$s5, $zero, 1
	bnez	$a0, .LBB13_8
# %bb.25:                               # %vector.memcheck524
                                        #   in Loop: Header=BB13_7 Depth=2
	sltu	$a0, $t2, $s4
	sltu	$a1, $t3, $a4
	and	$a0, $a0, $a1
	ori	$s5, $zero, 1
	bnez	$a0, .LBB13_8
# %bb.26:                               # %vector.memcheck524
                                        #   in Loop: Header=BB13_7 Depth=2
	sltu	$a0, $t2, $s6
	sltu	$a1, $a5, $a4
	and	$a0, $a0, $a1
	ori	$s5, $zero, 1
	bnez	$a0, .LBB13_8
# %bb.27:                               # %vector.body610.preheader
                                        #   in Loop: Header=BB13_7 Depth=2
	addi.d	$a4, $s0, 8
	move	$s3, $t7
	move	$s4, $t8
	move	$a0, $a7
	move	$s5, $t0
	move	$s1, $a3
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	move	$fp, $a1
	move	$s2, $t3
	.p2align	4, , 16
.LBB13_28:                              # %vector.body610
                                        #   Parent Loop BB13_4 Depth=1
                                        #     Parent Loop BB13_7 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr2, $a0, 0
	vld	$vr3, $s5, 0
	vld	$vr4, $s4, 0
	vfadd.d	$vr2, $vr2, $vr3
	vfsub.d	$vr2, $vr2, $vr4
	vld	$vr3, $s3, 0
	vld	$vr5, $a4, 0
	vld	$vr6, $a4, -8
	vld	$vr7, $s1, 0
	vld	$vr8, $s2, 0
	vfsub.d	$vr2, $vr2, $vr3
	vfadd.d	$vr6, $vr5, $vr6
	vfmul.d	$vr2, $vr2, $vr6
	vfadd.d	$vr6, $vr7, $vr8
	vfdiv.d	$vr2, $vr2, $vr6
	vst	$vr2, $t1, 0
	vld	$vr2, $s4, 8
	vfadd.d	$vr3, $vr4, $vr3
	vld	$vr4, $s3, 8
	vld	$vr6, $a5, 0
	vfsub.d	$vr2, $vr3, $vr2
	vld	$vr3, $s1, 8
	vfsub.d	$vr2, $vr2, $vr4
	vfadd.d	$vr4, $vr5, $vr6
	vfmul.d	$vr2, $vr2, $vr4
	vfadd.d	$vr3, $vr3, $vr7
	vfdiv.d	$vr2, $vr2, $vr3
	vst	$vr2, $t2, 0
	addi.d	$s2, $s2, 16
	addi.d	$fp, $fp, -2
	addi.d	$t2, $t2, 16
	addi.d	$s1, $s1, 16
	addi.d	$a5, $a5, 16
	addi.d	$s5, $s5, 16
	addi.d	$a0, $a0, 16
	addi.d	$a4, $a4, 16
	addi.d	$t1, $t1, 16
	addi.d	$s4, $s4, 16
	addi.d	$s3, $s3, 16
	bnez	$fp, .LBB13_28
# %bb.29:                               # %middle.block630
                                        #   in Loop: Header=BB13_7 Depth=2
	ld.d	$s5, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB13_6
	b	.LBB13_8
	.p2align	4, , 16
.LBB13_30:                              # %.preheader199.us.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$t7, $a0, 8
	ld.d	$t6, $s8, 8
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t5, $a0, 8
	ori	$a2, $zero, 1
	b	.LBB13_32
	.p2align	4, , 16
.LBB13_31:                              # %._crit_edge.us209
                                        #   in Loop: Header=BB13_32 Depth=2
	ld.d	$t5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$t6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 72                    # 8-byte Folded Reload
	ori	$a0, $zero, 6
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	beq	$a2, $a0, .LBB13_57
.LBB13_32:                              # %.preheader199.us
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB13_55 Depth 3
                                        #       Child Loop BB13_34 Depth 3
	slli.d	$a0, $a2, 3
	ldx.d	$t8, $s7, $a0
	addi.d	$a1, $a0, -8
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ldx.d	$ra, $a3, $a1
	addi.d	$a2, $a2, 1
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	slli.d	$a2, $a2, 3
	ldx.d	$a4, $s8, $a2
	st.d	$a4, $sp, 184                   # 8-byte Folded Spill
	ldx.d	$a3, $a3, $a2
	st.d	$a3, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	ldx.d	$t3, $a3, $a0
	ld.d	$a3, $sp, 152                   # 8-byte Folded Reload
	ldx.d	$a6, $a3, $a1
	ldx.d	$a1, $a3, $a2
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ldx.d	$a3, $a1, $a0
	ori	$t4, $zero, 1
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ori	$a1, $zero, 4
	bgeu	$a0, $a1, .LBB13_35
.LBB13_33:                              # %scalar.ph492.preheader
                                        #   in Loop: Header=BB13_32 Depth=2
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	sub.d	$a4, $a0, $t4
	slli.d	$a5, $t4, 3
	ld.d	$t1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$t2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 168                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB13_34:                              # %scalar.ph492
                                        #   Parent Loop BB13_4 Depth=1
                                        #     Parent Loop BB13_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a0, $t7, $a5
	fldx.d	$fa2, $t7, $a5
	fld.d	$fa3, $a0, 8
	add.d	$a1, $t8, $a5
	fld.d	$fa4, $a0, -8
	fldx.d	$fa5, $t8, $a5
	fsub.d	$fa3, $fa2, $fa3
	fld.d	$fa6, $a1, -8
	fsub.d	$fa4, $fa2, $fa4
	fneg.d	$fa4, $fa4
	fldx.d	$fa7, $ra, $a5
	fldx.d	$ft0, $t6, $a5
	fmul.d	$fa4, $fa6, $fa4
	fmadd.d	$fa3, $fa5, $fa3, $fa4
	fsub.d	$fa4, $fa2, $fa7
	fneg.d	$fa5, $ft0
	fldx.d	$fa6, $t2, $a5
	fldx.d	$fa7, $t1, $a5
	fldx.d	$ft0, $t3, $a5
	pcalau12i	$a0, %pc_hi20(.LCPI13_0)
	fld.d	$ft1, $a0, %pc_lo12(.LCPI13_0)
	fmadd.d	$fa3, $fa5, $fa4, $fa3
	fsub.d	$fa2, $fa2, $fa7
	fmadd.d	$fa2, $fa6, $fa2, $fa3
	fmadd.d	$fa2, $fa2, $ft1, $ft0
	fstx.d	$fa2, $t3, $a5
	add.d	$a0, $t5, $a5
	fldx.d	$fa2, $t5, $a5
	fld.d	$fa3, $a0, 8
	fld.d	$fa4, $a0, -8
	fldx.d	$fa5, $t8, $a5
	fsub.d	$fa3, $fa2, $fa3
	fld.d	$fa6, $a1, -8
	fsub.d	$fa4, $fa2, $fa4
	fneg.d	$fa4, $fa4
	fldx.d	$fa7, $a6, $a5
	fldx.d	$ft0, $t6, $a5
	fmul.d	$fa4, $fa6, $fa4
	fmadd.d	$fa3, $fa5, $fa3, $fa4
	fsub.d	$fa4, $fa2, $fa7
	fneg.d	$fa5, $ft0
	fldx.d	$fa6, $s3, $a5
	fldx.d	$fa7, $t2, $a5
	fldx.d	$ft0, $a3, $a5
	fmadd.d	$fa3, $fa5, $fa4, $fa3
	fsub.d	$fa2, $fa2, $fa6
	fmadd.d	$fa2, $fa7, $fa2, $fa3
	fmadd.d	$fa2, $fa2, $ft1, $ft0
	fstx.d	$fa2, $a3, $a5
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 8
	addi.d	$s3, $s3, 8
	addi.d	$t8, $t8, 8
	addi.d	$t7, $t7, 8
	addi.d	$t6, $t6, 8
	addi.d	$ra, $ra, 8
	addi.d	$t2, $t2, 8
	addi.d	$t1, $t1, 8
	addi.d	$t3, $t3, 8
	addi.d	$t5, $t5, 8
	addi.d	$a6, $a6, 8
	bnez	$a4, .LBB13_34
	b	.LBB13_31
	.p2align	4, , 16
.LBB13_35:                              # %vector.memcheck401
                                        #   in Loop: Header=BB13_32 Depth=2
	addi.d	$t1, $t3, 8
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	add.d	$a0, $t3, $a1
	addi.d	$t2, $a3, 8
	add.d	$a4, $a3, $a1
	sltu	$a1, $t1, $a4
	sltu	$a2, $t2, $a0
	and	$a1, $a1, $a2
	ori	$t4, $zero, 1
	bnez	$a1, .LBB13_33
# %bb.36:                               # %vector.memcheck401
                                        #   in Loop: Header=BB13_32 Depth=2
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	add.d	$s1, $t8, $a1
	sltu	$a1, $t1, $s1
	sltu	$a2, $t8, $a0
	and	$a1, $a1, $a2
	ori	$t4, $zero, 1
	bnez	$a1, .LBB13_33
# %bb.37:                               # %vector.memcheck401
                                        #   in Loop: Header=BB13_32 Depth=2
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	add.d	$s2, $t7, $a1
	sltu	$a1, $t1, $s2
	sltu	$a2, $t7, $a0
	and	$a1, $a1, $a2
	ori	$t4, $zero, 1
	bnez	$a1, .LBB13_33
# %bb.38:                               # %vector.memcheck401
                                        #   in Loop: Header=BB13_32 Depth=2
	addi.d	$s3, $t6, 8
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	add.d	$fp, $t6, $a1
	sltu	$a1, $t1, $fp
	sltu	$a2, $s3, $a0
	and	$a1, $a1, $a2
	ori	$t4, $zero, 1
	bnez	$a1, .LBB13_33
# %bb.39:                               # %vector.memcheck401
                                        #   in Loop: Header=BB13_32 Depth=2
	addi.d	$s4, $ra, 8
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	add.d	$a1, $ra, $a1
	sltu	$a2, $t1, $a1
	sltu	$a5, $s4, $a0
	and	$a2, $a2, $a5
	ori	$t4, $zero, 1
	bnez	$a2, .LBB13_33
# %bb.40:                               # %vector.memcheck401
                                        #   in Loop: Header=BB13_32 Depth=2
	ld.d	$a5, $sp, 184                   # 8-byte Folded Reload
	addi.d	$s5, $a5, 8
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	add.d	$s6, $a5, $a2
	sltu	$a2, $t1, $s6
	sltu	$a5, $s5, $a0
	and	$a2, $a2, $a5
	ori	$t4, $zero, 1
	bnez	$a2, .LBB13_33
# %bb.41:                               # %vector.memcheck401
                                        #   in Loop: Header=BB13_32 Depth=2
	ld.d	$a7, $sp, 176                   # 8-byte Folded Reload
	addi.d	$a5, $a7, 8
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	add.d	$a2, $a7, $a2
	sltu	$a7, $t1, $a2
	sltu	$t0, $a5, $a0
	and	$a7, $a7, $t0
	ori	$t4, $zero, 1
	bnez	$a7, .LBB13_33
# %bb.42:                               # %vector.memcheck401
                                        #   in Loop: Header=BB13_32 Depth=2
	ld.d	$a7, $sp, 64                    # 8-byte Folded Reload
	add.d	$t0, $t5, $a7
	sltu	$a7, $t1, $t0
	sltu	$t4, $t5, $a0
	and	$a7, $a7, $t4
	ori	$t4, $zero, 1
	bnez	$a7, .LBB13_33
# %bb.43:                               # %vector.memcheck401
                                        #   in Loop: Header=BB13_32 Depth=2
	addi.d	$s7, $a6, 8
	ld.d	$a7, $sp, 192                   # 8-byte Folded Reload
	add.d	$a7, $a6, $a7
	sltu	$t4, $t1, $a7
	sltu	$s0, $s7, $a0
	and	$s0, $t4, $s0
	ori	$t4, $zero, 1
	bnez	$s0, .LBB13_33
# %bb.44:                               # %vector.memcheck401
                                        #   in Loop: Header=BB13_32 Depth=2
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	addi.d	$s8, $s0, 8
	ld.d	$t4, $sp, 192                   # 8-byte Folded Reload
	add.d	$s0, $s0, $t4
	sltu	$t4, $t1, $s0
	sltu	$a0, $s8, $a0
	and	$a0, $t4, $a0
	ori	$t4, $zero, 1
	bnez	$a0, .LBB13_33
# %bb.45:                               # %vector.memcheck401
                                        #   in Loop: Header=BB13_32 Depth=2
	sltu	$a0, $t2, $s1
	sltu	$t4, $t8, $a4
	and	$a0, $a0, $t4
	ori	$t4, $zero, 1
	bnez	$a0, .LBB13_33
# %bb.46:                               # %vector.memcheck401
                                        #   in Loop: Header=BB13_32 Depth=2
	sltu	$a0, $t2, $s2
	sltu	$t4, $t7, $a4
	and	$a0, $a0, $t4
	ori	$t4, $zero, 1
	bnez	$a0, .LBB13_33
# %bb.47:                               # %vector.memcheck401
                                        #   in Loop: Header=BB13_32 Depth=2
	sltu	$a0, $t2, $fp
	sltu	$t4, $s3, $a4
	and	$a0, $a0, $t4
	ori	$t4, $zero, 1
	bnez	$a0, .LBB13_33
# %bb.48:                               # %vector.memcheck401
                                        #   in Loop: Header=BB13_32 Depth=2
	sltu	$a0, $t2, $a1
	sltu	$a1, $s4, $a4
	and	$a0, $a0, $a1
	ori	$t4, $zero, 1
	bnez	$a0, .LBB13_33
# %bb.49:                               # %vector.memcheck401
                                        #   in Loop: Header=BB13_32 Depth=2
	sltu	$a0, $t2, $s6
	sltu	$a1, $s5, $a4
	and	$a0, $a0, $a1
	ori	$t4, $zero, 1
	bnez	$a0, .LBB13_33
# %bb.50:                               # %vector.memcheck401
                                        #   in Loop: Header=BB13_32 Depth=2
	sltu	$a0, $t2, $a2
	sltu	$a1, $a5, $a4
	and	$a0, $a0, $a1
	ori	$t4, $zero, 1
	bnez	$a0, .LBB13_33
# %bb.51:                               # %vector.memcheck401
                                        #   in Loop: Header=BB13_32 Depth=2
	sltu	$a0, $t2, $t0
	sltu	$a1, $t5, $a4
	and	$a0, $a0, $a1
	ori	$t4, $zero, 1
	bnez	$a0, .LBB13_33
# %bb.52:                               # %vector.memcheck401
                                        #   in Loop: Header=BB13_32 Depth=2
	sltu	$a0, $t2, $a7
	sltu	$a1, $s7, $a4
	and	$a0, $a0, $a1
	ori	$t4, $zero, 1
	bnez	$a0, .LBB13_33
# %bb.53:                               # %vector.memcheck401
                                        #   in Loop: Header=BB13_32 Depth=2
	sltu	$a0, $t2, $s0
	sltu	$a1, $s8, $a4
	and	$a0, $a0, $a1
	ori	$t4, $zero, 1
	bnez	$a0, .LBB13_33
# %bb.54:                               # %vector.body497.preheader
                                        #   in Loop: Header=BB13_32 Depth=2
	move	$a0, $zero
	addi.d	$a4, $t5, 8
	addi.d	$a1, $t8, 8
	addi.d	$fp, $t7, 8
	ld.d	$t0, $sp, 48                    # 8-byte Folded Reload
	move	$s1, $t0
	.p2align	4, , 16
.LBB13_55:                              # %vector.body497
                                        #   Parent Loop BB13_4 Depth=1
                                        #     Parent Loop BB13_32 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	add.d	$a2, $fp, $a0
	vldx	$vr2, $fp, $a0
	vld	$vr3, $a2, 8
	add.d	$a7, $a1, $a0
	vld	$vr4, $a2, -8
	vldx	$vr5, $a1, $a0
	vfsub.d	$vr3, $vr2, $vr3
	vld	$vr6, $a7, -8
	vfsub.d	$vr4, $vr2, $vr4
	vbitrevi.d	$vr4, $vr4, 63
	vldx	$vr7, $s4, $a0
	vfmul.d	$vr4, $vr6, $vr4
	vfmadd.d	$vr3, $vr5, $vr3, $vr4
	vldx	$vr4, $s3, $a0
	vfsub.d	$vr7, $vr2, $vr7
	vldx	$vr8, $a5, $a0
	vldx	$vr9, $s5, $a0
	vbitrevi.d	$vr4, $vr4, 63
	vfmadd.d	$vr3, $vr4, $vr7, $vr3
	vfsub.d	$vr2, $vr2, $vr8
	vfmadd.d	$vr2, $vr9, $vr2, $vr3
	vldx	$vr3, $t1, $a0
	add.d	$a2, $a4, $a0
	vldx	$vr7, $a4, $a0
	vld	$vr8, $a2, -8
	vfmadd.d	$vr2, $vr2, $vr1, $vr3
	vstx	$vr2, $t1, $a0
	vld	$vr2, $a2, 8
	vfsub.d	$vr3, $vr7, $vr8
	vbitrevi.d	$vr3, $vr3, 63
	vfmul.d	$vr3, $vr6, $vr3
	vldx	$vr6, $s7, $a0
	vfsub.d	$vr2, $vr7, $vr2
	vfmadd.d	$vr2, $vr5, $vr2, $vr3
	vldx	$vr3, $s8, $a0
	vfsub.d	$vr5, $vr7, $vr6
	vldx	$vr6, $t2, $a0
	vfmadd.d	$vr2, $vr4, $vr5, $vr2
	vfsub.d	$vr3, $vr7, $vr3
	vfmadd.d	$vr2, $vr9, $vr3, $vr2
	vfmadd.d	$vr2, $vr2, $vr1, $vr6
	vstx	$vr2, $t2, $a0
	addi.d	$s1, $s1, -2
	addi.d	$a0, $a0, 16
	bnez	$s1, .LBB13_55
# %bb.56:                               # %middle.block521
                                        #   in Loop: Header=BB13_32 Depth=2
	ld.d	$t4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beq	$a0, $t0, .LBB13_31
	b	.LBB13_33
	.p2align	4, , 16
.LBB13_57:                              # %.preheader.us.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 8
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 8
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a5, $s2, 8
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $a0, 8
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a7, $a0, 8
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t0, $s3, 8
	ori	$a0, $zero, 1
	pcalau12i	$t4, %pc_hi20(.LCPI13_1)
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ori	$t8, $zero, 2
	bgeu	$a1, $t8, .LBB13_73
# %bb.58:                               #   in Loop: Header=BB13_4 Depth=1
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 8                     # 8-byte Folded Reload
	ori	$fp, $zero, 16
.LBB13_59:                              # %scalar.ph385.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	alsl.d	$a1, $a0, $a3, 3
	alsl.d	$a2, $a0, $a4, 3
	alsl.d	$a3, $a0, $a5, 3
	alsl.d	$a4, $a0, $a6, 3
	alsl.d	$a5, $a0, $a7, 3
	alsl.d	$a6, $a0, $t0, 3
	ld.d	$a7, $sp, 136                   # 8-byte Folded Reload
	sub.d	$a0, $a7, $a0
	.p2align	4, , 16
.LBB13_60:                              # %scalar.ph385
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a1, 0
	fld.d	$fa3, $a2, 0
	fld.d	$fa4, $t4, %pc_lo12(.LCPI13_1)
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	fst.d	$fa2, $a3, 0
	fld.d	$fa2, $a4, 0
	fld.d	$fa3, $a5, 0
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	fst.d	$fa2, $a6, 0
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	addi.d	$a3, $a3, 8
	addi.d	$a4, $a4, 8
	addi.d	$a5, $a5, 8
	addi.d	$a0, $a0, -1
	addi.d	$a6, $a6, 8
	bnez	$a0, .LBB13_60
.LBB13_61:                              # %._crit_edge.us213
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 16
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 16
	ld.d	$a5, $s2, 16
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $a0, 16
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a7, $a0, 16
	ld.d	$t0, $s3, 16
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bgeu	$a1, $t8, .LBB13_85
.LBB13_62:                              # %scalar.ph351.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	alsl.d	$a2, $a0, $t0, 3
	alsl.d	$a7, $a0, $a7, 3
	alsl.d	$a6, $a0, $a6, 3
	alsl.d	$a5, $a0, $a5, 3
	alsl.d	$a4, $a0, $a4, 3
	alsl.d	$a0, $a0, $a3, 3
	.p2align	4, , 16
.LBB13_63:                              # %scalar.ph351
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a0, 0
	fld.d	$fa3, $a4, 0
	fld.d	$fa4, $t4, %pc_lo12(.LCPI13_1)
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	fst.d	$fa2, $a5, 0
	fld.d	$fa2, $a6, 0
	fld.d	$fa3, $a7, 0
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	fst.d	$fa2, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB13_63
.LBB13_64:                              # %._crit_edge.us213.1
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 24
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 24
	ld.d	$a5, $s2, 24
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $a0, 24
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a7, $a0, 24
	ld.d	$t0, $s3, 24
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bgeu	$a1, $t8, .LBB13_97
.LBB13_65:                              # %scalar.ph317.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	alsl.d	$a2, $a0, $t0, 3
	alsl.d	$a7, $a0, $a7, 3
	alsl.d	$a6, $a0, $a6, 3
	alsl.d	$a5, $a0, $a5, 3
	alsl.d	$a4, $a0, $a4, 3
	alsl.d	$a0, $a0, $a3, 3
	.p2align	4, , 16
.LBB13_66:                              # %scalar.ph317
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a0, 0
	fld.d	$fa3, $a4, 0
	fld.d	$fa4, $t4, %pc_lo12(.LCPI13_1)
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	fst.d	$fa2, $a5, 0
	fld.d	$fa2, $a6, 0
	fld.d	$fa3, $a7, 0
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	fst.d	$fa2, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB13_66
.LBB13_67:                              # %._crit_edge.us213.2
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 32
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 32
	ld.d	$a5, $s2, 32
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $a0, 32
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a7, $a0, 32
	ld.d	$t0, $s3, 32
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bgeu	$a1, $t8, .LBB13_109
.LBB13_68:                              # %scalar.ph283.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	alsl.d	$a2, $a0, $t0, 3
	alsl.d	$a7, $a0, $a7, 3
	alsl.d	$a6, $a0, $a6, 3
	alsl.d	$a5, $a0, $a5, 3
	alsl.d	$a4, $a0, $a4, 3
	alsl.d	$a0, $a0, $a3, 3
	.p2align	4, , 16
.LBB13_69:                              # %scalar.ph283
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a0, 0
	fld.d	$fa3, $a4, 0
	fld.d	$fa4, $t4, %pc_lo12(.LCPI13_1)
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	fst.d	$fa2, $a5, 0
	fld.d	$fa2, $a6, 0
	fld.d	$fa3, $a7, 0
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	fst.d	$fa2, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB13_69
.LBB13_70:                              # %._crit_edge.us213.3
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $a0, 40
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a4, $a0, 40
	ld.d	$a5, $s2, 40
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $a0, 40
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a7, $a0, 40
	ld.d	$t0, $s3, 40
	ori	$a0, $zero, 1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bgeu	$a1, $t8, .LBB13_121
.LBB13_71:                              # %scalar.ph.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	alsl.d	$a2, $a0, $t0, 3
	alsl.d	$a7, $a0, $a7, 3
	alsl.d	$a6, $a0, $a6, 3
	alsl.d	$a5, $a0, $a5, 3
	alsl.d	$a4, $a0, $a4, 3
	alsl.d	$a0, $a0, $a3, 3
	.p2align	4, , 16
.LBB13_72:                              # %scalar.ph
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa2, $a0, 0
	fld.d	$fa3, $a4, 0
	fld.d	$fa4, $t4, %pc_lo12(.LCPI13_1)
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	fst.d	$fa2, $a5, 0
	fld.d	$fa2, $a6, 0
	fld.d	$fa3, $a7, 0
	fmadd.d	$fa2, $fa3, $fa4, $fa2
	fst.d	$fa2, $a2, 0
	addi.d	$a1, $a1, -1
	addi.d	$a2, $a2, 8
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 8
	addi.d	$a0, $a0, 8
	bnez	$a1, .LBB13_72
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_73:                              # %vector.memcheck367
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $t0, $a5
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 8                     # 8-byte Folded Reload
	ori	$fp, $zero, 16
	bltu	$a1, $fp, .LBB13_59
# %bb.74:                               # %vector.memcheck367
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $a5, $a3
	bltu	$a1, $fp, .LBB13_59
# %bb.75:                               # %vector.memcheck367
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $a5, $a4
	bltu	$a1, $fp, .LBB13_59
# %bb.76:                               # %vector.memcheck367
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $a6, $a5
	bltu	$a1, $fp, .LBB13_59
# %bb.77:                               # %vector.memcheck367
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $a7, $a5
	bltu	$a1, $fp, .LBB13_59
# %bb.78:                               # %vector.memcheck367
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $t0, $a3
	bltu	$a1, $fp, .LBB13_59
# %bb.79:                               # %vector.memcheck367
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $t0, $a4
	bltu	$a1, $fp, .LBB13_59
# %bb.80:                               # %vector.memcheck367
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $t0, $a6
	bltu	$a1, $fp, .LBB13_59
# %bb.81:                               # %vector.memcheck367
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $t0, $a7
	bltu	$a1, $fp, .LBB13_59
# %bb.82:                               # %vector.body390.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	addi.d	$a0, $a3, 8
	addi.d	$a1, $a4, 8
	addi.d	$a2, $a5, 8
	addi.d	$t1, $a6, 8
	addi.d	$t2, $a7, 8
	addi.d	$t3, $t0, 8
	move	$t5, $t6
	.p2align	4, , 16
.LBB13_83:                              # %vector.body390
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a0, 0
	vld	$vr3, $a1, 0
	vfmadd.d	$vr2, $vr3, $vr0, $vr2
	vst	$vr2, $a2, 0
	vld	$vr2, $t1, 0
	vld	$vr3, $t2, 0
	vfmadd.d	$vr2, $vr3, $vr0, $vr2
	vst	$vr2, $t3, 0
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 16
	addi.d	$a2, $a2, 16
	addi.d	$t1, $t1, 16
	addi.d	$t2, $t2, 16
	addi.d	$t5, $t5, -2
	addi.d	$t3, $t3, 16
	bnez	$t5, .LBB13_83
# %bb.84:                               # %middle.block398
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bne	$a1, $t6, .LBB13_59
	b	.LBB13_61
	.p2align	4, , 16
.LBB13_85:                              # %vector.memcheck333
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $t0, $a5
	bltu	$a1, $fp, .LBB13_62
# %bb.86:                               # %vector.memcheck333
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $a5, $a3
	bltu	$a1, $fp, .LBB13_62
# %bb.87:                               # %vector.memcheck333
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $a5, $a4
	bltu	$a1, $fp, .LBB13_62
# %bb.88:                               # %vector.memcheck333
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $a6, $a5
	bltu	$a1, $fp, .LBB13_62
# %bb.89:                               # %vector.memcheck333
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $a7, $a5
	bltu	$a1, $fp, .LBB13_62
# %bb.90:                               # %vector.memcheck333
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $t0, $a3
	bltu	$a1, $fp, .LBB13_62
# %bb.91:                               # %vector.memcheck333
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $t0, $a4
	bltu	$a1, $fp, .LBB13_62
# %bb.92:                               # %vector.memcheck333
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $t0, $a6
	bltu	$a1, $fp, .LBB13_62
# %bb.93:                               # %vector.memcheck333
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $t0, $a7
	bltu	$a1, $fp, .LBB13_62
# %bb.94:                               # %vector.body356.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	addi.d	$a0, $a3, 8
	addi.d	$a1, $a4, 8
	addi.d	$a2, $a5, 8
	addi.d	$t1, $a6, 8
	addi.d	$t2, $a7, 8
	addi.d	$t3, $t0, 8
	move	$t5, $t6
	.p2align	4, , 16
.LBB13_95:                              # %vector.body356
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a0, 0
	vld	$vr3, $a1, 0
	vfmadd.d	$vr2, $vr3, $vr0, $vr2
	vst	$vr2, $a2, 0
	vld	$vr2, $t1, 0
	vld	$vr3, $t2, 0
	vfmadd.d	$vr2, $vr3, $vr0, $vr2
	vst	$vr2, $t3, 0
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 16
	addi.d	$a2, $a2, 16
	addi.d	$t1, $t1, 16
	addi.d	$t2, $t2, 16
	addi.d	$t5, $t5, -2
	addi.d	$t3, $t3, 16
	bnez	$t5, .LBB13_95
# %bb.96:                               # %middle.block364
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bne	$a1, $t6, .LBB13_62
	b	.LBB13_64
	.p2align	4, , 16
.LBB13_97:                              # %vector.memcheck299
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $t0, $a5
	bltu	$a1, $fp, .LBB13_65
# %bb.98:                               # %vector.memcheck299
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $a5, $a3
	bltu	$a1, $fp, .LBB13_65
# %bb.99:                               # %vector.memcheck299
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $a5, $a4
	bltu	$a1, $fp, .LBB13_65
# %bb.100:                              # %vector.memcheck299
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $a6, $a5
	bltu	$a1, $fp, .LBB13_65
# %bb.101:                              # %vector.memcheck299
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $a7, $a5
	bltu	$a1, $fp, .LBB13_65
# %bb.102:                              # %vector.memcheck299
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $t0, $a3
	bltu	$a1, $fp, .LBB13_65
# %bb.103:                              # %vector.memcheck299
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $t0, $a4
	bltu	$a1, $fp, .LBB13_65
# %bb.104:                              # %vector.memcheck299
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $t0, $a6
	bltu	$a1, $fp, .LBB13_65
# %bb.105:                              # %vector.memcheck299
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $t0, $a7
	bltu	$a1, $fp, .LBB13_65
# %bb.106:                              # %vector.body322.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	addi.d	$a0, $a3, 8
	addi.d	$a1, $a4, 8
	addi.d	$a2, $a5, 8
	addi.d	$t1, $a6, 8
	addi.d	$t2, $a7, 8
	addi.d	$t3, $t0, 8
	move	$t5, $t6
	.p2align	4, , 16
.LBB13_107:                             # %vector.body322
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a0, 0
	vld	$vr3, $a1, 0
	vfmadd.d	$vr2, $vr3, $vr0, $vr2
	vst	$vr2, $a2, 0
	vld	$vr2, $t1, 0
	vld	$vr3, $t2, 0
	vfmadd.d	$vr2, $vr3, $vr0, $vr2
	vst	$vr2, $t3, 0
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 16
	addi.d	$a2, $a2, 16
	addi.d	$t1, $t1, 16
	addi.d	$t2, $t2, 16
	addi.d	$t5, $t5, -2
	addi.d	$t3, $t3, 16
	bnez	$t5, .LBB13_107
# %bb.108:                              # %middle.block330
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bne	$a1, $t6, .LBB13_65
	b	.LBB13_67
	.p2align	4, , 16
.LBB13_109:                             # %vector.memcheck265
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $t0, $a5
	bltu	$a1, $fp, .LBB13_68
# %bb.110:                              # %vector.memcheck265
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $a5, $a3
	bltu	$a1, $fp, .LBB13_68
# %bb.111:                              # %vector.memcheck265
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $a5, $a4
	bltu	$a1, $fp, .LBB13_68
# %bb.112:                              # %vector.memcheck265
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $a6, $a5
	bltu	$a1, $fp, .LBB13_68
# %bb.113:                              # %vector.memcheck265
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $a7, $a5
	bltu	$a1, $fp, .LBB13_68
# %bb.114:                              # %vector.memcheck265
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $t0, $a3
	bltu	$a1, $fp, .LBB13_68
# %bb.115:                              # %vector.memcheck265
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $t0, $a4
	bltu	$a1, $fp, .LBB13_68
# %bb.116:                              # %vector.memcheck265
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $t0, $a6
	bltu	$a1, $fp, .LBB13_68
# %bb.117:                              # %vector.memcheck265
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $t0, $a7
	bltu	$a1, $fp, .LBB13_68
# %bb.118:                              # %vector.body288.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	addi.d	$a0, $a3, 8
	addi.d	$a1, $a4, 8
	addi.d	$a2, $a5, 8
	addi.d	$t1, $a6, 8
	addi.d	$t2, $a7, 8
	addi.d	$t3, $t0, 8
	move	$t5, $t6
	.p2align	4, , 16
.LBB13_119:                             # %vector.body288
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a0, 0
	vld	$vr3, $a1, 0
	vfmadd.d	$vr2, $vr3, $vr0, $vr2
	vst	$vr2, $a2, 0
	vld	$vr2, $t1, 0
	vld	$vr3, $t2, 0
	vfmadd.d	$vr2, $vr3, $vr0, $vr2
	vst	$vr2, $t3, 0
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 16
	addi.d	$a2, $a2, 16
	addi.d	$t1, $t1, 16
	addi.d	$t2, $t2, 16
	addi.d	$t5, $t5, -2
	addi.d	$t3, $t3, 16
	bnez	$t5, .LBB13_119
# %bb.120:                              # %middle.block296
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	bne	$a1, $t6, .LBB13_68
	b	.LBB13_70
	.p2align	4, , 16
.LBB13_121:                             # %vector.memcheck
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $t0, $a5
	bltu	$a1, $fp, .LBB13_71
# %bb.122:                              # %vector.memcheck
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $a5, $a3
	bltu	$a1, $fp, .LBB13_71
# %bb.123:                              # %vector.memcheck
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $a5, $a4
	bltu	$a1, $fp, .LBB13_71
# %bb.124:                              # %vector.memcheck
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $a6, $a5
	bltu	$a1, $fp, .LBB13_71
# %bb.125:                              # %vector.memcheck
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $a7, $a5
	bltu	$a1, $fp, .LBB13_71
# %bb.126:                              # %vector.memcheck
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $t0, $a3
	bltu	$a1, $fp, .LBB13_71
# %bb.127:                              # %vector.memcheck
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $t0, $a4
	bltu	$a1, $fp, .LBB13_71
# %bb.128:                              # %vector.memcheck
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $t0, $a6
	bltu	$a1, $fp, .LBB13_71
# %bb.129:                              # %vector.memcheck
                                        #   in Loop: Header=BB13_4 Depth=1
	sub.d	$a1, $t0, $a7
	bltu	$a1, $fp, .LBB13_71
# %bb.130:                              # %vector.body.preheader
                                        #   in Loop: Header=BB13_4 Depth=1
	addi.d	$a0, $a3, 8
	addi.d	$a1, $a4, 8
	addi.d	$a2, $a5, 8
	addi.d	$t1, $a6, 8
	addi.d	$t2, $a7, 8
	addi.d	$t3, $t0, 8
	move	$t5, $t6
	.p2align	4, , 16
.LBB13_131:                             # %vector.body
                                        #   Parent Loop BB13_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr2, $a0, 0
	vld	$vr3, $a1, 0
	vfmadd.d	$vr2, $vr3, $vr0, $vr2
	vst	$vr2, $a2, 0
	vld	$vr2, $t1, 0
	vld	$vr3, $t2, 0
	vfmadd.d	$vr2, $vr3, $vr0, $vr2
	vst	$vr2, $t3, 0
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 16
	addi.d	$a2, $a2, 16
	addi.d	$t1, $t1, 16
	addi.d	$t2, $t2, 16
	addi.d	$t5, $t5, -2
	addi.d	$t3, $t3, 16
	bnez	$t5, .LBB13_131
# %bb.132:                              # %middle.block
                                        #   in Loop: Header=BB13_4 Depth=1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	beq	$a1, $t6, .LBB13_3
	b	.LBB13_71
.LBB13_133:                             # %._crit_edge
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s8, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 248                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 256                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 272                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 280                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 288
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end13:
	.size	_ZL15BM_HYDRO_2D_RAWRN9benchmark5StateE, .Lfunc_end13-_ZL15BM_HYDRO_2D_RAWRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL20BM_GEN_LIN_RECUR_RAWRN9benchmark5StateE
	.type	_ZL20BM_GEN_LIN_RECUR_RAWRN9benchmark5StateE,@function
_ZL20BM_GEN_LIN_RECUR_RAWRN9benchmark5StateE: # @_ZL20BM_GEN_LIN_RECUR_RAWRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 56, -64
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 27
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 8
	ld.d	$s2, $s0, 16
	ld.d	$s3, $s0, 24
	fld.d	$fs0, $s0, 384
	ld.w	$s4, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s4, .LBB14_9
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB14_9
# %bb.2:                                # %.preheader57.lr.ph
	ld.d	$a0, $fp, 32
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB14_9
# %bb.3:                                # %.preheader57.us70.preheader
	slli.d	$a2, $a0, 32
	ori	$a1, $zero, 0
	lu32i.d	$a1, -1
	add.d	$a2, $a2, $a1
	.p2align	4, , 16
.LBB14_4:                               # %.preheader57.us70
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_5 Depth 2
                                        #     Child Loop BB14_7 Depth 2
	move	$a3, $a0
	move	$a4, $s1
	move	$a5, $s3
	move	$a6, $s2
	.p2align	4, , 16
.LBB14_5:                               #   Parent Loop BB14_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $a6, 0
	fld.d	$fa1, $a5, 0
	fmadd.d	$fa0, $fs0, $fa1, $fa0
	fst.d	$fa0, $a4, 0
	fsub.d	$fs0, $fa0, $fs0
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	addi.d	$a3, $a3, -1
	addi.d	$a4, $a4, 8
	bnez	$a3, .LBB14_5
# %bb.6:                                #   in Loop: Header=BB14_4 Depth=1
	move	$a3, $a2
	move	$a4, $a0
	.p2align	4, , 16
.LBB14_7:                               # %..preheader_crit_edge.us78
                                        #   Parent Loop BB14_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	srai.d	$a5, $a3, 29
	fldx.d	$fa0, $s2, $a5
	fldx.d	$fa1, $s3, $a5
	fmadd.d	$fa0, $fs0, $fa1, $fa0
	fstx.d	$fa0, $s1, $a5
	fsub.d	$fs0, $fa0, $fs0
	addi.d	$a4, $a4, -1
	add.d	$a3, $a3, $a1
	bnez	$a4, .LBB14_7
# %bb.8:                                # %._crit_edge.us
                                        #   in Loop: Header=BB14_4 Depth=1
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB14_4
.LBB14_9:                               # %._crit_edge69
	move	$a0, $fp
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end14:
	.size	_ZL20BM_GEN_LIN_RECUR_RAWRN9benchmark5StateE, .Lfunc_end14-_ZL20BM_GEN_LIN_RECUR_RAWRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZL15BM_DISC_ORD_RAWRN9benchmark5StateE
.LCPI15_0:
	.dword	0x3fc999999999999a              # double 0.20000000000000001
	.text
	.p2align	5
	.type	_ZL15BM_DISC_ORD_RAWRN9benchmark5StateE,@function
_ZL15BM_DISC_ORD_RAWRN9benchmark5StateE: # @_ZL15BM_DISC_ORD_RAWRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
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
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	.cfi_offset 57, -104
	.cfi_offset 58, -112
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 28
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 8
	ld.d	$s2, $s0, 16
	ld.d	$s3, $s0, 24
	ld.d	$s4, $s0, 32
	ld.d	$s5, $s0, 40
	ld.d	$s6, $s0, 48
	ld.d	$s7, $s0, 56
	ld.d	$s8, $s0, 64
	ld.d	$fp, $s0, 80
	fld.d	$fs0, $s0, 384
	fld.d	$fs1, $s0, 392
	fld.d	$fs2, $s0, 400
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.w	$a1, $a0, 28
	st.d	$a1, $sp, 0                     # 8-byte Folded Spill
	ld.d	$s0, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	bnez	$a1, .LBB15_10
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB15_10
# %bb.2:                                # %.preheader.lr.ph
	ld.d	$a1, $a0, 32
	ld.d	$t4, $a1, 0
	ori	$a1, $zero, 1
	blt	$t4, $a1, .LBB15_10
# %bb.3:                                # %.preheader.us.preheader
	pcalau12i	$a1, %pc_hi20(.LCPI15_0)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI15_0)
	addi.d	$a1, $s8, 8
	movgr2fr.d	$fa1, $zero
	b	.LBB15_5
	.p2align	4, , 16
.LBB15_4:                               # %._crit_edge.us
                                        #   in Loop: Header=BB15_5 Depth=1
	addi.d	$s0, $s0, -1
	beqz	$s0, .LBB15_10
.LBB15_5:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB15_7 Depth 2
	fld.d	$fa2, $s8, 0
	move	$a2, $t4
	move	$a3, $s1
	move	$a4, $fp
	move	$a5, $s4
	move	$a6, $s5
	move	$a7, $s6
	move	$t0, $s3
	move	$t1, $a1
	move	$t2, $s7
	move	$t3, $s2
	b	.LBB15_7
	.p2align	4, , 16
.LBB15_6:                               #   in Loop: Header=BB15_7 Depth=2
	fld.d	$fa4, $a7, 0
	fld.d	$fa5, $a6, 0
	fld.d	$fa6, $a5, 0
	fld.d	$fa7, $a4, 0
	fmadd.d	$fa4, $fa5, $fa3, $fa4
	fmadd.d	$fa2, $fa4, $fa2, $fa6
	fmadd.d	$fa4, $fa5, $fa3, $fa7
	fdiv.d	$fa2, $fa2, $fa4
	fst.d	$fa2, $a3, 0
	fld.d	$fa4, $t1, -8
	fsub.d	$fa2, $fa2, $fa4
	fmadd.d	$fa2, $fa2, $fa3, $fa4
	fst.d	$fa2, $t1, 0
	addi.d	$t3, $t3, 8
	addi.d	$t2, $t2, 8
	addi.d	$t1, $t1, 8
	addi.d	$t0, $t0, 8
	addi.d	$a7, $a7, 8
	addi.d	$a6, $a6, 8
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 8
	addi.d	$a2, $a2, -1
	addi.d	$a3, $a3, 8
	beqz	$a2, .LBB15_4
.LBB15_7:                               #   Parent Loop BB15_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa3, $t2, 0
	fld.d	$fa4, $t3, 0
	fadd.d	$fa5, $fs2, $fa2
	fdiv.d	$fa3, $fa3, $fa5
	fsub.d	$fa4, $fa4, $fa3
	fcmp.ceq.d	$fcc0, $fa4, $fa1
	fmov.d	$fa3, $fa0
	bcnez	$fcc0, .LBB15_6
# %bb.8:                                #   in Loop: Header=BB15_7 Depth=2
	fld.d	$fa3, $t0, 0
	fdiv.d	$fa3, $fa3, $fa4
	fcmp.clt.d	$fcc0, $fs1, $fa3
	fsel	$fa3, $fa3, $fs1, $fcc0
	fcmp.cule.d	$fcc0, $fs0, $fa3
	bcnez	$fcc0, .LBB15_6
# %bb.9:                                #   in Loop: Header=BB15_7 Depth=2
	fmov.d	$fa3, $fs0
	b	.LBB15_6
.LBB15_10:                              # %._crit_edge82
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end15:
	.size	_ZL15BM_DISC_ORD_RAWRN9benchmark5StateE, .Lfunc_end15-_ZL15BM_DISC_ORD_RAWRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL16BM_MAT_X_MAT_RAWRN9benchmark5StateE
	.type	_ZL16BM_MAT_X_MAT_RAWRN9benchmark5StateE,@function
_ZL16BM_MAT_X_MAT_RAWRN9benchmark5StateE: # @_ZL16BM_MAT_X_MAT_RAWRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	st.d	$s2, $sp, 24                    # 8-byte Folded Spill
	st.d	$s3, $sp, 16                    # 8-byte Folded Spill
	st.d	$s4, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 29
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s0, 232
	ld.d	$s2, $s0, 240
	ld.d	$s0, $s0, 352
	ld.w	$s4, $fp, 28
	ld.d	$s3, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s4, .LBB16_11
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s3, .LBB16_11
# %bb.2:                                # %.preheader39.lr.ph
	ld.d	$a0, $fp, 32
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB16_11
# %bb.3:                                # %.preheader39.us.preheader
	ori	$a1, $zero, 25
	.p2align	4, , 16
.LBB16_4:                               # %.preheader39.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_5 Depth 2
                                        #       Child Loop BB16_6 Depth 3
                                        #         Child Loop BB16_7 Depth 4
	move	$a2, $zero
	.p2align	4, , 16
.LBB16_5:                               # %.preheader38.us.us
                                        #   Parent Loop BB16_4 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB16_6 Depth 3
                                        #         Child Loop BB16_7 Depth 4
	slli.d	$a3, $a2, 3
	ldx.d	$a4, $s0, $a3
	move	$a5, $zero
	.p2align	4, , 16
.LBB16_6:                               # %.preheader.us.us.us
                                        #   Parent Loop BB16_4 Depth=1
                                        #     Parent Loop BB16_5 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB16_7 Depth 4
	alsl.d	$a6, $a5, $a4, 3
	slli.d	$a7, $a5, 3
	move	$t0, $a0
	move	$t1, $s1
	move	$t2, $s2
	.p2align	4, , 16
.LBB16_7:                               #   Parent Loop BB16_4 Depth=1
                                        #     Parent Loop BB16_5 Depth=2
                                        #       Parent Loop BB16_6 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	ld.d	$t3, $t2, 0
	ld.d	$t4, $t1, 0
	fld.d	$fa0, $a6, 0
	fldx.d	$fa1, $t3, $a3
	fldx.d	$fa2, $t4, $a7
	fmadd.d	$fa0, $fa0, $fa1, $fa2
	fstx.d	$fa0, $t4, $a7
	addi.d	$t2, $t2, 8
	addi.d	$t0, $t0, -1
	addi.d	$t1, $t1, 8
	bnez	$t0, .LBB16_7
# %bb.8:                                # %._crit_edge.us.us.us
                                        #   in Loop: Header=BB16_6 Depth=3
	addi.d	$a5, $a5, 1
	bne	$a5, $a1, .LBB16_6
# %bb.9:                                # %.split.us.us.us
                                        #   in Loop: Header=BB16_5 Depth=2
	addi.d	$a2, $a2, 1
	bne	$a2, $a1, .LBB16_5
# %bb.10:                               # %.split44.us.us
                                        #   in Loop: Header=BB16_4 Depth=1
	addi.d	$s3, $s3, -1
	bnez	$s3, .LBB16_4
.LBB16_11:                              # %._crit_edge
	move	$a0, $fp
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end16:
	.size	_ZL16BM_MAT_X_MAT_RAWRN9benchmark5StateE, .Lfunc_end16-_ZL16BM_MAT_X_MAT_RAWRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZL16BM_PLANCKIAN_RAWRN9benchmark5StateE
.LCPI17_0:
	.dword	0x4033cccccccccccd              # double 19.800000000000001
	.text
	.p2align	5
	.type	_ZL16BM_PLANCKIAN_RAWRN9benchmark5StateE,@function
_ZL16BM_PLANCKIAN_RAWRN9benchmark5StateE: # @_ZL16BM_PLANCKIAN_RAWRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -128
	.cfi_def_cfa_offset 128
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
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
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
	.cfi_offset 56, -96
	move	$s2, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 30
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 32
	ld.d	$a1, $s0, 32
	ld.d	$a0, $a0, 0
	ld.d	$a2, $s0, 8
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	alsl.d	$a1, $a0, $a1, 3
	fld.d	$fa0, $a1, -8
	pcalau12i	$a1, %pc_hi20(.LCPI17_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI17_0)
	ld.d	$a1, $s0, 24
	ld.d	$a2, $s0, 16
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s0, $s0, 40
	fmul.d	$fa0, $fa0, $fa1
	move	$s1, $a1
	alsl.d	$a0, $a0, $a1, 3
	fst.d	$fa0, $a0, -8
	ld.w	$fp, $s2, 28
	ld.d	$s5, $s2, 16
	st.d	$s2, $sp, 0                     # 8-byte Folded Spill
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$fp, .LBB17_6
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s5, .LBB17_6
# %bb.2:                                # %.preheader.lr.ph
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	ld.d	$a0, $a0, 32
	ld.d	$s6, $a0, 0
	ori	$a0, $zero, 1
	blt	$s6, $a0, .LBB17_6
	.p2align	4, , 16
.LBB17_3:                               # %.preheader.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB17_4 Depth 2
	move	$s7, $s6
	move	$s8, $s0
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
	move	$s3, $s1
	.p2align	4, , 16
.LBB17_4:                               #   Parent Loop BB17_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa0, $s3, 0
	fld.d	$fa1, $fp, 0
	fdiv.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $s4, 0
	fld.d	$fs0, $s2, 0
	pcaddu18i	$ra, %call36(exp)
	jirl	$ra, $ra, 0
	vldi	$vr1, -784
	fadd.d	$fa0, $fa0, $fa1
	fdiv.d	$fa0, $fs0, $fa0
	fst.d	$fa0, $s8, 0
	addi.d	$s3, $s3, 8
	addi.d	$fp, $fp, 8
	addi.d	$s4, $s4, 8
	addi.d	$s2, $s2, 8
	addi.d	$s7, $s7, -1
	addi.d	$s8, $s8, 8
	bnez	$s7, .LBB17_4
# %bb.5:                                # %._crit_edge.us
                                        #   in Loop: Header=BB17_3 Depth=1
	addi.d	$s5, $s5, -1
	bnez	$s5, .LBB17_3
.LBB17_6:                               # %._crit_edge45
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end17:
	.size	_ZL16BM_PLANCKIAN_RAWRN9benchmark5StateE, .Lfunc_end17-_ZL16BM_PLANCKIAN_RAWRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZL19BM_IMP_HYDRO_2D_RAWRN9benchmark5StateE
.LCPI18_0:
	.dword	0x3fc6666666666666              # double 0.17499999999999999
	.text
	.p2align	5
	.type	_ZL19BM_IMP_HYDRO_2D_RAWRN9benchmark5StateE,@function
_ZL19BM_IMP_HYDRO_2D_RAWRN9benchmark5StateE: # @_ZL19BM_IMP_HYDRO_2D_RAWRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
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
	move	$s6, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 31
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 264
	ld.d	$s1, $s0, 272
	ld.d	$s5, $s0, 280
	ld.d	$s3, $s0, 288
	ld.d	$s4, $s0, 296
	ld.d	$fp, $s0, 304
	ld.w	$s0, $s6, 28
	ld.d	$a0, $s6, 16
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 0                     # 8-byte Folded Spill
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB18_15
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	beqz	$a0, .LBB18_15
# %bb.2:                                # %.preheader63.lr.ph
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	ld.d	$a0, $a0, 32
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB18_15
# %bb.3:                                # %.preheader63.us.preheader
	ld.d	$a3, $s2, 16
	ld.d	$t6, $s5, 8
	ld.d	$t3, $s2, 0
	ld.d	$t4, $s1, 8
	ld.d	$a4, $s2, 8
	ld.d	$a2, $s3, 8
	ld.d	$a5, $s4, 8
	ld.d	$t0, $s2, 24
	ld.d	$ra, $s5, 16
	ld.d	$t8, $s1, 16
	ld.d	$t2, $s3, 16
	ld.d	$t1, $s4, 16
	ld.d	$a7, $s2, 32
	ld.d	$a1, $s5, 24
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ld.d	$s6, $s1, 24
	ld.d	$t7, $s3, 24
	ld.d	$t5, $s4, 24
	ld.d	$a6, $s2, 40
	ld.d	$a1, $s5, 32
	st.d	$a1, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a1, $s1, 32
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	ld.d	$s8, $s3, 32
	ld.d	$s0, $s4, 32
	ld.d	$a1, $s2, 48
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a1, $s5, 40
	st.d	$a1, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a1, $s1, 40
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a1, $s3, 40
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s1, $s4, 40
	ld.d	$s2, $fp, 8
	ld.d	$s3, $fp, 16
	ld.d	$s4, $fp, 24
	ld.d	$s7, $fp, 32
	ld.d	$a1, $fp, 40
	addi.d	$t6, $t6, 8
	addi.d	$t3, $t3, 8
	st.d	$t3, $sp, 152                   # 8-byte Folded Spill
	addi.d	$t3, $t4, 8
	st.d	$t3, $sp, 144                   # 8-byte Folded Spill
	addi.d	$a2, $a2, 8
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	addi.d	$a2, $a5, 8
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	addi.d	$a2, $s2, 8
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	addi.d	$a2, $s3, 8
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a2, $t1, 8
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	addi.d	$a2, $t2, 8
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	addi.d	$a2, $t8, 8
	st.d	$a2, $sp, 88                    # 8-byte Folded Spill
	addi.d	$a2, $ra, 8
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a2, $s4, 8
	st.d	$a2, $sp, 72                    # 8-byte Folded Spill
	addi.d	$s2, $t5, 8
	addi.d	$s3, $t7, 8
	addi.d	$s4, $s6, 8
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	addi.d	$s5, $a2, 8
	addi.d	$s6, $s7, 8
	addi.d	$s7, $s0, 8
	addi.d	$s8, $s8, 8
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	addi.d	$ra, $a2, 8
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	addi.d	$fp, $a2, 8
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	addi.d	$a1, $s1, 8
	st.d	$a1, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 32                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 200                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 8
	st.d	$a1, $sp, 24                    # 8-byte Folded Spill
	addi.d	$a1, $a3, 8
	addi.d	$a2, $a4, 16
	st.d	$a3, $sp, 200                   # 8-byte Folded Spill
	addi.d	$a3, $a3, 16
	st.d	$a4, $sp, 192                   # 8-byte Folded Spill
	addi.d	$a4, $a4, 8
	addi.d	$a5, $t0, 8
	st.d	$t0, $sp, 184                   # 8-byte Folded Spill
	addi.d	$s0, $t0, 16
	addi.d	$t2, $a7, 8
	st.d	$a7, $sp, 176                   # 8-byte Folded Spill
	addi.d	$a7, $a7, 16
	addi.d	$t0, $a6, 8
	addi.d	$t1, $a0, -1
	st.d	$t1, $sp, 16                    # 8-byte Folded Spill
	st.d	$a6, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a6, $a6, 16
	st.d	$a6, $sp, 8                     # 8-byte Folded Spill
	st.d	$t6, $sp, 160                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB18_4:                               # %.preheader63.us
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB18_5 Depth 2
                                        #     Child Loop BB18_7 Depth 2
                                        #     Child Loop BB18_9 Depth 2
                                        #     Child Loop BB18_11 Depth 2
                                        #     Child Loop BB18_13 Depth 2
	ld.d	$a6, $sp, 192                   # 8-byte Folded Reload
	fld.d	$fa1, $a6, 8
	fld.d	$fa2, $a6, 0
	move	$a6, $zero
	ori	$t1, $zero, 1
	ld.d	$t4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 136                   # 8-byte Folded Reload
	ld.d	$t8, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB18_5:                               #   Parent Loop BB18_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa0, $t4, $a6
	fldx.d	$fa3, $t5, $a6
	fldx.d	$fa4, $a1, $a6
	fldx.d	$fa5, $t6, $a6
	fmul.d	$fa0, $fa0, $fa3
	fldx.d	$fa3, $a2, $a6
	fldx.d	$fa6, $t7, $a6
	fldx.d	$fa7, $t8, $a6
	fmadd.d	$fa0, $fa4, $fa5, $fa0
	addi.d	$t1, $t1, 1
	fmadd.d	$fa0, $fa3, $fa6, $fa0
	fmadd.d	$fa2, $fa2, $fa7, $fa0
	fldx.d	$fa4, $s1, $a6
	pcalau12i	$t3, %pc_hi20(.LCPI18_0)
	fld.d	$fa0, $t3, %pc_lo12(.LCPI18_0)
	add.d	$t3, $a2, $a6
	fadd.d	$fa2, $fa2, $fa4
	fsub.d	$fa2, $fa2, $fa1
	fmadd.d	$fa2, $fa2, $fa0, $fa1
	fst.d	$fa2, $t3, -8
	addi.d	$a6, $a6, 8
	fmov.d	$fa1, $fa3
	bne	$a0, $t1, .LBB18_5
# %bb.6:                                # %._crit_edge.us.us
                                        #   in Loop: Header=BB18_4 Depth=1
	ld.d	$a6, $sp, 200                   # 8-byte Folded Reload
	fld.d	$fa2, $a6, 8
	fld.d	$fa1, $a6, 0
	move	$a6, $zero
	ori	$t1, $zero, 1
	ld.d	$t4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$t5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$t7, $sp, 96                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB18_7:                               #   Parent Loop BB18_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa3, $a5, $a6
	fldx.d	$fa4, $s1, $a6
	fldx.d	$fa5, $a4, $a6
	fldx.d	$fa6, $t8, $a6
	fldx.d	$fa7, $a3, $a6
	fldx.d	$ft0, $t7, $a6
	fmul.d	$fa5, $fa5, $fa6
	fmadd.d	$fa3, $fa3, $fa4, $fa5
	fmadd.d	$fa3, $fa7, $ft0, $fa3
	fldx.d	$fa4, $t5, $a6
	fldx.d	$fa5, $t4, $a6
	addi.d	$t1, $t1, 1
	add.d	$t3, $a3, $a6
	fmadd.d	$fa1, $fa1, $fa4, $fa3
	fadd.d	$fa1, $fa1, $fa5
	fsub.d	$fa1, $fa1, $fa2
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	fst.d	$fa1, $t3, -8
	addi.d	$a6, $a6, 8
	fmov.d	$fa2, $fa7
	bne	$a0, $t1, .LBB18_7
# %bb.8:                                # %._crit_edge.us.us.1
                                        #   in Loop: Header=BB18_4 Depth=1
	ld.d	$a6, $sp, 184                   # 8-byte Folded Reload
	fld.d	$fa2, $a6, 8
	fld.d	$fa1, $a6, 0
	move	$a6, $zero
	ori	$t1, $zero, 1
	ld.d	$t4, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB18_9:                               #   Parent Loop BB18_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa3, $t2, $a6
	fldx.d	$fa4, $s5, $a6
	fldx.d	$fa5, $a1, $a6
	fldx.d	$fa6, $s4, $a6
	fldx.d	$fa7, $s0, $a6
	fldx.d	$ft0, $s3, $a6
	fmul.d	$fa5, $fa5, $fa6
	fmadd.d	$fa3, $fa3, $fa4, $fa5
	fmadd.d	$fa3, $fa7, $ft0, $fa3
	fldx.d	$fa4, $s2, $a6
	fldx.d	$fa5, $t4, $a6
	addi.d	$t1, $t1, 1
	add.d	$t3, $s0, $a6
	fmadd.d	$fa1, $fa1, $fa4, $fa3
	fadd.d	$fa1, $fa1, $fa5
	fsub.d	$fa1, $fa1, $fa2
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	fst.d	$fa1, $t3, -8
	addi.d	$a6, $a6, 8
	fmov.d	$fa2, $fa7
	bne	$a0, $t1, .LBB18_9
# %bb.10:                               # %._crit_edge.us.us.2
                                        #   in Loop: Header=BB18_4 Depth=1
	ld.d	$a6, $sp, 176                   # 8-byte Folded Reload
	fld.d	$fa2, $a6, 8
	fld.d	$fa1, $a6, 0
	move	$a6, $zero
	ori	$t1, $zero, 1
	.p2align	4, , 16
.LBB18_11:                              #   Parent Loop BB18_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fldx.d	$fa3, $t0, $a6
	fldx.d	$fa4, $fp, $a6
	fldx.d	$fa5, $a5, $a6
	fldx.d	$fa6, $ra, $a6
	fldx.d	$fa7, $a7, $a6
	fldx.d	$ft0, $s8, $a6
	fmul.d	$fa5, $fa5, $fa6
	fmadd.d	$fa3, $fa3, $fa4, $fa5
	fmadd.d	$fa3, $fa7, $ft0, $fa3
	fldx.d	$fa4, $s7, $a6
	fldx.d	$fa5, $s6, $a6
	addi.d	$t1, $t1, 1
	add.d	$t3, $a7, $a6
	fmadd.d	$fa1, $fa1, $fa4, $fa3
	fadd.d	$fa1, $fa1, $fa5
	fsub.d	$fa1, $fa1, $fa2
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	fst.d	$fa1, $t3, -8
	addi.d	$a6, $a6, 8
	fmov.d	$fa2, $fa7
	bne	$a0, $t1, .LBB18_11
# %bb.12:                               # %._crit_edge.us.us.3
                                        #   in Loop: Header=BB18_4 Depth=1
	ld.d	$a6, $sp, 168                   # 8-byte Folded Reload
	fld.d	$fa2, $a6, 8
	fld.d	$fa1, $a6, 0
	ld.d	$t1, $sp, 24                    # 8-byte Folded Reload
	move	$a6, $t2
	ld.d	$t3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$t4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$t5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$t6, $sp, 40                    # 8-byte Folded Reload
	ld.d	$t7, $sp, 48                    # 8-byte Folded Reload
	ld.d	$t8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB18_13:                              #   Parent Loop BB18_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	fld.d	$fa3, $a6, 0
	fld.d	$fa4, $t3, 0
	fld.d	$fa5, $t7, 0
	fld.d	$fa6, $t1, 0
	fmul.d	$fa3, $fa3, $fa4
	fld.d	$fa4, $t4, 0
	fld.d	$fa7, $t6, 0
	fld.d	$ft0, $t8, 0
	fld.d	$ft1, $s1, 0
	fmadd.d	$fa3, $fa5, $fa6, $fa3
	fmadd.d	$fa3, $fa4, $fa7, $fa3
	fmadd.d	$fa1, $fa1, $ft0, $fa3
	fadd.d	$fa1, $fa1, $ft1
	fsub.d	$fa1, $fa1, $fa2
	fmadd.d	$fa1, $fa1, $fa0, $fa2
	fst.d	$fa1, $t4, -8
	addi.d	$s1, $s1, 8
	addi.d	$t8, $t8, 8
	addi.d	$t7, $t7, 8
	addi.d	$t6, $t6, 8
	addi.d	$t5, $t5, -1
	addi.d	$t4, $t4, 8
	addi.d	$t3, $t3, 8
	addi.d	$a6, $a6, 8
	addi.d	$t1, $t1, 8
	fmov.d	$fa2, $fa4
	bnez	$t5, .LBB18_13
# %bb.14:                               # %._crit_edge.us.us.4
                                        #   in Loop: Header=BB18_4 Depth=1
	ld.d	$a6, $sp, 208                   # 8-byte Folded Reload
	addi.d	$a6, $a6, -1
	st.d	$a6, $sp, 208                   # 8-byte Folded Spill
	ld.d	$t6, $sp, 160                   # 8-byte Folded Reload
	bnez	$a6, .LBB18_4
.LBB18_15:                              # %._crit_edge
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
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
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.Lfunc_end18:
	.size	_ZL19BM_IMP_HYDRO_2D_RAWRN9benchmark5StateE, .Lfunc_end18-_ZL19BM_IMP_HYDRO_2D_RAWRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZL21BM_FIND_FIRST_MIN_RAWRN9benchmark5StateE
	.type	_ZL21BM_FIND_FIRST_MIN_RAWRN9benchmark5StateE,@function
_ZL21BM_FIND_FIRST_MIN_RAWRN9benchmark5StateE: # @_ZL21BM_FIND_FIRST_MIN_RAWRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s1, $sp, 16                    # 8-byte Folded Spill
	st.d	$s2, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_Z11getLoopDatav)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Z8loopInitj)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s0, 8
	ld.w	$s2, $fp, 28
	ld.d	$s1, $fp, 16
	st.w	$zero, $sp, 4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB19_11
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s1, .LBB19_11
# %bb.2:                                # %.lr.ph28
	ld.d	$a0, $fp, 32
	ld.d	$a1, $a0, 0
	ori	$a0, $zero, 2
	blt	$a1, $a0, .LBB19_10
# %bb.3:                                # %.lr.ph28.split.preheader
	addi.d	$a2, $s0, 8
	addi.d	$a3, $sp, 4
	b	.LBB19_5
	.p2align	4, , 16
.LBB19_4:                               # %._crit_edge
                                        #   in Loop: Header=BB19_5 Depth=1
	addi.d	$s1, $s1, -1
	beqz	$s1, .LBB19_11
.LBB19_5:                               # %.lr.ph28.split
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB19_8 Depth 2
	st.w	$zero, $sp, 4
	blt	$a1, $a0, .LBB19_4
# %bb.6:                                # %.lr.ph.preheader
                                        #   in Loop: Header=BB19_5 Depth=1
	ori	$a4, $zero, 1
	move	$a5, $a2
	ori	$a6, $zero, 1
	b	.LBB19_8
	.p2align	4, , 16
.LBB19_7:                               #   in Loop: Header=BB19_8 Depth=2
	addi.d	$a6, $a6, 1
	addi.d	$a5, $a5, 8
	addi.d	$a4, $a4, 1
	bge	$a6, $a1, .LBB19_4
.LBB19_8:                               # %.lr.ph
                                        #   Parent Loop BB19_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a7, $sp, 4
	fld.d	$fa0, $a5, 0
	slli.d	$a7, $a7, 3
	fldx.d	$fa1, $s0, $a7
	fcmp.cule.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB19_7
# %bb.9:                                #   in Loop: Header=BB19_8 Depth=2
	st.w	$a4, $sp, 4
	#APP
	#NO_APP
	ld.d	$a1, $fp, 32
	ld.d	$a1, $a1, 0
	b	.LBB19_7
.LBB19_10:                              # %.lr.ph28.split.us
	st.w	$zero, $sp, 4
.LBB19_11:                              # %._crit_edge29
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end19:
	.size	_ZL21BM_FIND_FIRST_MIN_RAWRN9benchmark5StateE, .Lfunc_end19-_ZL21BM_FIND_FIRST_MIN_RAWRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_RawSubsetCbenchmarks.cxx
	.type	_GLOBAL__sub_I_RawSubsetCbenchmarks.cxx,@function
_GLOBAL__sub_I_RawSubsetCbenchmarks.cxx: # @_GLOBAL__sub_I_RawSubsetCbenchmarks.cxx
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -112
	.cfi_def_cfa_offset 112
	st.d	$ra, $sp, 104                   # 8-byte Folded Spill
	st.d	$fp, $sp, 96                    # 8-byte Folded Spill
	st.d	$s0, $sp, 88                    # 8-byte Folded Spill
	st.d	$s1, $sp, 80                    # 8-byte Folded Spill
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s3, $sp, 64                    # 8-byte Folded Spill
	st.d	$s4, $sp, 56                    # 8-byte Folded Spill
	st.d	$s5, $sp, 48                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal17InitializeStreamsEv)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 7
	addi.d	$s3, $sp, 24
	st.d	$s3, $sp, 8
	st.d	$a1, $sp, 24
	st.d	$a0, $sp, 31
	ori	$a0, $zero, 15
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 39
	ori	$s5, $zero, 1
.Ltmp0:
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp1:
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	addi.d	$s4, $a0, 16
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL15BM_HYDRO_1D_RAWRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL15BM_HYDRO_1D_RAWRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp2:
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp3:
# %bb.2:
.Ltmp4:
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp5:
# %bb.3:
.Ltmp6:
	lu12i.w	$a1, 1
	ori	$s0, $a1, 905
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp7:
# %bb.4:
.Ltmp8:
	lu12i.w	$a1, 10
	ori	$s1, $a1, 3257
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp9:
# %bb.5:
.Ltmp10:
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp11:
# %bb.6:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_8:                               # %__cxx_global_var_init.1.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_2_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL27benchmark_uniq_2_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a1, 7
	move	$fp, $a0
	st.d	$s3, $sp, 8
	st.d	$a2, $sp, 24
	st.w	$a1, $sp, 31
	ori	$a0, $zero, 11
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 35
	ori	$s5, $zero, 1
.Ltmp13:
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp14:
# %bb.9:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL11BM_ICCG_RAWRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL11BM_ICCG_RAWRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp15:
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp16:
# %bb.10:
.Ltmp17:
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp18:
# %bb.11:
.Ltmp19:
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp20:
# %bb.12:
.Ltmp21:
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp22:
# %bb.13:
.Ltmp23:
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp24:
# %bb.14:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_16
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_16:                              # %__cxx_global_var_init.2.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_3_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL27benchmark_uniq_3_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 40
.Ltmp26:
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp27:
# %bb.17:                               # %.noexc.i
	ld.d	$a1, $sp, 40
	pcalau12i	$a2, %pc_hi20(.L.str.5)
	addi.d	$a2, $a2, %pc_lo12(.L.str.5)
	vld	$vr0, $a2, 0
	ld.b	$a2, $a2, 16
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	vst	$vr0, $a0, 0
	st.b	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp29:
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp30:
# %bb.18:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL17BM_INNER_PROD_RAWRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL17BM_INNER_PROD_RAWRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp31:
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp32:
# %bb.19:
.Ltmp33:
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp34:
# %bb.20:
.Ltmp35:
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp36:
# %bb.21:
.Ltmp37:
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp38:
# %bb.22:
.Ltmp39:
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp40:
# %bb.23:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_25
# %bb.24:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i9
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_25:                              # %__cxx_global_var_init.4.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_4_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL27benchmark_uniq_4_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 40
.Ltmp42:
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp43:
# %bb.26:                               # %.noexc.i14
	ld.d	$a1, $sp, 40
	pcalau12i	$a2, %pc_hi20(.L.str.7)
	addi.d	$a2, $a2, %pc_lo12(.L.str.7)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp45:
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp46:
# %bb.27:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL18BM_BAND_LIN_EQ_RAWRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL18BM_BAND_LIN_EQ_RAWRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp47:
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp48:
# %bb.28:
.Ltmp49:
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp50:
# %bb.29:
.Ltmp51:
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp52:
# %bb.30:
.Ltmp53:
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp54:
# %bb.31:
.Ltmp55:
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp56:
# %bb.32:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_34
# %bb.33:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i18
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_34:                              # %__cxx_global_var_init.6.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_5_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL27benchmark_uniq_5_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 40
.Ltmp58:
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp59:
# %bb.35:                               # %.noexc.i23
	ld.d	$a1, $sp, 40
	pcalau12i	$a2, %pc_hi20(.L.str.9)
	addi.d	$a2, $a2, %pc_lo12(.L.str.9)
	vld	$vr0, $a2, 0
	ld.w	$a2, $a2, 15
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	vst	$vr0, $a0, 0
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp61:
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp62:
# %bb.36:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL19BM_TRIDIAG_ELIM_RAWRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL19BM_TRIDIAG_ELIM_RAWRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp63:
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp64:
# %bb.37:
.Ltmp65:
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp66:
# %bb.38:
.Ltmp67:
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp68:
# %bb.39:
.Ltmp69:
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp70:
# %bb.40:
.Ltmp71:
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp72:
# %bb.41:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_43
# %bb.42:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_43:                              # %__cxx_global_var_init.8.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_6_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL27benchmark_uniq_6_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	ld.d	$a2, $a1, 0
	ld.h	$a1, $a1, 8
	move	$fp, $a0
	st.d	$s3, $sp, 8
	st.d	$a2, $sp, 24
	st.h	$a1, $sp, 32
	ori	$a0, $zero, 10
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 34
	ori	$s5, $zero, 1
.Ltmp74:
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp75:
# %bb.44:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL10BM_EOS_RAWRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL10BM_EOS_RAWRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp76:
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp77:
# %bb.45:
.Ltmp78:
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp79:
# %bb.46:
.Ltmp80:
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp81:
# %bb.47:
.Ltmp82:
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp83:
# %bb.48:
.Ltmp84:
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp85:
# %bb.49:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_51
# %bb.50:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i32
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_51:                              # %__cxx_global_var_init.10.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_7_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL27benchmark_uniq_7_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	ld.d	$a2, $a1, 0
	ld.h	$a1, $a1, 8
	move	$fp, $a0
	st.d	$s3, $sp, 8
	st.d	$a2, $sp, 24
	st.h	$a1, $sp, 32
	ori	$a0, $zero, 10
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 34
	ori	$s5, $zero, 1
.Ltmp87:
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp88:
# %bb.52:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL10BM_ADI_RAWRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL10BM_ADI_RAWRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp89:
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp90:
# %bb.53:
.Ltmp91:
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp92:
# %bb.54:
.Ltmp93:
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp94:
# %bb.55:
.Ltmp95:
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp96:
# %bb.56:
.Ltmp97:
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp98:
# %bb.57:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_59
# %bb.58:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i37
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_59:                              # %__cxx_global_var_init.12.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_8_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL27benchmark_uniq_8_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 40
.Ltmp100:
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp101:
# %bb.60:                               # %.noexc.i42
	ld.d	$a1, $sp, 40
	pcalau12i	$a2, %pc_hi20(.L.str.15)
	addi.d	$a2, $a2, %pc_lo12(.L.str.15)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp103:
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp104:
# %bb.61:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL18BM_INT_PREDICT_RAWRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL18BM_INT_PREDICT_RAWRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp105:
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp106:
# %bb.62:
.Ltmp107:
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp108:
# %bb.63:
.Ltmp109:
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp110:
# %bb.64:
.Ltmp111:
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp112:
# %bb.65:
.Ltmp113:
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp114:
# %bb.66:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_68
# %bb.67:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_68:                              # %__cxx_global_var_init.14.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_9_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL27benchmark_uniq_9_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 40
.Ltmp116:
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp117:
# %bb.69:                               # %.noexc.i51
	ld.d	$a1, $sp, 40
	pcalau12i	$a2, %pc_hi20(.L.str.17)
	addi.d	$a2, $a2, %pc_lo12(.L.str.17)
	vld	$vr0, $a2, 0
	ld.w	$a2, $a2, 15
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	vst	$vr0, $a0, 0
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp119:
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp120:
# %bb.70:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL19BM_DIFF_PREDICT_RAWRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL19BM_DIFF_PREDICT_RAWRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp121:
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp122:
# %bb.71:
.Ltmp123:
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp124:
# %bb.72:
.Ltmp125:
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp126:
# %bb.73:
.Ltmp127:
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp128:
# %bb.74:
.Ltmp129:
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp130:
# %bb.75:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_77
# %bb.76:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i55
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_77:                              # %__cxx_global_var_init.16.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_10_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL28benchmark_uniq_10_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 40
.Ltmp132:
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp133:
# %bb.78:                               # %.noexc.i60
	ld.d	$a1, $sp, 40
	pcalau12i	$a2, %pc_hi20(.L.str.19)
	vld	$vr0, $a2, %pc_lo12(.L.str.19)
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp135:
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp136:
# %bb.79:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL16BM_FIRST_SUM_RAWRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL16BM_FIRST_SUM_RAWRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp137:
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp138:
# %bb.80:
.Ltmp139:
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp140:
# %bb.81:
.Ltmp141:
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp142:
# %bb.82:
.Ltmp143:
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp144:
# %bb.83:
.Ltmp145:
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp146:
# %bb.84:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_86
# %bb.85:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i64
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_86:                              # %__cxx_global_var_init.18.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_11_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL28benchmark_uniq_11_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 40
.Ltmp148:
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp149:
# %bb.87:                               # %.noexc.i69
	ld.d	$a1, $sp, 40
	pcalau12i	$a2, %pc_hi20(.L.str.21)
	addi.d	$a2, $a2, %pc_lo12(.L.str.21)
	vld	$vr0, $a2, 0
	ld.b	$a2, $a2, 16
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	vst	$vr0, $a0, 0
	st.b	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp151:
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp152:
# %bb.88:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL17BM_FIRST_DIFF_RAWRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL17BM_FIRST_DIFF_RAWRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp153:
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp154:
# %bb.89:
.Ltmp155:
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp156:
# %bb.90:
.Ltmp157:
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp158:
# %bb.91:
.Ltmp159:
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp160:
# %bb.92:
.Ltmp161:
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp162:
# %bb.93:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_95
# %bb.94:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i73
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_95:                              # %__cxx_global_var_init.20.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_12_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL28benchmark_uniq_12_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.23)
	addi.d	$a1, $a1, %pc_lo12(.L.str.23)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 5
	move	$fp, $a0
	st.d	$s3, $sp, 8
	st.d	$a2, $sp, 24
	st.d	$a1, $sp, 29
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 37
	ori	$s5, $zero, 1
.Ltmp164:
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp165:
# %bb.96:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL13BM_PIC_2D_RAWRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL13BM_PIC_2D_RAWRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp166:
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp167:
# %bb.97:
.Ltmp168:
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp169:
# %bb.98:
.Ltmp170:
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp171:
# %bb.99:
.Ltmp172:
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp173:
# %bb.100:
.Ltmp174:
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp175:
# %bb.101:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_103
# %bb.102:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i78
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_103:                             # %__cxx_global_var_init.22.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_13_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL28benchmark_uniq_13_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 5
	move	$fp, $a0
	st.d	$s3, $sp, 8
	st.d	$a2, $sp, 24
	st.d	$a1, $sp, 29
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 37
	ori	$s5, $zero, 1
.Ltmp177:
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp178:
# %bb.104:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL13BM_PIC_1D_RAWRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL13BM_PIC_1D_RAWRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp179:
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp180:
# %bb.105:
.Ltmp181:
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp182:
# %bb.106:
.Ltmp183:
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp184:
# %bb.107:
.Ltmp185:
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp186:
# %bb.108:
.Ltmp187:
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp188:
# %bb.109:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_111
# %bb.110:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_111:                             # %__cxx_global_var_init.24.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_14_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL28benchmark_uniq_14_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 7
	move	$fp, $a0
	st.d	$s3, $sp, 8
	st.d	$a2, $sp, 24
	st.d	$a1, $sp, 31
	ori	$a0, $zero, 15
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 39
	ori	$s5, $zero, 1
.Ltmp190:
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp191:
# %bb.112:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL15BM_HYDRO_2D_RAWRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL15BM_HYDRO_2D_RAWRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp192:
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp193:
# %bb.113:
.Ltmp194:
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp195:
# %bb.114:
.Ltmp196:
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp197:
# %bb.115:
.Ltmp198:
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp199:
# %bb.116:
.Ltmp200:
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp201:
# %bb.117:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_119
# %bb.118:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i88
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_119:                             # %__cxx_global_var_init.26.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_15_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL28benchmark_uniq_15_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 20
	st.d	$a0, $sp, 40
.Ltmp203:
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp204:
# %bb.120:                              # %.noexc.i93
	ld.d	$a1, $sp, 40
	pcalau12i	$a2, %pc_hi20(.L.str.29)
	addi.d	$a2, $a2, %pc_lo12(.L.str.29)
	vld	$vr0, $a2, 0
	ld.w	$a2, $a2, 16
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	vst	$vr0, $a0, 0
	st.w	$a2, $a0, 16
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp206:
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp207:
# %bb.121:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL20BM_GEN_LIN_RECUR_RAWRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL20BM_GEN_LIN_RECUR_RAWRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp208:
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp209:
# %bb.122:
.Ltmp210:
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp211:
# %bb.123:
.Ltmp212:
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp213:
# %bb.124:
.Ltmp214:
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp215:
# %bb.125:
.Ltmp216:
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp217:
# %bb.126:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_128
# %bb.127:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i97
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_128:                             # %__cxx_global_var_init.28.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_16_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL28benchmark_uniq_16_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.31)
	addi.d	$a1, $a1, %pc_lo12(.L.str.31)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 7
	move	$fp, $a0
	st.d	$s3, $sp, 8
	st.d	$a2, $sp, 24
	st.d	$a1, $sp, 31
	ori	$a0, $zero, 15
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 39
	ori	$s5, $zero, 1
.Ltmp219:
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp220:
# %bb.129:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL15BM_DISC_ORD_RAWRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL15BM_DISC_ORD_RAWRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp221:
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp222:
# %bb.130:
.Ltmp223:
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp224:
# %bb.131:
.Ltmp225:
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp226:
# %bb.132:
.Ltmp227:
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp228:
# %bb.133:
.Ltmp229:
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp230:
# %bb.134:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_136
# %bb.135:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i102
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_136:                             # %__cxx_global_var_init.30.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_17_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL28benchmark_uniq_17_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 40
.Ltmp232:
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp233:
# %bb.137:                              # %.noexc.i107
	ld.d	$a1, $sp, 40
	pcalau12i	$a2, %pc_hi20(.L.str.33)
	vld	$vr0, $a2, %pc_lo12(.L.str.33)
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp235:
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp236:
# %bb.138:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL16BM_MAT_X_MAT_RAWRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL16BM_MAT_X_MAT_RAWRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp237:
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp238:
# %bb.139:
.Ltmp239:
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp240:
# %bb.140:
.Ltmp241:
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp242:
# %bb.141:
.Ltmp243:
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp244:
# %bb.142:
.Ltmp245:
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp246:
# %bb.143:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_145
# %bb.144:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i111
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_145:                             # %__cxx_global_var_init.32.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_18_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL28benchmark_uniq_18_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 40
.Ltmp248:
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp249:
# %bb.146:                              # %.noexc.i116
	ld.d	$a1, $sp, 40
	pcalau12i	$a2, %pc_hi20(.L.str.35)
	vld	$vr0, $a2, %pc_lo12(.L.str.35)
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp251:
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp252:
# %bb.147:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL16BM_PLANCKIAN_RAWRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL16BM_PLANCKIAN_RAWRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp253:
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp254:
# %bb.148:
.Ltmp255:
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp256:
# %bb.149:
.Ltmp257:
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp258:
# %bb.150:
.Ltmp259:
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp260:
# %bb.151:
.Ltmp261:
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp262:
# %bb.152:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_154
# %bb.153:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i120
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_154:                             # %__cxx_global_var_init.34.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_19_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL28benchmark_uniq_19_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 40
.Ltmp264:
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp265:
# %bb.155:                              # %.noexc.i125
	ld.d	$a1, $sp, 40
	pcalau12i	$a2, %pc_hi20(.L.str.37)
	addi.d	$a2, $a2, %pc_lo12(.L.str.37)
	vld	$vr0, $a2, 0
	ld.w	$a2, $a2, 15
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	vst	$vr0, $a0, 0
	st.w	$a2, $a0, 15
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s5, $zero, 1
.Ltmp267:
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp268:
# %bb.156:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL19BM_IMP_HYDRO_2D_RAWRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL19BM_IMP_HYDRO_2D_RAWRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp269:
	move	$s5, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp270:
# %bb.157:
.Ltmp271:
	ori	$a1, $zero, 171
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp272:
# %bb.158:
.Ltmp273:
	move	$s5, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp274:
# %bb.159:
.Ltmp275:
	move	$s5, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp276:
# %bb.160:
.Ltmp277:
	ori	$a1, $zero, 1
	move	$s5, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp278:
# %bb.161:
	move	$s2, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_163
# %bb.162:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i129
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_163:                             # %__cxx_global_var_init.36.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_20_benchmark_)
	st.d	$s2, $a0, %pc_lo12(_ZL28benchmark_uniq_20_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	st.d	$s3, $sp, 8
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 40
.Ltmp280:
	addi.d	$a0, $sp, 8
	addi.d	$a1, $sp, 40
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp281:
# %bb.164:                              # %.noexc.i134
	ld.d	$a1, $sp, 40
	pcalau12i	$a2, %pc_hi20(.L.str.39)
	addi.d	$a2, $a2, %pc_lo12(.L.str.39)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 13
	st.d	$a0, $sp, 8
	st.d	$a1, $sp, 24
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 8
	st.d	$a1, $sp, 16
	stx.b	$zero, $a0, $a1
	ori	$s2, $zero, 1
.Ltmp283:
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp284:
# %bb.165:
	st.d	$s4, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL21BM_FIND_FIRST_MIN_RAWRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL21BM_FIND_FIRST_MIN_RAWRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp285:
	move	$s2, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp286:
# %bb.166:
.Ltmp287:
	ori	$a1, $zero, 171
	move	$s2, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp288:
# %bb.167:
.Ltmp289:
	move	$s2, $zero
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp290:
# %bb.168:
.Ltmp291:
	move	$s2, $zero
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp292:
# %bb.169:
.Ltmp293:
	ori	$a1, $zero, 1
	move	$s2, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark4UnitENS_8TimeUnitE)
	jirl	$ra, $ra, 0
.Ltmp294:
# %bb.170:
	move	$s0, $a0
	ld.d	$a0, $sp, 8
	beq	$a0, $s3, .LBB20_172
# %bb.171:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i138
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_172:                             # %__cxx_global_var_init.38.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_21_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_21_benchmark_)
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
.LBB20_173:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i131
.Ltmp282:
	move	$s0, $a0
	b	.LBB20_207
.LBB20_174:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i122
.Ltmp266:
	move	$s0, $a0
	b	.LBB20_207
.LBB20_175:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i113
.Ltmp250:
	move	$s0, $a0
	b	.LBB20_207
.LBB20_176:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i104
.Ltmp234:
	move	$s0, $a0
	b	.LBB20_207
.LBB20_177:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i90
.Ltmp205:
	move	$s0, $a0
	b	.LBB20_207
.LBB20_178:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i66
.Ltmp150:
	move	$s0, $a0
	b	.LBB20_207
.LBB20_179:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i57
.Ltmp134:
	move	$s0, $a0
	b	.LBB20_207
.LBB20_180:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i48
.Ltmp118:
	move	$s0, $a0
	b	.LBB20_207
.LBB20_181:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i39
.Ltmp102:
	move	$s0, $a0
	b	.LBB20_207
.LBB20_182:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i20
.Ltmp60:
	move	$s0, $a0
	b	.LBB20_207
.LBB20_183:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i11
.Ltmp44:
	move	$s0, $a0
	b	.LBB20_207
.LBB20_184:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i
.Ltmp28:
	move	$s0, $a0
	b	.LBB20_207
.LBB20_185:
.Ltmp295:
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_187
# %bb.186:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i137
	bnez	$s2, .LBB20_207
	b	.LBB20_208
.LBB20_187:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i136
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB20_207
	b	.LBB20_208
.LBB20_188:
.Ltmp279:
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_206
	b	.LBB20_210
.LBB20_189:
.Ltmp263:
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_206
	b	.LBB20_210
.LBB20_190:
.Ltmp247:
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_206
	b	.LBB20_210
.LBB20_191:
.Ltmp231:
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_206
	b	.LBB20_210
.LBB20_192:
.Ltmp218:
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_206
	b	.LBB20_210
.LBB20_193:
.Ltmp202:
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_206
	b	.LBB20_210
.LBB20_194:
.Ltmp189:
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_206
	b	.LBB20_210
.LBB20_195:
.Ltmp176:
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_206
	b	.LBB20_210
.LBB20_196:
.Ltmp163:
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_206
	b	.LBB20_210
.LBB20_197:
.Ltmp147:
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_206
	b	.LBB20_210
.LBB20_198:
.Ltmp131:
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_206
	b	.LBB20_210
.LBB20_199:
.Ltmp115:
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_206
	b	.LBB20_210
.LBB20_200:
.Ltmp99:
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_206
	b	.LBB20_210
.LBB20_201:
.Ltmp86:
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_206
	b	.LBB20_210
.LBB20_202:
.Ltmp73:
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_206
	b	.LBB20_210
.LBB20_203:
.Ltmp57:
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_206
	b	.LBB20_210
.LBB20_204:
.Ltmp41:
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_206
	b	.LBB20_210
.LBB20_205:
.Ltmp25:
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	beq	$a1, $s3, .LBB20_210
.LBB20_206:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
	move	$a0, $a1
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
	beqz	$s5, .LBB20_208
.LBB20_207:                             # %common.resume.sink.split
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPv)
	jirl	$ra, $ra, 0
.LBB20_208:                             # %common.resume
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB20_209:
.Ltmp12:
	ld.d	$a1, $sp, 8
	move	$s0, $a0
	bne	$a1, $s3, .LBB20_206
.LBB20_210:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i
	beqz	$s5, .LBB20_208
	b	.LBB20_207
.Lfunc_end20:
	.size	_GLOBAL__sub_I_RawSubsetCbenchmarks.cxx, .Lfunc_end20-_GLOBAL__sub_I_RawSubsetCbenchmarks.cxx
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table20:
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
	.uleb128 .Ltmp11-.Ltmp0                 #   Call between .Ltmp0 and .Ltmp11
	.uleb128 .Ltmp12-.Lfunc_begin0          #     jumps to .Ltmp12
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 3 <<
	.uleb128 .Ltmp13-.Ltmp11                #   Call between .Ltmp11 and .Ltmp13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp24-.Ltmp13                #   Call between .Ltmp13 and .Ltmp24
	.uleb128 .Ltmp25-.Lfunc_begin0          #     jumps to .Ltmp25
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp26-.Ltmp24                #   Call between .Ltmp24 and .Ltmp26
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin0          #     jumps to .Ltmp28
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp40-.Ltmp29                #   Call between .Ltmp29 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin0          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp42-.Ltmp40                #   Call between .Ltmp40 and .Ltmp42
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin0          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp56-.Ltmp45                #   Call between .Ltmp45 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin0          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp58-.Ltmp56                #   Call between .Ltmp56 and .Ltmp58
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin0          #     jumps to .Ltmp60
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp72-.Ltmp61                #   Call between .Ltmp61 and .Ltmp72
	.uleb128 .Ltmp73-.Lfunc_begin0          #     jumps to .Ltmp73
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp74-.Ltmp72                #   Call between .Ltmp72 and .Ltmp74
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp85-.Ltmp74                #   Call between .Ltmp74 and .Ltmp85
	.uleb128 .Ltmp86-.Lfunc_begin0          #     jumps to .Ltmp86
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp87-.Ltmp85                #   Call between .Ltmp85 and .Ltmp87
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp98-.Ltmp87                #   Call between .Ltmp87 and .Ltmp98
	.uleb128 .Ltmp99-.Lfunc_begin0          #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp98-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp100-.Ltmp98               #   Call between .Ltmp98 and .Ltmp100
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin0         # >> Call Site 19 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin0         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin0         # >> Call Site 20 <<
	.uleb128 .Ltmp114-.Ltmp103              #   Call between .Ltmp103 and .Ltmp114
	.uleb128 .Ltmp115-.Lfunc_begin0         #     jumps to .Ltmp115
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp114-.Lfunc_begin0         # >> Call Site 21 <<
	.uleb128 .Ltmp116-.Ltmp114              #   Call between .Ltmp114 and .Ltmp116
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin0         # >> Call Site 22 <<
	.uleb128 .Ltmp117-.Ltmp116              #   Call between .Ltmp116 and .Ltmp117
	.uleb128 .Ltmp118-.Lfunc_begin0         #     jumps to .Ltmp118
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp119-.Lfunc_begin0         # >> Call Site 23 <<
	.uleb128 .Ltmp130-.Ltmp119              #   Call between .Ltmp119 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin0         #     jumps to .Ltmp131
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin0         # >> Call Site 24 <<
	.uleb128 .Ltmp132-.Ltmp130              #   Call between .Ltmp130 and .Ltmp132
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin0         # >> Call Site 25 <<
	.uleb128 .Ltmp133-.Ltmp132              #   Call between .Ltmp132 and .Ltmp133
	.uleb128 .Ltmp134-.Lfunc_begin0         #     jumps to .Ltmp134
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp135-.Lfunc_begin0         # >> Call Site 26 <<
	.uleb128 .Ltmp146-.Ltmp135              #   Call between .Ltmp135 and .Ltmp146
	.uleb128 .Ltmp147-.Lfunc_begin0         #     jumps to .Ltmp147
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp146-.Lfunc_begin0         # >> Call Site 27 <<
	.uleb128 .Ltmp148-.Ltmp146              #   Call between .Ltmp146 and .Ltmp148
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp148-.Lfunc_begin0         # >> Call Site 28 <<
	.uleb128 .Ltmp149-.Ltmp148              #   Call between .Ltmp148 and .Ltmp149
	.uleb128 .Ltmp150-.Lfunc_begin0         #     jumps to .Ltmp150
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp151-.Lfunc_begin0         # >> Call Site 29 <<
	.uleb128 .Ltmp162-.Ltmp151              #   Call between .Ltmp151 and .Ltmp162
	.uleb128 .Ltmp163-.Lfunc_begin0         #     jumps to .Ltmp163
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp162-.Lfunc_begin0         # >> Call Site 30 <<
	.uleb128 .Ltmp164-.Ltmp162              #   Call between .Ltmp162 and .Ltmp164
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp164-.Lfunc_begin0         # >> Call Site 31 <<
	.uleb128 .Ltmp175-.Ltmp164              #   Call between .Ltmp164 and .Ltmp175
	.uleb128 .Ltmp176-.Lfunc_begin0         #     jumps to .Ltmp176
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp175-.Lfunc_begin0         # >> Call Site 32 <<
	.uleb128 .Ltmp177-.Ltmp175              #   Call between .Ltmp175 and .Ltmp177
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp177-.Lfunc_begin0         # >> Call Site 33 <<
	.uleb128 .Ltmp188-.Ltmp177              #   Call between .Ltmp177 and .Ltmp188
	.uleb128 .Ltmp189-.Lfunc_begin0         #     jumps to .Ltmp189
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp188-.Lfunc_begin0         # >> Call Site 34 <<
	.uleb128 .Ltmp190-.Ltmp188              #   Call between .Ltmp188 and .Ltmp190
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp190-.Lfunc_begin0         # >> Call Site 35 <<
	.uleb128 .Ltmp201-.Ltmp190              #   Call between .Ltmp190 and .Ltmp201
	.uleb128 .Ltmp202-.Lfunc_begin0         #     jumps to .Ltmp202
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp201-.Lfunc_begin0         # >> Call Site 36 <<
	.uleb128 .Ltmp203-.Ltmp201              #   Call between .Ltmp201 and .Ltmp203
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp203-.Lfunc_begin0         # >> Call Site 37 <<
	.uleb128 .Ltmp204-.Ltmp203              #   Call between .Ltmp203 and .Ltmp204
	.uleb128 .Ltmp205-.Lfunc_begin0         #     jumps to .Ltmp205
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp206-.Lfunc_begin0         # >> Call Site 38 <<
	.uleb128 .Ltmp217-.Ltmp206              #   Call between .Ltmp206 and .Ltmp217
	.uleb128 .Ltmp218-.Lfunc_begin0         #     jumps to .Ltmp218
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp217-.Lfunc_begin0         # >> Call Site 39 <<
	.uleb128 .Ltmp219-.Ltmp217              #   Call between .Ltmp217 and .Ltmp219
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp219-.Lfunc_begin0         # >> Call Site 40 <<
	.uleb128 .Ltmp230-.Ltmp219              #   Call between .Ltmp219 and .Ltmp230
	.uleb128 .Ltmp231-.Lfunc_begin0         #     jumps to .Ltmp231
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp230-.Lfunc_begin0         # >> Call Site 41 <<
	.uleb128 .Ltmp232-.Ltmp230              #   Call between .Ltmp230 and .Ltmp232
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp232-.Lfunc_begin0         # >> Call Site 42 <<
	.uleb128 .Ltmp233-.Ltmp232              #   Call between .Ltmp232 and .Ltmp233
	.uleb128 .Ltmp234-.Lfunc_begin0         #     jumps to .Ltmp234
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp235-.Lfunc_begin0         # >> Call Site 43 <<
	.uleb128 .Ltmp246-.Ltmp235              #   Call between .Ltmp235 and .Ltmp246
	.uleb128 .Ltmp247-.Lfunc_begin0         #     jumps to .Ltmp247
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp246-.Lfunc_begin0         # >> Call Site 44 <<
	.uleb128 .Ltmp248-.Ltmp246              #   Call between .Ltmp246 and .Ltmp248
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp248-.Lfunc_begin0         # >> Call Site 45 <<
	.uleb128 .Ltmp249-.Ltmp248              #   Call between .Ltmp248 and .Ltmp249
	.uleb128 .Ltmp250-.Lfunc_begin0         #     jumps to .Ltmp250
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp251-.Lfunc_begin0         # >> Call Site 46 <<
	.uleb128 .Ltmp262-.Ltmp251              #   Call between .Ltmp251 and .Ltmp262
	.uleb128 .Ltmp263-.Lfunc_begin0         #     jumps to .Ltmp263
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp262-.Lfunc_begin0         # >> Call Site 47 <<
	.uleb128 .Ltmp264-.Ltmp262              #   Call between .Ltmp262 and .Ltmp264
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp264-.Lfunc_begin0         # >> Call Site 48 <<
	.uleb128 .Ltmp265-.Ltmp264              #   Call between .Ltmp264 and .Ltmp265
	.uleb128 .Ltmp266-.Lfunc_begin0         #     jumps to .Ltmp266
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp267-.Lfunc_begin0         # >> Call Site 49 <<
	.uleb128 .Ltmp278-.Ltmp267              #   Call between .Ltmp267 and .Ltmp278
	.uleb128 .Ltmp279-.Lfunc_begin0         #     jumps to .Ltmp279
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp278-.Lfunc_begin0         # >> Call Site 50 <<
	.uleb128 .Ltmp280-.Ltmp278              #   Call between .Ltmp278 and .Ltmp280
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp280-.Lfunc_begin0         # >> Call Site 51 <<
	.uleb128 .Ltmp281-.Ltmp280              #   Call between .Ltmp280 and .Ltmp281
	.uleb128 .Ltmp282-.Lfunc_begin0         #     jumps to .Ltmp282
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp283-.Lfunc_begin0         # >> Call Site 52 <<
	.uleb128 .Ltmp294-.Ltmp283              #   Call between .Ltmp283 and .Ltmp294
	.uleb128 .Ltmp295-.Lfunc_begin0         #     jumps to .Ltmp295
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp294-.Lfunc_begin0         # >> Call Site 53 <<
	.uleb128 .Lfunc_end20-.Ltmp294          #   Call between .Ltmp294 and .Lfunc_end20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.type	_ZL27benchmark_uniq_2_benchmark_,@object # @_ZL27benchmark_uniq_2_benchmark_
	.local	_ZL27benchmark_uniq_2_benchmark_
	.comm	_ZL27benchmark_uniq_2_benchmark_,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str:
	.asciz	"BM_HYDRO_1D_RAW"
	.size	.L.str, 16

	.type	_ZL27benchmark_uniq_3_benchmark_,@object # @_ZL27benchmark_uniq_3_benchmark_
	.local	_ZL27benchmark_uniq_3_benchmark_
	.comm	_ZL27benchmark_uniq_3_benchmark_,8,8
	.type	.L.str.3,@object                # @.str.3
	.p2align	3, 0x0
.L.str.3:
	.asciz	"BM_ICCG_RAW"
	.size	.L.str.3, 12

	.type	_ZL27benchmark_uniq_4_benchmark_,@object # @_ZL27benchmark_uniq_4_benchmark_
	.local	_ZL27benchmark_uniq_4_benchmark_
	.comm	_ZL27benchmark_uniq_4_benchmark_,8,8
	.type	.L.str.5,@object                # @.str.5
	.p2align	3, 0x0
.L.str.5:
	.asciz	"BM_INNER_PROD_RAW"
	.size	.L.str.5, 18

	.type	_ZL27benchmark_uniq_5_benchmark_,@object # @_ZL27benchmark_uniq_5_benchmark_
	.local	_ZL27benchmark_uniq_5_benchmark_
	.comm	_ZL27benchmark_uniq_5_benchmark_,8,8
	.type	.L.str.7,@object                # @.str.7
	.p2align	3, 0x0
.L.str.7:
	.asciz	"BM_BAND_LIN_EQ_RAW"
	.size	.L.str.7, 19

	.type	_ZL27benchmark_uniq_6_benchmark_,@object # @_ZL27benchmark_uniq_6_benchmark_
	.local	_ZL27benchmark_uniq_6_benchmark_
	.comm	_ZL27benchmark_uniq_6_benchmark_,8,8
	.type	.L.str.9,@object                # @.str.9
	.p2align	3, 0x0
.L.str.9:
	.asciz	"BM_TRIDIAG_ELIM_RAW"
	.size	.L.str.9, 20

	.type	_ZL27benchmark_uniq_7_benchmark_,@object # @_ZL27benchmark_uniq_7_benchmark_
	.local	_ZL27benchmark_uniq_7_benchmark_
	.comm	_ZL27benchmark_uniq_7_benchmark_,8,8
	.type	.L.str.11,@object               # @.str.11
	.p2align	3, 0x0
.L.str.11:
	.asciz	"BM_EOS_RAW"
	.size	.L.str.11, 11

	.type	_ZL27benchmark_uniq_8_benchmark_,@object # @_ZL27benchmark_uniq_8_benchmark_
	.local	_ZL27benchmark_uniq_8_benchmark_
	.comm	_ZL27benchmark_uniq_8_benchmark_,8,8
	.type	.L.str.13,@object               # @.str.13
	.p2align	3, 0x0
.L.str.13:
	.asciz	"BM_ADI_RAW"
	.size	.L.str.13, 11

	.type	_ZL27benchmark_uniq_9_benchmark_,@object # @_ZL27benchmark_uniq_9_benchmark_
	.local	_ZL27benchmark_uniq_9_benchmark_
	.comm	_ZL27benchmark_uniq_9_benchmark_,8,8
	.type	.L.str.15,@object               # @.str.15
	.p2align	3, 0x0
.L.str.15:
	.asciz	"BM_INT_PREDICT_RAW"
	.size	.L.str.15, 19

	.type	_ZL28benchmark_uniq_10_benchmark_,@object # @_ZL28benchmark_uniq_10_benchmark_
	.local	_ZL28benchmark_uniq_10_benchmark_
	.comm	_ZL28benchmark_uniq_10_benchmark_,8,8
	.type	.L.str.17,@object               # @.str.17
	.p2align	3, 0x0
.L.str.17:
	.asciz	"BM_DIFF_PREDICT_RAW"
	.size	.L.str.17, 20

	.type	_ZL28benchmark_uniq_11_benchmark_,@object # @_ZL28benchmark_uniq_11_benchmark_
	.local	_ZL28benchmark_uniq_11_benchmark_
	.comm	_ZL28benchmark_uniq_11_benchmark_,8,8
	.type	.L.str.19,@object               # @.str.19
	.p2align	3, 0x0
.L.str.19:
	.asciz	"BM_FIRST_SUM_RAW"
	.size	.L.str.19, 17

	.type	_ZL28benchmark_uniq_12_benchmark_,@object # @_ZL28benchmark_uniq_12_benchmark_
	.local	_ZL28benchmark_uniq_12_benchmark_
	.comm	_ZL28benchmark_uniq_12_benchmark_,8,8
	.type	.L.str.21,@object               # @.str.21
	.p2align	3, 0x0
.L.str.21:
	.asciz	"BM_FIRST_DIFF_RAW"
	.size	.L.str.21, 18

	.type	_ZL28benchmark_uniq_13_benchmark_,@object # @_ZL28benchmark_uniq_13_benchmark_
	.local	_ZL28benchmark_uniq_13_benchmark_
	.comm	_ZL28benchmark_uniq_13_benchmark_,8,8
	.type	.L.str.23,@object               # @.str.23
	.p2align	3, 0x0
.L.str.23:
	.asciz	"BM_PIC_2D_RAW"
	.size	.L.str.23, 14

	.type	_ZL28benchmark_uniq_14_benchmark_,@object # @_ZL28benchmark_uniq_14_benchmark_
	.local	_ZL28benchmark_uniq_14_benchmark_
	.comm	_ZL28benchmark_uniq_14_benchmark_,8,8
	.type	.L.str.25,@object               # @.str.25
	.p2align	3, 0x0
.L.str.25:
	.asciz	"BM_PIC_1D_RAW"
	.size	.L.str.25, 14

	.type	_ZL28benchmark_uniq_15_benchmark_,@object # @_ZL28benchmark_uniq_15_benchmark_
	.local	_ZL28benchmark_uniq_15_benchmark_
	.comm	_ZL28benchmark_uniq_15_benchmark_,8,8
	.type	.L.str.27,@object               # @.str.27
	.p2align	3, 0x0
.L.str.27:
	.asciz	"BM_HYDRO_2D_RAW"
	.size	.L.str.27, 16

	.type	_ZL28benchmark_uniq_16_benchmark_,@object # @_ZL28benchmark_uniq_16_benchmark_
	.local	_ZL28benchmark_uniq_16_benchmark_
	.comm	_ZL28benchmark_uniq_16_benchmark_,8,8
	.type	.L.str.29,@object               # @.str.29
	.p2align	3, 0x0
.L.str.29:
	.asciz	"BM_GEN_LIN_RECUR_RAW"
	.size	.L.str.29, 21

	.type	_ZL28benchmark_uniq_17_benchmark_,@object # @_ZL28benchmark_uniq_17_benchmark_
	.local	_ZL28benchmark_uniq_17_benchmark_
	.comm	_ZL28benchmark_uniq_17_benchmark_,8,8
	.type	.L.str.31,@object               # @.str.31
	.p2align	3, 0x0
.L.str.31:
	.asciz	"BM_DISC_ORD_RAW"
	.size	.L.str.31, 16

	.type	_ZL28benchmark_uniq_18_benchmark_,@object # @_ZL28benchmark_uniq_18_benchmark_
	.local	_ZL28benchmark_uniq_18_benchmark_
	.comm	_ZL28benchmark_uniq_18_benchmark_,8,8
	.type	.L.str.33,@object               # @.str.33
	.p2align	3, 0x0
.L.str.33:
	.asciz	"BM_MAT_X_MAT_RAW"
	.size	.L.str.33, 17

	.type	_ZL28benchmark_uniq_19_benchmark_,@object # @_ZL28benchmark_uniq_19_benchmark_
	.local	_ZL28benchmark_uniq_19_benchmark_
	.comm	_ZL28benchmark_uniq_19_benchmark_,8,8
	.type	.L.str.35,@object               # @.str.35
	.p2align	3, 0x0
.L.str.35:
	.asciz	"BM_PLANCKIAN_RAW"
	.size	.L.str.35, 17

	.type	_ZL28benchmark_uniq_20_benchmark_,@object # @_ZL28benchmark_uniq_20_benchmark_
	.local	_ZL28benchmark_uniq_20_benchmark_
	.comm	_ZL28benchmark_uniq_20_benchmark_,8,8
	.type	.L.str.37,@object               # @.str.37
	.p2align	3, 0x0
.L.str.37:
	.asciz	"BM_IMP_HYDRO_2D_RAW"
	.size	.L.str.37, 20

	.type	_ZL28benchmark_uniq_21_benchmark_,@object # @_ZL28benchmark_uniq_21_benchmark_
	.local	_ZL28benchmark_uniq_21_benchmark_
	.comm	_ZL28benchmark_uniq_21_benchmark_,8,8
	.type	.L.str.39,@object               # @.str.39
	.p2align	3, 0x0
.L.str.39:
	.asciz	"BM_FIND_FIRST_MIN_RAW"
	.size	.L.str.39, 22

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_RawSubsetCbenchmarks.cxx
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
	.addrsig_sym _ZL15BM_HYDRO_1D_RAWRN9benchmark5StateE
	.addrsig_sym _ZL11BM_ICCG_RAWRN9benchmark5StateE
	.addrsig_sym _ZL17BM_INNER_PROD_RAWRN9benchmark5StateE
	.addrsig_sym _ZL18BM_BAND_LIN_EQ_RAWRN9benchmark5StateE
	.addrsig_sym _ZL19BM_TRIDIAG_ELIM_RAWRN9benchmark5StateE
	.addrsig_sym _ZL10BM_EOS_RAWRN9benchmark5StateE
	.addrsig_sym _ZL10BM_ADI_RAWRN9benchmark5StateE
	.addrsig_sym _ZL18BM_INT_PREDICT_RAWRN9benchmark5StateE
	.addrsig_sym _ZL19BM_DIFF_PREDICT_RAWRN9benchmark5StateE
	.addrsig_sym _ZL16BM_FIRST_SUM_RAWRN9benchmark5StateE
	.addrsig_sym _ZL17BM_FIRST_DIFF_RAWRN9benchmark5StateE
	.addrsig_sym _ZL13BM_PIC_2D_RAWRN9benchmark5StateE
	.addrsig_sym _ZL13BM_PIC_1D_RAWRN9benchmark5StateE
	.addrsig_sym _ZL15BM_HYDRO_2D_RAWRN9benchmark5StateE
	.addrsig_sym _ZL20BM_GEN_LIN_RECUR_RAWRN9benchmark5StateE
	.addrsig_sym _ZL15BM_DISC_ORD_RAWRN9benchmark5StateE
	.addrsig_sym _ZL16BM_MAT_X_MAT_RAWRN9benchmark5StateE
	.addrsig_sym _ZL16BM_PLANCKIAN_RAWRN9benchmark5StateE
	.addrsig_sym _ZL19BM_IMP_HYDRO_2D_RAWRN9benchmark5StateE
	.addrsig_sym _ZL21BM_FIND_FIRST_MIN_RAWRN9benchmark5StateE
	.addrsig_sym _GLOBAL__sub_I_RawSubsetCbenchmarks.cxx
	.addrsig_sym _Unwind_Resume
