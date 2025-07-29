	.file	"skip_with_error_test.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.p2align	5                               # -- Begin function _ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EED2Ev
	.type	_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EED2Ev,@function
_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EED2Ev: # @_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EED2Ev
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
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$s0, $fp, 8
	beq	$a0, $s0, .LBB0_8
# %bb.1:                                # %.lr.ph.i.preheader
	addi.d	$s1, $a0, 56
	b	.LBB0_3
	.p2align	4, , 16
.LBB0_2:                                # %_ZSt8_DestroyIN12_GLOBAL__N_18TestCaseEEvPT_.exit.i
                                        #   in Loop: Header=BB0_3 Depth=1
	addi.d	$a0, $s1, 16
	addi.d	$s1, $s1, 72
	beq	$a0, $s0, .LBB0_7
.LBB0_3:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, -16
	beq	$s1, $a0, .LBB0_5
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a1, $s1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_5:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $s1, -56
	addi.d	$a1, $s1, -40
	beq	$a1, $a0, .LBB0_2
# %bb.6:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
                                        #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB0_2
.LBB0_7:                                # %_ZSt8_DestroyIPN12_GLOBAL__N_18TestCaseES1_EvT_S3_RSaIT0_E.exitthread-pre-split
	ld.d	$a0, $fp, 0
.LBB0_8:                                # %_ZSt8_DestroyIPN12_GLOBAL__N_18TestCaseES1_EvT_S3_RSaIT0_E.exit
	beqz	$a0, .LBB0_10
# %bb.9:
	ld.d	$a1, $fp, 16
	sub.d	$a1, $a1, $a0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB0_10:                               # %_ZNSt12_Vector_baseIN12_GLOBAL__N_18TestCaseESaIS1_EED2Ev.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end0:
	.size	_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EED2Ev, .Lfunc_end0-_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EED2Ev
	.cfi_endproc
                                        # -- End function
	.hidden	_Z19BM_error_no_runningRN9benchmark5StateE # -- Begin function _Z19BM_error_no_runningRN9benchmark5StateE
	.globl	_Z19BM_error_no_runningRN9benchmark5StateE
	.p2align	5
	.type	_Z19BM_error_no_runningRN9benchmark5StateE,@function
_Z19BM_error_no_runningRN9benchmark5StateE: # @_Z19BM_error_no_runningRN9benchmark5StateE
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:                                # %._crit_edge.i.i
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 5
	addi.d	$s0, $sp, 24
	st.d	$s0, $sp, 8
	st.d	$a2, $sp, 24
	st.d	$a1, $sp, 29
	ori	$a1, $zero, 13
	st.d	$a1, $sp, 16
	st.b	$zero, $sp, 37
.Ltmp0:
	addi.d	$a1, $sp, 8
	pcaddu18i	$ra, %call36(_ZN9benchmark5State13SkipWithErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp1:
# %bb.1:
	ld.d	$a0, $sp, 8
	beq	$a0, $s0, .LBB1_3
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_3:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB1_4:
.Ltmp2:
	ld.d	$a2, $sp, 8
	move	$fp, $a0
	beq	$a2, $s0, .LBB1_6
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_6:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_Z19BM_error_no_runningRN9benchmark5StateE, .Lfunc_end1-_Z19BM_error_no_runningRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table1:
.Lexception0:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end0-.Lcst_begin0
.Lcst_begin0:
	.uleb128 .Ltmp0-.Lfunc_begin0           # >> Call Site 1 <<
	.uleb128 .Ltmp1-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp1
	.uleb128 .Ltmp2-.Lfunc_begin0           #     jumps to .Ltmp2
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp1-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Lfunc_end1-.Ltmp1             #   Call between .Ltmp1 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_18AddCasesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt16initializer_listINS_8TestCaseEE
	.type	_ZN12_GLOBAL__N_18AddCasesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt16initializer_listINS_8TestCaseEE,@function
_ZN12_GLOBAL__N_18AddCasesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt16initializer_listINS_8TestCaseEE: # @_ZN12_GLOBAL__N_18AddCasesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt16initializer_listINS_8TestCaseEE
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -256
	.cfi_def_cfa_offset 256
	st.d	$ra, $sp, 248                   # 8-byte Folded Spill
	st.d	$fp, $sp, 240                   # 8-byte Folded Spill
	st.d	$s0, $sp, 232                   # 8-byte Folded Spill
	st.d	$s1, $sp, 224                   # 8-byte Folded Spill
	st.d	$s2, $sp, 216                   # 8-byte Folded Spill
	st.d	$s3, $sp, 208                   # 8-byte Folded Spill
	st.d	$s4, $sp, 200                   # 8-byte Folded Spill
	st.d	$s5, $sp, 192                   # 8-byte Folded Spill
	st.d	$s6, $sp, 184                   # 8-byte Folded Spill
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	st.d	$s8, $sp, 168                   # 8-byte Folded Spill
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
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	beqz	$a2, .LBB2_67
# %bb.1:                                # %.lr.ph
	move	$fp, $a1
	slli.d	$a0, $a2, 6
	alsl.d	$a0, $a2, $a0, 3
	add.d	$a0, $a1, $a0
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	addi.d	$s8, $sp, 112
	addi.d	$s3, $sp, 152
	addi.d	$s2, $sp, 80
	ori	$s0, $zero, 16
	addi.w	$s1, $zero, -1
	addi.w	$a0, $zero, -2
	lu52i.d	$a0, $a0, 2047
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	lu12i.w	$a0, 233016
	ori	$a0, $a0, 3641
	lu32i.d	$a0, -466034
	lu52i.d	$a0, $a0, -1821
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	lu12i.w	$a0, -233017
	ori	$a0, $a0, 455
	lu32i.d	$a0, 466033
	lu52i.d	$a0, $a0, 28
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	b	.LBB2_3
	.p2align	4, , 16
.LBB2_2:                                # %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit
                                        #   in Loop: Header=BB2_3 Depth=1
	addi.d	$fp, $fp, 72
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beq	$fp, $a0, .LBB2_67
.LBB2_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_55 Depth 2
	ld.d	$a1, $fp, 8
	ld.d	$s4, $fp, 0
	st.d	$s8, $sp, 96
	st.d	$a1, $sp, 64
	move	$a0, $s8
	bltu	$a1, $s0, .LBB2_5
# %bb.4:                                # %.noexc.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	addi.d	$a0, $sp, 96
	addi.d	$a1, $sp, 64
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64
	st.d	$a0, $sp, 96
	st.d	$a1, $sp, 112
.LBB2_5:                                # %._crit_edge.i.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	beq	$a1, $s1, .LBB2_9
# %bb.6:                                # %._crit_edge.i.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	bnez	$a1, .LBB2_8
# %bb.7:                                #   in Loop: Header=BB2_3 Depth=1
	ld.b	$a1, $s4, 0
	st.b	$a1, $a0, 0
	b	.LBB2_9
	.p2align	4, , 16
.LBB2_8:                                #   in Loop: Header=BB2_3 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB2_9:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 64
	ld.b	$a2, $fp, 32
	st.d	$a0, $sp, 104
	ld.d	$a1, $fp, 48
	ld.d	$s4, $fp, 40
	st.b	$a2, $sp, 128
	st.d	$s3, $sp, 136
	st.d	$a1, $sp, 64
	bltu	$a1, $s0, .LBB2_12
# %bb.10:                               # %.noexc.i6.i
                                        #   in Loop: Header=BB2_3 Depth=1
.Ltmp3:
	addi.d	$a1, $sp, 64
	addi.d	$a0, $sp, 136
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp4:
# %bb.11:                               # %.noexc.i
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$s3, $a0
	ld.d	$a1, $sp, 64
	st.d	$a0, $sp, 136
	st.d	$a1, $sp, 152
.LBB2_12:                               # %._crit_edge.i.i5.i
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$s0, $sp, 48                    # 8-byte Folded Reload
	beq	$a1, $s1, .LBB2_16
# %bb.13:                               # %._crit_edge.i.i5.i
                                        #   in Loop: Header=BB2_3 Depth=1
	bnez	$a1, .LBB2_15
# %bb.14:                               #   in Loop: Header=BB2_3 Depth=1
	ld.b	$a1, $s4, 0
	st.b	$a1, $s3, 0
	b	.LBB2_16
	.p2align	4, , 16
.LBB2_15:                               #   in Loop: Header=BB2_3 Depth=1
	addi.d	$a2, $a1, 1
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB2_16:                               # %_ZN12_GLOBAL__N_18TestCaseC2ERKS0_.exit
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 64
	st.d	$a0, $sp, 144
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s6, $a0, 0
	ld.d	$s7, $a0, 8
	ld.d	$s4, $sp, 96
	ld.d	$s5, $sp, 104
	st.d	$s2, $sp, 64
	st.d	$zero, $sp, 72
	st.b	$zero, $sp, 80
	add.d	$a1, $s5, $s7
.Ltmp6:
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp7:
# %bb.17:                               #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 72
	sub.d	$a0, $s0, $a0
	bltu	$a0, $s7, .LBB2_68
# %bb.18:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
.Ltmp8:
	addi.d	$a0, $sp, 64
	move	$a1, $s6
	move	$a2, $s7
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp9:
# %bb.19:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 72
	sub.d	$a0, $s0, $a0
	bltu	$a0, $s5, .LBB2_68
# %bb.20:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
.Ltmp10:
	addi.d	$a0, $sp, 64
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp11:
# %bb.21:                               # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_.exit
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 96
	beq	$a0, $s8, .LBB2_25
# %bb.22:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $sp, 64
	addi.d	$s3, $sp, 152
	beq	$a1, $s2, .LBB2_28
# %bb.23:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a2, $sp, 112
	vld	$vr0, $sp, 72
	st.d	$a1, $sp, 96
	vst	$vr0, $sp, 104
	beqz	$a0, .LBB2_27
.LBB2_24:                               #   in Loop: Header=BB2_3 Depth=1
	st.d	$a0, $sp, 64
	st.d	$a2, $sp, 80
	b	.LBB2_33
	.p2align	4, , 16
.LBB2_25:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $sp, 64
	addi.d	$s3, $sp, 152
	beq	$a1, $s2, .LBB2_28
# %bb.26:                               #   in Loop: Header=BB2_3 Depth=1
	move	$a0, $zero
                                        # implicit-def: $r6
	vld	$vr0, $sp, 72
	st.d	$a1, $sp, 96
	vst	$vr0, $sp, 104
	bnez	$a0, .LBB2_24
.LBB2_27:                               #   in Loop: Header=BB2_3 Depth=1
	st.d	$s2, $sp, 64
	move	$a0, $s2
	b	.LBB2_33
	.p2align	4, , 16
.LBB2_28:                               #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a2, $sp, 72
	beqz	$a2, .LBB2_32
# %bb.29:                               #   in Loop: Header=BB2_3 Depth=1
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB2_31
# %bb.30:                               #   in Loop: Header=BB2_3 Depth=1
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB2_32
.LBB2_31:                               #   in Loop: Header=BB2_3 Depth=1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB2_32:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 72
	ld.d	$a1, $sp, 96
	st.d	$a0, $sp, 104
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 64
.LBB2_33:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
                                        #   in Loop: Header=BB2_3 Depth=1
	st.d	$zero, $sp, 72
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 64
	beq	$a0, $s2, .LBB2_35
# %bb.34:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_35:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
                                        #   in Loop: Header=BB2_3 Depth=1
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_115ExpectedResultsE)
	addi.d	$s7, $a0, %pc_lo12(_ZN12_GLOBAL__N_115ExpectedResultsE)
	ld.d	$s0, $s7, 8
	ld.d	$a0, $s7, 16
	beq	$s0, $a0, .LBB2_38
# %bb.36:                               #   in Loop: Header=BB2_3 Depth=1
	addi.d	$a0, $s0, 16
	st.d	$a0, $s0, 0
	ld.d	$a1, $sp, 96
	beq	$a1, $s8, .LBB2_42
# %bb.37:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i14
                                        #   in Loop: Header=BB2_3 Depth=1
	st.d	$a1, $s0, 0
	ld.d	$a0, $sp, 112
	ld.d	$s1, $sp, 104
	st.d	$a0, $s0, 16
	b	.LBB2_43
	.p2align	4, , 16
.LBB2_38:                               #   in Loop: Header=BB2_3 Depth=1
	ld.d	$s4, $s7, 0
	sub.d	$s1, $s0, $s4
	addi.w	$a0, $zero, -8
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB2_70
# %bb.39:                               # %_ZNKSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	srli.d	$a0, $s1, 3
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	xor	$a1, $s0, $s4
	sltui	$a1, $a1, 1
	masknez	$a2, $a0, $a1
	ori	$a3, $zero, 1
	maskeqz	$a1, $a3, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	sltu	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s3, $a0, $a1
	slli.d	$a0, $s3, 6
	alsl.d	$a0, $s3, $a0, 3
.Ltmp13:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp14:
# %bb.40:                               # %.noexc15
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$s5, $a0
	ld.d	$a1, $sp, 96
	add.d	$s6, $a0, $s1
	addi.d	$a0, $s6, 16
	stx.d	$a0, $s5, $s1
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	beq	$a1, $s8, .LBB2_47
# %bb.41:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 112
	ld.d	$s1, $sp, 104
	st.d	$a1, $s6, 0
	st.d	$a0, $s6, 16
	b	.LBB2_48
	.p2align	4, , 16
.LBB2_42:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$s1, $sp, 104
	addi.d	$a2, $s1, 1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB2_43:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	st.d	$s1, $s0, 8
	ld.b	$a0, $sp, 128
	st.b	$a0, $s0, 32
	addi.d	$a0, $s0, 56
	st.d	$a0, $s0, 40
	ld.d	$a1, $sp, 136
	st.d	$s8, $sp, 96
	st.d	$zero, $sp, 104
	st.b	$zero, $sp, 112
	beq	$a1, $s3, .LBB2_45
# %bb.44:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	st.d	$a1, $s0, 40
	ld.d	$a0, $sp, 152
	ld.d	$s1, $sp, 144
	st.d	$a0, $s0, 56
	b	.LBB2_46
	.p2align	4, , 16
.LBB2_45:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i5.i.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$s1, $sp, 144
	addi.d	$a2, $s1, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB2_46:                               # %_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE9push_backEOS1_.exit.thread
                                        #   in Loop: Header=BB2_3 Depth=1
	st.d	$s1, $s0, 48
	st.d	$s3, $sp, 136
	st.d	$zero, $sp, 144
	st.b	$zero, $sp, 152
	addi.d	$a0, $s0, 72
	st.d	$a0, $s7, 8
	ori	$s0, $zero, 16
	b	.LBB2_65
.LBB2_47:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$s1, $sp, 104
	addi.d	$a2, $s1, 1
	move	$a1, $s8
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB2_48:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	st.d	$s1, $s6, 8
	st.d	$s8, $sp, 96
	ld.b	$a0, $sp, 128
	st.d	$zero, $sp, 104
	ld.d	$a1, $sp, 136
	st.b	$zero, $sp, 112
	st.b	$a0, $s6, 32
	addi.d	$a0, $s6, 56
	st.d	$a0, $s6, 40
	addi.d	$s3, $sp, 152
	beq	$a1, $s3, .LBB2_50
# %bb.49:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 152
	ld.d	$s1, $sp, 144
	st.d	$a1, $s6, 40
	st.d	$a0, $s6, 56
	b	.LBB2_51
.LBB2_50:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i5.i.i.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$s1, $sp, 144
	addi.d	$a2, $s1, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB2_51:                               # %_ZN12_GLOBAL__N_18TestCaseC2EOS0_.exit.i.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	st.d	$s1, $s6, 48
	st.d	$s3, $sp, 136
	st.d	$zero, $sp, 144
	st.b	$zero, $sp, 152
	move	$s1, $s5
	beq	$s0, $s4, .LBB2_61
# %bb.52:                               # %.lr.ph.i.i.i.i.i.i.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$s8, $zero
	b	.LBB2_55
	.p2align	4, , 16
.LBB2_53:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i4.i.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB2_55 Depth=2
	st.d	$a1, $s3, 40
	ld.d	$a1, $s6, 0
	st.d	$a1, $a0, 0
	ld.d	$s2, $s1, 48
.LBB2_54:                               # %_ZSt19__relocate_object_aIN12_GLOBAL__N_18TestCaseES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i.i.i
                                        #   in Loop: Header=BB2_55 Depth=2
	st.d	$s2, $s3, 48
	st.d	$s6, $s1, 40
	st.d	$zero, $s1, 48
	addi.d	$s8, $s8, 72
	add.d	$a0, $s4, $s8
	st.b	$zero, $s6, 0
	beq	$a0, $s0, .LBB2_60
.LBB2_55:                               # %.lr.ph.i.i.i.i.i.i
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	add.d	$s3, $s5, $s8
	addi.d	$a0, $s3, 16
	stx.d	$a0, $s5, $s8
	ldx.d	$a1, $s4, $s8
	add.d	$s1, $s4, $s8
	addi.d	$s6, $s1, 16
	beq	$s6, $a1, .LBB2_57
# %bb.56:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB2_55 Depth=2
	stx.d	$a1, $s5, $s8
	ld.d	$a1, $s6, 0
	st.d	$a1, $a0, 0
	ld.d	$s2, $s1, 8
	b	.LBB2_58
	.p2align	4, , 16
.LBB2_57:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB2_55 Depth=2
	ld.d	$s2, $s1, 8
	addi.d	$a2, $s2, 1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB2_58:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB2_55 Depth=2
	st.d	$s2, $s3, 8
	ld.b	$a0, $s1, 32
	stx.d	$s6, $s4, $s8
	st.d	$zero, $s1, 8
	st.b	$zero, $s6, 0
	st.b	$a0, $s3, 32
	addi.d	$a0, $s3, 56
	st.d	$a0, $s3, 40
	ld.d	$a1, $s1, 40
	addi.d	$s6, $s1, 56
	bne	$s6, $a1, .LBB2_53
# %bb.59:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i5.i.i.i.i.i.i.i.i
                                        #   in Loop: Header=BB2_55 Depth=2
	ld.d	$s2, $s1, 48
	addi.d	$a2, $s2, 1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB2_54
	.p2align	4, , 16
.LBB2_60:                               # %_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i.loopexit
                                        #   in Loop: Header=BB2_3 Depth=1
	add.d	$s1, $s5, $s8
	addi.d	$s2, $sp, 80
	addi.d	$s8, $sp, 112
	addi.d	$s3, $sp, 152
.LBB2_61:                               # %_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	beqz	$s4, .LBB2_63
# %bb.62:                               # %_ZNSt12_Vector_baseIN12_GLOBAL__N_18TestCaseESaIS1_EE13_M_deallocateEPS1_m.exit.i.i.i.i
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $s7, 16
	sub.d	$a1, $a0, $s4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_63:                               # %_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EE9push_backEOS1_.exit
                                        #   in Loop: Header=BB2_3 Depth=1
	addi.d	$a1, $s1, 72
	st.d	$s5, $s7, 0
	ld.d	$a0, $sp, 136
	st.d	$a1, $s7, 8
	ori	$a1, $zero, 72
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	mul.d	$a1, $a2, $a1
	add.d	$a1, $s5, $a1
	st.d	$a1, $s7, 16
	ori	$s0, $zero, 16
	beq	$a0, $s3, .LBB2_65
# %bb.64:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $sp, 152
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_65:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i17
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $sp, 96
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	beq	$a0, $s8, .LBB2_2
# %bb.66:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $sp, 112
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB2_2
.LBB2_67:                               # %._crit_edge
	ld.d	$s8, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 232                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 240                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 248                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 256
	ret
.LBB2_68:                               # %.invoke.i.i
.Ltmp19:
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a0, $a0, %pc_lo12(.L.str.49)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp20:
# %bb.69:                               # %.cont.i.i
.LBB2_70:
.Ltmp16:
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a0, $a0, %pc_lo12(.L.str.50)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp17:
# %bb.71:                               # %.noexc
.LBB2_72:                               # %.loopexit.split-lp2
.Ltmp18:
	b	.LBB2_74
.LBB2_73:                               # %.loopexit1
.Ltmp15:
.LBB2_74:
	move	$fp, $a0
	addi.d	$a0, $sp, 96
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_18TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_75:
.Ltmp5:
	ld.d	$a2, $sp, 96
	move	$fp, $a0
	beq	$a2, $s8, .LBB2_77
# %bb.76:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	ld.d	$a0, $sp, 112
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_77:                               # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_78:                               # %.loopexit.split-lp
.Ltmp21:
	move	$fp, $a0
	addi.d	$s2, $sp, 80
	b	.LBB2_80
.LBB2_79:                               # %.loopexit
.Ltmp12:
	move	$fp, $a0
.LBB2_80:
	ld.d	$a0, $sp, 64
	beq	$a0, $s2, .LBB2_82
# %bb.81:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
	ld.d	$a1, $sp, 80
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_82:
	addi.d	$a0, $sp, 96
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_18TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZN12_GLOBAL__N_18AddCasesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt16initializer_listINS_8TestCaseEE, .Lfunc_end2-_ZN12_GLOBAL__N_18AddCasesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt16initializer_listINS_8TestCaseEE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table2:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp3-.Lfunc_begin1           #   Call between .Lfunc_begin1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin1           # >> Call Site 2 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin1           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin1           # >> Call Site 3 <<
	.uleb128 .Ltmp6-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin1           # >> Call Site 4 <<
	.uleb128 .Ltmp11-.Ltmp6                 #   Call between .Ltmp6 and .Ltmp11
	.uleb128 .Ltmp12-.Lfunc_begin1          #     jumps to .Ltmp12
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp13-.Ltmp11                #   Call between .Ltmp11 and .Ltmp13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp14-.Ltmp13                #   Call between .Ltmp13 and .Ltmp14
	.uleb128 .Ltmp15-.Lfunc_begin1          #     jumps to .Ltmp15
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp19-.Ltmp14                #   Call between .Ltmp14 and .Ltmp19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp20-.Ltmp19                #   Call between .Ltmp19 and .Ltmp20
	.uleb128 .Ltmp21-.Lfunc_begin1          #     jumps to .Ltmp21
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp16-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp17-.Ltmp16                #   Call between .Ltmp16 and .Ltmp17
	.uleb128 .Ltmp18-.Lfunc_begin1          #     jumps to .Ltmp18
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp17-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Lfunc_end2-.Ltmp17            #   Call between .Ltmp17 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_18TestCaseD2Ev
	.type	_ZN12_GLOBAL__N_18TestCaseD2Ev,@function
_ZN12_GLOBAL__N_18TestCaseD2Ev:         # @_ZN12_GLOBAL__N_18TestCaseD2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 40
	addi.d	$a1, $fp, 56
	beq	$a0, $a1, .LBB3_2
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_2:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $fp, 0
	addi.d	$a1, $fp, 16
	beq	$a0, $a1, .LBB3_4
# %bb.3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB3_4:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end3:
	.size	_ZN12_GLOBAL__N_18TestCaseD2Ev, .Lfunc_end3-_ZN12_GLOBAL__N_18TestCaseD2Ev
	.cfi_endproc
                                        # -- End function
	.hidden	_Z23BM_error_before_runningRN9benchmark5StateE # -- Begin function _Z23BM_error_before_runningRN9benchmark5StateE
	.globl	_Z23BM_error_before_runningRN9benchmark5StateE
	.p2align	5
	.type	_Z23BM_error_before_runningRN9benchmark5StateE,@function
_Z23BM_error_before_runningRN9benchmark5StateE: # @_Z23BM_error_before_runningRN9benchmark5StateE
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:                                # %._crit_edge.i.i
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 5
	addi.d	$s0, $sp, 24
	st.d	$s0, $sp, 8
	st.d	$a1, $sp, 24
	st.d	$a0, $sp, 29
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 37
.Ltmp22:
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State13SkipWithErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp23:
# %bb.1:
	ld.d	$a0, $sp, 8
	beq	$a0, $s0, .LBB4_3
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_3:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $fp, 0
	blez	$a0, .LBB4_5
.LBB4_4:
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._Z23BM_error_before_runningRN9benchmark5StateE)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._Z23BM_error_before_runningRN9benchmark5StateE)
	ori	$a2, $zero, 75
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB4_5:
	ld.bu	$a0, $fp, 24
	bnez	$a0, .LBB4_8
# %bb.6:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 28
	bnez	$a0, .LBB4_8
# %bb.7:
	ld.d	$a0, $fp, 0
	ori	$a1, $zero, 1
	bge	$a0, $a1, .LBB4_4
.LBB4_8:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB4_9:
.Ltmp24:
	ld.d	$a2, $sp, 8
	move	$fp, $a0
	beq	$a2, $s0, .LBB4_11
# %bb.10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_11:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_Z23BM_error_before_runningRN9benchmark5StateE, .Lfunc_end4-_Z23BM_error_before_runningRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table4:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Ltmp22-.Lfunc_begin2          # >> Call Site 1 <<
	.uleb128 .Ltmp23-.Ltmp22                #   Call between .Ltmp22 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin2          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Lfunc_end4-.Ltmp23            #   Call between .Ltmp23 and .Lfunc_end4
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.hidden	_Z29BM_error_before_running_batchRN9benchmark5StateE # -- Begin function _Z29BM_error_before_running_batchRN9benchmark5StateE
	.globl	_Z29BM_error_before_running_batchRN9benchmark5StateE
	.p2align	5
	.type	_Z29BM_error_before_running_batchRN9benchmark5StateE,@function
_Z29BM_error_before_running_batchRN9benchmark5StateE: # @_Z29BM_error_before_running_batchRN9benchmark5StateE
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:                                # %._crit_edge.i.i
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 5
	addi.d	$s0, $sp, 24
	st.d	$s0, $sp, 8
	st.d	$a1, $sp, 24
	st.d	$a0, $sp, 29
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 37
.Ltmp25:
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State13SkipWithErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp26:
# %bb.1:
	ld.d	$a0, $sp, 8
	beq	$a0, $s0, .LBB5_3
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_3:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $fp, 0
	ori	$a1, $zero, 17
	blt	$a0, $a1, .LBB5_6
.LBB5_4:
	addi.d	$a1, $a0, -17
.LBB5_5:
	st.d	$a1, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._Z29BM_error_before_running_batchRN9benchmark5StateE)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._Z29BM_error_before_running_batchRN9benchmark5StateE)
	ori	$a2, $zero, 84
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB5_6:
	ld.bu	$a1, $fp, 24
	bnez	$a1, .LBB5_9
# %bb.7:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.w	$a1, $fp, 28
	ld.d	$a0, $fp, 0
	bnez	$a1, .LBB5_9
# %bb.8:
	ori	$a1, $zero, 17
	bge	$a0, $a1, .LBB5_4
.LBB5_9:                                # %thread-pre-split
	bnez	$a0, .LBB5_11
# %bb.10:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB5_11:
	move	$a1, $zero
	ori	$a2, $zero, 17
	sub.d	$a0, $a2, $a0
	st.d	$a0, $fp, 8
	b	.LBB5_5
.LBB5_12:
.Ltmp27:
	ld.d	$a2, $sp, 8
	move	$fp, $a0
	beq	$a2, $s0, .LBB5_14
# %bb.13:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_14:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_Z29BM_error_before_running_batchRN9benchmark5StateE, .Lfunc_end5-_Z29BM_error_before_running_batchRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Ltmp25-.Lfunc_begin3          # >> Call Site 1 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin3          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Lfunc_end5-.Ltmp26            #   Call between .Ltmp26 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.hidden	_Z33BM_error_before_running_range_forRN9benchmark5StateE # -- Begin function _Z33BM_error_before_running_range_forRN9benchmark5StateE
	.globl	_Z33BM_error_before_running_range_forRN9benchmark5StateE
	.p2align	5
	.type	_Z33BM_error_before_running_range_forRN9benchmark5StateE,@function
_Z33BM_error_before_running_range_forRN9benchmark5StateE: # @_Z33BM_error_before_running_range_forRN9benchmark5StateE
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:                                # %._crit_edge.i.i
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 5
	addi.d	$s0, $sp, 16
	st.d	$s0, $sp, 0
	st.d	$a1, $sp, 16
	st.d	$a0, $sp, 21
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 8
	st.b	$zero, $sp, 29
.Ltmp28:
	addi.d	$a1, $sp, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State13SkipWithErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp29:
# %bb.1:
	ld.d	$a0, $sp, 0
	beq	$a0, $s0, .LBB6_3
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 16
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_3:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.w	$s1, $fp, 28
	ld.d	$s0, $fp, 16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB6_6
# %bb.4:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	beqz	$s0, .LBB6_6
# %bb.5:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a0, $a0, %pc_lo12(.L.str.6)
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._Z33BM_error_before_running_range_forRN9benchmark5StateE)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._Z33BM_error_before_running_range_forRN9benchmark5StateE)
	ori	$a2, $zero, 93
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB6_6:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB6_7:
.Ltmp30:
	ld.d	$a2, $sp, 0
	move	$fp, $a0
	beq	$a2, $s0, .LBB6_9
# %bb.8:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
	ld.d	$a0, $sp, 16
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_9:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_Z33BM_error_before_running_range_forRN9benchmark5StateE, .Lfunc_end6-_Z33BM_error_before_running_range_forRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp28-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin4          #     jumps to .Ltmp30
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Lfunc_end6-.Ltmp29            #   Call between .Ltmp29 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.hidden	_Z23BM_error_during_runningRN9benchmark5StateE # -- Begin function _Z23BM_error_during_runningRN9benchmark5StateE
	.globl	_Z23BM_error_during_runningRN9benchmark5StateE
	.p2align	5
	.type	_Z23BM_error_during_runningRN9benchmark5StateE,@function
_Z23BM_error_during_runningRN9benchmark5StateE: # @_Z23BM_error_during_runningRN9benchmark5StateE
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:                                # %.outer
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	addi.d	$s0, $sp, 16
	ori	$s1, $zero, 1
	b	.LBB7_2
	.p2align	4, , 16
.LBB7_1:                                #   in Loop: Header=BB7_2 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State11PauseTimingEv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State12ResumeTimingEv)
	jirl	$ra, $ra, 0
.LBB7_2:                                # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	blez	$a0, .LBB7_6
.LBB7_3:                                #   in Loop: Header=BB7_2 Depth=1
	ld.d	$a2, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 0
	beq	$a2, $a1, .LBB7_22
# %bb.4:                                # %_ZNK9benchmark5State5rangeEm.exit
                                        #   in Loop: Header=BB7_2 Depth=1
	ld.d	$a0, $a1, 0
	bne	$a0, $s1, .LBB7_1
# %bb.5:                                #   in Loop: Header=BB7_2 Depth=1
	ld.wu	$a0, $fp, 148
	ld.w	$a1, $fp, 144
	srli.d	$a2, $a0, 31
	add.w	$a0, $a0, $a2
	srai.d	$a0, $a0, 1
	blt	$a0, $a1, .LBB7_1
	b	.LBB7_9
.LBB7_6:                                #   in Loop: Header=BB7_2 Depth=1
	ld.bu	$a0, $fp, 24
	bnez	$a0, .LBB7_21
# %bb.7:                                #   in Loop: Header=BB7_2 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 28
	bnez	$a0, .LBB7_21
# %bb.8:                                #   in Loop: Header=BB7_2 Depth=1
	ld.d	$a0, $fp, 0
	bge	$a0, $s1, .LBB7_3
	b	.LBB7_21
.LBB7_9:                                # %._crit_edge.i.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 5
	st.d	$s0, $sp, 0
	st.d	$a1, $s0, 0
	st.d	$a0, $s0, 5
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 8
	st.b	$zero, $sp, 29
.Ltmp31:
	addi.d	$a1, $sp, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State13SkipWithErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp32:
# %bb.10:
	ld.d	$a0, $sp, 0
	beq	$a0, $s0, .LBB7_12
# %bb.11:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 16
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_12:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ori	$s0, $zero, 1
	b	.LBB7_14
	.p2align	4, , 16
.LBB7_13:                               #   in Loop: Header=BB7_14 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State11PauseTimingEv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State12ResumeTimingEv)
	jirl	$ra, $ra, 0
