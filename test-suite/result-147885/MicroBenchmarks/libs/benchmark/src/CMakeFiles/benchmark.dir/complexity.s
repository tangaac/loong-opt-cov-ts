	.file	"complexity.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.hidden	_ZN9benchmark12FittingCurveENS_4BigOE # -- Begin function _ZN9benchmark12FittingCurveENS_4BigOE
	.globl	_ZN9benchmark12FittingCurveENS_4BigOE
	.p2align	5
	.type	_ZN9benchmark12FittingCurveENS_4BigOE,@function
_ZN9benchmark12FittingCurveENS_4BigOE:  # @_ZN9benchmark12FittingCurveENS_4BigOE
# %bb.0:
	addi.w	$a0, $a0, -2
	ori	$a1, $zero, 4
	bltu	$a1, $a0, .LBB0_2
# %bb.1:                                # %switch.lookup
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.Lswitch.table._ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEENS_4BigOE)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table._ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEENS_4BigOE)
	ldx.d	$a0, $a1, $a0
	ret
.LBB0_2:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_58__invokeEl)
	addi.d	$a0, $a0, %pc_lo12(_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_58__invokeEl)
	ret
.Lfunc_end0:
	.size	_ZN9benchmark12FittingCurveENS_4BigOE, .Lfunc_end0-_ZN9benchmark12FittingCurveENS_4BigOE
                                        # -- End function
	.hidden	_ZN9benchmark13GetBigOStringB5cxx11ENS_4BigOE # -- Begin function _ZN9benchmark13GetBigOStringB5cxx11ENS_4BigOE
	.globl	_ZN9benchmark13GetBigOStringB5cxx11ENS_4BigOE
	.p2align	5
	.type	_ZN9benchmark13GetBigOStringB5cxx11ENS_4BigOE,@function
_ZN9benchmark13GetBigOStringB5cxx11ENS_4BigOE: # @_ZN9benchmark13GetBigOStringB5cxx11ENS_4BigOE
	.cfi_startproc
# %bb.0:
	addi.d	$a2, $a0, 16
	addi.d	$a1, $a1, -1
	ori	$a3, $zero, 5
	st.d	$a2, $a0, 0
	bltu	$a3, $a1, .LBB1_9
# %bb.1:
	slli.d	$a1, $a1, 2
	pcalau12i	$a3, %pc_hi20(.LJTI1_0)
	addi.d	$a3, $a3, %pc_lo12(.LJTI1_0)
	ldx.w	$a1, $a3, $a1
	add.d	$a1, $a3, $a1
	jr	$a1
.LBB1_2:                                # %._crit_edge.i.i20
	pcalau12i	$a1, %pc_hi20(.L.str.5)
	addi.d	$a1, $a1, %pc_lo12(.L.str.5)
	b	.LBB1_6
.LBB1_3:                                # %._crit_edge.i.i12
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	b	.LBB1_6
.LBB1_4:                                # %._crit_edge.i.i4
	pcalau12i	$a1, %pc_hi20(.L.str.1)
	addi.d	$a1, $a1, %pc_lo12(.L.str.1)
	b	.LBB1_6
.LBB1_5:                                # %._crit_edge.i.i8
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
.LBB1_6:
	ld.b	$a3, $a1, 2
	ld.h	$a1, $a1, 0
	st.b	$a3, $a2, 2
	st.h	$a1, $a2, 0
	ori	$a1, $zero, 19
	ori	$a2, $zero, 3
	st.d	$a2, $a0, 8
	stx.b	$zero, $a0, $a1
	ret
.LBB1_7:                                # %._crit_edge.i.i
	ori	$a1, $zero, 78
	st.b	$a1, $a2, 0
	ori	$a1, $zero, 17
	ori	$a2, $zero, 1
	st.d	$a2, $a0, 8
	stx.b	$zero, $a0, $a1
	ret
.LBB1_8:                                # %._crit_edge.i.i16
	lu12i.w	$a1, 321142
	ori	$a1, $a1, 3150
	b	.LBB1_10
.LBB1_9:                                # %._crit_edge.i.i24
	lu12i.w	$a1, 169186
	ori	$a1, $a1, 2150
.LBB1_10:
	st.w	$a1, $a2, 0
	ori	$a1, $zero, 20
	ori	$a2, $zero, 4
	st.d	$a2, $a0, 8
	stx.b	$zero, $a0, $a1
	ret
.Lfunc_end1:
	.size	_ZN9benchmark13GetBigOStringB5cxx11ENS_4BigOE, .Lfunc_end1-_ZN9benchmark13GetBigOStringB5cxx11ENS_4BigOE
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI1_0:
	.word	.LBB1_2-.LJTI1_0
	.word	.LBB1_7-.LJTI1_0
	.word	.LBB1_4-.LJTI1_0
	.word	.LBB1_5-.LJTI1_0
	.word	.LBB1_3-.LJTI1_0
	.word	.LBB1_8-.LJTI1_0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE
.LCPI2_0:
	.dword	0x7ff8000000000000              # double NaN
	.text
	.hidden	_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE
	.globl	_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE
	.p2align	5
	.type	_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE,@function
_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE: # @_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -96
	.cfi_def_cfa_offset 96
	st.d	$ra, $sp, 88                    # 8-byte Folded Spill
	st.d	$fp, $sp, 80                    # 8-byte Folded Spill
	st.d	$s0, $sp, 72                    # 8-byte Folded Spill
	st.d	$s1, $sp, 64                    # 8-byte Folded Spill
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	st.d	$s3, $sp, 48                    # 8-byte Folded Spill
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 56, -64
	.cfi_offset 57, -72
	.cfi_offset 58, -80
	.cfi_offset 59, -88
	move	$s0, $a1
	ld.d	$a4, $a1, 8
	ld.d	$a1, $a1, 0
	move	$s1, $a3
	move	$s2, $a2
	move	$fp, $a0
	movgr2fr.d	$fs0, $zero
	beq	$a4, $a1, .LBB2_4
# %bb.1:                                # %.lr.ph.preheader
	movgr2fr.d	$fs2, $zero
	move	$s3, $zero
	move	$s4, $zero
	fmov.d	$fs1, $fs2
	fmov.d	$fs3, $fs2
	.p2align	4, , 16
.LBB2_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $a1, $s3
	jirl	$ra, $s1, 0
	ld.d	$a0, $s2, 0
	fldx.d	$fa1, $a0, $s3
	fmadd.d	$fs2, $fa0, $fa0, $fs2
	ld.d	$a4, $s0, 8
	ld.d	$a1, $s0, 0
	fadd.d	$fs1, $fs1, $fa1
	fmadd.d	$fs3, $fa1, $fa0, $fs3
	addi.d	$s4, $s4, 1
	sub.d	$a0, $a4, $a1
	srai.d	$a0, $a0, 3
	addi.d	$s3, $s3, 8
	bltu	$s4, $a0, .LBB2_2
# %bb.3:                                # %._crit_edge.loopexit
	fdiv.d	$fs2, $fs3, $fs2
	b	.LBB2_5
.LBB2_4:
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI2_0)
	move	$a0, $zero
	fmov.d	$fs1, $fs0
.LBB2_5:                                # %._crit_edge
	st.d	$zero, $fp, 8
	ori	$a2, $zero, 8
	st.w	$a2, $fp, 16
	fst.d	$fs2, $fp, 0
	beq	$a4, $a1, .LBB2_8
# %bb.6:                                # %.lr.ph47.preheader
	move	$s3, $zero
	move	$s4, $zero
	movgr2fr.d	$fs0, $zero
	.p2align	4, , 16
.LBB2_7:                                # %.lr.ph47
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $a1, $s3
	jirl	$ra, $s1, 0
	ld.d	$a0, $s2, 0
	fldx.d	$fa1, $a0, $s3
	fmul.d	$fa0, $fs2, $fa0
	fsub.d	$fa0, $fa1, $fa0
	ld.d	$a0, $s0, 8
	ld.d	$a1, $s0, 0
	fmul.d	$fa0, $fa0, $fa0
	fadd.d	$fs0, $fs0, $fa0
	addi.d	$s4, $s4, 1
	sub.d	$a0, $a0, $a1
	srai.d	$a0, $a0, 3
	addi.d	$s3, $s3, 8
	bltu	$s4, $a0, .LBB2_7
.LBB2_8:                                # %._crit_edge48
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa2, $fa0
	fdiv.d	$fa1, $fs0, $fa2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	fdiv.d	$fs0, $fs1, $fa2
	bceqz	$fcc0, .LBB2_10
.LBB2_9:                                # %._crit_edge48.split
	fdiv.d	$fa0, $fa0, $fs0
	fst.d	$fa0, $fp, 8
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 80                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 88                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 96
	ret
.LBB2_10:                               # %call.sqrt
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB2_9
.Lfunc_end2:
	.size	_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE, .Lfunc_end2-_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEENS_4BigOE
.LCPI3_0:
	.dword	0x7ff8000000000000              # double NaN
	.text
	.hidden	_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEENS_4BigOE
	.globl	_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEENS_4BigOE
	.p2align	5
	.type	_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEENS_4BigOE,@function
_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEENS_4BigOE: # @_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEENS_4BigOE
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
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
	pcalau12i	$fp, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	ld.b	$a4, $fp, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	move	$s2, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s5, $a0
	dbar	20
	beqz	$a4, .LBB3_46
.LBB3_1:                                # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
	ld.b	$a0, $fp, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	dbar	20
	beqz	$a0, .LBB3_48
.LBB3_2:                                # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit20
	ld.b	$a0, $fp, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	dbar	20
	beqz	$a0, .LBB3_50
.LBB3_3:                                # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit22
	st.w	$zero, $s5, 16
	vrepli.b	$vr0, 0
	addi.d	$a0, $s2, -2
	ori	$a1, $zero, 5
	vst	$vr0, $s5, 0
	bltu	$a1, $a0, .LBB3_19
# %bb.4:                                # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit22
	slli.d	$a0, $a0, 2
	pcalau12i	$a1, %pc_hi20(.LJTI3_0)
	addi.d	$a1, $a1, %pc_lo12(.LJTI3_0)
	ldx.w	$a0, $a1, $a0
	pcalau12i	$a2, %pc_hi20(_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_08__invokeEl)
	add.d	$a0, $a1, $a0
	addi.d	$s3, $a2, %pc_lo12(_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_08__invokeEl)
	jr	$a0
.LBB3_5:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_18__invokeEl)
	addi.d	$s3, $a0, %pc_lo12(_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_18__invokeEl)
	ld.d	$a2, $s1, 8
	ld.d	$a0, $s1, 0
	movgr2fr.d	$fs0, $zero
	bne	$a2, $a0, .LBB3_10
	b	.LBB3_20
.LBB3_6:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_48__invokeEl)
	addi.d	$s3, $a0, %pc_lo12(_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_48__invokeEl)
	ld.d	$a2, $s1, 8
	ld.d	$a0, $s1, 0
	movgr2fr.d	$fs0, $zero
	bne	$a2, $a0, .LBB3_10
	b	.LBB3_20
.LBB3_7:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_28__invokeEl)
	addi.d	$s3, $a0, %pc_lo12(_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_28__invokeEl)
	ld.d	$a2, $s1, 8
	ld.d	$a0, $s1, 0
	movgr2fr.d	$fs0, $zero
	bne	$a2, $a0, .LBB3_10
	b	.LBB3_20
.LBB3_8:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_38__invokeEl)
	addi.d	$s3, $a0, %pc_lo12(_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_38__invokeEl)
.LBB3_9:                                # %_ZN9benchmark12FittingCurveENS_4BigOE.exit48
	ld.d	$a2, $s1, 8
	ld.d	$a0, $s1, 0
	movgr2fr.d	$fs0, $zero
	beq	$a2, $a0, .LBB3_20
.LBB3_10:                               # %.lr.ph.i50.preheader
	movgr2fr.d	$fs2, $zero
	move	$fp, $zero
	move	$s4, $zero
	fmov.d	$fs1, $fs2
	fmov.d	$fs3, $fs2
	.p2align	4, , 16
.LBB3_11:                               # %.lr.ph.i50
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $a0, $fp
	jirl	$ra, $s3, 0
	ld.d	$a0, $s0, 0
	fldx.d	$fa1, $a0, $fp
	fmadd.d	$fs2, $fa0, $fa0, $fs2
	ld.d	$a2, $s1, 8
	ld.d	$a0, $s1, 0
	fadd.d	$fs1, $fs1, $fa1
	fmadd.d	$fs3, $fa1, $fa0, $fs3
	addi.d	$s4, $s4, 1
	sub.d	$a1, $a2, $a0
	srai.d	$a1, $a1, 3
	addi.d	$fp, $fp, 8
	bltu	$s4, $a1, .LBB3_11
# %bb.12:                               # %._crit_edge.loopexit.i55
	fdiv.d	$fs2, $fs3, $fs2
	bne	$a2, $a0, .LBB3_21
	b	.LBB3_23
.LBB3_13:
	st.d	$s5, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 20
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.Lconstinit)
	addi.d	$a1, $a1, %pc_lo12(.Lconstinit)
	vld	$vr0, $a1, 0
	ld.w	$a3, $a1, 16
	ld.d	$a1, $s1, 8
	ld.d	$a2, $s1, 0
	move	$s2, $a0
	vst	$vr0, $a0, 0
	st.w	$a3, $a0, 16
	pcalau12i	$s5, %pc_hi20(.LCPI3_0)
	beq	$a1, $a2, .LBB3_26
# %bb.14:                               # %.lr.ph.i.preheader
	sub.d	$a0, $a1, $a2
	ld.d	$a1, $s0, 0
	srli.d	$a2, $a0, 3
	movgr2fr.d	$fa0, $zero
	vldi	$vr1, -912
	fmov.d	$fa2, $fa0
	fmov.d	$fa3, $fa0
	.p2align	4, , 16
.LBB3_15:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa4, $a1, 0
	fadd.d	$fa0, $fa0, $fa1
	fadd.d	$fa2, $fa2, $fa4
	fadd.d	$fa3, $fa3, $fa4
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB3_15
# %bb.16:                               # %.lr.ph47.i.preheader
	ld.d	$a1, $s0, 0
	fdiv.d	$fs0, $fa3, $fa0
	srli.d	$a0, $a0, 3
	movgr2fr.d	$fa0, $zero
	move	$a2, $a0
	.p2align	4, , 16
.LBB3_17:                               # %.lr.ph47.i
                                        # =>This Inner Loop Header: Depth=1
	fld.d	$fa1, $a1, 0
	fsub.d	$fa1, $fa1, $fs0
	fmul.d	$fa1, $fa1, $fa1
	fadd.d	$fa0, $fa0, $fa1
	addi.d	$a2, $a2, -1
	addi.d	$a1, $a1, 8
	bnez	$a2, .LBB3_17
# %bb.18:                               # %.loopexit84.loopexit
	movgr2fr.d	$fa1, $a0
	ffint.d.l	$fa3, $fa1
	b	.LBB3_27
.LBB3_19:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_58__invokeEl)
	addi.d	$s3, $a0, %pc_lo12(_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_58__invokeEl)
	ld.d	$a2, $s1, 8
	ld.d	$a0, $s1, 0
	movgr2fr.d	$fs0, $zero
	bne	$a2, $a0, .LBB3_10
.LBB3_20:
	pcalau12i	$a1, %pc_hi20(.LCPI3_0)
	fld.d	$fs2, $a1, %pc_lo12(.LCPI3_0)
	move	$a1, $zero
	fmov.d	$fs1, $fs0
	beq	$a2, $a0, .LBB3_23
