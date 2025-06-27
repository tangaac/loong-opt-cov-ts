	.file	"WriteXY.cc"
	.text
	.globl	_ZN7WriteXYC2EP4Mesh            # -- Begin function _ZN7WriteXYC2EP4Mesh
	.p2align	5
	.type	_ZN7WriteXYC2EP4Mesh,@function
_ZN7WriteXYC2EP4Mesh:                   # @_ZN7WriteXYC2EP4Mesh
# %bb.0:
	st.d	$a1, $a0, 0
	ret
.Lfunc_end0:
	.size	_ZN7WriteXYC2EP4Mesh, .Lfunc_end0-_ZN7WriteXYC2EP4Mesh
                                        # -- End function
	.globl	_ZN7WriteXYD2Ev                 # -- Begin function _ZN7WriteXYD2Ev
	.p2align	5
	.type	_ZN7WriteXYD2Ev,@function
_ZN7WriteXYD2Ev:                        # @_ZN7WriteXYD2Ev
# %bb.0:
	ret
.Lfunc_end1:
	.size	_ZN7WriteXYD2Ev, .Lfunc_end1-_ZN7WriteXYD2Ev
                                        # -- End function
	.globl	_ZN7WriteXY5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKdS9_S9_ # -- Begin function _ZN7WriteXY5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKdS9_S9_
	.p2align	5
	.type	_ZN7WriteXY5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKdS9_S9_,@function
_ZN7WriteXY5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKdS9_S9_: # @_ZN7WriteXY5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKdS9_S9_
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -704
	.cfi_def_cfa_offset 704
	st.d	$ra, $sp, 696                   # 8-byte Folded Spill
	st.d	$fp, $sp, 688                   # 8-byte Folded Spill
	st.d	$s0, $sp, 680                   # 8-byte Folded Spill
	st.d	$s1, $sp, 672                   # 8-byte Folded Spill
	st.d	$s2, $sp, 664                   # 8-byte Folded Spill
	st.d	$s3, $sp, 656                   # 8-byte Folded Spill
	st.d	$s4, $sp, 648                   # 8-byte Folded Spill
	st.d	$s5, $sp, 640                   # 8-byte Folded Spill
	st.d	$s6, $sp, 632                   # 8-byte Folded Spill
	st.d	$s7, $sp, 624                   # 8-byte Folded Spill
	st.d	$s8, $sp, 616                   # 8-byte Folded Spill
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
	ld.d	$a0, $a0, 0
	ld.w	$s4, $a0, 68
	move	$s5, $a4
	move	$s6, $a3
	move	$s7, $a2
	st.d	$a1, $sp, 0                     # 8-byte Folded Spill
	st.w	$s4, $sp, 612
	addi.d	$a0, $sp, 612
	pcaddu18i	$ra, %call36(_ZN8Parallel9globalSumERi)
	jirl	$ra, $ra, 0
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$s2, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel5numpeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel5numpeE)
	ld.w	$a1, $s2, 0
	ld.w	$a2, $sp, 612
	ld.w	$a0, $a0, 0
	sltui	$a1, $a1, 1
	maskeqz	$a2, $a2, $a1
	maskeqz	$s8, $a0, $a1
	addi.w	$s1, $zero, -1
	st.w	$a2, $sp, 612
	bge	$s1, $s8, .LBB2_101
# %bb.1:                                # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
	beqz	$s8, .LBB2_4
# %bb.2:                                # %.noexc50
	slli.d	$s0, $s8, 2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a1, $a0
	alsl.d	$a0, $s8, $a0, 2
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	ori	$a0, $zero, 1
	st.w	$zero, $a1, 0
	beq	$s8, $a0, .LBB2_5
# %bb.3:                                # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
	addi.d	$a0, $a1, 4
	move	$fp, $a1
	addi.d	$a2, $s0, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
	move	$a1, $fp
	b	.LBB2_5
.LBB2_4:
	st.d	$zero, $sp, 32                  # 8-byte Folded Spill
	move	$a1, $zero
.LBB2_5:                                # %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
.Ltmp0:
	move	$a0, $s4
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	pcaddu18i	$ra, %call36(_ZN8Parallel6gatherEiPi)
	jirl	$ra, $ra, 0
