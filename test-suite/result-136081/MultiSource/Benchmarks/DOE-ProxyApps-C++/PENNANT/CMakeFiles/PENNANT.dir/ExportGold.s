	.file	"ExportGold.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.text
	.globl	_ZN10ExportGoldC2EP4Mesh        # -- Begin function _ZN10ExportGoldC2EP4Mesh
	.p2align	5
	.type	_ZN10ExportGoldC2EP4Mesh,@function
_ZN10ExportGoldC2EP4Mesh:               # @_ZN10ExportGoldC2EP4Mesh
# %bb.0:
	addi.d	$a3, $a0, 8
	ori	$a2, $zero, 168
	st.d	$a1, $a0, 0
	move	$a0, $a3
	move	$a1, $zero
	pcaddu18i	$t8, %call36(memset)
	jr	$t8
.Lfunc_end0:
	.size	_ZN10ExportGoldC2EP4Mesh, .Lfunc_end0-_ZN10ExportGoldC2EP4Mesh
                                        # -- End function
	.globl	_ZN10ExportGoldD2Ev             # -- Begin function _ZN10ExportGoldD2Ev
	.p2align	5
	.type	_ZN10ExportGoldD2Ev,@function
_ZN10ExportGoldD2Ev:                    # @_ZN10ExportGoldD2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 152
	beqz	$a0, .LBB1_2
# %bb.1:
	ld.d	$a1, $fp, 168
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_2:                                # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ld.d	$a0, $fp, 128
	beqz	$a0, .LBB1_4
# %bb.3:
	ld.d	$a1, $fp, 144
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_4:                                # %_ZNSt6vectorIiSaIiEED2Ev.exit2
	ld.d	$a0, $fp, 104
	beqz	$a0, .LBB1_6
# %bb.5:
	ld.d	$a1, $fp, 120
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_6:                                # %_ZNSt6vectorIiSaIiEED2Ev.exit4
	ld.d	$a0, $fp, 80
	beqz	$a0, .LBB1_8
# %bb.7:
	ld.d	$a1, $fp, 96
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_8:                                # %_ZNSt6vectorIiSaIiEED2Ev.exit6
	ld.d	$a0, $fp, 56
	beqz	$a0, .LBB1_10
# %bb.9:
	ld.d	$a1, $fp, 72
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_10:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit8
	ld.d	$a0, $fp, 32
	beqz	$a0, .LBB1_12
# %bb.11:
	ld.d	$a1, $fp, 48
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_12:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit10
	ld.d	$a0, $fp, 8
	beqz	$a0, .LBB1_14
# %bb.13:
	ld.d	$a1, $fp, 24
	sub.d	$a1, $a1, $a0
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB1_14:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit12
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end1:
	.size	_ZN10ExportGoldD2Ev, .Lfunc_end1-_ZN10ExportGoldD2Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN10ExportGold5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_ # -- Begin function _ZN10ExportGold5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_
	.p2align	5
	.type	_ZN10ExportGold5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_,@function
_ZN10ExportGold5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_: # @_ZN10ExportGold5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:                                # %._crit_edge.i.i
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
	fst.d	$fs0, $sp, 40                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 56, -72
	move	$fp, $a5
	move	$s2, $a4
	move	$s3, $a3
	fmov.d	$fs0, $fa0
	move	$s4, $a2
	move	$s0, $a1
	move	$s1, $a0
	pcaddu18i	$ra, %call36(_ZN10ExportGold13writeCaseFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN10ExportGold9sortZonesEv)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s4
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZN10ExportGold12writeGeoFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEid)
	jirl	$ra, $ra, 0
	addi.d	$s4, $sp, 24
	st.d	$s4, $sp, 8
	lu12i.w	$s5, 7
	ori	$a0, $s5, 634
	st.h	$a0, $sp, 24
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 26
.Ltmp0:
	addi.d	$a2, $sp, 8
	move	$a0, $s1
	move	$a1, $s0
	move	$a3, $s3
	pcaddu18i	$ra, %call36(_ZN10ExportGold12writeVarFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_PKd)
	jirl	$ra, $ra, 0
.Ltmp1:
# %bb.1:
	ld.d	$a0, $sp, 8
	beq	$a0, $s4, .LBB2_3
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_3:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	st.d	$s4, $sp, 8
	lu12i.w	$a0, 6
	ori	$a0, $a0, 1402
	st.h	$a0, $sp, 24
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 26
.Ltmp3:
	addi.d	$a2, $sp, 8
	move	$a0, $s1
	move	$a1, $s0
	move	$a3, $s2
	pcaddu18i	$ra, %call36(_ZN10ExportGold12writeVarFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_PKd)
	jirl	$ra, $ra, 0
.Ltmp4:
# %bb.4:
	ld.d	$a0, $sp, 8
	beq	$a0, $s4, .LBB2_6
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_6:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
	st.d	$s4, $sp, 8
	ori	$a0, $s5, 122
	st.h	$a0, $sp, 24
	ori	$a0, $zero, 2
	st.d	$a0, $sp, 16
	st.b	$zero, $sp, 26
.Ltmp6:
	addi.d	$a2, $sp, 8
	move	$a0, $s1
	move	$a1, $s0
	move	$a3, $fp
	pcaddu18i	$ra, %call36(_ZN10ExportGold12writeVarFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_PKd)
	jirl	$ra, $ra, 0
.Ltmp7:
# %bb.7:
	ld.d	$a0, $sp, 8
	beq	$a0, $s4, .LBB2_9
# %bb.8:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
	ld.d	$a1, $sp, 24
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_9:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
	fld.d	$fs0, $sp, 40                   # 8-byte Folded Reload
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
.LBB2_10:
.Ltmp8:
	b	.LBB2_13
.LBB2_11:
.Ltmp5:
	b	.LBB2_13
.LBB2_12:
.Ltmp2:
.LBB2_13:
	ld.d	$a2, $sp, 8
	move	$fp, $a0
	beq	$a2, $s4, .LBB2_15
# %bb.14:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_15:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZN10ExportGold5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_, .Lfunc_end2-_ZN10ExportGold5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEidPKdS9_S9_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table2:
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
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 7 <<
	.uleb128 .Lfunc_end2-.Ltmp7             #   Call between .Ltmp7 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN10ExportGold13writeCaseFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE # -- Begin function _ZN10ExportGold13writeCaseFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.p2align	5
	.type	_ZN10ExportGold13writeCaseFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,@function
_ZN10ExportGold13writeCaseFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE: # @_ZN10ExportGold13writeCaseFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -592
	.cfi_def_cfa_offset 592
	st.d	$ra, $sp, 584                   # 8-byte Folded Spill
	st.d	$fp, $sp, 576                   # 8-byte Folded Spill
	st.d	$s0, $sp, 568                   # 8-byte Folded Spill
	st.d	$s1, $sp, 560                   # 8-byte Folded Spill
	st.d	$s2, $sp, 552                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	bgtz	$a0, .LBB3_109
# %bb.1:
	move	$fp, $a1
	ld.d	$s0, $a1, 0
	ld.d	$s1, $a1, 8
	addi.d	$s2, $sp, 536
	st.d	$s2, $sp, 520
	st.d	$zero, $sp, 528
	st.b	$zero, $sp, 536
	addi.d	$a1, $s1, 5
.Ltmp9:
	addi.d	$a0, $sp, 520
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp10:
# %bb.2:
	ld.d	$a0, $sp, 528
	addi.w	$a1, $zero, -1
	lu52i.d	$a1, $a1, 1023
	sub.d	$a0, $a1, $a0
	bltu	$a0, $s1, .LBB3_112
# %bb.3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
.Ltmp11:
	addi.d	$a0, $sp, 520
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp12:
# %bb.4:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
	ld.d	$a0, $sp, 528
	ori	$a1, $zero, 5
	lu52i.d	$a1, $a1, -1024
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 4
	bgeu	$a1, $a0, .LBB3_112
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
.Ltmp13:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	addi.d	$a0, $sp, 520
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp14:
# %bb.6:                                # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
	ld.d	$a1, $sp, 520
.Ltmp15:
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 16
	addi.d	$s0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
.Ltmp16:
# %bb.7:
	ld.d	$a0, $sp, 8
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.w	$a0, $a0, 32
	bnez	$a0, .LBB3_114
# %bb.8:
.Ltmp26:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 1
	addi.d	$s0, $sp, 8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp27:
# %bb.9:                                # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit10
	ld.d	$a0, $sp, 8
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB3_110
# %bb.10:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB3_12
# %bb.11:
	ld.bu	$a0, $s0, 67
	b	.LBB3_14
.LBB3_12:
.Ltmp28:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp29:
# %bb.13:                               # %.noexc45
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp30:
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp31:
.LBB3_14:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp32:
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp33:
# %bb.15:                               # %.noexc47
.Ltmp34:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp35:
# %bb.16:                               # %_ZNSolsEPFRSoS_E.exit11
.Ltmp36:
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a1, $a0, %pc_lo12(.L.str.7)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 20
	addi.d	$s0, $sp, 8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp37:
# %bb.17:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit12
	ld.d	$a0, $sp, 8
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB3_110
# %bb.18:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i50
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB3_20
# %bb.19:
	ld.bu	$a0, $s0, 67
	b	.LBB3_22
.LBB3_20:
.Ltmp38:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp39:
# %bb.21:                               # %.noexc55
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp40:
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp41:
.LBB3_22:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i52
.Ltmp42:
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp43:
# %bb.23:                               # %.noexc57
.Ltmp44:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp45:
# %bb.24:                               # %_ZNSolsEPFRSoS_E.exit13
.Ltmp46:
	pcalau12i	$a0, %pc_hi20(.L.str.6)
	addi.d	$a1, $a0, %pc_lo12(.L.str.6)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 1
	addi.d	$s0, $sp, 8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp47:
# %bb.25:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit14
	ld.d	$a0, $sp, 8
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB3_110
# %bb.26:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i61
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB3_28
# %bb.27:
	ld.bu	$a0, $s0, 67
	b	.LBB3_30
.LBB3_28:
.Ltmp48:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp49:
# %bb.29:                               # %.noexc66
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp50:
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp51:
.LBB3_30:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i63
.Ltmp52:
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp53:
# %bb.31:                               # %.noexc68
.Ltmp54:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp55:
# %bb.32:                               # %_ZNSolsEPFRSoS_E.exit15
.Ltmp56:
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 6
	addi.d	$s0, $sp, 8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp57:
# %bb.33:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit16
	ld.d	$a0, $sp, 8
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB3_110
# %bb.34:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i72
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB3_36
# %bb.35:
	ld.bu	$a0, $s0, 67
	b	.LBB3_38
.LBB3_36:
.Ltmp58:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp59:
# %bb.37:                               # %.noexc77
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp60:
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp61:
.LBB3_38:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i74
.Ltmp62:
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp63:
# %bb.39:                               # %.noexc79
.Ltmp64:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp65:
# %bb.40:                               # %_ZNSolsEPFRSoS_E.exit17
.Ltmp66:
	pcalau12i	$a0, %pc_hi20(.L.str.9)
	addi.d	$a1, $a0, %pc_lo12(.L.str.9)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 18
	addi.d	$s0, $sp, 8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp67:
# %bb.41:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
	ld.d	$a0, $sp, 8
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB3_110
# %bb.42:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i83
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB3_44
# %bb.43:
	ld.bu	$a0, $s0, 67
	b	.LBB3_46
.LBB3_44:
.Ltmp68:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp69:
# %bb.45:                               # %.noexc88
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp70:
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp71:
.LBB3_46:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i85
.Ltmp72:
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp73:
# %bb.47:                               # %.noexc90
.Ltmp74:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp75:
# %bb.48:                               # %_ZNSolsEPFRSoS_E.exit19
.Ltmp76:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a1, $a0, %pc_lo12(.L.str.10)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 8
	addi.d	$s0, $sp, 8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp77:
# %bb.49:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit20
	ld.d	$a0, $sp, 8
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB3_110
# %bb.50:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i94
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB3_52
# %bb.51:
	ld.bu	$a0, $s0, 67
	b	.LBB3_54
.LBB3_52:
.Ltmp78:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp79:
# %bb.53:                               # %.noexc99
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp80:
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp81:
.LBB3_54:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i96
.Ltmp82:
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp83:
# %bb.55:                               # %.noexc101
.Ltmp84:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp85:
# %bb.56:                               # %_ZNSolsEPFRSoS_E.exit21
.Ltmp86:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a1, $a0, %pc_lo12(.L.str.11)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 7
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp87:
# %bb.57:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit22
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
.Ltmp88:
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp89:
# %bb.58:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit23
.Ltmp90:
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 4
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp91:
# %bb.59:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit24
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_110
# %bb.60:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i105
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_62
# %bb.61:
	ld.bu	$a0, $s1, 67
	b	.LBB3_64
.LBB3_62:
.Ltmp92:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp93:
# %bb.63:                               # %.noexc110
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp94:
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp95:
.LBB3_64:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i107
.Ltmp96:
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp97:
# %bb.65:                               # %.noexc112
.Ltmp98:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp99:
# %bb.66:                               # %_ZNSolsEPFRSoS_E.exit25
.Ltmp100:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a1, $a0, %pc_lo12(.L.str.13)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 8
	addi.d	$s0, $sp, 8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp101:
# %bb.67:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit26
	ld.d	$a0, $sp, 8
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB3_110
# %bb.68:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i116
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB3_70
# %bb.69:
	ld.bu	$a0, $s0, 67
	b	.LBB3_72
.LBB3_70:
.Ltmp102:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp103:
# %bb.71:                               # %.noexc121
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp104:
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp105:
.LBB3_72:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i118
.Ltmp106:
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp107:
# %bb.73:                               # %.noexc123
.Ltmp108:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp109:
# %bb.74:                               # %_ZNSolsEPFRSoS_E.exit27
.Ltmp110:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a1, $a0, %pc_lo12(.L.str.14)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 23
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp111:
# %bb.75:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit28
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
.Ltmp112:
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp113:
# %bb.76:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit29
.Ltmp114:
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a1, $a0, %pc_lo12(.L.str.15)
	ori	$a2, $zero, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp115:
# %bb.77:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit30
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_110
# %bb.78:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i127
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_80
# %bb.79:
	ld.bu	$a0, $s1, 67
	b	.LBB3_82
.LBB3_80:
.Ltmp116:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp117:
# %bb.81:                               # %.noexc132
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp118:
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp119:
.LBB3_82:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i129
.Ltmp120:
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp121:
# %bb.83:                               # %.noexc134
.Ltmp122:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp123:
# %bb.84:                               # %_ZNSolsEPFRSoS_E.exit31
.Ltmp124:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 23
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp125:
# %bb.85:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit32
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
.Ltmp126:
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp127:
# %bb.86:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit33
.Ltmp128:
	move	$s0, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a1, $a0, %pc_lo12(.L.str.17)
	ori	$a2, $zero, 3
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp129:
# %bb.87:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit34
	ld.d	$a0, $s0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB3_110
# %bb.88:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i138
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB3_90
# %bb.89:
	ld.bu	$a0, $s1, 67
	b	.LBB3_92
.LBB3_90:
.Ltmp130:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp131:
# %bb.91:                               # %.noexc143
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp132:
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp133:
.LBB3_92:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i140
.Ltmp134:
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp135:
# %bb.93:                               # %.noexc145
.Ltmp136:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp137:
# %bb.94:                               # %_ZNSolsEPFRSoS_E.exit35
.Ltmp138:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a1, $a0, %pc_lo12(.L.str.18)
	addi.d	$a0, $sp, 8
	ori	$a2, $zero, 23
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp139:
# %bb.95:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit36
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
.Ltmp140:
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp141:
# %bb.96:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit37
.Ltmp142:
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.19)
	addi.d	$a1, $a0, %pc_lo12(.L.str.19)
	ori	$a2, $zero, 3
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp143:
# %bb.97:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit38
	ld.d	$a0, $fp, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB3_110
# %bb.98:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i149
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB3_100
# %bb.99:
	ld.bu	$a0, $s0, 67
	b	.LBB3_102
.LBB3_100:
.Ltmp144:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp145:
# %bb.101:                              # %.noexc154
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp146:
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp147:
.LBB3_102:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i151
.Ltmp148:
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp149:
# %bb.103:                              # %.noexc156
.Ltmp150:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp151:
# %bb.104:                              # %_ZNSolsEPFRSoS_E.exit39
	addi.d	$a0, $sp, 16
.Ltmp152:
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv)
	jirl	$ra, $ra, 0
.Ltmp153:
# %bb.105:                              # %.noexc
	bnez	$a0, .LBB3_107
# %bb.106:
	ld.d	$a0, $sp, 8
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 8
	add.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 4
.Ltmp154:
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.Ltmp155:
.LBB3_107:                              # %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 520
	beq	$a0, $s2, .LBB3_109
# %bb.108:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 536
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_109:
	ld.d	$s2, $sp, 552                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 560                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 568                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 576                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 584                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 592
	ret
.LBB3_110:                              # %.invoke
.Ltmp156:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp157:
# %bb.111:                              # %.cont
.LBB3_112:                              # %.invoke.i.i
.Ltmp159:
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp160:
# %bb.113:                              # %.cont.i.i
.LBB3_114:
.Ltmp18:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 17
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp19:
# %bb.115:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a1, $sp, 520
	ld.d	$a2, $sp, 528
.Ltmp20:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp21:
# %bb.116:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
.Ltmp22:
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp23:
# %bb.117:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit9
.Ltmp24:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp25:
# %bb.118:                              # %_ZNSolsEPFRSoS_E.exit
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB3_119:
.Ltmp17:
	move	$fp, $a0
	b	.LBB3_123
.LBB3_120:
.Ltmp161:
	ld.d	$a2, $sp, 520
	move	$fp, $a0
	beq	$a2, $s2, .LBB3_126
# %bb.121:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
	ld.d	$a0, $sp, 536
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	b	.LBB3_125
.LBB3_122:
.Ltmp158:
	move	$fp, $a0
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
.LBB3_123:
	ld.d	$a0, $sp, 520
	beq	$a0, $s2, .LBB3_126
# %bb.124:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
	ld.d	$a1, $sp, 536
	addi.d	$a1, $a1, 1
.LBB3_125:                              # %common.resume
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_126:                              # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZN10ExportGold13writeCaseFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .Lfunc_end3-_ZN10ExportGold13writeCaseFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table3:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Ltmp9-.Lfunc_begin1           # >> Call Site 1 <<
	.uleb128 .Ltmp14-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp14
	.uleb128 .Ltmp161-.Lfunc_begin1         #     jumps to .Ltmp161
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp15-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp16-.Ltmp15                #   Call between .Ltmp15 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin1          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp155-.Ltmp26               #   Call between .Ltmp26 and .Ltmp155
	.uleb128 .Ltmp158-.Lfunc_begin1         #     jumps to .Ltmp158
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp155-.Lfunc_begin1         # >> Call Site 4 <<
	.uleb128 .Ltmp156-.Ltmp155              #   Call between .Ltmp155 and .Ltmp156
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin1         # >> Call Site 5 <<
	.uleb128 .Ltmp157-.Ltmp156              #   Call between .Ltmp156 and .Ltmp157
	.uleb128 .Ltmp158-.Lfunc_begin1         #     jumps to .Ltmp158
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp159-.Lfunc_begin1         # >> Call Site 6 <<
	.uleb128 .Ltmp160-.Ltmp159              #   Call between .Ltmp159 and .Ltmp160
	.uleb128 .Ltmp161-.Lfunc_begin1         #     jumps to .Ltmp161
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp25-.Ltmp18                #   Call between .Ltmp18 and .Ltmp25
	.uleb128 .Ltmp158-.Lfunc_begin1         #     jumps to .Ltmp158
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Lfunc_end3-.Ltmp25            #   Call between .Ltmp25 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN10ExportGold9sortZonesEv     # -- Begin function _ZN10ExportGold9sortZonesEv
	.p2align	5
	.type	_ZN10ExportGold9sortZonesEv,@function
_ZN10ExportGold9sortZonesEv:            # @_ZN10ExportGold9sortZonesEv
	.cfi_startproc
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
	move	$fp, $a0
	ld.d	$a2, $a0, 0
	ld.d	$a0, $a0, 88
	ld.d	$a1, $fp, 80
	ld.w	$s0, $a2, 68
	ld.d	$s1, $a2, 232
	sub.d	$a2, $a0, $a1
	srai.d	$a2, $a2, 2
	addi.d	$s2, $fp, 80
	bgeu	$a2, $s0, .LBB4_2
# %bb.1:
	sub.d	$a1, $s0, $a2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
	b	.LBB4_5
.LBB4_2:
	bgeu	$s0, $a2, .LBB4_5
# %bb.3:
	alsl.d	$a1, $s0, $a1, 2
	beq	$a0, $a1, .LBB4_5
# %bb.4:                                # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
	st.d	$a1, $fp, 88
.LBB4_5:                                # %_ZNSt6vectorIiSaIiEE6resizeEm.exit
	ori	$a0, $zero, 1
	blt	$s0, $a0, .LBB4_35
# %bb.6:                                # %.lr.ph
	move	$s6, $zero
	move	$s7, $zero
	move	$s8, $zero
	slli.d	$a2, $s0, 2
	ori	$a3, $zero, 4
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 511
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	st.d	$s1, $sp, 24                    # 8-byte Folded Spill
	st.d	$s2, $sp, 16                    # 8-byte Folded Spill
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	b	.LBB4_10
.LBB4_7:                                # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i
                                        #   in Loop: Header=BB4_10 Depth=1
	add.d	$a0, $s3, $s1
	addi.d	$a0, $a0, 4
	st.d	$s3, $fp, 8
	st.d	$a0, $fp, 16
	alsl.d	$a0, $s5, $s3, 2
	st.d	$a0, $fp, 24
.LBB4_8:                                # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
                                        #   in Loop: Header=BB4_10 Depth=1
	ld.d	$s1, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	ori	$a3, $zero, 4
.LBB4_9:                                # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
                                        #   in Loop: Header=BB4_10 Depth=1
	ld.d	$a0, $s2, 0
	stx.w	$s8, $a0, $s6
	add.d	$s8, $s0, $s8
	addi.d	$s6, $s6, 4
	addi.d	$s7, $s7, 1
	beq	$a2, $s6, .LBB4_35
.LBB4_10:                               # =>This Inner Loop Header: Depth=1
	ldx.w	$s0, $s1, $s6
	beq	$s0, $a3, .LBB4_14
# %bb.11:                               #   in Loop: Header=BB4_10 Depth=1
	ori	$a0, $zero, 3
	bne	$s0, $a0, .LBB4_16
# %bb.12:                               #   in Loop: Header=BB4_10 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 24
	beq	$a0, $a1, .LBB4_18
# %bb.13:                               #   in Loop: Header=BB4_10 Depth=1
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 16
	b	.LBB4_9
	.p2align	4, , 16
.LBB4_14:                               #   in Loop: Header=BB4_10 Depth=1
	ld.d	$a0, $fp, 40
	ld.d	$a1, $fp, 48
	beq	$a0, $a1, .LBB4_23
# %bb.15:                               #   in Loop: Header=BB4_10 Depth=1
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 40
	b	.LBB4_9
	.p2align	4, , 16
.LBB4_16:                               #   in Loop: Header=BB4_10 Depth=1
	ld.d	$a0, $fp, 64
	ld.d	$a1, $fp, 72
	beq	$a0, $a1, .LBB4_29
# %bb.17:                               #   in Loop: Header=BB4_10 Depth=1
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $fp, 64
	b	.LBB4_9