.LBB7_14:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	blez	$a0, .LBB7_18
.LBB7_15:                               #   in Loop: Header=BB7_14 Depth=1
	ld.d	$a2, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 0
	beq	$a2, $a1, .LBB7_22
# %bb.16:                               # %_ZNK9benchmark5State5rangeEm.exit.1
                                        #   in Loop: Header=BB7_14 Depth=1
	ld.d	$a0, $a1, 0
	bne	$a0, $s0, .LBB7_13
# %bb.17:                               #   in Loop: Header=BB7_14 Depth=1
	ld.wu	$a0, $fp, 148
	ld.w	$a1, $fp, 144
	srli.d	$a2, $a0, 31
	add.w	$a0, $a0, $a2
	srai.d	$a0, $a0, 1
	blt	$a0, $a1, .LBB7_13
	b	.LBB7_23
.LBB7_18:                               #   in Loop: Header=BB7_14 Depth=1
	ld.bu	$a0, $fp, 24
	bnez	$a0, .LBB7_21
# %bb.19:                               #   in Loop: Header=BB7_14 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 28
	bnez	$a0, .LBB7_21
# %bb.20:                               #   in Loop: Header=BB7_14 Depth=1
	ld.d	$a0, $fp, 0
	bge	$a0, $s0, .LBB7_15
.LBB7_21:                               # %.loopexit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB7_22:                               # %.loopexit20
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a0, $a0, %pc_lo12(.L.str.55)
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$a1, $a1, %pc_lo12(.L.str.52)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	ori	$a2, $zero, 990
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB7_23:
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._Z23BM_error_during_runningRN9benchmark5StateE)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._Z23BM_error_during_runningRN9benchmark5StateE)
	ori	$a2, $zero, 103
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB7_24:
.Ltmp33:
	ld.d	$a2, $sp, 0
	move	$fp, $a0
	beq	$a2, $s0, .LBB7_26
# %bb.25:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
	ld.d	$a0, $sp, 16
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_26:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_Z23BM_error_during_runningRN9benchmark5StateE, .Lfunc_end7-_Z23BM_error_during_runningRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table7:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp31-.Lfunc_begin5          #   Call between .Lfunc_begin5 and .Ltmp31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp32-.Ltmp31                #   Call between .Ltmp31 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin5          #     jumps to .Ltmp33
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp32-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Lfunc_end7-.Ltmp32            #   Call between .Ltmp32 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.hidden	_Z34BM_error_during_running_ranged_forRN9benchmark5StateE # -- Begin function _Z34BM_error_during_running_ranged_forRN9benchmark5StateE
	.globl	_Z34BM_error_during_running_ranged_forRN9benchmark5StateE
	.p2align	5
	.type	_Z34BM_error_during_running_ranged_forRN9benchmark5StateE,@function
_Z34BM_error_during_running_ranged_forRN9benchmark5StateE: # @_Z34BM_error_during_running_ranged_forRN9benchmark5StateE
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
	ld.d	$a0, $a0, 16
	ori	$a1, $zero, 3
	bge	$a1, $a0, .LBB8_9
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	ld.w	$s0, $fp, 28
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB8_8
# %bb.2:                                # %.lr.ph
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	beq	$a1, $a0, .LBB8_10
# %bb.3:                                # %.lr.ph.split
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB8_8
# %bb.4:                                # %._crit_edge.i.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 5
	addi.d	$s0, $sp, 24
	st.d	$s0, $sp, 8
	st.d	$a1, $sp, 24
	st.d	$a0, $sp, 29
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 37
.Ltmp34:
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State13SkipWithErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp35:
# %bb.5:
	ld.d	$a0, $sp, 8
	beq	$a0, $s0, .LBB8_7
# %bb.6:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_7:                                # %_ZN9benchmark5State13StateIteratorppEv.exit20
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB8_8:                                # %_ZNK9benchmark5State13StateIteratorneERKS1_.exit19
	move	$a0, $fp
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.LBB8_9:
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a0, $a0, %pc_lo12(.L.str.30)
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._Z34BM_error_during_running_ranged_forRN9benchmark5StateE)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._Z34BM_error_during_running_ranged_forRN9benchmark5StateE)
	ori	$a2, $zero, 123
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB8_10:
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a0, $a0, %pc_lo12(.L.str.55)
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$a1, $a1, %pc_lo12(.L.str.52)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	ori	$a2, $zero, 990
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB8_11:
.Ltmp36:
	ld.d	$a2, $sp, 8
	move	$fp, $a0
	beq	$a2, $s0, .LBB8_13
# %bb.12:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_13:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_Z34BM_error_during_running_ranged_forRN9benchmark5StateE, .Lfunc_end8-_Z34BM_error_during_running_ranged_forRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table8:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp34-.Lfunc_begin6          #   Call between .Lfunc_begin6 and .Ltmp34
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin6          # >> Call Site 2 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin6          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin6          # >> Call Site 3 <<
	.uleb128 .Lfunc_end8-.Ltmp35            #   Call between .Ltmp35 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.hidden	_Z22BM_error_after_runningRN9benchmark5StateE # -- Begin function _Z22BM_error_after_runningRN9benchmark5StateE
	.globl	_Z22BM_error_after_runningRN9benchmark5StateE
	.p2align	5
	.type	_Z22BM_error_after_runningRN9benchmark5StateE,@function
_Z22BM_error_after_runningRN9benchmark5StateE: # @_Z22BM_error_after_runningRN9benchmark5StateE
.Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception7
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	ld.w	$s1, $a0, 28
	ld.d	$s0, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB9_7
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB9_7
# %bb.2:
	movgr2fr.d	$fa0, $zero
	ori	$a0, $zero, 1
	addi.d	$a1, $sp, 0
	.p2align	4, , 16
.LBB9_3:                                # =>This Inner Loop Header: Depth=1
	ld.bu	$a2, $fp, 24
	fmov.d	$fa1, $fa0
	bne	$a2, $a0, .LBB9_5
# %bb.4:                                #   in Loop: Header=BB9_3 Depth=1
	ld.d	$a2, $fp, 16
	ld.d	$a3, $fp, 0
	ld.d	$a4, $fp, 8
	sub.d	$a2, $a2, $a3
	add.d	$a2, $a2, $a4
	movgr2fr.d	$fa1, $a2
	ffint.d.l	$fa1, $fa1
	fmul.d	$fa1, $fa1, $fa1
.LBB9_5:                                # %_ZNK9benchmark5State10iterationsEv.exit
                                        #   in Loop: Header=BB9_3 Depth=1
	fst.d	$fa1, $sp, 0
	#APP
	#NO_APP
	blez	$s0, .LBB9_12
# %bb.6:                                #   in Loop: Header=BB9_3 Depth=1
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB9_3
.LBB9_7:                                # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.wu	$a0, $fp, 148
	ld.w	$a1, $fp, 144
	srli.d	$a2, $a0, 31
	add.w	$a0, $a0, $a2
	srai.d	$a0, $a0, 1
	blt	$a0, $a1, .LBB9_11
# %bb.8:                                # %._crit_edge.i.i
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 5
	addi.d	$s0, $sp, 16
	st.d	$s0, $sp, 0
	st.d	$a1, $sp, 16
	st.d	$a0, $sp, 21
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 8
	st.b	$zero, $sp, 29
.Ltmp37:
	addi.d	$a1, $sp, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State13SkipWithErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp38:
# %bb.9:
	ld.d	$a0, $sp, 0
	beq	$a0, $s0, .LBB9_11
# %bb.10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 16
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_11:
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB9_12:
	pcalau12i	$a0, %pc_hi20(.L.str.54)
	addi.d	$a0, $a0, %pc_lo12(.L.str.54)
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$a1, $a1, %pc_lo12(.L.str.52)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB9_13:
.Ltmp39:
	ld.d	$a2, $sp, 0
	move	$fp, $a0
	beq	$a2, $s0, .LBB9_15
# %bb.14:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
	ld.d	$a0, $sp, 16
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_15:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_Z22BM_error_after_runningRN9benchmark5StateE, .Lfunc_end9-_Z22BM_error_after_runningRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table9:
.Lexception7:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end7-.Lcst_begin7
.Lcst_begin7:
	.uleb128 .Lfunc_begin7-.Lfunc_begin7    # >> Call Site 1 <<
	.uleb128 .Ltmp37-.Lfunc_begin7          #   Call between .Lfunc_begin7 and .Ltmp37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin7          # >> Call Site 2 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin7          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin7          # >> Call Site 3 <<
	.uleb128 .Lfunc_end9-.Ltmp38            #   Call between .Ltmp38 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end7:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.hidden	_Z21BM_error_while_pausedRN9benchmark5StateE # -- Begin function _Z21BM_error_while_pausedRN9benchmark5StateE
	.globl	_Z21BM_error_while_pausedRN9benchmark5StateE
	.p2align	5
	.type	_Z21BM_error_while_pausedRN9benchmark5StateE,@function
_Z21BM_error_while_pausedRN9benchmark5StateE: # @_Z21BM_error_while_pausedRN9benchmark5StateE
.Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception8
# %bb.0:                                # %.outer
	addi.d	$sp, $sp, -64
	.cfi_def_cfa_offset 64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	st.d	$s1, $sp, 32                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	move	$fp, $a0
	addi.d	$s0, $sp, 16
	ori	$s1, $zero, 1
	b	.LBB10_2
	.p2align	4, , 16
.LBB10_1:                               #   in Loop: Header=BB10_2 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State11PauseTimingEv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State12ResumeTimingEv)
	jirl	$ra, $ra, 0
.LBB10_2:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	blez	$a0, .LBB10_6
.LBB10_3:                               #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a2, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 0
	beq	$a2, $a1, .LBB10_22
# %bb.4:                                # %_ZNK9benchmark5State5rangeEm.exit
                                        #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a0, $a1, 0
	bne	$a0, $s1, .LBB10_1
# %bb.5:                                #   in Loop: Header=BB10_2 Depth=1
	ld.wu	$a0, $fp, 148
	ld.w	$a1, $fp, 144
	srli.d	$a2, $a0, 31
	add.w	$a0, $a0, $a2
	srai.d	$a0, $a0, 1
	blt	$a0, $a1, .LBB10_1
	b	.LBB10_9
.LBB10_6:                               #   in Loop: Header=BB10_2 Depth=1
	ld.bu	$a0, $fp, 24
	bnez	$a0, .LBB10_21
# %bb.7:                                #   in Loop: Header=BB10_2 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 28
	bnez	$a0, .LBB10_21
# %bb.8:                                #   in Loop: Header=BB10_2 Depth=1
	ld.d	$a0, $fp, 0
	bge	$a0, $s1, .LBB10_3
	b	.LBB10_21
.LBB10_9:                               # %._crit_edge.i.i
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State11PauseTimingEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 5
	st.d	$s0, $sp, 0
	st.d	$a1, $s0, 0
	st.d	$a0, $s0, 5
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 8
	st.b	$zero, $sp, 29
.Ltmp40:
	addi.d	$a1, $sp, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State13SkipWithErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp41:
# %bb.10:
	ld.d	$a0, $sp, 0
	beq	$a0, $s0, .LBB10_12
# %bb.11:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 16
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB10_12:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ori	$s0, $zero, 1
	b	.LBB10_14
	.p2align	4, , 16
.LBB10_13:                              #   in Loop: Header=BB10_14 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State11PauseTimingEv)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State12ResumeTimingEv)
	jirl	$ra, $ra, 0
.LBB10_14:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $fp, 0
	blez	$a0, .LBB10_18
.LBB10_15:                              #   in Loop: Header=BB10_14 Depth=1
	ld.d	$a2, $fp, 40
	ld.d	$a1, $fp, 32
	addi.d	$a0, $a0, -1
	st.d	$a0, $fp, 0
	beq	$a2, $a1, .LBB10_22
# %bb.16:                               # %_ZNK9benchmark5State5rangeEm.exit.1
                                        #   in Loop: Header=BB10_14 Depth=1
	ld.d	$a0, $a1, 0
	bne	$a0, $s0, .LBB10_13
# %bb.17:                               #   in Loop: Header=BB10_14 Depth=1
	ld.wu	$a0, $fp, 148
	ld.w	$a1, $fp, 144
	srli.d	$a2, $a0, 31
	add.w	$a0, $a0, $a2
	srai.d	$a0, $a0, 1
	blt	$a0, $a1, .LBB10_13
	b	.LBB10_23
.LBB10_18:                              #   in Loop: Header=BB10_14 Depth=1
	ld.bu	$a0, $fp, 24
	bnez	$a0, .LBB10_21
# %bb.19:                               #   in Loop: Header=BB10_14 Depth=1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $fp, 28
	bnez	$a0, .LBB10_21
# %bb.20:                               #   in Loop: Header=BB10_14 Depth=1
	ld.d	$a0, $fp, 0
	bge	$a0, $s0, .LBB10_15
.LBB10_21:                              # %.loopexit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB10_22:                              # %.loopexit21
	pcalau12i	$a0, %pc_hi20(.L.str.55)
	addi.d	$a0, $a0, %pc_lo12(.L.str.55)
	pcalau12i	$a1, %pc_hi20(.L.str.52)
	addi.d	$a1, $a1, %pc_lo12(.L.str.52)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	ori	$a2, $zero, 990
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB10_23:
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._Z21BM_error_while_pausedRN9benchmark5StateE)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._Z21BM_error_while_pausedRN9benchmark5StateE)
	ori	$a2, $zero, 162
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB10_24:
.Ltmp42:
	ld.d	$a2, $sp, 0
	move	$fp, $a0
	beq	$a2, $s0, .LBB10_26
# %bb.25:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
	ld.d	$a0, $sp, 16
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB10_26:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_Z21BM_error_while_pausedRN9benchmark5StateE, .Lfunc_end10-_Z21BM_error_while_pausedRN9benchmark5StateE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table10:
.Lexception8:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end8-.Lcst_begin8
.Lcst_begin8:
	.uleb128 .Lfunc_begin8-.Lfunc_begin8    # >> Call Site 1 <<
	.uleb128 .Ltmp40-.Lfunc_begin8          #   Call between .Lfunc_begin8 and .Ltmp40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin8          # >> Call Site 2 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin8          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp41-.Lfunc_begin8          # >> Call Site 3 <<
	.uleb128 .Lfunc_end10-.Ltmp41           #   Call between .Ltmp41 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end8:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.hidden	main                            # -- Begin function main
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
.Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception9
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
	st.w	$a0, $sp, 156
	pcalau12i	$a0, %got_pc_hi20(_ZN9benchmark16PrintDefaultHelpEv)
	ld.d	$a2, $a0, %got_pc_lo12(_ZN9benchmark16PrintDefaultHelpEv)
	addi.d	$a0, $sp, 156
	pcaddu18i	$ra, %call36(_ZN9benchmark10InitializeEPiPPcPFvvE)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporterC2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3
	st.w	$a0, $sp, 56
	st.d	$zero, $sp, 64
	addi.d	$a0, $sp, 80
	st.w	$zero, $sp, 80
	st.d	$zero, $sp, 88
	st.d	$a0, $sp, 96
	st.d	$a0, $sp, 104
	st.d	$zero, $sp, 112
	st.b	$zero, $sp, 120
	pcalau12i	$a0, %pc_hi20(_ZTVN12_GLOBAL__N_112TestReporterE+16)
	addi.d	$fp, $a0, %pc_lo12(_ZTVN12_GLOBAL__N_112TestReporterE+16)
	st.d	$fp, $sp, 32
	st.d	$zero, $sp, 128
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 136
.Ltmp43:
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterE)
	jirl	$ra, $ra, 0
.Ltmp44:
# %bb.1:
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_115ExpectedResultsE)
	addi.d	$s8, $a0, %pc_lo12(_ZN12_GLOBAL__N_115ExpectedResultsE)
	ld.d	$fp, $sp, 128
	ld.d	$s6, $sp, 136
	ld.d	$s7, $s8, 0
	beq	$fp, $s6, .LBB11_43
# %bb.2:                                # %.lr.ph
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$s0, $a0, %pc_lo12(_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	pcalau12i	$a0, %pc_hi20(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	addi.d	$a0, $a0, %pc_lo12(_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log)
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.58)
	addi.d	$a0, $a0, %pc_lo12(.L.str.58)
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.59)
	addi.d	$a0, $a0, %pc_lo12(.L.str.59)
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$s3, $a0, %pc_lo12(.L.str.57)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$s4, $a0, %pc_lo12(.L.str.7)
	pcalau12i	$a0, %pc_hi20(.L__func__._ZNK12_GLOBAL__N_18TestCase8CheckRunERKN9benchmark17BenchmarkReporter3RunE)
	addi.d	$s5, $a0, %pc_lo12(.L__func__._ZNK12_GLOBAL__N_18TestCase8CheckRunERKN9benchmark17BenchmarkReporter3RunE)
	b	.LBB11_4
	.p2align	4, , 16
.LBB11_3:                               # %_ZNK12_GLOBAL__N_18TestCase8CheckRunERKN9benchmark17BenchmarkReporter3RunE.exit
                                        #   in Loop: Header=BB11_4 Depth=1
	addi.d	$fp, $fp, 560
	addi.d	$s7, $s7, 72
	beq	$fp, $s6, .LBB11_43
.LBB11_4:                               # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s8, 8
	beq	$s7, $a0, .LBB11_47
# %bb.5:                                #   in Loop: Header=BB11_4 Depth=1
.Ltmp46:
	addi.d	$a0, $sp, 200
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZNK9benchmark17BenchmarkReporter3Run14benchmark_nameB5cxx11Ev)
	jirl	$ra, $ra, 0
.Ltmp47:
# %bb.6:                                # %.noexc
                                        #   in Loop: Header=BB11_4 Depth=1
	ld.d	$a2, $s7, 8
	ld.d	$a0, $sp, 208
	bne	$a2, $a0, .LBB11_9
# %bb.7:                                #   in Loop: Header=BB11_4 Depth=1
	beqz	$a2, .LBB11_11
# %bb.8:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
                                        #   in Loop: Header=BB11_4 Depth=1
	ld.d	$a1, $sp, 200
	ld.d	$a0, $s7, 0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB11_11
.LBB11_9:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread62.i
                                        #   in Loop: Header=BB11_4 Depth=1
.Ltmp49:
	addi.d	$a0, $sp, 192
	ori	$a4, $zero, 36
	move	$a1, $s3
	move	$a2, $s4
	move	$a3, $s5
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i)
	jirl	$ra, $ra, 0
.Ltmp50:
# %bb.10:                               #   in Loop: Header=BB11_4 Depth=1
	ld.d	$s1, $sp, 192
	move	$s2, $zero
	ld.d	$a0, $s1, 0
	bnez	$a0, .LBB11_13
	b	.LBB11_18
	.p2align	4, , 16
.LBB11_11:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
                                        #   in Loop: Header=BB11_4 Depth=1
	ld.b	$a0, $s0, 0
	dbar	20
	ori	$s2, $zero, 1
	beqz	$a0, .LBB11_41
.LBB11_12:                              #   in Loop: Header=BB11_4 Depth=1
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB11_18
.LBB11_13:                              #   in Loop: Header=BB11_4 Depth=1
.Ltmp52:
	ori	$a2, $zero, 9
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp53:
# %bb.14:                               # %_ZN9benchmark8internallsIA10_cEERNS0_7LogTypeES4_RKT_.exit.i
                                        #   in Loop: Header=BB11_4 Depth=1
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB11_18
# %bb.15:                               #   in Loop: Header=BB11_4 Depth=1
	ld.d	$a1, $s7, 0
	ld.d	$a2, $s7, 8
.Ltmp54:
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp55:
# %bb.16:                               # %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit.i
                                        #   in Loop: Header=BB11_4 Depth=1
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB11_18
# %bb.17:                               #   in Loop: Header=BB11_4 Depth=1
.Ltmp56:
	ori	$a2, $zero, 5
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp57:
.LBB11_18:                              # %_ZN9benchmark8internallsIA6_cEERNS0_7LogTypeES4_RKT_.exit.i
                                        #   in Loop: Header=BB11_4 Depth=1
.Ltmp59:
	addi.d	$a0, $sp, 160
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZNK9benchmark17BenchmarkReporter3Run14benchmark_nameB5cxx11Ev)
	jirl	$ra, $ra, 0
.Ltmp60:
# %bb.19:                               #   in Loop: Header=BB11_4 Depth=1
	ld.d	$a0, $s1, 0
	beqz	$a0, .LBB11_21
# %bb.20:                               #   in Loop: Header=BB11_4 Depth=1
	ld.d	$a1, $sp, 160
	ld.d	$a2, $sp, 168
.Ltmp62:
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp63:
.LBB11_21:                              # %_ZN9benchmark8internallsINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEERNS0_7LogTypeES9_RKT_.exit44.i
                                        #   in Loop: Header=BB11_4 Depth=1
	ld.d	$a0, $sp, 160
	addi.d	$a1, $sp, 176
	beq	$a0, $a1, .LBB11_23
# %bb.22:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
                                        #   in Loop: Header=BB11_4 Depth=1
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_23:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
                                        #   in Loop: Header=BB11_4 Depth=1
	beqz	$s2, .LBB11_49
# %bb.24:                               #   in Loop: Header=BB11_4 Depth=1
	ld.d	$a0, $sp, 200
	addi.d	$a1, $sp, 216
	beq	$a0, $a1, .LBB11_26
# %bb.25:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48.i
                                        #   in Loop: Header=BB11_4 Depth=1
	ld.d	$a1, $sp, 216
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_26:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50.i
                                        #   in Loop: Header=BB11_4 Depth=1
	ld.w	$a0, $fp, 352
	ld.bu	$a1, $s7, 32
	addi.d	$a0, $a0, -2
	sltui	$a0, $a0, 1
	bne	$a1, $a0, .LBB11_48
# %bb.27:                               #   in Loop: Header=BB11_4 Depth=1
	ld.b	$a0, $s0, 0
	dbar	20
	beqz	$a0, .LBB11_37
.LBB11_28:                              #   in Loop: Header=BB11_4 Depth=1
	ld.d	$a2, $s7, 48
	ld.d	$a0, $fp, 368
	bne	$a2, $a0, .LBB11_46
# %bb.29:                               #   in Loop: Header=BB11_4 Depth=1
	beqz	$a2, .LBB11_31
# %bb.30:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit57.i
                                        #   in Loop: Header=BB11_4 Depth=1
	ld.d	$a1, $fp, 360
	ld.d	$a0, $s7, 40
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB11_46
.LBB11_31:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit57.thread.i
                                        #   in Loop: Header=BB11_4 Depth=1
	ld.b	$a0, $s0, 0
	dbar	20
	beqz	$a0, .LBB11_39
.LBB11_32:                              #   in Loop: Header=BB11_4 Depth=1
	ld.bu	$a0, $s7, 32
	bnez	$a0, .LBB11_3
# %bb.33:                               #   in Loop: Header=BB11_4 Depth=1
	ld.d	$a0, $fp, 392
	beqz	$a0, .LBB11_51
# %bb.34:                               #   in Loop: Header=BB11_4 Depth=1
	ld.b	$a0, $s0, 0
	dbar	20
	bnez	$a0, .LBB11_3
# %bb.35:                               #   in Loop: Header=BB11_4 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB11_3
# %bb.36:                               #   in Loop: Header=BB11_4 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$zero, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB11_3
.LBB11_37:                              #   in Loop: Header=BB11_4 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB11_28
# %bb.38:                               #   in Loop: Header=BB11_4 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$zero, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB11_28
.LBB11_39:                              #   in Loop: Header=BB11_4 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB11_32
# %bb.40:                               #   in Loop: Header=BB11_4 Depth=1
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	st.d	$zero, $a0, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	b	.LBB11_32
.LBB11_41:                              #   in Loop: Header=BB11_4 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	addi.w	$a0, $a0, 0
	beqz	$a0, .LBB11_12
# %bb.42:                               #   in Loop: Header=BB11_4 Depth=1
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	st.d	$zero, $s1, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s1, 0
	bnez	$a0, .LBB11_13
	b	.LBB11_18
.LBB11_43:                              # %._crit_edge
	ld.d	$a0, $s8, 8
	bne	$s7, $a0, .LBB11_54
# %bb.44:
	addi.d	$a0, $sp, 128
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	st.d	$a1, $sp, 32
	pcaddu18i	$ra, %call36(_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark15ConsoleReporterE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark15ConsoleReporterE)
	ld.d	$a1, $sp, 88
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 32
	addi.d	$a0, $sp, 72
.Ltmp80:
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp81:
# %bb.45:                               # %_ZN12_GLOBAL__N_112TestReporterD2Ev.exit
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporterD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $zero
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
.LBB11_46:                              # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit57.thread68.i
	addi.d	$fp, $sp, 200
.Ltmp73:
	pcalau12i	$a0, %pc_hi20(.L.str.61)
	addi.d	$a1, $a0, %pc_lo12(.L.str.61)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a2, $a0, %pc_lo12(.L.str.7)
	pcalau12i	$a0, %pc_hi20(.L__func__._ZNK12_GLOBAL__N_18TestCase8CheckRunERKN9benchmark17BenchmarkReporter3RunE)
	addi.d	$a3, $a0, %pc_lo12(.L__func__._ZNK12_GLOBAL__N_18TestCase8CheckRunERKN9benchmark17BenchmarkReporter3RunE)
	addi.d	$a0, $sp, 200
	ori	$a4, $zero, 40
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i)
	jirl	$ra, $ra, 0
.Ltmp74:
	b	.LBB11_52
.LBB11_47:
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a0, $a0, %pc_lo12(.L.str.47)
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__.main)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__.main)
	ori	$a2, $zero, 192
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB11_48:
	addi.d	$fp, $sp, 200
.Ltmp71:
	pcalau12i	$a0, %pc_hi20(.L.str.60)
	addi.d	$a1, $a0, %pc_lo12(.L.str.60)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a2, $a0, %pc_lo12(.L.str.7)
	pcalau12i	$a0, %pc_hi20(.L__func__._ZNK12_GLOBAL__N_18TestCase8CheckRunERKN9benchmark17BenchmarkReporter3RunE)
	addi.d	$a3, $a0, %pc_lo12(.L__func__._ZNK12_GLOBAL__N_18TestCase8CheckRunERKN9benchmark17BenchmarkReporter3RunE)
	addi.d	$a0, $sp, 200
	ori	$a4, $zero, 39
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i)
	jirl	$ra, $ra, 0
.Ltmp72:
	b	.LBB11_52
.LBB11_49:
.Ltmp68:
	addi.d	$a0, $sp, 192
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerD2Ev)
	jirl	$ra, $ra, 0
.Ltmp69:
# %bb.50:
.LBB11_51:
	addi.d	$fp, $sp, 200
.Ltmp75:
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a1, $a0, %pc_lo12(.L.str.62)
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a2, $a0, %pc_lo12(.L.str.7)
	pcalau12i	$a0, %pc_hi20(.L__func__._ZNK12_GLOBAL__N_18TestCase8CheckRunERKN9benchmark17BenchmarkReporter3RunE)
	addi.d	$a3, $a0, %pc_lo12(.L__func__._ZNK12_GLOBAL__N_18TestCase8CheckRunERKN9benchmark17BenchmarkReporter3RunE)
	addi.d	$a0, $sp, 200
	ori	$a4, $zero, 44
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i)
	jirl	$ra, $ra, 0
.Ltmp76:
.LBB11_52:                              # %.noexc8.invoke
.Ltmp77:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerD2Ev)
	jirl	$ra, $ra, 0
.Ltmp78:
# %bb.53:                               # %.noexc8.cont
.LBB11_54:
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a0, $a0, %pc_lo12(.L.str.48)
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__.main)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__.main)
	ori	$a2, $zero, 196
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB11_55:
.Ltmp82:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB11_56:
.Ltmp45:
	b	.LBB11_72
.LBB11_57:
.Ltmp64:
	ld.d	$a2, $sp, 160
	move	$fp, $a0
	addi.d	$a0, $sp, 176
	beq	$a2, $a0, .LBB11_63
# %bb.58:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45.i
	ld.d	$a0, $sp, 176
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB11_63
.LBB11_59:                              # %.loopexit24
.Ltmp51:
	b	.LBB11_65
.LBB11_60:                              # %.loopexit.split-lp25
.Ltmp70:
	b	.LBB11_65
.LBB11_61:                              # %.loopexit
.Ltmp48:
	b	.LBB11_72
.LBB11_62:
.Ltmp61:
	move	$fp, $a0
.LBB11_63:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.i
	bnez	$s2, .LBB11_66
	b	.LBB11_68
.LBB11_64:
.Ltmp58:
	beqz	$s2, .LBB11_68
.LBB11_65:
	move	$fp, $a0
.LBB11_66:                              # %.thread.i
	ld.d	$a0, $sp, 200
	addi.d	$a1, $sp, 216
	beq	$a0, $a1, .LBB11_73
# %bb.67:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53.i
	ld.d	$a1, $sp, 216
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_112TestReporterD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB11_68:
.Ltmp65:
	addi.d	$a0, $sp, 192
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal12CheckHandlerD2Ev)
	jirl	$ra, $ra, 0
.Ltmp66:
# %bb.69:
.LBB11_70:
.Ltmp67:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB11_71:                              # %.loopexit.split-lp
.Ltmp79:
.LBB11_72:                              # %.body
	move	$fp, $a0
.LBB11_73:                              # %.body
	addi.d	$a0, $sp, 32
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_112TestReporterD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end11:
	.size	main, .Lfunc_end11-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table11:
.Lexception9:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end9-.Lcst_begin9
.Lcst_begin9:
	.uleb128 .Lfunc_begin9-.Lfunc_begin9    # >> Call Site 1 <<
	.uleb128 .Ltmp43-.Lfunc_begin9          #   Call between .Lfunc_begin9 and .Ltmp43
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin9          # >> Call Site 2 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin9          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin9          # >> Call Site 3 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin9          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin9          # >> Call Site 4 <<
	.uleb128 .Ltmp49-.Ltmp47                #   Call between .Ltmp47 and .Ltmp49
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin9          # >> Call Site 5 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin9          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin9          # >> Call Site 6 <<
	.uleb128 .Ltmp57-.Ltmp52                #   Call between .Ltmp52 and .Ltmp57
	.uleb128 .Ltmp58-.Lfunc_begin9          #     jumps to .Ltmp58
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin9          # >> Call Site 7 <<
	.uleb128 .Ltmp60-.Ltmp59                #   Call between .Ltmp59 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin9          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin9          # >> Call Site 8 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin9          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin9          # >> Call Site 9 <<
	.uleb128 .Ltmp80-.Ltmp63                #   Call between .Ltmp63 and .Ltmp80
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin9          # >> Call Site 10 <<
	.uleb128 .Ltmp81-.Ltmp80                #   Call between .Ltmp80 and .Ltmp81
	.uleb128 .Ltmp82-.Lfunc_begin9          #     jumps to .Ltmp82
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp81-.Lfunc_begin9          # >> Call Site 11 <<
	.uleb128 .Ltmp73-.Ltmp81                #   Call between .Ltmp81 and .Ltmp73
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin9          # >> Call Site 12 <<
	.uleb128 .Ltmp74-.Ltmp73                #   Call between .Ltmp73 and .Ltmp74
	.uleb128 .Ltmp79-.Lfunc_begin9          #     jumps to .Ltmp79
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin9          # >> Call Site 13 <<
	.uleb128 .Ltmp71-.Ltmp74                #   Call between .Ltmp74 and .Ltmp71
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin9          # >> Call Site 14 <<
	.uleb128 .Ltmp72-.Ltmp71                #   Call between .Ltmp71 and .Ltmp72
	.uleb128 .Ltmp79-.Lfunc_begin9          #     jumps to .Ltmp79
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin9          # >> Call Site 15 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp70-.Lfunc_begin9          #     jumps to .Ltmp70
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp75-.Lfunc_begin9          # >> Call Site 16 <<
	.uleb128 .Ltmp78-.Ltmp75                #   Call between .Ltmp75 and .Ltmp78
	.uleb128 .Ltmp79-.Lfunc_begin9          #     jumps to .Ltmp79
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp78-.Lfunc_begin9          # >> Call Site 17 <<
	.uleb128 .Ltmp65-.Ltmp78                #   Call between .Ltmp78 and .Ltmp65
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin9          # >> Call Site 18 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.uleb128 .Ltmp67-.Lfunc_begin9          #     jumps to .Ltmp67
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp66-.Lfunc_begin9          # >> Call Site 19 <<
	.uleb128 .Lfunc_end11-.Ltmp66           #   Call between .Ltmp66 and .Lfunc_end11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end9:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_112TestReporterD2Ev
	.type	_ZN12_GLOBAL__N_112TestReporterD2Ev,@function
