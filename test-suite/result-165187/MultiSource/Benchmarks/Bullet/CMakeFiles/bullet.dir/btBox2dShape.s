	.file	"btBox2dShape.cpp"
	.text
	.globl	_ZNK12btBox2dShape7getAabbERK11btTransformR9btVector3S4_ # -- Begin function _ZNK12btBox2dShape7getAabbERK11btTransformR9btVector3S4_
	.p2align	5
	.type	_ZNK12btBox2dShape7getAabbERK11btTransformR9btVector3S4_,@function
_ZNK12btBox2dShape7getAabbERK11btTransformR9btVector3S4_: # @_ZNK12btBox2dShape7getAabbERK11btTransformR9btVector3S4_
	.cfi_startproc
# %bb.0:
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
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a4, $a0, 88
	move	$fp, $a3
	move	$s0, $a2
	move	$s2, $a1
	move	$a0, $s1
	jirl	$ra, $a4, 0
	fld.s	$fa1, $s1, 40
	fld.s	$fa2, $s1, 44
	fld.s	$fa3, $s1, 48
	fld.s	$fa4, $s2, 0
	fadd.s	$fa1, $fa0, $fa1
	fadd.s	$fa2, $fa0, $fa2
	fadd.s	$fa0, $fa0, $fa3
	fabs.s	$fa3, $fa4
	fld.s	$fa4, $s2, 4
	fld.s	$fa5, $s2, 8
	fld.s	$fa6, $s2, 16
	fld.s	$fa7, $s2, 20
	fabs.s	$fa4, $fa4
	fabs.s	$fa5, $fa5
	fabs.s	$fa6, $fa6
	fabs.s	$fa7, $fa7
	fld.s	$ft0, $s2, 24
	fld.s	$ft1, $s2, 32
	fld.s	$ft2, $s2, 36
	fld.s	$ft3, $s2, 40
	fabs.s	$ft0, $ft0
	fabs.s	$ft1, $ft1
	fabs.s	$ft2, $ft2
	fabs.s	$ft3, $ft3
	fld.s	$ft4, $s2, 48
	fld.s	$ft5, $s2, 52
	fld.s	$ft6, $s2, 56
	fmul.s	$fa4, $fa2, $fa4
	fmadd.s	$fa3, $fa3, $fa1, $fa4
	fmadd.s	$fa3, $fa5, $fa0, $fa3
	fmul.s	$fa4, $fa2, $fa7
	fmadd.s	$fa4, $fa6, $fa1, $fa4
	fmadd.s	$fa4, $ft0, $fa0, $fa4
	fmul.s	$fa2, $fa2, $ft2
	fmadd.s	$fa1, $ft1, $fa1, $fa2
	fmadd.s	$fa0, $ft3, $fa0, $fa1
	fsub.s	$fa1, $ft4, $fa3
	fsub.s	$fa2, $ft5, $fa4
	fsub.s	$fa5, $ft6, $fa0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa5
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $s0, 0
	st.d	$a1, $s0, 8
	fadd.s	$fa1, $fa3, $ft4
	fadd.s	$fa2, $fa4, $ft5
	fadd.s	$fa0, $ft6, $fa0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 8
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.Lfunc_end0:
	.size	_ZNK12btBox2dShape7getAabbERK11btTransformR9btVector3S4_, .Lfunc_end0-_ZNK12btBox2dShape7getAabbERK11btTransformR9btVector3S4_
	.cfi_endproc
                                        # -- End function
	.globl	_ZNK12btBox2dShape21calculateLocalInertiaEfR9btVector3 # -- Begin function _ZNK12btBox2dShape21calculateLocalInertiaEfR9btVector3
	.p2align	5
	.type	_ZNK12btBox2dShape21calculateLocalInertiaEfR9btVector3,@function
_ZNK12btBox2dShape21calculateLocalInertiaEfR9btVector3: # @_ZNK12btBox2dShape21calculateLocalInertiaEfR9btVector3
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 56, -32
	.cfi_offset 57, -40
	.cfi_offset 58, -48
	.cfi_offset 59, -56
	.cfi_offset 60, -64
	.cfi_offset 61, -72
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	fld.s	$fs3, $fp, 40
	fld.s	$fs4, $fp, 44
	fld.s	$fs5, $fp, 48
	ld.d	$a2, $a0, 88
	move	$s0, $a1
	fmov.s	$fs0, $fa0
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs1, $fa0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs2, $fa0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	fadd.s	$fa1, $fs3, $fs1
	fadd.s	$fa2, $fs4, $fs2
	fadd.s	$fa0, $fs5, $fa0
	fadd.s	$fa1, $fa1, $fa1
	fadd.s	$fa2, $fa2, $fa2
	fadd.s	$fa0, $fa0, $fa0
	vldi	$vr3, -1240
	fdiv.s	$fa3, $fs0, $fa3
	fmul.s	$fa0, $fa0, $fa0
	fmadd.s	$fa4, $fa2, $fa2, $fa0
	fmul.s	$fa4, $fa3, $fa4
	fmadd.s	$fa0, $fa1, $fa1, $fa0
	fmul.s	$fa0, $fa3, $fa0
	fmul.s	$fa2, $fa2, $fa2
	fmadd.s	$fa1, $fa1, $fa1, $fa2
	fmul.s	$fa1, $fa3, $fa1
	fst.s	$fa4, $s0, 0
	fst.s	$fa0, $s0, 4
	fst.s	$fa1, $s0, 8
	st.w	$zero, $s0, 12
	fld.d	$fs5, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs4, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end1:
	.size	_ZNK12btBox2dShape21calculateLocalInertiaEfR9btVector3, .Lfunc_end1-_ZNK12btBox2dShape21calculateLocalInertiaEfR9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN12btBox2dShapeD0Ev,"axG",@progbits,_ZN12btBox2dShapeD0Ev,comdat
	.weak	_ZN12btBox2dShapeD0Ev           # -- Begin function _ZN12btBox2dShapeD0Ev
	.p2align	5
	.type	_ZN12btBox2dShapeD0Ev,@function