.LBB3_21:                               # %.lr.ph47.i60.preheader
	move	$fp, $zero
	move	$s4, $zero
	movgr2fr.d	$fs0, $zero
	.p2align	4, , 16
.LBB3_22:                               # %.lr.ph47.i60
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a0, $a0, $fp
	jirl	$ra, $s3, 0
	ld.d	$a0, $s0, 0
	fldx.d	$fa1, $a0, $fp
	fmul.d	$fa0, $fs2, $fa0
	fsub.d	$fa0, $fa1, $fa0
	ld.d	$a1, $s1, 8
	ld.d	$a0, $s1, 0
	fmul.d	$fa0, $fa0, $fa0
	fadd.d	$fs0, $fs0, $fa0
	addi.d	$s4, $s4, 1
	sub.d	$a1, $a1, $a0
	srai.d	$a1, $a1, 3
	addi.d	$fp, $fp, 8
	bltu	$s4, $a1, .LBB3_22
.LBB3_23:                               # %_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit66
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa2, $fa0
	fdiv.d	$fa1, $fs0, $fa2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	fdiv.d	$fs0, $fs1, $fa2
	bceqz	$fcc0, .LBB3_52
.LBB3_24:                               # %_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit66.split
	fdiv.d	$fa0, $fa0, $fs0
	fst.d	$fs2, $s5, 0
	fst.d	$fa0, $s5, 8
	st.w	$s2, $s5, 16
.LBB3_25:                               # %_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEEPFdlE.exit66.split
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
	ret
.LBB3_26:
	fld.d	$fs0, $s5, %pc_lo12(.LCPI3_0)
	movgr2fr.d	$fa2, $zero
	fmov.d	$fa0, $fa2
	fmov.d	$fa3, $fa2
.LBB3_27:                               # %.loopexit84
	fdiv.d	$fa1, $fa0, $fa3
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	fdiv.d	$fs1, $fa2, $fa3
	bceqz	$fcc0, .LBB3_53
.LBB3_28:                               # %.loopexit84.split
	move	$s4, $zero
	fdiv.d	$fs1, $fa0, $fs1
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_58__invokeEl)
	addi.d	$fp, $a0, %pc_lo12(_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_58__invokeEl)
	pcalau12i	$a0, %pc_hi20(.Lswitch.table._ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEENS_4BigOE)
	fld.d	$fs2, $s5, %pc_lo12(.LCPI3_0)
	addi.d	$s7, $a0, %pc_lo12(.Lswitch.table._ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEENS_4BigOE)
	movgr2fr.d	$fs3, $zero
	ori	$s8, $zero, 20
	b	.LBB3_30
	.p2align	4, , 16
.LBB3_29:                               #   in Loop: Header=BB3_30 Depth=1
	addi.d	$s4, $s4, 4
	beq	$s4, $s8, .LBB3_45
.LBB3_30:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_34 Depth 2
                                        #     Child Loop BB3_39 Depth 2
	ldx.w	$a0, $s2, $s4
	addi.w	$a0, $a0, -2
	move	$s5, $fp
	ori	$a1, $zero, 4
	bltu	$a1, $a0, .LBB3_32
# %bb.31:                               # %switch.lookup
                                        #   in Loop: Header=BB3_30 Depth=1
	slli.d	$a0, $a0, 3
	ldx.d	$s5, $s7, $a0
.LBB3_32:                               # %_ZN9benchmark12FittingCurveENS_4BigOE.exit
                                        #   in Loop: Header=BB3_30 Depth=1
	ld.d	$a2, $s1, 8
	ld.d	$a0, $s1, 0
	beq	$a2, $a0, .LBB3_37
# %bb.33:                               # %.lr.ph.i26.preheader
                                        #   in Loop: Header=BB3_30 Depth=1
	move	$s6, $zero
	move	$s3, $zero
	fmov.d	$fs5, $fs3
	fmov.d	$fs4, $fs3
	fmov.d	$fs6, $fs3
	.p2align	4, , 16
.LBB3_34:                               # %.lr.ph.i26
                                        #   Parent Loop BB3_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a0, $a0, $s6
.Ltmp0:
	jirl	$ra, $s5, 0
.Ltmp1:
# %bb.35:                               # %.noexc
                                        #   in Loop: Header=BB3_34 Depth=2
	ld.d	$a0, $s0, 0
	fldx.d	$fa1, $a0, $s6
	fmadd.d	$fs5, $fa0, $fa0, $fs5
	ld.d	$a2, $s1, 8
	ld.d	$a0, $s1, 0
	fadd.d	$fs4, $fs4, $fa1
	fmadd.d	$fs6, $fa1, $fa0, $fs6
	addi.d	$s3, $s3, 1
	sub.d	$a1, $a2, $a0
	srai.d	$a1, $a1, 3
	addi.d	$s6, $s6, 8
	bltu	$s3, $a1, .LBB3_34
# %bb.36:                               # %._crit_edge.loopexit.i31
                                        #   in Loop: Header=BB3_30 Depth=1
	fdiv.d	$fs5, $fs6, $fs5
	fmov.d	$fs6, $fs3
	bne	$a2, $a0, .LBB3_38
	b	.LBB3_41
	.p2align	4, , 16
.LBB3_37:                               #   in Loop: Header=BB3_30 Depth=1
	move	$a1, $zero
	fmov.d	$fs4, $fs3
	fmov.d	$fs5, $fs2
	fmov.d	$fs6, $fs3
	beq	$a2, $a0, .LBB3_41
.LBB3_38:                               # %.lr.ph47.i36.preheader
                                        #   in Loop: Header=BB3_30 Depth=1
	move	$s3, $zero
	move	$s6, $zero
	fmov.d	$fs6, $fs3
	.p2align	4, , 16
.LBB3_39:                               # %.lr.ph47.i36
                                        #   Parent Loop BB3_30 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ldx.d	$a0, $a0, $s3
.Ltmp3:
	jirl	$ra, $s5, 0
.Ltmp4:
# %bb.40:                               # %.noexc42
                                        #   in Loop: Header=BB3_39 Depth=2
	ld.d	$a0, $s0, 0
	fldx.d	$fa1, $a0, $s3
	fmul.d	$fa0, $fs5, $fa0
	fsub.d	$fa0, $fa1, $fa0
	ld.d	$a1, $s1, 8
	ld.d	$a0, $s1, 0
	fmul.d	$fa0, $fa0, $fa0
	fadd.d	$fs6, $fs6, $fa0
	addi.d	$s6, $s6, 1
	sub.d	$a1, $a1, $a0
	srai.d	$a1, $a1, 3
	addi.d	$s3, $s3, 8
	bltu	$s6, $a1, .LBB3_39
.LBB3_41:                               # %.loopexit
                                        #   in Loop: Header=BB3_30 Depth=1
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fs7, $fa0
	fdiv.d	$fa1, $fs6, $fs7
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB3_44
# %bb.42:                               # %.loopexit.split
                                        #   in Loop: Header=BB3_30 Depth=1
	fdiv.d	$fa1, $fs4, $fs7
	fdiv.d	$fa0, $fa0, $fa1
	fcmp.cule.d	$fcc0, $fs1, $fa0
	bcnez	$fcc0, .LBB3_29
.LBB3_43:                               #   in Loop: Header=BB3_30 Depth=1
	ldx.w	$a0, $s2, $s4
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	fmov.d	$fs0, $fs5
	fmov.d	$fs1, $fa0
	b	.LBB3_29
.LBB3_44:                               # %call.sqrt299
                                        #   in Loop: Header=BB3_30 Depth=1
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fdiv.d	$fa1, $fs4, $fs7
	fdiv.d	$fa0, $fa0, $fa1
	fcmp.cule.d	$fcc0, $fs1, $fa0
	bcnez	$fcc0, .LBB3_29
	b	.LBB3_43
.LBB3_45:                               # %_ZNSt6vectorIN9benchmark4BigOESaIS1_EED2Ev.exit
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	fst.d	$fs1, $a0, 8
	fst.d	$fs0, $a0, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$a1, $a0, 16
	ori	$a1, $zero, 20
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB3_25
.LBB3_46:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB3_1
# %bb.47:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB3_1
.LBB3_48:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB3_2
# %bb.49:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB3_2
.LBB3_50:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB3_3
# %bb.51:
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$zero, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB3_3
.LBB3_52:                               # %call.sqrt300
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB3_24
.LBB3_53:                               # %call.sqrt
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB3_28
.LBB3_54:                               # %_ZNSt6vectorIN9benchmark4BigOESaIS1_EED2Ev.exit46.loopexit
.Ltmp5:
	b	.LBB3_56
.LBB3_55:                               # %_ZNSt6vectorIN9benchmark4BigOESaIS1_EED2Ev.exit46.loopexit.split-lp
.Ltmp2:
.LBB3_56:                               # %_ZNSt6vectorIN9benchmark4BigOESaIS1_EED2Ev.exit46
	move	$s0, $a0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	fst.d	$fs1, $a0, 8
	fst.d	$fs0, $a0, 0
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$a1, $a0, 16
	ori	$a1, $zero, 20
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEENS_4BigOE, .Lfunc_end3-_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEENS_4BigOE
	.cfi_endproc
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.LJTI3_0:
	.word	.LBB3_9-.LJTI3_0
	.word	.LBB3_5-.LJTI3_0
	.word	.LBB3_7-.LJTI3_0
	.word	.LBB3_8-.LJTI3_0
	.word	.LBB3_6-.LJTI3_0
	.word	.LBB3_13-.LJTI3_0
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
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Lfunc_end3-.Ltmp4             #   Call between .Ltmp4 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN9benchmark11ComputeBigOERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE
.LCPI4_0:
	.dword	0x7ff8000000000000              # double NaN
	.text
	.hidden	_ZN9benchmark11ComputeBigOERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE
	.globl	_ZN9benchmark11ComputeBigOERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE
	.p2align	5
	.type	_ZN9benchmark11ComputeBigOERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE,@function
_ZN9benchmark11ComputeBigOERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE: # @_ZN9benchmark11ComputeBigOERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -1648
	.cfi_def_cfa_offset 1648
	st.d	$ra, $sp, 1640                  # 8-byte Folded Spill
	st.d	$fp, $sp, 1632                  # 8-byte Folded Spill
	st.d	$s0, $sp, 1624                  # 8-byte Folded Spill
	st.d	$s1, $sp, 1616                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1608                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1600                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1592                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1584                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1576                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1568                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1560                  # 8-byte Folded Spill
	fst.d	$fs0, $sp, 1552                 # 8-byte Folded Spill
	fst.d	$fs1, $sp, 1544                 # 8-byte Folded Spill
	fst.d	$fs2, $sp, 1536                 # 8-byte Folded Spill
	fst.d	$fs3, $sp, 1528                 # 8-byte Folded Spill
	fst.d	$fs4, $sp, 1520                 # 8-byte Folded Spill
	fst.d	$fs5, $sp, 1512                 # 8-byte Folded Spill
	fst.d	$fs6, $sp, 1504                 # 8-byte Folded Spill
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
	move	$s5, $a1
	ld.d	$fp, $a1, 8
	ld.d	$s7, $a1, 0
	move	$s6, $a0
	st.d	$zero, $a0, 16
	vrepli.b	$vr0, 0
	sub.d	$a0, $fp, $s7
	ori	$a1, $zero, 1120
	vst	$vr0, $s6, 0
	bltu	$a0, $a1, .LBB4_117
# %bb.1:
	st.d	$zero, $sp, 1496
	vst	$vr0, $sp, 1480
	st.d	$zero, $sp, 1472
	vst	$vr0, $sp, 1456
	st.d	$zero, $sp, 1448
	vst	$vr0, $sp, 1432
	st.d	$s6, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	beq	$s7, $fp, .LBB4_52
# %bb.2:
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -8
	lu52i.d	$s5, $a0, 2047
	addi.w	$a0, $zero, -1
	lu52i.d	$s0, $a0, 255
	b	.LBB4_4
	.p2align	4, , 16
.LBB4_3:                                #   in Loop: Header=BB4_4 Depth=1
	fst.d	$fs0, $a0, 0
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 1440
	addi.d	$s7, $s7, 560
	beq	$s7, $fp, .LBB4_35
.LBB4_4:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	ld.b	$a0, $a0, 0
	dbar	20
	beqz	$a0, .LBB4_33
.LBB4_5:                                # %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	beqz	$a0, .LBB4_7
# %bb.6:                                #   in Loop: Header=BB4_4 Depth=1
.Ltmp6:
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	ori	$a2, $zero, 38
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp7:
.LBB4_7:                                # %_ZN9benchmark8internallsIA39_cEERNS0_7LogTypeES4_RKT_.exit
                                        #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $sp, 1488
	ld.d	$a2, $sp, 1496
	beq	$a0, $a2, .LBB4_9
# %bb.8:                                #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a1, $s7, 472
	st.d	$a1, $a0, 0
	addi.d	$s8, $a0, 8
	st.d	$s8, $sp, 1488
	b	.LBB4_16
	.p2align	4, , 16
.LBB4_9:                                #   in Loop: Header=BB4_4 Depth=1
	ld.d	$s3, $sp, 1480
	sub.d	$s2, $a0, $s3
	beq	$s2, $s5, .LBB4_120
# %bb.10:                               # %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
                                        #   in Loop: Header=BB4_4 Depth=1
	srai.d	$a0, $s2, 3
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 3
.Ltmp8:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp9:
# %bb.11:                               # %.noexc58
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$s4, $a0
	ld.d	$a0, $s7, 472
	stx.d	$a0, $s4, $s2
	blez	$s2, .LBB4_13
# %bb.12:                               #   in Loop: Header=BB4_4 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_13:                               # %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i.i
                                        #   in Loop: Header=BB4_4 Depth=1
	beqz	$s3, .LBB4_15
# %bb.14:                               # %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i.i.i
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_15:                               # %_ZNSt6vectorIlSaIlEE17_M_realloc_appendIJRKlEEEvDpOT_.exit.i
                                        #   in Loop: Header=BB4_4 Depth=1
	add.d	$a0, $s4, $s2
	addi.d	$s8, $a0, 8
	st.d	$s4, $sp, 1480
	st.d	$s8, $sp, 1488
	alsl.d	$a2, $s1, $s4, 3
	st.d	$a2, $sp, 1496
.LBB4_16:                               # %_ZNSt6vectorIlSaIlEE9push_backERKl.exit
                                        #   in Loop: Header=BB4_4 Depth=1
	fld.d	$fa1, $s7, 432
	ld.d	$a1, $s7, 392
	ld.d	$a0, $sp, 1464
	ld.d	$s6, $sp, 1472
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
	fdiv.d	$fs0, $fa1, $fa0
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	beq	$a0, $s6, .LBB4_18
# %bb.17:                               #   in Loop: Header=BB4_4 Depth=1
	fst.d	$fs0, $a0, 0
	addi.d	$a0, $a0, 8
	st.d	$a0, $sp, 1464
	b	.LBB4_25
	.p2align	4, , 16
.LBB4_18:                               #   in Loop: Header=BB4_4 Depth=1
	ld.d	$s3, $sp, 1456
	sub.d	$s2, $a0, $s3
	beq	$s2, $s5, .LBB4_122
# %bb.19:                               # %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
                                        #   in Loop: Header=BB4_4 Depth=1
	srai.d	$a0, $s2, 3
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 3
.Ltmp11:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp12:
# %bb.20:                               # %.noexc60
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$s4, $a0
	fstx.d	$fs0, $a0, $s2
	blez	$s2, .LBB4_22