_ZN12_GLOBAL__N_112TestReporterD2Ev:    # @_ZN12_GLOBAL__N_112TestReporterD2Ev
.Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception10
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTVN12_GLOBAL__N_112TestReporterE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN12_GLOBAL__N_112TestReporterE+16)
	st.d	$a0, $fp, 0
	addi.d	$a0, $fp, 96
	pcaddu18i	$ra, %call36(_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark15ConsoleReporterE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark15ConsoleReporterE)
	ld.d	$a1, $fp, 56
	addi.d	$a0, $a0, 16
	st.d	$a0, $fp, 0
	addi.d	$a0, $fp, 40
.Ltmp83:
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp84:
# %bb.1:                                # %_ZN9benchmark15ConsoleReporterD2Ev.exit
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZN9benchmark17BenchmarkReporterD2Ev)
	jr	$t8
.LBB12_2:
.Ltmp85:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZN12_GLOBAL__N_112TestReporterD2Ev, .Lfunc_end12-_ZN12_GLOBAL__N_112TestReporterD2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table12:
.Lexception10:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end10-.Lcst_begin10
.Lcst_begin10:
	.uleb128 .Lfunc_begin10-.Lfunc_begin10  # >> Call Site 1 <<
	.uleb128 .Ltmp83-.Lfunc_begin10         #   Call between .Lfunc_begin10 and .Ltmp83
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin10         # >> Call Site 2 <<
	.uleb128 .Ltmp84-.Ltmp83                #   Call between .Ltmp83 and .Ltmp84
	.uleb128 .Ltmp85-.Lfunc_begin10         #     jumps to .Ltmp85
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp84-.Lfunc_begin10         # >> Call Site 3 <<
	.uleb128 .Lfunc_end12-.Ltmp84           #   Call between .Ltmp84 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end10:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase1:
	.p2align	2, 0x0
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
.Lfunc_end13:
	.size	__clang_call_terminate, .Lfunc_end13-__clang_call_terminate
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_112TestReporter13ReportContextERKN9benchmark17BenchmarkReporter7ContextE
	.type	_ZN12_GLOBAL__N_112TestReporter13ReportContextERKN9benchmark17BenchmarkReporter7ContextE,@function
_ZN12_GLOBAL__N_112TestReporter13ReportContextERKN9benchmark17BenchmarkReporter7ContextE: # @_ZN12_GLOBAL__N_112TestReporter13ReportContextERKN9benchmark17BenchmarkReporter7ContextE
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZN9benchmark15ConsoleReporter13ReportContextERKNS_17BenchmarkReporter7ContextE)
	jr	$t8
.Lfunc_end14:
	.size	_ZN12_GLOBAL__N_112TestReporter13ReportContextERKN9benchmark17BenchmarkReporter7ContextE, .Lfunc_end14-_ZN12_GLOBAL__N_112TestReporter13ReportContextERKN9benchmark17BenchmarkReporter7ContextE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl,"axG",@progbits,_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl,comdat
	.hidden	_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl # -- Begin function _ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl
	.weak	_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl
	.p2align	5
	.type	_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl,@function
_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl: # @_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl
# %bb.0:
	ret
.Lfunc_end15:
	.size	_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl, .Lfunc_end15-_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_112TestReporter10ReportRunsERKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS4_EE
	.type	_ZN12_GLOBAL__N_112TestReporter10ReportRunsERKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS4_EE,@function
_ZN12_GLOBAL__N_112TestReporter10ReportRunsERKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS4_EE: # @_ZN12_GLOBAL__N_112TestReporter10ReportRunsERKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS4_EE
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a1
	move	$s0, $a0
	ld.d	$a1, $a0, 104
	ld.d	$a2, $fp, 0
	ld.d	$a3, $fp, 8
	addi.d	$a0, $a0, 96
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	move	$a1, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN9benchmark15ConsoleReporter10ReportRunsERKSt6vectorINS_17BenchmarkReporter3RunESaIS3_EE)
	jr	$t8
.Lfunc_end16:
	.size	_ZN12_GLOBAL__N_112TestReporter10ReportRunsERKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS4_EE, .Lfunc_end16-_ZN12_GLOBAL__N_112TestReporter10ReportRunsERKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS4_EE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark17BenchmarkReporter8FinalizeEv,"axG",@progbits,_ZN9benchmark17BenchmarkReporter8FinalizeEv,comdat
	.hidden	_ZN9benchmark17BenchmarkReporter8FinalizeEv # -- Begin function _ZN9benchmark17BenchmarkReporter8FinalizeEv
	.weak	_ZN9benchmark17BenchmarkReporter8FinalizeEv
	.p2align	5
	.type	_ZN9benchmark17BenchmarkReporter8FinalizeEv,@function
_ZN9benchmark17BenchmarkReporter8FinalizeEv: # @_ZN9benchmark17BenchmarkReporter8FinalizeEv
# %bb.0:
	ret
.Lfunc_end17:
	.size	_ZN9benchmark17BenchmarkReporter8FinalizeEv, .Lfunc_end17-_ZN9benchmark17BenchmarkReporter8FinalizeEv
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_112TestReporterD0Ev
	.type	_ZN12_GLOBAL__N_112TestReporterD0Ev,@function
_ZN12_GLOBAL__N_112TestReporterD0Ev:    # @_ZN12_GLOBAL__N_112TestReporterD0Ev
.Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception11
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(_ZTVN12_GLOBAL__N_112TestReporterE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN12_GLOBAL__N_112TestReporterE+16)
	st.d	$a0, $fp, 0
	addi.d	$a0, $fp, 96
	pcaddu18i	$ra, %call36(_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark15ConsoleReporterE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark15ConsoleReporterE)
	ld.d	$a1, $fp, 56
	addi.d	$a0, $a0, 16
	st.d	$a0, $fp, 0
	addi.d	$a0, $fp, 40
.Ltmp86:
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp87:
# %bb.1:                                # %_ZN12_GLOBAL__N_112TestReporterD2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporterD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 120
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB18_2:
.Ltmp88:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end18:
	.size	_ZN12_GLOBAL__N_112TestReporterD0Ev, .Lfunc_end18-_ZN12_GLOBAL__N_112TestReporterD0Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table18:
.Lexception11:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase2-.Lttbaseref2
.Lttbaseref2:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end11-.Lcst_begin11
.Lcst_begin11:
	.uleb128 .Lfunc_begin11-.Lfunc_begin11  # >> Call Site 1 <<
	.uleb128 .Ltmp86-.Lfunc_begin11         #   Call between .Lfunc_begin11 and .Ltmp86
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin11         # >> Call Site 2 <<
	.uleb128 .Ltmp87-.Ltmp86                #   Call between .Ltmp86 and .Ltmp87
	.uleb128 .Ltmp88-.Lfunc_begin11         #     jumps to .Ltmp88
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp87-.Lfunc_begin11         # >> Call Site 3 <<
	.uleb128 .Lfunc_end18-.Ltmp87           #   Call between .Ltmp87 and .Lfunc_end18
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end11:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag,"axG",@progbits,_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag,comdat
	.hidden	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag # -- Begin function _ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag
	.weak	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag
	.p2align	5
	.type	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag,@function
_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag: # @_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag
.Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception12
# %bb.0:
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
	beq	$a3, $a2, .LBB19_41
# %bb.1:
	move	$s2, $a3
	move	$s1, $a2
	move	$s0, $a1
	move	$fp, $a0
	sub.d	$s3, $a3, $a2
	srai.d	$a1, $s3, 4
	lu12i.w	$a0, -479350
	ld.d	$a2, $fp, 16
	ld.d	$s8, $fp, 8
	ori	$a0, $a0, 3979
	lu32i.d	$a0, -329553
	lu52i.d	$a0, $a0, -1288
	sub.d	$a2, $a2, $s8
	mul.d	$s6, $a1, $a0
	bgeu	$a2, $s3, .LBB19_21
# %bb.2:
	ld.d	$s4, $fp, 0
	sub.d	$a1, $s8, $s4
	srli.d	$a1, $a1, 4
	mul.d	$a1, $a1, $a0
	lu12i.w	$a0, 239674
	ori	$a0, $a0, 2106
	bstrins.d	$a0, $a0, 53, 24
	sub.d	$a2, $a0, $a1
	bltu	$a2, $s6, .LBB19_42
# %bb.3:                                # %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE11_M_allocateEm.exit
	sltu	$a2, $s6, $a1
	masknez	$a3, $s6, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$a1, $a1, $a0
	ori	$a0, $zero, 560
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	mul.d	$s6, $a1, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	move	$s7, $a0
	beq	$s4, $s0, .LBB19_6
# %bb.4:                                # %.lr.ph.i.i.i.i61.preheader
	move	$s5, $s4
	move	$s7, $s3
	.p2align	4, , 16
.LBB19_5:                               # %.lr.ph.i.i.i.i61
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s7
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporter3RunC2EOS1_)
	jirl	$ra, $ra, 0
	addi.d	$s5, $s5, 560
	addi.d	$s7, $s7, 560
	bne	$s5, $s0, .LBB19_5
.LBB19_6:                               # %_ZSt34__uninitialized_move_if_noexcept_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit
	st.d	$s7, $sp, 32
	st.d	$s7, $sp, 16
	addi.d	$a0, $sp, 32
	st.d	$a0, $sp, 24
	move	$s5, $s7
	.p2align	4, , 16
.LBB19_7:                               # %.lr.ph.i.i.i68
                                        # =>This Inner Loop Header: Depth=1
.Ltmp92:
	move	$a0, $s5
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_)
	jirl	$ra, $ra, 0
.Ltmp93:
# %bb.8:                                # %_ZSt10_ConstructIN9benchmark17BenchmarkReporter3RunEJRKS2_EEvPT_DpOT0_.exit.i.i.i70
                                        #   in Loop: Header=BB19_7 Depth=1
	ld.d	$a0, $sp, 32
	addi.d	$s1, $s1, 560
	addi.d	$s5, $a0, 560
	st.d	$s5, $sp, 32
	bne	$s1, $s2, .LBB19_7
# %bb.9:
	beq	$s8, $s0, .LBB19_11
	.p2align	4, , 16
.LBB19_10:                              # %.lr.ph.i.i.i.i74
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporter3RunC2EOS1_)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 560
	addi.d	$s5, $s5, 560
	bne	$s0, $s8, .LBB19_10
.LBB19_11:                              # %_ZSt34__uninitialized_move_if_noexcept_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit79
	beq	$s4, $s8, .LBB19_28
# %bb.12:                               # %.lr.ph.i80.preheader
	move	$s0, $s4
	b	.LBB19_14
	.p2align	4, , 16
.LBB19_13:                              # %_ZSt8_DestroyIN9benchmark17BenchmarkReporter3RunEEvPT_.exit.i
                                        #   in Loop: Header=BB19_14 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 560
	beq	$s0, $s8, .LBB19_28
.LBB19_14:                              # %.lr.ph.i80
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 512
	addi.d	$a0, $s0, 496
.Ltmp103:
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp104:
# %bb.15:                               # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i.i
                                        #   in Loop: Header=BB19_14 Depth=1
	ld.d	$a0, $s0, 360
	addi.d	$a1, $s0, 376
	beq	$a1, $a0, .LBB19_17
# %bb.16:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
                                        #   in Loop: Header=BB19_14 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_17:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
                                        #   in Loop: Header=BB19_14 Depth=1
	ld.d	$a0, $s0, 320
	addi.d	$a1, $s0, 336
	beq	$a1, $a0, .LBB19_19
# %bb.18:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
                                        #   in Loop: Header=BB19_14 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_19:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i
                                        #   in Loop: Header=BB19_14 Depth=1
	ld.d	$a0, $s0, 280
	addi.d	$a1, $s0, 296
	beq	$a1, $a0, .LBB19_13
# %bb.20:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i
                                        #   in Loop: Header=BB19_14 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB19_13
.LBB19_21:
	sub.d	$s5, $s8, $s0
	srai.d	$a1, $s5, 4
	mul.d	$s7, $a1, $a0
	bgeu	$s6, $s7, .LBB19_31
# %bb.22:
	move	$s6, $zero
	sub.d	$s4, $zero, $s3
	sub.d	$s5, $s8, $s3
	.p2align	4, , 16
.LBB19_23:                              # %.lr.ph.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $s5, $s6
	add.d	$a0, $s8, $s6
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporter3RunC2EOS1_)
	jirl	$ra, $ra, 0
	addi.d	$s6, $s6, 560
	add.d	$a0, $s4, $s6
	bnez	$a0, .LBB19_23
# %bb.24:                               # %_ZSt22__uninitialized_move_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit
	ld.d	$a0, $fp, 8
	add.d	$a0, $a0, $s3
	st.d	$a0, $fp, 8
	beq	$s5, $s0, .LBB19_27
# %bb.25:                               # %.lr.ph.i.preheader
	addi.d	$fp, $s8, -560
	.p2align	4, , 16
.LBB19_26:                              # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$a1, $fp, $s4
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporter3RunaSEOS1_)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, -560
	add.d	$a0, $fp, $s4
	addi.d	$a0, $a0, 560
	bne	$a0, $s0, .LBB19_26
.LBB19_27:                              # %_ZSt23__copy_move_backward_a2ILb1EPN9benchmark17BenchmarkReporter3RunES3_ET1_T0_S5_S4_.exit
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s0
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
	pcaddu18i	$t8, %call36(_ZSt14__copy_move_a2ILb0EPKN9benchmark17BenchmarkReporter3RunES4_PS2_ET2_T0_T1_S6_)
	jr	$t8
.LBB19_28:                              # %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunEEvT_S4_.exit
	beqz	$s4, .LBB19_30
# %bb.29:
	ld.d	$a0, $fp, 16
	sub.d	$a1, $a0, $s4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_30:                              # %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EE13_M_deallocateEPS2_m.exit
	st.d	$s3, $fp, 0
	st.d	$s5, $fp, 8
	ori	$a0, $zero, 560
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	mul.d	$a0, $a1, $a0
	add.d	$a0, $s3, $a0
	st.d	$a0, $fp, 16
	b	.LBB19_41
.LBB19_31:                              # %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEElEvRT_T0_St26random_access_iterator_tag.exit
	add.d	$s3, $s1, $s5
	st.d	$s8, $sp, 32
	st.d	$s8, $sp, 16
	addi.d	$a0, $sp, 32
	st.d	$a0, $sp, 24
	move	$a0, $s8
	beq	$s2, $s3, .LBB19_36
# %bb.32:                               # %.lr.ph.i.i.i.preheader
	move	$a0, $s8
	move	$s4, $s3
	.p2align	4, , 16
.LBB19_33:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
.Ltmp89:
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_)
	jirl	$ra, $ra, 0
.Ltmp90:
# %bb.34:                               # %_ZSt10_ConstructIN9benchmark17BenchmarkReporter3RunEJRKS2_EEvPT_DpOT0_.exit.i.i.i
                                        #   in Loop: Header=BB19_33 Depth=1
	ld.d	$a0, $sp, 32
	addi.d	$s4, $s4, 560
	addi.d	$a0, $a0, 560
	st.d	$a0, $sp, 32
	bne	$s4, $s2, .LBB19_33
# %bb.35:                               # %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEESA_PS4_S4_ET1_T_T0_SC_RSaIT2_E.exit.loopexit
	ld.d	$a0, $fp, 8
.LBB19_36:                              # %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN9benchmark17BenchmarkReporter3RunESt6vectorIS4_SaIS4_EEEESA_PS4_S4_ET1_T_T0_SC_RSaIT2_E.exit
	sub.d	$a1, $s6, $s7
	ori	$a2, $zero, 560
	mul.d	$a1, $a1, $a2
	add.d	$s2, $a0, $a1
	st.d	$s2, $fp, 8
	beq	$s8, $s0, .LBB19_40
# %bb.37:                               # %.lr.ph.i.i.i.i53.preheader
	move	$s4, $s0
	.p2align	4, , 16
.LBB19_38:                              # %.lr.ph.i.i.i.i53
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporter3RunC2EOS1_)
	jirl	$ra, $ra, 0
	addi.d	$s4, $s4, 560
	addi.d	$s2, $s2, 560
	bne	$s4, $s8, .LBB19_38
# %bb.39:                               # %_ZSt22__uninitialized_move_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit58.loopexit
	ld.d	$s2, $fp, 8
.LBB19_40:                              # %_ZSt22__uninitialized_move_aIPN9benchmark17BenchmarkReporter3RunES3_SaIS2_EET0_T_S6_S5_RT1_.exit58
	add.d	$a0, $s2, $s5
	st.d	$a0, $fp, 8
	move	$a0, $s1
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZSt14__copy_move_a2ILb0EPKN9benchmark17BenchmarkReporter3RunES4_PS2_ET2_T0_T1_S6_)
	jirl	$ra, $ra, 0
.LBB19_41:
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
.LBB19_42:
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a0, $a0, %pc_lo12(.L.str.56)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB19_43:
.Ltmp91:
	move	$fp, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt19_UninitDestroyGuardIPN9benchmark17BenchmarkReporter3RunEvED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB19_44:
.Ltmp105:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB19_45:                              # %.body
.Ltmp94:
	move	$fp, $a0
	addi.d	$a0, $sp, 16
	pcaddu18i	$ra, %call36(_ZNSt19_UninitDestroyGuardIPN9benchmark17BenchmarkReporter3RunEvED2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
.Ltmp95:
	move	$a0, $s3
	move	$a1, $s7
	pcaddu18i	$ra, %call36(_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunEEvT_S4_)
	jirl	$ra, $ra, 0
.Ltmp96:
# %bb.46:
	move	$a0, $s3
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.Ltmp97:
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp98:
# %bb.47:
.LBB19_48:
.Ltmp99:
	move	$fp, $a0
.Ltmp100:
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp101:
# %bb.49:                               # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB19_50:
.Ltmp102:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag, .Lfunc_end19-_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag
	.cfi_endproc
	.section	.gcc_except_table._ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag,"aG",@progbits,_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPKS2_S4_EEEEvNS7_IPS2_S4_EET_SD_St20forward_iterator_tag,comdat
	.p2align	2, 0x0
GCC_except_table19:
.Lexception12:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase3-.Lttbaseref3
.Lttbaseref3:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end12-.Lcst_begin12
.Lcst_begin12:
	.uleb128 .Lfunc_begin12-.Lfunc_begin12  # >> Call Site 1 <<
	.uleb128 .Ltmp92-.Lfunc_begin12         #   Call between .Lfunc_begin12 and .Ltmp92
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin12         # >> Call Site 2 <<
	.uleb128 .Ltmp93-.Ltmp92                #   Call between .Ltmp92 and .Ltmp93
	.uleb128 .Ltmp94-.Lfunc_begin12         #     jumps to .Ltmp94
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp93-.Lfunc_begin12         # >> Call Site 3 <<
	.uleb128 .Ltmp103-.Ltmp93               #   Call between .Ltmp93 and .Ltmp103
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin12        # >> Call Site 4 <<
	.uleb128 .Ltmp104-.Ltmp103              #   Call between .Ltmp103 and .Ltmp104
	.uleb128 .Ltmp105-.Lfunc_begin12        #     jumps to .Ltmp105
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp104-.Lfunc_begin12        # >> Call Site 5 <<
	.uleb128 .Ltmp89-.Ltmp104               #   Call between .Ltmp104 and .Ltmp89
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin12         # >> Call Site 6 <<
	.uleb128 .Ltmp90-.Ltmp89                #   Call between .Ltmp89 and .Ltmp90
	.uleb128 .Ltmp91-.Lfunc_begin12         #     jumps to .Ltmp91
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin12         # >> Call Site 7 <<
	.uleb128 .Ltmp95-.Ltmp90                #   Call between .Ltmp90 and .Ltmp95
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin12         # >> Call Site 8 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.uleb128 .Ltmp99-.Lfunc_begin12         #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin12         # >> Call Site 9 <<
	.uleb128 .Ltmp97-.Ltmp96                #   Call between .Ltmp96 and .Ltmp97
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin12         # >> Call Site 10 <<
	.uleb128 .Ltmp98-.Ltmp97                #   Call between .Ltmp97 and .Ltmp98
	.uleb128 .Ltmp99-.Lfunc_begin12         #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin12        # >> Call Site 11 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin12        #     jumps to .Ltmp102
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp101-.Lfunc_begin12        # >> Call Site 12 <<
	.uleb128 .Lfunc_end19-.Ltmp101          #   Call between .Ltmp101 and .Lfunc_end19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end12:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt19_UninitDestroyGuardIPN9benchmark17BenchmarkReporter3RunEvED2Ev,"axG",@progbits,_ZNSt19_UninitDestroyGuardIPN9benchmark17BenchmarkReporter3RunEvED2Ev,comdat
	.hidden	_ZNSt19_UninitDestroyGuardIPN9benchmark17BenchmarkReporter3RunEvED2Ev # -- Begin function _ZNSt19_UninitDestroyGuardIPN9benchmark17BenchmarkReporter3RunEvED2Ev
	.weak	_ZNSt19_UninitDestroyGuardIPN9benchmark17BenchmarkReporter3RunEvED2Ev
	.p2align	5
	.type	_ZNSt19_UninitDestroyGuardIPN9benchmark17BenchmarkReporter3RunEvED2Ev,@function
_ZNSt19_UninitDestroyGuardIPN9benchmark17BenchmarkReporter3RunEvED2Ev: # @_ZNSt19_UninitDestroyGuardIPN9benchmark17BenchmarkReporter3RunEvED2Ev
.Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception13
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 8
	bnez	$a1, .LBB20_2
.LBB20_1:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB20_2:
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
.Ltmp106:
	pcaddu18i	$ra, %call36(_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunEEvT_S4_)
	jirl	$ra, $ra, 0
.Ltmp107:
	b	.LBB20_1
.LBB20_3:
.Ltmp108:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end20:
	.size	_ZNSt19_UninitDestroyGuardIPN9benchmark17BenchmarkReporter3RunEvED2Ev, .Lfunc_end20-_ZNSt19_UninitDestroyGuardIPN9benchmark17BenchmarkReporter3RunEvED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt19_UninitDestroyGuardIPN9benchmark17BenchmarkReporter3RunEvED2Ev,"aG",@progbits,_ZNSt19_UninitDestroyGuardIPN9benchmark17BenchmarkReporter3RunEvED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table20:
.Lexception13:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase4-.Lttbaseref4
.Lttbaseref4:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end13-.Lcst_begin13
.Lcst_begin13:
	.uleb128 .Ltmp106-.Lfunc_begin13        # >> Call Site 1 <<
	.uleb128 .Ltmp107-.Ltmp106              #   Call between .Ltmp106 and .Ltmp107
	.uleb128 .Ltmp108-.Lfunc_begin13        #     jumps to .Ltmp108
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp107-.Lfunc_begin13        # >> Call Site 2 <<
	.uleb128 .Lfunc_end20-.Ltmp107          #   Call between .Ltmp107 and .Lfunc_end20
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end13:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase4:
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
	beq	$a1, $s1, .LBB21_2
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
	st.d	$a1, $fp, 280
	ld.d	$a0, $s1, 0
	st.d	$a0, $fp, 296
	b	.LBB21_3
.LBB21_2:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i
	ld.d	$a1, $s0, 288
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB21_3:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
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
	beq	$a1, $s1, .LBB21_5
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i11
	st.d	$a1, $fp, 320
	ld.d	$a0, $s1, 0
	st.d	$a0, $fp, 336
	b	.LBB21_6
.LBB21_5:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i12
	ld.d	$a1, $s0, 328
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB21_6:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit13
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
	beq	$a1, $s1, .LBB21_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i14
	st.d	$a1, $fp, 360
	ld.d	$a0, $s1, 0
	st.d	$a0, $fp, 376
	b	.LBB21_9
.LBB21_8:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i15
	ld.d	$a1, $s0, 368
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB21_9:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit16
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
	beqz	$a2, .LBB21_11
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
	b	.LBB21_12
.LBB21_11:
	move	$a1, $zero
	st.d	$zero, $fp, 512
	st.d	$a0, $fp, 520
	st.d	$a0, $fp, 528
	st.d	$zero, $fp, 536
.LBB21_12:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2EOSE_.exit
	st.w	$a1, $fp, 504
	vld	$vr0, $s0, 544
	vst	$vr0, $fp, 544
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end21:
	.size	_ZN9benchmark17BenchmarkReporter3RunC2EOS1_, .Lfunc_end21-_ZN9benchmark17BenchmarkReporter3RunC2EOS1_
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
	beq	$a1, $s1, .LBB22_2
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
	st.d	$a1, $s0, 0
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 16
	b	.LBB22_3
.LBB22_2:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i
	ld.d	$a1, $fp, 8
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB22_3:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
	ld.d	$a0, $fp, 8
	st.d	$a0, $s0, 8
	st.d	$s1, $fp, 0
	st.b	$zero, $fp, 16
	addi.d	$a0, $s0, 48
	st.d	$a0, $s0, 32
	ld.d	$a1, $fp, 32
	addi.d	$s1, $fp, 48
	st.d	$zero, $fp, 8
	beq	$a1, $s1, .LBB22_5
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i9
	st.d	$a1, $s0, 32
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 48
	b	.LBB22_6
.LBB22_5:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i10
	ld.d	$a1, $fp, 40
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB22_6:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit11
	ld.d	$a0, $fp, 40
	st.d	$a0, $s0, 40
	st.d	$s1, $fp, 32
	st.b	$zero, $fp, 48
	addi.d	$a0, $s0, 80
	st.d	$a0, $s0, 64
	ld.d	$a1, $fp, 64
	addi.d	$s1, $fp, 80
	st.d	$zero, $fp, 40
	beq	$a1, $s1, .LBB22_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
	st.d	$a1, $s0, 64
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 80
	b	.LBB22_9
.LBB22_8:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i13
	ld.d	$a1, $fp, 72
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB22_9:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit14
	ld.d	$a0, $fp, 72
	st.d	$a0, $s0, 72
	st.d	$s1, $fp, 64
	st.b	$zero, $fp, 80
	addi.d	$a0, $s0, 112
	st.d	$a0, $s0, 96
	ld.d	$a1, $fp, 96
	addi.d	$s1, $fp, 112
	st.d	$zero, $fp, 72
	beq	$a1, $s1, .LBB22_11
# %bb.10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
	st.d	$a1, $s0, 96
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 112
	b	.LBB22_12
.LBB22_11:                              # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i16
	ld.d	$a1, $fp, 104
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB22_12:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17
	ld.d	$a0, $fp, 104
	st.d	$a0, $s0, 104
	st.d	$s1, $fp, 96
	st.b	$zero, $fp, 112
	addi.d	$a0, $s0, 144
	st.d	$a0, $s0, 128
	ld.d	$a1, $fp, 128
	addi.d	$s1, $fp, 144
	st.d	$zero, $fp, 104
	beq	$a1, $s1, .LBB22_14
# %bb.13:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i18
	st.d	$a1, $s0, 128
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 144
	b	.LBB22_15
.LBB22_14:                              # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i19
	ld.d	$a1, $fp, 136
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB22_15:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit20
	ld.d	$a0, $fp, 136
	st.d	$a0, $s0, 136
	st.d	$s1, $fp, 128
	st.b	$zero, $fp, 144
	addi.d	$a0, $s0, 176
	st.d	$a0, $s0, 160
	ld.d	$a1, $fp, 160
	addi.d	$s1, $fp, 176
	st.d	$zero, $fp, 136
	beq	$a1, $s1, .LBB22_17
# %bb.16:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i21
	st.d	$a1, $s0, 160
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 176
	b	.LBB22_18
.LBB22_17:                              # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i22
	ld.d	$a1, $fp, 168
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB22_18:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit23
	ld.d	$a0, $fp, 168
	st.d	$a0, $s0, 168
	st.d	$s1, $fp, 160
	st.b	$zero, $fp, 176
	addi.d	$a0, $s0, 208
	st.d	$a0, $s0, 192
	ld.d	$a1, $fp, 192
	addi.d	$s1, $fp, 208
	st.d	$zero, $fp, 168
	beq	$a1, $s1, .LBB22_20
# %bb.19:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i24
	st.d	$a1, $s0, 192
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 208
	b	.LBB22_21
.LBB22_20:                              # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i25
	ld.d	$a1, $fp, 200
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB22_21:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit26
	ld.d	$a0, $fp, 200
	st.d	$a0, $s0, 200
	st.d	$s1, $fp, 192
	st.b	$zero, $fp, 208
	addi.d	$a0, $s0, 240
	st.d	$a0, $s0, 224
	ld.d	$a1, $fp, 224
	addi.d	$s1, $fp, 240
	st.d	$zero, $fp, 200
	beq	$a1, $s1, .LBB22_23
# %bb.22:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i27
	st.d	$a1, $s0, 224
	ld.d	$a0, $s1, 0
	st.d	$a0, $s0, 240
	b	.LBB22_24
.LBB22_23:                              # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i28
	ld.d	$a1, $fp, 232
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB22_24:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit29
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
.Lfunc_end22:
	.size	_ZN9benchmark13BenchmarkNameC2EOS0_, .Lfunc_end22-_ZN9benchmark13BenchmarkNameC2EOS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunEEvT_S4_,"axG",@progbits,_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunEEvT_S4_,comdat
	.hidden	_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunEEvT_S4_ # -- Begin function _ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunEEvT_S4_
	.weak	_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunEEvT_S4_
	.p2align	5
	.type	_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunEEvT_S4_,@function
_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunEEvT_S4_: # @_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunEEvT_S4_
.Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception14
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	beq	$a0, $a1, .LBB23_10
# %bb.1:                                # %.lr.ph.preheader
	move	$fp, $a1
	move	$s0, $a0
	b	.LBB23_3
	.p2align	4, , 16
.LBB23_2:                               # %_ZSt8_DestroyIN9benchmark17BenchmarkReporter3RunEEvPT_.exit
                                        #   in Loop: Header=BB23_3 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 560
	beq	$s0, $fp, .LBB23_10
.LBB23_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 512
	addi.d	$a0, $s0, 496
.Ltmp109:
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp110:
# %bb.4:                                # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i
                                        #   in Loop: Header=BB23_3 Depth=1
	ld.d	$a0, $s0, 360
	addi.d	$a1, $s0, 376
	beq	$a1, $a0, .LBB23_6
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
                                        #   in Loop: Header=BB23_3 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB23_6:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
                                        #   in Loop: Header=BB23_3 Depth=1
	ld.d	$a0, $s0, 320
	addi.d	$a1, $s0, 336
	beq	$a1, $a0, .LBB23_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
                                        #   in Loop: Header=BB23_3 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB23_8:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i
                                        #   in Loop: Header=BB23_3 Depth=1
	ld.d	$a0, $s0, 280
	addi.d	$a1, $s0, 296
	beq	$a1, $a0, .LBB23_2
# %bb.9:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
                                        #   in Loop: Header=BB23_3 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB23_2
.LBB23_10:                              # %._crit_edge
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB23_11:
.Ltmp111:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end23:
	.size	_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunEEvT_S4_, .Lfunc_end23-_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunEEvT_S4_
	.cfi_endproc
	.section	.gcc_except_table._ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunEEvT_S4_,"aG",@progbits,_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunEEvT_S4_,comdat
	.p2align	2, 0x0
GCC_except_table23:
.Lexception14:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase5-.Lttbaseref5
.Lttbaseref5:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end14-.Lcst_begin14
.Lcst_begin14:
	.uleb128 .Lfunc_begin14-.Lfunc_begin14  # >> Call Site 1 <<
	.uleb128 .Ltmp109-.Lfunc_begin14        #   Call between .Lfunc_begin14 and .Ltmp109
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin14        # >> Call Site 2 <<
	.uleb128 .Ltmp110-.Ltmp109              #   Call between .Ltmp109 and .Ltmp110
	.uleb128 .Ltmp111-.Lfunc_begin14        #     jumps to .Ltmp111
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp110-.Lfunc_begin14        # >> Call Site 3 <<
	.uleb128 .Lfunc_end23-.Ltmp110          #   Call between .Ltmp110 and .Lfunc_end23
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end14:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase5:
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
	beq	$a0, $a1, .LBB24_2
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB24_2:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $fp, 192
	addi.d	$a1, $fp, 208
	beq	$a0, $a1, .LBB24_4
# %bb.3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB24_4:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
	ld.d	$a0, $fp, 160
	addi.d	$a1, $fp, 176
	beq	$a0, $a1, .LBB24_6
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB24_6:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
	ld.d	$a0, $fp, 128
	addi.d	$a1, $fp, 144
	beq	$a0, $a1, .LBB24_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB24_8:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
	ld.d	$a0, $fp, 96
	addi.d	$a1, $fp, 112
	beq	$a0, $a1, .LBB24_10
# %bb.9:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB24_10:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
	ld.d	$a0, $fp, 64
	addi.d	$a1, $fp, 80
	beq	$a0, $a1, .LBB24_12
# %bb.11:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB24_12:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
	ld.d	$a0, $fp, 32
	addi.d	$a1, $fp, 48
	beq	$a0, $a1, .LBB24_14
# %bb.13:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB24_14:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
	ld.d	$a0, $fp, 0
	addi.d	$a1, $fp, 16
	beq	$a0, $a1, .LBB24_16
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB24_16:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end24:
	.size	_ZN9benchmark13BenchmarkNameD2Ev, .Lfunc_end24-_ZN9benchmark13BenchmarkNameD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.cfi_startproc
# %bb.0:
	beqz	$a1, .LBB25_6
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
	b	.LBB25_3
	.p2align	4, , 16
.LBB25_2:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
                                        #   in Loop: Header=BB25_3 Depth=1
	ori	$a1, $zero, 80
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	beqz	$s1, .LBB25_5
.LBB25_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$s1, $s0, 16
	addi.d	$a1, $s0, 48
	beq	$a0, $a1, .LBB25_2
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
                                        #   in Loop: Header=BB25_3 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB25_2
.LBB25_5:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB25_6:                               # %._crit_edge
	ret
.Lfunc_end25:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E, .Lfunc_end25-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark17BenchmarkReporter3RunaSEOS1_,"axG",@progbits,_ZN9benchmark17BenchmarkReporter3RunaSEOS1_,comdat
	.hidden	_ZN9benchmark17BenchmarkReporter3RunaSEOS1_ # -- Begin function _ZN9benchmark17BenchmarkReporter3RunaSEOS1_
	.weak	_ZN9benchmark17BenchmarkReporter3RunaSEOS1_
	.p2align	5
	.type	_ZN9benchmark17BenchmarkReporter3RunaSEOS1_,@function
_ZN9benchmark17BenchmarkReporter3RunaSEOS1_: # @_ZN9benchmark17BenchmarkReporter3RunaSEOS1_
.Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception15
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$s0, $a1
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameaSEOS0_)
	jirl	$ra, $ra, 0
	vld	$vr0, $s0, 256
	vst	$vr0, $fp, 256
	ld.w	$a1, $s0, 272
	ld.d	$a0, $fp, 280
	addi.d	$a3, $fp, 296
	st.w	$a1, $fp, 272
	beq	$a0, $a3, .LBB26_3
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
	ld.d	$a1, $s0, 280
	addi.d	$a2, $s0, 296
	beq	$a1, $a2, .LBB26_7
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
	ld.d	$a3, $a3, 0
	b	.LBB26_5