_ZN12btBox2dShapeD0Ev:                  # @_ZN12btBox2dShapeD0Ev
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
.Ltmp0:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(_ZN13btConvexShapeD2Ev)
	jirl	$ra, $ra, 0
.Ltmp1:                                 # EH_LABEL
# %bb.1:
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_Z21btAlignedFreeInternalPv)
	jr	$t8
.LBB2_2:
.Ltmp2:                                 # EH_LABEL
	move	$s0, $a0
.Ltmp3:                                 # EH_LABEL
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Z21btAlignedFreeInternalPv)
	jirl	$ra, $ra, 0
.Ltmp4:                                 # EH_LABEL
# %bb.3:                                # %_ZN13btConvexShapedlEPv.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_4:
.Ltmp5:                                 # EH_LABEL
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZN12btBox2dShapeD0Ev, .Lfunc_end2-_ZN12btBox2dShapeD0Ev
	.cfi_endproc
	.section	.gcc_except_table._ZN12btBox2dShapeD0Ev,"aG",@progbits,_ZN12btBox2dShapeD0Ev,comdat
	.p2align	2, 0x0
GCC_except_table2:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp3-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Lfunc_end2-.Ltmp4             #   Call between .Ltmp4 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN12btBox2dShape15setLocalScalingERK9btVector3,"axG",@progbits,_ZN12btBox2dShape15setLocalScalingERK9btVector3,comdat
	.weak	_ZN12btBox2dShape15setLocalScalingERK9btVector3 # -- Begin function _ZN12btBox2dShape15setLocalScalingERK9btVector3
	.p2align	5
	.type	_ZN12btBox2dShape15setLocalScalingERK9btVector3,@function
_ZN12btBox2dShape15setLocalScalingERK9btVector3: # @_ZN12btBox2dShape15setLocalScalingERK9btVector3
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs5, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 56, -32
	.cfi_offset 57, -40
	.cfi_offset 58, -48
	.cfi_offset 59, -56
	.cfi_offset 60, -64
	.cfi_offset 61, -72
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a2, $a0, 88
	move	$s0, $a1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs0, $fa0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs1, $fa0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	fld.s	$fa1, $fp, 40
	fld.s	$fa2, $fp, 44
	fmov.s	$fs2, $fa0
	fadd.s	$fa0, $fs0, $fa1
	fadd.s	$fa1, $fs1, $fa2
	fld.s	$fa2, $fp, 48
	fld.s	$fa3, $fp, 24
	fld.s	$fa4, $fp, 28
	fld.s	$fa5, $fp, 32
	fadd.s	$fa2, $fs2, $fa2
	fdiv.s	$fs3, $fa0, $fa3
	fdiv.s	$fs4, $fa1, $fa4
	fdiv.s	$fs5, $fa2, $fa5
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN21btConvexInternalShape15setLocalScalingERK9btVector3)
	jirl	$ra, $ra, 0
	fld.s	$fa0, $fp, 24
	fld.s	$fa1, $fp, 28
	fld.s	$fa2, $fp, 32
	fmul.s	$fa0, $fs3, $fa0
	fmul.s	$fa1, $fs4, $fa1
	fmul.s	$fa2, $fs5, $fa2
	fsub.s	$fa0, $fa0, $fs0
	fsub.s	$fa1, $fa1, $fs1
	fsub.s	$fa2, $fa2, $fs2
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 40
	st.d	$a1, $fp, 48
	fld.d	$fs5, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs4, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end3:
	.size	_ZN12btBox2dShape15setLocalScalingERK9btVector3, .Lfunc_end3-_ZN12btBox2dShape15setLocalScalingERK9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape15getLocalScalingEv,"axG",@progbits,_ZNK21btConvexInternalShape15getLocalScalingEv,comdat
	.weak	_ZNK21btConvexInternalShape15getLocalScalingEv # -- Begin function _ZNK21btConvexInternalShape15getLocalScalingEv
	.p2align	5
	.type	_ZNK21btConvexInternalShape15getLocalScalingEv,@function
_ZNK21btConvexInternalShape15getLocalScalingEv: # @_ZNK21btConvexInternalShape15getLocalScalingEv
# %bb.0:
	addi.d	$a0, $a0, 24
	ret
.Lfunc_end4:
	.size	_ZNK21btConvexInternalShape15getLocalScalingEv, .Lfunc_end4-_ZNK21btConvexInternalShape15getLocalScalingEv
                                        # -- End function
	.section	.text._ZNK12btBox2dShape7getNameEv,"axG",@progbits,_ZNK12btBox2dShape7getNameEv,comdat
	.weak	_ZNK12btBox2dShape7getNameEv    # -- Begin function _ZNK12btBox2dShape7getNameEv
	.p2align	5
	.type	_ZNK12btBox2dShape7getNameEv,@function