# %bb.21:                               #   in Loop: Header=BB4_4 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_22:                               # %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i.i.i
                                        #   in Loop: Header=BB4_4 Depth=1
	beqz	$s3, .LBB4_24
# %bb.23:                               # %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i.i.i.i
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_24:                               # %_ZNSt6vectorIdSaIdEE17_M_realloc_appendIJdEEEvDpOT_.exit.i.i
                                        #   in Loop: Header=BB4_4 Depth=1
	add.d	$a0, $s4, $s2
	addi.d	$a0, $a0, 8
	st.d	$s4, $sp, 1456
	ld.d	$a1, $s7, 392
	st.d	$a0, $sp, 1464
	alsl.d	$s6, $s1, $s4, 3
	st.d	$s6, $sp, 1472
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
.LBB4_25:                               # %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
                                        #   in Loop: Header=BB4_4 Depth=1
	fld.d	$fa1, $s7, 440
	ld.d	$a0, $sp, 1440
	ld.d	$s3, $sp, 1448
	fdiv.d	$fs0, $fa1, $fa0
	bne	$a0, $s3, .LBB4_3
# %bb.26:                               #   in Loop: Header=BB4_4 Depth=1
	ld.d	$s3, $sp, 1432
	sub.d	$s2, $a0, $s3
	beq	$s2, $s5, .LBB4_118
# %bb.27:                               # %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i62
                                        #   in Loop: Header=BB4_4 Depth=1
	srai.d	$a0, $s2, 3
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s0
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s0, $a1
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 3
.Ltmp14:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp15:
# %bb.28:                               # %.noexc69
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$s4, $a0
	fstx.d	$fs0, $a0, $s2
	blez	$s2, .LBB4_30
# %bb.29:                               #   in Loop: Header=BB4_4 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_30:                               # %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit.i.i.i64
                                        #   in Loop: Header=BB4_4 Depth=1
	beqz	$s3, .LBB4_32
# %bb.31:                               # %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit.i.i.i.i66
                                        #   in Loop: Header=BB4_4 Depth=1
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_32:                               # %_ZNSt6vectorIdSaIdEE17_M_realloc_appendIJdEEEvDpOT_.exit.i.i67
                                        #   in Loop: Header=BB4_4 Depth=1
	add.d	$a0, $s4, $s2
	addi.d	$a0, $a0, 8
	st.d	$s4, $sp, 1432
	st.d	$a0, $sp, 1440
	alsl.d	$s3, $s1, $s4, 3
	st.d	$s3, $sp, 1448
	addi.d	$s7, $s7, 560
	bne	$s7, $fp, .LBB4_4
	b	.LBB4_35
.LBB4_33:                               #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB4_5
# %bb.34:                               #   in Loop: Header=BB4_4 Depth=1
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$zero, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB4_5
.LBB4_35:                               # %._crit_edge.loopexit
	st.d	$s6, $sp, 40                    # 8-byte Folded Spill
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s7, $s5, 0
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a3, $s7, 460
	ori	$a0, $zero, 8
	bne	$a3, $a0, .LBB4_53
.LBB4_36:
	ld.d	$fp, $sp, 1480
	sub.d	$a0, $s8, $fp
	pcalau12i	$s1, %pc_hi20(.LCPI4_0)
	srli.d	$s0, $a0, 3
	beq	$s8, $fp, .LBB4_61
# %bb.37:                               # %.lr.ph.i.preheader
	ld.d	$s2, $s7, 464
	ld.d	$s4, $sp, 1432
	ori	$a0, $zero, 1
	sltu	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	movgr2fr.d	$fs0, $zero
	or	$s5, $a1, $a0
	move	$s6, $fp
	fmov.d	$fs2, $fs0
	fmov.d	$fs1, $fs0
	.p2align	4, , 16
.LBB4_38:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
.Ltmp35:
	jirl	$ra, $s2, 0
.Ltmp36:
# %bb.39:                               # %.noexc72
                                        #   in Loop: Header=BB4_38 Depth=1
	fld.d	$fa1, $s4, 0
	fmadd.d	$fs0, $fa0, $fa0, $fs0
	fadd.d	$fs2, $fs2, $fa1
	fmadd.d	$fs1, $fa1, $fa0, $fs1
	addi.d	$s5, $s5, -1
	addi.d	$s4, $s4, 8
	addi.d	$s6, $s6, 8
	bnez	$s5, .LBB4_38
# %bb.40:                               # %._crit_edge.i
	fdiv.d	$fs1, $fs1, $fs0
	ld.d	$s4, $sp, 1432
	ori	$a0, $zero, 1
	sltu	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s5, $a1, $a0
	movgr2fr.d	$fs0, $zero
	move	$s6, $fp
	.p2align	4, , 16
.LBB4_41:                               # %.lr.ph47.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 0
.Ltmp38:
	jirl	$ra, $s2, 0
.Ltmp39:
# %bb.42:                               # %.noexc73
                                        #   in Loop: Header=BB4_41 Depth=1
	fld.d	$fa1, $s4, 0
	fmul.d	$fa0, $fs1, $fa0
	fsub.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa0, $fa0
	fadd.d	$fs0, $fs0, $fa0
	addi.d	$s5, $s5, -1
	addi.d	$s4, $s4, 8
	addi.d	$s6, $s6, 8
	bnez	$s5, .LBB4_41
# %bb.43:                               # %.loopexit172.loopexit
	movgr2fr.d	$fa0, $s0
	ffint.d.l	$fs4, $fa0
	ld.d	$s6, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 16                    # 8-byte Folded Reload
	fdiv.d	$fa0, $fs0, $fs4
	fsqrt.d	$fs0, $fa0
	fcmp.cor.d	$fcc0, $fs0, $fs0
	bceqz	$fcc0, .LBB4_62
.LBB4_44:                               # %.loopexit172.split
	beq	$s8, $fp, .LBB4_63
.LBB4_45:                               # %.lr.ph.i75.preheader
	move	$s7, $s5
	ld.d	$a0, $s5, 0
	ld.d	$s1, $a0, 464
	ld.d	$s2, $sp, 1456
	ori	$a0, $zero, 1
	sltu	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	movgr2fr.d	$fs3, $zero
	or	$s4, $a1, $a0
	move	$s5, $fp
	fmov.d	$fs5, $fs3
	fmov.d	$fs6, $fs3
	.p2align	4, , 16
.LBB4_46:                               # %.lr.ph.i75
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s5, 0
.Ltmp41:
	jirl	$ra, $s1, 0
.Ltmp42:
# %bb.47:                               # %.noexc91
                                        #   in Loop: Header=BB4_46 Depth=1
	fld.d	$fa1, $s2, 0
	fmadd.d	$fs3, $fa0, $fa0, $fs3
	fadd.d	$fs5, $fs5, $fa1
	fmadd.d	$fs6, $fa1, $fa0, $fs6
	addi.d	$s4, $s4, -1
	addi.d	$s2, $s2, 8
	addi.d	$s5, $s5, 8
	bnez	$s4, .LBB4_46
# %bb.48:                               # %._crit_edge.i81
	fdiv.d	$fs3, $fs6, $fs3
	ld.d	$s2, $sp, 1456
	ori	$a0, $zero, 1
	sltu	$a1, $a0, $s0
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s0, $a1
	or	$s4, $a1, $a0
	movgr2fr.d	$fs6, $zero
	move	$s5, $s7
	.p2align	4, , 16
.LBB4_49:                               # %.lr.ph47.i85
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
.Ltmp44:
	jirl	$ra, $s1, 0
.Ltmp45:
# %bb.50:                               # %.noexc92
                                        #   in Loop: Header=BB4_49 Depth=1
	fld.d	$fa1, $s2, 0
	fmul.d	$fa0, $fs3, $fa0
	fsub.d	$fa0, $fa1, $fa0
	fmul.d	$fa0, $fa0, $fa0
	fadd.d	$fs6, $fs6, $fa0
	addi.d	$s4, $s4, -1
	addi.d	$s2, $s2, 8
	addi.d	$fp, $fp, 8
	bnez	$s4, .LBB4_49
# %bb.51:                               # %.loopexit166.loopexit
	movgr2fr.d	$fa0, $s0
	ffint.d.l	$fa2, $fa0
	b	.LBB4_64
.LBB4_52:
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	move	$s3, $zero
	move	$s8, $zero
	ld.w	$a3, $s7, 460
	ori	$a0, $zero, 8
	beq	$a3, $a0, .LBB4_36
.LBB4_53:
	ld.bu	$fp, $s7, 456
	beqz	$fp, .LBB4_56
# %bb.54:
.Ltmp26:
	addi.d	$a0, $sp, 616
	addi.d	$a1, $sp, 1480
	addi.d	$a2, $sp, 1456
	pcaddu18i	$ra, %call36(_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEENS_4BigOE)
	jirl	$ra, $ra, 0
.Ltmp27:
# %bb.55:
	fld.d	$fs3, $sp, 616
	fld.d	$fs0, $sp, 624
	ld.w	$a3, $sp, 632
	b	.LBB4_57
.LBB4_56:
	movgr2fr.d	$fs0, $zero
	fmov.d	$fs3, $fs0
.LBB4_57:
.Ltmp29:
	addi.d	$a0, $sp, 616
	addi.d	$a1, $sp, 1480
	addi.d	$a2, $sp, 1432
	pcaddu18i	$ra, %call36(_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEENS_4BigOE)
	jirl	$ra, $ra, 0
.Ltmp30:
# %bb.58:
	fld.d	$fs1, $sp, 616
	fld.d	$fs2, $sp, 624
	ld.w	$s1, $sp, 632
	bnez	$fp, .LBB4_66
# %bb.59:
.Ltmp32:
	addi.d	$a0, $sp, 616
	addi.d	$a1, $sp, 1480
	addi.d	$a2, $sp, 1456
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEENS_4BigOE)
	jirl	$ra, $ra, 0
.Ltmp33:
# %bb.60:
	fld.d	$fs3, $sp, 616
	fld.d	$fs0, $sp, 624
	b	.LBB4_66
.LBB4_61:
	fld.d	$fs1, $s1, %pc_lo12(.LCPI4_0)
	movgr2fr.d	$fs2, $zero
	fmov.d	$fs0, $fs2
	fmov.d	$fs4, $fs2
	fdiv.d	$fa0, $fs0, $fs4
	fsqrt.d	$fs0, $fa0
	fcmp.cor.d	$fcc0, $fs0, $fs0
	bcnez	$fcc0, .LBB4_44
.LBB4_62:                               # %call.sqrt
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	fmov.d	$fs0, $fa0
	bne	$s8, $fp, .LBB4_45
.LBB4_63:
	fld.d	$fs3, $s1, %pc_lo12(.LCPI4_0)
	movgr2fr.d	$fs5, $zero
	fmov.d	$fs6, $fs5
	fmov.d	$fa2, $fs5
.LBB4_64:                               # %.loopexit166
	fdiv.d	$fs2, $fs2, $fs4
	fdiv.d	$fa1, $fs6, $fa2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	fdiv.d	$fs4, $fs5, $fa2
	bceqz	$fcc0, .LBB4_124
.LBB4_65:                               # %.loopexit166.split
	fdiv.d	$fs2, $fs0, $fs2
	fdiv.d	$fs0, $fa0, $fs4
	ori	$s1, $zero, 8
.LBB4_66:
	ld.d	$a1, $s5, 0
.Ltmp47:
	addi.d	$a0, $sp, 1176
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameC2ERKS0_)
	jirl	$ra, $ra, 0
.Ltmp48:
# %bb.67:
	ld.d	$a0, $sp, 1208
	st.d	$zero, $sp, 1216
	st.b	$zero, $a0, 0
.Ltmp50:
	addi.d	$a0, $sp, 616
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporter3RunC2Ev)
	jirl	$ra, $ra, 0
.Ltmp51:
# %bb.68:
.Ltmp53:
	addi.d	$a0, $sp, 616
	addi.d	$a1, $sp, 1176
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp54:
# %bb.69:                               # %.noexc94
	addi.d	$s0, $sp, 1208
	addi.d	$a0, $sp, 648
.Ltmp55:
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp56:
# %bb.70:                               # %.noexc95
	addi.d	$a0, $sp, 680
	addi.d	$a1, $sp, 1240
.Ltmp57:
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp58:
# %bb.71:                               # %.noexc96
	addi.d	$a0, $sp, 712
	addi.d	$a1, $sp, 1272
.Ltmp59:
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp60:
# %bb.72:                               # %.noexc97
	addi.d	$a0, $sp, 744
	addi.d	$a1, $sp, 1304
.Ltmp61:
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp62:
# %bb.73:                               # %.noexc98
	addi.d	$a0, $sp, 776
	addi.d	$s4, $sp, 1336
.Ltmp63:
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp64:
# %bb.74:                               # %.noexc99
	addi.d	$a0, $sp, 808
	addi.d	$s7, $sp, 1368
.Ltmp65:
	move	$a1, $s7
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp66:
# %bb.75:                               # %.noexc100
	addi.d	$a0, $sp, 840
	addi.d	$s8, $sp, 1400
.Ltmp67:
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp68:
# %bb.76:                               # %_ZN9benchmark13BenchmarkNameaSERKS0_.exit
	ld.d	$a0, $s5, 0
	vld	$vr0, $a0, 256
	ld.d	$a1, $a0, 416
	vst	$vr0, $sp, 872
	st.d	$a1, $sp, 1032
	addi.w	$fp, $zero, -1
	st.d	$fp, $sp, 1024
	ld.d	$a0, $a0, 400
	ori	$a1, $zero, 1
	ld.d	$a2, $sp, 904
	st.w	$a1, $sp, 888
	st.d	$a0, $sp, 1016
	addi.d	$a0, $sp, 896
.Ltmp69:
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a3, $a1, %pc_lo12(.L.str.8)
	ori	$a4, $zero, 4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp70:
# %bb.77:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
	ld.d	$a0, $s5, 0
	st.w	$zero, $sp, 928
	addi.d	$a1, $a0, 320
	addi.d	$s2, $sp, 936
.Ltmp71:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp72:
# %bb.78:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
	fst.d	$fs3, $sp, 1048
	fst.d	$fs1, $sp, 1056
	ld.d	$a0, $s5, 0
	ori	$a1, $zero, 1
	st.b	$a1, $sp, 1104
	st.w	$s1, $sp, 1076
	ld.wu	$a0, $a0, 424
	slli.d	$a0, $a0, 3
	pcalau12i	$a1, %pc_hi20(.Lswitch.table._ZN9benchmark11ComputeBigOERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table._ZN9benchmark11ComputeBigOERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE)
	fldx.d	$fs1, $a1, $a0
	st.d	$zero, $sp, 1008
.Ltmp74:
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporter3RunC2Ev)
	jirl	$ra, $ra, 0
.Ltmp75:
# %bb.79:
.Ltmp77:
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 1176
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp78:
# %bb.80:                               # %.noexc104
	addi.d	$a0, $sp, 88
.Ltmp79:
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp80:
# %bb.81:                               # %.noexc105
	addi.d	$a0, $sp, 120
.Ltmp81:
	addi.d	$a1, $sp, 1240
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp82:
# %bb.82:                               # %.noexc106
	addi.d	$a0, $sp, 152
.Ltmp83:
	addi.d	$a1, $sp, 1272
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp84:
# %bb.83:                               # %.noexc107
	addi.d	$a0, $sp, 184
.Ltmp85:
	addi.d	$a1, $sp, 1304
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp86:
# %bb.84:                               # %.noexc108
	addi.d	$a0, $sp, 216