.LBB26_3:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
	ld.d	$a1, $s0, 280
	addi.d	$a2, $s0, 296
	beq	$a1, $a2, .LBB26_7
# %bb.4:
	move	$a0, $zero
                                        # implicit-def: $r7
.LBB26_5:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit24.i
	ld.d	$a4, $s0, 288
	st.d	$a1, $fp, 280
	st.d	$a4, $fp, 288
	ld.d	$a1, $s0, 296
	st.d	$a1, $fp, 296
	beqz	$a0, .LBB26_11
# %bb.6:
	st.d	$a0, $s0, 280
	st.d	$a3, $s0, 296
	b	.LBB26_14
.LBB26_7:
	beq	$s0, $fp, .LBB26_46
# %bb.8:
	ld.d	$a2, $s0, 288
	beqz	$a2, .LBB26_13
# %bb.9:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB26_12
# %bb.10:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB26_13
.LBB26_11:
	st.d	$a2, $s0, 280
	move	$a0, $a2
	b	.LBB26_14
.LBB26_12:
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB26_13:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
	ld.d	$a0, $s0, 288
	ld.d	$a1, $fp, 280
	st.d	$a0, $fp, 288
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $s0, 280
.LBB26_14:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
	st.d	$zero, $s0, 288
	st.b	$zero, $a0, 0
	ld.w	$a1, $s0, 312
	ld.d	$a0, $fp, 320
	addi.d	$a3, $fp, 336
	st.w	$a1, $fp, 312
	beq	$a0, $a3, .LBB26_17
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i11
	ld.d	$a1, $s0, 320
	addi.d	$a2, $s0, 336
	beq	$a1, $a2, .LBB26_21
# %bb.16:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i12
	ld.d	$a3, $a3, 0
	b	.LBB26_19
.LBB26_17:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i20
	ld.d	$a1, $s0, 320
	addi.d	$a2, $s0, 336
	beq	$a1, $a2, .LBB26_21
# %bb.18:
	move	$a0, $zero
                                        # implicit-def: $r7
.LBB26_19:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit24.i13
	ld.d	$a4, $s0, 328
	st.d	$a1, $fp, 320
	st.d	$a4, $fp, 328
	ld.d	$a1, $s0, 336
	st.d	$a1, $fp, 336
	beqz	$a0, .LBB26_25
# %bb.20:
	st.d	$a0, $s0, 320
	st.d	$a3, $s0, 336
	b	.LBB26_28
.LBB26_21:
	beq	$s0, $fp, .LBB26_47
# %bb.22:
	ld.d	$a2, $s0, 328
	beqz	$a2, .LBB26_27
# %bb.23:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB26_26
# %bb.24:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB26_27
.LBB26_25:
	st.d	$a2, $s0, 320
	move	$a0, $a2
	b	.LBB26_28
.LBB26_26:
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB26_27:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i18
	ld.d	$a0, $s0, 328
	ld.d	$a1, $fp, 320
	st.d	$a0, $fp, 328
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $s0, 320
.LBB26_28:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit21
	st.d	$zero, $s0, 328
	st.b	$zero, $a0, 0
	ld.w	$a1, $s0, 352
	ld.d	$a0, $fp, 360
	addi.d	$a3, $fp, 376
	st.w	$a1, $fp, 352
	beq	$a0, $a3, .LBB26_31
# %bb.29:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i22
	ld.d	$a1, $s0, 360
	addi.d	$a2, $s0, 376
	beq	$a1, $a2, .LBB26_35
# %bb.30:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i23
	ld.d	$a3, $a3, 0
	b	.LBB26_33
.LBB26_31:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i31
	ld.d	$a1, $s0, 360
	addi.d	$a2, $s0, 376
	beq	$a1, $a2, .LBB26_35
# %bb.32:
	move	$a0, $zero
                                        # implicit-def: $r7
.LBB26_33:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit24.i24
	ld.d	$a4, $s0, 368
	st.d	$a1, $fp, 360
	st.d	$a4, $fp, 368
	ld.d	$a1, $s0, 376
	st.d	$a1, $fp, 376
	beqz	$a0, .LBB26_39
# %bb.34:
	st.d	$a0, $s0, 360
	st.d	$a3, $s0, 376
	b	.LBB26_42
.LBB26_35:
	beq	$s0, $fp, .LBB26_48
# %bb.36:
	ld.d	$a2, $s0, 368
	beqz	$a2, .LBB26_41
# %bb.37:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB26_40
# %bb.38:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB26_41
.LBB26_39:
	st.d	$a2, $s0, 360
	move	$a0, $a2
	b	.LBB26_42
.LBB26_40:
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB26_41:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i29
	ld.d	$a0, $s0, 368
	ld.d	$a1, $fp, 360
	st.d	$a0, $fp, 368
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $s0, 360
.LBB26_42:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit32
	st.d	$zero, $s0, 368
	st.b	$zero, $a0, 0
	addi.d	$a0, $fp, 392
	addi.d	$a1, $s0, 392
	ori	$a2, $zero, 98
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 512
	addi.d	$a0, $fp, 496
.Ltmp112:
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp113:
# %bb.43:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE5clearEv.exit.i.i.i
	addi.d	$a0, $fp, 504
	st.d	$zero, $fp, 512
	st.d	$a0, $fp, 520
	st.d	$a0, $fp, 528
	ld.d	$a1, $s0, 512
	st.d	$zero, $fp, 536
	beqz	$a1, .LBB26_45
# %bb.44:
	ld.w	$a2, $s0, 504
	st.d	$a1, $fp, 512
	vld	$vr0, $s0, 520
	addi.d	$a3, $s0, 504
	ld.d	$a4, $s0, 536
	st.w	$a2, $fp, 504
	vst	$vr0, $fp, 520
	st.d	$a0, $a1, 8
	st.d	$a4, $fp, 536
	st.d	$zero, $s0, 512
	st.d	$a3, $s0, 520
	st.d	$a3, $s0, 528
	st.d	$zero, $s0, 536
.LBB26_45:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEaSEOSE_.exit
	vld	$vr0, $s0, 544
	vst	$vr0, $fp, 544
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB26_46:
	move	$a0, $a1
	b	.LBB26_14
.LBB26_47:
	move	$a0, $a1
	b	.LBB26_28
.LBB26_48:
	move	$a0, $a1
	b	.LBB26_42
.LBB26_49:
.Ltmp114:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end26:
	.size	_ZN9benchmark17BenchmarkReporter3RunaSEOS1_, .Lfunc_end26-_ZN9benchmark17BenchmarkReporter3RunaSEOS1_
	.cfi_endproc
	.section	.gcc_except_table._ZN9benchmark17BenchmarkReporter3RunaSEOS1_,"aG",@progbits,_ZN9benchmark17BenchmarkReporter3RunaSEOS1_,comdat
	.p2align	2, 0x0
GCC_except_table26:
.Lexception15:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase6-.Lttbaseref6
.Lttbaseref6:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end15-.Lcst_begin15
.Lcst_begin15:
	.uleb128 .Lfunc_begin15-.Lfunc_begin15  # >> Call Site 1 <<
	.uleb128 .Ltmp112-.Lfunc_begin15        #   Call between .Lfunc_begin15 and .Ltmp112
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin15        # >> Call Site 2 <<
	.uleb128 .Ltmp113-.Ltmp112              #   Call between .Ltmp112 and .Ltmp113
	.uleb128 .Ltmp114-.Lfunc_begin15        #     jumps to .Ltmp114
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp113-.Lfunc_begin15        # >> Call Site 3 <<
	.uleb128 .Lfunc_end26-.Ltmp113          #   Call between .Ltmp113 and .Lfunc_end26
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end15:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase6:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9benchmark13BenchmarkNameaSEOS0_,"axG",@progbits,_ZN9benchmark13BenchmarkNameaSEOS0_,comdat
	.hidden	_ZN9benchmark13BenchmarkNameaSEOS0_ # -- Begin function _ZN9benchmark13BenchmarkNameaSEOS0_
	.weak	_ZN9benchmark13BenchmarkNameaSEOS0_
	.p2align	5
	.type	_ZN9benchmark13BenchmarkNameaSEOS0_,@function
_ZN9benchmark13BenchmarkNameaSEOS0_:    # @_ZN9benchmark13BenchmarkNameaSEOS0_
	.cfi_startproc
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
	ld.d	$a0, $a0, 0
	addi.d	$a3, $fp, 16
	move	$s0, $a1
	beq	$a0, $a3, .LBB27_3
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
	ld.d	$a1, $s0, 0
	addi.d	$a2, $s0, 16
	beq	$a1, $a2, .LBB27_7
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
	ld.d	$a3, $a3, 0
	b	.LBB27_5
.LBB27_3:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
	ld.d	$a1, $s0, 0
	addi.d	$a2, $s0, 16
	beq	$a1, $a2, .LBB27_7
# %bb.4:
	move	$a0, $zero
                                        # implicit-def: $r7
.LBB27_5:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit24.i
	ld.d	$a4, $s0, 8
	st.d	$a1, $fp, 0
	st.d	$a4, $fp, 8
	ld.d	$a1, $s0, 16
	st.d	$a1, $fp, 16
	beqz	$a0, .LBB27_11
# %bb.6:
	st.d	$a0, $s0, 0
	st.d	$a3, $s0, 16
	b	.LBB27_14
.LBB27_7:
	beq	$s0, $fp, .LBB27_113
# %bb.8:
	ld.d	$a2, $s0, 8
	beqz	$a2, .LBB27_13
# %bb.9:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB27_12
# %bb.10:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB27_13
.LBB27_11:
	st.d	$a2, $s0, 0
	move	$a0, $a2
	b	.LBB27_14
.LBB27_12:
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB27_13:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
	ld.d	$a0, $s0, 8
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $s0, 0
.LBB27_14:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
	st.d	$zero, $s0, 8
	st.b	$zero, $a0, 0
	ld.d	$a0, $fp, 32
	addi.d	$a3, $fp, 48
	beq	$a0, $a3, .LBB27_17
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i9
	ld.d	$a1, $s0, 32
	addi.d	$a2, $s0, 48
	beq	$a1, $a2, .LBB27_21
# %bb.16:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i10
	ld.d	$a3, $a3, 0
	b	.LBB27_19
.LBB27_17:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i18
	ld.d	$a1, $s0, 32
	addi.d	$a2, $s0, 48
	beq	$a1, $a2, .LBB27_21
# %bb.18:
	move	$a0, $zero
                                        # implicit-def: $r7
.LBB27_19:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit24.i11
	ld.d	$a4, $s0, 40
	st.d	$a1, $fp, 32
	st.d	$a4, $fp, 40
	ld.d	$a1, $s0, 48
	st.d	$a1, $fp, 48
	beqz	$a0, .LBB27_25
# %bb.20:
	st.d	$a0, $s0, 32
	st.d	$a3, $s0, 48
	b	.LBB27_28
.LBB27_21:
	beq	$s0, $fp, .LBB27_114
# %bb.22:
	ld.d	$a2, $s0, 40
	beqz	$a2, .LBB27_27
# %bb.23:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB27_26
# %bb.24:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB27_27
.LBB27_25:
	st.d	$a2, $s0, 32
	move	$a0, $a2
	b	.LBB27_28
.LBB27_26:
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB27_27:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i16
	ld.d	$a0, $s0, 40
	ld.d	$a1, $fp, 32
	st.d	$a0, $fp, 40
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $s0, 32
.LBB27_28:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit19
	st.d	$zero, $s0, 40
	st.b	$zero, $a0, 0
	ld.d	$a0, $fp, 64
	addi.d	$a3, $fp, 80
	beq	$a0, $a3, .LBB27_31
# %bb.29:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i20
	ld.d	$a1, $s0, 64
	addi.d	$a2, $s0, 80
	beq	$a1, $a2, .LBB27_35
# %bb.30:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i21
	ld.d	$a3, $a3, 0
	b	.LBB27_33
.LBB27_31:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i29
	ld.d	$a1, $s0, 64
	addi.d	$a2, $s0, 80
	beq	$a1, $a2, .LBB27_35
# %bb.32:
	move	$a0, $zero
                                        # implicit-def: $r7
.LBB27_33:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit24.i22
	ld.d	$a4, $s0, 72
	st.d	$a1, $fp, 64
	st.d	$a4, $fp, 72
	ld.d	$a1, $s0, 80
	st.d	$a1, $fp, 80
	beqz	$a0, .LBB27_39
# %bb.34:
	st.d	$a0, $s0, 64
	st.d	$a3, $s0, 80
	b	.LBB27_42
.LBB27_35:
	beq	$s0, $fp, .LBB27_115
# %bb.36:
	ld.d	$a2, $s0, 72
	beqz	$a2, .LBB27_41
# %bb.37:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB27_40
# %bb.38:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB27_41
.LBB27_39:
	st.d	$a2, $s0, 64
	move	$a0, $a2
	b	.LBB27_42
.LBB27_40:
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB27_41:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i27
	ld.d	$a0, $s0, 72
	ld.d	$a1, $fp, 64
	st.d	$a0, $fp, 72
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $s0, 64
.LBB27_42:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit30
	st.d	$zero, $s0, 72
	st.b	$zero, $a0, 0
	ld.d	$a0, $fp, 96
	addi.d	$a3, $fp, 112
	beq	$a0, $a3, .LBB27_45
# %bb.43:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i31
	ld.d	$a1, $s0, 96
	addi.d	$a2, $s0, 112
	beq	$a1, $a2, .LBB27_49
# %bb.44:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i32
	ld.d	$a3, $a3, 0
	b	.LBB27_47
.LBB27_45:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i40
	ld.d	$a1, $s0, 96
	addi.d	$a2, $s0, 112
	beq	$a1, $a2, .LBB27_49
# %bb.46:
	move	$a0, $zero
                                        # implicit-def: $r7
.LBB27_47:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit24.i33
	ld.d	$a4, $s0, 104
	st.d	$a1, $fp, 96
	st.d	$a4, $fp, 104
	ld.d	$a1, $s0, 112
	st.d	$a1, $fp, 112
	beqz	$a0, .LBB27_53
# %bb.48:
	st.d	$a0, $s0, 96
	st.d	$a3, $s0, 112
	b	.LBB27_56
.LBB27_49:
	beq	$s0, $fp, .LBB27_116
# %bb.50:
	ld.d	$a2, $s0, 104
	beqz	$a2, .LBB27_55
# %bb.51:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB27_54
# %bb.52:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB27_55
.LBB27_53:
	st.d	$a2, $s0, 96
	move	$a0, $a2
	b	.LBB27_56
.LBB27_54:
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB27_55:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i38
	ld.d	$a0, $s0, 104
	ld.d	$a1, $fp, 96
	st.d	$a0, $fp, 104
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $s0, 96
.LBB27_56:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit41
	st.d	$zero, $s0, 104
	st.b	$zero, $a0, 0
	ld.d	$a0, $fp, 128
	addi.d	$a3, $fp, 144
	beq	$a0, $a3, .LBB27_59
# %bb.57:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i42
	ld.d	$a1, $s0, 128
	addi.d	$a2, $s0, 144
	beq	$a1, $a2, .LBB27_63
# %bb.58:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i43
	ld.d	$a3, $a3, 0
	b	.LBB27_61
.LBB27_59:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i51
	ld.d	$a1, $s0, 128
	addi.d	$a2, $s0, 144
	beq	$a1, $a2, .LBB27_63
# %bb.60:
	move	$a0, $zero
                                        # implicit-def: $r7
.LBB27_61:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit24.i44
	ld.d	$a4, $s0, 136
	st.d	$a1, $fp, 128
	st.d	$a4, $fp, 136
	ld.d	$a1, $s0, 144
	st.d	$a1, $fp, 144
	beqz	$a0, .LBB27_67
# %bb.62:
	st.d	$a0, $s0, 128
	st.d	$a3, $s0, 144
	b	.LBB27_70
.LBB27_63:
	beq	$s0, $fp, .LBB27_117
# %bb.64:
	ld.d	$a2, $s0, 136
	beqz	$a2, .LBB27_69
# %bb.65:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB27_68
# %bb.66:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB27_69
.LBB27_67:
	st.d	$a2, $s0, 128
	move	$a0, $a2
	b	.LBB27_70
.LBB27_68:
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB27_69:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i49
	ld.d	$a0, $s0, 136
	ld.d	$a1, $fp, 128
	st.d	$a0, $fp, 136
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $s0, 128
.LBB27_70:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit52
	st.d	$zero, $s0, 136
	st.b	$zero, $a0, 0
	ld.d	$a0, $fp, 160
	addi.d	$a3, $fp, 176
	beq	$a0, $a3, .LBB27_73
# %bb.71:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i53
	ld.d	$a1, $s0, 160
	addi.d	$a2, $s0, 176
	beq	$a1, $a2, .LBB27_77
# %bb.72:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i54
	ld.d	$a3, $a3, 0
	b	.LBB27_75
.LBB27_73:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i62
	ld.d	$a1, $s0, 160
	addi.d	$a2, $s0, 176
	beq	$a1, $a2, .LBB27_77
# %bb.74:
	move	$a0, $zero
                                        # implicit-def: $r7
.LBB27_75:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit24.i55
	ld.d	$a4, $s0, 168
	st.d	$a1, $fp, 160
	st.d	$a4, $fp, 168
	ld.d	$a1, $s0, 176
	st.d	$a1, $fp, 176
	beqz	$a0, .LBB27_81
# %bb.76:
	st.d	$a0, $s0, 160
	st.d	$a3, $s0, 176
	b	.LBB27_84
.LBB27_77:
	beq	$s0, $fp, .LBB27_118
# %bb.78:
	ld.d	$a2, $s0, 168
	beqz	$a2, .LBB27_83
# %bb.79:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB27_82
# %bb.80:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB27_83
.LBB27_81:
	st.d	$a2, $s0, 160
	move	$a0, $a2
	b	.LBB27_84
.LBB27_82:
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB27_83:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i60
	ld.d	$a0, $s0, 168
	ld.d	$a1, $fp, 160
	st.d	$a0, $fp, 168
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $s0, 160
.LBB27_84:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit63
	st.d	$zero, $s0, 168
	st.b	$zero, $a0, 0
	ld.d	$a0, $fp, 192
	addi.d	$a3, $fp, 208
	beq	$a0, $a3, .LBB27_87
# %bb.85:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i64
	ld.d	$a1, $s0, 192
	addi.d	$a2, $s0, 208
	beq	$a1, $a2, .LBB27_91
# %bb.86:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i65
	ld.d	$a3, $a3, 0
	b	.LBB27_89
.LBB27_87:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i73
	ld.d	$a1, $s0, 192
	addi.d	$a2, $s0, 208
	beq	$a1, $a2, .LBB27_91
# %bb.88:
	move	$a0, $zero
                                        # implicit-def: $r7
.LBB27_89:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit24.i66
	ld.d	$a4, $s0, 200
	st.d	$a1, $fp, 192
	st.d	$a4, $fp, 200
	ld.d	$a1, $s0, 208
	st.d	$a1, $fp, 208
	beqz	$a0, .LBB27_95
# %bb.90:
	st.d	$a0, $s0, 192
	st.d	$a3, $s0, 208
	b	.LBB27_98
.LBB27_91:
	beq	$s0, $fp, .LBB27_119
# %bb.92:
	ld.d	$a2, $s0, 200
	beqz	$a2, .LBB27_97
# %bb.93:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB27_96
# %bb.94:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB27_97
.LBB27_95:
	st.d	$a2, $s0, 192
	move	$a0, $a2
	b	.LBB27_98
.LBB27_96:
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB27_97:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i71
	ld.d	$a0, $s0, 200
	ld.d	$a1, $fp, 192
	st.d	$a0, $fp, 200
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $s0, 192
.LBB27_98:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit74
	st.d	$zero, $s0, 200
	st.b	$zero, $a0, 0
	ld.d	$a0, $fp, 224
	addi.d	$a3, $fp, 240
	beq	$a0, $a3, .LBB27_101
# %bb.99:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i75
	ld.d	$a1, $s0, 224
	addi.d	$a2, $s0, 240
	beq	$a1, $a2, .LBB27_105
# %bb.100:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i76
	ld.d	$a3, $a3, 0
	b	.LBB27_103
.LBB27_101:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i84
	ld.d	$a1, $s0, 224
	addi.d	$a2, $s0, 240
	beq	$a1, $a2, .LBB27_105
# %bb.102:
	move	$a0, $zero
                                        # implicit-def: $r7
.LBB27_103:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit24.i77
	ld.d	$a4, $s0, 232
	st.d	$a1, $fp, 224
	st.d	$a4, $fp, 232
	ld.d	$a1, $s0, 240
	st.d	$a1, $fp, 240
	beqz	$a0, .LBB27_109
# %bb.104:
	st.d	$a0, $s0, 224
	st.d	$a3, $s0, 240
	b	.LBB27_112
.LBB27_105:
	beq	$s0, $fp, .LBB27_120
# %bb.106:
	ld.d	$a2, $s0, 232
	beqz	$a2, .LBB27_111
# %bb.107:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB27_110
# %bb.108:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB27_111
.LBB27_109:
	st.d	$a2, $s0, 224
	move	$a0, $a2
	b	.LBB27_112
.LBB27_110:
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB27_111:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i82
	ld.d	$a0, $s0, 232
	ld.d	$a1, $fp, 224
	st.d	$a0, $fp, 232
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $s0, 224
.LBB27_112:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit85
	st.d	$zero, $s0, 232
	st.b	$zero, $a0, 0
	move	$a0, $fp
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB27_113:
	move	$a0, $a1
	b	.LBB27_14
.LBB27_114:
	move	$a0, $a1
	b	.LBB27_28
.LBB27_115:
	move	$a0, $a1
	b	.LBB27_42
.LBB27_116:
	move	$a0, $a1
	b	.LBB27_56
.LBB27_117:
	move	$a0, $a1
	b	.LBB27_70
.LBB27_118:
	move	$a0, $a1
	b	.LBB27_84
.LBB27_119:
	move	$a0, $a1
	b	.LBB27_98
.LBB27_120:
	move	$a0, $a1
	b	.LBB27_112
.Lfunc_end27:
	.size	_ZN9benchmark13BenchmarkNameaSEOS0_, .Lfunc_end27-_ZN9benchmark13BenchmarkNameaSEOS0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt14__copy_move_a2ILb0EPKN9benchmark17BenchmarkReporter3RunES4_PS2_ET2_T0_T1_S6_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPKN9benchmark17BenchmarkReporter3RunES4_PS2_ET2_T0_T1_S6_,comdat
	.hidden	_ZSt14__copy_move_a2ILb0EPKN9benchmark17BenchmarkReporter3RunES4_PS2_ET2_T0_T1_S6_ # -- Begin function _ZSt14__copy_move_a2ILb0EPKN9benchmark17BenchmarkReporter3RunES4_PS2_ET2_T0_T1_S6_
	.weak	_ZSt14__copy_move_a2ILb0EPKN9benchmark17BenchmarkReporter3RunES4_PS2_ET2_T0_T1_S6_
	.p2align	5
	.type	_ZSt14__copy_move_a2ILb0EPKN9benchmark17BenchmarkReporter3RunES4_PS2_ET2_T0_T1_S6_,@function
_ZSt14__copy_move_a2ILb0EPKN9benchmark17BenchmarkReporter3RunES4_PS2_ET2_T0_T1_S6_: # @_ZSt14__copy_move_a2ILb0EPKN9benchmark17BenchmarkReporter3RunES4_PS2_ET2_T0_T1_S6_
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
	move	$fp, $a2
	beq	$a0, $a1, .LBB28_3
# %bb.1:                                # %.lr.ph.preheader
	move	$s0, $a1
	move	$s1, $a0
	.p2align	4, , 16
.LBB28_2:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $fp
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 32
	addi.d	$a1, $s1, 32
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 64
	addi.d	$a1, $s1, 64
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 96
	addi.d	$a1, $s1, 96
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 128
	addi.d	$a1, $s1, 128
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 160
	addi.d	$a1, $s1, 160
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 192
	addi.d	$a1, $s1, 192
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 224
	addi.d	$a1, $s1, 224
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 272
	st.w	$a0, $fp, 272
	vld	$vr0, $s1, 256
	vst	$vr0, $fp, 256
	addi.d	$a0, $fp, 280
	addi.d	$a1, $s1, 280
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 312
	st.w	$a0, $fp, 312
	addi.d	$a0, $fp, 320
	addi.d	$a1, $s1, 320
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s1, 352
	st.w	$a0, $fp, 352
	addi.d	$a0, $fp, 360
	addi.d	$a1, $s1, 360
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 392
	addi.d	$a1, $s1, 392
	ori	$a2, $zero, 98
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	addi.d	$a0, $fp, 496
	addi.d	$a1, $s1, 496
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_)
	jirl	$ra, $ra, 0
	vld	$vr0, $s1, 544
	vst	$vr0, $fp, 544
	addi.d	$s1, $s1, 560
	addi.d	$fp, $fp, 560
	bne	$s1, $s0, .LBB28_2
.LBB28_3:                               # %._crit_edge
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end28:
	.size	_ZSt14__copy_move_a2ILb0EPKN9benchmark17BenchmarkReporter3RunES4_PS2_ET2_T0_T1_S6_, .Lfunc_end28-_ZSt14__copy_move_a2ILb0EPKN9benchmark17BenchmarkReporter3RunES4_PS2_ET2_T0_T1_S6_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_
.Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception16
# %bb.0:
	addi.d	$sp, $sp, -48
	.cfi_def_cfa_offset 48
	st.d	$ra, $sp, 40                    # 8-byte Folded Spill
	st.d	$fp, $sp, 32                    # 8-byte Folded Spill
	st.d	$s0, $sp, 24                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a0
	beq	$a0, $a1, .LBB29_14
# %bb.1:
	move	$s0, $a1
	ld.d	$a1, $fp, 16
	ld.d	$a0, $fp, 32
	st.d	$a1, $sp, 0
	st.d	$a0, $sp, 8
	st.d	$fp, $sp, 16
	beqz	$a1, .LBB29_3
# %bb.2:
	ld.d	$a0, $a0, 16
	st.d	$zero, $a1, 8
	bnez	$a0, .LBB29_4
	b	.LBB29_5
.LBB29_3:
	move	$a0, $zero
.LBB29_4:                               # %.sink.split.i
	st.d	$a0, $sp, 8
.LBB29_5:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeC2ERSG_.exit
	st.d	$zero, $fp, 16
	ld.d	$a4, $s0, 16
	addi.d	$a2, $fp, 8
	st.d	$a2, $fp, 24
	st.d	$a2, $fp, 32
	st.d	$zero, $fp, 40
	beqz	$a4, .LBB29_12
# %bb.6:
.Ltmp115:
	addi.d	$a3, $sp, 0
	move	$a0, $fp
	move	$a1, $a4
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_)
	jirl	$ra, $ra, 0
.Ltmp116:
# %bb.7:                                # %.noexc.preheader
	move	$a2, $a0
	.p2align	4, , 16
.LBB29_8:                               # %.noexc
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 16
	bnez	$a2, .LBB29_8
# %bb.9:                                # %_ZNSt18_Rb_tree_node_base10_S_minimumEPS_.exit.i
	st.d	$a1, $fp, 24
	move	$a1, $a0
	.p2align	4, , 16
.LBB29_10:                              # =>This Inner Loop Header: Depth=1
	move	$a2, $a1
	ld.d	$a1, $a1, 24
	bnez	$a1, .LBB29_10
# %bb.11:
	ld.d	$a3, $s0, 40
	ld.d	$a1, $sp, 0
	st.d	$a2, $fp, 32
	st.d	$a3, $fp, 40
	st.d	$a0, $fp, 16
.LBB29_12:
	beqz	$a1, .LBB29_14
# %bb.13:
	ld.d	$a0, $sp, 16
.Ltmp118:
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp119:
.LBB29_14:
	move	$a0, $fp
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB29_15:
.Ltmp120:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.LBB29_16:
.Ltmp117:
	move	$fp, $a0
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end29:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_, .Lfunc_end29-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EEaSERKSG_,comdat
	.p2align	2, 0x0