_ZNK12btBox2dShape7getNameEv:           # @_ZNK12btBox2dShape7getNameEv
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ret
.Lfunc_end5:
	.size	_ZNK12btBox2dShape7getNameEv, .Lfunc_end5-_ZNK12btBox2dShape7getNameEv
                                        # -- End function
	.section	.text._ZN12btBox2dShape9setMarginEf,"axG",@progbits,_ZN12btBox2dShape9setMarginEf,comdat
	.weak	_ZN12btBox2dShape9setMarginEf   # -- Begin function _ZN12btBox2dShape9setMarginEf
	.p2align	5
	.type	_ZN12btBox2dShape9setMarginEf,@function
_ZN12btBox2dShape9setMarginEf:          # @_ZN12btBox2dShape9setMarginEf
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 8                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 56, -24
	.cfi_offset 57, -32
	.cfi_offset 58, -40
	.cfi_offset 59, -48
	.cfi_offset 60, -56
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs0, $fa0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs1, $fa0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs2, $fa0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	fld.s	$fa1, $fp, 40
	ld.d	$a0, $fp, 0
	fld.s	$fa2, $fp, 44
	fld.s	$fa3, $fp, 48
	fst.s	$fs0, $fp, 56
	ld.d	$a1, $a0, 88
	fadd.s	$fs3, $fs1, $fa1
	fadd.s	$fs2, $fs2, $fa2
	fadd.s	$fs4, $fa0, $fa3
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs0, $fa0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs1, $fa0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	fsub.s	$fa1, $fs3, $fs0
	fsub.s	$fa2, $fs2, $fs1
	fsub.s	$fa0, $fs4, $fa0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $fp, 40
	st.d	$a1, $fp, 48
	fld.d	$fs4, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs3, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 40                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.Lfunc_end6:
	.size	_ZN12btBox2dShape9setMarginEf, .Lfunc_end6-_ZN12btBox2dShape9setMarginEf
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK21btConvexInternalShape9getMarginEv,"axG",@progbits,_ZNK21btConvexInternalShape9getMarginEv,comdat
	.weak	_ZNK21btConvexInternalShape9getMarginEv # -- Begin function _ZNK21btConvexInternalShape9getMarginEv
	.p2align	5
	.type	_ZNK21btConvexInternalShape9getMarginEv,@function
_ZNK21btConvexInternalShape9getMarginEv: # @_ZNK21btConvexInternalShape9getMarginEv
# %bb.0:
	fld.s	$fa0, $a0, 56
	ret
.Lfunc_end7:
	.size	_ZNK21btConvexInternalShape9getMarginEv, .Lfunc_end7-_ZNK21btConvexInternalShape9getMarginEv
                                        # -- End function
	.section	.text._ZNK12btBox2dShape24localGetSupportingVertexERK9btVector3,"axG",@progbits,_ZNK12btBox2dShape24localGetSupportingVertexERK9btVector3,comdat
	.weak	_ZNK12btBox2dShape24localGetSupportingVertexERK9btVector3 # -- Begin function _ZNK12btBox2dShape24localGetSupportingVertexERK9btVector3
	.p2align	5
	.type	_ZNK12btBox2dShape24localGetSupportingVertexERK9btVector3,@function
_ZNK12btBox2dShape24localGetSupportingVertexERK9btVector3: # @_ZNK12btBox2dShape24localGetSupportingVertexERK9btVector3
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 16                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 56, -32
	.cfi_offset 57, -40
	.cfi_offset 58, -48
	.cfi_offset 59, -56
	.cfi_offset 60, -64
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	fld.s	$fs2, $fp, 40
	fld.s	$fs3, $fp, 44
	fld.s	$fs4, $fp, 48
	ld.d	$a2, $a0, 88
	move	$s0, $a1
	move	$a0, $fp
	jirl	$ra, $a2, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs0, $fa0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 88
	fmov.s	$fs1, $fa0
	move	$a0, $fp
	jirl	$ra, $a1, 0
	fadd.s	$fa1, $fs2, $fs0
	fadd.s	$fa2, $fs3, $fs1
	fld.s	$fa3, $s0, 0
	fadd.s	$fa0, $fs4, $fa0
	movgr2fr.w	$fa4, $zero
	fld.s	$fa5, $s0, 4
	fcmp.cle.s	$fcc0, $fa4, $fa3
	fneg.s	$fa3, $fa1
	fsel	$fa1, $fa3, $fa1, $fcc0
	fcmp.cle.s	$fcc0, $fa4, $fa5
	fld.s	$fa3, $s0, 8
	fneg.s	$fa5, $fa2
	fsel	$fa2, $fa5, $fa2, $fcc0
	fneg.s	$fa5, $fa0
	fcmp.cle.s	$fcc0, $fa4, $fa3
	fsel	$fa0, $fa5, $fa0, $fcc0
	movfr2gr.s	$a0, $fa1
	movfr2gr.s	$a1, $fa2
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa0
	bstrpick.d	$a1, $a1, 31, 0
	fld.d	$fs4, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end8:
	.size	_ZNK12btBox2dShape24localGetSupportingVertexERK9btVector3, .Lfunc_end8-_ZNK12btBox2dShape24localGetSupportingVertexERK9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK12btBox2dShape37localGetSupportingVertexWithoutMarginERK9btVector3,"axG",@progbits,_ZNK12btBox2dShape37localGetSupportingVertexWithoutMarginERK9btVector3,comdat
	.weak	_ZNK12btBox2dShape37localGetSupportingVertexWithoutMarginERK9btVector3 # -- Begin function _ZNK12btBox2dShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.p2align	5
	.type	_ZNK12btBox2dShape37localGetSupportingVertexWithoutMarginERK9btVector3,@function