.Ltmp87:
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp88:
# %bb.85:                               # %.noexc109
	addi.d	$a0, $sp, 248
.Ltmp89:
	move	$a1, $s7
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp90:
# %bb.86:                               # %.noexc110
	addi.d	$a0, $sp, 280
.Ltmp91:
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp92:
# %bb.87:                               # %_ZN9benchmark13BenchmarkNameaSERKS0_.exit112
	ld.d	$a0, $s5, 0
	vld	$vr0, $a0, 256
	vst	$vr0, $sp, 312
	ld.d	$a2, $sp, 344
	ori	$s0, $zero, 1
	st.w	$s0, $sp, 328
	addi.d	$a0, $sp, 336
.Ltmp93:
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a3, $a1, %pc_lo12(.L.str.9)
	ori	$a4, $zero, 3
	move	$a1, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp94:
# %bb.88:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit114
	st.w	$s0, $sp, 368
	addi.d	$a0, $sp, 376
.Ltmp95:
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
.Ltmp96:
# %bb.89:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit116
	ld.d	$a0, $s5, 0
	ld.d	$a1, $a0, 416
	st.d	$fp, $sp, 464
	st.d	$a1, $sp, 472
	ld.d	$a1, $a0, 400
	fdiv.d	$fa0, $fs0, $fs1
	fst.d	$fa0, $sp, 488
	fdiv.d	$fa0, $fs2, $fs1
	fst.d	$fa0, $sp, 496
	ori	$a2, $zero, 1
	st.b	$a2, $sp, 545
	st.w	$s1, $sp, 516
	ld.w	$a2, $a0, 424
	ld.d	$a0, $s6, 8
	ld.d	$a3, $s6, 16
	st.d	$a1, $sp, 456
	st.d	$zero, $sp, 448
	st.w	$a2, $sp, 480
	beq	$a0, $a3, .LBB4_94
# %bb.90:
.Ltmp97:
	addi.d	$a1, $sp, 616
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_)
	jirl	$ra, $ra, 0
.Ltmp98:
# %bb.91:                               # %.noexc118
	ld.d	$a0, $s6, 8
	addi.d	$a0, $a0, 560
	st.d	$a0, $s6, 8
	ld.d	$a1, $s6, 16
	beq	$a0, $a1, .LBB4_96
.LBB4_92:
.Ltmp101:
	addi.d	$a1, $sp, 56
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_)
	jirl	$ra, $ra, 0
.Ltmp102:
# %bb.93:                               # %.noexc121
	ld.d	$a0, $s6, 8
	addi.d	$a0, $a0, 560
	st.d	$a0, $s6, 8
	b	.LBB4_97
.LBB4_94:
.Ltmp99:
	addi.d	$a1, $sp, 616
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp100:
# %bb.95:                               # %._ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE9push_backERKS2_.exit_crit_edge
	ld.d	$a0, $s6, 8
	ld.d	$a1, $s6, 16
	bne	$a0, $a1, .LBB4_92
.LBB4_96:
.Ltmp103:
	addi.d	$a1, $sp, 56
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_)
	jirl	$ra, $ra, 0
.Ltmp104:
.LBB4_97:                               # %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE9push_backERKS2_.exit123
	ld.d	$a1, $sp, 568
	addi.d	$a0, $sp, 552
.Ltmp106:
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp107:
# %bb.98:                               # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i
	ld.d	$a0, $sp, 416
	addi.d	$a1, $sp, 432
	beq	$a0, $a1, .LBB4_100
# %bb.99:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	ld.d	$a1, $sp, 432
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_100:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB4_102
# %bb.101:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
	ld.d	$a1, $sp, 392
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_102:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
	ld.d	$a0, $sp, 336
	addi.d	$a1, $sp, 352
	beq	$a0, $a1, .LBB4_104
# %bb.103:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
	ld.d	$a1, $sp, 352
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_104:                              # %_ZN9benchmark17BenchmarkReporter3RunD2Ev.exit
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 1128
	addi.d	$a0, $sp, 1112
.Ltmp109:
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp110:
# %bb.105:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i124
	ld.d	$a0, $sp, 976
	addi.d	$a1, $sp, 992
	beq	$a0, $a1, .LBB4_107
# %bb.106:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i125
	ld.d	$a1, $sp, 992
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_107:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i126
	ld.d	$a0, $sp, 936
	addi.d	$a1, $sp, 952
	beq	$a0, $a1, .LBB4_109
# %bb.108:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i127
	ld.d	$a1, $sp, 952
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_109:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i128
	ld.d	$a0, $sp, 896
	addi.d	$a1, $sp, 912
	beq	$a0, $a1, .LBB4_111
# %bb.110:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i129
	ld.d	$a1, $sp, 912
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_111:                              # %_ZN9benchmark17BenchmarkReporter3RunD2Ev.exit133
	addi.d	$a0, $sp, 616
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1176
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1432
	beqz	$a0, .LBB4_113
# %bb.112:
	sub.d	$a1, $s3, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_113:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit
	ld.d	$a0, $sp, 1456
	beqz	$a0, .LBB4_115
# %bb.114:
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_115:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit136
	ld.d	$a0, $sp, 1480
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	beqz	$a0, .LBB4_117
# %bb.116:
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_117:
	fld.d	$fs6, $sp, 1504                 # 8-byte Folded Reload
	fld.d	$fs5, $sp, 1512                 # 8-byte Folded Reload
	fld.d	$fs4, $sp, 1520                 # 8-byte Folded Reload
	fld.d	$fs3, $sp, 1528                 # 8-byte Folded Reload
	fld.d	$fs2, $sp, 1536                 # 8-byte Folded Reload
	fld.d	$fs1, $sp, 1544                 # 8-byte Folded Reload
	fld.d	$fs0, $sp, 1552                 # 8-byte Folded Reload
	ld.d	$s8, $sp, 1560                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1568                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1576                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1584                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1592                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1600                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1608                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 1616                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 1624                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 1632                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 1640                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 1648
	ret
.LBB4_118:
.Ltmp17:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp18:
# %bb.119:                              # %.noexc68
.LBB4_120:
.Ltmp23:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp24:
# %bb.121:                              # %.noexc57
.LBB4_122:
.Ltmp20:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp21:
# %bb.123:                              # %.noexc59
.LBB4_124:                              # %call.sqrt328
	fmov.d	$fa0, $fa1
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	b	.LBB4_65
.LBB4_125:
.Ltmp34:
	b	.LBB4_147
.LBB4_126:
.Ltmp28:
	b	.LBB4_147
.LBB4_127:
.Ltmp31:
	b	.LBB4_147
.LBB4_128:
.Ltmp111:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB4_129:
.Ltmp108:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB4_130:
.Ltmp76:
	move	$s0, $a0
	b	.LBB4_144
.LBB4_131:
.Ltmp52:
	move	$s0, $a0
	b	.LBB4_145
.LBB4_132:
.Ltmp49:
	b	.LBB4_147
.LBB4_133:                              # %.loopexit183
.Ltmp16:
	b	.LBB4_147
.LBB4_134:                              # %.loopexit.split-lp179
.Ltmp22:
	b	.LBB4_147
.LBB4_135:                              # %.loopexit.split-lp174
.Ltmp25:
	b	.LBB4_147
.LBB4_136:                              # %.loopexit.split-lp184
.Ltmp19:
	b	.LBB4_147
.LBB4_137:                              # %.loopexit178
.Ltmp13:
	b	.LBB4_147
.LBB4_138:                              # %.loopexit
.Ltmp46:
	b	.LBB4_147
.LBB4_139:                              # %.loopexit.split-lp
.Ltmp43:
	b	.LBB4_147
.LBB4_140:                              # %.loopexit167
.Ltmp40:
	b	.LBB4_147
.LBB4_141:
.Ltmp73:
	move	$s0, $a0
	b	.LBB4_144
.LBB4_142:                              # %.loopexit.split-lp168
.Ltmp37:
	b	.LBB4_147
.LBB4_143:
.Ltmp105:
	move	$s0, $a0
	addi.d	$a0, $sp, 56
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporter3RunD2Ev)
	jirl	$ra, $ra, 0
.LBB4_144:
	addi.d	$a0, $sp, 616
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporter3RunD2Ev)
	jirl	$ra, $ra, 0
.LBB4_145:
	addi.d	$a0, $sp, 1176
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB4_148
.LBB4_146:                              # %.loopexit173
.Ltmp10:
.LBB4_147:
	move	$s0, $a0
.LBB4_148:
	ld.d	$a0, $sp, 1432
	bnez	$a0, .LBB4_152
# %bb.149:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit139
	ld.d	$a0, $sp, 1456
	bnez	$a0, .LBB4_153
.LBB4_150:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit141
	ld.d	$a0, $sp, 1480
	bnez	$a0, .LBB4_154
.LBB4_151:                              # %_ZNSt6vectorIlSaIlEED2Ev.exit143
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB4_152:
	ld.d	$a1, $sp, 1448
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1456
	beqz	$a0, .LBB4_150
.LBB4_153:
	ld.d	$a1, $sp, 1472
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1480
	beqz	$a0, .LBB4_151
.LBB4_154:
	ld.d	$a1, $sp, 1496
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN9benchmark11ComputeBigOERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE, .Lfunc_end4-_ZN9benchmark11ComputeBigOERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp6-.Lfunc_begin1           # >> Call Site 1 <<
	.uleb128 .Ltmp9-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin1          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp11-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin1          #     jumps to .Ltmp13
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp14-.Ltmp12                #   Call between .Ltmp12 and .Ltmp14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp15-.Ltmp14                #   Call between .Ltmp14 and .Ltmp15
	.uleb128 .Ltmp16-.Lfunc_begin1          #     jumps to .Ltmp16
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp35-.Ltmp15                #   Call between .Ltmp15 and .Ltmp35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp36-.Ltmp35                #   Call between .Ltmp35 and .Ltmp36
	.uleb128 .Ltmp37-.Lfunc_begin1          #     jumps to .Ltmp37
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp39-.Ltmp38                #   Call between .Ltmp38 and .Ltmp39
	.uleb128 .Ltmp40-.Lfunc_begin1          #     jumps to .Ltmp40
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp42-.Ltmp41                #   Call between .Ltmp41 and .Ltmp42
	.uleb128 .Ltmp43-.Lfunc_begin1          #     jumps to .Ltmp43
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp44-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp45-.Ltmp44                #   Call between .Ltmp44 and .Ltmp45
	.uleb128 .Ltmp46-.Lfunc_begin1          #     jumps to .Ltmp46
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Ltmp27-.Ltmp26                #   Call between .Ltmp26 and .Ltmp27
	.uleb128 .Ltmp28-.Lfunc_begin1          #     jumps to .Ltmp28
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin1          # >> Call Site 12 <<
	.uleb128 .Ltmp30-.Ltmp29                #   Call between .Ltmp29 and .Ltmp30
	.uleb128 .Ltmp31-.Lfunc_begin1          #     jumps to .Ltmp31
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin1          # >> Call Site 13 <<
	.uleb128 .Ltmp33-.Ltmp32                #   Call between .Ltmp32 and .Ltmp33
	.uleb128 .Ltmp34-.Lfunc_begin1          #     jumps to .Ltmp34
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin1          # >> Call Site 14 <<
	.uleb128 .Ltmp47-.Ltmp33                #   Call between .Ltmp33 and .Ltmp47
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin1          # >> Call Site 15 <<
	.uleb128 .Ltmp48-.Ltmp47                #   Call between .Ltmp47 and .Ltmp48
	.uleb128 .Ltmp49-.Lfunc_begin1          #     jumps to .Ltmp49
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin1          # >> Call Site 16 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin1          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin1          # >> Call Site 17 <<
	.uleb128 .Ltmp72-.Ltmp53                #   Call between .Ltmp53 and .Ltmp72
	.uleb128 .Ltmp73-.Lfunc_begin1          #     jumps to .Ltmp73
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin1          # >> Call Site 18 <<
	.uleb128 .Ltmp75-.Ltmp74                #   Call between .Ltmp74 and .Ltmp75
	.uleb128 .Ltmp76-.Lfunc_begin1          #     jumps to .Ltmp76
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin1          # >> Call Site 19 <<
	.uleb128 .Ltmp104-.Ltmp77               #   Call between .Ltmp77 and .Ltmp104
	.uleb128 .Ltmp105-.Lfunc_begin1         #     jumps to .Ltmp105
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin1         # >> Call Site 20 <<
	.uleb128 .Ltmp107-.Ltmp106              #   Call between .Ltmp106 and .Ltmp107
	.uleb128 .Ltmp108-.Lfunc_begin1         #     jumps to .Ltmp108
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp107-.Lfunc_begin1         # >> Call Site 21 <<
	.uleb128 .Ltmp109-.Ltmp107              #   Call between .Ltmp107 and .Ltmp109
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin1         # >> Call Site 22 <<
	.uleb128 .Ltmp110-.Ltmp109              #   Call between .Ltmp109 and .Ltmp110
	.uleb128 .Ltmp111-.Lfunc_begin1         #     jumps to .Ltmp111
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp110-.Lfunc_begin1         # >> Call Site 23 <<
	.uleb128 .Ltmp17-.Ltmp110               #   Call between .Ltmp110 and .Ltmp17
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin1          # >> Call Site 24 <<
	.uleb128 .Ltmp18-.Ltmp17                #   Call between .Ltmp17 and .Ltmp18
	.uleb128 .Ltmp19-.Lfunc_begin1          #     jumps to .Ltmp19
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin1          # >> Call Site 25 <<
	.uleb128 .Ltmp24-.Ltmp23                #   Call between .Ltmp23 and .Ltmp24
	.uleb128 .Ltmp25-.Lfunc_begin1          #     jumps to .Ltmp25
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp20-.Lfunc_begin1          # >> Call Site 26 <<
	.uleb128 .Ltmp21-.Ltmp20                #   Call between .Ltmp20 and .Ltmp21
	.uleb128 .Ltmp22-.Lfunc_begin1          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin1          # >> Call Site 27 <<
	.uleb128 .Lfunc_end4-.Ltmp21            #   Call between .Ltmp21 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9benchmark13BenchmarkNameC2ERKS0_,"axG",@progbits,_ZN9benchmark13BenchmarkNameC2ERKS0_,comdat
	.hidden	_ZN9benchmark13BenchmarkNameC2ERKS0_ # -- Begin function _ZN9benchmark13BenchmarkNameC2ERKS0_
	.weak	_ZN9benchmark13BenchmarkNameC2ERKS0_
	.p2align	5
	.type	_ZN9benchmark13BenchmarkNameC2ERKS0_,@function
_ZN9benchmark13BenchmarkNameC2ERKS0_:   # @_ZN9benchmark13BenchmarkNameC2ERKS0_
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
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
	move	$s1, $a1
	move	$fp, $a0
	addi.d	$a0, $a0, 16
	st.d	$a0, $fp, 0
	ld.d	$a1, $a1, 8
	ld.d	$s0, $s1, 0
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 64
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	bltu	$a1, $a2, .LBB5_2
# %bb.1:                                # %.noexc.i
	addi.d	$a1, $sp, 64
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 16
.LBB5_2:                                # %._crit_edge.i.i
	addi.w	$s7, $zero, -1
	beq	$a1, $s7, .LBB5_6
# %bb.3:                                # %._crit_edge.i.i
	bnez	$a1, .LBB5_5
# %bb.4:
	ld.b	$a1, $s0, 0
	st.b	$a1, $a0, 0
	b	.LBB5_6