GCC_except_table29:
.Lexception16:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase7-.Lttbaseref7
.Lttbaseref7:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end16-.Lcst_begin16
.Lcst_begin16:
	.uleb128 .Ltmp115-.Lfunc_begin16        # >> Call Site 1 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin16        #     jumps to .Ltmp117
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin16        # >> Call Site 2 <<
	.uleb128 .Ltmp119-.Ltmp118              #   Call between .Ltmp118 and .Ltmp119
	.uleb128 .Ltmp120-.Lfunc_begin16        #     jumps to .Ltmp120
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp119-.Lfunc_begin16        # >> Call Site 3 <<
	.uleb128 .Lfunc_end29-.Ltmp119          #   Call between .Ltmp119 and .Lfunc_end29
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end16:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase7:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeD2Ev,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeD2Ev,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeD2Ev # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeD2Ev
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeD2Ev
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeD2Ev,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeD2Ev: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeD2Ev
.Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception17
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 0
	beqz	$a1, .LBB30_2
# %bb.1:
	ld.d	$a0, $a0, 16
.Ltmp121:
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp122:
.LBB30_2:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB30_3:
.Ltmp123:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end30:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeD2Ev, .Lfunc_end30-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeD2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeD2Ev,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeD2Ev,comdat
	.p2align	2, 0x0
GCC_except_table30:
.Lexception17:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase8-.Lttbaseref8
.Lttbaseref8:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end17-.Lcst_begin17
.Lcst_begin17:
	.uleb128 .Ltmp121-.Lfunc_begin17        # >> Call Site 1 <<
	.uleb128 .Ltmp122-.Ltmp121              #   Call between .Ltmp121 and .Ltmp122
	.uleb128 .Ltmp123-.Lfunc_begin17        #     jumps to .Ltmp123
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp122-.Lfunc_begin17        # >> Call Site 2 <<
	.uleb128 .Lfunc_end30-.Ltmp122          #   Call between .Ltmp122 and .Lfunc_end30
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end17:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase8:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_
.Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception18
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	move	$s1, $a3
	move	$s3, $a2
	move	$s2, $a1
	move	$fp, $a0
	addi.d	$a1, $a1, 32
	move	$a0, $a3
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeclIRKSA_EEPSt13_Rb_tree_nodeISA_EOT_)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ld.w	$a0, $s2, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 0                    # 16-byte Folded Spill
	vst	$vr0, $s0, 16
	ld.d	$a1, $s2, 24
	st.w	$a0, $s0, 0
	st.d	$s3, $s0, 8
	beqz	$a1, .LBB31_3
# %bb.1:
.Ltmp124:
	move	$a0, $fp
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_)
	jirl	$ra, $ra, 0
.Ltmp125:
# %bb.2:
	st.d	$a0, $s0, 24
.LBB31_3:
	ld.d	$s3, $s2, 16
	beqz	$s3, .LBB31_10
# %bb.4:                                # %.lr.ph.preheader
	move	$s4, $s0
	b	.LBB31_6
	.p2align	4, , 16
.LBB31_5:                               #   in Loop: Header=BB31_6 Depth=1
	ld.d	$s3, $s3, 16
	move	$s4, $s2
	beqz	$s3, .LBB31_10
.LBB31_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a1, $s3, 32
.Ltmp127:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeclIRKSA_EEPSt13_Rb_tree_nodeISA_EOT_)
	jirl	$ra, $ra, 0
.Ltmp128:
# %bb.7:                                #   in Loop: Header=BB31_6 Depth=1
	move	$s2, $a0
	ld.w	$a0, $s3, 0
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $s2, 16
	ld.d	$a1, $s3, 24
	st.w	$a0, $s2, 0
	st.d	$s2, $s4, 16
	st.d	$s4, $s2, 8
	beqz	$a1, .LBB31_5
# %bb.8:                                #   in Loop: Header=BB31_6 Depth=1
.Ltmp129:
	move	$a0, $fp
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_)
	jirl	$ra, $ra, 0
.Ltmp130:
# %bb.9:                                #   in Loop: Header=BB31_6 Depth=1
	st.d	$a0, $s2, 24
	b	.LBB31_5
.LBB31_10:                              # %._crit_edge
	move	$a0, $s0
	ld.d	$s4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB31_11:
.Ltmp126:
	b	.LBB31_13
.LBB31_12:
.Ltmp131:
.LBB31_13:
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
.Ltmp132:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp133:
# %bb.14:
.Ltmp134:
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp135:
# %bb.15:
.LBB31_16:
.Ltmp136:
	move	$fp, $a0
.Ltmp137:
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp138:
# %bb.17:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB31_18:
.Ltmp139:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end31:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_, .Lfunc_end31-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_20_Reuse_or_alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_,comdat
	.p2align	2, 0x0
GCC_except_table31:
.Lexception18:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase9-.Lttbaseref9
.Lttbaseref9:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end18-.Lcst_begin18
.Lcst_begin18:
	.uleb128 .Lfunc_begin18-.Lfunc_begin18  # >> Call Site 1 <<
	.uleb128 .Ltmp124-.Lfunc_begin18        #   Call between .Lfunc_begin18 and .Ltmp124
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin18        # >> Call Site 2 <<
	.uleb128 .Ltmp125-.Ltmp124              #   Call between .Ltmp124 and .Ltmp125
	.uleb128 .Ltmp126-.Lfunc_begin18        #     jumps to .Ltmp126
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp127-.Lfunc_begin18        # >> Call Site 3 <<
	.uleb128 .Ltmp130-.Ltmp127              #   Call between .Ltmp127 and .Ltmp130
	.uleb128 .Ltmp131-.Lfunc_begin18        #     jumps to .Ltmp131
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp130-.Lfunc_begin18        # >> Call Site 4 <<
	.uleb128 .Ltmp132-.Ltmp130              #   Call between .Ltmp130 and .Ltmp132
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin18        # >> Call Site 5 <<
	.uleb128 .Ltmp135-.Ltmp132              #   Call between .Ltmp132 and .Ltmp135
	.uleb128 .Ltmp136-.Lfunc_begin18        #     jumps to .Ltmp136
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp137-.Lfunc_begin18        # >> Call Site 6 <<
	.uleb128 .Ltmp138-.Ltmp137              #   Call between .Ltmp137 and .Ltmp138
	.uleb128 .Ltmp139-.Lfunc_begin18        #     jumps to .Ltmp139
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp138-.Lfunc_begin18        # >> Call Site 7 <<
	.uleb128 .Lfunc_end31-.Ltmp138          #   Call between .Ltmp138 and .Lfunc_end31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end18:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase9:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeclIRKSA_EEPSt13_Rb_tree_nodeISA_EOT_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeclIRKSA_EEPSt13_Rb_tree_nodeISA_EOT_,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeclIRKSA_EEPSt13_Rb_tree_nodeISA_EOT_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeclIRKSA_EEPSt13_Rb_tree_nodeISA_EOT_
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeclIRKSA_EEPSt13_Rb_tree_nodeISA_EOT_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeclIRKSA_EEPSt13_Rb_tree_nodeISA_EOT_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeclIRKSA_EEPSt13_Rb_tree_nodeISA_EOT_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeclIRKSA_EEPSt13_Rb_tree_nodeISA_EOT_
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
	move	$s1, $a0
	ld.d	$fp, $a0, 8
	move	$s0, $a1
	beqz	$fp, .LBB32_4
# %bb.1:
	ld.d	$a0, $fp, 8
	st.d	$a0, $s1, 8
	beqz	$a0, .LBB32_5
# %bb.2:
	ld.d	$a1, $a0, 24
	beq	$a1, $fp, .LBB32_6
# %bb.3:
	st.d	$zero, $a0, 16
	b	.LBB32_9
.LBB32_4:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_node10_M_extractEv.exit
	ld.d	$s1, $s1, 16
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	move	$a0, $s1
	b	.LBB32_12
.LBB32_5:
	st.d	$zero, $s1, 0
	b	.LBB32_9
.LBB32_6:
	ld.d	$a1, $a0, 16
	st.d	$zero, $a0, 24
	beqz	$a1, .LBB32_9
	.p2align	4, , 16
.LBB32_7:                               # %.preheader.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a0, $a1
	ld.d	$a1, $a1, 24
	bnez	$a1, .LBB32_7
# %bb.8:
	ld.d	$a1, $a0, 16
	sltui	$a2, $a1, 1
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$a0, $a0, $a1
	st.d	$a0, $s1, 8
.LBB32_9:
	ld.d	$a0, $fp, 32
	addi.d	$a1, $fp, 48
	beq	$a0, $a1, .LBB32_11
# %bb.10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB32_11:                              # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE15_M_destroy_nodeEPSt13_Rb_tree_nodeISA_E.exit
	ld.d	$a0, $s1, 16
.LBB32_12:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end32:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeclIRKSA_EEPSt13_Rb_tree_nodeISA_EOT_, .Lfunc_end32-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE20_Reuse_or_alloc_nodeclIRKSA_EEPSt13_Rb_tree_nodeISA_EOT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
.Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception19
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
	bltu	$a1, $a0, .LBB33_3
# %bb.1:                                # %.noexc.i.i
.Ltmp140:
	addi.d	$s3, $fp, 32
	addi.d	$a1, $sp, 8
	move	$a0, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp141:
# %bb.2:                                # %.noexc
	ld.d	$a1, $sp, 8
	st.d	$a0, $s3, 0
	st.d	$a1, $s1, 0
	move	$s1, $a0
.LBB33_3:                               # %._crit_edge.i.i.i
	addi.w	$a0, $zero, -1
	beq	$a1, $a0, .LBB33_7
# %bb.4:                                # %._crit_edge.i.i.i
	bnez	$a1, .LBB33_6
# %bb.5:
	ld.b	$a0, $s2, 0
	st.b	$a0, $s1, 0
	b	.LBB33_7
.LBB33_6:
	addi.d	$a2, $a1, 1
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB33_7:
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
.LBB33_8:
.Ltmp142:
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 80
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.Ltmp143:
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp144:
# %bb.9:
.LBB33_10:
.Ltmp145:
	move	$fp, $a0
.Ltmp146:
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp147:
# %bb.11:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB33_12:
.Ltmp148:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end33:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_, .Lfunc_end33-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table33:
.Lexception19:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase10-.Lttbaseref10
.Lttbaseref10:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end19-.Lcst_begin19
.Lcst_begin19:
	.uleb128 .Ltmp140-.Lfunc_begin19        # >> Call Site 1 <<
	.uleb128 .Ltmp141-.Ltmp140              #   Call between .Ltmp140 and .Ltmp141
	.uleb128 .Ltmp142-.Lfunc_begin19        #     jumps to .Ltmp142
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp141-.Lfunc_begin19        # >> Call Site 2 <<
	.uleb128 .Ltmp143-.Ltmp141              #   Call between .Ltmp141 and .Ltmp143
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp143-.Lfunc_begin19        # >> Call Site 3 <<
	.uleb128 .Ltmp144-.Ltmp143              #   Call between .Ltmp143 and .Ltmp144
	.uleb128 .Ltmp145-.Lfunc_begin19        #     jumps to .Ltmp145
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp146-.Lfunc_begin19        # >> Call Site 4 <<
	.uleb128 .Ltmp147-.Ltmp146              #   Call between .Ltmp146 and .Ltmp147
	.uleb128 .Ltmp148-.Lfunc_begin19        #     jumps to .Ltmp148
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp147-.Lfunc_begin19        # >> Call Site 5 <<
	.uleb128 .Lfunc_end33-.Ltmp147          #   Call between .Ltmp147 and .Lfunc_end33
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end19:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase10:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9benchmark17BenchmarkReporter3RunC2ERKS1_,"axG",@progbits,_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_,comdat
	.hidden	_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_ # -- Begin function _ZN9benchmark17BenchmarkReporter3RunC2ERKS1_
	.weak	_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_
	.p2align	5
	.type	_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_,@function
_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_: # @_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_
.Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception20
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
	bltu	$a1, $a2, .LBB34_3
# %bb.1:                                # %.noexc.i
.Ltmp149:
	addi.d	$a1, $sp, 0
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp150:
# %bb.2:                                # %.noexc
	ld.d	$a1, $sp, 0
	st.d	$a0, $s0, 0
	st.d	$a1, $s5, 0
.LBB34_3:                               # %._crit_edge.i.i
	addi.w	$s7, $zero, -1
	beq	$a1, $s7, .LBB34_7
# %bb.4:                                # %._crit_edge.i.i
	bnez	$a1, .LBB34_6
# %bb.5:
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB34_7
.LBB34_6:
	addi.d	$a2, $a1, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB34_7:
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
	bltu	$a1, $a2, .LBB34_10
# %bb.8:                                # %.noexc.i19
.Ltmp152:
	addi.d	$a1, $sp, 0
	move	$a0, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp153:
# %bb.9:                                # %.noexc20
	ld.d	$a1, $sp, 0
	st.d	$a0, $s2, 0
	st.d	$a1, $s6, 0
.LBB34_10:                              # %._crit_edge.i.i18
	beq	$a1, $s7, .LBB34_14
# %bb.11:                               # %._crit_edge.i.i18
	bnez	$a1, .LBB34_13
# %bb.12:
	ld.b	$a1, $s3, 0
	st.b	$a1, $a0, 0
	b	.LBB34_14
.LBB34_13:
	addi.d	$a2, $a1, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB34_14:
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
	bltu	$a1, $a2, .LBB34_17
# %bb.15:                               # %.noexc.i23
.Ltmp155:
	addi.d	$a1, $sp, 0
	move	$a0, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp156:
# %bb.16:                               # %.noexc24
	ld.d	$a1, $sp, 0
	st.d	$a0, $s3, 0
	st.d	$a1, $s8, 0
.LBB34_17:                              # %._crit_edge.i.i22
	beq	$a1, $s7, .LBB34_21
# %bb.18:                               # %._crit_edge.i.i22
	bnez	$a1, .LBB34_20
# %bb.19:
	ld.b	$a1, $s4, 0
	st.b	$a1, $a0, 0
	b	.LBB34_21
.LBB34_20:
	addi.d	$a2, $a1, 1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB34_21:
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
	beqz	$a1, .LBB34_28
# %bb.22:
	addi.d	$a0, $fp, 496
	st.d	$a0, $sp, 0
.Ltmp158:
	addi.d	$a3, $sp, 0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_)
	jirl	$ra, $ra, 0
.Ltmp159:
# %bb.23:                               # %.noexc.i.i.preheader
	move	$a2, $a0
	.p2align	4, , 16
.LBB34_24:                              # %.noexc.i.i
                                        # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 16
	bnez	$a2, .LBB34_24
# %bb.25:                               # %_ZNSt18_Rb_tree_node_base10_S_minimumEPS_.exit.i.i.i.i
	st.d	$a1, $fp, 520
	move	$a2, $a0
	.p2align	4, , 16
.LBB34_26:                              # =>This Inner Loop Header: Depth=1
	move	$a1, $a2
	ld.d	$a2, $a2, 24
	bnez	$a2, .LBB34_26
# %bb.27:
	st.d	$a1, $fp, 528
	ld.d	$a1, $s1, 536
	st.d	$a1, $fp, 536
	st.d	$a0, $fp, 512
.LBB34_28:                              # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEEC2ERKSE_.exit
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
.LBB34_29:
.Ltmp157:
	move	$s1, $a0
	ld.d	$a0, $s2, 0
	beq	$a0, $s6, .LBB34_34
	b	.LBB34_37
.LBB34_30:
.Ltmp154:
	move	$s1, $a0
	ld.d	$a0, $s0, 0
	beq	$a0, $s5, .LBB34_35
	b	.LBB34_38
.LBB34_31:
.Ltmp151:
	move	$s1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB34_32:
.Ltmp160:
	ld.d	$a2, $s3, 0
	move	$s1, $a0
	bne	$a2, $s8, .LBB34_36
# %bb.33:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $s2, 0
	bne	$a0, $s6, .LBB34_37
.LBB34_34:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
	ld.d	$a0, $s0, 0
	bne	$a0, $s5, .LBB34_38
.LBB34_35:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB34_36:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $s8, 0
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s2, 0
	beq	$a0, $s6, .LBB34_34
.LBB34_37:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
	ld.d	$a1, $s6, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	beq	$a0, $s5, .LBB34_35
.LBB34_38:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
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
.Lfunc_end34:
	.size	_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_, .Lfunc_end34-_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_
	.cfi_endproc
	.section	.gcc_except_table._ZN9benchmark17BenchmarkReporter3RunC2ERKS1_,"aG",@progbits,_ZN9benchmark17BenchmarkReporter3RunC2ERKS1_,comdat
	.p2align	2, 0x0
GCC_except_table34:
.Lexception20:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end20-.Lcst_begin20
.Lcst_begin20:
	.uleb128 .Lfunc_begin20-.Lfunc_begin20  # >> Call Site 1 <<
	.uleb128 .Ltmp149-.Lfunc_begin20        #   Call between .Lfunc_begin20 and .Ltmp149
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp149-.Lfunc_begin20        # >> Call Site 2 <<
	.uleb128 .Ltmp150-.Ltmp149              #   Call between .Ltmp149 and .Ltmp150
	.uleb128 .Ltmp151-.Lfunc_begin20        #     jumps to .Ltmp151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp150-.Lfunc_begin20        # >> Call Site 3 <<
	.uleb128 .Ltmp152-.Ltmp150              #   Call between .Ltmp150 and .Ltmp152
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin20        # >> Call Site 4 <<
	.uleb128 .Ltmp153-.Ltmp152              #   Call between .Ltmp152 and .Ltmp153
	.uleb128 .Ltmp154-.Lfunc_begin20        #     jumps to .Ltmp154
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin20        # >> Call Site 5 <<
	.uleb128 .Ltmp155-.Ltmp153              #   Call between .Ltmp153 and .Ltmp155
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp155-.Lfunc_begin20        # >> Call Site 6 <<
	.uleb128 .Ltmp156-.Ltmp155              #   Call between .Ltmp155 and .Ltmp156
	.uleb128 .Ltmp157-.Lfunc_begin20        #     jumps to .Ltmp157
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin20        # >> Call Site 7 <<
	.uleb128 .Ltmp158-.Ltmp156              #   Call between .Ltmp156 and .Ltmp158
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin20        # >> Call Site 8 <<
	.uleb128 .Ltmp159-.Ltmp158              #   Call between .Ltmp158 and .Ltmp159
	.uleb128 .Ltmp160-.Lfunc_begin20        #     jumps to .Ltmp160
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp159-.Lfunc_begin20        # >> Call Site 9 <<
	.uleb128 .Lfunc_end34-.Ltmp159          #   Call between .Ltmp159 and .Lfunc_end34
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end20:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9benchmark13BenchmarkNameC2ERKS0_,"axG",@progbits,_ZN9benchmark13BenchmarkNameC2ERKS0_,comdat
	.hidden	_ZN9benchmark13BenchmarkNameC2ERKS0_ # -- Begin function _ZN9benchmark13BenchmarkNameC2ERKS0_
	.weak	_ZN9benchmark13BenchmarkNameC2ERKS0_
	.p2align	5
	.type	_ZN9benchmark13BenchmarkNameC2ERKS0_,@function
_ZN9benchmark13BenchmarkNameC2ERKS0_:   # @_ZN9benchmark13BenchmarkNameC2ERKS0_
.Lfunc_begin21:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception21
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
	bltu	$a1, $a2, .LBB35_2
# %bb.1:                                # %.noexc.i
	addi.d	$a1, $sp, 64
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 64
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 16
.LBB35_2:                               # %._crit_edge.i.i
	addi.w	$s7, $zero, -1
	beq	$a1, $s7, .LBB35_6
# %bb.3:                                # %._crit_edge.i.i
	bnez	$a1, .LBB35_5
# %bb.4:
	ld.b	$a1, $s0, 0
	st.b	$a1, $a0, 0
	b	.LBB35_6
.LBB35_5:
	addi.d	$a2, $a1, 1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB35_6:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
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
	bltu	$a1, $a2, .LBB35_9
# %bb.7:                                # %.noexc.i23
.Ltmp161:
	addi.d	$a1, $sp, 64
	move	$a0, $s5
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp162:
# %bb.8:                                # %.noexc
	ld.d	$a1, $sp, 64
	st.d	$a0, $s5, 0
	st.d	$a1, $s0, 0
.LBB35_9:                               # %._crit_edge.i.i22
	beq	$a1, $s7, .LBB35_13
# %bb.10:                               # %._crit_edge.i.i22
	bnez	$a1, .LBB35_12
# %bb.11:
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB35_13
.LBB35_12:
	addi.d	$a2, $a1, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB35_13:
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
	bltu	$a1, $a2, .LBB35_16
# %bb.14:                               # %.noexc.i26
.Ltmp164:
	addi.d	$a1, $sp, 64
	move	$a0, $s6
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp165:
# %bb.15:                               # %.noexc27
	ld.d	$a1, $sp, 64
	st.d	$a0, $s6, 0
	st.d	$a1, $s2, 0
.LBB35_16:                              # %._crit_edge.i.i25
	beq	$a1, $s7, .LBB35_20
# %bb.17:                               # %._crit_edge.i.i25
	bnez	$a1, .LBB35_19
# %bb.18:
	ld.b	$a1, $s3, 0
	st.b	$a1, $a0, 0
	b	.LBB35_20
.LBB35_19:
	addi.d	$a2, $a1, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB35_20:
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
	bltu	$a1, $a2, .LBB35_23
# %bb.21:                               # %.noexc.i30
.Ltmp167:
	addi.d	$a1, $sp, 64
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	move	$a0, $s8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp168:
# %bb.22:                               # %.noexc31
	ld.d	$a1, $sp, 64
	st.d	$a0, $s8, 0
	st.d	$a1, $s3, 0
.LBB35_23:                              # %._crit_edge.i.i29
	beq	$a1, $s7, .LBB35_27
# %bb.24:                               # %._crit_edge.i.i29
	bnez	$a1, .LBB35_26
# %bb.25:
	ld.b	$a1, $s4, 0
	st.b	$a1, $a0, 0
	b	.LBB35_27
.LBB35_26:
	addi.d	$a2, $a1, 1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB35_27:
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
	bltu	$a1, $a2, .LBB35_30
# %bb.28:                               # %.noexc.i34
.Ltmp170:
	addi.d	$a1, $sp, 64
	move	$a0, $s4
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp171:
# %bb.29:                               # %.noexc35
	ld.d	$a1, $sp, 64
	st.d	$a0, $s4, 0
	st.d	$a1, $s0, 0
.LBB35_30:                              # %._crit_edge.i.i33
	beq	$a1, $s7, .LBB35_34
# %bb.31:                               # %._crit_edge.i.i33
	bnez	$a1, .LBB35_33
# %bb.32:
	ld.b	$a1, $s5, 0
	st.b	$a1, $a0, 0
	b	.LBB35_34
.LBB35_33:
	addi.d	$a2, $a1, 1
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB35_34:
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
	bltu	$a1, $a2, .LBB35_37
# %bb.35:                               # %.noexc.i38
.Ltmp173:
	addi.d	$a1, $sp, 64
	move	$a0, $s5
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp174:
# %bb.36:                               # %.noexc39
	ld.d	$a1, $sp, 64
	st.d	$a0, $s5, 0
	st.d	$a1, $s4, 0
.LBB35_37:                              # %._crit_edge.i.i37
	beq	$a1, $s7, .LBB35_41
# %bb.38:                               # %._crit_edge.i.i37
	bnez	$a1, .LBB35_40
# %bb.39:
	ld.b	$a1, $s6, 0
	st.b	$a1, $a0, 0
	b	.LBB35_41
.LBB35_40:
	addi.d	$a2, $a1, 1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB35_41:
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
	bltu	$a1, $a2, .LBB35_44
# %bb.42:                               # %.noexc.i42
.Ltmp176:
	addi.d	$a1, $sp, 64
	move	$a0, $s6
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp177:
# %bb.43:                               # %.noexc43
	ld.d	$a1, $sp, 64
	st.d	$a0, $s6, 0
	st.d	$a1, $s2, 0
.LBB35_44:                              # %._crit_edge.i.i41
	beq	$a1, $s3, .LBB35_48
# %bb.45:                               # %._crit_edge.i.i41
	bnez	$a1, .LBB35_47
# %bb.46:
	ld.b	$a1, $s7, 0
	st.b	$a1, $a0, 0
	b	.LBB35_48
.LBB35_47:
	addi.d	$a2, $a1, 1
	move	$a1, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB35_48:
	ld.d	$a0, $sp, 64
	st.d	$a0, $fp, 200
	addi.d	$s7, $fp, 240
	st.d	$s7, $fp, 224
	ld.d	$a1, $s1, 232
	ld.d	$s1, $s1, 224
	ori	$a0, $zero, 16
	st.d	$a1, $sp, 64
	bltu	$a1, $a0, .LBB35_51
# %bb.49:                               # %.noexc.i46
.Ltmp179:
	addi.d	$s8, $fp, 224
	addi.d	$a1, $sp, 64
	move	$a0, $s8
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp180:
# %bb.50:                               # %.noexc47
	ld.d	$a1, $sp, 64
	st.d	$a0, $s8, 0
	st.d	$a1, $s7, 0
	move	$s7, $a0
.LBB35_51:                              # %._crit_edge.i.i45
	beq	$a1, $s3, .LBB35_55
# %bb.52:                               # %._crit_edge.i.i45
	bnez	$a1, .LBB35_54
# %bb.53:
	ld.b	$a0, $s1, 0
	st.b	$a0, $s7, 0
	b	.LBB35_55
.LBB35_54:
	addi.d	$a2, $a1, 1
	move	$a0, $s7
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB35_55:
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
.LBB35_56:
.Ltmp181:
	ld.d	$a2, $s6, 0
	move	$s1, $a0
	bne	$a2, $s2, .LBB35_64
# %bb.57:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $s5, 0
	bne	$a0, $s4, .LBB35_66
.LBB35_58:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit51
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	bne	$a0, $s0, .LBB35_68
.LBB35_59:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	bne	$a0, $a1, .LBB35_70
.LBB35_60:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB35_72
.LBB35_61:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB35_74
.LBB35_62:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	bne	$a0, $a1, .LBB35_76
.LBB35_63:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB35_64:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $s2, 0
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s5, 0
	beq	$a0, $s4, .LBB35_58
	b	.LBB35_66
.LBB35_65:
.Ltmp178:
	move	$s1, $a0
	ld.d	$a0, $s5, 0
	beq	$a0, $s4, .LBB35_58
.LBB35_66:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i49
	ld.d	$a1, $s4, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	beq	$a0, $s0, .LBB35_59
	b	.LBB35_68
.LBB35_67:
.Ltmp175:
	move	$s1, $a0
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	beq	$a0, $s0, .LBB35_59
.LBB35_68:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
	ld.d	$a1, $s0, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	beq	$a0, $a1, .LBB35_60
	b	.LBB35_70
.LBB35_69:
.Ltmp172:
	move	$s1, $a0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	beq	$a0, $a1, .LBB35_60
.LBB35_70:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i55
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB35_61
	b	.LBB35_72
.LBB35_71:
.Ltmp169:
	move	$s1, $a0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB35_61
.LBB35_72:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB35_62
	b	.LBB35_74
.LBB35_73:
.Ltmp166:
	move	$s1, $a0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a0, 0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB35_62
.LBB35_74:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB35_63
	b	.LBB35_76
.LBB35_75:
.Ltmp163:
	move	$s1, $a0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB35_63
.LBB35_76:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end35:
	.size	_ZN9benchmark13BenchmarkNameC2ERKS0_, .Lfunc_end35-_ZN9benchmark13BenchmarkNameC2ERKS0_
	.cfi_endproc
	.section	.gcc_except_table._ZN9benchmark13BenchmarkNameC2ERKS0_,"aG",@progbits,_ZN9benchmark13BenchmarkNameC2ERKS0_,comdat
	.p2align	2, 0x0
GCC_except_table35:
.Lexception21:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end21-.Lcst_begin21
.Lcst_begin21:
	.uleb128 .Lfunc_begin21-.Lfunc_begin21  # >> Call Site 1 <<
	.uleb128 .Ltmp161-.Lfunc_begin21        #   Call between .Lfunc_begin21 and .Ltmp161
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp161-.Lfunc_begin21        # >> Call Site 2 <<
	.uleb128 .Ltmp162-.Ltmp161              #   Call between .Ltmp161 and .Ltmp162
	.uleb128 .Ltmp163-.Lfunc_begin21        #     jumps to .Ltmp163
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp162-.Lfunc_begin21        # >> Call Site 3 <<
	.uleb128 .Ltmp164-.Ltmp162              #   Call between .Ltmp162 and .Ltmp164
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp164-.Lfunc_begin21        # >> Call Site 4 <<
	.uleb128 .Ltmp165-.Ltmp164              #   Call between .Ltmp164 and .Ltmp165
	.uleb128 .Ltmp166-.Lfunc_begin21        #     jumps to .Ltmp166
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp165-.Lfunc_begin21        # >> Call Site 5 <<
	.uleb128 .Ltmp167-.Ltmp165              #   Call between .Ltmp165 and .Ltmp167
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp167-.Lfunc_begin21        # >> Call Site 6 <<
	.uleb128 .Ltmp168-.Ltmp167              #   Call between .Ltmp167 and .Ltmp168
	.uleb128 .Ltmp169-.Lfunc_begin21        #     jumps to .Ltmp169
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp168-.Lfunc_begin21        # >> Call Site 7 <<
	.uleb128 .Ltmp170-.Ltmp168              #   Call between .Ltmp168 and .Ltmp170
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp170-.Lfunc_begin21        # >> Call Site 8 <<
	.uleb128 .Ltmp171-.Ltmp170              #   Call between .Ltmp170 and .Ltmp171
	.uleb128 .Ltmp172-.Lfunc_begin21        #     jumps to .Ltmp172
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp171-.Lfunc_begin21        # >> Call Site 9 <<
	.uleb128 .Ltmp173-.Ltmp171              #   Call between .Ltmp171 and .Ltmp173
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp173-.Lfunc_begin21        # >> Call Site 10 <<
	.uleb128 .Ltmp174-.Ltmp173              #   Call between .Ltmp173 and .Ltmp174
	.uleb128 .Ltmp175-.Lfunc_begin21        #     jumps to .Ltmp175
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp174-.Lfunc_begin21        # >> Call Site 11 <<
	.uleb128 .Ltmp176-.Ltmp174              #   Call between .Ltmp174 and .Ltmp176
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp176-.Lfunc_begin21        # >> Call Site 12 <<
	.uleb128 .Ltmp177-.Ltmp176              #   Call between .Ltmp176 and .Ltmp177
	.uleb128 .Ltmp178-.Lfunc_begin21        #     jumps to .Ltmp178
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp177-.Lfunc_begin21        # >> Call Site 13 <<
	.uleb128 .Ltmp179-.Ltmp177              #   Call between .Ltmp177 and .Ltmp179
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp179-.Lfunc_begin21        # >> Call Site 14 <<
	.uleb128 .Ltmp180-.Ltmp179              #   Call between .Ltmp179 and .Ltmp180
	.uleb128 .Ltmp181-.Lfunc_begin21        #     jumps to .Ltmp181
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp180-.Lfunc_begin21        # >> Call Site 15 <<
	.uleb128 .Lfunc_end35-.Ltmp180          #   Call between .Ltmp180 and .Lfunc_end35
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end21:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_ # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_
.Lfunc_begin22:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception22
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
	beqz	$a1, .LBB36_3
# %bb.1:
.Ltmp182:
	move	$a0, $fp
	move	$a2, $s0
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_)
	jirl	$ra, $ra, 0
.Ltmp183:
# %bb.2:
	st.d	$a0, $s0, 24
.LBB36_3:
	ld.d	$s4, $s2, 16
	beqz	$s4, .LBB36_11
# %bb.4:                                # %.lr.ph.preheader
	move	$s5, $s0
	b	.LBB36_6
	.p2align	4, , 16
.LBB36_5:                               #   in Loop: Header=BB36_6 Depth=1
	ld.d	$s4, $s4, 16
	move	$s5, $s2
	beqz	$s4, .LBB36_11
.LBB36_6:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$s3, $s1, 0
.Ltmp185:
	ori	$a0, $zero, 80
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp186:
# %bb.7:                                # %.noexc
                                        #   in Loop: Header=BB36_6 Depth=1
	move	$s2, $a0
	addi.d	$a2, $s4, 32
.Ltmp187:
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE17_M_construct_nodeIJRKSA_EEEvPSt13_Rb_tree_nodeISA_EDpOT_)
	jirl	$ra, $ra, 0