_ZNK12btBox2dShape37localGetSupportingVertexWithoutMarginERK9btVector3: # @_ZNK12btBox2dShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.cfi_startproc
# %bb.0:
	fld.s	$fa0, $a0, 40
	fld.s	$fa1, $a1, 0
	fneg.s	$fa2, $fa0
	movgr2fr.w	$fa3, $zero
	fld.s	$fa4, $a1, 4
	fcmp.cle.s	$fcc0, $fa3, $fa1
	fsel	$fa0, $fa2, $fa0, $fcc0
	fld.s	$fa1, $a0, 44
	fcmp.cle.s	$fcc0, $fa3, $fa4
	fld.s	$fa2, $a0, 48
	fld.s	$fa4, $a1, 8
	fneg.s	$fa5, $fa1
	fsel	$fa1, $fa5, $fa1, $fcc0
	fneg.s	$fa5, $fa2
	fcmp.cle.s	$fcc0, $fa3, $fa4
	fsel	$fa2, $fa5, $fa2, $fcc0
	movfr2gr.s	$a0, $fa0
	movfr2gr.s	$a1, $fa1
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	bstrpick.d	$a1, $a1, 31, 0
	ret
.Lfunc_end9:
	.size	_ZNK12btBox2dShape37localGetSupportingVertexWithoutMarginERK9btVector3, .Lfunc_end9-_ZNK12btBox2dShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK12btBox2dShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i,"axG",@progbits,_ZNK12btBox2dShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i,comdat
	.weak	_ZNK12btBox2dShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i # -- Begin function _ZNK12btBox2dShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.p2align	5
	.type	_ZNK12btBox2dShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i,@function
_ZNK12btBox2dShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i: # @_ZNK12btBox2dShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
# %bb.0:
	blez	$a3, .LBB10_3
# %bb.1:                                # %.lr.ph
	addi.d	$a1, $a1, 8
	addi.d	$a2, $a2, 8
	movgr2fr.w	$fa0, $zero
	.p2align	4, , 16
.LBB10_2:                               # =>This Inner Loop Header: Depth=1
	fld.s	$fa1, $a0, 40
	fld.s	$fa2, $a1, -8
	fneg.s	$fa3, $fa1
	fld.s	$fa4, $a1, -4
	fcmp.cle.s	$fcc0, $fa0, $fa2
	fsel	$fa1, $fa3, $fa1, $fcc0
	fld.s	$fa2, $a0, 44
	fcmp.cle.s	$fcc0, $fa0, $fa4
	fld.s	$fa3, $a0, 48
	fld.s	$fa4, $a1, 0
	fneg.s	$fa5, $fa2
	fsel	$fa2, $fa5, $fa2, $fcc0
	fneg.s	$fa5, $fa3
	fcmp.cle.s	$fcc0, $fa0, $fa4
	fsel	$fa3, $fa5, $fa3, $fcc0
	fst.s	$fa1, $a2, -8
	fst.s	$fa2, $a2, -4
	fst.s	$fa3, $a2, 0
	st.w	$zero, $a2, 4
	addi.d	$a3, $a3, -1
	addi.d	$a1, $a1, 16
	addi.d	$a2, $a2, 16
	bnez	$a3, .LBB10_2
.LBB10_3:                               # %._crit_edge
	ret
.Lfunc_end10:
	.size	_ZNK12btBox2dShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i, .Lfunc_end10-_ZNK12btBox2dShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
                                        # -- End function
	.section	.text._ZNK12btBox2dShape36getNumPreferredPenetrationDirectionsEv,"axG",@progbits,_ZNK12btBox2dShape36getNumPreferredPenetrationDirectionsEv,comdat
	.weak	_ZNK12btBox2dShape36getNumPreferredPenetrationDirectionsEv # -- Begin function _ZNK12btBox2dShape36getNumPreferredPenetrationDirectionsEv
	.p2align	5
	.type	_ZNK12btBox2dShape36getNumPreferredPenetrationDirectionsEv,@function
_ZNK12btBox2dShape36getNumPreferredPenetrationDirectionsEv: # @_ZNK12btBox2dShape36getNumPreferredPenetrationDirectionsEv
# %bb.0:
	ori	$a0, $zero, 6
	ret
.Lfunc_end11:
	.size	_ZNK12btBox2dShape36getNumPreferredPenetrationDirectionsEv, .Lfunc_end11-_ZNK12btBox2dShape36getNumPreferredPenetrationDirectionsEv
                                        # -- End function
	.section	.text._ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3,"axG",@progbits,_ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3,comdat
	.weak	_ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3 # -- Begin function _ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3
	.p2align	5
	.type	_ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3,@function
_ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3: # @_ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3
# %bb.0:
	ori	$a0, $zero, 5
	bltu	$a0, $a1, .LBB12_2