.Ltmp1:
# %bb.6:
	ld.w	$s0, $sp, 612
	bge	$s1, $s0, .LBB2_102
# %bb.7:                                # %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
	beqz	$s0, .LBB2_18
# %bb.8:
	slli.d	$s8, $s0, 3
.Ltmp3:
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp4:
# %bb.9:                                # %.noexc54
	move	$s3, $a0
	ori	$a0, $zero, 1
	st.d	$zero, $s3, 0
	beq	$s0, $a0, .LBB2_11
# %bb.10:                               # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
	addi.d	$a0, $s3, 8
	addi.d	$a2, $s8, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB2_11:
.Ltmp5:
	move	$fp, $s3
	alsl.d	$a0, $s0, $s3, 3
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp6:
# %bb.12:                               # %.noexc61
	move	$s3, $a0
	ori	$a0, $zero, 1
	st.d	$zero, $s3, 0
	beq	$s0, $a0, .LBB2_14
# %bb.13:                               # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i57
	addi.d	$a0, $s3, 8
	addi.d	$a2, $s8, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB2_14:
.Ltmp8:
	st.d	$s3, $sp, 56                    # 8-byte Folded Spill
	alsl.d	$a0, $s0, $s3, 3
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp9:
# %bb.15:                               # %.noexc69
	alsl.d	$a1, $s0, $a0, 3
	st.d	$a1, $sp, 8                     # 8-byte Folded Spill
	ori	$a1, $zero, 1
	st.d	$zero, $a0, 0
	st.d	$a0, $sp, 48                    # 8-byte Folded Spill
	beq	$s0, $a1, .LBB2_17
# %bb.16:                               # %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i65
	addi.d	$a0, $a0, 8
	addi.d	$a2, $s8, -8
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB2_17:                               # %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit70
	move	$s8, $fp
	b	.LBB2_19
.LBB2_18:
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	st.d	$zero, $sp, 56                  # 8-byte Folded Spill
	move	$s8, $zero
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	st.d	$zero, $sp, 48                  # 8-byte Folded Spill
	st.d	$zero, $sp, 8                   # 8-byte Folded Spill
.LBB2_19:                               # %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit70
.Ltmp11:
	move	$a0, $s7
	move	$a1, $s4
	move	$a2, $s8
	ld.d	$fp, $sp, 40                    # 8-byte Folded Reload
	move	$a3, $fp
	pcaddu18i	$ra, %call36(_ZN8Parallel7gathervIdEEvPKT_iPS1_PKi)
	jirl	$ra, $ra, 0
.Ltmp12:
# %bb.20:
.Ltmp13:
	move	$a0, $s6
	move	$a1, $s4
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	move	$a3, $fp
	pcaddu18i	$ra, %call36(_ZN8Parallel7gathervIdEEvPKT_iPS1_PKi)
	jirl	$ra, $ra, 0
.Ltmp14:
# %bb.21:
.Ltmp15:
	move	$a0, $s5
	move	$a1, $s4
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	move	$a3, $fp
	pcaddu18i	$ra, %call36(_ZN8Parallel7gathervIdEEvPKT_iPS1_PKi)
	jirl	$ra, $ra, 0
.Ltmp16:
# %bb.22:
	ld.w	$a0, $s2, 0
	bnez	$a0, .LBB2_92
# %bb.23:
	ld.d	$a0, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s4, $a0, 0
	ld.d	$s3, $a0, 8
	addi.d	$a0, $sp, 592
	move	$fp, $a0
	st.d	$a0, $sp, 576
	st.d	$zero, $sp, 584
	st.b	$zero, $sp, 592
	addi.d	$a1, $s3, 3
.Ltmp18:
	addi.d	$a0, $sp, 576
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp19:
# %bb.24:
	ld.d	$a0, $sp, 584
	lu52i.d	$a1, $s1, 1023
	sub.d	$a0, $a1, $a0
	bltu	$a0, $s3, .LBB2_104
# %bb.25:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
.Ltmp20:
	addi.d	$a0, $sp, 576
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp21:
# %bb.26:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
	ld.d	$a0, $sp, 584
	ori	$a1, $zero, 3
	lu52i.d	$a1, $a1, -1024
	add.d	$a0, $a0, $a1
	ori	$a1, $zero, 2
	bgeu	$a1, $a0, .LBB2_104