.Ltmp188:
# %bb.8:                                #   in Loop: Header=BB36_6 Depth=1
	ld.w	$a0, $s4, 0
	vld	$vr0, $sp, 0                    # 16-byte Folded Reload
	vst	$vr0, $s2, 16
	ld.d	$a1, $s4, 24
	st.w	$a0, $s2, 0
	st.d	$s2, $s5, 16
	st.d	$s5, $s2, 8
	beqz	$a1, .LBB36_5
# %bb.9:                                #   in Loop: Header=BB36_6 Depth=1
.Ltmp189:
	move	$a0, $fp
	move	$a2, $s2
	move	$a3, $s1
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_)
	jirl	$ra, $ra, 0
.Ltmp190:
# %bb.10:                               #   in Loop: Header=BB36_6 Depth=1
	st.d	$a0, $s2, 24
	b	.LBB36_5
.LBB36_11:                              # %._crit_edge
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
.LBB36_12:
.Ltmp184:
	b	.LBB36_14
.LBB36_13:
.Ltmp191:
.LBB36_14:
	pcaddu18i	$ra, %call36(__cxa_begin_catch)
	jirl	$ra, $ra, 0
.Ltmp192:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp193:
# %bb.15:
.Ltmp194:
	pcaddu18i	$ra, %call36(__cxa_rethrow)
	jirl	$ra, $ra, 0
.Ltmp195:
# %bb.16:
.LBB36_17:
.Ltmp196:
	move	$fp, $a0
.Ltmp197:
	pcaddu18i	$ra, %call36(__cxa_end_catch)
	jirl	$ra, $ra, 0
.Ltmp198:
# %bb.18:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB36_19:
.Ltmp199:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end36:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_, .Lfunc_end36-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_,"aG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE7_M_copyILb0ENSG_11_Alloc_nodeEEEPSt18_Rb_tree_node_basePSt13_Rb_tree_nodeISA_ESK_RT0_,comdat
	.p2align	2, 0x0
GCC_except_table36:
.Lexception22:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase11-.Lttbaseref11
.Lttbaseref11:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end22-.Lcst_begin22
.Lcst_begin22:
	.uleb128 .Lfunc_begin22-.Lfunc_begin22  # >> Call Site 1 <<
	.uleb128 .Ltmp182-.Lfunc_begin22        #   Call between .Lfunc_begin22 and .Ltmp182
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp182-.Lfunc_begin22        # >> Call Site 2 <<
	.uleb128 .Ltmp183-.Ltmp182              #   Call between .Ltmp182 and .Ltmp183
	.uleb128 .Ltmp184-.Lfunc_begin22        #     jumps to .Ltmp184
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp185-.Lfunc_begin22        # >> Call Site 3 <<
	.uleb128 .Ltmp190-.Ltmp185              #   Call between .Ltmp185 and .Ltmp190
	.uleb128 .Ltmp191-.Lfunc_begin22        #     jumps to .Ltmp191
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp190-.Lfunc_begin22        # >> Call Site 4 <<
	.uleb128 .Ltmp192-.Ltmp190              #   Call between .Ltmp190 and .Ltmp192
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp192-.Lfunc_begin22        # >> Call Site 5 <<
	.uleb128 .Ltmp195-.Ltmp192              #   Call between .Ltmp192 and .Ltmp195
	.uleb128 .Ltmp196-.Lfunc_begin22        #     jumps to .Ltmp196
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp197-.Lfunc_begin22        # >> Call Site 6 <<
	.uleb128 .Ltmp198-.Ltmp197              #   Call between .Ltmp197 and .Ltmp198
	.uleb128 .Ltmp199-.Lfunc_begin22        #     jumps to .Ltmp199
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp198-.Lfunc_begin22        # >> Call Site 7 <<
	.uleb128 .Lfunc_end36-.Ltmp198          #   Call between .Ltmp198 and .Lfunc_end36
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end22:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase11:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i,"axG",@progbits,_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i,comdat
	.hidden	_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i # -- Begin function _ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i
	.weak	_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i
	.p2align	5
	.type	_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i,@function
_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i: # @_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i
	.cfi_startproc
# %bb.0:
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
	pcalau12i	$a5, %pc_hi20(_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	ld.b	$a5, $a5, %pc_lo12(_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	move	$s1, $a4
	move	$s0, $a3
	move	$fp, $a1
	dbar	20
	pcalau12i	$a1, %pc_hi20(_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	addi.d	$s4, $a1, %pc_lo12(_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	beqz	$a5, .LBB37_18
.LBB37_1:                               # %_ZN9benchmark8internal19GetErrorLogInstanceEv.exit
	ld.d	$s2, $s4, 0
	st.d	$s4, $a0, 0
	beqz	$s2, .LBB37_17
# %bb.2:
	beqz	$a2, .LBB37_4
# %bb.3:
	move	$a0, $a2
	move	$s3, $a2
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	bnez	$a0, .LBB37_5
	b	.LBB37_17
.LBB37_4:
	ld.d	$a0, $s2, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB37_17
.LBB37_5:                               # %_ZN9benchmark8internallsIA2_cEERNS0_7LogTypeES4_RKT_.exit
	pcalau12i	$a1, %pc_hi20(.L.str.63)
	addi.d	$a1, $a1, %pc_lo12(.L.str.63)
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB37_17
# %bb.6:                                # %_ZN9benchmark8internallsIiEERNS0_7LogTypeES3_RKT_.exit
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB37_17
# %bb.7:                                # %_ZN9benchmark8internallsIA3_cEERNS0_7LogTypeES4_RKT_.exit
	pcalau12i	$a1, %pc_hi20(.L.str.64)
	addi.d	$a1, $a1, %pc_lo12(.L.str.64)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$s1, $s4, 0
	beqz	$s1, .LBB37_17
# %bb.8:
	beqz	$s0, .LBB37_10
# %bb.9:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	bnez	$a0, .LBB37_11
	b	.LBB37_17
.LBB37_10:
	ld.d	$a0, $s1, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB37_17
.LBB37_11:                              # %_ZN9benchmark8internallsIA10_cEERNS0_7LogTypeES4_RKT_.exit
	pcalau12i	$a1, %pc_hi20(.L.str.65)
	addi.d	$a1, $a1, %pc_lo12(.L.str.65)
	ori	$a2, $zero, 9
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	ld.d	$s0, $s4, 0
	beqz	$s0, .LBB37_17
# %bb.12:
	beqz	$fp, .LBB37_14
# %bb.13:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
	b	.LBB37_15
.LBB37_14:
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.LBB37_15:                              # %_ZN9benchmark8internallsIPKcEERNS0_7LogTypeES5_RKT_.exit11
	ld.d	$a0, $s4, 0
	beqz	$a0, .LBB37_17
# %bb.16:
	pcalau12i	$a1, %pc_hi20(.L.str.66)
	addi.d	$a1, $a1, %pc_lo12(.L.str.66)
	ori	$a2, $zero, 10
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	pcaddu18i	$t8, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jr	$t8
.LBB37_17:                              # %_ZN9benchmark8internallsIA11_cEERNS0_7LogTypeES4_RKT_.exit
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB37_18:
	pcalau12i	$a1, %pc_hi20(_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	addi.d	$a1, $a1, %pc_lo12(_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	move	$s2, $a0
	move	$a0, $a1
	move	$s3, $a2
	pcaddu18i	$ra, %call36(__cxa_guard_acquire)
	jirl	$ra, $ra, 0
	move	$a2, $s3
	move	$a1, $a0
	move	$a0, $s2
	addi.w	$a1, $a1, 0
	beqz	$a1, .LBB37_1
# %bb.19:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4clog)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4clog)
	st.d	$a0, $s4, 0
	pcalau12i	$a0, %pc_hi20(_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	addi.d	$a0, $a0, %pc_lo12(_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log)
	pcaddu18i	$ra, %call36(__cxa_guard_release)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	move	$a2, $s3
	b	.LBB37_1
.Lfunc_end37:
	.size	_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i, .Lfunc_end37-_ZN9benchmark8internal12CheckHandlerC2EPKcS3_S3_i
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark8internal12CheckHandlerD2Ev,"axG",@progbits,_ZN9benchmark8internal12CheckHandlerD2Ev,comdat
	.hidden	_ZN9benchmark8internal12CheckHandlerD2Ev # -- Begin function _ZN9benchmark8internal12CheckHandlerD2Ev
	.weak	_ZN9benchmark8internal12CheckHandlerD2Ev
	.p2align	5
	.type	_ZN9benchmark8internal12CheckHandlerD2Ev,@function
_ZN9benchmark8internal12CheckHandlerD2Ev: # @_ZN9benchmark8internal12CheckHandlerD2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	ld.d	$a0, $a0, 0
	ld.d	$fp, $a0, 0
	beqz	$fp, .LBB38_7
# %bb.1:
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	bnez	$s0, .LBB38_3
# %bb.2:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.LBB38_3:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s0, 56
	bnez	$a0, .LBB38_5
# %bb.4:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
	b	.LBB38_6
.LBB38_5:
	ld.bu	$a0, $s0, 67
.LBB38_6:                               # %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.LBB38_7:                               # %_ZN9benchmark8internallsERNS0_7LogTypeEPFRSoS3_E.exit
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal16CallAbortHandlerEv)
	jirl	$ra, $ra, 0
.Lfunc_end38:
	.size	_ZN9benchmark8internal12CheckHandlerD2Ev, .Lfunc_end38-_ZN9benchmark8internal12CheckHandlerD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9benchmark8internal16CallAbortHandlerEv,"axG",@progbits,_ZN9benchmark8internal16CallAbortHandlerEv,comdat
	.hidden	_ZN9benchmark8internal16CallAbortHandlerEv # -- Begin function _ZN9benchmark8internal16CallAbortHandlerEv
	.weak	_ZN9benchmark8internal16CallAbortHandlerEv
	.p2align	5
	.type	_ZN9benchmark8internal16CallAbortHandlerEv,@function
_ZN9benchmark8internal16CallAbortHandlerEv: # @_ZN9benchmark8internal16CallAbortHandlerEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal15GetAbortHandlerEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $a0, 0
	jirl	$ra, $a0, 0
	pcaddu18i	$ra, %call36(abort)
	jirl	$ra, $ra, 0
.Lfunc_end39:
	.size	_ZN9benchmark8internal16CallAbortHandlerEv, .Lfunc_end39-_ZN9benchmark8internal16CallAbortHandlerEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev,"axG",@progbits,_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev,comdat
	.hidden	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev # -- Begin function _ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev
	.weak	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev
	.p2align	5
	.type	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev,@function
_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev: # @_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev
.Lfunc_begin23:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception23
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
	bne	$s0, $s1, .LBB40_4
# %bb.1:                                # %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exit
	beqz	$s0, .LBB40_12
.LBB40_2:
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
.LBB40_3:                               # %_ZSt8_DestroyIN9benchmark17BenchmarkReporter3RunEEvPT_.exit.i
                                        #   in Loop: Header=BB40_4 Depth=1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark13BenchmarkNameD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$s0, $s0, 560
	beq	$s0, $s1, .LBB40_11
.LBB40_4:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 512
	addi.d	$a0, $s0, 496
.Ltmp200:
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp201:
# %bb.5:                                # %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit.i.i.i
                                        #   in Loop: Header=BB40_4 Depth=1
	ld.d	$a0, $s0, 360
	addi.d	$a1, $s0, 376
	beq	$a1, $a0, .LBB40_7
# %bb.6:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
                                        #   in Loop: Header=BB40_4 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB40_7:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i
                                        #   in Loop: Header=BB40_4 Depth=1
	ld.d	$a0, $s0, 320
	addi.d	$a1, $s0, 336
	beq	$a1, $a0, .LBB40_9
# %bb.8:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i
                                        #   in Loop: Header=BB40_4 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB40_9:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i.i.i
                                        #   in Loop: Header=BB40_4 Depth=1
	ld.d	$a0, $s0, 280
	addi.d	$a1, $s0, 296
	beq	$a1, $a0, .LBB40_3
# %bb.10:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i.i
                                        #   in Loop: Header=BB40_4 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB40_3
.LBB40_11:                              # %_ZSt8_DestroyIPN9benchmark17BenchmarkReporter3RunES2_EvT_S4_RSaIT0_E.exitthread-pre-split
	ld.d	$s0, $fp, 0
	bnez	$s0, .LBB40_2
.LBB40_12:                              # %_ZNSt12_Vector_baseIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB40_13:
.Ltmp202:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end40:
	.size	_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev, .Lfunc_end40-_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev,"aG",@progbits,_ZNSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS2_EED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table40:
.Lexception23:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase12-.Lttbaseref12
.Lttbaseref12:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end23-.Lcst_begin23
.Lcst_begin23:
	.uleb128 .Lfunc_begin23-.Lfunc_begin23  # >> Call Site 1 <<
	.uleb128 .Ltmp200-.Lfunc_begin23        #   Call between .Lfunc_begin23 and .Ltmp200
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp200-.Lfunc_begin23        # >> Call Site 2 <<
	.uleb128 .Ltmp201-.Ltmp200              #   Call between .Ltmp200 and .Ltmp201
	.uleb128 .Ltmp202-.Lfunc_begin23        #     jumps to .Ltmp202
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp201-.Lfunc_begin23        # >> Call Site 3 <<
	.uleb128 .Lfunc_end40-.Ltmp201          #   Call between .Ltmp201 and .Lfunc_end40
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end23:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase12:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_skip_with_error_test.cc
	.type	_GLOBAL__sub_I_skip_with_error_test.cc,@function
_GLOBAL__sub_I_skip_with_error_test.cc: # @_GLOBAL__sub_I_skip_with_error_test.cc
.Lfunc_begin24:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception24
# %bb.0:
	addi.d	$sp, $sp, -832
	.cfi_def_cfa_offset 832
	st.d	$ra, $sp, 824                   # 8-byte Folded Spill
	st.d	$fp, $sp, 816                   # 8-byte Folded Spill
	st.d	$s0, $sp, 808                   # 8-byte Folded Spill
	st.d	$s1, $sp, 800                   # 8-byte Folded Spill
	st.d	$s2, $sp, 792                   # 8-byte Folded Spill
	st.d	$s3, $sp, 784                   # 8-byte Folded Spill
	st.d	$s4, $sp, 776                   # 8-byte Folded Spill
	st.d	$s5, $sp, 768                   # 8-byte Folded Spill
	st.d	$s6, $sp, 760                   # 8-byte Folded Spill
	st.d	$s7, $sp, 752                   # 8-byte Folded Spill
	st.d	$s8, $sp, 744                   # 8-byte Folded Spill
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
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal17InitializeStreamsEv)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %pc_hi20(_ZN12_GLOBAL__N_115ExpectedResultsE)
	addi.d	$a1, $a0, %pc_lo12(_ZN12_GLOBAL__N_115ExpectedResultsE)
	st.d	$zero, $a1, 0
	vrepli.b	$vr0, 0
	vst	$vr0, $a1, 8
	pcalau12i	$a0, %pc_hi20(_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EED2Ev)
	addi.d	$a0, $a0, %pc_lo12(_ZNSt6vectorIN12_GLOBAL__N_18TestCaseESaIS1_EED2Ev)
	pcalau12i	$a2, %pc_hi20(__dso_handle)
	addi.d	$a2, $a2, %pc_lo12(__dso_handle)
	pcaddu18i	$ra, %call36(__cxa_atexit)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$s6, $sp, 152
	st.d	$s6, $sp, 136
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 712
.Ltmp203:
	addi.d	$a0, $sp, 136
	addi.d	$a1, $sp, 712
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp204:
# %bb.1:                                # %.noexc.i
	ld.d	$a1, $sp, 712
	pcalau12i	$a2, %pc_hi20(.L.str.3)
	addi.d	$s1, $a2, %pc_lo12(.L.str.3)
	vld	$vr0, $s1, 0
	ld.w	$s2, $s1, 15
	st.d	$a0, $sp, 136
	st.d	$a1, $sp, 152
	vst	$vr0, $a0, 0
	st.w	$s2, $a0, 15
	ld.d	$a0, $sp, 136
	st.d	$a1, $sp, 144
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp206:
	addi.d	$a1, $sp, 136
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp207:
# %bb.2:
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	addi.d	$a0, $a0, 16
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	st.d	$a0, $s0, 0
	pcalau12i	$a0, %pc_hi20(_Z19BM_error_no_runningRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z19BM_error_no_runningRN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp208:
	move	$s3, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp209:
# %bb.3:
	move	$fp, $a0
	ld.d	$a0, $sp, 136
	beq	$a0, $s6, .LBB41_5
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	ld.d	$a1, $sp, 152
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_5:                               # %__cxx_global_var_init.2.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_2_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_2_benchmark_)
	addi.d	$s5, $sp, 728
	st.d	$s5, $sp, 712
	ori	$a0, $zero, 19
	st.d	$a0, $sp, 136
	addi.d	$a0, $sp, 712
	addi.d	$a1, $sp, 136
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	st.d	$a0, $sp, 712
	st.d	$a1, $sp, 728
	st.w	$s2, $a0, 15
	vld	$vr0, $s1, 0
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 712
	st.d	$a1, $sp, 720
	stx.b	$zero, $a0, $a1
	st.d	$s6, $sp, 136
	st.d	$zero, $sp, 144
	st.b	$zero, $sp, 152
	ori	$a0, $zero, 1
	st.b	$a0, $sp, 168
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.d	$s7, $a0, 0
	ld.d	$s8, $a0, 5
	addi.d	$s4, $sp, 192
	st.d	$s4, $sp, 176
	st.d	$s7, $sp, 192
	st.d	$s8, $sp, 197
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 184
	st.b	$zero, $sp, 205
.Ltmp211:
	addi.d	$a0, $sp, 712
	addi.d	$a1, $sp, 136
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_18AddCasesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt16initializer_listINS_8TestCaseEE)
	jirl	$ra, $ra, 0
.Ltmp212:
# %bb.6:
	ld.d	$a0, $sp, 176
	beq	$a0, $s4, .LBB41_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
	ld.d	$a1, $sp, 192
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_8:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
	ld.d	$a0, $sp, 136
	beq	$a0, $s6, .LBB41_10
# %bb.9:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i
	ld.d	$a1, $sp, 152
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_10:                              # %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit.i
	ld.d	$a0, $sp, 712
	beq	$a0, $s5, .LBB41_12
# %bb.11:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1
	ld.d	$a1, $sp, 728
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_12:                              # %__cxx_global_var_init.4.exit
	pcalau12i	$a0, %pc_hi20(dummy70)
	st.w	$zero, $a0, %pc_lo12(dummy70)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s6, $sp, 136
	ori	$a0, $zero, 23
	st.d	$a0, $sp, 712
.Ltmp214:
	addi.d	$a0, $sp, 136
	addi.d	$a1, $sp, 712
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp215:
# %bb.13:                               # %.noexc.i6
	ld.d	$a1, $sp, 712
	pcalau12i	$a2, %pc_hi20(.L.str.9)
	addi.d	$s1, $a2, %pc_lo12(.L.str.9)
	vld	$vr0, $s1, 0
	ld.d	$s2, $s1, 15
	st.d	$a0, $sp, 136
	st.d	$a1, $sp, 152
	vst	$vr0, $a0, 0
	st.d	$s2, $a0, 15
	ld.d	$a0, $sp, 136
	st.d	$a1, $sp, 144
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp217:
	addi.d	$a1, $sp, 136
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp218:
# %bb.14:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $s0, 0
	pcalau12i	$a0, %pc_hi20(_Z23BM_error_before_runningRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z23BM_error_before_runningRN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp219:
	move	$s3, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp220:
# %bb.15:
	move	$fp, $a0
	ld.d	$a0, $sp, 136
	beq	$a0, $s6, .LBB41_17
# %bb.16:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i10
	ld.d	$a1, $sp, 152
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_17:                              # %__cxx_global_var_init.8.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_3_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_3_benchmark_)
	st.d	$s5, $sp, 712
	ori	$a0, $zero, 23
	st.d	$a0, $sp, 136
	addi.d	$a0, $sp, 712
	addi.d	$a1, $sp, 136
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	st.d	$a0, $sp, 712
	st.d	$a1, $sp, 728
	st.d	$s2, $a0, 15
	vld	$vr0, $s1, 0
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 712
	st.d	$a1, $sp, 720
	stx.b	$zero, $a0, $a1
	st.d	$s6, $sp, 136
	st.d	$zero, $sp, 144
	st.b	$zero, $sp, 152
	ori	$a0, $zero, 1
	st.b	$a0, $sp, 168
	st.d	$s4, $sp, 176
	st.d	$s7, $sp, 192
	st.d	$s8, $sp, 197
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 184
	st.b	$zero, $sp, 205
.Ltmp222:
	addi.d	$a0, $sp, 712
	addi.d	$a1, $sp, 136
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_18AddCasesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt16initializer_listINS_8TestCaseEE)
	jirl	$ra, $ra, 0
.Ltmp223:
# %bb.18:
	ld.d	$a0, $sp, 176
	beq	$a0, $s4, .LBB41_20
# %bb.19:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i16
	ld.d	$a1, $sp, 192
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_20:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i17
	ld.d	$a0, $sp, 136
	beq	$a0, $s6, .LBB41_22
# %bb.21:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i18
	ld.d	$a1, $sp, 152
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_22:                              # %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit.i19
	ld.d	$a0, $sp, 712
	beq	$a0, $s5, .LBB41_24
# %bb.23:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i20
	ld.d	$a1, $sp, 728
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_24:                              # %__cxx_global_var_init.10.exit
	pcalau12i	$a0, %pc_hi20(dummy79)
	st.w	$zero, $a0, %pc_lo12(dummy79)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s6, $sp, 136
	ori	$a0, $zero, 29
	st.d	$a0, $sp, 712
.Ltmp225:
	addi.d	$a0, $sp, 136
	addi.d	$a1, $sp, 712
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp226:
# %bb.25:                               # %.noexc.i27
	st.d	$a0, $sp, 136
	ld.d	$a1, $sp, 712
	pcalau12i	$a2, %pc_hi20(.L.str.12)
	addi.d	$s1, $a2, %pc_lo12(.L.str.12)
	vld	$vr0, $s1, 0
	ld.d	$s2, $s1, 21
	ld.d	$s3, $s1, 16
	st.d	$a1, $sp, 152
	vst	$vr0, $a0, 0
	st.d	$s2, $a0, 21
	st.d	$s3, $a0, 16
	ld.d	$a0, $sp, 136
	st.d	$a1, $sp, 144
	stx.b	$zero, $a0, $a1
	ori	$s4, $zero, 1
.Ltmp228:
	addi.d	$a1, $sp, 136
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp229:
# %bb.26:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $s0, 0
	pcalau12i	$a0, %pc_hi20(_Z29BM_error_before_running_batchRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z29BM_error_before_running_batchRN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp230:
	move	$s4, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp231:
# %bb.27:
	move	$fp, $a0
	ld.d	$a0, $sp, 136
	beq	$a0, $s6, .LBB41_29
# %bb.28:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31
	ld.d	$a1, $sp, 152
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_29:                              # %__cxx_global_var_init.11.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_4_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_4_benchmark_)
	st.d	$s5, $sp, 712
	ori	$a0, $zero, 29
	st.d	$a0, $sp, 136
	addi.d	$a0, $sp, 712
	addi.d	$a1, $sp, 136
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	st.d	$a0, $sp, 712
	st.d	$a1, $sp, 728
	st.d	$s2, $a0, 21
	st.d	$s3, $a0, 16
	vld	$vr0, $s1, 0
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 712
	st.d	$a1, $sp, 720
	stx.b	$zero, $a0, $a1
	st.d	$s6, $sp, 136
	st.d	$zero, $sp, 144
	st.b	$zero, $sp, 152
	ori	$a0, $zero, 1
	st.b	$a0, $sp, 168
	addi.d	$s4, $sp, 192
	st.d	$s4, $sp, 176
	st.d	$s7, $sp, 192
	st.d	$s8, $sp, 197
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 184
	st.b	$zero, $sp, 205
.Ltmp233:
	addi.d	$a0, $sp, 712
	addi.d	$a1, $sp, 136
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_18AddCasesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt16initializer_listINS_8TestCaseEE)
	jirl	$ra, $ra, 0
.Ltmp234:
# %bb.30:
	ld.d	$a0, $sp, 176
	beq	$a0, $s4, .LBB41_32
# %bb.31:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i37
	ld.d	$a1, $sp, 192
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_32:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i38
	ld.d	$a0, $sp, 136
	beq	$a0, $s6, .LBB41_34
# %bb.33:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i39
	ld.d	$a1, $sp, 152
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_34:                              # %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit.i40
	ld.d	$a0, $sp, 712
	beq	$a0, $s5, .LBB41_36
# %bb.35:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i41
	ld.d	$a1, $sp, 728
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_36:                              # %__cxx_global_var_init.13.exit
	pcalau12i	$a0, %pc_hi20(dummy88)
	st.w	$zero, $a0, %pc_lo12(dummy88)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s6, $sp, 136
	ori	$a0, $zero, 33
	st.d	$a0, $sp, 712
.Ltmp236:
	addi.d	$a0, $sp, 136
	addi.d	$a1, $sp, 712
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp237:
# %bb.37:                               # %.noexc.i48
	ld.d	$a1, $sp, 712
	pcalau12i	$a2, %pc_hi20(.L.str.15)
	addi.d	$s1, $a2, %pc_lo12(.L.str.15)
	vld	$vr0, $s1, 16
	st.d	$a0, $sp, 136
	st.d	$a1, $sp, 152
	vst	$vr0, $a0, 16
	vld	$vr0, $s1, 0
	ld.b	$s2, $s1, 32
	vst	$vr0, $a0, 0
	st.b	$s2, $a0, 32
	st.d	$a1, $sp, 144
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp239:
	addi.d	$a1, $sp, 136
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp240:
# %bb.38:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $s0, 0
	pcalau12i	$a0, %pc_hi20(_Z33BM_error_before_running_range_forRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z33BM_error_before_running_range_forRN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp241:
	move	$s3, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp242:
# %bb.39:
	move	$fp, $a0
	ld.d	$a0, $sp, 136
	beq	$a0, $s6, .LBB41_41
# %bb.40:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52
	ld.d	$a1, $sp, 152
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_41:                              # %__cxx_global_var_init.14.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_5_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_5_benchmark_)
	st.d	$s5, $sp, 712
	ori	$a0, $zero, 33
	st.d	$a0, $sp, 136
	addi.d	$a0, $sp, 712
	addi.d	$a1, $sp, 136
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	vld	$vr0, $s1, 0
	st.d	$a0, $sp, 712
	st.d	$a1, $sp, 728
	vst	$vr0, $a0, 0
	vld	$vr0, $s1, 16
	vst	$vr0, $a0, 16
	st.b	$s2, $a0, 32
	st.d	$a1, $sp, 720
	stx.b	$zero, $a0, $a1
	st.d	$s6, $sp, 136
	st.d	$zero, $sp, 144
	st.b	$zero, $sp, 152
	ori	$a0, $zero, 1
	st.b	$a0, $sp, 168
	st.d	$s4, $sp, 176
	st.d	$s7, $sp, 192
	st.d	$s8, $sp, 197
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 184
	st.b	$zero, $sp, 205
.Ltmp244:
	addi.d	$a0, $sp, 712
	addi.d	$a1, $sp, 136
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_18AddCasesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt16initializer_listINS_8TestCaseEE)
	jirl	$ra, $ra, 0
.Ltmp245:
# %bb.42:
	ld.d	$a0, $sp, 176
	beq	$a0, $s4, .LBB41_44
# %bb.43:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i58
	ld.d	$a1, $sp, 192
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_44:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i59
	ld.d	$a0, $sp, 136
	beq	$a0, $s6, .LBB41_46
# %bb.45:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i60
	ld.d	$a1, $sp, 152
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_46:                              # %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit.i61
	ld.d	$a0, $sp, 712
	beq	$a0, $s5, .LBB41_48
# %bb.47:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i62
	ld.d	$a1, $sp, 728
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_48:                              # %__cxx_global_var_init.16.exit
	pcalau12i	$a0, %pc_hi20(dummy97)
	st.w	$zero, $a0, %pc_lo12(dummy97)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s6, $sp, 136
	ori	$a0, $zero, 23
	st.d	$a0, $sp, 712
.Ltmp247:
	addi.d	$a0, $sp, 136
	addi.d	$a1, $sp, 712
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp248:
# %bb.49:                               # %.noexc.i69
	ld.d	$a1, $sp, 712
	pcalau12i	$a2, %pc_hi20(.L.str.19)
	addi.d	$s1, $a2, %pc_lo12(.L.str.19)
	vld	$vr0, $s1, 0
	ld.d	$s2, $s1, 15
	st.d	$a0, $sp, 136
	st.d	$a1, $sp, 152
	vst	$vr0, $a0, 0
	st.d	$s2, $a0, 15
	ld.d	$a0, $sp, 136
	st.d	$a1, $sp, 144
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp250:
	addi.d	$a1, $sp, 136
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp251:
# %bb.50:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $s0, 0
	pcalau12i	$a0, %pc_hi20(_Z23BM_error_during_runningRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z23BM_error_during_runningRN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp252:
	move	$s3, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp253:
# %bb.51:
.Ltmp254:
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp255:
# %bb.52:
.Ltmp256:
	ori	$a1, $zero, 2
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp257:
# %bb.53:
.Ltmp258:
	ori	$a1, $zero, 1
	ori	$a2, $zero, 8
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark11ThreadRangeEii)
	jirl	$ra, $ra, 0
.Ltmp259:
# %bb.54:
	move	$fp, $a0
	ld.d	$a0, $sp, 136
	beq	$a0, $s6, .LBB41_56
# %bb.55:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i73
	ld.d	$a1, $sp, 152
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_56:                              # %__cxx_global_var_init.18.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_6_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_6_benchmark_)
	st.d	$s5, $sp, 712
	ori	$a0, $zero, 23
	st.d	$a0, $sp, 136
	addi.d	$a0, $sp, 712
	addi.d	$a1, $sp, 136
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	st.d	$a0, $sp, 712
	st.d	$a1, $sp, 728
	st.d	$s2, $a0, 15
	vld	$vr0, $s1, 0
	vst	$vr0, $a0, 0
	st.d	$a1, $sp, 720
	ld.d	$a0, $sp, 712
	pcalau12i	$a2, %pc_hi20(.L.str.21)
	addi.d	$a2, $a2, %pc_lo12(.L.str.21)
	ld.d	$a3, $a2, 0
	ld.w	$a2, $a2, 8
	stx.b	$zero, $a0, $a1
	st.d	$s6, $sp, 136
	st.d	$a3, $sp, 120                   # 8-byte Folded Spill
	st.d	$a3, $sp, 152
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	st.w	$a2, $sp, 160
	ori	$a0, $zero, 12
	st.d	$a0, $sp, 144
	st.b	$zero, $sp, 164
	ori	$a1, $zero, 1
	st.b	$a1, $sp, 168
	st.d	$s4, $sp, 176
	st.d	$s7, $sp, 192
	st.d	$s8, $sp, 197
	ori	$a2, $zero, 13
	st.d	$a2, $sp, 184
	st.b	$zero, $sp, 205
	pcalau12i	$a3, %pc_hi20(.L.str.22)
	addi.d	$a3, $a3, %pc_lo12(.L.str.22)
	ld.d	$a4, $a3, 0
	ld.w	$a5, $a3, 8
	addi.d	$a3, $sp, 224
	st.d	$a3, $sp, 208
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	st.d	$a4, $sp, 224
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	st.w	$a5, $sp, 232
	st.d	$a0, $sp, 216
	st.b	$zero, $sp, 236
	st.b	$a1, $sp, 240
	addi.d	$a3, $sp, 264
	st.d	$a3, $sp, 248
	st.d	$s8, $sp, 269
	st.d	$s7, $sp, 264
	st.d	$a2, $sp, 256
	st.b	$zero, $sp, 277
	pcalau12i	$a3, %pc_hi20(.L.str.23)
	addi.d	$a3, $a3, %pc_lo12(.L.str.23)
	ld.w	$a4, $a3, 8
	ld.d	$a5, $a3, 0
	addi.d	$a3, $sp, 296
	st.d	$a3, $sp, 280
	st.d	$a4, $sp, 72                    # 8-byte Folded Spill
	st.w	$a4, $sp, 304
	st.d	$a5, $sp, 64                    # 8-byte Folded Spill
	st.d	$a5, $sp, 296
	st.d	$a0, $sp, 288
	st.b	$zero, $sp, 308
	st.b	$a1, $sp, 312
	addi.d	$a3, $sp, 336
	st.d	$a3, $sp, 320
	st.d	$s8, $sp, 341
	st.d	$s7, $sp, 336
	st.d	$a2, $sp, 328
	st.b	$zero, $sp, 349
	pcalau12i	$a3, %pc_hi20(.L.str.24)
	addi.d	$a3, $a3, %pc_lo12(.L.str.24)
	ld.w	$a4, $a3, 8
	ld.d	$a5, $a3, 0
	addi.d	$a3, $sp, 368
	st.d	$a3, $sp, 352
	st.d	$a4, $sp, 8                     # 8-byte Folded Spill
	st.w	$a4, $sp, 376
	st.d	$a5, $sp, 0                     # 8-byte Folded Spill
	st.d	$a5, $sp, 368
	st.d	$a0, $sp, 360
	st.b	$zero, $sp, 380
	st.b	$a1, $sp, 384
	addi.d	$a1, $sp, 408
	st.d	$a1, $sp, 392
	st.d	$s8, $sp, 413
	st.d	$s7, $sp, 408
	st.d	$a2, $sp, 400
	st.b	$zero, $sp, 421
	pcalau12i	$a1, %pc_hi20(.L.str.25)
	addi.d	$a1, $a1, %pc_lo12(.L.str.25)
	ld.w	$a2, $a1, 8
	ld.d	$a3, $a1, 0
	addi.d	$a1, $sp, 440
	st.d	$a1, $sp, 424
	st.d	$a2, $sp, 48                    # 8-byte Folded Spill
	st.w	$a2, $sp, 448
	st.d	$a3, $sp, 40                    # 8-byte Folded Spill
	st.d	$a3, $sp, 440
	st.d	$a0, $sp, 432
	st.b	$zero, $sp, 452
	st.b	$zero, $sp, 456
	addi.d	$a1, $sp, 480
	st.d	$a1, $sp, 464
	st.d	$zero, $sp, 472
	st.b	$zero, $sp, 480
	pcalau12i	$a1, %pc_hi20(.L.str.26)
	addi.d	$a1, $a1, %pc_lo12(.L.str.26)
	ld.w	$a3, $a1, 8
	ld.d	$a2, $a1, 0
	addi.d	$a1, $sp, 512
	st.d	$a1, $sp, 496
	st.d	$a3, $sp, 16                    # 8-byte Folded Spill
	st.w	$a3, $sp, 520
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	st.d	$a2, $sp, 512
	st.d	$a0, $sp, 504
	st.b	$zero, $sp, 524
	st.b	$zero, $sp, 528
	addi.d	$a1, $sp, 552
	st.d	$a1, $sp, 536
	st.d	$zero, $sp, 544
	st.b	$zero, $sp, 552
	pcalau12i	$a1, %pc_hi20(.L.str.27)
	addi.d	$a1, $a1, %pc_lo12(.L.str.27)
	ld.w	$a3, $a1, 8
	ld.d	$a2, $a1, 0
	addi.d	$a1, $sp, 584
	st.d	$a1, $sp, 568
	st.d	$a3, $sp, 32                    # 8-byte Folded Spill
	st.w	$a3, $sp, 592
	st.d	$a2, $sp, 80                    # 8-byte Folded Spill
	st.d	$a2, $sp, 584
	st.d	$a0, $sp, 576
	st.b	$zero, $sp, 596
	st.b	$zero, $sp, 600
	addi.d	$a1, $sp, 624
	st.d	$a1, $sp, 608
	st.d	$zero, $sp, 616
	st.b	$zero, $sp, 624
	pcalau12i	$a1, %pc_hi20(.L.str.28)
	addi.d	$a1, $a1, %pc_lo12(.L.str.28)
	st.d	$a0, $sp, 648
	ld.w	$a2, $a1, 8
	ld.d	$a1, $a1, 0
	addi.d	$a0, $sp, 656
	st.d	$a0, $sp, 640
	st.d	$a2, $sp, 24                    # 8-byte Folded Spill
	st.w	$a2, $sp, 664
	st.d	$a1, $sp, 88                    # 8-byte Folded Spill
	st.d	$a1, $sp, 656
	st.b	$zero, $sp, 668
	st.b	$zero, $sp, 672
	addi.d	$fp, $sp, 696
	st.d	$fp, $sp, 680
	st.d	$zero, $sp, 688
	st.b	$zero, $sp, 696
	addi.d	$s0, $sp, 208
	addi.d	$s1, $sp, 280
	addi.d	$s2, $sp, 352
	addi.d	$s3, $sp, 424
	addi.d	$s4, $sp, 496
	addi.d	$s5, $sp, 568
	addi.d	$s6, $sp, 640
.Ltmp261:
	addi.d	$a0, $sp, 712
	addi.d	$a1, $sp, 136
	ori	$a2, $zero, 8
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_18AddCasesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt16initializer_listINS_8TestCaseEE)
	jirl	$ra, $ra, 0
.Ltmp262:
# %bb.57:
	ld.d	$a0, $sp, 680
	beq	$a0, $fp, .LBB41_59
# %bb.58:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i75
	ld.d	$a1, $sp, 696
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_59:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i76
	ld.d	$a0, $sp, 640
	addi.d	$s4, $sp, 728
	addi.d	$s5, $sp, 152
	addi.d	$s6, $sp, 224
	addi.d	$fp, $sp, 264
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB41_61
# %bb.60:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i77
	ld.d	$a1, $sp, 656
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_61:                              # %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit.i78
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB41_63
# %bb.62:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1.i
	ld.d	$a1, $sp, 624
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_63:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.1.i
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	beq	$a0, $a1, .LBB41_65
# %bb.64:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.1.i
	ld.d	$a1, $sp, 584
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_65:                              # %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit.1.i
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	beq	$a0, $a1, .LBB41_67
# %bb.66:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2.i
	ld.d	$a1, $sp, 552
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_67:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.2.i
	ld.d	$a0, $sp, 496
	addi.d	$a1, $sp, 512
	beq	$a0, $a1, .LBB41_69
# %bb.68:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.2.i
	ld.d	$a1, $sp, 512
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_69:                              # %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit.2.i
	ld.d	$a0, $sp, 464
	addi.d	$a1, $sp, 480
	beq	$a0, $a1, .LBB41_71
# %bb.70:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3.i
	ld.d	$a1, $sp, 480
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_71:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.3.i
	ld.d	$a0, $sp, 424
	addi.d	$a1, $sp, 440
	beq	$a0, $a1, .LBB41_73
# %bb.72:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.3.i
	ld.d	$a1, $sp, 440
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_73:                              # %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit.3.i
	ld.d	$a0, $sp, 392
	addi.d	$a1, $sp, 408
	beq	$a0, $a1, .LBB41_75
# %bb.74:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4.i
	ld.d	$a1, $sp, 408
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_75:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.4.i
	ld.d	$a0, $sp, 352
	addi.d	$a1, $sp, 368
	beq	$a0, $a1, .LBB41_77
# %bb.76:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.4.i
	ld.d	$a1, $sp, 368
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_77:                              # %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit.4.i
	ld.d	$a0, $sp, 320
	addi.d	$a1, $sp, 336
	beq	$a0, $a1, .LBB41_79
# %bb.78:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.5.i
	ld.d	$a1, $sp, 336
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_79:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.5.i
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	beq	$a0, $a1, .LBB41_81
# %bb.80:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.5.i
	ld.d	$a1, $sp, 296
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_81:                              # %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit.5.i
	ld.d	$a0, $sp, 248
	beq	$a0, $fp, .LBB41_83
# %bb.82:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.6.i
	ld.d	$a1, $sp, 264
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_83:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.6.i
	ld.d	$a0, $sp, 208
	beq	$a0, $s6, .LBB41_85
# %bb.84:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.6.i
	ld.d	$a1, $sp, 224
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_85:                              # %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit.6.i
	ld.d	$a0, $sp, 176
	addi.d	$a1, $sp, 192
	beq	$a0, $a1, .LBB41_87
# %bb.86:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.7.i
	ld.d	$a1, $sp, 192
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_87:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.7.i
	ld.d	$a0, $sp, 136
	beq	$a0, $s5, .LBB41_89
# %bb.88:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.7.i
	ld.d	$a1, $sp, 152
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_89:                              # %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit.7.i
	ld.d	$a0, $sp, 712
	beq	$a0, $s4, .LBB41_91
# %bb.90:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i79
	ld.d	$a1, $sp, 728
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_91:                              # %__cxx_global_var_init.20.exit
	pcalau12i	$a0, %pc_hi20(dummy120)
	st.w	$zero, $a0, %pc_lo12(dummy120)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s5, $sp, 136
	ori	$a0, $zero, 34
	st.d	$a0, $sp, 712
.Ltmp264:
	addi.d	$a0, $sp, 136
	addi.d	$a1, $sp, 712
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp265:
# %bb.92:                               # %.noexc.i86
	ld.d	$a1, $sp, 712
	pcalau12i	$a2, %pc_hi20(.L.str.33)
	addi.d	$s1, $a2, %pc_lo12(.L.str.33)
	vld	$vr0, $s1, 16
	st.d	$a0, $sp, 136
	st.d	$a1, $sp, 152
	vst	$vr0, $a0, 16
	vld	$vr0, $s1, 0
	ld.h	$s2, $s1, 32
	vst	$vr0, $a0, 0
	st.h	$s2, $a0, 32
	st.d	$a1, $sp, 144
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp267:
	addi.d	$a1, $sp, 136
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp268:
# %bb.93:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $s0, 0
	pcalau12i	$a0, %pc_hi20(_Z34BM_error_during_running_ranged_forRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z34BM_error_during_running_ranged_forRN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp269:
	move	$s3, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp270:
# %bb.94:
.Ltmp271:
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp272:
# %bb.95:
.Ltmp273:
	ori	$a1, $zero, 2
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp274:
# %bb.96:
.Ltmp275:
	ori	$a1, $zero, 5
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10IterationsEl)
	jirl	$ra, $ra, 0
.Ltmp276:
# %bb.97:
	move	$fp, $a0
	ld.d	$a0, $sp, 136
	beq	$a0, $s5, .LBB41_99
# %bb.98:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i90
	ld.d	$a1, $sp, 152
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_99:                              # %__cxx_global_var_init.32.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_7_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_7_benchmark_)
	st.d	$s4, $sp, 712
	ori	$a0, $zero, 34
	st.d	$a0, $sp, 136
	addi.d	$a0, $sp, 712
	addi.d	$a1, $sp, 136
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	vld	$vr0, $s1, 0
	st.d	$a0, $sp, 712
	st.d	$a1, $sp, 728
	vst	$vr0, $a0, 0
	vld	$vr0, $s1, 16
	vst	$vr0, $a0, 16
	st.h	$s2, $a0, 32
	st.d	$a1, $sp, 720
	pcalau12i	$a2, %pc_hi20(.L.str.35)
	addi.d	$a2, $a2, %pc_lo12(.L.str.35)
	ld.d	$a3, $a2, 0
	ld.d	$a2, $a2, 7
	stx.b	$zero, $a0, $a1
	st.d	$s5, $sp, 136
	st.d	$a3, $sp, 152
	st.d	$a2, $sp, 159
	ori	$a0, $zero, 15
	st.d	$a0, $sp, 144
	ori	$a1, $zero, 256
	st.h	$a1, $sp, 167
	addi.d	$a1, $sp, 192
	st.d	$a1, $sp, 176
	st.d	$s7, $sp, 192
	st.d	$s8, $sp, 197
	ori	$a1, $zero, 13
	st.d	$a1, $sp, 184
	st.b	$zero, $sp, 205
	pcalau12i	$a1, %pc_hi20(.L.str.36)
	addi.d	$a1, $a1, %pc_lo12(.L.str.36)
	ld.d	$a2, $a1, 0
	ld.d	$a1, $a1, 7
	addi.d	$s0, $sp, 208
	st.d	$s6, $sp, 208
	st.d	$a2, $sp, 224
	st.d	$a1, $sp, 231
	st.d	$a0, $sp, 216
	st.h	$zero, $sp, 239
	addi.d	$fp, $sp, 264
	st.d	$fp, $sp, 248
	st.d	$zero, $sp, 256
	st.b	$zero, $sp, 264
.Ltmp278:
	addi.d	$a0, $sp, 712
	addi.d	$a1, $sp, 136
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_18AddCasesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt16initializer_listINS_8TestCaseEE)
	jirl	$ra, $ra, 0
.Ltmp279:
# %bb.100:
	ld.d	$a0, $sp, 248
	beq	$a0, $fp, .LBB41_102
# %bb.101:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i92
	ld.d	$a1, $sp, 264
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_102:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i93
	ld.d	$a0, $sp, 208
	beq	$a0, $s6, .LBB41_104
# %bb.103:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i94
	ld.d	$a1, $sp, 224
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_104:                             # %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit.i95
	ld.d	$a0, $sp, 176
	addi.d	$a1, $sp, 192
	beq	$a0, $a1, .LBB41_106
# %bb.105:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1.i96
	ld.d	$a1, $sp, 192
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_106:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.1.i97
	ld.d	$a0, $sp, 136
	beq	$a0, $s5, .LBB41_108
# %bb.107:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.1.i98
	ld.d	$a1, $sp, 152
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_108:                             # %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit.1.i99
	ld.d	$a0, $sp, 712
	beq	$a0, $s4, .LBB41_110
# %bb.109:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i100
	ld.d	$a1, $sp, 728
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_110:                             # %__cxx_global_var_init.34.exit
	pcalau12i	$a0, %pc_hi20(dummy142)
	st.w	$zero, $a0, %pc_lo12(dummy142)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s5, $sp, 136
	ori	$a0, $zero, 22
	st.d	$a0, $sp, 712
.Ltmp281:
	addi.d	$a0, $sp, 136
	addi.d	$a1, $sp, 712
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp282:
# %bb.111:                              # %.noexc.i109
	ld.d	$a1, $sp, 712
	pcalau12i	$a2, %pc_hi20(.L.str.38)
	addi.d	$s1, $a2, %pc_lo12(.L.str.38)
	vld	$vr0, $s1, 0
	ld.d	$s2, $s1, 14
	st.d	$a0, $sp, 136
	st.d	$a1, $sp, 152
	vst	$vr0, $a0, 0
	st.d	$s2, $a0, 14
	ld.d	$a0, $sp, 136
	st.d	$a1, $sp, 144
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp284:
	addi.d	$a1, $sp, 136
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp285:
# %bb.112:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $s0, 0
	pcalau12i	$a0, %pc_hi20(_Z22BM_error_after_runningRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z22BM_error_after_runningRN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp286:
	move	$s3, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp287:
# %bb.113:
.Ltmp288:
	ori	$a1, $zero, 1
	ori	$a2, $zero, 8
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark11ThreadRangeEii)
	jirl	$ra, $ra, 0
.Ltmp289:
# %bb.114:
	move	$fp, $a0
	ld.d	$a0, $sp, 136
	beq	$a0, $s5, .LBB41_116
# %bb.115:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i113
	ld.d	$a1, $sp, 152
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_116:                             # %__cxx_global_var_init.37.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_8_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_8_benchmark_)
	st.d	$s4, $sp, 712
	ori	$a0, $zero, 22
	st.d	$a0, $sp, 136
	addi.d	$a0, $sp, 712
	addi.d	$a1, $sp, 136
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	st.d	$a0, $sp, 712
	st.d	$a1, $sp, 728
	st.d	$s2, $a0, 14
	vld	$vr0, $s1, 0
	vst	$vr0, $a0, 0
	st.d	$a1, $sp, 720
	ld.d	$a0, $sp, 712
	pcalau12i	$a2, %pc_hi20(.L.str.40)
	addi.d	$a2, $a2, %pc_lo12(.L.str.40)
	ld.d	$a3, $a2, 0
	ld.h	$a2, $a2, 8
	stx.b	$zero, $a0, $a1
	st.d	$s5, $sp, 136
	st.d	$a3, $sp, 152
	st.h	$a2, $sp, 160
	ori	$a0, $zero, 10
	st.d	$a0, $sp, 144
	st.b	$zero, $sp, 162
	ori	$a1, $zero, 1
	st.b	$a1, $sp, 168
	addi.d	$a2, $sp, 192
	st.d	$a2, $sp, 176
	st.d	$s7, $sp, 192
	st.d	$s8, $sp, 197
	ori	$a2, $zero, 13
	st.d	$a2, $sp, 184
	st.b	$zero, $sp, 205
	pcalau12i	$a3, %pc_hi20(.L.str.41)
	addi.d	$a3, $a3, %pc_lo12(.L.str.41)
	ld.d	$a4, $a3, 0
	ld.h	$a3, $a3, 8
	addi.d	$s0, $sp, 208
	st.d	$s6, $sp, 208
	st.d	$a4, $sp, 224
	st.h	$a3, $sp, 232
	st.d	$a0, $sp, 216
	st.b	$zero, $sp, 234
	st.b	$a1, $sp, 240
	addi.d	$a3, $sp, 264
	st.d	$a3, $sp, 248
	st.d	$s8, $sp, 269
	st.d	$s7, $sp, 264
	st.d	$a2, $sp, 256
	st.b	$zero, $sp, 277
	pcalau12i	$a3, %pc_hi20(.L.str.42)
	addi.d	$a3, $a3, %pc_lo12(.L.str.42)
	ld.h	$a4, $a3, 8
	ld.d	$a3, $a3, 0
	addi.d	$s1, $sp, 280
	addi.d	$a5, $sp, 296
	st.d	$a5, $sp, 280
	st.h	$a4, $sp, 304
	st.d	$a3, $sp, 296
	st.d	$a0, $sp, 288
	st.b	$zero, $sp, 306
	st.b	$a1, $sp, 312
	addi.d	$a3, $sp, 336
	st.d	$a3, $sp, 320
	st.d	$s8, $sp, 341
	st.d	$s7, $sp, 336
	st.d	$a2, $sp, 328
	st.b	$zero, $sp, 349
	pcalau12i	$a3, %pc_hi20(.L.str.43)
	addi.d	$a3, $a3, %pc_lo12(.L.str.43)
	ld.h	$a4, $a3, 8
	ld.d	$a3, $a3, 0
	addi.d	$s2, $sp, 352
	addi.d	$a5, $sp, 368
	st.d	$a5, $sp, 352
	st.h	$a4, $sp, 376
	st.d	$a3, $sp, 368
	st.d	$a0, $sp, 360
	st.b	$zero, $sp, 378
	st.b	$a1, $sp, 384
	addi.d	$fp, $sp, 408
	st.d	$fp, $sp, 392
	st.d	$s8, $sp, 413
	st.d	$s7, $sp, 408
	st.d	$a2, $sp, 400
	st.b	$zero, $sp, 421
.Ltmp291:
	addi.d	$a0, $sp, 712
	addi.d	$a1, $sp, 136
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_18AddCasesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt16initializer_listINS_8TestCaseEE)
	jirl	$ra, $ra, 0
.Ltmp292:
# %bb.117:
	ld.d	$a0, $sp, 392
	beq	$a0, $fp, .LBB41_119
# %bb.118:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i115
	ld.d	$a1, $sp, 408
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_119:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i116
	ld.d	$a0, $sp, 352
	addi.d	$fp, $sp, 264
	addi.d	$a1, $sp, 368
	beq	$a0, $a1, .LBB41_121
# %bb.120:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i117
	ld.d	$a1, $sp, 368
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_121:                             # %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit.i118
	ld.d	$a0, $sp, 320
	addi.d	$a1, $sp, 336
	beq	$a0, $a1, .LBB41_123
# %bb.122:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1.i119
	ld.d	$a1, $sp, 336
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_123:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.1.i120
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	beq	$a0, $a1, .LBB41_125
# %bb.124:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.1.i121
	ld.d	$a1, $sp, 296
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_125:                             # %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit.1.i122
	ld.d	$a0, $sp, 248
	beq	$a0, $fp, .LBB41_127
# %bb.126:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2.i123
	ld.d	$a1, $sp, 264
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_127:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.2.i124
	ld.d	$a0, $sp, 208
	beq	$a0, $s6, .LBB41_129
# %bb.128:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.2.i125
	ld.d	$a1, $sp, 224
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_129:                             # %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit.2.i126
	ld.d	$a0, $sp, 176
	addi.d	$a1, $sp, 192
	beq	$a0, $a1, .LBB41_131
# %bb.130:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3.i127
	ld.d	$a1, $sp, 192
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_131:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.3.i128
	ld.d	$a0, $sp, 136
	beq	$a0, $s5, .LBB41_133
# %bb.132:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.3.i129
	ld.d	$a1, $sp, 152
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_133:                             # %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit.3.i130
	ld.d	$a0, $sp, 712
	beq	$a0, $s4, .LBB41_135
# %bb.134:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i131
	ld.d	$a1, $sp, 728
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_135:                             # %__cxx_global_var_init.39.exit
	pcalau12i	$a0, %pc_hi20(dummy156)
	st.w	$zero, $a0, %pc_lo12(dummy156)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s5, $sp, 136
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 712
.Ltmp294:
	addi.d	$a0, $sp, 136
	addi.d	$a1, $sp, 712
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp295:
# %bb.136:                              # %.noexc.i144
	ld.d	$a1, $sp, 712
	pcalau12i	$a2, %pc_hi20(.L.str.45)
	addi.d	$s1, $a2, %pc_lo12(.L.str.45)
	vld	$vr0, $s1, 0
	ld.d	$s2, $s1, 13
	st.d	$a0, $sp, 136
	st.d	$a1, $sp, 152
	vst	$vr0, $a0, 0
	st.d	$s2, $a0, 13
	ld.d	$a0, $sp, 136
	st.d	$a1, $sp, 144
	stx.b	$zero, $a0, $a1
	ori	$s3, $zero, 1
.Ltmp297:
	addi.d	$a1, $sp, 136
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp298:
# %bb.137:
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	st.d	$a0, $s0, 0
	pcalau12i	$a0, %pc_hi20(_Z21BM_error_while_pausedRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_Z21BM_error_while_pausedRN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp299:
	move	$s3, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp300:
# %bb.138:
.Ltmp301:
	ori	$a1, $zero, 1
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp302:
# %bb.139:
.Ltmp303:
	ori	$a1, $zero, 2
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark3ArgEl)
	jirl	$ra, $ra, 0
.Ltmp304:
# %bb.140:
.Ltmp305:
	ori	$a1, $zero, 1
	ori	$a2, $zero, 8
	move	$s3, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark11ThreadRangeEii)
	jirl	$ra, $ra, 0
.Ltmp306:
# %bb.141:
	move	$fp, $a0
	ld.d	$a0, $sp, 136
	beq	$a0, $s5, .LBB41_143
# %bb.142:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i148
	ld.d	$a1, $sp, 152
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_143:                             # %__cxx_global_var_init.44.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_9_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_9_benchmark_)
	st.d	$s4, $sp, 712
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 136
	addi.d	$a0, $sp, 712
	addi.d	$a1, $sp, 136
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 136
	st.d	$a0, $sp, 712
	st.d	$a1, $sp, 728
	st.d	$s2, $a0, 13
	vld	$vr0, $s1, 0
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 712
	st.d	$a1, $sp, 720
	stx.b	$zero, $a0, $a1
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	st.d	$a0, $sp, 152
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	st.w	$a0, $sp, 160
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	st.d	$a0, $sp, 224
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	st.w	$a0, $sp, 232
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	st.w	$a0, $sp, 304
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	st.d	$a0, $sp, 296
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	st.w	$a0, $sp, 376
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	st.d	$a0, $sp, 368
	ori	$a0, $zero, 1
	st.b	$a0, $sp, 168
	st.b	$a0, $sp, 240
	st.b	$a0, $sp, 312
	st.b	$a0, $sp, 384
	st.d	$s7, $sp, 192
	st.d	$s8, $sp, 197
	st.d	$s8, $sp, 269
	st.d	$s8, $sp, 341
	st.d	$s8, $sp, 413
	st.d	$s7, $sp, 264
	st.d	$s7, $sp, 336
	st.d	$s7, $sp, 408
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 184
	st.d	$a0, $sp, 256
	st.d	$a0, $sp, 328
	st.d	$a0, $sp, 400
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.w	$a0, $sp, 448
	st.d	$s5, $sp, 136
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $sp, 440
	ori	$a0, $zero, 12
	st.d	$a0, $sp, 144
	st.b	$zero, $sp, 164
	addi.d	$a1, $sp, 192
	st.d	$a1, $sp, 176
	st.b	$zero, $sp, 205
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	st.w	$a1, $sp, 520
	addi.d	$s0, $sp, 208
	st.d	$s6, $sp, 208
	st.d	$a0, $sp, 216
	st.b	$zero, $sp, 236
	addi.d	$a1, $sp, 264
	st.d	$a1, $sp, 248
	st.b	$zero, $sp, 277
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$a1, $sp, 512
	addi.d	$s1, $sp, 280
	addi.d	$a1, $sp, 296
	st.d	$a1, $sp, 280
	st.d	$a0, $sp, 288
	st.b	$zero, $sp, 308
	addi.d	$a1, $sp, 336
	st.d	$a1, $sp, 320
	st.b	$zero, $sp, 349
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.w	$a1, $sp, 592
	addi.d	$s2, $sp, 352
	addi.d	$a1, $sp, 368
	st.d	$a1, $sp, 352
	st.d	$a0, $sp, 360
	st.b	$zero, $sp, 380
	addi.d	$a1, $sp, 408
	st.d	$a1, $sp, 392
	st.b	$zero, $sp, 421
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$a1, $sp, 584
	addi.d	$s3, $sp, 424
	addi.d	$a1, $sp, 440
	st.d	$a1, $sp, 424
	st.d	$a0, $sp, 432
	st.b	$zero, $sp, 452
	st.b	$zero, $sp, 456
	addi.d	$a1, $sp, 480
	st.d	$a1, $sp, 464
	st.d	$zero, $sp, 472
	st.b	$zero, $sp, 480
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.w	$a1, $sp, 664
	addi.d	$s4, $sp, 496
	addi.d	$a1, $sp, 512
	st.d	$a1, $sp, 496
	st.d	$a0, $sp, 504
	st.b	$zero, $sp, 524
	st.b	$zero, $sp, 528
	addi.d	$a1, $sp, 552
	st.d	$a1, $sp, 536
	st.d	$zero, $sp, 544
	st.b	$zero, $sp, 552
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a1, $sp, 656
	addi.d	$s5, $sp, 568
	addi.d	$a1, $sp, 584
	st.d	$a1, $sp, 568
	st.d	$a0, $sp, 576
	st.b	$zero, $sp, 596
	st.b	$zero, $sp, 600
	addi.d	$a1, $sp, 624
	st.d	$a1, $sp, 608
	st.d	$zero, $sp, 616
	st.b	$zero, $sp, 624
	st.d	$a0, $sp, 648
	addi.d	$s6, $sp, 640
	addi.d	$a0, $sp, 656
	st.d	$a0, $sp, 640
	st.b	$zero, $sp, 668
	st.b	$zero, $sp, 672
	addi.d	$fp, $sp, 696
	st.d	$fp, $sp, 680
	st.d	$zero, $sp, 688
	st.b	$zero, $sp, 696
.Ltmp308:
	addi.d	$a0, $sp, 712
	addi.d	$a1, $sp, 136
	ori	$a2, $zero, 8
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_18AddCasesERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt16initializer_listINS_8TestCaseEE)
	jirl	$ra, $ra, 0