# %bb.1:                                # %switch.lookup
	slli.d	$a0, $a1, 2
	pcalau12i	$a1, %pc_hi20(.Lswitch.table._ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table._ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3)
	fldx.s	$fa0, $a1, $a0
	pcalau12i	$a1, %pc_hi20(.Lswitch.table._ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3.1)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table._ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3.1)
	fldx.s	$fa1, $a1, $a0
	pcalau12i	$a1, %pc_hi20(.Lswitch.table._ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3.2)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table._ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3.2)
	fldx.s	$fa2, $a1, $a0
	vrepli.b	$vr3, 0
	vextrins.w	$vr3, $vr0, 0
	vextrins.w	$vr3, $vr1, 16
	vextrins.w	$vr3, $vr2, 32
	vst	$vr3, $a2, 0
.LBB12_2:
	ret
.Lfunc_end12:
	.size	_ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3, .Lfunc_end12-_ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3
                                        # -- End function
	.section	.text._ZNK12btBox2dShape14getNumVerticesEv,"axG",@progbits,_ZNK12btBox2dShape14getNumVerticesEv,comdat
	.weak	_ZNK12btBox2dShape14getNumVerticesEv # -- Begin function _ZNK12btBox2dShape14getNumVerticesEv
	.p2align	5
	.type	_ZNK12btBox2dShape14getNumVerticesEv,@function
_ZNK12btBox2dShape14getNumVerticesEv:   # @_ZNK12btBox2dShape14getNumVerticesEv
# %bb.0:
	ori	$a0, $zero, 4
	ret
.Lfunc_end13:
	.size	_ZNK12btBox2dShape14getNumVerticesEv, .Lfunc_end13-_ZNK12btBox2dShape14getNumVerticesEv
                                        # -- End function
	.section	.text._ZNK12btBox2dShape11getNumEdgesEv,"axG",@progbits,_ZNK12btBox2dShape11getNumEdgesEv,comdat
	.weak	_ZNK12btBox2dShape11getNumEdgesEv # -- Begin function _ZNK12btBox2dShape11getNumEdgesEv
	.p2align	5
	.type	_ZNK12btBox2dShape11getNumEdgesEv,@function
_ZNK12btBox2dShape11getNumEdgesEv:      # @_ZNK12btBox2dShape11getNumEdgesEv
# %bb.0:
	ori	$a0, $zero, 12
	ret
.Lfunc_end14:
	.size	_ZNK12btBox2dShape11getNumEdgesEv, .Lfunc_end14-_ZNK12btBox2dShape11getNumEdgesEv
                                        # -- End function
	.section	.text._ZNK12btBox2dShape7getEdgeEiR9btVector3S1_,"axG",@progbits,_ZNK12btBox2dShape7getEdgeEiR9btVector3S1_,comdat
	.weak	_ZNK12btBox2dShape7getEdgeEiR9btVector3S1_ # -- Begin function _ZNK12btBox2dShape7getEdgeEiR9btVector3S1_
	.p2align	5
	.type	_ZNK12btBox2dShape7getEdgeEiR9btVector3S1_,@function
_ZNK12btBox2dShape7getEdgeEiR9btVector3S1_: # @_ZNK12btBox2dShape7getEdgeEiR9btVector3S1_
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
	ori	$a4, $zero, 11
	move	$fp, $a3
	move	$s1, $a0
	bltu	$a4, $a1, .LBB15_2
# %bb.1:                                # %switch.lookup
	slli.d	$a3, $a1, 2
	pcalau12i	$a1, %pc_hi20(.Lswitch.table._ZNK12btBox2dShape7getEdgeEiR9btVector3S1_)
	addi.d	$a1, $a1, %pc_lo12(.Lswitch.table._ZNK12btBox2dShape7getEdgeEiR9btVector3S1_)
	ldx.w	$a1, $a1, $a3
	pcalau12i	$a4, %pc_hi20(.Lswitch.table._ZNK12btBox2dShape7getEdgeEiR9btVector3S1_.3)
	addi.d	$a4, $a4, %pc_lo12(.Lswitch.table._ZNK12btBox2dShape7getEdgeEiR9btVector3S1_.3)
	ldx.w	$s0, $a4, $a3
	b	.LBB15_3
.LBB15_2:
	move	$a1, $zero
	move	$s0, $zero
.LBB15_3:
	ld.d	$a3, $s1, 0
	ld.d	$a3, $a3, 168
	move	$a0, $s1
	jirl	$ra, $a3, 0
	ld.d	$a0, $s1, 0
	ld.d	$a3, $a0, 168
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	jr	$a3
.Lfunc_end15:
	.size	_ZNK12btBox2dShape7getEdgeEiR9btVector3S1_, .Lfunc_end15-_ZNK12btBox2dShape7getEdgeEiR9btVector3S1_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK12btBox2dShape9getVertexEiR9btVector3,"axG",@progbits,_ZNK12btBox2dShape9getVertexEiR9btVector3,comdat
	.weak	_ZNK12btBox2dShape9getVertexEiR9btVector3 # -- Begin function _ZNK12btBox2dShape9getVertexEiR9btVector3
	.p2align	5
	.type	_ZNK12btBox2dShape9getVertexEiR9btVector3,@function
_ZNK12btBox2dShape9getVertexEiR9btVector3: # @_ZNK12btBox2dShape9getVertexEiR9btVector3
	.cfi_startproc