.LBB5_5:
	addi.d	$a2, $a1, 1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_6:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
	ld.d	$a0, $sp, 64
	st.d	$a0, $fp, 8
	addi.d	$s0, $fp, 48
	st.d	$s0, $fp, 32
	ld.d	$a1, $s1, 40
	ld.d	$s2, $s1, 32
	addi.d	$s5, $fp, 32
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 64
	move	$a0, $s0
	bltu	$a1, $a2, .LBB5_9
# %bb.7:                                # %.noexc.i23
.Ltmp112:
	addi.d	$a1, $sp, 64
	move	$a0, $s5
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp113:
# %bb.8:                                # %.noexc
	ld.d	$a1, $sp, 64
	st.d	$a0, $s5, 0
	st.d	$a1, $s0, 0
.LBB5_9:                                # %._crit_edge.i.i22
	beq	$a1, $s7, .LBB5_13
# %bb.10:                               # %._crit_edge.i.i22
	bnez	$a1, .LBB5_12
# %bb.11:
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB5_13
.LBB5_12:
	addi.d	$a2, $a1, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_13:
	ld.d	$a0, $sp, 64
	st.d	$a0, $fp, 40
	addi.d	$s2, $fp, 80
	st.d	$s2, $fp, 64
	ld.d	$a1, $s1, 72
	ld.d	$s3, $s1, 64
	addi.d	$s6, $fp, 64
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 64
	move	$a0, $s2
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	bltu	$a1, $a2, .LBB5_16
# %bb.14:                               # %.noexc.i26
.Ltmp115:
	addi.d	$a1, $sp, 64
	move	$a0, $s6
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp116:
# %bb.15:                               # %.noexc27
	ld.d	$a1, $sp, 64
	st.d	$a0, $s6, 0
	st.d	$a1, $s2, 0
.LBB5_16:                               # %._crit_edge.i.i25
	beq	$a1, $s7, .LBB5_20
# %bb.17:                               # %._crit_edge.i.i25
	bnez	$a1, .LBB5_19
# %bb.18:
	ld.b	$a1, $s3, 0
	st.b	$a1, $a0, 0
	b	.LBB5_20
.LBB5_19:
	addi.d	$a2, $a1, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_20:
	ld.d	$a0, $sp, 64
	st.d	$a0, $fp, 72
	addi.d	$s3, $fp, 112
	st.d	$s3, $fp, 96
	ld.d	$a1, $s1, 104
	ld.d	$s4, $s1, 96
	addi.d	$a0, $fp, 96
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 64
	move	$a0, $s3
	st.d	$s2, $sp, 32                    # 8-byte Folded Spill
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	bltu	$a1, $a2, .LBB5_23
# %bb.21:                               # %.noexc.i30
.Ltmp118:
	addi.d	$a1, $sp, 64
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	move	$a0, $s8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp119:
# %bb.22:                               # %.noexc31
	ld.d	$a1, $sp, 64
	st.d	$a0, $s8, 0
	st.d	$a1, $s3, 0
.LBB5_23:                               # %._crit_edge.i.i29
	beq	$a1, $s7, .LBB5_27
# %bb.24:                               # %._crit_edge.i.i29
	bnez	$a1, .LBB5_26
# %bb.25:
	ld.b	$a1, $s4, 0
	st.b	$a1, $a0, 0
	b	.LBB5_27
.LBB5_26:
	addi.d	$a2, $a1, 1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_27:
	ld.d	$a0, $sp, 64
	st.d	$a0, $fp, 104
	addi.d	$s0, $fp, 144
	st.d	$s0, $fp, 128
	ld.d	$a1, $s1, 136
	ld.d	$s5, $s1, 128
	addi.d	$s4, $fp, 128
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 64
	move	$a0, $s0
	st.d	$s3, $sp, 8                     # 8-byte Folded Spill
	bltu	$a1, $a2, .LBB5_30
# %bb.28:                               # %.noexc.i34
.Ltmp121:
	addi.d	$a1, $sp, 64
	move	$a0, $s4
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp122:
# %bb.29:                               # %.noexc35
	ld.d	$a1, $sp, 64
	st.d	$a0, $s4, 0
	st.d	$a1, $s0, 0
.LBB5_30:                               # %._crit_edge.i.i33
	beq	$a1, $s7, .LBB5_34
# %bb.31:                               # %._crit_edge.i.i33
	bnez	$a1, .LBB5_33
# %bb.32:
	ld.b	$a1, $s5, 0
	st.b	$a1, $a0, 0
	b	.LBB5_34
.LBB5_33:
	addi.d	$a2, $a1, 1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_34:
	st.d	$s4, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a0, $sp, 64
	st.d	$a0, $fp, 136
	addi.d	$s4, $fp, 176
	st.d	$s4, $fp, 160
	ld.d	$a1, $s1, 168
	ld.d	$s6, $s1, 160
	addi.d	$s5, $fp, 160
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 64
	move	$a0, $s4
	bltu	$a1, $a2, .LBB5_37
# %bb.35:                               # %.noexc.i38
.Ltmp124:
	addi.d	$a1, $sp, 64
	move	$a0, $s5
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp125:
# %bb.36:                               # %.noexc39
	ld.d	$a1, $sp, 64
	st.d	$a0, $s5, 0
	st.d	$a1, $s4, 0
.LBB5_37:                               # %._crit_edge.i.i37
	beq	$a1, $s7, .LBB5_41
# %bb.38:                               # %._crit_edge.i.i37
	bnez	$a1, .LBB5_40
# %bb.39:
	ld.b	$a1, $s6, 0
	st.b	$a1, $a0, 0
	b	.LBB5_41
.LBB5_40:
	addi.d	$a2, $a1, 1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_41:
	move	$s3, $s7
	ld.d	$a0, $sp, 64
	st.d	$a0, $fp, 168
	addi.d	$s2, $fp, 208
	st.d	$s2, $fp, 192
	ld.d	$a1, $s1, 200
	ld.d	$s7, $s1, 192
	addi.d	$s6, $fp, 192
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 64
	move	$a0, $s2
	bltu	$a1, $a2, .LBB5_44
# %bb.42:                               # %.noexc.i42
.Ltmp127:
	addi.d	$a1, $sp, 64
	move	$a0, $s6
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp128:
# %bb.43:                               # %.noexc43
	ld.d	$a1, $sp, 64
	st.d	$a0, $s6, 0
	st.d	$a1, $s2, 0
.LBB5_44:                               # %._crit_edge.i.i41
	beq	$a1, $s3, .LBB5_48
# %bb.45:                               # %._crit_edge.i.i41
	bnez	$a1, .LBB5_47
# %bb.46:
	ld.b	$a1, $s7, 0
	st.b	$a1, $a0, 0
	b	.LBB5_48
.LBB5_47:
	addi.d	$a2, $a1, 1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_48:
	ld.d	$a0, $sp, 64
	st.d	$a0, $fp, 200
	addi.d	$s7, $fp, 240
	st.d	$s7, $fp, 224
	ld.d	$a1, $s1, 232
	ld.d	$s1, $s1, 224
	ori	$a0, $zero, 16
	st.d	$a1, $sp, 64
	bltu	$a1, $a0, .LBB5_51
# %bb.49:                               # %.noexc.i46
.Ltmp130:
	addi.d	$s8, $fp, 224
	addi.d	$a1, $sp, 64
	move	$a0, $s8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp131:
# %bb.50:                               # %.noexc47
	ld.d	$a1, $sp, 64
	st.d	$a0, $s8, 0
	st.d	$a1, $s7, 0
	move	$s7, $a0
.LBB5_51:                               # %._crit_edge.i.i45
	beq	$a1, $s3, .LBB5_55
# %bb.52:                               # %._crit_edge.i.i45
	bnez	$a1, .LBB5_54
# %bb.53:
	ld.b	$a0, $s1, 0
	st.b	$a0, $s7, 0
	b	.LBB5_55
.LBB5_54:
	addi.d	$a2, $a1, 1
	move	$a0, $s7
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_55:
	ld.d	$a0, $sp, 64
	st.d	$a0, $fp, 232
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
	ret
.LBB5_56:
.Ltmp132:
	ld.d	$a2, $s6, 0
	move	$s1, $a0
	bne	$a2, $s2, .LBB5_64
# %bb.57:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $s5, 0
	bne	$a0, $s4, .LBB5_66
.LBB5_58:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	bne	$a0, $s0, .LBB5_68
.LBB5_59:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	bne	$a0, $a1, .LBB5_70
.LBB5_60:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB5_72
.LBB5_61:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB5_74
.LBB5_62:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB5_76
.LBB5_63:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_64:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $s2, 0
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	beq	$a0, $s4, .LBB5_58
	b	.LBB5_66
.LBB5_65:
.Ltmp129:
	move	$s1, $a0
	ld.d	$a0, $s5, 0
	beq	$a0, $s4, .LBB5_58
.LBB5_66:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
	ld.d	$a1, $s4, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	beq	$a0, $s0, .LBB5_59
	b	.LBB5_68
.LBB5_67:
.Ltmp126:
	move	$s1, $a0
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	beq	$a0, $s0, .LBB5_59
.LBB5_68:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
	ld.d	$a1, $s0, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	beq	$a0, $a1, .LBB5_60
	b	.LBB5_70
.LBB5_69:
.Ltmp123:
	move	$s1, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	beq	$a0, $a1, .LBB5_60
.LBB5_70:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB5_61
	b	.LBB5_72
.LBB5_71:
.Ltmp120:
	move	$s1, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB5_61
.LBB5_72:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB5_62
	b	.LBB5_74
.LBB5_73:
.Ltmp117:
	move	$s1, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB5_62
.LBB5_74:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB5_63
	b	.LBB5_76
.LBB5_75:
.Ltmp114:
	move	$s1, $a0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB5_63
.LBB5_76:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN9benchmark13BenchmarkNameC2ERKS0_, .Lfunc_end5-_ZN9benchmark13BenchmarkNameC2ERKS0_
	.cfi_endproc
	.section	.gcc_except_table._ZN9benchmark13BenchmarkNameC2ERKS0_,"aG",@progbits,_ZN9benchmark13BenchmarkNameC2ERKS0_,comdat
	.p2align	2, 0x0
GCC_except_table5:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp112-.Lfunc_begin2         #   Call between .Lfunc_begin2 and .Ltmp112
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin2         # >> Call Site 2 <<
	.uleb128 .Ltmp113-.Ltmp112              #   Call between .Ltmp112 and .Ltmp113
	.uleb128 .Ltmp114-.Lfunc_begin2         #     jumps to .Ltmp114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin2         # >> Call Site 3 <<
	.uleb128 .Ltmp115-.Ltmp113              #   Call between .Ltmp113 and .Ltmp115
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin2         # >> Call Site 4 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin2         #     jumps to .Ltmp117
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin2         # >> Call Site 5 <<
	.uleb128 .Ltmp118-.Ltmp116              #   Call between .Ltmp116 and .Ltmp118
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin2         # >> Call Site 6 <<
	.uleb128 .Ltmp119-.Ltmp118              #   Call between .Ltmp118 and .Ltmp119
	.uleb128 .Ltmp120-.Lfunc_begin2         #     jumps to .Ltmp120
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp119-.Lfunc_begin2         # >> Call Site 7 <<
	.uleb128 .Ltmp121-.Ltmp119              #   Call between .Ltmp119 and .Ltmp121
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin2         # >> Call Site 8 <<
	.uleb128 .Ltmp122-.Ltmp121              #   Call between .Ltmp121 and .Ltmp122
	.uleb128 .Ltmp123-.Lfunc_begin2         #     jumps to .Ltmp123
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp122-.Lfunc_begin2         # >> Call Site 9 <<
	.uleb128 .Ltmp124-.Ltmp122              #   Call between .Ltmp122 and .Ltmp124
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin2         # >> Call Site 10 <<
	.uleb128 .Ltmp125-.Ltmp124              #   Call between .Ltmp124 and .Ltmp125
	.uleb128 .Ltmp126-.Lfunc_begin2         #     jumps to .Ltmp126
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp125-.Lfunc_begin2         # >> Call Site 11 <<
	.uleb128 .Ltmp127-.Ltmp125              #   Call between .Ltmp125 and .Ltmp127
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin2         # >> Call Site 12 <<
	.uleb128 .Ltmp128-.Ltmp127              #   Call between .Ltmp127 and .Ltmp128
	.uleb128 .Ltmp129-.Lfunc_begin2         #     jumps to .Ltmp129
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp128-.Lfunc_begin2         # >> Call Site 13 <<
	.uleb128 .Ltmp130-.Ltmp128              #   Call between .Ltmp128 and .Ltmp130
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin2         # >> Call Site 14 <<
	.uleb128 .Ltmp131-.Ltmp130              #   Call between .Ltmp130 and .Ltmp131
	.uleb128 .Ltmp132-.Lfunc_begin2         #     jumps to .Ltmp132
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin2         # >> Call Site 15 <<
	.uleb128 .Lfunc_end5-.Ltmp131           #   Call between .Ltmp131 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9benchmark17BenchmarkReporter3RunC2Ev,"axG",@progbits,_ZN9benchmark17BenchmarkReporter3RunC2Ev,comdat
	.hidden	_ZN9benchmark17BenchmarkReporter3RunC2Ev # -- Begin function _ZN9benchmark17BenchmarkReporter3RunC2Ev
	.weak	_ZN9benchmark17BenchmarkReporter3RunC2Ev
	.p2align	5
	.type	_ZN9benchmark17BenchmarkReporter3RunC2Ev,@function
_ZN9benchmark17BenchmarkReporter3RunC2Ev: # @_ZN9benchmark17BenchmarkReporter3RunC2Ev
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
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
	addi.d	$a0, $a0, 16
	st.d	$a0, $fp, 0
	st.d	$zero, $fp, 8
	st.b	$zero, $fp, 16
	addi.d	$a0, $fp, 48
	st.d	$a0, $fp, 32
	st.d	$zero, $fp, 40
	st.b	$zero, $fp, 48
	addi.d	$a0, $fp, 80
	st.d	$a0, $fp, 64
	st.d	$zero, $fp, 72
	st.b	$zero, $fp, 80
	addi.d	$a0, $fp, 112
	st.d	$a0, $fp, 96
	st.d	$zero, $fp, 104
	st.b	$zero, $fp, 112
	addi.d	$a0, $fp, 144
	st.d	$a0, $fp, 128
	st.d	$zero, $fp, 136
	st.b	$zero, $fp, 144
	addi.d	$a0, $fp, 176
	st.d	$a0, $fp, 160
	st.d	$zero, $fp, 168
	st.b	$zero, $fp, 176
	addi.d	$a0, $fp, 208
	st.d	$a0, $fp, 192
	st.d	$zero, $fp, 200
	st.b	$zero, $fp, 208
	addi.d	$a0, $fp, 240
	st.d	$a0, $fp, 224
	st.d	$zero, $fp, 232
	st.b	$zero, $fp, 240
	st.w	$zero, $fp, 272
	addi.d	$s1, $fp, 296
	st.d	$s1, $fp, 280
	st.d	$zero, $fp, 288
	st.b	$zero, $fp, 296
	st.w	$zero, $fp, 312
	addi.d	$s2, $fp, 336
	st.d	$s2, $fp, 320
	st.d	$zero, $fp, 328
	st.b	$zero, $fp, 336
	st.w	$zero, $fp, 352
	addi.d	$s3, $fp, 376
	st.d	$s3, $fp, 360
	st.d	$zero, $fp, 368
	st.b	$zero, $fp, 376
	vrepli.d	$vr0, 1
	vst	$vr0, $fp, 392