# %bb.27:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
.Ltmp22:
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a1, $a0, %pc_lo12(.L.str)
	addi.d	$a0, $sp, 576
	ori	$a2, $zero, 3
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp23:
# %bb.28:                               # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
	ld.d	$a1, $sp, 576
.Ltmp24:
	addi.d	$a0, $sp, 64
	ori	$a2, $zero, 16
	addi.d	$s0, $sp, 64
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode)
	jirl	$ra, $ra, 0
.Ltmp25:
# %bb.29:
	st.d	$s8, $sp, 0                     # 8-byte Folded Spill
	ld.d	$a0, $sp, 64
	ld.d	$a1, $a0, -24
	add.d	$a1, $s0, $a1
	ld.wu	$a2, $a1, 24
	addi.w	$a3, $zero, -261
	lu32i.d	$a3, 0
	and	$a2, $a2, $a3
	addi.d	$a2, $a2, 256
	st.w	$a2, $a1, 24
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ori	$a1, $zero, 8
	st.d	$a1, $a0, 8
.Ltmp27:
	pcalau12i	$a0, %pc_hi20(.L.str.1)
	addi.d	$a1, $a0, %pc_lo12(.L.str.1)
	addi.d	$a0, $sp, 64
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp28:
# %bb.30:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
	ld.d	$a0, $sp, 64
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 64
	add.d	$a0, $a1, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB2_99
# %bb.31:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB2_33
# %bb.32:
	ld.bu	$a0, $s3, 67
	b	.LBB2_35
.LBB2_33:
.Ltmp29:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp30:
# %bb.34:                               # %.noexc119
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp31:
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp32:
.LBB2_35:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
.Ltmp33:
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp34:
# %bb.36:                               # %.noexc121
.Ltmp35:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp36:
# %bb.37:                               # %_ZNSolsEPFRSoS_E.exit.preheader
	move	$s1, $zero
	ori	$s3, $zero, 1
	addi.d	$s7, $sp, 80
	ori	$s2, $zero, 5
	ori	$s8, $zero, 18
	ld.d	$s6, $sp, 0                     # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_38:                               # %_ZNSolsEPFRSoS_E.exit
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $sp, 612
	bge	$s1, $a0, .LBB2_48
# %bb.39:                               #   in Loop: Header=BB2_38 Depth=1
	ld.d	$a0, $sp, 64
	ld.d	$a0, $a0, -24
	stx.d	$s2, $s7, $a0
.Ltmp93:
	addi.d	$a0, $sp, 64
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp94:
# %bb.40:                               #   in Loop: Header=BB2_38 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	fld.d	$fa0, $s6, 0
	add.d	$a1, $a0, $a1
	st.d	$s8, $a1, 16
.Ltmp95:
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp96:
# %bb.41:                               # %_ZNSolsEd.exit
                                        #   in Loop: Header=BB2_38 Depth=1
	move	$s4, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s4, $a0
	ld.d	$s5, $a0, 240
	beqz	$s5, .LBB2_93
# %bb.42:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i124
                                        #   in Loop: Header=BB2_38 Depth=1
	ld.bu	$a0, $s5, 56
	beqz	$a0, .LBB2_44
# %bb.43:                               #   in Loop: Header=BB2_38 Depth=1
	ld.bu	$a0, $s5, 67
	b	.LBB2_46
	.p2align	4, , 16
.LBB2_44:                               #   in Loop: Header=BB2_38 Depth=1
.Ltmp97:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp98:
# %bb.45:                               # %.noexc129
                                        #   in Loop: Header=BB2_38 Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a2, $a0, 48
.Ltmp99:
	ori	$a1, $zero, 10
	move	$a0, $s5
	jirl	$ra, $a2, 0
.Ltmp100:
.LBB2_46:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i126
                                        #   in Loop: Header=BB2_38 Depth=1
.Ltmp101:
	ext.w.b	$a1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp102:
# %bb.47:                               # %.noexc131
                                        #   in Loop: Header=BB2_38 Depth=1
	addi.d	$s6, $s6, 8
	addi.w	$s3, $s3, 1
	addi.d	$s1, $s1, 1
.Ltmp103:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp104:
	b	.LBB2_38