# %bb.0:
	fld.s	$fa0, $a0, 40
	fld.s	$fa1, $a0, 44
	fld.s	$fa2, $a0, 48
	andi	$a0, $a1, 1
	xori	$a3, $a0, 1
	movgr2fr.w	$fa3, $a3
	ffint.s.w	$fa3, $fa3
	movgr2fr.w	$fa4, $a0
	ffint.s.w	$fa4, $fa4
	fneg.s	$fa4, $fa4
	fmul.s	$fa4, $fa0, $fa4
	fmadd.s	$fa0, $fa0, $fa3, $fa4
	bstrpick.d	$a0, $a1, 1, 1
	xori	$a3, $a0, 1
	movgr2fr.d	$fa3, $a3
	ffint.s.l	$fa3, $fa3
	movgr2fr.d	$fa4, $a0
	ffint.s.l	$fa4, $fa4
	fneg.s	$fa4, $fa4
	fmul.s	$fa4, $fa1, $fa4
	fmadd.s	$fa1, $fa1, $fa3, $fa4
	bstrpick.d	$a0, $a1, 2, 2
	xori	$a1, $a0, 1
	movgr2fr.d	$fa3, $a1
	ffint.s.l	$fa3, $fa3
	movgr2fr.d	$fa4, $a0
	ffint.s.l	$fa4, $fa4
	fneg.s	$fa4, $fa4
	fmul.s	$fa4, $fa2, $fa4
	fmadd.s	$fa2, $fa2, $fa3, $fa4
	fst.s	$fa0, $a2, 0
	fst.s	$fa1, $a2, 4
	fst.s	$fa2, $a2, 8
	st.w	$zero, $a2, 12
	ret
.Lfunc_end16:
	.size	_ZNK12btBox2dShape9getVertexEiR9btVector3, .Lfunc_end16-_ZNK12btBox2dShape9getVertexEiR9btVector3
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK12btBox2dShape12getNumPlanesEv,"axG",@progbits,_ZNK12btBox2dShape12getNumPlanesEv,comdat
	.weak	_ZNK12btBox2dShape12getNumPlanesEv # -- Begin function _ZNK12btBox2dShape12getNumPlanesEv
	.p2align	5
	.type	_ZNK12btBox2dShape12getNumPlanesEv,@function
_ZNK12btBox2dShape12getNumPlanesEv:     # @_ZNK12btBox2dShape12getNumPlanesEv
# %bb.0:
	ori	$a0, $zero, 6
	ret
.Lfunc_end17:
	.size	_ZNK12btBox2dShape12getNumPlanesEv, .Lfunc_end17-_ZNK12btBox2dShape12getNumPlanesEv
                                        # -- End function
	.section	.text._ZNK12btBox2dShape8getPlaneER9btVector3S1_i,"axG",@progbits,_ZNK12btBox2dShape8getPlaneER9btVector3S1_i,comdat
	.weak	_ZNK12btBox2dShape8getPlaneER9btVector3S1_i # -- Begin function _ZNK12btBox2dShape8getPlaneER9btVector3S1_i
	.p2align	5
	.type	_ZNK12btBox2dShape8getPlaneER9btVector3S1_i,@function
_ZNK12btBox2dShape8getPlaneER9btVector3S1_i: # @_ZNK12btBox2dShape8getPlaneER9btVector3S1_i
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a4, $a0, 200
	move	$s0, $a2
	move	$s1, $a1
	addi.d	$a1, $sp, 32
	move	$a0, $fp
	move	$a2, $a3
	jirl	$ra, $a4, 0
	fld.s	$fa0, $sp, 32
	fld.s	$fa1, $sp, 36
	movfr2gr.s	$a0, $fa0
	fld.s	$fa2, $sp, 40
	movfr2gr.s	$a1, $fa1
	fst.s	$fa0, $s1, 0
	fst.s	$fa1, $s1, 4
	fst.s	$fa2, $s1, 8
	st.w	$zero, $s1, 12
	lu12i.w	$a2, -524288
	lu32i.d	$a2, 0
	xor	$a0, $a0, $a2
	xor	$a1, $a1, $a2
	ld.d	$a3, $fp, 0
	bstrins.d	$a0, $a1, 63, 32
	movfr2gr.s	$a1, $fa2
	xor	$a1, $a1, $a2
	ld.d	$a2, $a3, 96
	bstrpick.d	$a1, $a1, 31, 0
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 24
	addi.d	$a1, $sp, 16
	move	$a0, $fp
	jirl	$ra, $a2, 0
	st.d	$a0, $s0, 0
	st.d	$a1, $s0, 8
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.Lfunc_end18:
	.size	_ZNK12btBox2dShape8getPlaneER9btVector3S1_i, .Lfunc_end18-_ZNK12btBox2dShape8getPlaneER9btVector3S1_i
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK12btBox2dShape8isInsideERK9btVector3f,"axG",@progbits,_ZNK12btBox2dShape8isInsideERK9btVector3f,comdat
	.weak	_ZNK12btBox2dShape8isInsideERK9btVector3f # -- Begin function _ZNK12btBox2dShape8isInsideERK9btVector3f
	.p2align	5
	.type	_ZNK12btBox2dShape8isInsideERK9btVector3f,@function
_ZNK12btBox2dShape8isInsideERK9btVector3f: # @_ZNK12btBox2dShape8isInsideERK9btVector3f
# %bb.0:
	fld.s	$fa2, $a0, 40
	fld.s	$fa1, $a1, 0
	fadd.s	$fa3, $fa0, $fa2
	fcmp.cult.s	$fcc0, $fa3, $fa1
	bceqz	$fcc0, .LBB19_2