.LBB4_18:                               #   in Loop: Header=BB4_10 Depth=1
	ld.d	$s2, $fp, 8
	sub.d	$s1, $a0, $s2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$s1, $a0, .LBB4_36
# %bb.19:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
                                        #   in Loop: Header=BB4_10 Depth=1
	srai.d	$a0, $s1, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 0                     # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	stx.w	$s7, $a0, $s1
	blt	$s1, $s4, .LBB4_21
# %bb.20:                               #   in Loop: Header=BB4_10 Depth=1
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_21:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
                                        #   in Loop: Header=BB4_10 Depth=1
	beqz	$s2, .LBB4_7
# %bb.22:                               #   in Loop: Header=BB4_10 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB4_7
.LBB4_23:                               #   in Loop: Header=BB4_10 Depth=1
	ld.d	$s2, $fp, 32
	sub.d	$s1, $a0, $s2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$s1, $a0, .LBB4_36
# %bb.24:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i11
                                        #   in Loop: Header=BB4_10 Depth=1
	srai.d	$a0, $s1, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 0                     # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	stx.w	$s7, $a0, $s1
	blt	$s1, $s4, .LBB4_26
# %bb.25:                               #   in Loop: Header=BB4_10 Depth=1
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_26:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i13
                                        #   in Loop: Header=BB4_10 Depth=1
	beqz	$s2, .LBB4_28
# %bb.27:                               #   in Loop: Header=BB4_10 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_28:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i15
                                        #   in Loop: Header=BB4_10 Depth=1
	add.d	$a0, $s3, $s1
	addi.d	$a0, $a0, 4
	st.d	$s3, $fp, 32
	st.d	$a0, $fp, 40
	alsl.d	$a0, $s5, $s3, 2
	st.d	$a0, $fp, 48
	b	.LBB4_8
.LBB4_29:                               #   in Loop: Header=BB4_10 Depth=1
	ld.d	$s2, $fp, 56
	sub.d	$s1, $a0, $s2
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	beq	$s1, $a0, .LBB4_36
# %bb.30:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i18
                                        #   in Loop: Header=BB4_10 Depth=1
	srai.d	$a0, $s1, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 0                     # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	stx.w	$s7, $a0, $s1
	blt	$s1, $s4, .LBB4_32
# %bb.31:                               #   in Loop: Header=BB4_10 Depth=1
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_32:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i20
                                        #   in Loop: Header=BB4_10 Depth=1
	beqz	$s2, .LBB4_34
# %bb.33:                               #   in Loop: Header=BB4_10 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_34:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i22
                                        #   in Loop: Header=BB4_10 Depth=1
	add.d	$a0, $s3, $s1
	addi.d	$a0, $a0, 4
	st.d	$s3, $fp, 56
	st.d	$a0, $fp, 64
	alsl.d	$a0, $s5, $s3, 2
	st.d	$a0, $fp, 72
	b	.LBB4_8
.LBB4_35:                               # %._crit_edge
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
.LBB4_36:
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN10ExportGold9sortZonesEv, .Lfunc_end4-_ZN10ExportGold9sortZonesEv
	.cfi_endproc
                                        # -- End function
	.globl	_ZN10ExportGold12writeGeoFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEid # -- Begin function _ZN10ExportGold12writeGeoFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEid
	.p2align	5
	.type	_ZN10ExportGold12writeGeoFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEid,@function
_ZN10ExportGold12writeGeoFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEid: # @_ZN10ExportGold12writeGeoFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEid
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
# %bb.0:
	addi.d	$sp, $sp, -944
	.cfi_def_cfa_offset 944
	st.d	$ra, $sp, 936                   # 8-byte Folded Spill
	st.d	$fp, $sp, 928                   # 8-byte Folded Spill
	st.d	$s0, $sp, 920                   # 8-byte Folded Spill
	st.d	$s1, $sp, 912                   # 8-byte Folded Spill
	st.d	$s2, $sp, 904                   # 8-byte Folded Spill
	st.d	$s3, $sp, 896                   # 8-byte Folded Spill
	st.d	$s4, $sp, 888                   # 8-byte Folded Spill
	st.d	$s5, $sp, 880                   # 8-byte Folded Spill
	st.d	$s6, $sp, 872                   # 8-byte Folded Spill
	st.d	$s7, $sp, 864                   # 8-byte Folded Spill
	st.d	$s8, $sp, 856                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 848                  # 8-byte Folded Spill
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
	fmov.d	$fs0, $fa0
	move	$fp, $a2
	move	$s2, $a1
	move	$s6, $a0
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	st.d	$a0, $sp, 216                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB5_73
# %bb.1:
	ld.d	$s0, $s2, 0
	ld.d	$s2, $s2, 8
	addi.d	$s3, $sp, 320
	st.d	$s3, $sp, 304
	st.d	$zero, $sp, 312
	st.b	$zero, $sp, 320
	addi.d	$a1, $s2, 4
.Ltmp162:
	addi.d	$a0, $sp, 304
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp163:
# %bb.2:
	ld.d	$a0, $sp, 312
	addi.w	$s1, $zero, -1
	lu52i.d	$a1, $s1, 1023
	sub.d	$a0, $a1, $a0
	bltu	$a0, $s2, .LBB5_499
# %bb.3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
.Ltmp164:
	addi.d	$a0, $sp, 304
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp165:
# %bb.4:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
	ld.d	$a0, $sp, 312
	srli.d	$a0, $a0, 2
	lu52i.d	$a1, $s1, 255
	beq	$a0, $a1, .LBB5_499
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
.Ltmp166:
	pcalau12i	$a0, %pc_hi20(.L.str.12)
	addi.d	$a1, $a0, %pc_lo12(.L.str.12)
	addi.d	$a0, $sp, 304
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp167:
# %bb.6:                                # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
	ld.d	$a1, $sp, 304
	addi.d	$a0, $sp, 344
.Ltmp168:
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp169:
# %bb.7:                                # %.noexc
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	addi.d	$a2, $sp, 336
	add.d	$a0, $a2, $a0
	beqz	$a1, .LBB5_9
# %bb.8:
	move	$a1, $zero
	b	.LBB5_10
.LBB5_9:
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 4
.LBB5_10:
.Ltmp170:
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.Ltmp171:
# %bb.11:                               # %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 336
	add.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 32
	bnez	$a0, .LBB5_505
# %bb.12:
	ld.d	$a0, $sp, 304
	beq	$a0, $s3, .LBB5_14
# %bb.13:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i240
	ld.d	$a1, $sp, 320
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_14:
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB5_73
# %bb.15:
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	addi.d	$s0, $sp, 336
	add.d	$a0, $s0, $a0
	ld.wu	$a1, $a0, 24
	addi.w	$a2, $zero, -261
	lu32i.d	$a2, 0
	and	$a1, $a1, $a2
	addi.d	$a1, $a1, 256
	st.w	$a1, $a0, 24
.Ltmp181:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a1, $a0, %pc_lo12(.L.str.20)
	addi.d	$a0, $sp, 336
	ori	$a2, $zero, 8
	ori	$s1, $zero, 8
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp182:
# %bb.16:
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	st.d	$s1, $a0, 16
.Ltmp183:
	addi.d	$a0, $sp, 336
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp184:
# %bb.17:
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB5_497
# %bb.18:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB5_20
# %bb.19:
	ld.bu	$a0, $s0, 67
	b	.LBB5_22
.LBB5_20:
.Ltmp185:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp186:
# %bb.21:                               # %.noexc546
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp187:
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp188:
.LBB5_22:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp189:
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp190:
# %bb.23:                               # %.noexc548
.Ltmp191:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp192:
# %bb.24:
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	addi.d	$fp, $sp, 336
	add.d	$a0, $fp, $a0
	ori	$a1, $zero, 8
	st.d	$a1, $a0, 8
.Ltmp193:
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a1, $a0, %pc_lo12(.L.str.21)
	addi.d	$a0, $sp, 336
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp194:
# %bb.25:
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ori	$a1, $zero, 15
	st.d	$a1, $a0, 16
.Ltmp195:
	addi.d	$a0, $sp, 336
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp196:
# %bb.26:                               # %_ZNSolsEd.exit
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB5_497
# %bb.27:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i551
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB5_29
# %bb.28:
	ld.bu	$a0, $s0, 67
	b	.LBB5_31
.LBB5_29:
.Ltmp197:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp198:
# %bb.30:                               # %.noexc556
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp199:
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp200:
.LBB5_31:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i553
.Ltmp201:
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp202:
# %bb.32:                               # %.noexc558
.Ltmp203:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp204:
# %bb.33:                               # %_ZNSolsEPFRSoS_E.exit254
.Ltmp205:
	pcalau12i	$a0, %pc_hi20(.L.str.22)
	addi.d	$a1, $a0, %pc_lo12(.L.str.22)
	addi.d	$a0, $sp, 336
	ori	$a2, $zero, 14
	addi.d	$fp, $sp, 336
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp206:
# %bb.34:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit256
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB5_497
# %bb.35:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i562
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB5_37
# %bb.36:
	ld.bu	$a0, $fp, 67
	b	.LBB5_39
.LBB5_37:
.Ltmp207:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp208:
# %bb.38:                               # %.noexc567
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp209:
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp210:
.LBB5_39:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i564
.Ltmp211:
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp212:
# %bb.40:                               # %.noexc569
.Ltmp213:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp214:
# %bb.41:                               # %_ZNSolsEPFRSoS_E.exit258
.Ltmp215:
	pcalau12i	$a0, %pc_hi20(.L.str.23)
	addi.d	$a1, $a0, %pc_lo12(.L.str.23)
	addi.d	$a0, $sp, 336
	ori	$a2, $zero, 16
	addi.d	$fp, $sp, 336
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp216:
# %bb.42:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit260
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB5_497
# %bb.43:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i573
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB5_45
# %bb.44:
	ld.bu	$a0, $fp, 67
	b	.LBB5_47
.LBB5_45:
.Ltmp217:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp218:
# %bb.46:                               # %.noexc578
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp219:
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp220:
.LBB5_47:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i575
.Ltmp221:
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp222:
# %bb.48:                               # %.noexc580
.Ltmp223:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp224:
# %bb.49:                               # %_ZNSolsEPFRSoS_E.exit262
.Ltmp225:
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	addi.d	$a0, $sp, 336
	ori	$a2, $zero, 4
	addi.d	$fp, $sp, 336
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp226:
# %bb.50:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit264
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB5_497
# %bb.51:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i584
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB5_53
# %bb.52:
	ld.bu	$a0, $fp, 67
	b	.LBB5_55
.LBB5_53:
.Ltmp227:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp228:
# %bb.54:                               # %.noexc589
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp229:
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp230:
.LBB5_55:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i586
.Ltmp231:
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp232:
# %bb.56:                               # %.noexc591
.Ltmp233:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp234:
# %bb.57:
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 336
	add.d	$a0, $a1, $a0
	ori	$a1, $zero, 10
	st.d	$a1, $a0, 16
.Ltmp235:
	addi.d	$a0, $sp, 336
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp236:
# %bb.58:
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB5_497
# %bb.59:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i595
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB5_61
# %bb.60:
	ld.bu	$a0, $s0, 67
	b	.LBB5_63
.LBB5_61:
.Ltmp237:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp238:
# %bb.62:                               # %.noexc600
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp239:
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp240:
.LBB5_63:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i597
.Ltmp241:
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp242:
# %bb.64:                               # %.noexc602
.Ltmp243:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp244:
# %bb.65:                               # %_ZNSolsEPFRSoS_E.exit269
.Ltmp245:
	pcalau12i	$a0, %pc_hi20(.L.str.25)
	addi.d	$a1, $a0, %pc_lo12(.L.str.25)
	addi.d	$a0, $sp, 336
	ori	$a2, $zero, 8
	addi.d	$fp, $sp, 336
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp246:
# %bb.66:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit271
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB5_497
# %bb.67:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i606
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB5_69
# %bb.68:
	ld.bu	$a0, $fp, 67
	b	.LBB5_71
.LBB5_69:
.Ltmp247:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp248:
# %bb.70:                               # %.noexc611
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp249:
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp250:
.LBB5_71:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i608
.Ltmp251:
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp252:
# %bb.72:                               # %.noexc613
.Ltmp253:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp254:
.LBB5_73:                               # %_ZNSolsEPFRSoS_E.exit273
	ld.d	$a0, $s6, 0
	ld.w	$fp, $a0, 60
	ld.d	$s0, $a0, 240
	st.w	$fp, $sp, 304
.Ltmp255:
	addi.d	$a0, $sp, 304
	pcaddu18i	$ra, %call36(_ZN8Parallel9globalSumERi)
	jirl	$ra, $ra, 0
.Ltmp256:
# %bb.74:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel5numpeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel5numpeE)
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	st.d	$a1, $sp, 288                   # 8-byte Folded Spill
	ld.w	$a1, $a1, 0
	sltui	$a0, $a0, 1
	maskeqz	$s1, $a1, $a0
	addi.w	$a0, $zero, -1
	st.d	$a0, $sp, 208                   # 8-byte Folded Spill
	bge	$a0, $s1, .LBB5_477
# %bb.75:                               # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
	beqz	$s1, .LBB5_79
# %bb.76:
	slli.d	$s3, $s1, 2
.Ltmp258:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp259:
# %bb.77:                               # %.noexc275
	move	$s5, $a0
	alsl.d	$s4, $s1, $a0, 2
	st.w	$zero, $a0, 0
	ori	$a0, $zero, 1
	addi.d	$s2, $s5, 4
	st.d	$s4, $sp, 104                   # 8-byte Folded Spill
	beq	$s1, $a0, .LBB5_80
# %bb.78:                               # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
	addi.d	$a2, $s3, -4
	move	$a0, $s2
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$s2, $s4
	b	.LBB5_80
.LBB5_79:
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	move	$s5, $zero
	move	$s2, $zero
.LBB5_80:                               # %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
.Ltmp260:
	move	$a0, $fp
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZN8Parallel6gatherEiPi)
	jirl	$ra, $ra, 0
.Ltmp261:
# %bb.81:
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	sltui	$a0, $a0, 1
	addi.w	$a1, $a1, 1
	ori	$a2, $zero, 1
	masknez	$a2, $a2, $a0
	maskeqz	$a0, $a1, $a0
	or	$s1, $a0, $a2
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	bge	$a0, $s1, .LBB5_479
# %bb.82:                               # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i276
	beqz	$s1, .LBB5_87
# %bb.83:
	slli.d	$s3, $s1, 2
.Ltmp263:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp264:
# %bb.84:                               # %.noexc282
	move	$a4, $a0
	alsl.d	$a0, $s1, $a0, 2
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.w	$zero, $a4, 0
	beq	$s1, $a0, .LBB5_86
# %bb.85:                               # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i278
	addi.d	$a0, $a4, 4
	addi.d	$a2, $s3, -4
	move	$a1, $zero
	move	$s1, $a4
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a4, $s1
.LBB5_86:                               # %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit283
	bne	$s5, $s2, .LBB5_88
	b	.LBB5_91
.LBB5_87:
	st.d	$zero, $sp, 88                  # 8-byte Folded Spill
	move	$a4, $zero
	beq	$s5, $s2, .LBB5_91
.LBB5_88:
	ld.w	$a0, $s5, 0
	addi.d	$a1, $s5, 4
	st.w	$a0, $a4, 4
	beq	$a1, $s2, .LBB5_91
# %bb.89:                               # %.lr.ph.i.preheader
	addi.d	$a2, $a4, 8
	.p2align	4, , 16
.LBB5_90:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a1, 0
	add.d	$a0, $a3, $a0
	st.w	$a0, $a2, 0
	addi.d	$a1, $a1, 4
	addi.d	$a2, $a2, 4
	bne	$a1, $s2, .LBB5_90
.LBB5_91:                               # %_ZSt11partial_sumIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET0_T_S8_S7_.exit
.Ltmp265:
	addi.d	$a1, $sp, 300
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	move	$a0, $a4
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZN8Parallel7scatterEPKiRi)
	jirl	$ra, $ra, 0
.Ltmp266:
# %bb.92:
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.w	$a1, $sp, 304
	sltui	$a0, $a0, 1
	maskeqz	$s1, $a1, $a0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	bge	$a0, $s1, .LBB5_481
# %bb.93:                               # %_ZNSt6vectorI7double2SaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
	beqz	$s1, .LBB5_96
# %bb.94:                               # %.lr.ph.preheader.i.i.i.i.i
	slli.d	$s2, $s1, 4
.Ltmp268:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp269:
# %bb.95:                               # %.noexc288
	move	$s7, $a0
	alsl.d	$a0, $s1, $a0, 4
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	move	$a0, $s7
	move	$a1, $zero
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB5_97
.LBB5_96:
	move	$s7, $zero
	st.d	$zero, $sp, 80                  # 8-byte Folded Spill
.LBB5_97:                               # %_ZNSt6vectorI7double2SaIS0_EEC2EmRKS1_.exit
.Ltmp270:
	move	$a0, $s0
	move	$a1, $fp
	move	$a2, $s7
	ld.d	$a3, $sp, 144                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN8Parallel7gathervI7double2EEvPKT_iPS2_PKi)
	jirl	$ra, $ra, 0
.Ltmp271:
# %bb.98:
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	st.d	$s7, $sp, 176                   # 8-byte Folded Spill
	beqz	$a0, .LBB5_103
.LBB5_99:                               # %.loopexit1096
	ld.d	$a0, $s6, 0
	ld.d	$a1, $a0, 232
	st.d	$a1, $sp, 240                   # 8-byte Folded Spill
	ld.d	$s7, $a0, 88
	ld.d	$fp, $s6, 16
	ld.d	$s0, $s6, 8
	ld.d	$s3, $s6, 40
	ld.d	$s5, $s6, 32
	ld.d	$s2, $s6, 64
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$s4, $s6, 56
	bnez	$a0, .LBB5_121
# %bb.100:
	ld.d	$a0, $s6, 112
	ld.d	$a2, $s6, 104
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	sub.d	$a3, $a0, $a2
	srai.d	$a3, $a3, 2
	bgeu	$a3, $a1, .LBB5_107
# %bb.101:
	addi.d	$a0, $s6, 104
	sub.d	$a1, $a1, $a3
.Ltmp325:
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp326:
# %bb.102:                              # %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	b	.LBB5_110
.LBB5_103:
.Ltmp272:
	pcalau12i	$a0, %pc_hi20(.L.str.26)
	addi.d	$a1, $a0, %pc_lo12(.L.str.26)
	addi.d	$a0, $sp, 336
	ori	$a2, $zero, 11
	addi.d	$fp, $sp, 336
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp273:
# %bb.104:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit290
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB5_501
# %bb.105:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i617
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB5_410
# %bb.106:
	ld.bu	$a0, $fp, 67
	b	.LBB5_412
.LBB5_107:
	bgeu	$a1, $a3, .LBB5_110
# %bb.108:
	alsl.d	$a2, $a1, $a2, 2
	beq	$a0, $a2, .LBB5_110
# %bb.109:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
	st.d	$a2, $s6, 112
.LBB5_110:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit
	ld.d	$a0, $s6, 136
	ld.d	$a2, $s6, 128
	sub.d	$a3, $a0, $a2
	srai.d	$a3, $a3, 2
	bgeu	$a3, $a1, .LBB5_113
# %bb.111:
	addi.d	$a0, $s6, 128
	sub.d	$a1, $a1, $a3
.Ltmp327:
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp328:
# %bb.112:                              # %._ZNSt6vectorIiSaIiEE6resizeEm.exit316_crit_edge
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	b	.LBB5_116
.LBB5_113:
	bgeu	$a1, $a3, .LBB5_116
# %bb.114:
	alsl.d	$a2, $a1, $a2, 2
	beq	$a0, $a2, .LBB5_116
# %bb.115:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i314
	st.d	$a2, $s6, 136
.LBB5_116:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit316
	ld.d	$a0, $s6, 160
	ld.d	$a2, $s6, 152
	sub.d	$a3, $a0, $a2
	srai.d	$a3, $a3, 2
	bgeu	$a3, $a1, .LBB5_118
# %bb.117:
	addi.d	$a0, $s6, 152
	sub.d	$a1, $a1, $a3
.Ltmp329:
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE17_M_default_appendEm)
	jirl	$ra, $ra, 0
.Ltmp330:
	b	.LBB5_121
.LBB5_118:
	bgeu	$a1, $a3, .LBB5_121
# %bb.119:
	alsl.d	$a1, $a1, $a2, 2
	beq	$a0, $a1, .LBB5_121
# %bb.120:                              # %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i318
	st.d	$a1, $s6, 160
.LBB5_121:                              # %_ZNSt6vectorIiSaIiEE6resizeEm.exit320
	ld.d	$a1, $s6, 104
	sub.d	$a0, $fp, $s0
	srli.d	$fp, $a0, 2
.Ltmp331:
	addi.w	$s0, $fp, 0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8Parallel6gatherEiPi)
	jirl	$ra, $ra, 0
.Ltmp332:
# %bb.122:
	ld.d	$a1, $s6, 128
	sub.d	$a0, $s3, $s5
	srli.d	$a0, $a0, 2
.Ltmp333:
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	addi.w	$s5, $a0, 0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZN8Parallel6gatherEiPi)
	jirl	$ra, $ra, 0
.Ltmp334:
# %bb.123:
	ld.d	$a1, $s6, 152
	sub.d	$s4, $s2, $s4
	srli.d	$s3, $s4, 2
.Ltmp335:
	addi.w	$s1, $s3, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8Parallel6gatherEiPi)
	jirl	$ra, $ra, 0
.Ltmp336:
# %bb.124:
	ld.d	$s2, $s6, 104
	ld.d	$a0, $s6, 112
	beq	$s2, $a0, .LBB5_127
# %bb.125:                              # %.lr.ph.i321.preheader
	sub.d	$a1, $a0, $s2
	addi.d	$a1, $a1, -4
	ori	$a2, $zero, 28
	bgeu	$a1, $a2, .LBB5_128
# %bb.126:
	move	$s8, $zero
	move	$a1, $s2
	b	.LBB5_131
.LBB5_127:
	move	$s8, $zero
	b	.LBB5_132
.LBB5_128:                              # %vector.ph
	srli.d	$a1, $a1, 2
	addi.d	$a2, $a1, 1
	bstrpick.d	$a1, $a2, 62, 3
	slli.d	$a3, $a1, 3
	slli.d	$a1, $a1, 5
	add.d	$a1, $s2, $a1
	vrepli.b	$vr0, 0
	addi.d	$a4, $s2, 16
	move	$a5, $a3
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB5_129:                              # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB5_129
# %bb.130:                              # %middle.block
	vadd.w	$vr0, $vr1, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$s8, $vr0, 0
	beq	$a2, $a3, .LBB5_132
	.p2align	4, , 16
.LBB5_131:                              # %.lr.ph.i321
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	add.w	$s8, $a2, $s8
	bne	$a1, $a0, .LBB5_131
.LBB5_132:                              # %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit
	ld.d	$a5, $s6, 128
	ld.d	$a0, $s6, 136
	st.w	$s8, $s6, 176
	beq	$a5, $a0, .LBB5_135
# %bb.133:                              # %.lr.ph.i326.preheader
	sub.d	$a1, $a0, $a5
	addi.d	$a1, $a1, -4
	ori	$a2, $zero, 28
	bgeu	$a1, $a2, .LBB5_136
# %bb.134:
	move	$a4, $zero
	move	$a1, $a5
	b	.LBB5_139