.LBB2_48:
.Ltmp37:
	pcalau12i	$a0, %pc_hi20(.L.str.2)
	addi.d	$a1, $a0, %pc_lo12(.L.str.2)
	addi.d	$a0, $sp, 64
	ori	$a2, $zero, 5
	addi.d	$s0, $sp, 64
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp38:
# %bb.49:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit75
	ld.d	$a0, $sp, 64
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB2_99
# %bb.50:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i135
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB2_52
# %bb.51:
	ld.bu	$a0, $s3, 67
	b	.LBB2_54
.LBB2_52:
.Ltmp39:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp40:
# %bb.53:                               # %.noexc140
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp41:
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp42:
.LBB2_54:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i137
.Ltmp43:
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp44:
# %bb.55:                               # %.noexc142
.Ltmp45:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp46:
# %bb.56:                               # %_ZNSolsEPFRSoS_E.exit82.preheader
	move	$s1, $zero
	ori	$s3, $zero, 1
	ori	$s2, $zero, 5
	ori	$s8, $zero, 18
	ld.d	$s6, $sp, 56                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_57:                               # %_ZNSolsEPFRSoS_E.exit82
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $sp, 612
	bge	$s1, $a0, .LBB2_67
# %bb.58:                               #   in Loop: Header=BB2_57 Depth=1
	ld.d	$a0, $sp, 64
	ld.d	$a0, $a0, -24
	stx.d	$s2, $s7, $a0
.Ltmp77:
	addi.d	$a0, $sp, 64
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp78:
# %bb.59:                               #   in Loop: Header=BB2_57 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	fld.d	$fa0, $s6, 0
	add.d	$a1, $a0, $a1
	st.d	$s8, $a1, 16
.Ltmp79:
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp80:
# %bb.60:                               # %_ZNSolsEd.exit88
                                        #   in Loop: Header=BB2_57 Depth=1
	move	$s4, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s4, $a0
	ld.d	$s5, $a0, 240
	beqz	$s5, .LBB2_95
# %bb.61:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i146
                                        #   in Loop: Header=BB2_57 Depth=1
	ld.bu	$a0, $s5, 56
	beqz	$a0, .LBB2_63
# %bb.62:                               #   in Loop: Header=BB2_57 Depth=1
	ld.bu	$a0, $s5, 67
	b	.LBB2_65
	.p2align	4, , 16
.LBB2_63:                               #   in Loop: Header=BB2_57 Depth=1
.Ltmp81:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp82:
# %bb.64:                               # %.noexc151
                                        #   in Loop: Header=BB2_57 Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a2, $a0, 48
.Ltmp83:
	ori	$a1, $zero, 10
	move	$a0, $s5
	jirl	$ra, $a2, 0
.Ltmp84:
.LBB2_65:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i148
                                        #   in Loop: Header=BB2_57 Depth=1
.Ltmp85:
	ext.w.b	$a1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp86:
# %bb.66:                               # %.noexc153
                                        #   in Loop: Header=BB2_57 Depth=1
	addi.d	$s6, $s6, 8
	addi.w	$s3, $s3, 1
	addi.d	$s1, $s1, 1
.Ltmp87:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp88:
	b	.LBB2_57
.LBB2_67:
.Ltmp47:
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	addi.d	$a0, $sp, 64
	ori	$a2, $zero, 5
	addi.d	$s0, $sp, 64
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp48:
# %bb.68:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit84
	ld.d	$a0, $sp, 64
	ld.d	$a0, $a0, -24
	add.d	$a0, $s0, $a0
	ld.d	$s3, $a0, 240
	beqz	$s3, .LBB2_99
# %bb.69:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i157
	ld.bu	$a0, $s3, 56
	beqz	$a0, .LBB2_71
# %bb.70:
	ld.bu	$a0, $s3, 67
	b	.LBB2_73
.LBB2_71:
.Ltmp49:
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp50:
# %bb.72:                               # %.noexc162
	ld.d	$a0, $s3, 0
	ld.d	$a2, $a0, 48
.Ltmp51:
	ori	$a1, $zero, 10
	move	$a0, $s3
	jirl	$ra, $a2, 0