.Ltmp133:
	pcaddu18i	$ra, %call36(_ZN9benchmark18GetDefaultTimeUnitEv)
	jirl	$ra, $ra, 0
.Ltmp134:
# %bb.1:
	st.w	$a0, $fp, 424
	st.h	$zero, $fp, 488
	addi.d	$a0, $fp, 504
	st.w	$zero, $fp, 504
	st.d	$zero, $fp, 512
	st.d	$zero, $fp, 432
	vrepli.b	$vr0, 0
	vst	$vr0, $fp, 440
	st.b	$zero, $fp, 456
	vst	$vr0, $fp, 460
	st.w	$zero, $fp, 476
	st.d	$a0, $fp, 520
	st.d	$a0, $fp, 528
	st.d	$zero, $fp, 536
	vst	$vr0, $fp, 544
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB6_2:
.Ltmp135:
	ld.d	$a2, $fp, 360
	move	$s0, $a0
	bne	$a2, $s3, .LBB6_6
# %bb.3:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $fp, 320
	bne	$a0, $s2, .LBB6_7
.LBB6_4:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4
	ld.d	$a0, $fp, 280
	bne	$a0, $s1, .LBB6_8
.LBB6_5:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB6_6:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $s3, 0
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 320
	beq	$a0, $s2, .LBB6_4
.LBB6_7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
	ld.d	$a1, $s2, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 280
	beq	$a0, $s1, .LBB6_5
.LBB6_8:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
	ld.d	$a1, $s1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN9benchmark17BenchmarkReporter3RunC2Ev, .Lfunc_end6-_ZN9benchmark17BenchmarkReporter3RunC2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN9benchmark17BenchmarkReporter3RunC2Ev,"aG",@progbits,_ZN9benchmark17BenchmarkReporter3RunC2Ev,comdat
	.p2align	2, 0x0
GCC_except_table6:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp133-.Lfunc_begin3         # >> Call Site 1 <<
	.uleb128 .Ltmp134-.Ltmp133              #   Call between .Ltmp133 and .Ltmp134
	.uleb128 .Ltmp135-.Lfunc_begin3         #     jumps to .Ltmp135
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp134-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Lfunc_end6-.Ltmp134           #   Call between .Ltmp134 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9benchmark17BenchmarkReporter3RunD2Ev,"axG",@progbits,_ZN9benchmark17BenchmarkReporter3RunD2Ev,comdat
	.hidden	_ZN9benchmark17BenchmarkReporter3RunD2Ev # -- Begin function _ZN9benchmark17BenchmarkReporter3RunD2Ev
	.weak	_ZN9benchmark17BenchmarkReporter3RunD2Ev
	.p2align	5
	.type	_ZN9benchmark17BenchmarkReporter3RunD2Ev,@function
_ZN9benchmark17BenchmarkReporter3RunD2Ev: # @_ZN9benchmark17BenchmarkReporter3RunD2Ev
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a1, $a0, 512
	addi.d	$a0, $a0, 496
.Ltmp136:
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp137:
# %bb.1:                                # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
	ld.d	$a0, $fp, 360
	addi.d	$a1, $fp, 376
	beq	$a0, $a1, .LBB7_3
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_3:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $fp, 320
	addi.d	$a1, $fp, 336
	beq	$a0, $a1, .LBB7_5
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_5:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
	ld.d	$a0, $fp, 280
	addi.d	$a1, $fp, 296
	beq	$a0, $a1, .LBB7_7
# %bb.6:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_7:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jr	$t8
.LBB7_8:
.Ltmp138:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZN9benchmark17BenchmarkReporter3RunD2Ev, .Lfunc_end7-_ZN9benchmark17BenchmarkReporter3RunD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN9benchmark17BenchmarkReporter3RunD2Ev,"aG",@progbits,_ZN9benchmark17BenchmarkReporter3RunD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table7:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp136-.Lfunc_begin4         # >> Call Site 1 <<
	.uleb128 .Ltmp137-.Ltmp136              #   Call between .Ltmp136 and .Ltmp137
	.uleb128 .Ltmp138-.Lfunc_begin4         #     jumps to .Ltmp138
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp137-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Lfunc_end7-.Ltmp137           #   Call between .Ltmp137 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9benchmark13BenchmarkNameD2Ev,"axG",@progbits,_ZN9benchmark13BenchmarkNameD2Ev,comdat
	.hidden	_ZN9benchmark13BenchmarkNameD2Ev # -- Begin function _ZN9benchmark13BenchmarkNameD2Ev
	.weak	_ZN9benchmark13BenchmarkNameD2Ev
	.p2align	5
	.type	_ZN9benchmark13BenchmarkNameD2Ev,@function
_ZN9benchmark13BenchmarkNameD2Ev:       # @_ZN9benchmark13BenchmarkNameD2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 224
	addi.d	$a1, $fp, 240
	beq	$a0, $a1, .LBB8_2
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_2:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $fp, 192
	addi.d	$a1, $fp, 208
	beq	$a0, $a1, .LBB8_4
# %bb.3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_4:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
	ld.d	$a0, $fp, 160
	addi.d	$a1, $fp, 176
	beq	$a0, $a1, .LBB8_6
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_6:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
	ld.d	$a0, $fp, 128
	addi.d	$a1, $fp, 144
	beq	$a0, $a1, .LBB8_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_8:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
	ld.d	$a0, $fp, 96
	addi.d	$a1, $fp, 112
	beq	$a0, $a1, .LBB8_10
# %bb.9:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_10:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
	ld.d	$a0, $fp, 64
	addi.d	$a1, $fp, 80
	beq	$a0, $a1, .LBB8_12
# %bb.11:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_12:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
	ld.d	$a0, $fp, 32
	addi.d	$a1, $fp, 48
	beq	$a0, $a1, .LBB8_14
# %bb.13:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_14:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
	ld.d	$a0, $fp, 0
	addi.d	$a1, $fp, 16
	beq	$a0, $a1, .LBB8_16
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB8_16:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end8:
	.size	_ZN9benchmark13BenchmarkNameD2Ev, .Lfunc_end8-_ZN9benchmark13BenchmarkNameD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev,"axG",@progbits,_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev,comdat
	.hidden	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev # -- Begin function _ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev
	.weak	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev
	.p2align	5
	.type	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev,@function
_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev: # @_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	ld.d	$s0, $a0, 0
	ld.d	$s1, $a0, 8
	bne	$s0, $s1, .LBB9_4
# %bb.1:                                # %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit
	beqz	$s0, .LBB9_12
.LBB9_2:
	ld.d	$a0, $fp, 16
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
	.p2align	4, , 16
.LBB9_3:                                # %_ZSt8_DestroyIN9benchmark17BenchmarkReporter3RunEEvPT_.exit.i
                                        #   in Loop: Header=BB9_4 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 560
	beq	$s0, $s1, .LBB9_11
.LBB9_4:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 512
	addi.d	$a0, $s0, 496
.Ltmp139:
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp140:
# %bb.5:                                # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i.i
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a0, $s0, 360
	addi.d	$a1, $s0, 376
	beq	$a1, $a0, .LBB9_7
# %bb.6:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_7:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a0, $s0, 320
	addi.d	$a1, $s0, 336
	beq	$a1, $a0, .LBB9_9
# %bb.8:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_9:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a0, $s0, 280
	addi.d	$a1, $s0, 296
	beq	$a1, $a0, .LBB9_3
# %bb.10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i
                                        #   in Loop: Header=BB9_4 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB9_3
.LBB9_11:                               # %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exitthread-pre-split
	ld.d	$s0, $fp, 0
	bnez	$s0, .LBB9_2
.LBB9_12:                               # %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB9_13:
.Ltmp141:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev, .Lfunc_end9-_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev,"aG",@progbits,_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table9:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp139-.Lfunc_begin5         #   Call between .Lfunc_begin5 and .Ltmp139
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp139-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Ltmp140-.Ltmp139              #   Call between .Ltmp139 and .Ltmp140
	.uleb128 .Ltmp141-.Lfunc_begin5         #     jumps to .Ltmp141
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp140-.Lfunc_begin5         # >> Call Site 3 <<
	.uleb128 .Lfunc_end9-.Ltmp140           #   Call between .Ltmp140 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZZN9benchmark12FittingCurveENS_4BigOEEN3$_08__invokeEl
	.type	_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_08__invokeEl,@function
_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_08__invokeEl: # @"_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_08__invokeEl"
# %bb.0:
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	ret
.Lfunc_end10:
	.size	_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_08__invokeEl, .Lfunc_end10-_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_08__invokeEl
                                        # -- End function
	.p2align	5                               # -- Begin function _ZZN9benchmark12FittingCurveENS_4BigOEEN3$_18__invokeEl
	.type	_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_18__invokeEl,@function
_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_18__invokeEl: # @"_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_18__invokeEl"
# %bb.0:
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fa0
	ret
.Lfunc_end11:
	.size	_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_18__invokeEl, .Lfunc_end11-_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_18__invokeEl
                                        # -- End function
	.p2align	5                               # -- Begin function _ZZN9benchmark12FittingCurveENS_4BigOEEN3$_28__invokeEl
	.type	_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_28__invokeEl,@function
_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_28__invokeEl: # @"_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_28__invokeEl"
# %bb.0:
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	vldi	$vr1, -1016
	pcaddu18i	$t8, %call36(pow)
	jr	$t8
.Lfunc_end12:
	.size	_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_28__invokeEl, .Lfunc_end12-_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_28__invokeEl
                                        # -- End function
	.p2align	5                               # -- Begin function _ZZN9benchmark12FittingCurveENS_4BigOEEN3$_38__invokeEl
	.type	_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_38__invokeEl,@function
_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_38__invokeEl: # @"_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_38__invokeEl"
# %bb.0:
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	pcaddu18i	$t8, %call36(log2)
	jr	$t8
.Lfunc_end13:
	.size	_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_38__invokeEl, .Lfunc_end13-_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_38__invokeEl
                                        # -- End function
	.p2align	5                               # -- Begin function _ZZN9benchmark12FittingCurveENS_4BigOEEN3$_48__invokeEl
	.type	_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_48__invokeEl,@function
_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_48__invokeEl: # @"_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_48__invokeEl"
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fs0, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(log2)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fa0, $fs0
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end14:
	.size	_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_48__invokeEl, .Lfunc_end14-_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_48__invokeEl
                                        # -- End function
	.p2align	5                               # -- Begin function _ZZN9benchmark12FittingCurveENS_4BigOEEN3$_58__invokeEl
	.type	_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_58__invokeEl,@function
_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_58__invokeEl: # @"_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_58__invokeEl"
# %bb.0:
	vldi	$vr0, -912
	ret
.Lfunc_end15:
	.size	_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_58__invokeEl, .Lfunc_end15-_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_58__invokeEl
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate          # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	5
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZSt9terminatev)
	jirl	$ra, $ra, 0
.Lfunc_end16:
	.size	__clang_call_terminate, .Lfunc_end16-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.cfi_startproc
# %bb.0:
	beqz	$a1, .LBB17_6
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$s0, $a1
	move	$fp, $a0
	b	.LBB17_3
	.p2align	4, , 16
.LBB17_2:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
                                        #   in Loop: Header=BB17_3 Depth=1
	ori	$a1, $zero, 80
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	beqz	$s1, .LBB17_5
.LBB17_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$s1, $s0, 16
	addi.d	$a1, $s0, 48
	beq	$a0, $a1, .LBB17_2
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
                                        #   in Loop: Header=BB17_3 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB17_2
.LBB17_5:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB17_6:                               # %._crit_edge
	ret
.Lfunc_end17:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E, .Lfunc_end17-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_,"axG",@progbits,_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_,comdat
	.hidden	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_ # -- Begin function _ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_
	.weak	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_
	.p2align	5
	.type	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_,@function
_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_: # @_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 29, -72
	move	$fp, $a0
	ld.d	$s1, $a0, 8
	ld.d	$s0, $a0, 0
	sub.d	$s6, $s1, $s0
	addi.w	$a0, $zero, -288
	lu52i.d	$a0, $a0, 2047
	beq	$s6, $a0, .LBB18_5
# %bb.1:                                # %_ZNKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE12_M_check_lenEmPKc.exit
	move	$s3, $a1
	srli.d	$a0, $s6, 4
	lu12i.w	$a1, -479350
	ori	$a1, $a1, 3979
	lu32i.d	$a1, -329553
	lu52i.d	$a1, $a1, -1288
	mul.d	$a0, $a0, $a1
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	maskeqz	$a3, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a1, $a3, $a1
	add.d	$a0, $a1, $a0
	lu12i.w	$a1, 239674
	ori	$a1, $a1, 2106
	bstrins.d	$a1, $a1, 53, 24
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s5, $a0, $a1
	ori	$a0, $zero, 560
	mul.d	$s4, $s5, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	add.d	$a0, $a0, $s6
.Ltmp142:
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_)
	jirl	$ra, $ra, 0