.LBB5_135:
	move	$a4, $zero
	b	.LBB5_140
.LBB5_136:                              # %vector.ph1383
	srli.d	$a1, $a1, 2
	addi.d	$a2, $a1, 1
	bstrpick.d	$a1, $a2, 62, 3
	slli.d	$a3, $a1, 3
	slli.d	$a1, $a1, 5
	add.d	$a1, $a5, $a1
	vrepli.b	$vr0, 0
	addi.d	$a4, $a5, 16
	move	$a5, $a3
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB5_137:                              # %vector.body1386
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB5_137
# %bb.138:                              # %middle.block1395
	vadd.w	$vr0, $vr1, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a4, $vr0, 0
	beq	$a2, $a3, .LBB5_140
	.p2align	4, , 16
.LBB5_139:                              # %.lr.ph.i326
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	add.d	$a4, $a2, $a4
	bne	$a1, $a0, .LBB5_139
.LBB5_140:                              # %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit332
	ld.d	$a5, $s6, 152
	ld.d	$a0, $s6, 160
	st.w	$a4, $s6, 180
	st.d	$s1, $sp, 136                   # 8-byte Folded Spill
	beq	$a5, $a0, .LBB5_143
# %bb.141:                              # %.lr.ph.i335.preheader
	sub.d	$a1, $a0, $a5
	addi.d	$a1, $a1, -4
	ori	$a2, $zero, 28
	bgeu	$a1, $a2, .LBB5_144
# %bb.142:
	move	$a4, $zero
	move	$a1, $a5
	b	.LBB5_147
.LBB5_143:
	move	$a4, $zero
	b	.LBB5_148
.LBB5_144:                              # %vector.ph1402
	srli.d	$a1, $a1, 2
	addi.d	$a2, $a1, 1
	bstrpick.d	$a1, $a2, 62, 3
	slli.d	$a3, $a1, 3
	slli.d	$a1, $a1, 5
	add.d	$a1, $a5, $a1
	vrepli.b	$vr0, 0
	addi.d	$a4, $a5, 16
	move	$a5, $a3
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB5_145:                              # %vector.body1405
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a4, -16
	vld	$vr3, $a4, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB5_145
# %bb.146:                              # %middle.block1414
	vadd.w	$vr0, $vr1, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$a4, $vr0, 0
	beq	$a2, $a3, .LBB5_148
	.p2align	4, , 16
.LBB5_147:                              # %.lr.ph.i335
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	addi.d	$a1, $a1, 4
	add.d	$a4, $a2, $a4
	bne	$a1, $a0, .LBB5_147
.LBB5_148:                              # %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit341
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 0
	sltui	$a0, $a0, 1
	maskeqz	$s1, $a1, $a0
	st.w	$a4, $s6, 184
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	bge	$a0, $s1, .LBB5_483
# %bb.149:                              # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i342
	st.d	$s4, $sp, 248                   # 8-byte Folded Spill
	st.d	$s3, $sp, 232                   # 8-byte Folded Spill
	st.d	$s5, $sp, 272                   # 8-byte Folded Spill
	beqz	$s1, .LBB5_153
# %bb.150:
	slli.d	$s4, $s1, 2
.Ltmp338:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp339:
# %bb.151:                              # %.noexc348
	alsl.d	$s5, $s1, $a0, 2
	st.w	$zero, $a0, 0
	ori	$a1, $zero, 1
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 4
	bne	$s1, $a1, .LBB5_187
# %bb.152:
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	blt	$a0, $s0, .LBB5_154
	b	.LBB5_188
.LBB5_153:
	move	$s5, $zero
	st.d	$zero, $sp, 200                 # 8-byte Folded Spill
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	st.d	$s5, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	bge	$a0, $s0, .LBB5_188
.LBB5_154:                              # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i350
	st.d	$s6, $sp, 264                   # 8-byte Folded Spill
	alsl.w	$s4, $fp, $fp, 1
	beqz	$s0, .LBB5_163
# %bb.155:
	slli.d	$s6, $s4, 2
.Ltmp340:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp341:
# %bb.156:                              # %.noexc356
	alsl.d	$a1, $s4, $a0, 2
	st.d	$a1, $sp, 64                    # 8-byte Folded Spill
	st.w	$zero, $a0, 0
	st.d	$a0, $sp, 160                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s6, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	bge	$a0, $s8, .LBB5_164
.LBB5_157:                              # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i358
	beqz	$s8, .LBB5_166
# %bb.158:
	slli.d	$s6, $s8, 2
.Ltmp342:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp343:
# %bb.159:                              # %.noexc364
	move	$s1, $a0
	move	$s5, $s7
	ori	$a0, $zero, 1
	st.w	$zero, $s1, 0
	beq	$s8, $a0, .LBB5_161
# %bb.160:                              # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i360
	addi.d	$a0, $s1, 4
	addi.d	$a2, $s6, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB5_161:
	move	$s7, $s1
	alsl.d	$a0, $s8, $s1, 2
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	alsl.w	$s1, $s8, $s8, 1
	slli.d	$s6, $s1, 2
.Ltmp344:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp345:
# %bb.162:                              # %.noexc372
	alsl.d	$a1, $s1, $a0, 2
	st.d	$a1, $sp, 72                    # 8-byte Folded Spill
	st.w	$zero, $a0, 0
	st.d	$a0, $sp, 168                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s6, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a2, $s7
	move	$s7, $s5
	b	.LBB5_167
.LBB5_163:
	st.d	$zero, $sp, 160                 # 8-byte Folded Spill
	st.d	$zero, $sp, 64                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	blt	$a0, $s8, .LBB5_157
.LBB5_164:
.Ltmp586:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp587:
# %bb.165:                              # %.noexc363
.LBB5_166:
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	move	$a2, $zero
	st.d	$zero, $sp, 168                 # 8-byte Folded Spill
	st.d	$zero, $sp, 72                  # 8-byte Folded Spill
.LBB5_167:                              # %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit373
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
.Ltmp347:
	move	$a1, $s0
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	move	$a3, $s2
	pcaddu18i	$ra, %call36(_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi)
	jirl	$ra, $ra, 0
.Ltmp348:
# %bb.168:
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	bnez	$a1, .LBB5_177
# %bb.169:                              # %.preheader1093
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.w	$a6, $a1, 0
	ori	$a1, $zero, 1
	blt	$a6, $a1, .LBB5_177
# %bb.170:                              # %.lr.ph1142
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 104
	ori	$a3, $zero, 8
	move	$a2, $zero
	bltu	$a6, $a3, .LBB5_175
# %bb.171:                              # %.lr.ph1142
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	sub.d	$a3, $a3, $a1
	ori	$a4, $zero, 32
	bltu	$a3, $a4, .LBB5_175
# %bb.172:                              # %vector.ph1422
	bstrpick.d	$a2, $a6, 30, 3
	slli.d	$a2, $a2, 3
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	addi.d	$a3, $a3, 16
	addi.d	$a4, $a1, 16
	vrepli.w	$vr0, 3
	move	$a5, $a2
	.p2align	4, , 16
.LBB5_173:                              # %vector.body1425
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr1, $a4, -16
	vld	$vr2, $a4, 0
	vmul.w	$vr1, $vr1, $vr0
	vmul.w	$vr2, $vr2, $vr0
	vst	$vr1, $a3, -16
	vst	$vr2, $a3, 0
	addi.d	$a5, $a5, -8
	addi.d	$a3, $a3, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB5_173
# %bb.174:                              # %middle.block1430
	beq	$a2, $a6, .LBB5_177
.LBB5_175:                              # %scalar.ph1420.preheader
	alsl.d	$a1, $a2, $a1, 2
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	alsl.d	$a3, $a2, $a3, 2
	sub.d	$a4, $a6, $a2
	.p2align	4, , 16
.LBB5_176:                              # %scalar.ph1420
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	alsl.d	$a2, $a2, $a2, 1
	st.w	$a2, $a3, 0
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a4, -1
	addi.d	$a3, $a3, 4
	bnez	$a4, .LBB5_176
.LBB5_177:                              # %.loopexit1094
	addi.d	$s6, $s7, 4
	addi.d	$s8, $s7, 8
	beqz	$s0, .LBB5_180
# %bb.178:                              # %.lr.ph1145
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a7, $a1, 8
	ld.d	$a1, $a1, 80
	ld.w	$a2, $sp, 300
	bstrpick.d	$a3, $fp, 30, 0
	addi.d	$a4, $a0, 8
	.p2align	4, , 16
.LBB5_179:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a5, $a7, 0
	slli.d	$a5, $a5, 2
	ldx.w	$a5, $a1, $a5
	slli.d	$a5, $a5, 2
	ldx.w	$a6, $s7, $a5
	add.d	$a6, $a2, $a6
	st.w	$a6, $a4, -8
	ldx.w	$a6, $s6, $a5
	add.d	$a6, $a2, $a6
	st.w	$a6, $a4, -4
	ldx.w	$a5, $s8, $a5
	add.d	$a5, $a2, $a5
	st.w	$a5, $a4, 0
	addi.d	$a4, $a4, 12
	addi.d	$a3, $a3, -1
	addi.d	$a7, $a7, 4
	bnez	$a3, .LBB5_179
.LBB5_180:                              # %._crit_edge
.Ltmp349:
	move	$a1, $s4
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi)
	jirl	$ra, $ra, 0
.Ltmp350:
# %bb.181:
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	st.d	$a0, $sp, 200                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB5_226
# %bb.182:
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 176
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_226
# %bb.183:
.Ltmp351:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	addi.d	$a0, $sp, 336
	ori	$a2, $zero, 5
	addi.d	$fp, $sp, 336
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp352:
# %bb.184:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit375
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB5_485
# %bb.185:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i672
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB5_190
# %bb.186:
	ld.bu	$a0, $s0, 67
	b	.LBB5_192
.LBB5_187:                              # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i344
	addi.d	$a2, $s4, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	st.d	$s5, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 280                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	blt	$a0, $s0, .LBB5_154
.LBB5_188:
.Ltmp589:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp590:
# %bb.189:                              # %.noexc355
.LBB5_190:
.Ltmp353:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp354:
# %bb.191:                              # %.noexc677
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp355:
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp356:
.LBB5_192:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i674
.Ltmp357:
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp358:
# %bb.193:                              # %.noexc679
.Ltmp359:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp360:
# %bb.194:
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	addi.d	$a2, $sp, 336
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 176
	add.d	$a0, $a2, $a0
	ori	$a2, $zero, 10
	st.d	$a2, $a0, 16
.Ltmp361:
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp362:
# %bb.195:
	move	$s0, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB5_485
# %bb.196:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i683
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB5_198
# %bb.197:
	ld.bu	$a0, $s2, 67
	b	.LBB5_200
.LBB5_198:
.Ltmp363:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp364:
# %bb.199:                              # %.noexc688
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp365:
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp366:
.LBB5_200:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i685
.Ltmp367:
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp368:
# %bb.201:                              # %.noexc690
.Ltmp369:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp370:
# %bb.202:                              # %_ZNSolsEPFRSoS_E.exit380.preheader
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 176
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_226
# %bb.203:                              # %.lr.ph1149.preheader
	move	$s1, $zero
	addi.d	$fp, $sp, 352
	ori	$s3, $zero, 10
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_204:                              # %.lr.ph1149
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	ld.w	$a1, $s4, 0
	stx.d	$s3, $fp, $a0
	addi.w	$a1, $a1, 1
.Ltmp371:
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp372:
# %bb.205:                              #   in Loop: Header=BB5_204 Depth=1
	move	$s0, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB5_457
# %bb.206:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i694
                                        #   in Loop: Header=BB5_204 Depth=1
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB5_208
# %bb.207:                              #   in Loop: Header=BB5_204 Depth=1
	ld.bu	$a0, $s2, 67
	b	.LBB5_210
	.p2align	4, , 16
.LBB5_208:                              #   in Loop: Header=BB5_204 Depth=1
.Ltmp373:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp374:
# %bb.209:                              # %.noexc699
                                        #   in Loop: Header=BB5_204 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp375:
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp376:
.LBB5_210:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i696
                                        #   in Loop: Header=BB5_204 Depth=1
.Ltmp377:
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp378:
# %bb.211:                              # %.noexc701
                                        #   in Loop: Header=BB5_204 Depth=1
.Ltmp379:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp380:
# %bb.212:                              # %_ZNSolsEPFRSoS_E.exit383
                                        #   in Loop: Header=BB5_204 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 176
	addi.d	$s1, $s1, 1
	addi.d	$s4, $s4, 4
	blt	$s1, $a0, .LBB5_204
# %bb.213:                              # %.preheader1081
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_226
# %bb.214:                              # %.preheader1080.lr.ph
	move	$s2, $zero
	addi.d	$s3, $sp, 576
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	addi.d	$s4, $a0, 8
	ori	$s5, $zero, 10
	.p2align	4, , 16
.LBB5_215:                              # %.preheader1080
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	stx.d	$s5, $fp, $a0
	ld.w	$a0, $s4, -8
	addi.w	$a1, $a0, 1
.Ltmp382:
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp383:
# %bb.216:                              #   in Loop: Header=BB5_215 Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	stx.d	$s5, $fp, $a0
	ld.w	$a0, $s4, -4
	addi.w	$a1, $a0, 1
.Ltmp384:
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp385:
# %bb.217:                              #   in Loop: Header=BB5_215 Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	ld.w	$a1, $s4, 0
	stx.d	$s5, $fp, $a0
	addi.w	$a1, $a1, 1
.Ltmp386:
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp387:
# %bb.218:                              #   in Loop: Header=BB5_215 Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	ldx.d	$s0, $s3, $a0
	beqz	$s0, .LBB5_465
# %bb.219:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i705
                                        #   in Loop: Header=BB5_215 Depth=1
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB5_221
# %bb.220:                              #   in Loop: Header=BB5_215 Depth=1
	ld.bu	$a0, $s0, 67
	b	.LBB5_223
	.p2align	4, , 16
.LBB5_221:                              #   in Loop: Header=BB5_215 Depth=1
.Ltmp389:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp390:
# %bb.222:                              # %.noexc710
                                        #   in Loop: Header=BB5_215 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp391:
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp392:
.LBB5_223:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i707
                                        #   in Loop: Header=BB5_215 Depth=1
.Ltmp393:
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp394:
# %bb.224:                              # %.noexc712
                                        #   in Loop: Header=BB5_215 Depth=1
.Ltmp395:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp396:
# %bb.225:                              # %_ZNSolsEPFRSoS_E.exit385
                                        #   in Loop: Header=BB5_215 Depth=1
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 176
	addi.d	$s2, $s2, 1
	addi.d	$s4, $s4, 12
	blt	$s2, $a0, .LBB5_215
.LBB5_226:                              # %.loopexit1082
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	bge	$a0, $s1, .LBB5_487
# %bb.227:                              # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i387
	ld.d	$s4, $sp, 256                   # 8-byte Folded Reload
	slli.w	$s0, $s4, 2
	beqz	$s1, .LBB5_236
# %bb.228:
	slli.d	$s2, $s0, 2
.Ltmp398:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp399:
# %bb.229:                              # %.noexc393
	alsl.d	$a1, $s0, $a0, 2
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	st.w	$zero, $a0, 0
	st.d	$a0, $sp, 152                   # 8-byte Folded Spill
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s2, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.w	$fp, $a0, 180
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	bge	$a0, $fp, .LBB5_237
.LBB5_230:                              # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i395
	beqz	$fp, .LBB5_239
# %bb.231:
	slli.d	$s2, $fp, 2
.Ltmp400:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp401:
# %bb.232:                              # %.noexc401
	move	$s1, $a0
	ori	$a0, $zero, 1
	st.w	$zero, $s1, 0
	beq	$fp, $a0, .LBB5_234
# %bb.233:                              # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i397
	addi.d	$a0, $s1, 4
	addi.d	$a2, $s2, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB5_234:
	move	$s5, $s1
	alsl.d	$a0, $fp, $s1, 2
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	addi.w	$fp, $s2, 0
	slli.d	$s2, $fp, 2
.Ltmp402:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp403:
# %bb.235:                              # %.noexc409
	move	$s1, $a0
	alsl.d	$a0, $fp, $a0, 2
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	st.w	$zero, $s1, 0
	addi.d	$a0, $s1, 4
	addi.d	$a2, $s2, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a2, $s5
	move	$s2, $s1
	ld.d	$s1, $sp, 272                   # 8-byte Folded Reload
	b	.LBB5_240
.LBB5_236:
	st.d	$zero, $sp, 152                 # 8-byte Folded Spill
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	ld.d	$a0, $sp, 264                   # 8-byte Folded Reload
	ld.w	$fp, $a0, 180
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	blt	$a0, $fp, .LBB5_230
.LBB5_237:
.Ltmp571:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp572:
# %bb.238:                              # %.noexc400
.LBB5_239:
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	move	$a2, $zero
	move	$s2, $zero
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
.LBB5_240:                              # %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit410
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 32
	ld.d	$a3, $a1, 128
.Ltmp405:
	move	$a1, $s1
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi)
	jirl	$ra, $ra, 0
.Ltmp406:
# %bb.241:
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a1, $a0, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 200                   # 8-byte Folded Reload
	bnez	$a1, .LBB5_250
# %bb.242:                              # %.preheader1078
	ld.d	$a1, $sp, 288                   # 8-byte Folded Reload
	ld.w	$a6, $a1, 0
	ori	$a1, $zero, 1
	blt	$a6, $a1, .LBB5_250
# %bb.243:                              # %.lr.ph1157
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a1, $a1, 128
	ori	$a4, $zero, 8
	move	$a2, $zero
	bltu	$a6, $a4, .LBB5_248
# %bb.244:                              # %.lr.ph1157
	sub.d	$a5, $a3, $a1
	ori	$a4, $zero, 32
	bltu	$a5, $a4, .LBB5_248
# %bb.245:                              # %vector.ph1437
	bstrpick.d	$a2, $a6, 30, 3
	slli.d	$a2, $a2, 3
	addi.d	$a7, $a3, 16
	addi.d	$a4, $a1, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB5_246:                              # %vector.body1440
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vslli.w	$vr0, $vr0, 2
	vslli.w	$vr1, $vr1, 2
	vst	$vr0, $a7, -16
	vst	$vr1, $a7, 0
	addi.d	$a5, $a5, -8
	addi.d	$a7, $a7, 32
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB5_246
# %bb.247:                              # %middle.block1445
	beq	$a2, $a6, .LBB5_250
.LBB5_248:                              # %scalar.ph1435.preheader
	alsl.d	$a1, $a2, $a1, 2
	alsl.d	$a5, $a2, $a3, 2
	sub.d	$a4, $a6, $a2
	.p2align	4, , 16
.LBB5_249:                              # %scalar.ph1435
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a1, 0
	slli.d	$a2, $a2, 2
	st.w	$a2, $a5, 0
	addi.d	$a1, $a1, 4
	addi.d	$a4, $a4, -1
	addi.d	$a5, $a5, 4
	bnez	$a4, .LBB5_249
.LBB5_250:                              # %.loopexit1079
	beqz	$s1, .LBB5_253
# %bb.251:                              # %.lr.ph1161
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.d	$t0, $a1, 32
	ld.d	$a1, $a1, 80
	ld.w	$a2, $sp, 300
	bstrpick.d	$t1, $s4, 30, 0
	addi.d	$a4, $a0, 8
	addi.d	$a5, $s7, 12
	.p2align	4, , 16
.LBB5_252:                              # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $t0, 0
	slli.d	$a6, $a6, 2
	ldx.w	$a6, $a1, $a6
	slli.d	$a6, $a6, 2
	ldx.w	$a7, $s7, $a6
	add.d	$a7, $a2, $a7
	st.w	$a7, $a4, -8
	ldx.w	$a7, $s6, $a6
	add.d	$a7, $a2, $a7
	st.w	$a7, $a4, -4
	ldx.w	$a7, $s8, $a6
	add.d	$a7, $a2, $a7
	st.w	$a7, $a4, 0
	ldx.w	$a6, $a5, $a6
	add.d	$a6, $a2, $a6
	st.w	$a6, $a4, 4
	addi.d	$t0, $t0, 4
	addi.d	$t1, $t1, -1
	addi.d	$a4, $a4, 16
	bnez	$t1, .LBB5_252
.LBB5_253:                              # %._crit_edge1162
.Ltmp407:
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi)
	jirl	$ra, $ra, 0
.Ltmp408:
# %bb.254:
	st.d	$s2, $sp, 184                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	bnez	$a0, .LBB5_297
# %bb.255:
	ld.w	$a0, $s6, 180
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_297
# %bb.256:
.Ltmp409:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	addi.d	$a0, $sp, 336
	ori	$a2, $zero, 5
	addi.d	$fp, $sp, 336
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp410:
# %bb.257:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit412
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$fp, $a0, 240
	beqz	$fp, .LBB5_489
# %bb.258:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i716
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB5_260
# %bb.259:
	ld.bu	$a0, $fp, 67
	b	.LBB5_262
.LBB5_260:
.Ltmp411:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp412:
# %bb.261:                              # %.noexc721
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp413:
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp414:
.LBB5_262:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i718
.Ltmp415:
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp416:
# %bb.263:                              # %.noexc723
.Ltmp417:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp418:
# %bb.264:
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	addi.d	$a2, $sp, 336
	ld.d	$a1, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 180
	add.d	$a0, $a2, $a0
	ori	$a2, $zero, 10
	st.d	$a2, $a0, 16
.Ltmp419:
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp420:
# %bb.265:
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB5_489
# %bb.266:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i727
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB5_268
# %bb.267:
	ld.bu	$a0, $s0, 67
	b	.LBB5_270
.LBB5_268:
.Ltmp421:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp422:
# %bb.269:                              # %.noexc732
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp423:
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp424:
.LBB5_270:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i729
.Ltmp425:
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp426:
# %bb.271:                              # %.noexc734
.Ltmp427:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp428:
# %bb.272:                              # %_ZNSolsEPFRSoS_E.exit417.preheader
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.w	$a0, $s6, 180
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_297
# %bb.273:                              # %.lr.ph1166.preheader
	move	$s1, $zero
	addi.d	$s2, $sp, 352
	ori	$s3, $zero, 10
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_274:                              # %.lr.ph1166
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	ld.w	$a1, $s4, 0
	stx.d	$s3, $s2, $a0
	addi.w	$a1, $a1, 1
.Ltmp429:
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp430:
# %bb.275:                              #   in Loop: Header=BB5_274 Depth=1
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB5_459
# %bb.276:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i738
                                        #   in Loop: Header=BB5_274 Depth=1
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB5_278
# %bb.277:                              #   in Loop: Header=BB5_274 Depth=1
	ld.bu	$a0, $s0, 67
	b	.LBB5_280
	.p2align	4, , 16
.LBB5_278:                              #   in Loop: Header=BB5_274 Depth=1
.Ltmp431:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp432:
# %bb.279:                              # %.noexc743
                                        #   in Loop: Header=BB5_274 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp433:
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp434:
.LBB5_280:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i740
                                        #   in Loop: Header=BB5_274 Depth=1
.Ltmp435:
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp436:
# %bb.281:                              # %.noexc745
                                        #   in Loop: Header=BB5_274 Depth=1
.Ltmp437:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp438:
# %bb.282:                              # %_ZNSolsEPFRSoS_E.exit420
                                        #   in Loop: Header=BB5_274 Depth=1
	ld.w	$a0, $s6, 180
	addi.d	$s1, $s1, 1
	addi.d	$s4, $s4, 4
	blt	$s1, $a0, .LBB5_274