# %bb.1:
	move	$a0, $zero
	ret
.LBB19_2:
	fneg.s	$fa2, $fa2
	fsub.s	$fa2, $fa2, $fa0
	fcmp.cult.s	$fcc0, $fa1, $fa2
	bceqz	$fcc0, .LBB19_4
# %bb.3:
	move	$a0, $zero
	ret
.LBB19_4:
	fld.s	$fa2, $a0, 44
	fld.s	$fa1, $a1, 4
	fadd.s	$fa3, $fa0, $fa2
	fcmp.cult.s	$fcc0, $fa3, $fa1
	bceqz	$fcc0, .LBB19_6
# %bb.5:
	move	$a0, $zero
	ret
.LBB19_6:
	fneg.s	$fa2, $fa2
	fsub.s	$fa2, $fa2, $fa0
	fcmp.cult.s	$fcc0, $fa1, $fa2
	bceqz	$fcc0, .LBB19_8
# %bb.7:
	move	$a0, $zero
	ret
.LBB19_8:
	fld.s	$fa2, $a0, 48
	fld.s	$fa1, $a1, 8
	fadd.s	$fa3, $fa0, $fa2
	fcmp.cult.s	$fcc0, $fa3, $fa1
	bceqz	$fcc0, .LBB19_10
# %bb.9:
	move	$a0, $zero
	ret
.LBB19_10:
	fneg.s	$fa2, $fa2
	fsub.s	$fa0, $fa2, $fa0
	fcmp.cle.s	$fcc0, $fa0, $fa1
	movcf2gr	$a0, $fcc0
	ret
.Lfunc_end19:
	.size	_ZNK12btBox2dShape8isInsideERK9btVector3f, .Lfunc_end19-_ZNK12btBox2dShape8isInsideERK9btVector3f
                                        # -- End function
	.section	.text._ZNK12btBox2dShape16getPlaneEquationER9btVector4i,"axG",@progbits,_ZNK12btBox2dShape16getPlaneEquationER9btVector4i,comdat
	.weak	_ZNK12btBox2dShape16getPlaneEquationER9btVector4i # -- Begin function _ZNK12btBox2dShape16getPlaneEquationER9btVector4i
	.p2align	5
	.type	_ZNK12btBox2dShape16getPlaneEquationER9btVector4i,@function
_ZNK12btBox2dShape16getPlaneEquationER9btVector4i: # @_ZNK12btBox2dShape16getPlaneEquationER9btVector4i
	.cfi_startproc
# %bb.0:
	ori	$a3, $zero, 5
	bltu	$a3, $a2, .LBB20_10
# %bb.1:
	fld.s	$fa1, $a0, 40
	fld.s	$fa4, $a0, 44
	fld.s	$fa5, $a0, 48
	movgr2fr.w	$fa2, $zero
	vldi	$vr0, -1168
	slli.d	$a0, $a2, 2
	pcalau12i	$a2, %pc_hi20(.LJTI20_0)
	addi.d	$a2, $a2, %pc_lo12(.LJTI20_0)
	ldx.w	$a0, $a2, $a0
	add.d	$a0, $a2, $a0
	fmov.s	$fa3, $fa2
	jr	$a0
.LBB20_2:
	vldi	$vr0, -1040
	fmov.s	$fa3, $fa2
	b	.LBB20_9
.LBB20_3:
	movgr2fr.w	$fa0, $zero
	vldi	$vr3, -1168
	b	.LBB20_8
.LBB20_4:
	movgr2fr.w	$fa0, $zero
	vldi	$vr2, -1168
	b	.LBB20_6
.LBB20_5:
	movgr2fr.w	$fa0, $zero
	vldi	$vr2, -1040
.LBB20_6:                               # %.sink.split
	fmov.s	$fa1, $fa4
	fmov.s	$fa3, $fa0
	b	.LBB20_9
.LBB20_7:
	movgr2fr.w	$fa0, $zero
	vldi	$vr3, -1040
.LBB20_8:                               # %.sink.split
	fmov.s	$fa1, $fa5
	fmov.s	$fa2, $fa0
.LBB20_9:                               # %.sink.split
	fneg.s	$fa1, $fa1
	fst.s	$fa0, $a1, 0
	fst.s	$fa2, $a1, 4
	fst.s	$fa3, $a1, 8
	fst.s	$fa1, $a1, 12
.LBB20_10:
	ret
.Lfunc_end20:
	.size	_ZNK12btBox2dShape16getPlaneEquationER9btVector4i, .Lfunc_end20-_ZNK12btBox2dShape16getPlaneEquationER9btVector4i
	.cfi_endproc
	.section	.rodata._ZNK12btBox2dShape16getPlaneEquationER9btVector4i,"aG",@progbits,_ZNK12btBox2dShape16getPlaneEquationER9btVector4i,comdat
	.p2align	2, 0x0
.LJTI20_0:
	.word	.LBB20_9-.LJTI20_0
	.word	.LBB20_2-.LJTI20_0
	.word	.LBB20_4-.LJTI20_0
	.word	.LBB20_5-.LJTI20_0
	.word	.LBB20_3-.LJTI20_0
	.word	.LBB20_7-.LJTI20_0
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
.Lfunc_end21:
	.size	__clang_call_terminate, .Lfunc_end21-__clang_call_terminate
                                        # -- End function
	.type	_ZTV12btBox2dShape,@object      # @_ZTV12btBox2dShape
	.section	.data.rel.ro,"aw",@progbits
	.globl	_ZTV12btBox2dShape
	.p2align	3, 0x0