.Ltmp309:
# %bb.144:
	ld.d	$a0, $sp, 680
	beq	$a0, $fp, .LBB41_146
# %bb.145:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i154
	ld.d	$a1, $sp, 696
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_146:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i155
	ld.d	$a0, $sp, 640
	addi.d	$fp, $sp, 728
	addi.d	$s0, $sp, 152
	addi.d	$s1, $sp, 192
	addi.d	$s2, $sp, 224
	addi.d	$a1, $sp, 656
	beq	$a0, $a1, .LBB41_148
# %bb.147:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i156
	ld.d	$a1, $sp, 656
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_148:                             # %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit.i157
	ld.d	$a0, $sp, 608
	addi.d	$a1, $sp, 624
	beq	$a0, $a1, .LBB41_150
# %bb.149:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1.i158
	ld.d	$a1, $sp, 624
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_150:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.1.i159
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	beq	$a0, $a1, .LBB41_152
# %bb.151:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.1.i160
	ld.d	$a1, $sp, 584
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_152:                             # %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit.1.i161
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	beq	$a0, $a1, .LBB41_154
# %bb.153:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2.i162
	ld.d	$a1, $sp, 552
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_154:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.2.i163
	ld.d	$a0, $sp, 496
	addi.d	$a1, $sp, 512
	beq	$a0, $a1, .LBB41_156
# %bb.155:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.2.i164
	ld.d	$a1, $sp, 512
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_156:                             # %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit.2.i165
	ld.d	$a0, $sp, 464
	addi.d	$a1, $sp, 480
	beq	$a0, $a1, .LBB41_158
# %bb.157:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3.i166
	ld.d	$a1, $sp, 480
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_158:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.3.i167
	ld.d	$a0, $sp, 424
	addi.d	$a1, $sp, 440
	beq	$a0, $a1, .LBB41_160
# %bb.159:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.3.i168
	ld.d	$a1, $sp, 440
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_160:                             # %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit.3.i169
	ld.d	$a0, $sp, 392
	addi.d	$a1, $sp, 408
	beq	$a0, $a1, .LBB41_162
# %bb.161:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4.i170
	ld.d	$a1, $sp, 408
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_162:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.4.i171
	ld.d	$a0, $sp, 352
	addi.d	$a1, $sp, 368
	beq	$a0, $a1, .LBB41_164
# %bb.163:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.4.i172
	ld.d	$a1, $sp, 368
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_164:                             # %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit.4.i173
	ld.d	$a0, $sp, 320
	addi.d	$a1, $sp, 336
	beq	$a0, $a1, .LBB41_166
# %bb.165:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.5.i174
	ld.d	$a1, $sp, 336
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_166:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.5.i175
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	beq	$a0, $a1, .LBB41_168
# %bb.167:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.5.i176
	ld.d	$a1, $sp, 296
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_168:                             # %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit.5.i177
	ld.d	$a0, $sp, 248
	addi.d	$a1, $sp, 264
	beq	$a0, $a1, .LBB41_170
# %bb.169:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.6.i178
	ld.d	$a1, $sp, 264
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_170:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.6.i179
	ld.d	$a0, $sp, 208
	beq	$a0, $s2, .LBB41_172
# %bb.171:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.6.i180
	ld.d	$a1, $sp, 224
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_172:                             # %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit.6.i181
	ld.d	$a0, $sp, 176
	beq	$a0, $s1, .LBB41_174
# %bb.173:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.7.i182
	ld.d	$a1, $sp, 192
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_174:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.7.i183
	ld.d	$a0, $sp, 136
	beq	$a0, $s0, .LBB41_176
# %bb.175:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.7.i184
	ld.d	$a1, $sp, 152
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_176:                             # %_ZN12_GLOBAL__N_18TestCaseD2Ev.exit.7.i185
	ld.d	$a0, $sp, 712
	beq	$a0, $fp, .LBB41_178
# %bb.177:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i186
	ld.d	$a1, $sp, 728
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_178:                             # %__cxx_global_var_init.46.exit
	pcalau12i	$a0, %pc_hi20(dummy180)
	st.w	$zero, $a0, %pc_lo12(dummy180)
	ld.d	$s8, $sp, 744                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 752                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 760                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 768                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 776                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 784                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 792                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 800                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 808                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 816                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 824                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 832
	ret
.LBB41_179:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread.i150
.Ltmp310:
	b	.LBB41_187