# %bb.283:                              # %.preheader1066
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_297
# %bb.284:                              # %.preheader1065.lr.ph
	move	$s0, $zero
	addi.d	$s3, $sp, 576
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	addi.d	$s4, $a0, 8
	ori	$s5, $zero, 10
	.p2align	4, , 16
.LBB5_285:                              # %.preheader1065
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	stx.d	$s5, $s2, $a0
	ld.w	$a0, $s4, -8
	addi.w	$a1, $a0, 1
.Ltmp440:
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp441:
# %bb.286:                              #   in Loop: Header=BB5_285 Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	stx.d	$s5, $s2, $a0
	ld.w	$a0, $s4, -4
	addi.w	$a1, $a0, 1
.Ltmp442:
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp443:
# %bb.287:                              #   in Loop: Header=BB5_285 Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	ld.w	$a1, $s4, 0
	stx.d	$s5, $s2, $a0
	addi.w	$a1, $a1, 1
.Ltmp444:
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp445:
# %bb.288:                              #   in Loop: Header=BB5_285 Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	stx.d	$s5, $s2, $a0
	ld.w	$a0, $s4, 4
	addi.w	$a1, $a0, 1
.Ltmp446:
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp447:
# %bb.289:                              #   in Loop: Header=BB5_285 Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	ldx.d	$fp, $s3, $a0
	beqz	$fp, .LBB5_467
# %bb.290:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i749
                                        #   in Loop: Header=BB5_285 Depth=1
	ld.bu	$a0, $fp, 56
	beqz	$a0, .LBB5_292
# %bb.291:                              #   in Loop: Header=BB5_285 Depth=1
	ld.bu	$a0, $fp, 67
	b	.LBB5_294
	.p2align	4, , 16
.LBB5_292:                              #   in Loop: Header=BB5_285 Depth=1
.Ltmp449:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp450:
# %bb.293:                              # %.noexc754
                                        #   in Loop: Header=BB5_285 Depth=1
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp451:
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp452:
.LBB5_294:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i751
                                        #   in Loop: Header=BB5_285 Depth=1
.Ltmp453:
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp454:
# %bb.295:                              # %.noexc756
                                        #   in Loop: Header=BB5_285 Depth=1
.Ltmp455:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp456:
# %bb.296:                              # %_ZNSolsEPFRSoS_E.exit422
                                        #   in Loop: Header=BB5_285 Depth=1
	ld.w	$a0, $s6, 180
	addi.d	$s0, $s0, 1
	addi.d	$s4, $s4, 16
	blt	$s0, $a0, .LBB5_285
.LBB5_297:                              # %.loopexit1067
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	slli.d	$fp, $a0, 30
	srai.d	$s1, $fp, 32
	srli.d	$a0, $s1, 61
	bnez	$a0, .LBB5_491
# %bb.298:                              # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i424
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	beqz	$fp, .LBB5_302
# %bb.299:
	srai.d	$s0, $fp, 30
.Ltmp458:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp459:
# %bb.300:                              # %.noexc430
	alsl.d	$a1, $s1, $a0, 2
	st.d	$a1, $sp, 16                    # 8-byte Folded Spill
	ori	$a1, $zero, 0
	lu32i.d	$a1, 1
	st.w	$zero, $a0, 0
	st.d	$a0, $sp, 248                   # 8-byte Folded Spill
	beq	$fp, $a1, .LBB5_303
# %bb.301:                              # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i426
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s0, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB5_303
.LBB5_302:
	st.d	$zero, $sp, 248                 # 8-byte Folded Spill
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
.LBB5_303:                              # %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit431
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$fp, $s6, 184
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	bge	$a0, $fp, .LBB5_493
# %bb.304:                              # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i432
	beqz	$fp, .LBB5_312
# %bb.305:
	slli.d	$s0, $fp, 2
.Ltmp460:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp461:
# %bb.306:                              # %.noexc438
	move	$s2, $a0
	ori	$a0, $zero, 1
	st.w	$zero, $s2, 0
	beq	$fp, $a0, .LBB5_308
# %bb.307:                              # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i434
	addi.d	$a0, $s2, 4
	addi.d	$a2, $s0, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB5_308:
.Ltmp462:
	move	$s8, $s2
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp463:
# %bb.309:                              # %.noexc446
	alsl.d	$a1, $fp, $a0, 2
	st.d	$a1, $sp, 0                     # 8-byte Folded Spill
	ori	$a1, $zero, 1
	st.w	$zero, $a0, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	beq	$fp, $a1, .LBB5_311
# %bb.310:                              # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i442
	addi.d	$a0, $a0, 4
	addi.d	$a2, $s0, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB5_311:                              # %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit447
	move	$a2, $s8
	b	.LBB5_313
.LBB5_312:
	st.d	$zero, $sp, 8                   # 8-byte Folded Spill
	move	$a2, $zero
	st.d	$zero, $sp, 192                 # 8-byte Folded Spill
	st.d	$zero, $sp, 0                   # 8-byte Folded Spill
.LBB5_313:                              # %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit447
	ld.d	$a0, $s6, 56
	ld.d	$a3, $s6, 152
.Ltmp465:
	move	$s0, $zero
	st.d	$zero, $sp, 288                 # 8-byte Folded Spill
	move	$a1, $s1
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi)
	jirl	$ra, $ra, 0
.Ltmp466:
# %bb.314:                              # %.preheader1064
	ori	$s5, $zero, 1
	blt	$s1, $s5, .LBB5_330
# %bb.315:                              # %.lr.ph1186
	st.d	$s7, $sp, 224                   # 8-byte Folded Spill
	move	$a1, $zero
	st.d	$zero, $sp, 288                 # 8-byte Folded Spill
	move	$s2, $zero
	move	$s0, $zero
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	bstrpick.d	$a0, $a0, 30, 0
	st.d	$a0, $sp, 232                   # 8-byte Folded Spill
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	st.d	$a0, $sp, 272                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	lu52i.d	$s3, $a0, 511
	b	.LBB5_317
	.p2align	4, , 16
.LBB5_316:                              # %._crit_edge1179
                                        #   in Loop: Header=BB5_317 Depth=1
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	addi.d	$a1, $a1, 1
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 232                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB5_329
.LBB5_317:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_321 Depth 2
	ld.d	$a0, $s6, 56
	st.d	$a1, $sp, 256                   # 8-byte Folded Spill
	slli.d	$a2, $a1, 2
	ldx.w	$a0, $a0, $a2
	ld.d	$a1, $s6, 80
	slli.d	$a3, $a0, 2
	ld.d	$a5, $sp, 240                   # 8-byte Folded Reload
	ldx.w	$a4, $a5, $a3
	ldx.w	$a1, $a1, $a3
	ld.d	$a3, $sp, 248                   # 8-byte Folded Reload
	stx.w	$a4, $a3, $a2
	blt	$a4, $s5, .LBB5_316
# %bb.318:                              # %.lr.ph1178.preheader
                                        #   in Loop: Header=BB5_317 Depth=1
	move	$s1, $zero
	alsl.d	$s7, $a0, $a5, 2
	ld.d	$a0, $sp, 224                   # 8-byte Folded Reload
	alsl.d	$s6, $a1, $a0, 2
	move	$s8, $s0
	b	.LBB5_321
	.p2align	4, , 16
.LBB5_319:                              #   in Loop: Header=BB5_321 Depth=2
	st.w	$fp, $s2, 0
	move	$s0, $s8
.LBB5_320:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
                                        #   in Loop: Header=BB5_321 Depth=2
	ld.w	$a0, $s7, 0
	addi.d	$s2, $s2, 4
	addi.d	$s1, $s1, 1
	addi.d	$s6, $s6, 4
	bge	$s1, $a0, .LBB5_316
.LBB5_321:                              # %.lr.ph1178
                                        #   Parent Loop BB5_317 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$a0, $s6, 0
	ld.w	$a1, $sp, 300
	add.d	$fp, $a1, $a0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	bne	$s2, $a0, .LBB5_319
# %bb.322:                              #   in Loop: Header=BB5_321 Depth=2
	sub.d	$s2, $a0, $s8
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	beq	$s2, $a0, .LBB5_455
# %bb.323:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i
                                        #   in Loop: Header=BB5_321 Depth=2
	srai.d	$a0, $s2, 2
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s3, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
.Ltmp467:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp468:
# %bb.324:                              # %.noexc450
                                        #   in Loop: Header=BB5_321 Depth=2
	move	$s0, $a0
	stx.w	$fp, $a0, $s2
	blt	$s2, $s5, .LBB5_326
# %bb.325:                              #   in Loop: Header=BB5_321 Depth=2
	move	$a0, $s0
	move	$a1, $s8
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_326:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i
                                        #   in Loop: Header=BB5_321 Depth=2
	beqz	$s8, .LBB5_328
# %bb.327:                              #   in Loop: Header=BB5_321 Depth=2
	move	$a0, $s8
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_328:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i
                                        #   in Loop: Header=BB5_321 Depth=2
	add.d	$s2, $s0, $s2
	alsl.d	$a0, $s4, $s0, 2
	st.d	$a0, $sp, 288                   # 8-byte Folded Spill
	move	$s8, $s0
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	b	.LBB5_320
.LBB5_329:                              # %._crit_edge1187.loopexit
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	b	.LBB5_331
.LBB5_330:
	move	$s0, $zero
	move	$s2, $zero
	st.d	$zero, $sp, 288                 # 8-byte Folded Spill
.LBB5_331:                              # %._crit_edge1187
	ld.d	$a3, $s6, 152
.Ltmp470:
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	move	$a1, $s1
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi)
	jirl	$ra, $ra, 0
.Ltmp471:
# %bb.332:
	sub.d	$a0, $s2, $s0
	srli.d	$a0, $a0, 2
	addi.w	$s8, $a0, 0
.Ltmp473:
	move	$a0, $s8
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN8Parallel6gatherEiPi)
	jirl	$ra, $ra, 0
.Ltmp474:
# %bb.333:
	ld.d	$a5, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 184                   # 8-byte Folded Reload
	beq	$fp, $a5, .LBB5_336
# %bb.334:                              # %.lr.ph.i453.preheader
	sub.d	$a0, $a5, $fp
	addi.d	$a0, $a0, -4
	ori	$a1, $zero, 28
	move	$s7, $s5
	bgeu	$a0, $a1, .LBB5_337
# %bb.335:
	move	$a0, $fp
	move	$fp, $zero
	move	$s5, $a0
	b	.LBB5_340
.LBB5_336:
	move	$s3, $zero
	st.d	$zero, $sp, 256                 # 8-byte Folded Spill
	move	$s7, $s5
	b	.LBB5_349
.LBB5_337:                              # %vector.ph1451
	srli.d	$a0, $a0, 2
	addi.d	$a1, $a0, 1
	bstrpick.d	$a0, $a1, 62, 3
	slli.d	$a2, $a0, 3
	slli.d	$a0, $a0, 5
	add.d	$a0, $fp, $a0
	vrepli.b	$vr0, 0
	move	$s5, $fp
	addi.d	$a3, $fp, 16
	move	$a4, $a2
	vori.b	$vr1, $vr0, 0
	.p2align	4, , 16
.LBB5_338:                              # %vector.body1454
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr2, $a3, -16
	vld	$vr3, $a3, 0
	vadd.w	$vr0, $vr2, $vr0
	vadd.w	$vr1, $vr3, $vr1
	addi.d	$a4, $a4, -8
	addi.d	$a3, $a3, 32
	bnez	$a4, .LBB5_338
# %bb.339:                              # %middle.block1463
	vadd.w	$vr0, $vr1, $vr0
	vshuf4i.w	$vr1, $vr0, 14
	vadd.w	$vr0, $vr0, $vr1
	vreplvei.w	$vr1, $vr0, 1
	vadd.w	$vr0, $vr0, $vr1
	vpickve2gr.w	$fp, $vr0, 0
	beq	$a1, $a2, .LBB5_341
	.p2align	4, , 16
.LBB5_340:                              # %.lr.ph.i453
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	add.w	$fp, $a1, $fp
	bne	$a0, $a5, .LBB5_340
.LBB5_341:                              # %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET0_T_S8_S7_.exit459
	ld.d	$a0, $sp, 208                   # 8-byte Folded Reload
	bge	$a0, $fp, .LBB5_503
# %bb.342:                              # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i460
	beqz	$fp, .LBB5_347
# %bb.343:
	slli.d	$s2, $fp, 2
.Ltmp476:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp477:
# %bb.344:                              # %.noexc466
	move	$s3, $a0
	alsl.d	$a0, $fp, $a0, 2
	st.d	$a0, $sp, 256                   # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.w	$zero, $s3, 0
	beq	$fp, $a0, .LBB5_346
# %bb.345:                              # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i462
	addi.d	$a0, $s3, 4
	addi.d	$a2, $s2, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB5_346:                              # %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit467
	ld.d	$s1, $sp, 184                   # 8-byte Folded Reload
	b	.LBB5_348
.LBB5_347:
	move	$s3, $zero
	st.d	$zero, $sp, 256                 # 8-byte Folded Spill
.LBB5_348:                              # %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit467
	move	$fp, $s5
.LBB5_349:                              # %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit467
.Ltmp481:
	move	$a0, $s0
	move	$a1, $s8
	move	$a2, $s3
	move	$a3, $fp
	pcaddu18i	$ra, %call36(_ZN8Parallel7gathervIiEEvPKT_iPS1_PKi)
	jirl	$ra, $ra, 0
.Ltmp482:
# %bb.350:
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB5_405
# %bb.351:
	ld.w	$a1, $s6, 184
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB5_405
# %bb.352:
.Ltmp483:
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	addi.d	$a0, $sp, 336
	ori	$a2, $zero, 6
	addi.d	$fp, $sp, 336
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp484:
# %bb.353:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit469
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB5_495
# %bb.354:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i760
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB5_356
# %bb.355:
	ld.bu	$a0, $s2, 67
	b	.LBB5_358
.LBB5_356:
.Ltmp485:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp486:
# %bb.357:                              # %.noexc765
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp487:
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp488:
.LBB5_358:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i762
.Ltmp489:
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp490:
# %bb.359:                              # %.noexc767
.Ltmp491:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp492:
# %bb.360:
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	addi.d	$a2, $sp, 336
	ld.w	$a1, $s6, 184
	add.d	$a0, $a2, $a0
	ori	$a2, $zero, 10
	st.d	$a2, $a0, 16
.Ltmp493:
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp494:
# %bb.361:
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s8, $a0, 240
	beqz	$s8, .LBB5_495
# %bb.362:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i771
	ld.bu	$a0, $s8, 56
	beqz	$a0, .LBB5_364
# %bb.363:
	ld.bu	$a0, $s8, 67
	b	.LBB5_366
.LBB5_364:
.Ltmp495:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp496:
# %bb.365:                              # %.noexc776
	ld.d	$a0, $s8, 0
	ld.d	$a2, $a0, 48
.Ltmp497:
	ori	$a1, $zero, 10
	move	$a0, $s8
	jirl	$ra, $a2, 0
.Ltmp498:
.LBB5_366:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i773
.Ltmp499:
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp500:
# %bb.367:                              # %.noexc778
.Ltmp501:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp502:
# %bb.368:                              # %_ZNSolsEPFRSoS_E.exit474.preheader
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	ld.w	$a0, $s6, 184
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_404
# %bb.369:                              # %.lr.ph1194.preheader
	move	$fp, $zero
	addi.d	$s7, $sp, 352
	ori	$s1, $zero, 10
	ld.d	$s3, $sp, 112                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_370:                              # %.lr.ph1194
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	ld.w	$a1, $s3, 0
	stx.d	$s1, $s7, $a0
	addi.w	$a1, $a1, 1
.Ltmp503:
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp504:
# %bb.371:                              #   in Loop: Header=BB5_370 Depth=1
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s8, $a0, 240
	beqz	$s8, .LBB5_461
# %bb.372:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i782
                                        #   in Loop: Header=BB5_370 Depth=1
	ld.bu	$a0, $s8, 56
	beqz	$a0, .LBB5_374
# %bb.373:                              #   in Loop: Header=BB5_370 Depth=1
	ld.bu	$a0, $s8, 67
	b	.LBB5_376
	.p2align	4, , 16
.LBB5_374:                              #   in Loop: Header=BB5_370 Depth=1
.Ltmp505:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp506:
# %bb.375:                              # %.noexc787
                                        #   in Loop: Header=BB5_370 Depth=1
	ld.d	$a0, $s8, 0
	ld.d	$a2, $a0, 48
.Ltmp507:
	ori	$a1, $zero, 10
	move	$a0, $s8
	jirl	$ra, $a2, 0
.Ltmp508:
.LBB5_376:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i784
                                        #   in Loop: Header=BB5_370 Depth=1
.Ltmp509:
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp510:
# %bb.377:                              # %.noexc789
                                        #   in Loop: Header=BB5_370 Depth=1
.Ltmp511:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp512:
# %bb.378:                              # %_ZNSolsEPFRSoS_E.exit477
                                        #   in Loop: Header=BB5_370 Depth=1
	ld.w	$a0, $s6, 184
	addi.d	$fp, $fp, 1
	addi.d	$s3, $s3, 4
	blt	$fp, $a0, .LBB5_370
# %bb.379:                              # %.preheader1048
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_404
# %bb.380:                              # %.lr.ph1198.preheader
	move	$fp, $zero
	ori	$s1, $zero, 10
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB5_381:                              # %.lr.ph1198
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	ld.w	$a1, $s3, 0
	stx.d	$s1, $s7, $a0
.Ltmp514:
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp515:
# %bb.382:                              #   in Loop: Header=BB5_381 Depth=1
	move	$s2, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s2, $a0
	ld.d	$s8, $a0, 240
	beqz	$s8, .LBB5_469
# %bb.383:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i793
                                        #   in Loop: Header=BB5_381 Depth=1
	ld.bu	$a0, $s8, 56
	beqz	$a0, .LBB5_385
# %bb.384:                              #   in Loop: Header=BB5_381 Depth=1
	ld.bu	$a0, $s8, 67
	b	.LBB5_387
	.p2align	4, , 16
.LBB5_385:                              #   in Loop: Header=BB5_381 Depth=1
.Ltmp516:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp517:
# %bb.386:                              # %.noexc798
                                        #   in Loop: Header=BB5_381 Depth=1
	ld.d	$a0, $s8, 0
	ld.d	$a2, $a0, 48
.Ltmp518:
	ori	$a1, $zero, 10
	move	$a0, $s8
	jirl	$ra, $a2, 0
.Ltmp519:
.LBB5_387:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i795
                                        #   in Loop: Header=BB5_381 Depth=1
.Ltmp520:
	ext.w.b	$a1, $a0
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp521:
# %bb.388:                              # %.noexc800
                                        #   in Loop: Header=BB5_381 Depth=1
.Ltmp522:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp523:
# %bb.389:                              # %_ZNSolsEPFRSoS_E.exit480
                                        #   in Loop: Header=BB5_381 Depth=1
	ld.w	$a0, $s6, 184
	addi.d	$fp, $fp, 1
	addi.d	$s3, $s3, 4
	blt	$fp, $a0, .LBB5_381
# %bb.390:                              # %.preheader1047
	ori	$fp, $zero, 1
	blt	$a0, $fp, .LBB5_404
# %bb.391:                              # %.preheader.preheader
	move	$s4, $zero
	move	$s8, $zero
	addi.d	$s3, $sp, 576
	ori	$s5, $zero, 10
	.p2align	4, , 16
.LBB5_392:                              # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_394 Depth 2
	slli.d	$a0, $s4, 2
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ldx.w	$a0, $a1, $a0
	alsl.d	$s1, $s4, $a1, 2
	blt	$a0, $fp, .LBB5_396
# %bb.393:                              # %.lr.ph1202.preheader
                                        #   in Loop: Header=BB5_392 Depth=1
	move	$s2, $zero
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	alsl.d	$s6, $s8, $a0, 2
	.p2align	4, , 16
.LBB5_394:                              # %.lr.ph1202
                                        #   Parent Loop BB5_392 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	ld.w	$a1, $s6, 0
	stx.d	$s5, $s7, $a0
	addi.w	$a1, $a1, 1
.Ltmp525:
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp526:
# %bb.395:                              #   in Loop: Header=BB5_394 Depth=2
	ld.w	$a0, $s1, 0
	addi.d	$s2, $s2, 1
	addi.d	$s6, $s6, 4
	blt	$s2, $a0, .LBB5_394
.LBB5_396:                              # %._crit_edge1203
                                        #   in Loop: Header=BB5_392 Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	ldx.d	$s2, $s3, $a0
	beqz	$s2, .LBB5_473
# %bb.397:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i804
                                        #   in Loop: Header=BB5_392 Depth=1
	ld.bu	$a0, $s2, 56
	ld.d	$s6, $sp, 264                   # 8-byte Folded Reload
	beqz	$a0, .LBB5_399
# %bb.398:                              #   in Loop: Header=BB5_392 Depth=1
	ld.bu	$a0, $s2, 67
	b	.LBB5_401
	.p2align	4, , 16
.LBB5_399:                              #   in Loop: Header=BB5_392 Depth=1
.Ltmp528:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp529:
# %bb.400:                              # %.noexc809
                                        #   in Loop: Header=BB5_392 Depth=1
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp530:
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp531:
.LBB5_401:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i806
                                        #   in Loop: Header=BB5_392 Depth=1
.Ltmp532:
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp533:
# %bb.402:                              # %.noexc811
                                        #   in Loop: Header=BB5_392 Depth=1
.Ltmp534:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp535:
# %bb.403:                              # %_ZNSolsEPFRSoS_E.exit482
                                        #   in Loop: Header=BB5_392 Depth=1
	ld.w	$a0, $s1, 0
	ld.w	$a1, $s6, 184
	addi.d	$s4, $s4, 1
	add.w	$s8, $a0, $s8
	blt	$s4, $a1, .LBB5_392
.LBB5_404:                              # %thread-pre-split
	ld.d	$a0, $sp, 216                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 272                   # 8-byte Folded Reload
.LBB5_405:
	bnez	$a0, .LBB5_409
# %bb.406:
	addi.d	$a0, $sp, 344
.Ltmp537:
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv)
	jirl	$ra, $ra, 0
.Ltmp538:
# %bb.407:                              # %.noexc485
	bnez	$a0, .LBB5_409
# %bb.408:
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 336
	add.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 4
.Ltmp539:
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.Ltmp540:
.LBB5_409:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit513
	ld.d	$a0, $sp, 256                   # 8-byte Folded Reload
	sub.d	$a1, $a0, $s3
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	sub.d	$a1, $s4, $fp
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s7
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	fld.d	$fs0, $sp, 848                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 856                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 864                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 872                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 880                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 888                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 896                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 904                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 912                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 920                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 928                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 936                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 944
	ret
.LBB5_410:
.Ltmp274:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp275:
# %bb.411:                              # %.noexc622
	ld.d	$a0, $fp, 0
	ld.d	$a2, $a0, 48
.Ltmp276:
	ori	$a1, $zero, 10
	move	$a0, $fp
	jirl	$ra, $a2, 0
.Ltmp277:
.LBB5_412:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i619
.Ltmp278:
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp279:
# %bb.413:                              # %.noexc624
.Ltmp280:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp281:
# %bb.414:
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	addi.d	$a2, $sp, 336
	ld.w	$a1, $sp, 304
	add.d	$a0, $a2, $a0
	ori	$a2, $zero, 10
	st.d	$a2, $a0, 16