_ZTV12btBox2dShape:
	.dword	0
	.dword	_ZTI12btBox2dShape
	.dword	_ZN13btConvexShapeD2Ev
	.dword	_ZN12btBox2dShapeD0Ev
	.dword	_ZNK12btBox2dShape7getAabbERK11btTransformR9btVector3S4_
	.dword	_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf
	.dword	_ZNK16btCollisionShape20getAngularMotionDiscEv
	.dword	_ZNK16btCollisionShape27getContactBreakingThresholdEv
	.dword	_ZN12btBox2dShape15setLocalScalingERK9btVector3
	.dword	_ZNK21btConvexInternalShape15getLocalScalingEv
	.dword	_ZNK12btBox2dShape21calculateLocalInertiaEfR9btVector3
	.dword	_ZNK12btBox2dShape7getNameEv
	.dword	_ZN12btBox2dShape9setMarginEf
	.dword	_ZNK21btConvexInternalShape9getMarginEv
	.dword	_ZNK12btBox2dShape24localGetSupportingVertexERK9btVector3
	.dword	_ZNK12btBox2dShape37localGetSupportingVertexWithoutMarginERK9btVector3
	.dword	_ZNK12btBox2dShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i
	.dword	_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_
	.dword	_ZNK12btBox2dShape36getNumPreferredPenetrationDirectionsEv
	.dword	_ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3
	.dword	_ZNK12btBox2dShape14getNumVerticesEv
	.dword	_ZNK12btBox2dShape11getNumEdgesEv
	.dword	_ZNK12btBox2dShape7getEdgeEiR9btVector3S1_
	.dword	_ZNK12btBox2dShape9getVertexEiR9btVector3
	.dword	_ZNK12btBox2dShape12getNumPlanesEv
	.dword	_ZNK12btBox2dShape8getPlaneER9btVector3S1_i
	.dword	_ZNK12btBox2dShape8isInsideERK9btVector3f
	.dword	_ZNK12btBox2dShape16getPlaneEquationER9btVector4i
	.size	_ZTV12btBox2dShape, 224

	.type	_ZTI12btBox2dShape,@object      # @_ZTI12btBox2dShape
	.globl	_ZTI12btBox2dShape
	.p2align	3, 0x0
_ZTI12btBox2dShape:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTS12btBox2dShape
	.dword	_ZTI23btPolyhedralConvexShape
	.size	_ZTI12btBox2dShape, 24

	.type	_ZTS12btBox2dShape,@object      # @_ZTS12btBox2dShape
	.section	.rodata,"a",@progbits
	.globl	_ZTS12btBox2dShape
_ZTS12btBox2dShape:
	.asciz	"12btBox2dShape"
	.size	_ZTS12btBox2dShape, 15

	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Box2d"
	.size	.L.str, 6

	.type	.Lswitch.table._ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3,@object # @switch.table._ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3
	.section	.rodata,"a",@progbits
	.p2align	2, 0x0
.Lswitch.table._ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3:
	.word	0x3f800000                      # float 1
	.word	0xbf800000                      # float -1
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.size	.Lswitch.table._ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3, 24

	.type	.Lswitch.table._ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3.1,@object # @switch.table._ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3.1
	.p2align	2, 0x0
.Lswitch.table._ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3.1:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
	.word	0xbf800000                      # float -1
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.size	.Lswitch.table._ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3.1, 24

	.type	.Lswitch.table._ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3.2,@object # @switch.table._ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3.2
	.p2align	2, 0x0
.Lswitch.table._ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3.2:
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x00000000                      # float 0
	.word	0x3f800000                      # float 1
	.word	0xbf800000                      # float -1
	.size	.Lswitch.table._ZNK12btBox2dShape32getPreferredPenetrationDirectionEiR9btVector3.2, 24

	.type	.Lswitch.table._ZNK12btBox2dShape7getEdgeEiR9btVector3S1_,@object # @switch.table._ZNK12btBox2dShape7getEdgeEiR9btVector3S1_
	.p2align	2, 0x0
.Lswitch.table._ZNK12btBox2dShape7getEdgeEiR9btVector3S1_:
	.word	0                               # 0x0
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	0                               # 0x0
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.size	.Lswitch.table._ZNK12btBox2dShape7getEdgeEiR9btVector3S1_, 48

	.type	.Lswitch.table._ZNK12btBox2dShape7getEdgeEiR9btVector3S1_.3,@object # @switch.table._ZNK12btBox2dShape7getEdgeEiR9btVector3S1_.3
	.p2align	2, 0x0
.Lswitch.table._ZNK12btBox2dShape7getEdgeEiR9btVector3S1_.3:
	.word	1                               # 0x1
	.word	2                               # 0x2
	.word	3                               # 0x3
	.word	3                               # 0x3
	.word	4                               # 0x4
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	5                               # 0x5
	.word	6                               # 0x6
	.word	7                               # 0x7
	.word	7                               # 0x7
	.size	.Lswitch.table._ZNK12btBox2dShape7getEdgeEiR9btVector3S1_.3, 48

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
	.addrsig_sym _ZTI12btBox2dShape
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTS12btBox2dShape
	.addrsig_sym _ZTI23btPolyhedralConvexShape