.Ltmp52:
.LBB2_73:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i159
.Ltmp53:
	ext.w.b	$a1, $a0
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp54:
# %bb.74:                               # %.noexc164
.Ltmp55:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp56:
# %bb.75:                               # %_ZNSolsEPFRSoS_E.exit92.preheader
	move	$s1, $zero
	ori	$s3, $zero, 1
	ori	$s2, $zero, 5
	ori	$s8, $zero, 18
	ld.d	$s6, $sp, 48                    # 8-byte Folded Reload
	.p2align	4, , 16
.LBB2_76:                               # %_ZNSolsEPFRSoS_E.exit92
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a0, $sp, 612
	bge	$s1, $a0, .LBB2_86
# %bb.77:                               #   in Loop: Header=BB2_76 Depth=1
	ld.d	$a0, $sp, 64
	ld.d	$a0, $a0, -24
	stx.d	$s2, $s7, $a0
.Ltmp61:
	addi.d	$a0, $sp, 64
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZNSolsEi)
	jirl	$ra, $ra, 0
.Ltmp62:
# %bb.78:                               #   in Loop: Header=BB2_76 Depth=1
	ld.d	$a1, $a0, 0
	ld.d	$a1, $a1, -24
	fld.d	$fa0, $s6, 0
	add.d	$a1, $a0, $a1
	st.d	$s8, $a1, 16
.Ltmp63:
	pcaddu18i	$ra, %call36(_ZNSo9_M_insertIdEERSoT_)
	jirl	$ra, $ra, 0
.Ltmp64:
# %bb.79:                               # %_ZNSolsEd.exit98
                                        #   in Loop: Header=BB2_76 Depth=1
	move	$s4, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a0, $a0, -24
	add.d	$a0, $s4, $a0
	ld.d	$s5, $a0, 240
	beqz	$s5, .LBB2_97
# %bb.80:                               # %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i168
                                        #   in Loop: Header=BB2_76 Depth=1
	ld.bu	$a0, $s5, 56
	beqz	$a0, .LBB2_82
# %bb.81:                               #   in Loop: Header=BB2_76 Depth=1
	ld.bu	$a0, $s5, 67
	b	.LBB2_84
	.p2align	4, , 16
.LBB2_82:                               #   in Loop: Header=BB2_76 Depth=1
.Ltmp65:
	move	$a0, $s5
	pcaddu18i	$ra, %call36(_ZNKSt5ctypeIcE13_M_widen_initEv)
	jirl	$ra, $ra, 0
.Ltmp66:
# %bb.83:                               # %.noexc173
                                        #   in Loop: Header=BB2_76 Depth=1
	ld.d	$a0, $s5, 0
	ld.d	$a2, $a0, 48
.Ltmp67:
	ori	$a1, $zero, 10
	move	$a0, $s5
	jirl	$ra, $a2, 0
.Ltmp68:
.LBB2_84:                               # %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i170
                                        #   in Loop: Header=BB2_76 Depth=1
.Ltmp69:
	ext.w.b	$a1, $a0
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZNSo3putEc)
	jirl	$ra, $ra, 0
.Ltmp70:
# %bb.85:                               # %.noexc175
                                        #   in Loop: Header=BB2_76 Depth=1
	addi.d	$s6, $s6, 8
	addi.w	$s3, $s3, 1
	addi.d	$s1, $s1, 1
.Ltmp71:
	pcaddu18i	$ra, %call36(_ZNSo5flushEv)
	jirl	$ra, $ra, 0
.Ltmp72:
	b	.LBB2_76
.LBB2_86:
	addi.d	$a0, $sp, 72
.Ltmp57:
	pcaddu18i	$ra, %call36(_ZNSt13basic_filebufIcSt11char_traitsIcEE5closeEv)
	jirl	$ra, $ra, 0
.Ltmp58:
# %bb.87:                               # %.noexc93
	bnez	$a0, .LBB2_89
# %bb.88:
	ld.d	$a0, $sp, 64
	ld.d	$a0, $a0, -24
	addi.d	$a1, $sp, 64
	add.d	$a0, $a1, $a0
	ld.w	$a1, $a0, 32
	ori	$a1, $a1, 4
.Ltmp59:
	pcaddu18i	$ra, %call36(_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate)
	jirl	$ra, $ra, 0