.Ltmp282:
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp283:
# %bb.415:
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB5_501
# %bb.416:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i628
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB5_418
# %bb.417:
	ld.bu	$a0, $s0, 67
	b	.LBB5_420
.LBB5_418:
.Ltmp284:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp285:
# %bb.419:                              # %.noexc633
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp286:
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp287:
.LBB5_420:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i630
.Ltmp288:
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp289:
# %bb.421:                              # %.noexc635
.Ltmp290:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp291:
# %bb.422:                              # %_ZNSolsEPFRSoS_E.exit295
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 336
	ld.w	$a2, $sp, 304
	add.d	$a0, $a1, $a0
	ori	$a1, $zero, 5
	ori	$a3, $zero, 1
	st.d	$a1, $a0, 8
	blt	$a2, $a3, .LBB5_99
# %bb.423:                              # %.lr.ph.preheader
	move	$s1, $zero
	addi.d	$s2, $sp, 352
	ori	$s3, $zero, 12
	move	$s4, $s7
	.p2align	4, , 16
.LBB5_424:                              # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	fld.d	$fa0, $s4, 0
	stx.d	$s3, $s2, $a0
.Ltmp292:
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp293:
# %bb.425:                              # %_ZNSolsEd.exit299
                                        #   in Loop: Header=BB5_424 Depth=1
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB5_463
# %bb.426:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i639
                                        #   in Loop: Header=BB5_424 Depth=1
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB5_428
# %bb.427:                              #   in Loop: Header=BB5_424 Depth=1
	ld.bu	$a0, $s0, 67
	b	.LBB5_430
	.p2align	4, , 16
.LBB5_428:                              #   in Loop: Header=BB5_424 Depth=1
.Ltmp294:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp295:
# %bb.429:                              # %.noexc644
                                        #   in Loop: Header=BB5_424 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp296:
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp297:
.LBB5_430:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i641
                                        #   in Loop: Header=BB5_424 Depth=1
.Ltmp298:
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp299:
# %bb.431:                              # %.noexc646
                                        #   in Loop: Header=BB5_424 Depth=1
.Ltmp300:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp301:
# %bb.432:                              # %_ZNSolsEPFRSoS_E.exit301
                                        #   in Loop: Header=BB5_424 Depth=1
	ld.w	$a0, $sp, 304
	addi.d	$s1, $s1, 1
	addi.d	$s4, $s4, 16
	blt	$s1, $a0, .LBB5_424
# %bb.433:                              # %.preheader1102
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_99
# %bb.434:                              # %.lr.ph1136.preheader
	move	$s1, $zero
	addi.d	$s3, $s7, 8
	ori	$s4, $zero, 12
	.p2align	4, , 16
.LBB5_435:                              # %.lr.ph1136
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	fld.d	$fa0, $s3, 0
	stx.d	$s4, $s2, $a0
.Ltmp303:
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp304:
# %bb.436:                              # %_ZNSolsEd.exit304
                                        #   in Loop: Header=BB5_435 Depth=1
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB5_471
# %bb.437:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i650
                                        #   in Loop: Header=BB5_435 Depth=1
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB5_439
# %bb.438:                              #   in Loop: Header=BB5_435 Depth=1
	ld.bu	$a0, $s0, 67
	b	.LBB5_441
	.p2align	4, , 16
.LBB5_439:                              #   in Loop: Header=BB5_435 Depth=1
.Ltmp305:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp306:
# %bb.440:                              # %.noexc655
                                        #   in Loop: Header=BB5_435 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp307:
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp308:
.LBB5_441:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i652
                                        #   in Loop: Header=BB5_435 Depth=1
.Ltmp309:
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp310:
# %bb.442:                              # %.noexc657
                                        #   in Loop: Header=BB5_435 Depth=1
.Ltmp311:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp312:
# %bb.443:                              # %_ZNSolsEPFRSoS_E.exit306
                                        #   in Loop: Header=BB5_435 Depth=1
	ld.w	$a0, $sp, 304
	addi.d	$s1, $s1, 1
	addi.d	$s3, $s3, 16
	blt	$s1, $a0, .LBB5_435
# %bb.444:                              # %.preheader1095
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB5_99
# %bb.445:                              # %.lr.ph1140.preheader
	move	$s1, $zero
	ori	$s3, $zero, 12
	movgr2fr.d	$fs0, $zero
	.p2align	4, , 16
.LBB5_446:                              # %.lr.ph1140
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 336
	ld.d	$a0, $a0, -24
	stx.d	$s3, $s2, $a0
.Ltmp314:
	addi.d	$a0, $sp, 336
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp315:
# %bb.447:                              # %_ZNSolsEd.exit309
                                        #   in Loop: Header=BB5_446 Depth=1
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $fp, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB5_475
# %bb.448:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i661
                                        #   in Loop: Header=BB5_446 Depth=1
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB5_450
# %bb.449:                              #   in Loop: Header=BB5_446 Depth=1
	ld.bu	$a0, $s0, 67
	b	.LBB5_452
	.p2align	4, , 16
.LBB5_450:                              #   in Loop: Header=BB5_446 Depth=1
.Ltmp316:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp317:
# %bb.451:                              # %.noexc666
                                        #   in Loop: Header=BB5_446 Depth=1
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp318:
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp319:
.LBB5_452:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i663
                                        #   in Loop: Header=BB5_446 Depth=1
.Ltmp320:
	ext.w.b	$a1, $a0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp321:
# %bb.453:                              # %.noexc668
                                        #   in Loop: Header=BB5_446 Depth=1
.Ltmp322:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp323:
# %bb.454:                              # %_ZNSolsEPFRSoS_E.exit311
                                        #   in Loop: Header=BB5_446 Depth=1
	ld.w	$a0, $sp, 304
	addi.w	$s1, $s1, 1
	blt	$s1, $a0, .LBB5_446
	b	.LBB5_99
.LBB5_455:
.Ltmp553:
	pcalau12i	$a0, %pc_hi20(.L.str.35)
	addi.d	$a0, $a0, %pc_lo12(.L.str.35)
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp554:
# %bb.456:                              # %.noexc449
.LBB5_457:
.Ltmp580:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp581:
# %bb.458:                              # %.noexc698
.LBB5_459:
.Ltmp565:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp566:
# %bb.460:                              # %.noexc742
.LBB5_461:
.Ltmp547:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp548:
# %bb.462:                              # %.noexc786
.LBB5_463:
.Ltmp601:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp602:
# %bb.464:                              # %.noexc643
.LBB5_465:
.Ltmp577:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp578:
# %bb.466:                              # %.noexc709
.LBB5_467:
.Ltmp562:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp563:
# %bb.468:                              # %.noexc753
.LBB5_469:
.Ltmp544:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp545:
# %bb.470:                              # %.noexc797
.LBB5_471:
.Ltmp598:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp599:
# %bb.472:                              # %.noexc654
.LBB5_473:
.Ltmp541:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp542:
# %bb.474:                              # %.noexc808
.LBB5_475:
.Ltmp595:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp596:
# %bb.476:                              # %.noexc665
.LBB5_477:
.Ltmp613:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp614:
# %bb.478:                              # %.noexc274
.LBB5_479:
.Ltmp610:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp611:
# %bb.480:                              # %.noexc281
.LBB5_481:
.Ltmp607:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp608:
# %bb.482:                              # %.noexc287
.LBB5_483:
.Ltmp592:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp593:
# %bb.484:                              # %.noexc347
.LBB5_485:                              # %.invoke1360
.Ltmp583:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp584:
# %bb.486:                              # %.cont1361
.LBB5_487:
.Ltmp574:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp575:
# %bb.488:                              # %.noexc392
.LBB5_489:                              # %.invoke1362
.Ltmp568:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp569:
# %bb.490:                              # %.cont1363
.LBB5_491:
.Ltmp559:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp560:
# %bb.492:                              # %.noexc429
.LBB5_493:
.Ltmp556:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp557:
# %bb.494:                              # %.noexc437
.LBB5_495:                              # %.invoke1364
.Ltmp550:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp551:
# %bb.496:                              # %.cont1365
.LBB5_497:                              # %.invoke
.Ltmp616:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp617:
# %bb.498:                              # %.cont
.LBB5_499:                              # %.invoke.i.i
.Ltmp619:
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp620:
# %bb.500:                              # %.cont.i.i
.LBB5_501:                              # %.invoke1358
.Ltmp604:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp605:
# %bb.502:                              # %.cont1359
.LBB5_503:
.Ltmp478:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp479:
# %bb.504:                              # %.noexc465
.LBB5_505:
.Ltmp172:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 17
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp173:
# %bb.506:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a1, $sp, 304
	ld.d	$a2, $sp, 312
.Ltmp174:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp175:
# %bb.507:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
.Ltmp176:
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp177:
# %bb.508:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238
.Ltmp178:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp179:
# %bb.509:                              # %_ZNSolsEPFRSoS_E.exit
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB5_510:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit517.thread
.Ltmp464:
	move	$s1, $a0
	st.d	$zero, $sp, 288                 # 8-byte Folded Spill
	move	$s0, $zero
	move	$s7, $s5
	move	$a0, $s8
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	b	.LBB5_605
.LBB5_511:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit525.thread
.Ltmp404:
	move	$s1, $a0
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	b	.LBB5_589
.LBB5_512:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit531.thread
.Ltmp346:
	move	$s1, $a0
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	move	$a2, $s7
	move	$s7, $a0
	b	.LBB5_593
.LBB5_513:
.Ltmp475:
	move	$s1, $a0
	move	$s7, $s5
	b	.LBB5_518
.LBB5_514:
.Ltmp267:
	b	.LBB5_528
.LBB5_515:
.Ltmp262:
	b	.LBB5_530
.LBB5_516:
.Ltmp257:
	b	.LBB5_542
.LBB5_517:
.Ltmp480:
	move	$s1, $a0
.LBB5_518:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit515.thread
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	b	.LBB5_604
.LBB5_519:
.Ltmp180:
	b	.LBB5_533
.LBB5_520:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit519.thread
.Ltmp558:
	move	$s1, $a0
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	move	$s7, $s5
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	b	.LBB5_573
.LBB5_521:
.Ltmp561:
	move	$s1, $a0
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	move	$s7, $s5
	bnez	$s2, .LBB5_576
	b	.LBB5_577
.LBB5_522:
.Ltmp573:
	move	$s1, $a0
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	b	.LBB5_590
.LBB5_523:
.Ltmp576:
	b	.LBB5_599
.LBB5_524:
.Ltmp588:
	move	$s1, $a0
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	b	.LBB5_594
.LBB5_525:
.Ltmp591:
	move	$s1, $a0
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	bnez	$a0, .LBB5_583
	b	.LBB5_584
.LBB5_526:
.Ltmp594:
	b	.LBB5_550
.LBB5_527:
.Ltmp609:
.LBB5_528:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit541
	move	$s1, $a0
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	b	.LBB5_585
.LBB5_529:
.Ltmp612:
.LBB5_530:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit541.thread
	move	$s1, $a0
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	b	.LBB5_586
.LBB5_531:
.Ltmp615:
	b	.LBB5_542
.LBB5_532:
.Ltmp621:
.LBB5_533:
	ld.d	$a2, $sp, 304
	move	$s1, $a0
	beq	$a2, $s3, .LBB5_588
# %bb.534:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
	ld.d	$a0, $sp, 320
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	b	.LBB5_587
.LBB5_535:
.Ltmp472:
	move	$s1, $a0
	move	$s7, $s5
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB5_569
	b	.LBB5_604
.LBB5_536:                              # %.loopexit.split-lp1098
.Ltmp597:
	b	.LBB5_550
.LBB5_537:
.Ltmp337:
	b	.LBB5_550
.LBB5_538:                              # %.loopexit.split-lp
.Ltmp543:
	b	.LBB5_567
.LBB5_539:
.Ltmp606:
	b	.LBB5_565
.LBB5_540:                              # %.loopexit.split-lp1104
.Ltmp600:
	b	.LBB5_550
.LBB5_541:
.Ltmp618:
.LBB5_542:
	move	$s1, $a0
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_543:                              # %.loopexit.split-lp1050
.Ltmp546:
	b	.LBB5_567
.LBB5_544:                              # %.loopexit.split-lp1069
.Ltmp564:
	b	.LBB5_563
.LBB5_545:                              # %.loopexit.split-lp1084
.Ltmp579:
	b	.LBB5_560
.LBB5_546:
.Ltmp552:
	st.d	$s3, $sp, 272                   # 8-byte Folded Spill
	b	.LBB5_567
.LBB5_547:
.Ltmp570:
	move	$s1, $a0
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	bnez	$s2, .LBB5_576
	b	.LBB5_577
.LBB5_548:
.Ltmp585:
	b	.LBB5_599
.LBB5_549:                              # %.loopexit.split-lp1109
.Ltmp603:
.LBB5_550:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit537.thread
	move	$s1, $a0
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	b	.LBB5_584
.LBB5_551:                              # %.loopexit.split-lp1055
.Ltmp549:
	b	.LBB5_567
.LBB5_552:                              # %.loopexit.split-lp1074
.Ltmp567:
	b	.LBB5_597
.LBB5_553:                              # %.loopexit.split-lp1089
.Ltmp582:
	b	.LBB5_599
.LBB5_554:                              # %.loopexit
.Ltmp536:
	b	.LBB5_567
.LBB5_555:                              # %.loopexit1097
.Ltmp324:
	b	.LBB5_565
.LBB5_556:                              # %.loopexit1068
.Ltmp457:
	b	.LBB5_563
.LBB5_557:                              # %.loopexit1083
.Ltmp397:
	b	.LBB5_560
.LBB5_558:                              # %.loopexit1103
.Ltmp313:
	b	.LBB5_565
.LBB5_559:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit529.thread
.Ltmp388:
.LBB5_560:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit529.thread1301
	move	$s1, $a0
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	b	.LBB5_592
.LBB5_561:                              # %.loopexit1049
.Ltmp524:
	b	.LBB5_567
.LBB5_562:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit523.thread
.Ltmp448:
.LBB5_563:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit523.thread1291
	move	$s1, $a0
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	b	.LBB5_576
.LBB5_564:                              # %.loopexit1108
.Ltmp302:
.LBB5_565:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit537.thread
	move	$s1, $a0
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	b	.LBB5_584
.LBB5_566:                              # %.loopexit1054
.Ltmp513:
.LBB5_567:
	move	$s1, $a0
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
	bnez	$a0, .LBB5_601
# %bb.568:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit515
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	bnez	$a0, .LBB5_604
.LBB5_569:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit517
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	bnez	$a0, .LBB5_605
.LBB5_570:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit519
	beqz	$s0, .LBB5_572
.LBB5_571:
	ld.d	$a0, $sp, 288                   # 8-byte Folded Reload
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_572:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit521
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
.LBB5_573:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit521
	ld.d	$a0, $sp, 248                   # 8-byte Folded Reload
	beqz	$a0, .LBB5_575
# %bb.574:
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_575:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit523
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	beqz	$s2, .LBB5_577
.LBB5_576:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit523.thread1291
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
.LBB5_577:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit525
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	bnez	$s5, .LBB5_589
# %bb.578:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit527
	bnez	$a0, .LBB5_591
.LBB5_579:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit529
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	bnez	$a2, .LBB5_592
.LBB5_580:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit531
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	bnez	$a2, .LBB5_593
.LBB5_581:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit533
	bnez	$a0, .LBB5_595
.LBB5_582:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit535
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	beqz	$a0, .LBB5_584
.LBB5_583:
	sub.d	$a1, $s4, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_584:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit537.thread
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s7
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_585:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit541
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	sub.d	$a1, $s0, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
.LBB5_586:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit541.thread
	sub.d	$a1, $fp, $s5
	move	$a0, $s5
.LBB5_587:
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_588:
	addi.d	$a0, $sp, 336
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB5_589:
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s5
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_590:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit527
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	beqz	$a0, .LBB5_579
.LBB5_591:
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	beqz	$a2, .LBB5_580
.LBB5_592:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit529.thread1301
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	beqz	$a2, .LBB5_581
.LBB5_593:
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_594:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit533
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	beqz	$a0, .LBB5_582
.LBB5_595:
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 200                   # 8-byte Folded Reload
	bnez	$a0, .LBB5_583
	b	.LBB5_584
.LBB5_596:                              # %.loopexit1073
.Ltmp439:
.LBB5_597:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit523
	move	$s1, $a0
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	bnez	$s2, .LBB5_576
	b	.LBB5_577
.LBB5_598:                              # %.loopexit1088
.Ltmp381:
.LBB5_599:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit529
	move	$s1, $a0
	ld.d	$fp, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 168                   # 8-byte Folded Reload
	beqz	$a2, .LBB5_580
	b	.LBB5_592
.LBB5_600:                              # %.thread992
.Ltmp527:
	move	$s1, $a0
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 272                   # 8-byte Folded Reload
.LBB5_601:
	ld.d	$a1, $sp, 256                   # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB5_569
	b	.LBB5_604
.LBB5_602:                              # %.loopexit1059
.Ltmp469:
	move	$s1, $a0
	move	$s0, $s8
	ld.d	$s7, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB5_569
	b	.LBB5_604
.LBB5_603:                              # %.loopexit.split-lp1060
.Ltmp555:
	move	$s1, $a0
	move	$s0, $s8
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beqz	$a0, .LBB5_569
.LBB5_604:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit515.thread
	ld.d	$a1, $sp, 0                     # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beqz	$a0, .LBB5_570
.LBB5_605:
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	bnez	$s0, .LBB5_571
	b	.LBB5_572