.LBB41_180:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i141
.Ltmp296:
	move	$fp, $a0
	b	.LBB41_211
.LBB41_181:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90.thread.i
.Ltmp293:
	move	$fp, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_18TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_18TestCaseD2Ev)
	jirl	$ra, $ra, 0
	b	.LBB41_184
.LBB41_182:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i106
.Ltmp283:
	move	$fp, $a0
	b	.LBB41_211
.LBB41_183:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread69.i
.Ltmp280:
	move	$fp, $a0
.LBB41_184:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48.thread69.i
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_18TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_18TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 712
	bne	$a0, $s4, .LBB41_197
	b	.LBB41_213
.LBB41_185:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i83
.Ltmp266:
	move	$fp, $a0
	b	.LBB41_211
.LBB41_186:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread.i
.Ltmp263:
.LBB41_187:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit174.thread.i
	move	$fp, $a0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_18TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_18TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_18TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_18TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_18TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_18TestCaseD2Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_18TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_18TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 712
	addi.d	$a1, $sp, 728
	bne	$a0, $a1, .LBB41_197
	b	.LBB41_213
.LBB41_188:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i66
.Ltmp249:
	move	$fp, $a0
	b	.LBB41_211
.LBB41_189:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i54
.Ltmp246:
	b	.LBB41_196
.LBB41_190:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i45
.Ltmp238:
	move	$fp, $a0
	b	.LBB41_211
.LBB41_191:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i33
.Ltmp235:
	b	.LBB41_196
.LBB41_192:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i24
.Ltmp227:
	move	$fp, $a0
	b	.LBB41_211
.LBB41_193:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i12
.Ltmp224:
	b	.LBB41_196
.LBB41_194:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i3
.Ltmp216:
	move	$fp, $a0
	b	.LBB41_211
.LBB41_195:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i
.Ltmp213:
.LBB41_196:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i
	move	$fp, $a0
	addi.d	$a0, $sp, 136
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_18TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 712
	beq	$a0, $s5, .LBB41_213
.LBB41_197:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i
	ld.d	$a1, $sp, 728
	addi.d	$a1, $a1, 1
	b	.LBB41_212
.LBB41_198:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i
.Ltmp205:
	move	$fp, $a0
	b	.LBB41_211
.LBB41_199:
.Ltmp243:
	ld.d	$a2, $sp, 136
	move	$fp, $a0
	beq	$a2, $s6, .LBB41_210
	b	.LBB41_208
.LBB41_200:
.Ltmp232:
	ld.d	$a2, $sp, 136
	move	$fp, $a0
	bne	$a2, $s6, .LBB41_202
# %bb.201:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i30
	bnez	$s4, .LBB41_211
	b	.LBB41_213
.LBB41_202:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i29
	ld.d	$a0, $sp, 152
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	bnez	$s4, .LBB41_211
	b	.LBB41_213
.LBB41_203:
.Ltmp221:
	ld.d	$a2, $sp, 136
	move	$fp, $a0
	beq	$a2, $s6, .LBB41_210
	b	.LBB41_208
.LBB41_204:
.Ltmp210:
	ld.d	$a2, $sp, 136
	move	$fp, $a0
	bne	$a2, $s6, .LBB41_208
	b	.LBB41_210
.LBB41_205:
.Ltmp290:
	ld.d	$a2, $sp, 136
	move	$fp, $a0
	beq	$a2, $s5, .LBB41_210
	b	.LBB41_208
.LBB41_206:
.Ltmp307:
	ld.d	$a2, $sp, 136
	move	$fp, $a0
	beq	$a2, $s5, .LBB41_210
	b	.LBB41_208
.LBB41_207:
.Ltmp277:
	ld.d	$a2, $sp, 136
	move	$fp, $a0
	beq	$a2, $s5, .LBB41_210
.LBB41_208:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
	ld.d	$a0, $sp, 152
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB41_213
	b	.LBB41_211
.LBB41_209:
.Ltmp260:
	ld.d	$a2, $sp, 136
	move	$fp, $a0
	bne	$a2, $s6, .LBB41_208
.LBB41_210:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i
	beqz	$s3, .LBB41_213
.LBB41_211:
	ori	$a1, $zero, 232
	move	$a0, $s0
.LBB41_212:                             # %common.resume
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB41_213:                             # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end41:
	.size	_GLOBAL__sub_I_skip_with_error_test.cc, .Lfunc_end41-_GLOBAL__sub_I_skip_with_error_test.cc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table41:
.Lexception24:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end24-.Lcst_begin24
.Lcst_begin24:
	.uleb128 .Lfunc_begin24-.Lfunc_begin24  # >> Call Site 1 <<
	.uleb128 .Ltmp203-.Lfunc_begin24        #   Call between .Lfunc_begin24 and .Ltmp203
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp203-.Lfunc_begin24        # >> Call Site 2 <<
	.uleb128 .Ltmp204-.Ltmp203              #   Call between .Ltmp203 and .Ltmp204
	.uleb128 .Ltmp205-.Lfunc_begin24        #     jumps to .Ltmp205
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp206-.Lfunc_begin24        # >> Call Site 3 <<
	.uleb128 .Ltmp209-.Ltmp206              #   Call between .Ltmp206 and .Ltmp209
	.uleb128 .Ltmp210-.Lfunc_begin24        #     jumps to .Ltmp210
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp209-.Lfunc_begin24        # >> Call Site 4 <<
	.uleb128 .Ltmp211-.Ltmp209              #   Call between .Ltmp209 and .Ltmp211
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp211-.Lfunc_begin24        # >> Call Site 5 <<
	.uleb128 .Ltmp212-.Ltmp211              #   Call between .Ltmp211 and .Ltmp212
	.uleb128 .Ltmp213-.Lfunc_begin24        #     jumps to .Ltmp213
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp212-.Lfunc_begin24        # >> Call Site 6 <<
	.uleb128 .Ltmp214-.Ltmp212              #   Call between .Ltmp212 and .Ltmp214
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp214-.Lfunc_begin24        # >> Call Site 7 <<
	.uleb128 .Ltmp215-.Ltmp214              #   Call between .Ltmp214 and .Ltmp215
	.uleb128 .Ltmp216-.Lfunc_begin24        #     jumps to .Ltmp216
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp217-.Lfunc_begin24        # >> Call Site 8 <<
	.uleb128 .Ltmp220-.Ltmp217              #   Call between .Ltmp217 and .Ltmp220
	.uleb128 .Ltmp221-.Lfunc_begin24        #     jumps to .Ltmp221
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp220-.Lfunc_begin24        # >> Call Site 9 <<
	.uleb128 .Ltmp222-.Ltmp220              #   Call between .Ltmp220 and .Ltmp222
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp222-.Lfunc_begin24        # >> Call Site 10 <<
	.uleb128 .Ltmp223-.Ltmp222              #   Call between .Ltmp222 and .Ltmp223
	.uleb128 .Ltmp224-.Lfunc_begin24        #     jumps to .Ltmp224
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp223-.Lfunc_begin24        # >> Call Site 11 <<
	.uleb128 .Ltmp225-.Ltmp223              #   Call between .Ltmp223 and .Ltmp225
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp225-.Lfunc_begin24        # >> Call Site 12 <<
	.uleb128 .Ltmp226-.Ltmp225              #   Call between .Ltmp225 and .Ltmp226
	.uleb128 .Ltmp227-.Lfunc_begin24        #     jumps to .Ltmp227
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp228-.Lfunc_begin24        # >> Call Site 13 <<
	.uleb128 .Ltmp231-.Ltmp228              #   Call between .Ltmp228 and .Ltmp231
	.uleb128 .Ltmp232-.Lfunc_begin24        #     jumps to .Ltmp232
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp231-.Lfunc_begin24        # >> Call Site 14 <<
	.uleb128 .Ltmp233-.Ltmp231              #   Call between .Ltmp231 and .Ltmp233
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp233-.Lfunc_begin24        # >> Call Site 15 <<
	.uleb128 .Ltmp234-.Ltmp233              #   Call between .Ltmp233 and .Ltmp234
	.uleb128 .Ltmp235-.Lfunc_begin24        #     jumps to .Ltmp235
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp234-.Lfunc_begin24        # >> Call Site 16 <<
	.uleb128 .Ltmp236-.Ltmp234              #   Call between .Ltmp234 and .Ltmp236
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp236-.Lfunc_begin24        # >> Call Site 17 <<
	.uleb128 .Ltmp237-.Ltmp236              #   Call between .Ltmp236 and .Ltmp237
	.uleb128 .Ltmp238-.Lfunc_begin24        #     jumps to .Ltmp238
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp239-.Lfunc_begin24        # >> Call Site 18 <<
	.uleb128 .Ltmp242-.Ltmp239              #   Call between .Ltmp239 and .Ltmp242
	.uleb128 .Ltmp243-.Lfunc_begin24        #     jumps to .Ltmp243
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp242-.Lfunc_begin24        # >> Call Site 19 <<
	.uleb128 .Ltmp244-.Ltmp242              #   Call between .Ltmp242 and .Ltmp244
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp244-.Lfunc_begin24        # >> Call Site 20 <<
	.uleb128 .Ltmp245-.Ltmp244              #   Call between .Ltmp244 and .Ltmp245
	.uleb128 .Ltmp246-.Lfunc_begin24        #     jumps to .Ltmp246
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp245-.Lfunc_begin24        # >> Call Site 21 <<
	.uleb128 .Ltmp247-.Ltmp245              #   Call between .Ltmp245 and .Ltmp247
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp247-.Lfunc_begin24        # >> Call Site 22 <<
	.uleb128 .Ltmp248-.Ltmp247              #   Call between .Ltmp247 and .Ltmp248
	.uleb128 .Ltmp249-.Lfunc_begin24        #     jumps to .Ltmp249
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp250-.Lfunc_begin24        # >> Call Site 23 <<
	.uleb128 .Ltmp259-.Ltmp250              #   Call between .Ltmp250 and .Ltmp259
	.uleb128 .Ltmp260-.Lfunc_begin24        #     jumps to .Ltmp260
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp259-.Lfunc_begin24        # >> Call Site 24 <<
	.uleb128 .Ltmp261-.Ltmp259              #   Call between .Ltmp259 and .Ltmp261
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp261-.Lfunc_begin24        # >> Call Site 25 <<
	.uleb128 .Ltmp262-.Ltmp261              #   Call between .Ltmp261 and .Ltmp262
	.uleb128 .Ltmp263-.Lfunc_begin24        #     jumps to .Ltmp263
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp262-.Lfunc_begin24        # >> Call Site 26 <<
	.uleb128 .Ltmp264-.Ltmp262              #   Call between .Ltmp262 and .Ltmp264
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp264-.Lfunc_begin24        # >> Call Site 27 <<
	.uleb128 .Ltmp265-.Ltmp264              #   Call between .Ltmp264 and .Ltmp265
	.uleb128 .Ltmp266-.Lfunc_begin24        #     jumps to .Ltmp266
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp267-.Lfunc_begin24        # >> Call Site 28 <<
	.uleb128 .Ltmp276-.Ltmp267              #   Call between .Ltmp267 and .Ltmp276
	.uleb128 .Ltmp277-.Lfunc_begin24        #     jumps to .Ltmp277
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp276-.Lfunc_begin24        # >> Call Site 29 <<
	.uleb128 .Ltmp278-.Ltmp276              #   Call between .Ltmp276 and .Ltmp278
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp278-.Lfunc_begin24        # >> Call Site 30 <<
	.uleb128 .Ltmp279-.Ltmp278              #   Call between .Ltmp278 and .Ltmp279
	.uleb128 .Ltmp280-.Lfunc_begin24        #     jumps to .Ltmp280
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp279-.Lfunc_begin24        # >> Call Site 31 <<
	.uleb128 .Ltmp281-.Ltmp279              #   Call between .Ltmp279 and .Ltmp281
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp281-.Lfunc_begin24        # >> Call Site 32 <<
	.uleb128 .Ltmp282-.Ltmp281              #   Call between .Ltmp281 and .Ltmp282
	.uleb128 .Ltmp283-.Lfunc_begin24        #     jumps to .Ltmp283
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp284-.Lfunc_begin24        # >> Call Site 33 <<
	.uleb128 .Ltmp289-.Ltmp284              #   Call between .Ltmp284 and .Ltmp289
	.uleb128 .Ltmp290-.Lfunc_begin24        #     jumps to .Ltmp290
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp289-.Lfunc_begin24        # >> Call Site 34 <<
	.uleb128 .Ltmp291-.Ltmp289              #   Call between .Ltmp289 and .Ltmp291
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp291-.Lfunc_begin24        # >> Call Site 35 <<
	.uleb128 .Ltmp292-.Ltmp291              #   Call between .Ltmp291 and .Ltmp292
	.uleb128 .Ltmp293-.Lfunc_begin24        #     jumps to .Ltmp293
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp292-.Lfunc_begin24        # >> Call Site 36 <<
	.uleb128 .Ltmp294-.Ltmp292              #   Call between .Ltmp292 and .Ltmp294
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp294-.Lfunc_begin24        # >> Call Site 37 <<
	.uleb128 .Ltmp295-.Ltmp294              #   Call between .Ltmp294 and .Ltmp295
	.uleb128 .Ltmp296-.Lfunc_begin24        #     jumps to .Ltmp296
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp297-.Lfunc_begin24        # >> Call Site 38 <<
	.uleb128 .Ltmp306-.Ltmp297              #   Call between .Ltmp297 and .Ltmp306
	.uleb128 .Ltmp307-.Lfunc_begin24        #     jumps to .Ltmp307
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp306-.Lfunc_begin24        # >> Call Site 39 <<
	.uleb128 .Ltmp308-.Ltmp306              #   Call between .Ltmp306 and .Ltmp308
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp308-.Lfunc_begin24        # >> Call Site 40 <<
	.uleb128 .Ltmp309-.Ltmp308              #   Call between .Ltmp308 and .Ltmp309
	.uleb128 .Ltmp310-.Lfunc_begin24        #     jumps to .Ltmp310
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp309-.Lfunc_begin24        # >> Call Site 41 <<
	.uleb128 .Lfunc_end41-.Ltmp309          #   Call between .Ltmp309 and .Lfunc_end41
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end24:
	.p2align	2, 0x0
                                        # -- End function
	.type	_ZN12_GLOBAL__N_115ExpectedResultsE,@object # @_ZN12_GLOBAL__N_115ExpectedResultsE
	.local	_ZN12_GLOBAL__N_115ExpectedResultsE
	.comm	_ZN12_GLOBAL__N_115ExpectedResultsE,24,8
	.hidden	__dso_handle
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str:
	.asciz	"error message"
	.size	.L.str, 14

	.type	_ZL27benchmark_uniq_2_benchmark_,@object # @_ZL27benchmark_uniq_2_benchmark_
	.local	_ZL27benchmark_uniq_2_benchmark_
	.comm	_ZL27benchmark_uniq_2_benchmark_,8,8
	.type	.L.str.3,@object                # @.str.3
	.p2align	3, 0x0
.L.str.3:
	.asciz	"BM_error_no_running"
	.size	.L.str.3, 20

	.hidden	dummy70                         # @dummy70
	.type	dummy70,@object
	.bss
	.globl	dummy70
	.p2align	2, 0x0
dummy70:
	.word	0                               # 0x0
	.size	dummy70, 4

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"false"
	.size	.L.str.6, 6

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MicroBenchmarks/libs/benchmark/test/skip_with_error_test.cc"
	.size	.L.str.7, 134

	.type	.L__PRETTY_FUNCTION__._Z23BM_error_before_runningRN9benchmark5StateE,@object # @__PRETTY_FUNCTION__._Z23BM_error_before_runningRN9benchmark5StateE
.L__PRETTY_FUNCTION__._Z23BM_error_before_runningRN9benchmark5StateE:
	.asciz	"void BM_error_before_running(benchmark::State &)"
	.size	.L__PRETTY_FUNCTION__._Z23BM_error_before_runningRN9benchmark5StateE, 49

	.type	_ZL27benchmark_uniq_3_benchmark_,@object # @_ZL27benchmark_uniq_3_benchmark_
	.local	_ZL27benchmark_uniq_3_benchmark_
	.comm	_ZL27benchmark_uniq_3_benchmark_,8,8
	.type	.L.str.9,@object                # @.str.9
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.9:
	.asciz	"BM_error_before_running"
	.size	.L.str.9, 24

	.hidden	dummy79                         # @dummy79
	.type	dummy79,@object
	.bss
	.globl	dummy79
	.p2align	2, 0x0
dummy79:
	.word	0                               # 0x0
	.size	dummy79, 4

	.type	.L__PRETTY_FUNCTION__._Z29BM_error_before_running_batchRN9benchmark5StateE,@object # @__PRETTY_FUNCTION__._Z29BM_error_before_running_batchRN9benchmark5StateE
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__PRETTY_FUNCTION__._Z29BM_error_before_running_batchRN9benchmark5StateE:
	.asciz	"void BM_error_before_running_batch(benchmark::State &)"
	.size	.L__PRETTY_FUNCTION__._Z29BM_error_before_running_batchRN9benchmark5StateE, 55

	.type	_ZL27benchmark_uniq_4_benchmark_,@object # @_ZL27benchmark_uniq_4_benchmark_
	.local	_ZL27benchmark_uniq_4_benchmark_
	.comm	_ZL27benchmark_uniq_4_benchmark_,8,8
	.type	.L.str.12,@object               # @.str.12
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.12:
	.asciz	"BM_error_before_running_batch"
	.size	.L.str.12, 30

	.hidden	dummy88                         # @dummy88
	.type	dummy88,@object
	.bss
	.globl	dummy88
	.p2align	2, 0x0
dummy88:
	.word	0                               # 0x0
	.size	dummy88, 4

	.type	.L__PRETTY_FUNCTION__._Z33BM_error_before_running_range_forRN9benchmark5StateE,@object # @__PRETTY_FUNCTION__._Z33BM_error_before_running_range_forRN9benchmark5StateE
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__PRETTY_FUNCTION__._Z33BM_error_before_running_range_forRN9benchmark5StateE:
	.asciz	"void BM_error_before_running_range_for(benchmark::State &)"
	.size	.L__PRETTY_FUNCTION__._Z33BM_error_before_running_range_forRN9benchmark5StateE, 59

	.type	_ZL27benchmark_uniq_5_benchmark_,@object # @_ZL27benchmark_uniq_5_benchmark_
	.local	_ZL27benchmark_uniq_5_benchmark_
	.comm	_ZL27benchmark_uniq_5_benchmark_,8,8
	.type	.L.str.15,@object               # @.str.15
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.15:
	.asciz	"BM_error_before_running_range_for"
	.size	.L.str.15, 34

	.hidden	dummy97                         # @dummy97
	.type	dummy97,@object
	.bss
	.globl	dummy97
	.p2align	2, 0x0
dummy97:
	.word	0                               # 0x0
	.size	dummy97, 4

	.type	.L.str.17,@object               # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"first_iter"
	.size	.L.str.17, 11

	.type	.L__PRETTY_FUNCTION__._Z23BM_error_during_runningRN9benchmark5StateE,@object # @__PRETTY_FUNCTION__._Z23BM_error_during_runningRN9benchmark5StateE
.L__PRETTY_FUNCTION__._Z23BM_error_during_runningRN9benchmark5StateE:
	.asciz	"void BM_error_during_running(benchmark::State &)"
	.size	.L__PRETTY_FUNCTION__._Z23BM_error_during_runningRN9benchmark5StateE, 49

	.type	_ZL27benchmark_uniq_6_benchmark_,@object # @_ZL27benchmark_uniq_6_benchmark_
	.local	_ZL27benchmark_uniq_6_benchmark_
	.comm	_ZL27benchmark_uniq_6_benchmark_,8,8
	.type	.L.str.19,@object               # @.str.19
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.19:
	.asciz	"BM_error_during_running"
	.size	.L.str.19, 24

	.hidden	dummy120                        # @dummy120
	.type	dummy120,@object
	.bss
	.globl	dummy120
	.p2align	2, 0x0
dummy120:
	.word	0                               # 0x0
	.size	dummy120, 4

	.type	.L.str.21,@object               # @.str.21
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.21:
	.asciz	"/1/threads:1"
	.size	.L.str.21, 13

	.type	.L.str.22,@object               # @.str.22
	.p2align	3, 0x0
.L.str.22:
	.asciz	"/1/threads:2"
	.size	.L.str.22, 13

	.type	.L.str.23,@object               # @.str.23
	.p2align	3, 0x0
.L.str.23:
	.asciz	"/1/threads:4"
	.size	.L.str.23, 13

	.type	.L.str.24,@object               # @.str.24
	.p2align	3, 0x0
.L.str.24:
	.asciz	"/1/threads:8"
	.size	.L.str.24, 13

	.type	.L.str.25,@object               # @.str.25
	.p2align	3, 0x0
.L.str.25:
	.asciz	"/2/threads:1"
	.size	.L.str.25, 13

	.type	.L.str.26,@object               # @.str.26
	.p2align	3, 0x0
.L.str.26:
	.asciz	"/2/threads:2"
	.size	.L.str.26, 13

	.type	.L.str.27,@object               # @.str.27
	.p2align	3, 0x0
.L.str.27:
	.asciz	"/2/threads:4"
	.size	.L.str.27, 13

	.type	.L.str.28,@object               # @.str.28
	.p2align	3, 0x0
.L.str.28:
	.asciz	"/2/threads:8"
	.size	.L.str.28, 13

	.type	.L.str.30,@object               # @.str.30
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.30:
	.asciz	"state.max_iterations > 3 && \"test requires at least a few iterations\""
	.size	.L.str.30, 70

	.type	.L__PRETTY_FUNCTION__._Z34BM_error_during_running_ranged_forRN9benchmark5StateE,@object # @__PRETTY_FUNCTION__._Z34BM_error_during_running_ranged_forRN9benchmark5StateE
.L__PRETTY_FUNCTION__._Z34BM_error_during_running_ranged_forRN9benchmark5StateE:
	.asciz	"void BM_error_during_running_ranged_for(benchmark::State &)"
	.size	.L__PRETTY_FUNCTION__._Z34BM_error_during_running_ranged_forRN9benchmark5StateE, 60

	.type	_ZL27benchmark_uniq_7_benchmark_,@object # @_ZL27benchmark_uniq_7_benchmark_
	.local	_ZL27benchmark_uniq_7_benchmark_
	.comm	_ZL27benchmark_uniq_7_benchmark_,8,8
	.type	.L.str.33,@object               # @.str.33
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.33:
	.asciz	"BM_error_during_running_ranged_for"
	.size	.L.str.33, 35

	.hidden	dummy142                        # @dummy142
	.type	dummy142,@object
	.bss
	.globl	dummy142
	.p2align	2, 0x0
dummy142:
	.word	0                               # 0x0
	.size	dummy142, 4

	.type	.L.str.35,@object               # @.str.35
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.35:
	.asciz	"/1/iterations:5"
	.size	.L.str.35, 16

	.type	.L.str.36,@object               # @.str.36
	.p2align	3, 0x0
.L.str.36:
	.asciz	"/2/iterations:5"
	.size	.L.str.36, 16

	.type	_ZL27benchmark_uniq_8_benchmark_,@object # @_ZL27benchmark_uniq_8_benchmark_
	.local	_ZL27benchmark_uniq_8_benchmark_
	.comm	_ZL27benchmark_uniq_8_benchmark_,8,8
	.type	.L.str.38,@object               # @.str.38
	.p2align	3, 0x0
.L.str.38:
	.asciz	"BM_error_after_running"
	.size	.L.str.38, 23

	.hidden	dummy156                        # @dummy156
	.type	dummy156,@object
	.bss
	.globl	dummy156
	.p2align	2, 0x0
dummy156:
	.word	0                               # 0x0
	.size	dummy156, 4

	.type	.L.str.40,@object               # @.str.40
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.40:
	.asciz	"/threads:1"
	.size	.L.str.40, 11

	.type	.L.str.41,@object               # @.str.41
	.p2align	3, 0x0
.L.str.41:
	.asciz	"/threads:2"
	.size	.L.str.41, 11

	.type	.L.str.42,@object               # @.str.42
	.p2align	3, 0x0
.L.str.42:
	.asciz	"/threads:4"
	.size	.L.str.42, 11

	.type	.L.str.43,@object               # @.str.43
	.p2align	3, 0x0
.L.str.43:
	.asciz	"/threads:8"
	.size	.L.str.43, 11

	.type	.L__PRETTY_FUNCTION__._Z21BM_error_while_pausedRN9benchmark5StateE,@object # @__PRETTY_FUNCTION__._Z21BM_error_while_pausedRN9benchmark5StateE
	.section	.rodata.str1.1,"aMS",@progbits,1
.L__PRETTY_FUNCTION__._Z21BM_error_while_pausedRN9benchmark5StateE:
	.asciz	"void BM_error_while_paused(benchmark::State &)"
	.size	.L__PRETTY_FUNCTION__._Z21BM_error_while_pausedRN9benchmark5StateE, 47

	.type	_ZL27benchmark_uniq_9_benchmark_,@object # @_ZL27benchmark_uniq_9_benchmark_
	.local	_ZL27benchmark_uniq_9_benchmark_
	.comm	_ZL27benchmark_uniq_9_benchmark_,8,8
	.type	.L.str.45,@object               # @.str.45
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.45:
	.asciz	"BM_error_while_paused"
	.size	.L.str.45, 22

	.hidden	dummy180                        # @dummy180
	.type	dummy180,@object
	.bss
	.globl	dummy180
	.p2align	2, 0x0
dummy180:
	.word	0                               # 0x0
	.size	dummy180, 4

	.type	.L.str.47,@object               # @.str.47
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.47:
	.asciz	"EB != ExpectedResults.end()"
	.size	.L.str.47, 28

	.type	.L__PRETTY_FUNCTION__.main,@object # @__PRETTY_FUNCTION__.main
.L__PRETTY_FUNCTION__.main:
	.asciz	"int main(int, char **)"
	.size	.L__PRETTY_FUNCTION__.main, 23

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"EB == ExpectedResults.end()"
	.size	.L.str.48, 28

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"basic_string::append"
	.size	.L.str.49, 21

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"vector::_M_realloc_append"
	.size	.L.str.50, 26

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MicroBenchmarks/libs/benchmark/include/benchmark/benchmark.h"
	.size	.L.str.52, 135

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"cached_ > 0"
	.size	.L.str.54, 12

	.type	.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv,@object # @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv
.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv:
	.asciz	"StateIterator &benchmark::State::StateIterator::operator++()"
	.size	.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv, 61

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"range_.size() > pos"
	.size	.L.str.55, 20

	.type	.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm,@object # @__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm
.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm:
	.asciz	"int64_t benchmark::State::range(std::size_t) const"
	.size	.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm, 51

	.type	_ZTVN12_GLOBAL__N_112TestReporterE,@object # @_ZTVN12_GLOBAL__N_112TestReporterE
	.section	.data.rel.ro,"aw",@progbits
	.p2align	3, 0x0
_ZTVN12_GLOBAL__N_112TestReporterE:
	.dword	0
	.dword	_ZTIN12_GLOBAL__N_112TestReporterE
	.dword	_ZN12_GLOBAL__N_112TestReporter13ReportContextERKN9benchmark17BenchmarkReporter7ContextE
	.dword	_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl
	.dword	_ZN12_GLOBAL__N_112TestReporter10ReportRunsERKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS4_EE
	.dword	_ZN9benchmark17BenchmarkReporter8FinalizeEv
	.dword	_ZN12_GLOBAL__N_112TestReporterD2Ev
	.dword	_ZN12_GLOBAL__N_112TestReporterD0Ev
	.dword	_ZN9benchmark15ConsoleReporter12PrintRunDataERKNS_17BenchmarkReporter3RunE
	.dword	_ZN9benchmark15ConsoleReporter11PrintHeaderERKNS_17BenchmarkReporter3RunE
	.size	_ZTVN12_GLOBAL__N_112TestReporterE, 80

	.type	_ZTIN12_GLOBAL__N_112TestReporterE,@object # @_ZTIN12_GLOBAL__N_112TestReporterE
	.p2align	3, 0x0
_ZTIN12_GLOBAL__N_112TestReporterE:
	.dword	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.dword	_ZTSN12_GLOBAL__N_112TestReporterE
	.dword	_ZTIN9benchmark15ConsoleReporterE
	.size	_ZTIN12_GLOBAL__N_112TestReporterE, 24

	.type	_ZTSN12_GLOBAL__N_112TestReporterE,@object # @_ZTSN12_GLOBAL__N_112TestReporterE
	.section	.rodata,"a",@progbits
_ZTSN12_GLOBAL__N_112TestReporterE:
	.asciz	"N12_GLOBAL__N_112TestReporterE"
	.size	_ZTSN12_GLOBAL__N_112TestReporterE, 31

	.type	.L.str.56,@object               # @.str.56
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.56:
	.asciz	"vector::_M_range_insert"
	.size	.L.str.56, 24

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"name == run.benchmark_name()"
	.size	.L.str.57, 29

	.type	.L__func__._ZNK12_GLOBAL__N_18TestCase8CheckRunERKN9benchmark17BenchmarkReporter3RunE,@object # @__func__._ZNK12_GLOBAL__N_18TestCase8CheckRunERKN9benchmark17BenchmarkReporter3RunE
.L__func__._ZNK12_GLOBAL__N_18TestCase8CheckRunERKN9benchmark17BenchmarkReporter3RunE:
	.asciz	"CheckRun"
	.size	.L__func__._ZNK12_GLOBAL__N_18TestCase8CheckRunERKN9benchmark17BenchmarkReporter3RunE, 9

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"expected "
	.size	.L.str.58, 10

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	" got "
	.size	.L.str.59, 6

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"(error_occurred) == (benchmark::internal::SkippedWithError == run.skipped)"
	.size	.L.str.60, 75

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"error_message == run.skip_message"
	.size	.L.str.61, 34

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"run.iterations != 0"
	.size	.L.str.62, 20

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

	.type	.L.str.63,@object               # @.str.63
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.63:
	.asciz	":"
	.size	.L.str.63, 2

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	": "
	.size	.L.str.64, 3

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	": Check `"
	.size	.L.str.65, 10

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"' failed. "
	.size	.L.str.66, 11

	.hidden	_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log # @_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log
	.type	_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log,@object
	.section	.bss._ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log,"awG",@nobits,_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log,comdat
	.weak	_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log
	.p2align	3, 0x0
_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log:
	.space	8
	.size	_ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, 8

	.hidden	_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log # @_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log
	.type	_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log,@object
	.section	.bss._ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log,"awG",@nobits,_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log,comdat
	.weak	_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log
	.p2align	3, 0x0
_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log:
	.dword	0                               # 0x0
	.size	_ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log, 8

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_skip_with_error_test.cc
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
	.addrsig_sym _Z19BM_error_no_runningRN9benchmark5StateE
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Z23BM_error_before_runningRN9benchmark5StateE
	.addrsig_sym _Z29BM_error_before_running_batchRN9benchmark5StateE
	.addrsig_sym _Z33BM_error_before_running_range_forRN9benchmark5StateE
	.addrsig_sym _Z23BM_error_during_runningRN9benchmark5StateE
	.addrsig_sym _Z34BM_error_during_running_ranged_forRN9benchmark5StateE
	.addrsig_sym _Z22BM_error_after_runningRN9benchmark5StateE
	.addrsig_sym _Z21BM_error_while_pausedRN9benchmark5StateE
	.addrsig_sym _ZN9benchmark16PrintDefaultHelpEv
	.addrsig_sym _GLOBAL__sub_I_skip_with_error_test.cc
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZN12_GLOBAL__N_115ExpectedResultsE
	.addrsig_sym __dso_handle
	.addrsig_sym _ZTIN12_GLOBAL__N_112TestReporterE
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTSN12_GLOBAL__N_112TestReporterE
	.addrsig_sym _ZTIN9benchmark15ConsoleReporterE
	.addrsig_sym _ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log
	.addrsig_sym _ZZN9benchmark8internal19GetErrorLogInstanceEvE9error_log
	.addrsig_sym _ZGVZN9benchmark8internal19GetErrorLogInstanceEvE9error_log
	.addrsig_sym _ZSt4clog