.Ltmp60:
.LBB2_89:                               # %_ZNSt14basic_ofstreamIcSt11char_traitsIcEE5closeEv.exit
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 576
	beq	$a0, $fp, .LBB2_91
# %bb.90:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 592
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_91:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$s8, $sp, 0                     # 8-byte Folded Reload
.LBB2_92:                               # %_ZNSt6vectorIiSaIiEED2Ev.exit
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s8
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 616                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 624                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 632                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 640                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 648                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 656                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 664                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 672                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 680                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 688                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 696                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 704
	ret
.LBB2_93:
.Ltmp106:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp107:
# %bb.94:                               # %.noexc128
.LBB2_95:
.Ltmp90:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp91:
# %bb.96:                               # %.noexc150
.LBB2_97:
.Ltmp74:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp75:
# %bb.98:                               # %.noexc172
.LBB2_99:                               # %.invoke
.Ltmp109:
	pcaddu18i	$ra, %call36(_ZSt16__throw_bad_castv)
	jirl	$ra, $ra, 0
.Ltmp110:
# %bb.100:                              # %.cont
.LBB2_101:                              # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB2_102:
.Ltmp115:
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$a0, $a0, %pc_lo12(.L.str.4)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp116:
# %bb.103:                              # %.noexc53
.LBB2_104:                              # %.invoke.i.i
.Ltmp112:
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp113:
# %bb.105:                              # %.cont.i.i
.LBB2_106:
.Ltmp26:
	move	$s3, $a0
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	b	.LBB2_124
.LBB2_107:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit110.thread
.Ltmp10:
	move	$s3, $a0
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	move	$s8, $fp
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	b	.LBB2_132
.LBB2_108:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit112.thread
.Ltmp7:
	move	$s3, $a0
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	move	$s8, $fp
	b	.LBB2_133
.LBB2_109:
.Ltmp2:
	b	.LBB2_111
.LBB2_110:
.Ltmp117:
.LBB2_111:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit114.thread
	move	$s3, $a0
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	b	.LBB2_134
.LBB2_112:
.Ltmp114:
	ld.d	$a2, $sp, 576
	move	$s3, $a0
	beq	$a2, $fp, .LBB2_114
# %bb.113:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
	ld.d	$a0, $sp, 592
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_114:
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	b	.LBB2_126
.LBB2_115:
.Ltmp17:
	move	$s3, $a0
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	move	$a0, $fp
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	b	.LBB2_127
.LBB2_116:
.Ltmp111:
	b	.LBB2_123
.LBB2_117:                              # %.loopexit.split-lp
.Ltmp76:
	b	.LBB2_123
.LBB2_118:                              # %.loopexit.split-lp286
.Ltmp92:
	b	.LBB2_123
.LBB2_119:                              # %.loopexit.split-lp291
.Ltmp108:
	b	.LBB2_123
.LBB2_120:                              # %.loopexit
.Ltmp73:
	b	.LBB2_123
.LBB2_121:                              # %.loopexit285
.Ltmp89:
	b	.LBB2_123
.LBB2_122:                              # %.loopexit290
.Ltmp105:
.LBB2_123:
	move	$s3, $a0
	ld.d	$s0, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s8, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	addi.d	$a0, $sp, 64
	pcaddu18i	$ra, %call36(_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev)
	jirl	$ra, $ra, 0
.LBB2_124:
	ld.d	$a0, $sp, 576
	beq	$a0, $fp, .LBB2_126
# %bb.125:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101
	ld.d	$a1, $sp, 592
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_126:                              # %.body
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
.LBB2_127:
	bnez	$s1, .LBB2_131
# %bb.128:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit110
	bnez	$s2, .LBB2_132
.LBB2_129:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit112
	bnez	$s8, .LBB2_133
.LBB2_130:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit114.thread
	sub.d	$a1, $s0, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_131:
	ld.d	$a0, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a1, $a0, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beqz	$s2, .LBB2_129