.Lfunc_end5:
	.size	_ZN10ExportGold12writeGeoFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEid, .Lfunc_end5-_ZN10ExportGold12writeGeoFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEid
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp162-.Lfunc_begin2         #   Call between .Lfunc_begin2 and .Ltmp162
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp162-.Lfunc_begin2         # >> Call Site 2 <<
	.uleb128 .Ltmp167-.Ltmp162              #   Call between .Ltmp162 and .Ltmp167
	.uleb128 .Ltmp621-.Lfunc_begin2         #     jumps to .Ltmp621
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp168-.Lfunc_begin2         # >> Call Site 3 <<
	.uleb128 .Ltmp171-.Ltmp168              #   Call between .Ltmp168 and .Ltmp171
	.uleb128 .Ltmp180-.Lfunc_begin2         #     jumps to .Ltmp180
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp171-.Lfunc_begin2         # >> Call Site 4 <<
	.uleb128 .Ltmp181-.Ltmp171              #   Call between .Ltmp171 and .Ltmp181
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp181-.Lfunc_begin2         # >> Call Site 5 <<
	.uleb128 .Ltmp254-.Ltmp181              #   Call between .Ltmp181 and .Ltmp254
	.uleb128 .Ltmp618-.Lfunc_begin2         #     jumps to .Ltmp618
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp255-.Lfunc_begin2         # >> Call Site 6 <<
	.uleb128 .Ltmp256-.Ltmp255              #   Call between .Ltmp255 and .Ltmp256
	.uleb128 .Ltmp257-.Lfunc_begin2         #     jumps to .Ltmp257
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp258-.Lfunc_begin2         # >> Call Site 7 <<
	.uleb128 .Ltmp259-.Ltmp258              #   Call between .Ltmp258 and .Ltmp259
	.uleb128 .Ltmp615-.Lfunc_begin2         #     jumps to .Ltmp615
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp259-.Lfunc_begin2         # >> Call Site 8 <<
	.uleb128 .Ltmp260-.Ltmp259              #   Call between .Ltmp259 and .Ltmp260
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp260-.Lfunc_begin2         # >> Call Site 9 <<
	.uleb128 .Ltmp261-.Ltmp260              #   Call between .Ltmp260 and .Ltmp261
	.uleb128 .Ltmp262-.Lfunc_begin2         #     jumps to .Ltmp262
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp263-.Lfunc_begin2         # >> Call Site 10 <<
	.uleb128 .Ltmp264-.Ltmp263              #   Call between .Ltmp263 and .Ltmp264
	.uleb128 .Ltmp612-.Lfunc_begin2         #     jumps to .Ltmp612
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp264-.Lfunc_begin2         # >> Call Site 11 <<
	.uleb128 .Ltmp265-.Ltmp264              #   Call between .Ltmp264 and .Ltmp265
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp265-.Lfunc_begin2         # >> Call Site 12 <<
	.uleb128 .Ltmp266-.Ltmp265              #   Call between .Ltmp265 and .Ltmp266
	.uleb128 .Ltmp267-.Lfunc_begin2         #     jumps to .Ltmp267
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp268-.Lfunc_begin2         # >> Call Site 13 <<
	.uleb128 .Ltmp269-.Ltmp268              #   Call between .Ltmp268 and .Ltmp269
	.uleb128 .Ltmp609-.Lfunc_begin2         #     jumps to .Ltmp609
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp269-.Lfunc_begin2         # >> Call Site 14 <<
	.uleb128 .Ltmp270-.Ltmp269              #   Call between .Ltmp269 and .Ltmp270
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp270-.Lfunc_begin2         # >> Call Site 15 <<
	.uleb128 .Ltmp271-.Ltmp270              #   Call between .Ltmp270 and .Ltmp271
	.uleb128 .Ltmp606-.Lfunc_begin2         #     jumps to .Ltmp606
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp325-.Lfunc_begin2         # >> Call Site 16 <<
	.uleb128 .Ltmp326-.Ltmp325              #   Call between .Ltmp325 and .Ltmp326
	.uleb128 .Ltmp337-.Lfunc_begin2         #     jumps to .Ltmp337
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp272-.Lfunc_begin2         # >> Call Site 17 <<
	.uleb128 .Ltmp273-.Ltmp272              #   Call between .Ltmp272 and .Ltmp273
	.uleb128 .Ltmp606-.Lfunc_begin2         #     jumps to .Ltmp606
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp327-.Lfunc_begin2         # >> Call Site 18 <<
	.uleb128 .Ltmp336-.Ltmp327              #   Call between .Ltmp327 and .Ltmp336
	.uleb128 .Ltmp337-.Lfunc_begin2         #     jumps to .Ltmp337
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp338-.Lfunc_begin2         # >> Call Site 19 <<
	.uleb128 .Ltmp339-.Ltmp338              #   Call between .Ltmp338 and .Ltmp339
	.uleb128 .Ltmp594-.Lfunc_begin2         #     jumps to .Ltmp594
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp340-.Lfunc_begin2         # >> Call Site 20 <<
	.uleb128 .Ltmp341-.Ltmp340              #   Call between .Ltmp340 and .Ltmp341
	.uleb128 .Ltmp591-.Lfunc_begin2         #     jumps to .Ltmp591
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp341-.Lfunc_begin2         # >> Call Site 21 <<
	.uleb128 .Ltmp342-.Ltmp341              #   Call between .Ltmp341 and .Ltmp342
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp342-.Lfunc_begin2         # >> Call Site 22 <<
	.uleb128 .Ltmp343-.Ltmp342              #   Call between .Ltmp342 and .Ltmp343
	.uleb128 .Ltmp588-.Lfunc_begin2         #     jumps to .Ltmp588
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp343-.Lfunc_begin2         # >> Call Site 23 <<
	.uleb128 .Ltmp344-.Ltmp343              #   Call between .Ltmp343 and .Ltmp344
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp344-.Lfunc_begin2         # >> Call Site 24 <<
	.uleb128 .Ltmp345-.Ltmp344              #   Call between .Ltmp344 and .Ltmp345
	.uleb128 .Ltmp346-.Lfunc_begin2         #     jumps to .Ltmp346
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp345-.Lfunc_begin2         # >> Call Site 25 <<
	.uleb128 .Ltmp586-.Ltmp345              #   Call between .Ltmp345 and .Ltmp586
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp586-.Lfunc_begin2         # >> Call Site 26 <<
	.uleb128 .Ltmp587-.Ltmp586              #   Call between .Ltmp586 and .Ltmp587
	.uleb128 .Ltmp588-.Lfunc_begin2         #     jumps to .Ltmp588
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp347-.Lfunc_begin2         # >> Call Site 27 <<
	.uleb128 .Ltmp352-.Ltmp347              #   Call between .Ltmp347 and .Ltmp352
	.uleb128 .Ltmp585-.Lfunc_begin2         #     jumps to .Ltmp585
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp352-.Lfunc_begin2         # >> Call Site 28 <<
	.uleb128 .Ltmp589-.Ltmp352              #   Call between .Ltmp352 and .Ltmp589
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp589-.Lfunc_begin2         # >> Call Site 29 <<
	.uleb128 .Ltmp590-.Ltmp589              #   Call between .Ltmp589 and .Ltmp590
	.uleb128 .Ltmp591-.Lfunc_begin2         #     jumps to .Ltmp591
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp353-.Lfunc_begin2         # >> Call Site 30 <<
	.uleb128 .Ltmp370-.Ltmp353              #   Call between .Ltmp353 and .Ltmp370
	.uleb128 .Ltmp585-.Lfunc_begin2         #     jumps to .Ltmp585
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp371-.Lfunc_begin2         # >> Call Site 31 <<
	.uleb128 .Ltmp380-.Ltmp371              #   Call between .Ltmp371 and .Ltmp380
	.uleb128 .Ltmp381-.Lfunc_begin2         #     jumps to .Ltmp381
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp382-.Lfunc_begin2         # >> Call Site 32 <<
	.uleb128 .Ltmp387-.Ltmp382              #   Call between .Ltmp382 and .Ltmp387
	.uleb128 .Ltmp388-.Lfunc_begin2         #     jumps to .Ltmp388
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp389-.Lfunc_begin2         # >> Call Site 33 <<
	.uleb128 .Ltmp396-.Ltmp389              #   Call between .Ltmp389 and .Ltmp396
	.uleb128 .Ltmp397-.Lfunc_begin2         #     jumps to .Ltmp397
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp398-.Lfunc_begin2         # >> Call Site 34 <<
	.uleb128 .Ltmp399-.Ltmp398              #   Call between .Ltmp398 and .Ltmp399
	.uleb128 .Ltmp576-.Lfunc_begin2         #     jumps to .Ltmp576
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp399-.Lfunc_begin2         # >> Call Site 35 <<
	.uleb128 .Ltmp400-.Ltmp399              #   Call between .Ltmp399 and .Ltmp400
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp400-.Lfunc_begin2         # >> Call Site 36 <<
	.uleb128 .Ltmp401-.Ltmp400              #   Call between .Ltmp400 and .Ltmp401
	.uleb128 .Ltmp573-.Lfunc_begin2         #     jumps to .Ltmp573
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp401-.Lfunc_begin2         # >> Call Site 37 <<
	.uleb128 .Ltmp402-.Ltmp401              #   Call between .Ltmp401 and .Ltmp402
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp402-.Lfunc_begin2         # >> Call Site 38 <<
	.uleb128 .Ltmp403-.Ltmp402              #   Call between .Ltmp402 and .Ltmp403
	.uleb128 .Ltmp404-.Lfunc_begin2         #     jumps to .Ltmp404
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp403-.Lfunc_begin2         # >> Call Site 39 <<
	.uleb128 .Ltmp571-.Ltmp403              #   Call between .Ltmp403 and .Ltmp571
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp571-.Lfunc_begin2         # >> Call Site 40 <<
	.uleb128 .Ltmp572-.Ltmp571              #   Call between .Ltmp571 and .Ltmp572
	.uleb128 .Ltmp573-.Lfunc_begin2         #     jumps to .Ltmp573
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp405-.Lfunc_begin2         # >> Call Site 41 <<
	.uleb128 .Ltmp428-.Ltmp405              #   Call between .Ltmp405 and .Ltmp428
	.uleb128 .Ltmp570-.Lfunc_begin2         #     jumps to .Ltmp570
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp429-.Lfunc_begin2         # >> Call Site 42 <<
	.uleb128 .Ltmp438-.Ltmp429              #   Call between .Ltmp429 and .Ltmp438
	.uleb128 .Ltmp439-.Lfunc_begin2         #     jumps to .Ltmp439
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp440-.Lfunc_begin2         # >> Call Site 43 <<
	.uleb128 .Ltmp447-.Ltmp440              #   Call between .Ltmp440 and .Ltmp447
	.uleb128 .Ltmp448-.Lfunc_begin2         #     jumps to .Ltmp448
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp449-.Lfunc_begin2         # >> Call Site 44 <<
	.uleb128 .Ltmp456-.Ltmp449              #   Call between .Ltmp449 and .Ltmp456
	.uleb128 .Ltmp457-.Lfunc_begin2         #     jumps to .Ltmp457
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp458-.Lfunc_begin2         # >> Call Site 45 <<
	.uleb128 .Ltmp459-.Ltmp458              #   Call between .Ltmp458 and .Ltmp459
	.uleb128 .Ltmp561-.Lfunc_begin2         #     jumps to .Ltmp561
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp459-.Lfunc_begin2         # >> Call Site 46 <<
	.uleb128 .Ltmp460-.Ltmp459              #   Call between .Ltmp459 and .Ltmp460
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp460-.Lfunc_begin2         # >> Call Site 47 <<
	.uleb128 .Ltmp461-.Ltmp460              #   Call between .Ltmp460 and .Ltmp461
	.uleb128 .Ltmp558-.Lfunc_begin2         #     jumps to .Ltmp558
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp461-.Lfunc_begin2         # >> Call Site 48 <<
	.uleb128 .Ltmp462-.Ltmp461              #   Call between .Ltmp461 and .Ltmp462
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp462-.Lfunc_begin2         # >> Call Site 49 <<
	.uleb128 .Ltmp463-.Ltmp462              #   Call between .Ltmp462 and .Ltmp463
	.uleb128 .Ltmp464-.Lfunc_begin2         #     jumps to .Ltmp464
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp463-.Lfunc_begin2         # >> Call Site 50 <<
	.uleb128 .Ltmp465-.Ltmp463              #   Call between .Ltmp463 and .Ltmp465
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp465-.Lfunc_begin2         # >> Call Site 51 <<
	.uleb128 .Ltmp466-.Ltmp465              #   Call between .Ltmp465 and .Ltmp466
	.uleb128 .Ltmp472-.Lfunc_begin2         #     jumps to .Ltmp472
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp467-.Lfunc_begin2         # >> Call Site 52 <<
	.uleb128 .Ltmp468-.Ltmp467              #   Call between .Ltmp467 and .Ltmp468
	.uleb128 .Ltmp469-.Lfunc_begin2         #     jumps to .Ltmp469
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp468-.Lfunc_begin2         # >> Call Site 53 <<
	.uleb128 .Ltmp470-.Ltmp468              #   Call between .Ltmp468 and .Ltmp470
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp470-.Lfunc_begin2         # >> Call Site 54 <<
	.uleb128 .Ltmp471-.Ltmp470              #   Call between .Ltmp470 and .Ltmp471
	.uleb128 .Ltmp472-.Lfunc_begin2         #     jumps to .Ltmp472
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp473-.Lfunc_begin2         # >> Call Site 55 <<
	.uleb128 .Ltmp474-.Ltmp473              #   Call between .Ltmp473 and .Ltmp474
	.uleb128 .Ltmp475-.Lfunc_begin2         #     jumps to .Ltmp475
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp476-.Lfunc_begin2         # >> Call Site 56 <<
	.uleb128 .Ltmp477-.Ltmp476              #   Call between .Ltmp476 and .Ltmp477
	.uleb128 .Ltmp480-.Lfunc_begin2         #     jumps to .Ltmp480
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp477-.Lfunc_begin2         # >> Call Site 57 <<
	.uleb128 .Ltmp481-.Ltmp477              #   Call between .Ltmp477 and .Ltmp481
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp481-.Lfunc_begin2         # >> Call Site 58 <<
	.uleb128 .Ltmp502-.Ltmp481              #   Call between .Ltmp481 and .Ltmp502
	.uleb128 .Ltmp552-.Lfunc_begin2         #     jumps to .Ltmp552
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp503-.Lfunc_begin2         # >> Call Site 59 <<
	.uleb128 .Ltmp512-.Ltmp503              #   Call between .Ltmp503 and .Ltmp512
	.uleb128 .Ltmp513-.Lfunc_begin2         #     jumps to .Ltmp513
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp514-.Lfunc_begin2         # >> Call Site 60 <<
	.uleb128 .Ltmp523-.Ltmp514              #   Call between .Ltmp514 and .Ltmp523
	.uleb128 .Ltmp524-.Lfunc_begin2         #     jumps to .Ltmp524
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp525-.Lfunc_begin2         # >> Call Site 61 <<
	.uleb128 .Ltmp526-.Ltmp525              #   Call between .Ltmp525 and .Ltmp526
	.uleb128 .Ltmp527-.Lfunc_begin2         #     jumps to .Ltmp527
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp528-.Lfunc_begin2         # >> Call Site 62 <<
	.uleb128 .Ltmp535-.Ltmp528              #   Call between .Ltmp528 and .Ltmp535
	.uleb128 .Ltmp536-.Lfunc_begin2         #     jumps to .Ltmp536
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp537-.Lfunc_begin2         # >> Call Site 63 <<
	.uleb128 .Ltmp540-.Ltmp537              #   Call between .Ltmp537 and .Ltmp540
	.uleb128 .Ltmp552-.Lfunc_begin2         #     jumps to .Ltmp552
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp540-.Lfunc_begin2         # >> Call Site 64 <<
	.uleb128 .Ltmp274-.Ltmp540              #   Call between .Ltmp540 and .Ltmp274
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp274-.Lfunc_begin2         # >> Call Site 65 <<
	.uleb128 .Ltmp291-.Ltmp274              #   Call between .Ltmp274 and .Ltmp291
	.uleb128 .Ltmp606-.Lfunc_begin2         #     jumps to .Ltmp606
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp292-.Lfunc_begin2         # >> Call Site 66 <<
	.uleb128 .Ltmp301-.Ltmp292              #   Call between .Ltmp292 and .Ltmp301
	.uleb128 .Ltmp302-.Lfunc_begin2         #     jumps to .Ltmp302
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp303-.Lfunc_begin2         # >> Call Site 67 <<
	.uleb128 .Ltmp312-.Ltmp303              #   Call between .Ltmp303 and .Ltmp312
	.uleb128 .Ltmp313-.Lfunc_begin2         #     jumps to .Ltmp313
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp314-.Lfunc_begin2         # >> Call Site 68 <<
	.uleb128 .Ltmp323-.Ltmp314              #   Call between .Ltmp314 and .Ltmp323
	.uleb128 .Ltmp324-.Lfunc_begin2         #     jumps to .Ltmp324
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp553-.Lfunc_begin2         # >> Call Site 69 <<
	.uleb128 .Ltmp554-.Ltmp553              #   Call between .Ltmp553 and .Ltmp554
	.uleb128 .Ltmp555-.Lfunc_begin2         #     jumps to .Ltmp555
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp580-.Lfunc_begin2         # >> Call Site 70 <<
	.uleb128 .Ltmp581-.Ltmp580              #   Call between .Ltmp580 and .Ltmp581
	.uleb128 .Ltmp582-.Lfunc_begin2         #     jumps to .Ltmp582
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp565-.Lfunc_begin2         # >> Call Site 71 <<
	.uleb128 .Ltmp566-.Ltmp565              #   Call between .Ltmp565 and .Ltmp566
	.uleb128 .Ltmp567-.Lfunc_begin2         #     jumps to .Ltmp567
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp547-.Lfunc_begin2         # >> Call Site 72 <<
	.uleb128 .Ltmp548-.Ltmp547              #   Call between .Ltmp547 and .Ltmp548
	.uleb128 .Ltmp549-.Lfunc_begin2         #     jumps to .Ltmp549
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp601-.Lfunc_begin2         # >> Call Site 73 <<
	.uleb128 .Ltmp602-.Ltmp601              #   Call between .Ltmp601 and .Ltmp602
	.uleb128 .Ltmp603-.Lfunc_begin2         #     jumps to .Ltmp603
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp577-.Lfunc_begin2         # >> Call Site 74 <<
	.uleb128 .Ltmp578-.Ltmp577              #   Call between .Ltmp577 and .Ltmp578
	.uleb128 .Ltmp579-.Lfunc_begin2         #     jumps to .Ltmp579
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp562-.Lfunc_begin2         # >> Call Site 75 <<
	.uleb128 .Ltmp563-.Ltmp562              #   Call between .Ltmp562 and .Ltmp563
	.uleb128 .Ltmp564-.Lfunc_begin2         #     jumps to .Ltmp564
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp544-.Lfunc_begin2         # >> Call Site 76 <<
	.uleb128 .Ltmp545-.Ltmp544              #   Call between .Ltmp544 and .Ltmp545
	.uleb128 .Ltmp546-.Lfunc_begin2         #     jumps to .Ltmp546
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp598-.Lfunc_begin2         # >> Call Site 77 <<
	.uleb128 .Ltmp599-.Ltmp598              #   Call between .Ltmp598 and .Ltmp599
	.uleb128 .Ltmp600-.Lfunc_begin2         #     jumps to .Ltmp600
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp541-.Lfunc_begin2         # >> Call Site 78 <<
	.uleb128 .Ltmp542-.Ltmp541              #   Call between .Ltmp541 and .Ltmp542
	.uleb128 .Ltmp543-.Lfunc_begin2         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp595-.Lfunc_begin2         # >> Call Site 79 <<
	.uleb128 .Ltmp596-.Ltmp595              #   Call between .Ltmp595 and .Ltmp596
	.uleb128 .Ltmp597-.Lfunc_begin2         #     jumps to .Ltmp597
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp613-.Lfunc_begin2         # >> Call Site 80 <<
	.uleb128 .Ltmp614-.Ltmp613              #   Call between .Ltmp613 and .Ltmp614
	.uleb128 .Ltmp615-.Lfunc_begin2         #     jumps to .Ltmp615
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp610-.Lfunc_begin2         # >> Call Site 81 <<
	.uleb128 .Ltmp611-.Ltmp610              #   Call between .Ltmp610 and .Ltmp611
	.uleb128 .Ltmp612-.Lfunc_begin2         #     jumps to .Ltmp612
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp607-.Lfunc_begin2         # >> Call Site 82 <<
	.uleb128 .Ltmp608-.Ltmp607              #   Call between .Ltmp607 and .Ltmp608
	.uleb128 .Ltmp609-.Lfunc_begin2         #     jumps to .Ltmp609
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp592-.Lfunc_begin2         # >> Call Site 83 <<
	.uleb128 .Ltmp593-.Ltmp592              #   Call between .Ltmp592 and .Ltmp593
	.uleb128 .Ltmp594-.Lfunc_begin2         #     jumps to .Ltmp594
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp583-.Lfunc_begin2         # >> Call Site 84 <<
	.uleb128 .Ltmp584-.Ltmp583              #   Call between .Ltmp583 and .Ltmp584
	.uleb128 .Ltmp585-.Lfunc_begin2         #     jumps to .Ltmp585
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp574-.Lfunc_begin2         # >> Call Site 85 <<
	.uleb128 .Ltmp575-.Ltmp574              #   Call between .Ltmp574 and .Ltmp575
	.uleb128 .Ltmp576-.Lfunc_begin2         #     jumps to .Ltmp576
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp568-.Lfunc_begin2         # >> Call Site 86 <<
	.uleb128 .Ltmp569-.Ltmp568              #   Call between .Ltmp568 and .Ltmp569
	.uleb128 .Ltmp570-.Lfunc_begin2         #     jumps to .Ltmp570
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp559-.Lfunc_begin2         # >> Call Site 87 <<
	.uleb128 .Ltmp560-.Ltmp559              #   Call between .Ltmp559 and .Ltmp560
	.uleb128 .Ltmp561-.Lfunc_begin2         #     jumps to .Ltmp561
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp556-.Lfunc_begin2         # >> Call Site 88 <<
	.uleb128 .Ltmp557-.Ltmp556              #   Call between .Ltmp556 and .Ltmp557
	.uleb128 .Ltmp558-.Lfunc_begin2         #     jumps to .Ltmp558
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp550-.Lfunc_begin2         # >> Call Site 89 <<
	.uleb128 .Ltmp551-.Ltmp550              #   Call between .Ltmp550 and .Ltmp551
	.uleb128 .Ltmp552-.Lfunc_begin2         #     jumps to .Ltmp552
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp616-.Lfunc_begin2         # >> Call Site 90 <<
	.uleb128 .Ltmp617-.Ltmp616              #   Call between .Ltmp616 and .Ltmp617
	.uleb128 .Ltmp618-.Lfunc_begin2         #     jumps to .Ltmp618
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp619-.Lfunc_begin2         # >> Call Site 91 <<
	.uleb128 .Ltmp620-.Ltmp619              #   Call between .Ltmp619 and .Ltmp620
	.uleb128 .Ltmp621-.Lfunc_begin2         #     jumps to .Ltmp621
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp604-.Lfunc_begin2         # >> Call Site 92 <<
	.uleb128 .Ltmp605-.Ltmp604              #   Call between .Ltmp604 and .Ltmp605
	.uleb128 .Ltmp606-.Lfunc_begin2         #     jumps to .Ltmp606
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp478-.Lfunc_begin2         # >> Call Site 93 <<
	.uleb128 .Ltmp479-.Ltmp478              #   Call between .Ltmp478 and .Ltmp479
	.uleb128 .Ltmp480-.Lfunc_begin2         #     jumps to .Ltmp480
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp172-.Lfunc_begin2         # >> Call Site 94 <<
	.uleb128 .Ltmp179-.Ltmp172              #   Call between .Ltmp172 and .Ltmp179
	.uleb128 .Ltmp180-.Lfunc_begin2         #     jumps to .Ltmp180
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp179-.Lfunc_begin2         # >> Call Site 95 <<
	.uleb128 .Lfunc_end5-.Ltmp179           #   Call between .Ltmp179 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN10ExportGold12writeVarFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_PKd # -- Begin function _ZN10ExportGold12writeVarFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_PKd
	.p2align	5
	.type	_ZN10ExportGold12writeVarFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_PKd,@function
_ZN10ExportGold12writeVarFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_PKd: # @_ZN10ExportGold12writeVarFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_PKd
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
# %bb.0:
	addi.d	$sp, $sp, -752
	.cfi_def_cfa_offset 752
	st.d	$ra, $sp, 744                   # 8-byte Folded Spill
	st.d	$fp, $sp, 736                   # 8-byte Folded Spill
	st.d	$s0, $sp, 728                   # 8-byte Folded Spill
	st.d	$s1, $sp, 720                   # 8-byte Folded Spill
	st.d	$s2, $sp, 712                   # 8-byte Folded Spill
	st.d	$s3, $sp, 704                   # 8-byte Folded Spill
	st.d	$s4, $sp, 696                   # 8-byte Folded Spill
	st.d	$s5, $sp, 688                   # 8-byte Folded Spill
	st.d	$s6, $sp, 680                   # 8-byte Folded Spill
	st.d	$s7, $sp, 672                   # 8-byte Folded Spill
	st.d	$s8, $sp, 664                   # 8-byte Folded Spill
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
	move	$s1, $a3
	move	$s0, $a2
	move	$s3, $a1
	move	$fp, $a0
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1Ev)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB6_46
# %bb.1:
	ld.d	$s2, $s3, 0
	ld.d	$s3, $s3, 8
	addi.d	$s4, $sp, 104
	st.d	$s4, $sp, 88
	st.d	$zero, $sp, 96
	st.b	$zero, $sp, 104
	addi.d	$a1, $s3, 1
.Ltmp622:
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp623:
# %bb.2:
	ld.d	$a0, $sp, 96
	addi.w	$a1, $zero, -1
	lu52i.d	$s5, $a1, 1023
	sub.d	$a0, $s5, $a0
	bltu	$a0, $s3, .LBB6_196
# %bb.3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
.Ltmp624:
	addi.d	$a0, $sp, 88
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp625:
# %bb.4:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
	ld.d	$a0, $sp, 96
	beq	$a0, $s5, .LBB6_196
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
.Ltmp626:
	pcalau12i	$a0, %pc_hi20(.L.str.30)
	addi.d	$a1, $a0, %pc_lo12(.L.str.30)
	addi.d	$a0, $sp, 88
	ori	$a2, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp627:
# %bb.6:                                # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
	ld.d	$a0, $sp, 96
	ld.d	$a2, $s0, 8
	sub.d	$a0, $s5, $a0
	bltu	$a0, $a2, .LBB6_206
# %bb.7:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
	ld.d	$a1, $s0, 0
.Ltmp628:
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp629:
# %bb.8:                                # %.noexc86
	addi.d	$s2, $sp, 136
	st.d	$s2, $sp, 120
	ld.d	$a1, $a0, 0
	addi.d	$s3, $a0, 16
	beq	$a1, $s3, .LBB6_10
# %bb.9:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 136
	ld.d	$s5, $a0, 8
	st.d	$a1, $sp, 120
	b	.LBB6_11
.LBB6_10:
	ld.d	$s5, $a0, 8
	addi.d	$a2, $s5, 1
	move	$s6, $a0
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s6
.LBB6_11:
	st.d	$s3, $a0, 0
	ld.d	$a2, $sp, 88
	st.d	$s5, $sp, 128
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
	beq	$a2, $s4, .LBB6_13
# %bb.12:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i87
	ld.d	$a0, $sp, 104
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_13:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a1, $sp, 120
	addi.d	$a0, $sp, 160
.Ltmp630:
	ori	$a2, $zero, 16
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
	move	$a1, $a0
.Ltmp631:
# %bb.14:                               # %.noexc88
	ld.d	$a0, $sp, 152
	ld.d	$a0, $a0, -24
	addi.d	$a2, $sp, 152
	add.d	$a0, $a2, $a0
	beqz	$a1, .LBB6_16
# %bb.15:
	move	$a1, $zero
	b	.LBB6_17
.LBB6_16:
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 4
.LBB6_17:
.Ltmp632:
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.Ltmp633:
# %bb.18:                               # %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE4openEPKcSt13_Ios_Openmode.exit
	ld.d	$a0, $sp, 152
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 152
	add.d	$a0, $a1, $a0
	ld.w	$a0, $a0, 32
	bnez	$a0, .LBB6_208
# %bb.19:
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB6_21
# %bb.20:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_21:
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB6_46
# %bb.22:
	ld.d	$a0, $sp, 152
	ld.d	$a1, $a0, -24
	addi.d	$a3, $sp, 152
	add.d	$a1, $a3, $a1
	ld.wu	$a2, $a1, 24
	addi.w	$a4, $zero, -261
	lu32i.d	$a4, 0
	and	$a2, $a2, $a4
	addi.d	$a2, $a2, 256
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	ld.d	$a1, $s0, 0
	ld.d	$a2, $s0, 8
	add.d	$a0, $a3, $a0
	ori	$a3, $zero, 5
	st.d	$a3, $a0, 8
.Ltmp643:
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp644:
# %bb.23:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit106
	move	$s0, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB6_204
# %bb.24:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB6_26
# %bb.25:
	ld.bu	$a0, $s2, 67
	b	.LBB6_28