.Ltmp143:
# %bb.2:                                # %_ZNSt16allocator_traitsISaIN9benchmark17BenchmarkReporter3RunEEE9constructIS2_JRKS2_EEEvRS3_PT_DpOT0_.exit
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s2
	move	$a3, $fp
	pcaddu18i	$ra, %call36(_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	beqz	$s0, .LBB18_4
# %bb.3:                                # %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE13_M_deallocateEPS2_m.exit.i
	ld.d	$a0, $fp, 16
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB18_4:                               # %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE12_Guard_allocD2Ev.exit
	addi.d	$a0, $s1, 560
	st.d	$s2, $fp, 0
	st.d	$a0, $fp, 8
	ori	$a0, $zero, 560
	mul.d	$a0, $s5, $a0
	add.d	$a0, $s2, $a0
	st.d	$a0, $fp, 16
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
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
.LBB18_5:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB18_6:                               # %_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE12_Guard_allocD2Ev.exit22
.Ltmp144:
	move	$fp, $a0
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end18:
	.size	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_, .Lfunc_end18-_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_,"aG",@progbits,_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE17_M_realloc_appendIJRKS2_EEEvDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table18:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp142-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp142
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp142-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp143-.Ltmp142              #   Call between .Ltmp142 and .Ltmp143
	.uleb128 .Ltmp144-.Lfunc_begin6         #     jumps to .Ltmp144
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp143-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Lfunc_end18-.Ltmp143          #   Call between .Ltmp143 and .Lfunc_end18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9benchmark17BenchmarkReporter3RunC2ERKS1_,"axG",@progbits,_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_,comdat
	.hidden	_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_ # -- Begin function _ZN9benchmark17BenchmarkReporter3RunC2ERKS1_
	.weak	_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_
	.p2align	5
	.type	_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_,@function
_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_: # @_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:
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
	move	$s1, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameC2ERKS0_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 272
	st.w	$a0, $fp, 272
	vld	$vr0, $s1, 256
	vst	$vr0, $fp, 256
	addi.d	$s5, $fp, 296
	st.d	$s5, $fp, 280
	ld.d	$a1, $s1, 288
	ld.d	$s2, $s1, 280
	addi.d	$s0, $fp, 280
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 0
	move	$a0, $s5
	bltu	$a1, $a2, .LBB19_3
# %bb.1:                                # %.noexc.i
.Ltmp145:
	addi.d	$a1, $sp, 0
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp146:
# %bb.2:                                # %.noexc
	ld.d	$a1, $sp, 0
	st.d	$a0, $s0, 0
	st.d	$a1, $s5, 0
.LBB19_3:                               # %._crit_edge.i.i
	addi.w	$s7, $zero, -1
	beq	$a1, $s7, .LBB19_7
# %bb.4:                                # %._crit_edge.i.i
	bnez	$a1, .LBB19_6
# %bb.5:
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB19_7
.LBB19_6:
	addi.d	$a2, $a1, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_7:
	ld.d	$a0, $sp, 0
	st.d	$a0, $fp, 288
	ld.w	$a0, $s1, 312
	st.w	$a0, $fp, 312
	addi.d	$s6, $fp, 336
	st.d	$s6, $fp, 320
	ld.d	$a1, $s1, 328
	ld.d	$s3, $s1, 320
	addi.d	$s2, $fp, 320
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 0
	move	$a0, $s6
	bltu	$a1, $a2, .LBB19_10
# %bb.8:                                # %.noexc.i19
.Ltmp148:
	addi.d	$a1, $sp, 0
	move	$a0, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp149:
# %bb.9:                                # %.noexc20
	ld.d	$a1, $sp, 0
	st.d	$a0, $s2, 0
	st.d	$a1, $s6, 0
.LBB19_10:                              # %._crit_edge.i.i18
	beq	$a1, $s7, .LBB19_14
# %bb.11:                               # %._crit_edge.i.i18
	bnez	$a1, .LBB19_13
# %bb.12:
	ld.b	$a1, $s3, 0
	st.b	$a1, $a0, 0
	b	.LBB19_14
.LBB19_13:
	addi.d	$a2, $a1, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_14:
	ld.d	$a0, $sp, 0
	st.d	$a0, $fp, 328
	ld.w	$a0, $s1, 352
	st.w	$a0, $fp, 352
	addi.d	$s8, $fp, 376
	st.d	$s8, $fp, 360
	ld.d	$a1, $s1, 368
	ld.d	$s4, $s1, 360
	addi.d	$s3, $fp, 360
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 0
	move	$a0, $s8
	bltu	$a1, $a2, .LBB19_17
# %bb.15:                               # %.noexc.i23
.Ltmp151:
	addi.d	$a1, $sp, 0
	move	$a0, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp152:
# %bb.16:                               # %.noexc24
	ld.d	$a1, $sp, 0
	st.d	$a0, $s3, 0
	st.d	$a1, $s8, 0
.LBB19_17:                              # %._crit_edge.i.i22
	beq	$a1, $s7, .LBB19_21
# %bb.18:                               # %._crit_edge.i.i22
	bnez	$a1, .LBB19_20
# %bb.19:
	ld.b	$a1, $s4, 0
	st.b	$a1, $a0, 0
	b	.LBB19_21
.LBB19_20:
	addi.d	$a2, $a1, 1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_21:
	ld.d	$a0, $sp, 0
	st.d	$a0, $fp, 368
	addi.d	$a0, $fp, 392
	addi.d	$a1, $s1, 392
	ori	$a2, $zero, 98
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a2, $fp, 504
	st.w	$zero, $fp, 504
	st.d	$zero, $fp, 512
	st.d	$a2, $fp, 520
	st.d	$a2, $fp, 528
	st.d	$zero, $fp, 536
	ld.d	$a1, $s1, 512
	beqz	$a1, .LBB19_28
# %bb.22:
	addi.d	$a0, $fp, 496
	st.d	$a0, $sp, 0
.Ltmp154:
	addi.d	$a3, $sp, 0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_)
	jirl	$ra, $ra, 0
.Ltmp155:
# %bb.23:                               # %.noexc.i.i.preheader
	move	$a2, $a0
	.p2align	4, , 16
.LBB19_24:                              # %.noexc.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 16
	bnez	$a2, .LBB19_24
# %bb.25:                               # %_ZNSt18_Rb_tree_node_base10_S_minimumEPS_.exit.i.i.i.i
	st.d	$a1, $fp, 520
	move	$a2, $a0
	.p2align	4, , 16
.LBB19_26:                              # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 24
	bnez	$a2, .LBB19_26
# %bb.27:
	st.d	$a1, $fp, 528
	ld.d	$a1, $s1, 536
	st.d	$a1, $fp, 536
	st.d	$a0, $fp, 512
.LBB19_28:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit
	vld	$vr0, $s1, 544
	vst	$vr0, $fp, 544
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
	ret
.LBB19_29:
.Ltmp153:
	move	$s1, $a0
	ld.d	$a0, $s2, 0
	beq	$a0, $s6, .LBB19_34
	b	.LBB19_37
.LBB19_30:
.Ltmp150:
	move	$s1, $a0
	ld.d	$a0, $s0, 0
	beq	$a0, $s5, .LBB19_35
	b	.LBB19_38
.LBB19_31:
.Ltmp147:
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB19_32:
.Ltmp156:
	ld.d	$a2, $s3, 0
	move	$s1, $a0
	bne	$a2, $s8, .LBB19_36
# %bb.33:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $s2, 0
	bne	$a0, $s6, .LBB19_37
.LBB19_34:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
	ld.d	$a0, $s0, 0
	bne	$a0, $s5, .LBB19_38
.LBB19_35:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB19_36:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $s8, 0
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	beq	$a0, $s6, .LBB19_34
.LBB19_37:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
	ld.d	$a1, $s6, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	beq	$a0, $s5, .LBB19_35
.LBB19_38:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
	ld.d	$a1, $s5, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_, .Lfunc_end19-_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_
	.cfi_endproc
	.section	.gcc_except_table._ZN9benchmark17BenchmarkReporter3RunC2ERKS1_,"aG",@progbits,_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_,comdat
	.p2align	2, 0x0
GCC_except_table19:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp145-.Lfunc_begin7         #   Call between .Lfunc_begin7 and .Ltmp145
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp145-.Lfunc_begin7         # >> Call Site 2 <<
	.uleb128 .Ltmp146-.Ltmp145              #   Call between .Ltmp145 and .Ltmp146
	.uleb128 .Ltmp147-.Lfunc_begin7         #     jumps to .Ltmp147
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp146-.Lfunc_begin7         # >> Call Site 3 <<
	.uleb128 .Ltmp148-.Ltmp146              #   Call between .Ltmp146 and .Ltmp148
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp148-.Lfunc_begin7         # >> Call Site 4 <<
	.uleb128 .Ltmp149-.Ltmp148              #   Call between .Ltmp148 and .Ltmp149
	.uleb128 .Ltmp150-.Lfunc_begin7         #     jumps to .Ltmp150
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp149-.Lfunc_begin7         # >> Call Site 5 <<
	.uleb128 .Ltmp151-.Ltmp149              #   Call between .Ltmp149 and .Ltmp151
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp151-.Lfunc_begin7         # >> Call Site 6 <<
	.uleb128 .Ltmp152-.Ltmp151              #   Call between .Ltmp151 and .Ltmp152
	.uleb128 .Ltmp153-.Lfunc_begin7         #     jumps to .Ltmp153
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin7         # >> Call Site 7 <<
	.uleb128 .Ltmp154-.Ltmp152              #   Call between .Ltmp152 and .Ltmp154
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp154-.Lfunc_begin7         # >> Call Site 8 <<
	.uleb128 .Ltmp155-.Ltmp154              #   Call between .Ltmp154 and .Ltmp155
	.uleb128 .Ltmp156-.Lfunc_begin7         #     jumps to .Ltmp156
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp155-.Lfunc_begin7         # >> Call Site 9 <<
	.uleb128 .Lfunc_end19-.Ltmp155          #   Call between .Ltmp155 and .Lfunc_end19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s4, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 16                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$s1, $a3
	ld.d	$s3, $a3, 0
	move	$s4, $a2
	move	$s2, $a1
	move	$fp, $a0
	addi.d	$s5, $a1, 32
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s5
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s2, 0
	ld.d	$a1, $s2, 24
	st.w	$a0, $s0, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	vst	$vr0, $s0, 16
	st.d	$s4, $s0, 8
	beqz	$a1, .LBB20_3
# %bb.1:
.Ltmp157:
	move	$a0, $fp
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_)
	jirl	$ra, $ra, 0
.Ltmp158:
# %bb.2:
	st.d	$a0, $s0, 24
.LBB20_3:
	ld.d	$s4, $s2, 16
	beqz	$s4, .LBB20_11
# %bb.4:                                # %.lr.ph.preheader
	move	$s5, $s0
	b	.LBB20_6
	.p2align	4, , 16
.LBB20_5:                               #   in Loop: Header=BB20_6 Depth=1
	ld.d	$s4, $s4, 16
	move	$s5, $s2
	beqz	$s4, .LBB20_11
.LBB20_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s3, $s1, 0
.Ltmp160:
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp161:
# %bb.7:                                # %.noexc
                                        #   in Loop: Header=BB20_6 Depth=1
	move	$s2, $a0
	addi.d	$a2, $s4, 32
.Ltmp162:
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_)
	jirl	$ra, $ra, 0
.Ltmp163:
# %bb.8:                                #   in Loop: Header=BB20_6 Depth=1
	ld.w	$a0, $s4, 0
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $s2, 16
	ld.d	$a1, $s4, 24
	st.w	$a0, $s2, 0
	st.d	$s2, $s5, 16
	st.d	$s5, $s2, 8
	beqz	$a1, .LBB20_5
# %bb.9:                                #   in Loop: Header=BB20_6 Depth=1
.Ltmp164:
	move	$a0, $fp
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_)
	jirl	$ra, $ra, 0
.Ltmp165:
# %bb.10:                               #   in Loop: Header=BB20_6 Depth=1
	st.d	$a0, $s2, 24
	b	.LBB20_5
.LBB20_11:                              # %._crit_edge
	move	$a0, $s0
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
.LBB20_12:
.Ltmp159:
	b	.LBB20_14
.LBB20_13:
.Ltmp166:
.LBB20_14:
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
.Ltmp167:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp168:
# %bb.15:
.Ltmp169:
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp170:
# %bb.16:
.LBB20_17:
.Ltmp171:
	move	$fp, $a0
.Ltmp172:
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp173:
# %bb.18:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB20_19:
.Ltmp174:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_, .Lfunc_end20-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_,comdat
	.p2align	2, 0x0
GCC_except_table20:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp157-.Lfunc_begin8         #   Call between .Lfunc_begin8 and .Ltmp157
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp157-.Lfunc_begin8         # >> Call Site 2 <<
	.uleb128 .Ltmp158-.Ltmp157              #   Call between .Ltmp157 and .Ltmp158
	.uleb128 .Ltmp159-.Lfunc_begin8         #     jumps to .Ltmp159
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp160-.Lfunc_begin8         # >> Call Site 3 <<
	.uleb128 .Ltmp165-.Ltmp160              #   Call between .Ltmp160 and .Ltmp165
	.uleb128 .Ltmp166-.Lfunc_begin8         #     jumps to .Ltmp166
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp165-.Lfunc_begin8         # >> Call Site 4 <<
	.uleb128 .Ltmp167-.Ltmp165              #   Call between .Ltmp165 and .Ltmp167
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp167-.Lfunc_begin8         # >> Call Site 5 <<
	.uleb128 .Ltmp170-.Ltmp167              #   Call between .Ltmp167 and .Ltmp170
	.uleb128 .Ltmp171-.Lfunc_begin8         #     jumps to .Ltmp171
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp172-.Lfunc_begin8         # >> Call Site 6 <<
	.uleb128 .Ltmp173-.Ltmp172              #   Call between .Ltmp172 and .Ltmp173
	.uleb128 .Ltmp174-.Lfunc_begin8         #     jumps to .Ltmp174
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp173-.Lfunc_begin8         # >> Call Site 7 <<
	.uleb128 .Lfunc_end20-.Ltmp173          #   Call between .Ltmp173 and .Lfunc_end20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
# %bb.0:
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
	move	$s0, $a2
	move	$fp, $a1
	addi.d	$s1, $a1, 48
	st.d	$s1, $a1, 32
	ld.d	$a1, $a2, 8
	ld.d	$s2, $a2, 0
	ori	$a0, $zero, 16
	st.d	$a1, $sp, 8
	bltu	$a1, $a0, .LBB21_3
# %bb.1:                                # %.noexc.i.i
.Ltmp175:
	addi.d	$s3, $fp, 32
	addi.d	$a1, $sp, 8
	move	$a0, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp176:
# %bb.2:                                # %.noexc
	ld.d	$a1, $sp, 8
	st.d	$a0, $s3, 0
	st.d	$a1, $s1, 0
	move	$s1, $a0
.LBB21_3:                               # %._crit_edge.i.i.i
	addi.w	$a0, $zero, -1
	beq	$a1, $a0, .LBB21_7
# %bb.4:                                # %._crit_edge.i.i.i
	bnez	$a1, .LBB21_6
# %bb.5:
	ld.b	$a0, $s2, 0
	st.b	$a0, $s1, 0
	b	.LBB21_7
.LBB21_6:
	addi.d	$a2, $a1, 1
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB21_7:
	ld.d	$a0, $sp, 8
	st.d	$a0, $fp, 40
	vld	$vr0, $s0, 32
	vst	$vr0, $fp, 64
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB21_8:
.Ltmp177:
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.Ltmp178:
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp179:
# %bb.9:
.LBB21_10:
.Ltmp180:
	move	$fp, $a0
.Ltmp181:
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp182:
# %bb.11:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB21_12:
.Ltmp183:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end21:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_, .Lfunc_end21-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table21:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Ltmp175-.Lfunc_begin9         # >> Call Site 1 <<
	.uleb128 .Ltmp176-.Ltmp175              #   Call between .Ltmp175 and .Ltmp176
	.uleb128 .Ltmp177-.Lfunc_begin9         #     jumps to .Ltmp177
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp176-.Lfunc_begin9         # >> Call Site 2 <<
	.uleb128 .Ltmp178-.Ltmp176              #   Call between .Ltmp176 and .Ltmp178
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp178-.Lfunc_begin9         # >> Call Site 3 <<
	.uleb128 .Ltmp179-.Ltmp178              #   Call between .Ltmp178 and .Ltmp179
	.uleb128 .Ltmp180-.Lfunc_begin9         #     jumps to .Ltmp180
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp181-.Lfunc_begin9         # >> Call Site 4 <<
	.uleb128 .Ltmp182-.Ltmp181              #   Call between .Ltmp181 and .Ltmp182
	.uleb128 .Ltmp183-.Lfunc_begin9         #     jumps to .Ltmp183
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp182-.Lfunc_begin9         # >> Call Site 5 <<
	.uleb128 .Lfunc_end21-.Ltmp182          #   Call between .Ltmp182 and .Lfunc_end21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_,"axG",@progbits,_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_,comdat
	.hidden	_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_ # -- Begin function _ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_
	.weak	_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_
	.p2align	5
	.type	_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_,@function
_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_: # @_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
# %bb.0:
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
	move	$fp, $a2
	beq	$a0, $a1, .LBB22_11
# %bb.1:                                # %.lr.ph.preheader
	move	$s0, $a1
	move	$s1, $a0
	move	$s3, $zero
	b	.LBB22_3
	.p2align	4, , 16
.LBB22_2:                               # %_ZSt19__relocate_object_aIN9benchmark17BenchmarkReporter3RunES2_SaIS2_EEvPT_PT0_RT1_.exit
                                        #   in Loop: Header=BB22_3 Depth=1
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s3, $s3, 560
	add.d	$a0, $s1, $s3
	beq	$a0, $s0, .LBB22_10
.LBB22_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a0, $fp, $s3
	add.d	$s2, $s1, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporter3RunC2EOS1_)
	jirl	$ra, $ra, 0
	ld.d	$a1, $s2, 512
	addi.d	$a0, $s2, 496