.LBB2_132:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s2
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	beqz	$s8, .LBB2_130
.LBB2_133:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s8
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_134:                              # %_ZNSt6vectorIdSaIdEED2Ev.exit114.thread
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	sub.d	$a1, $s0, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_ZN7WriteXY5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKdS9_S9_, .Lfunc_end2-_ZN7WriteXY5writeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKdS9_S9_
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
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp117-.Lfunc_begin0         #     jumps to .Ltmp117
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp5-.Ltmp4                  #   Call between .Ltmp4 and .Ltmp5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 5 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp6-.Lfunc_begin0           # >> Call Site 6 <<
	.uleb128 .Ltmp8-.Ltmp6                  #   Call between .Ltmp6 and .Ltmp8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 7 <<
	.uleb128 .Ltmp9-.Ltmp8                  #   Call between .Ltmp8 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 8 <<
	.uleb128 .Ltmp11-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp16-.Ltmp11                #   Call between .Ltmp11 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp23-.Ltmp18                #   Call between .Ltmp18 and .Ltmp23
	.uleb128 .Ltmp114-.Lfunc_begin0         #     jumps to .Ltmp114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin0          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp36-.Ltmp27                #   Call between .Ltmp27 and .Ltmp36
	.uleb128 .Ltmp111-.Lfunc_begin0         #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp104-.Ltmp93               #   Call between .Ltmp93 and .Ltmp104
	.uleb128 .Ltmp105-.Lfunc_begin0         #     jumps to .Ltmp105
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp46-.Ltmp37                #   Call between .Ltmp37 and .Ltmp46
	.uleb128 .Ltmp111-.Lfunc_begin0         #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp88-.Ltmp77                #   Call between .Ltmp77 and .Ltmp88
	.uleb128 .Ltmp89-.Lfunc_begin0          #     jumps to .Ltmp89
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp47-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp56-.Ltmp47                #   Call between .Ltmp47 and .Ltmp56
	.uleb128 .Ltmp111-.Lfunc_begin0         #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp72-.Ltmp61                #   Call between .Ltmp61 and .Ltmp72
	.uleb128 .Ltmp73-.Lfunc_begin0          #     jumps to .Ltmp73
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp60-.Ltmp57                #   Call between .Ltmp57 and .Ltmp60
	.uleb128 .Ltmp111-.Lfunc_begin0         #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp106-.Ltmp60               #   Call between .Ltmp60 and .Ltmp106
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin0         # >> Call Site 20 <<
	.uleb128 .Ltmp107-.Ltmp106              #   Call between .Ltmp106 and .Ltmp107
	.uleb128 .Ltmp108-.Lfunc_begin0         #     jumps to .Ltmp108
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp91-.Ltmp90                #   Call between .Ltmp90 and .Ltmp91
	.uleb128 .Ltmp92-.Lfunc_begin0          #     jumps to .Ltmp92
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp75-.Ltmp74                #   Call between .Ltmp74 and .Ltmp75
	.uleb128 .Ltmp76-.Lfunc_begin0          #     jumps to .Ltmp76
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin0         # >> Call Site 23 <<
	.uleb128 .Ltmp110-.Ltmp109              #   Call between .Ltmp109 and .Ltmp110
	.uleb128 .Ltmp111-.Lfunc_begin0         #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp110-.Lfunc_begin0         # >> Call Site 24 <<
	.uleb128 .Ltmp115-.Ltmp110              #   Call between .Ltmp110 and .Ltmp115
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin0         # >> Call Site 25 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin0         #     jumps to .Ltmp117
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin0         # >> Call Site 26 <<
	.uleb128 .Ltmp113-.Ltmp112              #   Call between .Ltmp112 and .Ltmp113
	.uleb128 .Ltmp114-.Lfunc_begin0         #     jumps to .Ltmp114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin0         # >> Call Site 27 <<
	.uleb128 .Lfunc_end2-.Ltmp113           #   Call between .Ltmp113 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	".xy"
	.size	.L.str, 4

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"#  zr"
	.size	.L.str.1, 6

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"#  ze"
	.size	.L.str.2, 6

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"#  zp"
	.size	.L.str.3, 6

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str.4, 49

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"basic_string::append"
	.size	.L.str.5, 21

	.globl	_ZN7WriteXYC1EP4Mesh
	.type	_ZN7WriteXYC1EP4Mesh,@function
.set _ZN7WriteXYC1EP4Mesh, _ZN7WriteXYC2EP4Mesh
	.globl	_ZN7WriteXYD1Ev
	.type	_ZN7WriteXYD1Ev,@function
.set _ZN7WriteXYD1Ev, _ZN7WriteXYD2Ev
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