.LBB6_26:
.Ltmp645:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp646:
# %bb.27:                               # %.noexc211
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp647:
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp648:
.LBB6_28:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp649:
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp650:
# %bb.29:                               # %.noexc213
.Ltmp651:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp652:
# %bb.30:                               # %_ZNSolsEPFRSoS_E.exit108
.Ltmp653:
	pcalau12i	$a0, %pc_hi20(.L.str.24)
	addi.d	$a1, $a0, %pc_lo12(.L.str.24)
	addi.d	$a0, $sp, 152
	ori	$a2, $zero, 4
	addi.d	$s0, $sp, 152
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp654:
# %bb.31:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit110
	ld.d	$a0, $sp, 152
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s0, $a0, 240
	beqz	$s0, .LBB6_204
# %bb.32:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i216
	ld.bu	$a0, $s0, 56
	beqz	$a0, .LBB6_34
# %bb.33:
	ld.bu	$a0, $s0, 67
	b	.LBB6_36
.LBB6_34:
.Ltmp655:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp656:
# %bb.35:                               # %.noexc221
	ld.d	$a0, $s0, 0
	ld.d	$a2, $a0, 48
.Ltmp657:
	ori	$a1, $zero, 10
	move	$a0, $s0
	jirl	$ra, $a2, 0
.Ltmp658:
.LBB6_36:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i218
.Ltmp659:
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp660:
# %bb.37:                               # %.noexc223
.Ltmp661:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp662:
# %bb.38:
	ld.d	$a0, $sp, 152
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 152
	add.d	$a0, $a1, $a0
	ori	$a1, $zero, 10
	st.d	$a1, $a0, 16
.Ltmp663:
	addi.d	$a0, $sp, 152
	ori	$a1, $zero, 1
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp664:
# %bb.39:
	move	$s0, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s2, $a0, 240
	beqz	$s2, .LBB6_204
# %bb.40:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i227
	ld.bu	$a0, $s2, 56
	beqz	$a0, .LBB6_42
# %bb.41:
	ld.bu	$a0, $s2, 67
	b	.LBB6_44
.LBB6_42:
.Ltmp665:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp666:
# %bb.43:                               # %.noexc232
	ld.d	$a0, $s2, 0
	ld.d	$a2, $a0, 48
.Ltmp667:
	ori	$a1, $zero, 10
	move	$a0, $s2
	jirl	$ra, $a2, 0
.Ltmp668:
.LBB6_44:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i229
.Ltmp669:
	ext.w.b	$a1, $a0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp670:
# %bb.45:                               # %.noexc234
.Ltmp671:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp672:
.LBB6_46:                               # %_ZNSolsEPFRSoS_E.exit115
	ld.d	$a0, $fp, 16
	ld.d	$s4, $fp, 8
	sub.d	$s8, $a0, $s4
	slli.d	$s0, $s8, 30
	srai.d	$s3, $s0, 32
	srli.d	$a0, $s3, 60
	bnez	$a0, .LBB6_184
# %bb.47:                               # %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
	ld.d	$a0, $fp, 40
	st.d	$a0, $sp, 56                    # 8-byte Folded Spill
	ld.d	$s6, $fp, 32
	ld.d	$s7, $fp, 64
	ld.d	$a0, $fp, 56
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	st.d	$s7, $sp, 32                    # 8-byte Folded Spill
	beqz	$s0, .LBB6_51
# %bb.48:
	srai.d	$s2, $s0, 29
.Ltmp673:
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp674:
# %bb.49:                               # %.noexc117
	move	$s5, $a0
	alsl.d	$a0, $s3, $a0, 3
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$zero, $s5, 0
	beq	$s0, $a0, .LBB6_52
# %bb.50:                               # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
	addi.d	$a0, $s5, 8
	addi.d	$a2, $s2, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB6_52
.LBB6_51:
	st.d	$zero, $sp, 40                  # 8-byte Folded Spill
	move	$s5, $zero
.LBB6_52:                               # %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
	ld.w	$s0, $fp, 176
	addi.w	$s7, $zero, -1
	bge	$s7, $s0, .LBB6_186
# %bb.53:                               # %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i118
	beqz	$s0, .LBB6_58
# %bb.54:
	slli.d	$s3, $s0, 3
.Ltmp675:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp676:
# %bb.55:                               # %.noexc124
	move	$s2, $a0
	alsl.d	$a0, $s0, $a0, 3
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$zero, $s2, 0
	beq	$s0, $a0, .LBB6_57
# %bb.56:                               # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i120
	addi.d	$a0, $s2, 8
	addi.d	$a2, $s3, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB6_57:                               # %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit125
	srli.d	$a2, $s8, 2
	addi.w	$a1, $a2, 0
	ori	$a0, $zero, 1
	bge	$a1, $a0, .LBB6_59
	b	.LBB6_66
.LBB6_58:
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	move	$s2, $zero
	srli.d	$a2, $s8, 2
	addi.w	$a1, $a2, 0
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB6_66
.LBB6_59:                               # %.lr.ph.preheader
	bstrpick.d	$a0, $a2, 30, 0
	ori	$a3, $zero, 2
	bgeu	$a0, $a3, .LBB6_61
# %bb.60:
	move	$a2, $zero
	b	.LBB6_64
.LBB6_61:                               # %vector.ph
	bstrpick.d	$a2, $a2, 30, 1
	slli.d	$a2, $a2, 1
	addi.d	$a3, $s4, 4
	addi.d	$a4, $s5, 8
	move	$a5, $a2
	.p2align	4, , 16
.LBB6_62:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a6, $a3, -4
	ld.w	$a7, $a3, 0
	slli.d	$a6, $a6, 3
	slli.d	$a7, $a7, 3
	fldx.d	$fa0, $s1, $a6
	fldx.d	$fa1, $s1, $a7
	fst.d	$fa0, $a4, -8
	fst.d	$fa1, $a4, 0
	addi.d	$a3, $a3, 8
	addi.d	$a5, $a5, -2
	addi.d	$a4, $a4, 16
	bnez	$a5, .LBB6_62
# %bb.63:                               # %middle.block
	beq	$a0, $a2, .LBB6_66
.LBB6_64:                               # %.lr.ph.preheader446
	alsl.d	$a3, $a2, $s4, 2
	alsl.d	$a4, $a2, $s5, 3
	sub.d	$a0, $a2, $a0
	.p2align	4, , 16
.LBB6_65:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $a3, 0
	slli.d	$a2, $a2, 3
	fldx.d	$fa0, $s1, $a2
	fst.d	$fa0, $a4, 0
	addi.d	$a3, $a3, 4
	addi.d	$a0, $a0, 1
	addi.d	$a4, $a4, 8
	bnez	$a0, .LBB6_65
.LBB6_66:                               # %._crit_edge
	ld.d	$a3, $fp, 104
.Ltmp677:
	move	$a0, $s5
	move	$a2, $s2
	pcaddu18i	$ra, %call36(_ZN8Parallel7gathervIdEEvPKT_iPS1_PKi)
	jirl	$ra, $ra, 0
.Ltmp678:
# %bb.67:
	st.d	$s2, $sp, 72                    # 8-byte Folded Spill
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB6_88
# %bb.68:
	ld.w	$a0, $fp, 176
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB6_88
# %bb.69:
.Ltmp679:
	pcalau12i	$a0, %pc_hi20(.L.str.27)
	addi.d	$a1, $a0, %pc_lo12(.L.str.27)
	addi.d	$a0, $sp, 152
	ori	$a2, $zero, 5
	addi.d	$s0, $sp, 152
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp680:
# %bb.70:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit127
	ld.d	$a0, $sp, 152
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB6_198
# %bb.71:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i238
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB6_73
# %bb.72:
	ld.bu	$a0, $s3, 67
	b	.LBB6_75
.LBB6_73:
.Ltmp681:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp682:
# %bb.74:                               # %.noexc243
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp683:
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp684:
.LBB6_75:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i240
.Ltmp685:
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp686:
# %bb.76:                               # %.noexc245
.Ltmp687:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp688:
# %bb.77:                               # %_ZNSolsEPFRSoS_E.exit129.preheader
	ld.w	$a0, $fp, 176
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB6_88
# %bb.78:                               # %.lr.ph395.preheader
	move	$s2, $zero
	addi.d	$s8, $sp, 168
	ori	$s0, $zero, 12
	ld.d	$s5, $sp, 72                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_79:                               # %.lr.ph395
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 152
	ld.d	$a0, $a0, -24
	fld.d	$fa0, $s5, 0
	stx.d	$s0, $s8, $a0
.Ltmp689:
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp690:
# %bb.80:                               # %_ZNSolsEd.exit
                                        #   in Loop: Header=BB6_79 Depth=1
	move	$s3, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s3, $a0
	ld.d	$s4, $a0, 240
	beqz	$s4, .LBB6_178
# %bb.81:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i249
                                        #   in Loop: Header=BB6_79 Depth=1
	ld.bu	$a0, $s4, 56
	beqz	$a0, .LBB6_83
# %bb.82:                               #   in Loop: Header=BB6_79 Depth=1
	ld.bu	$a0, $s4, 67
	b	.LBB6_85
	.p2align	4, , 16
.LBB6_83:                               #   in Loop: Header=BB6_79 Depth=1
.Ltmp691:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp692:
# %bb.84:                               # %.noexc254
                                        #   in Loop: Header=BB6_79 Depth=1
	ld.d	$a0, $s4, 0
	ld.d	$a2, $a0, 48
.Ltmp693:
	ori	$a1, $zero, 10
	move	$a0, $s4
	jirl	$ra, $a2, 0
.Ltmp694:
.LBB6_85:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i251
                                        #   in Loop: Header=BB6_79 Depth=1
.Ltmp695:
	ext.w.b	$a1, $a0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp696:
# %bb.86:                               # %.noexc256
                                        #   in Loop: Header=BB6_79 Depth=1
.Ltmp697:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp698:
# %bb.87:                               # %_ZNSolsEPFRSoS_E.exit133
                                        #   in Loop: Header=BB6_79 Depth=1
	ld.w	$a0, $fp, 176
	addi.d	$s2, $s2, 1
	addi.d	$s5, $s5, 8
	blt	$s2, $a0, .LBB6_79
.LBB6_88:                               # %.loopexit387
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	sub.d	$s6, $a0, $s6
	slli.d	$s0, $s6, 30
	srai.d	$s2, $s0, 32
	srli.d	$a0, $s2, 60
	bnez	$a0, .LBB6_188
# %bb.89:                               # %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i134
	beqz	$s0, .LBB6_93
# %bb.90:
	srai.d	$s4, $s0, 29
.Ltmp700:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp701:
# %bb.91:                               # %.noexc140
	move	$s8, $a0
	alsl.d	$a0, $s2, $a0, 3
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$zero, $s8, 0
	beq	$s0, $a0, .LBB6_94
# %bb.92:                               # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i136
	addi.d	$a0, $s8, 8
	addi.d	$a2, $s4, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB6_94
.LBB6_93:
	move	$s8, $zero
	st.d	$zero, $sp, 8                   # 8-byte Folded Spill
.LBB6_94:                               # %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit141
	ld.w	$s0, $fp, 180
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
	bge	$s7, $s0, .LBB6_190
# %bb.95:                               # %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i142
	beqz	$s0, .LBB6_100
# %bb.96:
	slli.d	$s5, $s0, 3
.Ltmp702:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp703:
# %bb.97:                               # %.noexc148
	move	$s3, $a0
	alsl.d	$a0, $s0, $a0, 3
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$zero, $s3, 0
	beq	$s0, $a0, .LBB6_99
# %bb.98:                               # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i144
	addi.d	$a0, $s3, 8
	addi.d	$a2, $s5, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB6_99:                               # %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit149
	srli.d	$a3, $s6, 2
	addi.w	$a1, $a3, 0
	ori	$a0, $zero, 1
	bge	$a1, $a0, .LBB6_101
	b	.LBB6_108
.LBB6_100:
	move	$s3, $zero
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	srli.d	$a3, $s6, 2
	addi.w	$a1, $a3, 0
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB6_108
.LBB6_101:                              # %.lr.ph397
	ld.d	$a2, $fp, 32
	bstrpick.d	$a0, $a3, 30, 0
	ori	$a4, $zero, 2
	bgeu	$a0, $a4, .LBB6_103
# %bb.102:
	move	$a3, $zero
	b	.LBB6_106
.LBB6_103:                              # %vector.ph426
	bstrpick.d	$a3, $a3, 30, 1
	slli.d	$a3, $a3, 1
	addi.d	$a4, $a2, 4
	addi.d	$a5, $s8, 8
	move	$a6, $a3
	.p2align	4, , 16
.LBB6_104:                              # %vector.body429
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a4, -4
	ld.w	$t0, $a4, 0
	slli.d	$a7, $a7, 3
	slli.d	$t0, $t0, 3
	fldx.d	$fa0, $s1, $a7
	fldx.d	$fa1, $s1, $t0
	fst.d	$fa0, $a5, -8
	fst.d	$fa1, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a6, $a6, -2
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB6_104
# %bb.105:                              # %middle.block432
	beq	$a0, $a3, .LBB6_108
.LBB6_106:                              # %scalar.ph424.preheader
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a4, $a3, $s8, 3
	sub.d	$a0, $a3, $a0
	.p2align	4, , 16
.LBB6_107:                              # %scalar.ph424
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	slli.d	$a3, $a3, 3
	fldx.d	$fa0, $s1, $a3
	fst.d	$fa0, $a4, 0
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, 1
	addi.d	$a4, $a4, 8
	bnez	$a0, .LBB6_107
.LBB6_108:                              # %._crit_edge398
	ld.d	$a3, $fp, 128
.Ltmp704:
	move	$a0, $s8
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZN8Parallel7gathervIdEEvPKT_iPS1_PKi)
	jirl	$ra, $ra, 0
.Ltmp705:
# %bb.109:
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB6_130
# %bb.110:
	ld.w	$a0, $fp, 180
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB6_130
# %bb.111:
.Ltmp706:
	pcalau12i	$a0, %pc_hi20(.L.str.28)
	addi.d	$a1, $a0, %pc_lo12(.L.str.28)
	addi.d	$a0, $sp, 152
	ori	$a2, $zero, 5
	addi.d	$s0, $sp, 152
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp707:
# %bb.112:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit151
	ld.d	$a0, $sp, 152
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s5, $a0, 240
	beqz	$s5, .LBB6_200
# %bb.113:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i260
	ld.bu	$a0, $s5, 56
	beqz	$a0, .LBB6_115
# %bb.114:
	ld.bu	$a0, $s5, 67
	b	.LBB6_117
.LBB6_115:
.Ltmp708:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp709:
# %bb.116:                              # %.noexc265
	ld.d	$a0, $s5, 0
	ld.d	$a2, $a0, 48
.Ltmp710:
	ori	$a1, $zero, 10
	move	$a0, $s5
	jirl	$ra, $a2, 0
.Ltmp711:
.LBB6_117:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i262
.Ltmp712:
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp713:
# %bb.118:                              # %.noexc267
.Ltmp714:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp715:
# %bb.119:                              # %_ZNSolsEPFRSoS_E.exit153.preheader
	ld.w	$a0, $fp, 180
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB6_130
# %bb.120:                              # %.lr.ph402.preheader
	move	$s2, $zero
	addi.d	$s8, $sp, 168
	ori	$s0, $zero, 12
	move	$s4, $s3
	.p2align	4, , 16
.LBB6_121:                              # %.lr.ph402
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 152
	ld.d	$a0, $a0, -24
	fld.d	$fa0, $s4, 0
	stx.d	$s0, $s8, $a0
.Ltmp716:
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp717:
# %bb.122:                              # %_ZNSolsEd.exit156
                                        #   in Loop: Header=BB6_121 Depth=1
	move	$s5, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s5, $a0
	ld.d	$s6, $a0, 240
	beqz	$s6, .LBB6_180
# %bb.123:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i271
                                        #   in Loop: Header=BB6_121 Depth=1
	ld.bu	$a0, $s6, 56
	beqz	$a0, .LBB6_125
# %bb.124:                              #   in Loop: Header=BB6_121 Depth=1
	ld.bu	$a0, $s6, 67
	b	.LBB6_127
	.p2align	4, , 16
.LBB6_125:                              #   in Loop: Header=BB6_121 Depth=1
.Ltmp718:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp719:
# %bb.126:                              # %.noexc276
                                        #   in Loop: Header=BB6_121 Depth=1
	ld.d	$a0, $s6, 0
	ld.d	$a2, $a0, 48
.Ltmp720:
	ori	$a1, $zero, 10
	move	$a0, $s6
	jirl	$ra, $a2, 0
.Ltmp721:
.LBB6_127:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i273
                                        #   in Loop: Header=BB6_121 Depth=1
.Ltmp722:
	ext.w.b	$a1, $a0
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp723:
# %bb.128:                              # %.noexc278
                                        #   in Loop: Header=BB6_121 Depth=1
.Ltmp724:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp725:
# %bb.129:                              # %_ZNSolsEPFRSoS_E.exit158
                                        #   in Loop: Header=BB6_121 Depth=1
	ld.w	$a0, $fp, 180
	addi.d	$s2, $s2, 1
	addi.d	$s4, $s4, 8
	blt	$s2, $a0, .LBB6_121
.LBB6_130:                              # %.loopexit
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	sub.d	$s2, $a0, $a1
	slli.d	$s0, $s2, 30
	srai.d	$s4, $s0, 32
	srli.d	$a0, $s4, 60
	bnez	$a0, .LBB6_192
# %bb.131:                              # %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i159
	beqz	$s0, .LBB6_135
# %bb.132:
	srai.d	$s6, $s0, 29
.Ltmp727:
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp728:
# %bb.133:                              # %.noexc165
	move	$s5, $a0
	alsl.d	$s8, $s4, $a0, 3
	ori	$a0, $zero, 0
	lu32i.d	$a0, 1
	st.d	$zero, $s5, 0
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	beq	$s0, $a0, .LBB6_136
# %bb.134:                              # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i161
	addi.d	$a0, $s5, 8
	addi.d	$a2, $s6, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB6_136
.LBB6_135:
	move	$s5, $zero
	move	$s8, $zero
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
.LBB6_136:                              # %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit166
	ld.w	$s0, $fp, 184
	bge	$s7, $s0, .LBB6_194
# %bb.137:                              # %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i167
	beqz	$s0, .LBB6_141
# %bb.138:
	slli.d	$s7, $s0, 3
.Ltmp729:
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp730:
# %bb.139:                              # %.noexc173
	move	$s6, $a0
	alsl.d	$a0, $s0, $a0, 3
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.d	$zero, $s6, 0
	beq	$s0, $a0, .LBB6_142
# %bb.140:                              # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i169
	addi.d	$a0, $s6, 8
	addi.d	$a2, $s7, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	b	.LBB6_142
.LBB6_141:
	move	$s6, $zero
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
.LBB6_142:                              # %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit174
	srli.d	$a3, $s2, 2
	addi.w	$a1, $a3, 0
	ori	$a0, $zero, 1
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	blt	$a1, $a0, .LBB6_150
# %bb.143:                              # %.lr.ph404
	ld.d	$a2, $fp, 56
	bstrpick.d	$a0, $a3, 30, 0
	ori	$a4, $zero, 2
	bgeu	$a0, $a4, .LBB6_145
# %bb.144:
	move	$a3, $zero
	b	.LBB6_148
.LBB6_145:                              # %vector.ph437
	bstrpick.d	$a3, $a3, 30, 1
	slli.d	$a3, $a3, 1
	addi.d	$a4, $a2, 4
	addi.d	$a5, $s5, 8
	move	$a6, $a3
	.p2align	4, , 16
.LBB6_146:                              # %vector.body440
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a7, $a4, -4
	ld.w	$t0, $a4, 0
	slli.d	$a7, $a7, 3
	slli.d	$t0, $t0, 3
	fldx.d	$fa0, $s1, $a7
	fldx.d	$fa1, $s1, $t0
	fst.d	$fa0, $a5, -8
	fst.d	$fa1, $a5, 0
	addi.d	$a4, $a4, 8
	addi.d	$a6, $a6, -2
	addi.d	$a5, $a5, 16
	bnez	$a6, .LBB6_146
# %bb.147:                              # %middle.block443
	beq	$a0, $a3, .LBB6_150
.LBB6_148:                              # %scalar.ph435.preheader
	alsl.d	$a2, $a3, $a2, 2
	alsl.d	$a4, $a3, $s5, 3
	sub.d	$a0, $a3, $a0
	.p2align	4, , 16
.LBB6_149:                              # %scalar.ph435
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a3, $a2, 0
	slli.d	$a3, $a3, 3
	fldx.d	$fa0, $s1, $a3
	fst.d	$fa0, $a4, 0
	addi.d	$a2, $a2, 4
	addi.d	$a0, $a0, 1
	addi.d	$a4, $a4, 8
	bnez	$a0, .LBB6_149
.LBB6_150:                              # %._crit_edge405
	ld.d	$a3, $fp, 152
.Ltmp731:
	move	$a0, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(_ZN8Parallel7gathervIdEEvPKT_iPS1_PKi)
	jirl	$ra, $ra, 0
.Ltmp732:
# %bb.151:
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB6_173
# %bb.152:
	ld.w	$a1, $fp, 184
	ori	$a2, $zero, 1
	blt	$a1, $a2, .LBB6_173
# %bb.153:
.Ltmp733:
	pcalau12i	$a0, %pc_hi20(.L.str.29)
	addi.d	$a1, $a0, %pc_lo12(.L.str.29)
	addi.d	$a0, $sp, 152
	ori	$a2, $zero, 6
	addi.d	$s0, $sp, 152
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp734:
# %bb.154:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit176
	ld.d	$a0, $sp, 152
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s1, $a0, 240
	beqz	$s1, .LBB6_202
# %bb.155:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i282
	ld.bu	$a0, $s1, 56
	beqz	$a0, .LBB6_157
# %bb.156:
	ld.bu	$a0, $s1, 67
	b	.LBB6_159
.LBB6_157:
.Ltmp735:
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp736:
# %bb.158:                              # %.noexc287
	ld.d	$a0, $s1, 0
	ld.d	$a2, $a0, 48
.Ltmp737:
	ori	$a1, $zero, 10
	move	$a0, $s1
	jirl	$ra, $a2, 0
.Ltmp738:
.LBB6_159:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i284
.Ltmp739:
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp740:
# %bb.160:                              # %.noexc289
.Ltmp741:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp742:
# %bb.161:                              # %_ZNSolsEPFRSoS_E.exit178.preheader
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	ld.w	$a0, $fp, 184
	ori	$a1, $zero, 1
	blt	$a0, $a1, .LBB6_172
# %bb.162:                              # %.lr.ph409.preheader
	move	$s2, $zero
	addi.d	$s0, $sp, 168
	ori	$s8, $zero, 12
	move	$s4, $s6
	.p2align	4, , 16
.LBB6_163:                              # %.lr.ph409
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $sp, 152
	ld.d	$a0, $a0, -24
	fld.d	$fa0, $s4, 0
	stx.d	$s8, $s0, $a0
.Ltmp743:
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp744:
# %bb.164:                              # %_ZNSolsEd.exit181
                                        #   in Loop: Header=BB6_163 Depth=1
	move	$s1, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s1, $a0
	ld.d	$s7, $a0, 240
	beqz	$s7, .LBB6_182
# %bb.165:                              # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i293
                                        #   in Loop: Header=BB6_163 Depth=1
	ld.bu	$a0, $s7, 56
	beqz	$a0, .LBB6_167