.Ltmp184:
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp185:
# %bb.4:                                # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.d	$a0, $s2, 360
	addi.d	$a1, $s2, 376
	beq	$a1, $a0, .LBB22_6
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB22_6:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.d	$a0, $s2, 320
	addi.d	$a1, $s2, 336
	beq	$a1, $a0, .LBB22_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB22_8:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.d	$a0, $s2, 280
	addi.d	$a1, $s2, 296
	beq	$a1, $a0, .LBB22_2
# %bb.9:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
                                        #   in Loop: Header=BB22_3 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB22_2
.LBB22_10:                              # %._crit_edge.loopexit
	add.d	$fp, $fp, $s3
.LBB22_11:                              # %._crit_edge
	move	$a0, $fp
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB22_12:
.Ltmp186:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end22:
	.size	_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_, .Lfunc_end22-_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_
	.cfi_endproc
	.section	.gcc_except_table._ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_,"aG",@progbits,_ZSt14__relocate_a_1IPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_,comdat
	.p2align	2, 0x0
GCC_except_table22:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp184-.Lfunc_begin10        #   Call between .Lfunc_begin10 and .Ltmp184
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp184-.Lfunc_begin10        # >> Call Site 2 <<
	.uleb128 .Ltmp185-.Ltmp184              #   Call between .Ltmp184 and .Ltmp185
	.uleb128 .Ltmp186-.Lfunc_begin10        #     jumps to .Ltmp186
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp185-.Lfunc_begin10        # >> Call Site 3 <<
	.uleb128 .Lfunc_end22-.Ltmp185          #   Call between .Ltmp185 and .Lfunc_end22
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase5:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9benchmark17BenchmarkReporter3RunC2EOS1_,"axG",@progbits,_ZN9benchmark17BenchmarkReporter3RunC2EOS1_,comdat
	.hidden	_ZN9benchmark17BenchmarkReporter3RunC2EOS1_ # -- Begin function _ZN9benchmark17BenchmarkReporter3RunC2EOS1_
	.weak	_ZN9benchmark17BenchmarkReporter3RunC2EOS1_
	.p2align	5
	.type	_ZN9benchmark17BenchmarkReporter3RunC2EOS1_,@function
_ZN9benchmark17BenchmarkReporter3RunC2EOS1_: # @_ZN9benchmark17BenchmarkReporter3RunC2EOS1_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$s0, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameC2EOS0_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s0, 272
	st.w	$a0, $fp, 272
	vld	$vr0, $s0, 256
	vst	$vr0, $fp, 256
	addi.d	$a0, $fp, 296
	st.d	$a0, $fp, 280
	ld.d	$a1, $s0, 280
	addi.d	$s1, $s0, 296
	beq	$a1, $s1, .LBB23_2
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
	st.d	$a1, $fp, 280
	ld.d	$a0, $s1, 0
	st.d	$a0, $fp, 296
	b	.LBB23_3
.LBB23_2:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i
	ld.d	$a1, $s0, 288
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB23_3:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
	ld.d	$a0, $s0, 288
	st.d	$a0, $fp, 288
	st.d	$s1, $s0, 280
	st.b	$zero, $s0, 296
	ld.w	$a2, $s0, 312
	addi.d	$a0, $fp, 336
	st.d	$a0, $fp, 320
	ld.d	$a1, $s0, 320
	st.d	$zero, $s0, 288
	addi.d	$s1, $s0, 336
	st.w	$a2, $fp, 312
	beq	$a1, $s1, .LBB23_5
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11
	st.d	$a1, $fp, 320
	ld.d	$a0, $s1, 0
	st.d	$a0, $fp, 336
	b	.LBB23_6
.LBB23_5:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i12
	ld.d	$a1, $s0, 328
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB23_6:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit13
	ld.d	$a0, $s0, 328
	st.d	$a0, $fp, 328
	st.d	$s1, $s0, 320
	st.b	$zero, $s0, 336
	ld.w	$a2, $s0, 352
	addi.d	$a0, $fp, 376
	st.d	$a0, $fp, 360
	ld.d	$a1, $s0, 360
	st.d	$zero, $s0, 328
	addi.d	$s1, $s0, 376
	st.w	$a2, $fp, 352
	beq	$a1, $s1, .LBB23_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i14
	st.d	$a1, $fp, 360
	ld.d	$a0, $s1, 0
	st.d	$a0, $fp, 376
	b	.LBB23_9
.LBB23_8:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i15
	ld.d	$a1, $s0, 368
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB23_9:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit16
	ld.d	$a0, $s0, 368
	st.d	$a0, $fp, 368
	st.d	$s1, $s0, 360
	st.d	$zero, $s0, 368
	st.b	$zero, $s0, 376
	addi.d	$a0, $fp, 392
	addi.d	$a1, $s0, 392
	ori	$a2, $zero, 98
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a2, $s0, 512
	addi.d	$a0, $fp, 504
	beqz	$a2, .LBB23_11
# %bb.10:
	st.d	$a2, $fp, 512
	vld	$vr0, $s0, 520
	addi.d	$a3, $s0, 504
	ld.d	$a4, $s0, 536
	ld.w	$a1, $s0, 504
	vst	$vr0, $fp, 520
	st.d	$a0, $a2, 8
	st.d	$a4, $fp, 536
	st.d	$zero, $s0, 512
	st.d	$a3, $s0, 520
	st.d	$a3, $s0, 528
	st.d	$zero, $s0, 536
	b	.LBB23_12
.LBB23_11:
	move	$a1, $zero
	st.d	$zero, $fp, 512
	st.d	$a0, $fp, 520
	st.d	$a0, $fp, 528
	st.d	$zero, $fp, 536
.LBB23_12:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2EOSE_.exit
	st.w	$a1, $fp, 504
	vld	$vr0, $s0, 544
	vst	$vr0, $fp, 544
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end23:
	.size	_ZN9benchmark17BenchmarkReporter3RunC2EOS1_, .Lfunc_end23-_ZN9benchmark17BenchmarkReporter3RunC2EOS1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark13BenchmarkNameC2EOS0_,"axG",@progbits,_ZN9benchmark13BenchmarkNameC2EOS0_,comdat
	.hidden	_ZN9benchmark13BenchmarkNameC2EOS0_ # -- Begin function _ZN9benchmark13BenchmarkNameC2EOS0_
	.weak	_ZN9benchmark13BenchmarkNameC2EOS0_
	.p2align	5
	.type	_ZN9benchmark13BenchmarkNameC2EOS0_,@function
_ZN9benchmark13BenchmarkNameC2EOS0_:    # @_ZN9benchmark13BenchmarkNameC2EOS0_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a1
	move	$s0, $a0
	addi.d	$a0, $a0, 16
	st.d	$a0, $s0, 0
	ld.d	$a1, $a1, 0
	addi.d	$s1, $fp, 16
	beq	$a1, $s1, .LBB24_2
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
	st.d	$a1, $s0, 0
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 16
	b	.LBB24_3
.LBB24_2:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i
	ld.d	$a1, $fp, 8
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB24_3:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
	ld.d	$a0, $fp, 8
	st.d	$a0, $s0, 8
	st.d	$s1, $fp, 0
	st.b	$zero, $fp, 16
	addi.d	$a0, $s0, 48
	st.d	$a0, $s0, 32
	ld.d	$a1, $fp, 32
	addi.d	$s1, $fp, 48
	st.d	$zero, $fp, 8
	beq	$a1, $s1, .LBB24_5
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9
	st.d	$a1, $s0, 32
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 48
	b	.LBB24_6
.LBB24_5:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i10
	ld.d	$a1, $fp, 40
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB24_6:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit11
	ld.d	$a0, $fp, 40
	st.d	$a0, $s0, 40
	st.d	$s1, $fp, 32
	st.b	$zero, $fp, 48
	addi.d	$a0, $s0, 80
	st.d	$a0, $s0, 64
	ld.d	$a1, $fp, 64
	addi.d	$s1, $fp, 80
	st.d	$zero, $fp, 40
	beq	$a1, $s1, .LBB24_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
	st.d	$a1, $s0, 64
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 80
	b	.LBB24_9
.LBB24_8:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i13
	ld.d	$a1, $fp, 72
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB24_9:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
	ld.d	$a0, $fp, 72
	st.d	$a0, $s0, 72
	st.d	$s1, $fp, 64
	st.b	$zero, $fp, 80
	addi.d	$a0, $s0, 112
	st.d	$a0, $s0, 96
	ld.d	$a1, $fp, 96
	addi.d	$s1, $fp, 112
	st.d	$zero, $fp, 72
	beq	$a1, $s1, .LBB24_11
# %bb.10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
	st.d	$a1, $s0, 96
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 112
	b	.LBB24_12
.LBB24_11:                              # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i16
	ld.d	$a1, $fp, 104
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB24_12:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17
	ld.d	$a0, $fp, 104
	st.d	$a0, $s0, 104
	st.d	$s1, $fp, 96
	st.b	$zero, $fp, 112
	addi.d	$a0, $s0, 144
	st.d	$a0, $s0, 128
	ld.d	$a1, $fp, 128
	addi.d	$s1, $fp, 144
	st.d	$zero, $fp, 104
	beq	$a1, $s1, .LBB24_14
# %bb.13:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i18
	st.d	$a1, $s0, 128
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 144
	b	.LBB24_15
.LBB24_14:                              # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i19
	ld.d	$a1, $fp, 136
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB24_15:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit20
	ld.d	$a0, $fp, 136
	st.d	$a0, $s0, 136
	st.d	$s1, $fp, 128
	st.b	$zero, $fp, 144
	addi.d	$a0, $s0, 176
	st.d	$a0, $s0, 160
	ld.d	$a1, $fp, 160
	addi.d	$s1, $fp, 176
	st.d	$zero, $fp, 136
	beq	$a1, $s1, .LBB24_17
# %bb.16:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i21
	st.d	$a1, $s0, 160
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 176
	b	.LBB24_18
.LBB24_17:                              # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i22
	ld.d	$a1, $fp, 168
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB24_18:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit23
	ld.d	$a0, $fp, 168
	st.d	$a0, $s0, 168
	st.d	$s1, $fp, 160
	st.b	$zero, $fp, 176
	addi.d	$a0, $s0, 208
	st.d	$a0, $s0, 192
	ld.d	$a1, $fp, 192
	addi.d	$s1, $fp, 208
	st.d	$zero, $fp, 168
	beq	$a1, $s1, .LBB24_20
# %bb.19:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i24
	st.d	$a1, $s0, 192
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 208
	b	.LBB24_21
.LBB24_20:                              # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i25
	ld.d	$a1, $fp, 200
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB24_21:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit26
	ld.d	$a0, $fp, 200
	st.d	$a0, $s0, 200
	st.d	$s1, $fp, 192
	st.b	$zero, $fp, 208
	addi.d	$a0, $s0, 240
	st.d	$a0, $s0, 224
	ld.d	$a1, $fp, 224
	addi.d	$s1, $fp, 240
	st.d	$zero, $fp, 200
	beq	$a1, $s1, .LBB24_23
# %bb.22:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i27
	st.d	$a1, $s0, 224
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 240
	b	.LBB24_24
.LBB24_23:                              # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i28
	ld.d	$a1, $fp, 232
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB24_24:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit29
	ld.d	$a0, $fp, 232
	st.d	$a0, $s0, 232
	st.d	$s1, $fp, 224
	st.d	$zero, $fp, 232
	st.b	$zero, $fp, 240
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end24:
	.size	_ZN9benchmark13BenchmarkNameC2EOS0_, .Lfunc_end24-_ZN9benchmark13BenchmarkNameC2EOS0_
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_complexity.cc
	.type	_GLOBAL__sub_I_complexity.cc,@function
_GLOBAL__sub_I_complexity.cc:           # @_GLOBAL__sub_I_complexity.cc
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZN9benchmark8internal17InitializeStreamsEv)
	jr	$t8
.Lfunc_end25:
	.size	_GLOBAL__sub_I_complexity.cc, .Lfunc_end25-_GLOBAL__sub_I_complexity.cc
	.cfi_endproc
                                        # -- End function
	.type	.L.str.1,@object                # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"N^2"
	.size	.L.str.1, 4

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"N^3"
	.size	.L.str.2, 4

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"lgN"
	.size	.L.str.3, 4

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"(1)"
	.size	.L.str.5, 4

	.type	.Lconstinit,@object             # @constinit
	.section	.rodata,"a",@progbits
	.p2align	3, 0x0
.Lconstinit:
	.word	5                               # 0x5
	.word	2                               # 0x2
	.word	6                               # 0x6
	.word	3                               # 0x3
	.word	4                               # 0x4
	.size	.Lconstinit, 20

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"Did you forget to call SetComplexityN?"
	.size	.L.str.7, 39

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"BigO"
	.size	.L.str.8, 5

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"RMS"
	.size	.L.str.9, 4

	.hidden	_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log # @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log
	.type	_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log,@object
	.section	.bss._ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log,"awG",@nobits,_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log,comdat
	.weak	_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log
	.p2align	3, 0x0
_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log:
	.space	8
	.size	_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, 8

	.hidden	_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log # @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log
	.type	_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log,@object
	.section	.bss._ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log,"awG",@nobits,_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log,comdat
	.weak	_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log
	.p2align	3, 0x0
_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log:
	.dword	0                               # 0x0
	.size	_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log, 8

	.type	.L.str.11,@object               # @.str.11
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.11:
	.asciz	"vector::_M_realloc_append"
	.size	.L.str.11, 26

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_complexity.cc
	.type	.Lswitch.table._ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEENS_4BigOE,@object # @switch.table._ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEENS_4BigOE
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
.Lswitch.table._ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEENS_4BigOE:
	.dword	_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_08__invokeEl
	.dword	_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_18__invokeEl
	.dword	_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_28__invokeEl
	.dword	_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_38__invokeEl
	.dword	_ZZN9benchmark12FittingCurveENS_4BigOEEN3$_48__invokeEl
	.size	.Lswitch.table._ZN9benchmark14MinimalLeastSqERKSt6vectorIlSaIlEERKS0_IdSaIdEENS_4BigOE, 40

	.type	.Lswitch.table._ZN9benchmark11ComputeBigOERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE,@object # @switch.table._ZN9benchmark11ComputeBigOERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE
	.section	.rodata.cst32,"aM",@progbits,32
	.p2align	3, 0x0
.Lswitch.table._ZN9benchmark11ComputeBigOERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE:
	.dword	0x41cdcd6500000000              # double 1.0E+9
	.dword	0x412e848000000000              # double 1.0E+6
	.dword	0x408f400000000000              # double 1000
	.dword	0x3ff0000000000000              # double 1
	.size	.Lswitch.table._ZN9benchmark11ComputeBigOERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE, 32

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
	.addrsig_sym _ZZN9benchmark12FittingCurveENS_4BigOEEN3$_08__invokeEl
	.addrsig_sym _ZZN9benchmark12FittingCurveENS_4BigOEEN3$_18__invokeEl
	.addrsig_sym _ZZN9benchmark12FittingCurveENS_4BigOEEN3$_28__invokeEl
	.addrsig_sym _ZZN9benchmark12FittingCurveENS_4BigOEEN3$_38__invokeEl
	.addrsig_sym _ZZN9benchmark12FittingCurveENS_4BigOEEN3$_48__invokeEl
	.addrsig_sym _ZZN9benchmark12FittingCurveENS_4BigOEEN3$_58__invokeEl
	.addrsig_sym _GLOBAL__sub_I_complexity.cc
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log