# %bb.166:                              #   in Loop: Header=BB6_163 Depth=1
	ld.bu	$a0, $s7, 67
	b	.LBB6_169
	.p2align	4, , 16
.LBB6_167:                              #   in Loop: Header=BB6_163 Depth=1
.Ltmp745:
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp746:
# %bb.168:                              # %.noexc298
                                        #   in Loop: Header=BB6_163 Depth=1
	ld.d	$a0, $s7, 0
	ld.d	$a2, $a0, 48
.Ltmp747:
	ori	$a1, $zero, 10
	move	$a0, $s7
	jirl	$ra, $a2, 0
.Ltmp748:
.LBB6_169:                              # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i295
                                        #   in Loop: Header=BB6_163 Depth=1
.Ltmp749:
	ext.w.b	$a1, $a0
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp750:
# %bb.170:                              # %.noexc300
                                        #   in Loop: Header=BB6_163 Depth=1
.Ltmp751:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp752:
# %bb.171:                              # %_ZNSolsEPFRSoS_E.exit183
                                        #   in Loop: Header=BB6_163 Depth=1
	ld.w	$a0, $fp, 184
	addi.d	$s2, $s2, 1
	addi.d	$s4, $s4, 8
	blt	$s2, $a0, .LBB6_163
.LBB6_172:                              # %thread-pre-split
	ld.d	$a0, $sp, 80                    # 8-byte Folded Reload
	ld.w	$a0, $a0, 0
	ld.d	$s0, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 24                    # 8-byte Folded Reload
.LBB6_173:
	bnez	$a0, .LBB6_177
# %bb.174:
	addi.d	$a0, $sp, 160
.Ltmp754:
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv)
	jirl	$ra, $ra, 0
.Ltmp755:
# %bb.175:                              # %.noexc185
	bnez	$a0, .LBB6_177
# %bb.176:
	ld.d	$a0, $sp, 152
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 152
	add.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 4
.Ltmp756:
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.Ltmp757:
.LBB6_177:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit196
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s6
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	sub.d	$a1, $s8, $s5
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s3
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a0, $s4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 680                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 688                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 696                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 704                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 712                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 720                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 728                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 736                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 744                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 752
	ret
.LBB6_178:
.Ltmp783:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp784:
# %bb.179:                              # %.noexc253
.LBB6_180:
.Ltmp771:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp772:
# %bb.181:                              # %.noexc275
.LBB6_182:
.Ltmp759:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp760:
# %bb.183:                              # %.noexc297
.LBB6_184:
.Ltmp792:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp793:
# %bb.185:                              # %.noexc116
.LBB6_186:
.Ltmp789:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp790:
# %bb.187:                              # %.noexc123
.LBB6_188:
.Ltmp780:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp781:
# %bb.189:                              # %.noexc139
.LBB6_190:
.Ltmp777:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp778:
# %bb.191:                              # %.noexc147
.LBB6_192:
.Ltmp768:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp769:
# %bb.193:                              # %.noexc164
.LBB6_194:
.Ltmp765:
	pcalau12i	$a0, %pc_hi20(.L.str.33)
	addi.d	$a0, $a0, %pc_lo12(.L.str.33)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp766:
# %bb.195:                              # %.noexc172
.LBB6_196:                              # %.invoke.i.i
.Ltmp801:
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp802:
# %bb.197:                              # %.cont.i.i
.LBB6_198:
.Ltmp786:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp787:
# %bb.199:                              # %.noexc242
.LBB6_200:
.Ltmp774:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp775:
# %bb.201:                              # %.noexc264
.LBB6_202:
.Ltmp762:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp763:
# %bb.203:                              # %.noexc286
.LBB6_204:                              # %.invoke
.Ltmp795:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp796:
# %bb.205:                              # %.cont
.LBB6_206:
.Ltmp798:
	pcalau12i	$a0, %pc_hi20(.L.str.32)
	addi.d	$a0, $a0, %pc_lo12(.L.str.32)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp799:
# %bb.207:                              # %.noexc
.LBB6_208:
.Ltmp634:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	ori	$a2, $zero, 17
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp635:
# %bb.209:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a1, $sp, 120
	ld.d	$a2, $sp, 128
.Ltmp636:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp637:
# %bb.210:                              # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
.Ltmp638:
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	ori	$a2, $zero, 12
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp639:
# %bb.211:                              # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit93
.Ltmp640:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp641:
# %bb.212:                              # %_ZNSolsEPFRSoS_E.exit
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB6_213:
.Ltmp758:
	b	.LBB6_230
.LBB6_214:
.Ltmp800:
	b	.LBB6_224
.LBB6_215:
.Ltmp642:
	ld.d	$a2, $sp, 120
	move	$fp, $a0
	beq	$a2, $s2, .LBB6_252
# %bb.216:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i98
	ld.d	$a0, $sp, 136
	b	.LBB6_226
.LBB6_217:
.Ltmp767:
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	move	$fp, $a0
	b	.LBB6_238
.LBB6_218:
.Ltmp770:
	b	.LBB6_241
.LBB6_219:
.Ltmp779:
	move	$fp, $a0
	b	.LBB6_243
.LBB6_220:
.Ltmp782:
	b	.LBB6_246
.LBB6_221:
.Ltmp791:
	move	$fp, $a0
	b	.LBB6_249
.LBB6_222:
.Ltmp794:
	b	.LBB6_228
.LBB6_223:
.Ltmp803:
.LBB6_224:
	ld.d	$a2, $sp, 88
	move	$fp, $a0
	beq	$a2, $s4, .LBB6_252
# %bb.225:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95
	ld.d	$a0, $sp, 104
.LBB6_226:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit208
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	b	.LBB6_251
.LBB6_227:
.Ltmp797:
.LBB6_228:
	move	$fp, $a0
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB6_229:                              # %.thread372
.Ltmp764:
.LBB6_230:                              # %.thread367
	st.d	$s8, $sp, 24                    # 8-byte Folded Spill
	b	.LBB6_237
.LBB6_231:
.Ltmp776:
	b	.LBB6_241
.LBB6_232:
.Ltmp788:
	move	$fp, $a0
	b	.LBB6_248
.LBB6_233:                              # %.thread367.loopexit.split-lp
.Ltmp761:
	b	.LBB6_237
.LBB6_234:                              # %.loopexit.split-lp
.Ltmp773:
	b	.LBB6_241
.LBB6_235:                              # %.loopexit.split-lp389
.Ltmp785:
	b	.LBB6_246
.LBB6_236:                              # %.thread367.loopexit
.Ltmp753:
.LBB6_237:                              # %.thread367
	move	$fp, $a0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s6
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_238:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit198
	beqz	$s5, .LBB6_242
# %bb.239:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s5
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB6_242
.LBB6_240:                              # %.loopexit383
.Ltmp726:
.LBB6_241:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit200.thread
	move	$fp, $a0
.LBB6_242:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit200.thread
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s3
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_243:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit202
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	beqz	$a0, .LBB6_247
# %bb.244:
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB6_247
.LBB6_245:                              # %.loopexit388
.Ltmp699:
.LBB6_246:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit204.thread
	move	$fp, $a0
.LBB6_247:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit204.thread
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
.LBB6_248:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit204.thread
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_249:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit206
	beqz	$s5, .LBB6_252
# %bb.250:
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s5
	move	$a0, $s5
.LBB6_251:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit208
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_252:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit208
	addi.d	$a0, $sp, 152
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN10ExportGold12writeVarFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_PKd, .Lfunc_end6-_ZN10ExportGold12writeVarFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_PKd
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp622-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp622
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp622-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp627-.Ltmp622              #   Call between .Ltmp622 and .Ltmp627
	.uleb128 .Ltmp803-.Lfunc_begin3         #     jumps to .Ltmp803
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp628-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Ltmp629-.Ltmp628              #   Call between .Ltmp628 and .Ltmp629
	.uleb128 .Ltmp800-.Lfunc_begin3         #     jumps to .Ltmp800
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp629-.Lfunc_begin3         # >> Call Site 4 <<
	.uleb128 .Ltmp630-.Ltmp629              #   Call between .Ltmp629 and .Ltmp630
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp630-.Lfunc_begin3         # >> Call Site 5 <<
	.uleb128 .Ltmp633-.Ltmp630              #   Call between .Ltmp630 and .Ltmp633
	.uleb128 .Ltmp642-.Lfunc_begin3         #     jumps to .Ltmp642
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp633-.Lfunc_begin3         # >> Call Site 6 <<
	.uleb128 .Ltmp643-.Ltmp633              #   Call between .Ltmp633 and .Ltmp643
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp643-.Lfunc_begin3         # >> Call Site 7 <<
	.uleb128 .Ltmp672-.Ltmp643              #   Call between .Ltmp643 and .Ltmp672
	.uleb128 .Ltmp797-.Lfunc_begin3         #     jumps to .Ltmp797
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp673-.Lfunc_begin3         # >> Call Site 8 <<
	.uleb128 .Ltmp674-.Ltmp673              #   Call between .Ltmp673 and .Ltmp674
	.uleb128 .Ltmp794-.Lfunc_begin3         #     jumps to .Ltmp794
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp674-.Lfunc_begin3         # >> Call Site 9 <<
	.uleb128 .Ltmp675-.Ltmp674              #   Call between .Ltmp674 and .Ltmp675
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp675-.Lfunc_begin3         # >> Call Site 10 <<
	.uleb128 .Ltmp676-.Ltmp675              #   Call between .Ltmp675 and .Ltmp676
	.uleb128 .Ltmp791-.Lfunc_begin3         #     jumps to .Ltmp791
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp676-.Lfunc_begin3         # >> Call Site 11 <<
	.uleb128 .Ltmp677-.Ltmp676              #   Call between .Ltmp676 and .Ltmp677
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp677-.Lfunc_begin3         # >> Call Site 12 <<
	.uleb128 .Ltmp688-.Ltmp677              #   Call between .Ltmp677 and .Ltmp688
	.uleb128 .Ltmp788-.Lfunc_begin3         #     jumps to .Ltmp788
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp689-.Lfunc_begin3         # >> Call Site 13 <<
	.uleb128 .Ltmp698-.Ltmp689              #   Call between .Ltmp689 and .Ltmp698
	.uleb128 .Ltmp699-.Lfunc_begin3         #     jumps to .Ltmp699
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp700-.Lfunc_begin3         # >> Call Site 14 <<
	.uleb128 .Ltmp701-.Ltmp700              #   Call between .Ltmp700 and .Ltmp701
	.uleb128 .Ltmp782-.Lfunc_begin3         #     jumps to .Ltmp782
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp701-.Lfunc_begin3         # >> Call Site 15 <<
	.uleb128 .Ltmp702-.Ltmp701              #   Call between .Ltmp701 and .Ltmp702
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp702-.Lfunc_begin3         # >> Call Site 16 <<
	.uleb128 .Ltmp703-.Ltmp702              #   Call between .Ltmp702 and .Ltmp703
	.uleb128 .Ltmp779-.Lfunc_begin3         #     jumps to .Ltmp779
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp703-.Lfunc_begin3         # >> Call Site 17 <<
	.uleb128 .Ltmp704-.Ltmp703              #   Call between .Ltmp703 and .Ltmp704
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp704-.Lfunc_begin3         # >> Call Site 18 <<
	.uleb128 .Ltmp715-.Ltmp704              #   Call between .Ltmp704 and .Ltmp715
	.uleb128 .Ltmp776-.Lfunc_begin3         #     jumps to .Ltmp776
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp716-.Lfunc_begin3         # >> Call Site 19 <<
	.uleb128 .Ltmp725-.Ltmp716              #   Call between .Ltmp716 and .Ltmp725
	.uleb128 .Ltmp726-.Lfunc_begin3         #     jumps to .Ltmp726
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp727-.Lfunc_begin3         # >> Call Site 20 <<
	.uleb128 .Ltmp728-.Ltmp727              #   Call between .Ltmp727 and .Ltmp728
	.uleb128 .Ltmp770-.Lfunc_begin3         #     jumps to .Ltmp770
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp728-.Lfunc_begin3         # >> Call Site 21 <<
	.uleb128 .Ltmp729-.Ltmp728              #   Call between .Ltmp728 and .Ltmp729
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp729-.Lfunc_begin3         # >> Call Site 22 <<
	.uleb128 .Ltmp730-.Ltmp729              #   Call between .Ltmp729 and .Ltmp730
	.uleb128 .Ltmp767-.Lfunc_begin3         #     jumps to .Ltmp767
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp730-.Lfunc_begin3         # >> Call Site 23 <<
	.uleb128 .Ltmp731-.Ltmp730              #   Call between .Ltmp730 and .Ltmp731
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp731-.Lfunc_begin3         # >> Call Site 24 <<
	.uleb128 .Ltmp742-.Ltmp731              #   Call between .Ltmp731 and .Ltmp742
	.uleb128 .Ltmp764-.Lfunc_begin3         #     jumps to .Ltmp764
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp743-.Lfunc_begin3         # >> Call Site 25 <<
	.uleb128 .Ltmp752-.Ltmp743              #   Call between .Ltmp743 and .Ltmp752
	.uleb128 .Ltmp753-.Lfunc_begin3         #     jumps to .Ltmp753
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp754-.Lfunc_begin3         # >> Call Site 26 <<
	.uleb128 .Ltmp757-.Ltmp754              #   Call between .Ltmp754 and .Ltmp757
	.uleb128 .Ltmp758-.Lfunc_begin3         #     jumps to .Ltmp758
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp757-.Lfunc_begin3         # >> Call Site 27 <<
	.uleb128 .Ltmp783-.Ltmp757              #   Call between .Ltmp757 and .Ltmp783
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp783-.Lfunc_begin3         # >> Call Site 28 <<
	.uleb128 .Ltmp784-.Ltmp783              #   Call between .Ltmp783 and .Ltmp784
	.uleb128 .Ltmp785-.Lfunc_begin3         #     jumps to .Ltmp785
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp771-.Lfunc_begin3         # >> Call Site 29 <<
	.uleb128 .Ltmp772-.Ltmp771              #   Call between .Ltmp771 and .Ltmp772
	.uleb128 .Ltmp773-.Lfunc_begin3         #     jumps to .Ltmp773
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp759-.Lfunc_begin3         # >> Call Site 30 <<
	.uleb128 .Ltmp760-.Ltmp759              #   Call between .Ltmp759 and .Ltmp760
	.uleb128 .Ltmp761-.Lfunc_begin3         #     jumps to .Ltmp761
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp792-.Lfunc_begin3         # >> Call Site 31 <<
	.uleb128 .Ltmp793-.Ltmp792              #   Call between .Ltmp792 and .Ltmp793
	.uleb128 .Ltmp794-.Lfunc_begin3         #     jumps to .Ltmp794
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp789-.Lfunc_begin3         # >> Call Site 32 <<
	.uleb128 .Ltmp790-.Ltmp789              #   Call between .Ltmp789 and .Ltmp790
	.uleb128 .Ltmp791-.Lfunc_begin3         #     jumps to .Ltmp791
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp780-.Lfunc_begin3         # >> Call Site 33 <<
	.uleb128 .Ltmp781-.Ltmp780              #   Call between .Ltmp780 and .Ltmp781
	.uleb128 .Ltmp782-.Lfunc_begin3         #     jumps to .Ltmp782
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp777-.Lfunc_begin3         # >> Call Site 34 <<
	.uleb128 .Ltmp778-.Ltmp777              #   Call between .Ltmp777 and .Ltmp778
	.uleb128 .Ltmp779-.Lfunc_begin3         #     jumps to .Ltmp779
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp768-.Lfunc_begin3         # >> Call Site 35 <<
	.uleb128 .Ltmp769-.Ltmp768              #   Call between .Ltmp768 and .Ltmp769
	.uleb128 .Ltmp770-.Lfunc_begin3         #     jumps to .Ltmp770
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp765-.Lfunc_begin3         # >> Call Site 36 <<
	.uleb128 .Ltmp766-.Ltmp765              #   Call between .Ltmp765 and .Ltmp766
	.uleb128 .Ltmp767-.Lfunc_begin3         #     jumps to .Ltmp767
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp801-.Lfunc_begin3         # >> Call Site 37 <<
	.uleb128 .Ltmp802-.Ltmp801              #   Call between .Ltmp801 and .Ltmp802
	.uleb128 .Ltmp803-.Lfunc_begin3         #     jumps to .Ltmp803
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp786-.Lfunc_begin3         # >> Call Site 38 <<
	.uleb128 .Ltmp787-.Ltmp786              #   Call between .Ltmp786 and .Ltmp787
	.uleb128 .Ltmp788-.Lfunc_begin3         #     jumps to .Ltmp788
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp774-.Lfunc_begin3         # >> Call Site 39 <<
	.uleb128 .Ltmp775-.Ltmp774              #   Call between .Ltmp774 and .Ltmp775
	.uleb128 .Ltmp776-.Lfunc_begin3         #     jumps to .Ltmp776
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp762-.Lfunc_begin3         # >> Call Site 40 <<
	.uleb128 .Ltmp763-.Ltmp762              #   Call between .Ltmp762 and .Ltmp763
	.uleb128 .Ltmp764-.Lfunc_begin3         #     jumps to .Ltmp764
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp795-.Lfunc_begin3         # >> Call Site 41 <<
	.uleb128 .Ltmp796-.Ltmp795              #   Call between .Ltmp795 and .Ltmp796
	.uleb128 .Ltmp797-.Lfunc_begin3         #     jumps to .Ltmp797
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp798-.Lfunc_begin3         # >> Call Site 42 <<
	.uleb128 .Ltmp799-.Ltmp798              #   Call between .Ltmp798 and .Ltmp799
	.uleb128 .Ltmp800-.Lfunc_begin3         #     jumps to .Ltmp800
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp634-.Lfunc_begin3         # >> Call Site 43 <<
	.uleb128 .Ltmp641-.Ltmp634              #   Call between .Ltmp634 and .Ltmp641
	.uleb128 .Ltmp642-.Lfunc_begin3         #     jumps to .Ltmp642
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp641-.Lfunc_begin3         # >> Call Site 44 <<
	.uleb128 .Lfunc_end6-.Ltmp641           #   Call between .Ltmp641 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEE17_M_default_appendEm,"axG",@progbits,_ZNSt6vectorIiSaIiEE17_M_default_appendEm,comdat
	.weak	_ZNSt6vectorIiSaIiEE17_M_default_appendEm # -- Begin function _ZNSt6vectorIiSaIiEE17_M_default_appendEm
	.p2align	5
	.type	_ZNSt6vectorIiSaIiEE17_M_default_appendEm,@function
_ZNSt6vectorIiSaIiEE17_M_default_appendEm: # @_ZNSt6vectorIiSaIiEE17_M_default_appendEm
	.cfi_startproc
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
	st.d	$s7, $sp, 0                     # 8-byte Folded Spill
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
	beqz	$a1, .LBB7_13
# %bb.1:
	move	$s0, $a1
	move	$fp, $a0
	ld.d	$s2, $a0, 8
	ld.d	$s4, $a0, 16
	sub.d	$a0, $s4, $s2
	srai.d	$a0, $a0, 2
	bgeu	$a0, $a1, .LBB7_10
# %bb.2:
	ld.d	$s1, $fp, 0
	sub.d	$s2, $s2, $s1
	srai.d	$a1, $s2, 2
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 511
	xor	$a2, $a1, $a0
	bltu	$a2, $s0, .LBB7_14
# %bb.3:                                # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
	sltu	$a2, $s0, $a1
	masknez	$a3, $s0, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	add.d	$s6, $a0, $s2
	ori	$s7, $zero, 1
	stx.w	$zero, $a0, $s2
	beq	$s0, $s7, .LBB7_5
# %bb.4:                                # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i29
	addi.d	$a0, $s6, 4
	slli.d	$a1, $s0, 2
	addi.d	$a2, $a1, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB7_5:                                # %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit31
	blt	$s2, $s7, .LBB7_7
# %bb.6:
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB7_7:                                # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit
	beqz	$s1, .LBB7_9
# %bb.8:
	sub.d	$a1, $s4, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_9:                                # %_ZZNSt6vectorIiSaIiEE17_M_default_appendEmEN6_GuardD2Ev.exit
	st.d	$s3, $fp, 0
	alsl.d	$a0, $s0, $s6, 2
	st.d	$a0, $fp, 8
	alsl.d	$a0, $s5, $s3, 2
	st.d	$a0, $fp, 16
	b	.LBB7_13
.LBB7_10:
	st.w	$zero, $s2, 0
	ori	$a1, $zero, 1
	addi.d	$a0, $s2, 4
	beq	$s0, $a1, .LBB7_12
# %bb.11:                               # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i
	slli.d	$a1, $s0, 2
	addi.d	$a2, $a1, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	alsl.d	$a0, $s0, $s2, 2
.LBB7_12:                               # %_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E.exit
	st.d	$a0, $fp, 8
.LBB7_13:
	ld.d	$s7, $sp, 0                     # 8-byte Folded Reload
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
.LBB7_14:
	pcalau12i	$a0, %pc_hi20(.L.str.34)
	addi.d	$a0, $a0, %pc_lo12(.L.str.34)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZNSt6vectorIiSaIiEE17_M_default_appendEm, .Lfunc_end7-_ZNSt6vectorIiSaIiEE17_M_default_appendEm
	.cfi_endproc
                                        # -- End function
	.type	.L.str.3,@object                # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	".case"
	.size	.L.str.3, 6

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Cannot open file "
	.size	.L.str.4, 18

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	" for writing"
	.size	.L.str.5, 13

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"#"
	.size	.L.str.6, 2

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"# Created by PENNANT"
	.size	.L.str.7, 21

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"FORMAT"
	.size	.L.str.8, 7

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"type: ensight gold"
	.size	.L.str.9, 19

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"GEOMETRY"
	.size	.L.str.10, 9

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"model: "
	.size	.L.str.11, 8

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	".geo"
	.size	.L.str.12, 5

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"VARIABLE"
	.size	.L.str.13, 9

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"scalar per element: zr "
	.size	.L.str.14, 24

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	".zr"
	.size	.L.str.15, 4

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"scalar per element: ze "
	.size	.L.str.16, 24

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	".ze"
	.size	.L.str.17, 4

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"scalar per element: zp "
	.size	.L.str.18, 24

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	".zp"
	.size	.L.str.19, 4

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"cycle = "
	.size	.L.str.20, 9

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"t = "
	.size	.L.str.21, 5

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"node id assign"
	.size	.L.str.22, 15

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"element id given"
	.size	.L.str.23, 17

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"part"
	.size	.L.str.24, 5

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"universe"
	.size	.L.str.25, 9

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"coordinates"
	.size	.L.str.26, 12

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"tria3"
	.size	.L.str.27, 6

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"quad4"
	.size	.L.str.28, 6

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"nsided"
	.size	.L.str.29, 7

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"."
	.size	.L.str.30, 2

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"basic_string::append"
	.size	.L.str.32, 21

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str.33, 49

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"vector::_M_default_append"
	.size	.L.str.34, 26

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"vector::_M_realloc_append"
	.size	.L.str.35, 26

	.globl	_ZN10ExportGoldC1EP4Mesh
	.type	_ZN10ExportGoldC1EP4Mesh,@function
.set _ZN10ExportGoldC1EP4Mesh, _ZN10ExportGoldC2EP4Mesh
	.globl	_ZN10ExportGoldD1Ev
	.type	_ZN10ExportGoldD1Ev,@function
.set _ZN10ExportGoldD1Ev, _ZN10ExportGoldD2Ev
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
	.addrsig_sym _ZSt4cerr
