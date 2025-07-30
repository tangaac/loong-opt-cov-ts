	.file	"complexity_test.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z16BM_Complexity_O1RN9benchmark5StateE
.LCPI0_0:
	.dword	0x3e668c6fa0b2f9a4              # double 4.2000000000000006E-8
	.text
	.hidden	_Z16BM_Complexity_O1RN9benchmark5StateE
	.globl	_Z16BM_Complexity_O1RN9benchmark5StateE
	.p2align	5
	.type	_Z16BM_Complexity_O1RN9benchmark5StateE,@function
_Z16BM_Complexity_O1RN9benchmark5StateE: # @_Z16BM_Complexity_O1RN9benchmark5StateE
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
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 56, -64
	.cfi_offset 57, -72
	move	$fp, $a0
	ld.w	$s1, $a0, 28
	ld.d	$s0, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB0_16
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB0_16
# %bb.2:
	ori	$s1, $zero, 1
	addi.d	$s2, $sp, 16
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI0_0)
	movgr2fr.d	$fs1, $zero
	addi.w	$s3, $zero, -1
	addi.d	$s4, $sp, 8
	.p2align	4, , 16
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
	ld.bu	$a0, $fp, 24
	bne	$a0, $s1, .LBB0_15
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
	sub.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
.LBB0_5:                                # %_ZNK9benchmark5State10iterationsEv.exit28
                                        #   in Loop: Header=BB0_3 Depth=1
	st.d	$a0, $sp, 16
	#APP
	#NO_APP
	ld.bu	$a0, $fp, 24
	fmov.d	$fa0, $fs1
	bne	$a0, $s1, .LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
	sub.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
.LBB0_7:                                # %_ZNK9benchmark5State10iterationsEv.exit26
                                        #   in Loop: Header=BB0_3 Depth=1
	fst.d	$fa0, $sp, 16
	#APP
	#NO_APP
	ld.bu	$a0, $fp, 24
	bne	$a0, $s1, .LBB0_13
# %bb.8:                                # %_ZNK9benchmark5State10iterationsEv.exit24.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	move	$a0, $s3
	.p2align	4, , 16
.LBB0_9:                                # %_ZNK9benchmark5State10iterationsEv.exit24
                                        #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $fp, 16
	ld.d	$a2, $fp, 0
	ld.d	$a3, $fp, 8
	sub.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	addi.d	$a0, $a0, 1
	bge	$a0, $a1, .LBB0_13
# %bb.10:                               # %_ZNK9benchmark5State10iterationsEv.exit22
                                        #   in Loop: Header=BB0_9 Depth=2
	st.d	$a1, $sp, 8
	#APP
	#NO_APP
	ld.bu	$a1, $fp, 24
	fmov.d	$fa0, $fs1
	bne	$a1, $s1, .LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_9 Depth=2
	ld.d	$a1, $fp, 16
	ld.d	$a2, $fp, 0
	ld.d	$a3, $fp, 8
	sub.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
.LBB0_12:                               # %_ZNK9benchmark5State10iterationsEv.exit
                                        #   in Loop: Header=BB0_9 Depth=2
	fld.d	$fa1, $sp, 16
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 16
	#APP
	#NO_APP
	ld.bu	$a1, $fp, 24
	bnez	$a1, .LBB0_9
	.p2align	4, , 16
.LBB0_13:                               # %_ZNK9benchmark5State10iterationsEv.exit24.thread
                                        #   in Loop: Header=BB0_3 Depth=1
	move	$a0, $fp
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16SetIterationTimeEd)
	jirl	$ra, $ra, 0
	blez	$s0, .LBB0_18
# %bb.14:                               #   in Loop: Header=BB0_3 Depth=1
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB0_3
	b	.LBB0_16
.LBB0_15:                               #   in Loop: Header=BB0_3 Depth=1
	move	$a0, $zero
	b	.LBB0_5
.LBB0_16:                               # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	beq	$a1, $a0, .LBB0_19
# %bb.17:                               # %_ZNK9benchmark5State5rangeEm.exit
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 56
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
.LBB0_18:
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	pcalau12i	$a1, %pc_hi20(.L.str.42)
	addi.d	$a1, $a1, %pc_lo12(.L.str.42)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB0_19:
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	pcalau12i	$a1, %pc_hi20(.L.str.42)
	addi.d	$a1, $a1, %pc_lo12(.L.str.42)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	ori	$a2, $zero, 990
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_Z16BM_Complexity_O1RN9benchmark5StateE, .Lfunc_end0-_Z16BM_Complexity_O1RN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i
	.type	_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i,@function
_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i: # @_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:
	addi.d	$sp, $sp, -2032
	.cfi_def_cfa_offset 2032
	st.d	$ra, $sp, 2024                  # 8-byte Folded Spill
	st.d	$fp, $sp, 2016                  # 8-byte Folded Spill
	st.d	$s0, $sp, 2008                  # 8-byte Folded Spill
	st.d	$s1, $sp, 2000                  # 8-byte Folded Spill
	st.d	$s2, $sp, 1992                  # 8-byte Folded Spill
	st.d	$s3, $sp, 1984                  # 8-byte Folded Spill
	st.d	$s4, $sp, 1976                  # 8-byte Folded Spill
	st.d	$s5, $sp, 1968                  # 8-byte Folded Spill
	st.d	$s6, $sp, 1960                  # 8-byte Folded Spill
	st.d	$s7, $sp, 1952                  # 8-byte Folded Spill
	st.d	$s8, $sp, 1944                  # 8-byte Folded Spill
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
	addi.d	$sp, $sp, -1440
	.cfi_def_cfa_offset 3472
	move	$s2, $a4
	move	$s1, $a3
	move	$fp, $a2
	move	$s3, $a1
	move	$a2, $a0
	addi.d	$s0, $sp, 1048
.Ltmp0:
	pcalau12i	$a0, %pc_hi20(.L.str.44)
	addi.d	$a1, $a0, %pc_lo12(.L.str.44)
	addi.d	$a0, $sp, 1048
	pcaddu18i	$ra, %call36(_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_)
	jirl	$ra, $ra, 0
.Ltmp1:
# %bb.1:
	addi.d	$s0, $sp, 1112
.Ltmp2:
	pcalau12i	$a0, %pc_hi20(.L.str.45)
	addi.d	$a1, $a0, %pc_lo12(.L.str.45)
	move	$a0, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_)
	jirl	$ra, $ra, 0
.Ltmp3:
# %bb.2:
	addi.d	$s0, $sp, 1176
.Ltmp4:
	pcalau12i	$a0, %pc_hi20(.L.str.46)
	addi.d	$a1, $a0, %pc_lo12(.L.str.46)
	move	$a0, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA10_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_)
	jirl	$ra, $ra, 0
.Ltmp5:
# %bb.3:
	addi.d	$s0, $sp, 1240
	ld.d	$s3, $s1, 0
	ld.d	$s4, $s1, 8
	ori	$a0, $zero, 3360
	add.d	$s5, $sp, $a0
	ori	$a0, $zero, 3344
	add.d	$a0, $sp, $a0
	st.d	$s5, $a0, 0
	ori	$a0, $zero, 3352
	add.d	$a0, $sp, $a0
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 3360
	add.d	$a0, $sp, $a0
	st.b	$zero, $a0, 0
	addi.d	$a1, $s4, 12
.Ltmp7:
	ori	$a0, $zero, 3344
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp8:
# %bb.4:
	ori	$a0, $zero, 3352
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	addi.w	$a1, $zero, -14
	lu52i.d	$a1, $a1, 2047
	bltu	$a1, $a0, .LBB1_264
# %bb.5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
.Ltmp9:
	pcalau12i	$a0, %pc_hi20(.L.str.48)
	addi.d	$a1, $a0, %pc_lo12(.L.str.48)
	ori	$a0, $zero, 3344
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 12
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp10:
# %bb.6:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
	ori	$a0, $zero, 3352
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	addi.w	$a1, $zero, -2
	lu52i.d	$a1, $a1, 2047
	sub.d	$a0, $a1, $a0
	bltu	$a0, $s4, .LBB1_264
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
.Ltmp11:
	ori	$a0, $zero, 3344
	add.d	$a0, $sp, $a0
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp12:
# %bb.8:                                # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_.exit
	pcalau12i	$a0, %pc_hi20(.L.str.47)
	addi.d	$a0, $a0, %pc_lo12(.L.str.47)
	ld.d	$a1, $a0, 0
	ld.b	$a0, $a0, 8
	addi.d	$fp, $sp, 1256
	st.d	$fp, $sp, 1240
	st.d	$a1, $sp, 1256
	st.b	$a0, $sp, 1264
	ori	$a1, $zero, 9
	ori	$a0, $zero, 3344
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	st.d	$a1, $sp, 1248
	st.b	$zero, $sp, 1265
	addi.d	$s3, $sp, 1288
	st.d	$s3, $sp, 1272
	beq	$a0, $s5, .LBB1_10
# %bb.9:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ori	$a1, $zero, 3360
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	ori	$a2, $zero, 3352
	add.d	$a2, $sp, $a2
	ld.d	$s0, $a2, 0
	st.d	$a0, $sp, 1272
	st.d	$a1, $sp, 1288
	b	.LBB1_11
.LBB1_10:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i
	ori	$a0, $zero, 3352
	add.d	$a0, $sp, $a0
	ld.d	$s0, $a0, 0
	addi.d	$a2, $s0, 1
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB1_11:
	st.d	$s0, $sp, 1280
	ori	$a0, $zero, 3344
	add.d	$a0, $sp, $a0
	st.d	$s5, $a0, 0
	ori	$a0, $zero, 3352
	add.d	$a0, $sp, $a0
	st.d	$zero, $a0, 0
	ori	$a0, $zero, 3360
	add.d	$a0, $sp, $a0
	st.b	$zero, $a0, 0
	addi.d	$s0, $sp, 1304
.Ltmp13:
	pcalau12i	$a0, %pc_hi20(.L.str.49)
	addi.d	$a1, $a0, %pc_lo12(.L.str.49)
	move	$a0, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_)
	jirl	$ra, $ra, 0
.Ltmp14:
# %bb.12:
	addi.d	$s0, $sp, 1368
.Ltmp15:
	pcalau12i	$a0, %pc_hi20(.L.str.50)
	addi.d	$a1, $a0, %pc_lo12(.L.str.50)
	pcalau12i	$a0, %pc_hi20(.L.str.51)
	addi.d	$a2, $a0, %pc_lo12(.L.str.51)
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcRA13_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_)
	jirl	$ra, $ra, 0
.Ltmp16:
# %bb.13:
.Ltmp18:
	addi.d	$a0, $sp, 1048
	ori	$a1, $zero, 6
	pcaddu18i	$ra, %call36(_Z16SetSubstitutionsSt16initializer_listISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_EE)
	jirl	$ra, $ra, 0
.Ltmp19:
# %bb.14:
	ld.d	$a0, $sp, 1400
	addi.d	$a1, $sp, 1416
	beq	$a0, $a1, .LBB1_16
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	ld.d	$a1, $sp, 1416
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_16:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
	ld.d	$a0, $sp, 1368
	addi.d	$a1, $sp, 1384
	beq	$a0, $a1, .LBB1_18
# %bb.17:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
	ld.d	$a1, $sp, 1384
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_18:                               # %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit
	ld.d	$a0, $sp, 1336
	addi.d	$a1, $sp, 1352
	beq	$a0, $a1, .LBB1_20
# %bb.19:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.1
	ld.d	$a1, $sp, 1352
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_20:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.1
	ld.d	$a0, $sp, 1304
	addi.d	$a1, $sp, 1320
	beq	$a0, $a1, .LBB1_22
# %bb.21:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.1
	ld.d	$a1, $sp, 1320
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_22:                               # %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.1
	ld.d	$a0, $sp, 1272
	beq	$a0, $s3, .LBB1_24
# %bb.23:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.2
	ld.d	$a1, $sp, 1288
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_24:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.2
	ld.d	$a0, $sp, 1240
	beq	$a0, $fp, .LBB1_26
# %bb.25:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.2
	ld.d	$a1, $sp, 1256
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_26:                               # %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.2
	ld.d	$a0, $sp, 1208
	addi.d	$s0, $sp, 1224
	beq	$a0, $s0, .LBB1_28
# %bb.27:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.3
	ld.d	$a1, $sp, 1224
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_28:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.3
	ld.d	$a0, $sp, 1176
	addi.d	$s6, $sp, 1192
	beq	$a0, $s6, .LBB1_30
# %bb.29:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.3
	ld.d	$a1, $sp, 1192
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_30:                               # %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.3
	ld.d	$a0, $sp, 1144
	addi.d	$a1, $sp, 1160
	beq	$a0, $a1, .LBB1_32
# %bb.31:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.4
	ld.d	$a1, $sp, 1160
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_32:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.4
	ld.d	$a0, $sp, 1112
	addi.d	$a1, $sp, 1128
	beq	$a0, $a1, .LBB1_34
# %bb.33:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.4
	ld.d	$a1, $sp, 1128
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_34:                               # %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.4
	ld.d	$a0, $sp, 1080
	addi.d	$a1, $sp, 1096
	beq	$a0, $a1, .LBB1_36
# %bb.35:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.5
	ld.d	$a1, $sp, 1096
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_36:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.5
	ld.d	$a0, $sp, 1048
	addi.d	$s4, $sp, 1064
	beq	$a0, $s4, .LBB1_38
# %bb.37:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.5
	ld.d	$a1, $sp, 1064
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_38:                               # %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev.exit.5
	ori	$a0, $zero, 3344
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beq	$a0, $s5, .LBB1_40
# %bb.39:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i311
	ori	$a1, $zero, 3360
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_40:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ori	$a0, $zero, 3328
	add.d	$fp, $sp, $a0
	ori	$a0, $zero, 3312
	add.d	$a0, $sp, $a0
	st.d	$fp, $a0, 0
	ori	$a0, $zero, 36
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp21:
	ori	$a0, $zero, 3312
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp22:
# %bb.41:                               # %.noexc312
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	pcalau12i	$a2, %pc_hi20(.L.str.52)
	addi.d	$a2, $a2, %pc_lo12(.L.str.52)
	vld	$vr0, $a2, 16
	ori	$a3, $zero, 3312
	add.d	$a3, $sp, $a3
	st.d	$a0, $a3, 0
	ori	$a3, $zero, 3328
	add.d	$a3, $sp, $a3
	st.d	$a1, $a3, 0
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.w	$a2, $a2, 32
	vst	$vr0, $a0, 0
	st.w	$a2, $a0, 32
	ori	$a2, $zero, 3320
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp24:
	addi.d	$a0, $sp, 1048
	ori	$a1, $zero, 3312
	add.d	$a1, $sp, $a1
	addi.d	$s1, $sp, 1048
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp25:
# %bb.42:                               # %._crit_edge.i.i313
	addi.d	$s1, $sp, 1136
	pcalau12i	$a0, %pc_hi20(.L.str.53)
	addi.d	$a0, $a0, %pc_lo12(.L.str.53)
	ld.d	$a1, $a0, 0
	ld.w	$a0, $a0, 7
	ori	$a2, $zero, 3296
	add.d	$s3, $sp, $a2
	ori	$a2, $zero, 3280
	add.d	$a2, $sp, $a2
	st.d	$s3, $a2, 0
	ori	$a2, $zero, 3296
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	ori	$a1, $zero, 3303
	add.d	$a1, $sp, $a1
	st.w	$a0, $a1, 0
	ori	$a0, $zero, 11
	ori	$a1, $zero, 3288
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a0, $zero, 3307
	add.d	$a0, $sp, $a0
	st.b	$zero, $a0, 0
.Ltmp27:
	ori	$a0, $zero, 3280
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 2
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp28:
# %bb.43:                               # %.noexc.i318
	ori	$a0, $zero, 3264
	add.d	$s1, $sp, $a0
	ori	$a0, $zero, 3248
	add.d	$a0, $sp, $a0
	st.d	$s1, $a0, 0
	ori	$a0, $zero, 25
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp30:
	ori	$a0, $zero, 3248
	add.d	$a0, $sp, $a0
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp31:
# %bb.44:                               # %.noexc319
	ori	$a1, $zero, 3248
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	pcalau12i	$a2, %pc_hi20(.L.str.54)
	addi.d	$a2, $a2, %pc_lo12(.L.str.54)
	vld	$vr0, $a2, 0
	ld.b	$a3, $a2, 24
	ld.d	$a2, $a2, 16
	ori	$a4, $zero, 3264
	add.d	$a4, $sp, $a4
	st.d	$a1, $a4, 0
	vst	$vr0, $a0, 0
	st.b	$a3, $a0, 24
	st.d	$a2, $a0, 16
	ori	$a0, $zero, 3248
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a2, $zero, 3256
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	stx.b	$zero, $a0, $a1
.Ltmp33:
	ori	$a0, $zero, 3248
	add.d	$a1, $sp, $a0
	ori	$a2, $zero, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp34:
# %bb.45:
.Ltmp36:
	addi.d	$a1, $sp, 1048
	ori	$a2, $zero, 3
	move	$a0, $zero
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp37:
# %bb.46:
	ld.d	$s0, $sp, 1304
	beqz	$s0, .LBB1_51
# %bb.47:
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB1_49
# %bb.48:
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 1264
	addi.d	$a1, $sp, 1280
	bne	$a0, $a1, .LBB1_52
	b	.LBB1_53
.LBB1_49:
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB1_252
# %bb.50:
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_253
.LBB1_51:                               # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
	ld.d	$a0, $sp, 1264
	addi.d	$a1, $sp, 1280
	beq	$a0, $a1, .LBB1_53
.LBB1_52:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i321
	ld.d	$a1, $sp, 1280
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_53:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i322
	ld.d	$a0, $sp, 1224
	addi.d	$a1, $sp, 1240
	beq	$a0, $a1, .LBB1_55
# %bb.54:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i323
	ld.d	$a1, $sp, 1240
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_55:                               # %_ZN8TestCaseD2Ev.exit
	ld.d	$s0, $sp, 1216
	beqz	$s0, .LBB1_60
# %bb.56:
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB1_58
# %bb.57:
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 1176
	bne	$a0, $s6, .LBB1_61
	b	.LBB1_62
.LBB1_58:
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB1_254
# %bb.59:
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_255
.LBB1_60:                               # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.1
	ld.d	$a0, $sp, 1176
	beq	$a0, $s6, .LBB1_62
.LBB1_61:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i321.1
	ld.d	$a1, $sp, 1192
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_62:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i322.1
	ld.d	$a0, $sp, 1136
	addi.d	$a1, $sp, 1152
	beq	$a0, $a1, .LBB1_64
# %bb.63:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i323.1
	ld.d	$a1, $sp, 1152
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_64:                               # %_ZN8TestCaseD2Ev.exit.1
	ld.d	$s0, $sp, 1128
	beqz	$s0, .LBB1_69
# %bb.65:
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB1_67
# %bb.66:
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 1088
	addi.d	$a1, $sp, 1104
	bne	$a0, $a1, .LBB1_70
	b	.LBB1_71
.LBB1_67:
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB1_256
# %bb.68:
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_257
.LBB1_69:                               # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.2
	ld.d	$a0, $sp, 1088
	addi.d	$a1, $sp, 1104
	beq	$a0, $a1, .LBB1_71
.LBB1_70:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i321.2
	ld.d	$a1, $sp, 1104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_71:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i322.2
	ld.d	$a0, $sp, 1048
	beq	$a0, $s4, .LBB1_73
# %bb.72:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i323.2
	ld.d	$a1, $sp, 1064
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_73:                               # %_ZN8TestCaseD2Ev.exit.2
	ori	$a0, $zero, 3248
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beq	$a0, $s1, .LBB1_75
# %bb.74:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326
	ori	$a1, $zero, 3264
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_75:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328
	ori	$a0, $zero, 3280
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beq	$a0, $s3, .LBB1_77
# %bb.76:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i329
	ori	$a1, $zero, 3296
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_77:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit331
	ori	$a0, $zero, 3312
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beq	$a0, $fp, .LBB1_79
# %bb.78:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i332
	ori	$a1, $zero, 3328
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_79:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit334
	addi.d	$a0, $sp, 1032
	st.d	$a0, $sp, 1016
	ori	$a0, $zero, 22
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp39:
	addi.d	$a0, $sp, 1016
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp40:
# %bb.80:                               # %.noexc337
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	pcalau12i	$a2, %pc_hi20(.L.str.55)
	addi.d	$a2, $a2, %pc_lo12(.L.str.55)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 14
	st.d	$a0, $sp, 1016
	st.d	$a1, $sp, 1032
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 14
	ld.d	$a0, $sp, 1016
	st.d	$a1, $sp, 1024
	stx.b	$zero, $a0, $a1
.Ltmp42:
	addi.d	$a0, $sp, 1048
	addi.d	$a1, $sp, 1016
	addi.d	$s1, $sp, 1048
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp43:
# %bb.81:
	addi.d	$s1, $sp, 1136
	addi.d	$a0, $sp, 952
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSt7__cxx119to_stringEi)
	jirl	$ra, $ra, 0
.Ltmp45:
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a3, $a0, %pc_lo12(.L.str.56)
	addi.d	$a0, $sp, 952
	ori	$a4, $zero, 16
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp46:
# %bb.82:                               # %.noexc341
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	st.d	$s5, $a1, 0
	ld.d	$a1, $a0, 0
	addi.d	$s0, $a0, 16
	beq	$a1, $s0, .LBB1_84
# %bb.83:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i339
	ld.d	$a2, $a0, 16
	ori	$a3, $zero, 3360
	add.d	$a3, $sp, $a3
	st.d	$a2, $a3, 0
	ld.d	$fp, $a0, 8
	ori	$a2, $zero, 3344
	add.d	$a2, $sp, $a2
	st.d	$a1, $a2, 0
	b	.LBB1_85
.LBB1_84:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i340
	ld.d	$fp, $a0, 8
	addi.d	$a2, $fp, 1
	move	$s3, $a0
	move	$a0, $s5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s3
.LBB1_85:
	ori	$a1, $zero, 3352
	add.d	$a1, $sp, $a1
	st.d	$fp, $a1, 0
	st.d	$s0, $a0, 0
	st.d	$zero, $a0, 8
	ori	$a1, $zero, 3352
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.w	$a2, $zero, -3
	lu52i.d	$s4, $a2, 2047
	st.b	$zero, $a0, 16
	bgeu	$a1, $s4, .LBB1_266
# %bb.86:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
.Ltmp48:
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a1, $a0, %pc_lo12(.L.str.57)
	ori	$a0, $zero, 3344
	add.d	$a0, $sp, $a0
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp49:
# %bb.87:                               # %.noexc347
	addi.d	$a3, $sp, 1000
	st.d	$a3, $sp, 984
	ld.d	$a1, $a0, 0
	addi.d	$s3, $a0, 16
	beq	$a1, $s3, .LBB1_89
# %bb.88:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i342
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 1000
	ld.d	$fp, $a0, 8
	st.d	$a1, $sp, 984
	b	.LBB1_90
.LBB1_89:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i345
	ld.d	$fp, $a0, 8
	addi.d	$a2, $fp, 1
	move	$s0, $a0
	move	$a0, $a3
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s0
.LBB1_90:
	st.d	$fp, $sp, 992
	st.d	$s3, $a0, 0
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
.Ltmp50:
	addi.d	$a1, $sp, 984
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp51:
# %bb.91:                               # %.noexc.i349
	addi.d	$s1, $sp, 1224
	addi.d	$a0, $sp, 936
	st.d	$a0, $sp, 920
	ori	$a0, $zero, 32
	st.d	$a0, $sp, 472
.Ltmp53:
	addi.d	$a0, $sp, 920
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp54:
# %bb.92:                               # %.noexc350
	ld.d	$a1, $sp, 472
	pcalau12i	$a2, %pc_hi20(.L.str.58)
	addi.d	$s0, $a2, %pc_lo12(.L.str.58)
	vld	$vr0, $s0, 16
	st.d	$a0, $sp, 920
	st.d	$a1, $sp, 936
	vst	$vr0, $a0, 16
	vld	$vr0, $s0, 0
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 920
	st.d	$a1, $sp, 928
	stx.b	$zero, $a0, $a1
.Ltmp56:
	addi.d	$a1, $sp, 920
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp57:
# %bb.93:                               # %.noexc.i353
	addi.d	$s1, $sp, 1312
	addi.d	$a0, $sp, 904
	st.d	$a0, $sp, 888
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 472
.Ltmp59:
	addi.d	$a0, $sp, 888
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp60:
# %bb.94:                               # %.noexc354
	ld.d	$a1, $sp, 472
	pcalau12i	$a2, %pc_hi20(.L.str.59)
	addi.d	$s7, $a2, %pc_lo12(.L.str.59)
	vld	$vr0, $s7, 0
	ld.d	$s3, $s7, 13
	st.d	$a0, $sp, 888
	st.d	$a1, $sp, 904
	vst	$vr0, $a0, 0
	st.d	$s3, $a0, 13
	ld.d	$a0, $sp, 888
	st.d	$a1, $sp, 896
	stx.b	$zero, $a0, $a1
.Ltmp62:
	addi.d	$a1, $sp, 888
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp63:
# %bb.95:                               # %.noexc.i357
	addi.d	$s1, $sp, 1400
	addi.d	$a0, $sp, 872
	st.d	$a0, $sp, 856
	ori	$a0, $zero, 25
	st.d	$a0, $sp, 472
.Ltmp65:
	addi.d	$a0, $sp, 856
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp66:
# %bb.96:                               # %.noexc358
	st.d	$a0, $sp, 856
	ld.d	$a1, $sp, 472
	pcalau12i	$a2, %pc_hi20(.L.str.60)
	addi.d	$s6, $a2, %pc_lo12(.L.str.60)
	vld	$vr0, $s6, 0
	ld.b	$s5, $s6, 24
	ld.d	$s8, $s6, 16
	st.d	$a1, $sp, 872
	vst	$vr0, $a0, 0
	st.b	$s5, $a0, 24
	st.d	$s8, $a0, 16
	ld.d	$a0, $sp, 856
	st.d	$a1, $sp, 864
	stx.b	$zero, $a0, $a1
.Ltmp68:
	addi.d	$a1, $sp, 856
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp69:
# %bb.97:                               # %.noexc.i361
	addi.d	$s1, $sp, 1488
	addi.d	$a0, $sp, 840
	st.d	$a0, $sp, 824
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 472
.Ltmp71:
	addi.d	$a0, $sp, 824
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp72:
# %bb.98:                               # %.noexc362
	st.d	$s4, $sp, 48                    # 8-byte Folded Spill
	ld.d	$a1, $sp, 472
	pcalau12i	$a2, %pc_hi20(.L.str.61)
	addi.d	$fp, $a2, %pc_lo12(.L.str.61)
	vld	$vr0, $fp, 0
	ld.d	$s4, $fp, 13
	st.d	$a0, $sp, 824
	st.d	$a1, $sp, 840
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 824
	st.d	$a1, $sp, 832
	stx.b	$zero, $a0, $a1
.Ltmp74:
	addi.d	$a1, $sp, 824
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp75:
# %bb.99:                               # %._crit_edge.i.i364
	addi.d	$s1, $sp, 1576
	pcalau12i	$a0, %pc_hi20(.L.str.62)
	addi.d	$a0, $a0, %pc_lo12(.L.str.62)
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 6
	addi.d	$a0, $sp, 808
	st.d	$a0, $sp, 792
	st.d	$a1, $sp, 40                    # 8-byte Folded Spill
	st.d	$a1, $sp, 808
	st.d	$a2, $sp, 32                    # 8-byte Folded Spill
	st.d	$a2, $sp, 814
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 800
	st.b	$zero, $sp, 822
.Ltmp77:
	addi.d	$a1, $sp, 792
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp78:
# %bb.100:                              # %.noexc.i369
	addi.d	$s1, $sp, 1664
	addi.d	$a0, $sp, 776
	st.d	$a0, $sp, 760
	ori	$a0, $zero, 26
	st.d	$a0, $sp, 472
.Ltmp80:
	addi.d	$a0, $sp, 760
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp81:
# %bb.101:                              # %.noexc370
	st.d	$a0, $sp, 760
	ld.d	$a1, $sp, 472
	pcalau12i	$a2, %pc_hi20(.L.str.63)
	addi.d	$a2, $a2, %pc_lo12(.L.str.63)
	vld	$vr0, $a2, 0
	ld.h	$a3, $a2, 24
	ld.d	$a2, $a2, 16
	st.d	$a1, $sp, 776
	vst	$vr0, $a0, 0
	st.h	$a3, $a0, 24
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 760
	st.d	$a1, $sp, 768
	stx.b	$zero, $a0, $a1
.Ltmp83:
	addi.d	$a1, $sp, 760
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp84:
# %bb.102:                              # %.noexc.i373
	addi.d	$s1, $sp, 1752
	addi.d	$a0, $sp, 744
	st.d	$a0, $sp, 728
	ori	$a0, $zero, 26
	st.d	$a0, $sp, 472
.Ltmp86:
	addi.d	$a0, $sp, 728
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp87:
# %bb.103:                              # %.noexc374
	st.d	$a0, $sp, 728
	ld.d	$a1, $sp, 472
	pcalau12i	$a2, %pc_hi20(.L.str.64)
	addi.d	$a2, $a2, %pc_lo12(.L.str.64)
	vld	$vr0, $a2, 0
	ld.h	$a3, $a2, 24
	ld.d	$a2, $a2, 16
	st.d	$a1, $sp, 744
	vst	$vr0, $a0, 0
	st.h	$a3, $a0, 24
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 728
	st.d	$a1, $sp, 736
	stx.b	$zero, $a0, $a1
.Ltmp89:
	addi.d	$a1, $sp, 728
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp90:
# %bb.104:                              # %.noexc.i377
	addi.d	$s1, $sp, 1840
	addi.d	$a0, $sp, 712
	st.d	$a0, $sp, 696
	ori	$a0, $zero, 27
	st.d	$a0, $sp, 472
.Ltmp92:
	addi.d	$a0, $sp, 696
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp93:
# %bb.105:                              # %.noexc378
	st.d	$a0, $sp, 696
	ld.d	$a1, $sp, 472
	pcalau12i	$a2, %pc_hi20(.L.str.65)
	addi.d	$a2, $a2, %pc_lo12(.L.str.65)
	vld	$vr0, $a2, 0
	ld.w	$a3, $a2, 23
	ld.d	$a2, $a2, 16
	st.d	$a1, $sp, 712
	vst	$vr0, $a0, 0
	st.w	$a3, $a0, 23
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 696
	st.d	$a1, $sp, 704
	stx.b	$zero, $a0, $a1
.Ltmp95:
	addi.d	$a1, $sp, 696
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp96:
# %bb.106:                              # %.noexc.i381
	addi.d	$s1, $sp, 1928
	addi.d	$a0, $sp, 680
	st.d	$a0, $sp, 664
	ori	$a0, $zero, 28
	st.d	$a0, $sp, 472
.Ltmp98:
	addi.d	$a0, $sp, 664
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp99:
# %bb.107:                              # %.noexc382
	st.d	$a0, $sp, 664
	ld.d	$a1, $sp, 472
	pcalau12i	$a2, %pc_hi20(.L.str.66)
	addi.d	$a2, $a2, %pc_lo12(.L.str.66)
	vld	$vr0, $a2, 0
	ld.w	$a3, $a2, 24
	ld.d	$a2, $a2, 16
	st.d	$a1, $sp, 680
	vst	$vr0, $a0, 0
	st.w	$a3, $a0, 24
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 664
	st.d	$a1, $sp, 672
	stx.b	$zero, $a0, $a1
.Ltmp101:
	addi.d	$a1, $sp, 664
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp102:
# %bb.108:                              # %.noexc.i385
	addi.d	$s1, $sp, 2016
	addi.d	$a0, $sp, 648
	st.d	$a0, $sp, 632
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 472
.Ltmp104:
	addi.d	$a0, $sp, 632
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp105:
# %bb.109:                              # %.noexc386
	ld.d	$a1, $sp, 472
	pcalau12i	$a2, %pc_hi20(.L.str.67)
	addi.d	$a2, $a2, %pc_lo12(.L.str.67)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	st.d	$a0, $sp, 632
	st.d	$a1, $sp, 648
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 632
	st.d	$a1, $sp, 640
	stx.b	$zero, $a0, $a1
.Ltmp107:
	addi.d	$a1, $sp, 632
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp108:
# %bb.110:                              # %.noexc.i389
	st.d	$fp, $sp, 24                    # 8-byte Folded Spill
	ori	$a0, $zero, 2104
	add.d	$s1, $sp, $a0
	addi.d	$a0, $sp, 616
	st.d	$a0, $sp, 600
	ori	$a0, $zero, 18
	st.d	$a0, $sp, 472
.Ltmp110:
	addi.d	$a0, $sp, 600
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp111:
# %bb.111:                              # %.noexc390
	ld.d	$a1, $sp, 472
	pcalau12i	$a2, %pc_hi20(.L.str.68)
	addi.d	$a2, $a2, %pc_lo12(.L.str.68)
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 16
	st.d	$a0, $sp, 600
	st.d	$a1, $sp, 616
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 16
	ld.d	$a0, $sp, 600
	st.d	$a1, $sp, 608
	stx.b	$zero, $a0, $a1
.Ltmp113:
	addi.d	$a1, $sp, 600
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp114:
# %bb.112:                              # %._crit_edge.i.i392
	ori	$a0, $zero, 2192
	add.d	$s1, $sp, $a0
	addi.d	$a0, $sp, 584
	st.d	$a0, $sp, 568
	ori	$a0, $zero, 125
	st.h	$a0, $sp, 584
	st.d	$fp, $sp, 576
.Ltmp116:
	addi.d	$a1, $sp, 568
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp117:
# %bb.113:                              # %.noexc.i397
	ori	$a0, $zero, 2280
	add.d	$s1, $sp, $a0
	addi.d	$a0, $sp, 552
	st.d	$a0, $sp, 536
	ori	$a0, $zero, 21
	st.d	$a0, $sp, 472
.Ltmp119:
	addi.d	$a0, $sp, 536
	addi.d	$a1, $sp, 472
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp120:
# %bb.114:                              # %.noexc398
	ld.d	$a1, $sp, 472
	pcalau12i	$a2, %pc_hi20(.L.str.70)
	addi.d	$a2, $a2, %pc_lo12(.L.str.70)
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 13
	st.d	$a0, $sp, 536
	st.d	$a1, $sp, 552
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 13
	ld.d	$a0, $sp, 536
	st.d	$a1, $sp, 544
	stx.b	$zero, $a0, $a1
.Ltmp122:
	addi.d	$a1, $sp, 536
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp123:
# %bb.115:
	ori	$a0, $zero, 2368
	add.d	$s1, $sp, $a0
	addi.d	$a0, $sp, 440
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZNSt7__cxx119to_stringEi)
	jirl	$ra, $ra, 0
.Ltmp125:
	pcalau12i	$a0, %pc_hi20(.L.str.56)
	addi.d	$a3, $a0, %pc_lo12(.L.str.56)
	addi.d	$a0, $sp, 440
	ori	$a4, $zero, 16
	move	$a1, $zero
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm)
	jirl	$ra, $ra, 0
.Ltmp126:
# %bb.116:                              # %.noexc404
	addi.d	$a3, $sp, 488
	st.d	$a3, $sp, 472
	ld.d	$a1, $a0, 0
	addi.d	$s2, $a0, 16
	beq	$a1, $s2, .LBB1_118
# %bb.117:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i400
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 488
	ld.d	$fp, $a0, 8
	st.d	$a1, $sp, 472
	b	.LBB1_119
.LBB1_118:                              # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i403
	ld.d	$fp, $a0, 8
	addi.d	$a2, $fp, 1
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	move	$s6, $s0
	move	$s0, $s4
	move	$s4, $s7
	move	$s7, $s8
	move	$s8, $s5
	move	$s5, $s3
	move	$s3, $a0
	move	$a0, $a3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$s3, $s5
	move	$s5, $s8
	move	$s8, $s7
	move	$s7, $s4
	move	$s4, $s0
	move	$s0, $s6
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
.LBB1_119:
	st.d	$fp, $sp, 480
	st.d	$s2, $a0, 0
	st.d	$zero, $a0, 8
	ld.d	$a1, $sp, 480
	st.b	$zero, $a0, 16
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	bgeu	$a1, $a0, .LBB1_268
# %bb.120:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i406
.Ltmp128:
	pcalau12i	$a0, %pc_hi20(.L.str.57)
	addi.d	$a1, $a0, %pc_lo12(.L.str.57)
	addi.d	$a0, $sp, 472
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp129:
# %bb.121:                              # %.noexc412
	addi.d	$a1, $sp, 520
	st.d	$a1, $sp, 504
	ld.d	$a1, $a0, 0
	addi.d	$s2, $a0, 16
	beq	$a1, $s2, .LBB1_123
# %bb.122:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i407
	ld.d	$a2, $a0, 16
	st.d	$a2, $sp, 520
	ld.d	$fp, $a0, 8
	st.d	$a1, $sp, 504
	b	.LBB1_124
.LBB1_123:                              # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i410
	ld.d	$fp, $a0, 8
	addi.d	$a2, $fp, 1
	st.d	$s6, $sp, 16                    # 8-byte Folded Spill
	move	$s6, $s0
	move	$s0, $s4
	move	$s4, $s7
	move	$s7, $s8
	move	$s8, $s5
	move	$s5, $s3
	move	$s3, $a0
	addi.d	$a0, $sp, 520
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	move	$a0, $s3
	move	$s3, $s5
	move	$s5, $s8
	move	$s8, $s7
	move	$s7, $s4
	move	$s4, $s0
	move	$s0, $s6
	ld.d	$s6, $sp, 16                    # 8-byte Folded Reload
.LBB1_124:
	st.d	$fp, $sp, 512
	st.d	$s2, $a0, 0
	st.d	$zero, $a0, 8
	st.b	$zero, $a0, 16
.Ltmp130:
	addi.d	$a1, $sp, 504
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp131:
# %bb.125:                              # %.noexc.i415
	ori	$a0, $zero, 2456
	add.d	$s1, $sp, $a0
	addi.d	$a0, $sp, 424
	st.d	$a0, $sp, 408
	ori	$a0, $zero, 32
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp133:
	addi.d	$a0, $sp, 408
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp134:
	ld.d	$fp, $sp, 24                    # 8-byte Folded Reload
# %bb.126:                              # %.noexc416
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	vld	$vr0, $s0, 16
	st.d	$a0, $sp, 408
	st.d	$a1, $sp, 424
	vst	$vr0, $a0, 16
	vld	$vr0, $s0, 0
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 408
	st.d	$a1, $sp, 416
	stx.b	$zero, $a0, $a1
.Ltmp136:
	addi.d	$a1, $sp, 408
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp137:
# %bb.127:                              # %.noexc.i419
	ori	$a0, $zero, 2544
	add.d	$s1, $sp, $a0
	addi.d	$a0, $sp, 392
	st.d	$a0, $sp, 376
	ori	$a0, $zero, 21
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp139:
	addi.d	$a0, $sp, 376
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp140:
# %bb.128:                              # %.noexc420
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	vld	$vr0, $s7, 0
	st.d	$a0, $sp, 376
	st.d	$a1, $sp, 392
	vst	$vr0, $a0, 0
	st.d	$s3, $a0, 13
	ld.d	$a0, $sp, 376
	st.d	$a1, $sp, 384
	stx.b	$zero, $a0, $a1
.Ltmp142:
	addi.d	$a1, $sp, 376
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp143:
# %bb.129:                              # %.noexc.i423
	ori	$a0, $zero, 2632
	add.d	$s1, $sp, $a0
	addi.d	$a0, $sp, 360
	st.d	$a0, $sp, 344
	ori	$a0, $zero, 25
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp145:
	addi.d	$a0, $sp, 344
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp146:
# %bb.130:                              # %.noexc424
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	vld	$vr0, $s6, 0
	st.d	$a0, $sp, 344
	st.d	$a1, $sp, 360
	vst	$vr0, $a0, 0
	st.b	$s5, $a0, 24
	st.d	$s8, $a0, 16
	ld.d	$a0, $sp, 344
	st.d	$a1, $sp, 352
	stx.b	$zero, $a0, $a1
.Ltmp148:
	addi.d	$a1, $sp, 344
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp149:
# %bb.131:                              # %.noexc.i427
	ori	$a0, $zero, 2720
	add.d	$s1, $sp, $a0
	addi.d	$a0, $sp, 328
	st.d	$a0, $sp, 312
	ori	$a0, $zero, 21
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp151:
	addi.d	$a0, $sp, 312
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp152:
# %bb.132:                              # %.noexc428
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	vld	$vr0, $fp, 0
	st.d	$a0, $sp, 312
	st.d	$a1, $sp, 328
	vst	$vr0, $a0, 0
	st.d	$s4, $a0, 13
	ld.d	$a0, $sp, 312
	st.d	$a1, $sp, 320
	stx.b	$zero, $a0, $a1
.Ltmp154:
	addi.d	$a1, $sp, 312
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp155:
# %bb.133:                              # %._crit_edge.i.i430
	ori	$a0, $zero, 2808
	add.d	$s1, $sp, $a0
	addi.d	$a0, $sp, 296
	st.d	$a0, $sp, 280
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $sp, 296
	ld.d	$a0, $sp, 32                    # 8-byte Folded Reload
	st.d	$a0, $sp, 302
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 288
	st.b	$zero, $sp, 310
.Ltmp157:
	addi.d	$a1, $sp, 280
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp158:
# %bb.134:                              # %.noexc.i435
	ori	$a0, $zero, 2896
	add.d	$s1, $sp, $a0
	addi.d	$a0, $sp, 264
	st.d	$a0, $sp, 248
	ori	$a0, $zero, 25
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp160:
	addi.d	$a0, $sp, 248
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp161:
# %bb.135:                              # %.noexc436
	st.d	$a0, $sp, 248
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	pcalau12i	$a2, %pc_hi20(.L.str.71)
	addi.d	$a2, $a2, %pc_lo12(.L.str.71)
	vld	$vr0, $a2, 0
	ld.b	$a3, $a2, 24
	ld.d	$a2, $a2, 16
	st.d	$a1, $sp, 264
	vst	$vr0, $a0, 0
	st.b	$a3, $a0, 24
	st.d	$a2, $a0, 16
	ld.d	$a0, $sp, 248
	st.d	$a1, $sp, 256
	stx.b	$zero, $a0, $a1
.Ltmp163:
	addi.d	$a1, $sp, 248
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp164:
# %bb.136:                              # %.noexc.i439
	ori	$a0, $zero, 2984
	add.d	$s1, $sp, $a0
	addi.d	$a0, $sp, 232
	st.d	$a0, $sp, 216
	ori	$a0, $zero, 32
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp166:
	addi.d	$a0, $sp, 216
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp167:
# %bb.137:                              # %.noexc440
	ori	$a1, $zero, 3376
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	pcalau12i	$a2, %pc_hi20(.L.str.72)
	addi.d	$a2, $a2, %pc_lo12(.L.str.72)
	vld	$vr0, $a2, 16
	st.d	$a0, $sp, 216
	st.d	$a1, $sp, 232
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 216
	st.d	$a1, $sp, 224
	stx.b	$zero, $a0, $a1
.Ltmp169:
	addi.d	$a1, $sp, 216
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp170:
# %bb.138:                              # %._crit_edge.i.i442
	ori	$a0, $zero, 3072
	add.d	$s1, $sp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.73)
	addi.d	$a0, $a0, %pc_lo12(.L.str.73)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 6
	addi.d	$a2, $sp, 200
	st.d	$a2, $sp, 184
	st.d	$a1, $sp, 200
	st.d	$a0, $sp, 206
	ori	$a0, $zero, 14
	st.d	$a0, $sp, 192
	st.b	$zero, $sp, 214
.Ltmp172:
	addi.d	$a1, $sp, 184
	ori	$a2, $zero, 1
	ori	$fp, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp173:
# %bb.139:                              # %._crit_edge.i.i446
	addi.d	$a0, $sp, 1048
	addi.d	$a0, $a0, 2047
	addi.d	$s1, $a0, 65
	addi.d	$s8, $sp, 168
	st.d	$s8, $sp, 152
	ori	$a0, $zero, 125
	st.h	$a0, $sp, 168
	st.d	$fp, $sp, 160
.Ltmp175:
	addi.d	$a1, $sp, 152
	ori	$a2, $zero, 1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp176:
# %bb.140:
.Ltmp178:
	ori	$a0, $zero, 2
	addi.d	$a1, $sp, 1048
	ori	$a2, $zero, 25
	addi.d	$fp, $sp, 1048
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp179:
# %bb.141:
	ori	$s0, $zero, 2200
	ori	$s2, $zero, 2128
	ori	$s7, $zero, 2168
	ori	$s3, $zero, 2112
	ori	$s4, $zero, 1
	ori	$s5, $zero, 1
	lu32i.d	$s5, 1
	b	.LBB1_143
	.p2align	4, , 16
.LBB1_142:                              # %_ZN8TestCaseD2Ev.exit460
                                        #   in Loop: Header=BB1_143 Depth=1
	addi.d	$s0, $s0, -88
	addi.d	$s2, $s2, -88
	addi.d	$s7, $s7, -88
	addi.d	$s3, $s3, -88
	beqz	$s0, .LBB1_154
.LBB1_143:                              # =>This Inner Loop Header: Depth=1
	add.d	$s6, $fp, $s3
	ld.d	$s1, $s6, 80
	beqz	$s1, .LBB1_148
# %bb.144:                              #   in Loop: Header=BB1_143 Depth=1
	ld.d	$a0, $s1, 8
	dbar	20
	bne	$a0, $s5, .LBB1_146
# %bb.145:                              #   in Loop: Header=BB1_143 Depth=1
	ld.d	$a0, $s1, 0
	st.d	$zero, $s1, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ld.d	$a0, $s1, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s1
	jirl	$ra, $a1, 0
	ld.d	$a0, $s6, 40
	add.d	$a1, $fp, $s7
	bne	$a1, $a0, .LBB1_149
	b	.LBB1_150
	.p2align	4, , 16
.LBB1_146:                              #   in Loop: Header=BB1_143 Depth=1
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB1_152
# %bb.147:                              #   in Loop: Header=BB1_143 Depth=1
	addi.d	$a1, $a0, -1
	st.w	$a1, $s1, 8
	addi.w	$a0, $a0, 0
	beq	$a0, $s4, .LBB1_153
	.p2align	4, , 16
.LBB1_148:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i454
                                        #   in Loop: Header=BB1_143 Depth=1
	ld.d	$a0, $s6, 40
	add.d	$a1, $fp, $s7
	beq	$a1, $a0, .LBB1_150
.LBB1_149:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i455
                                        #   in Loop: Header=BB1_143 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_150:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i456
                                        #   in Loop: Header=BB1_143 Depth=1
	ld.d	$a0, $s6, 0
	add.d	$a1, $fp, $s2
	beq	$a1, $a0, .LBB1_142
# %bb.151:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i457
                                        #   in Loop: Header=BB1_143 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB1_142
.LBB1_152:                              #   in Loop: Header=BB1_143 Depth=1
	addi.d	$a1, $s1, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	bne	$a0, $s4, .LBB1_148
.LBB1_153:                              #   in Loop: Header=BB1_143 Depth=1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s6, 40
	add.d	$a1, $fp, $s7
	bne	$a1, $a0, .LBB1_149
	b	.LBB1_150
.LBB1_154:
	ld.d	$a0, $sp, 152
	beq	$a0, $s8, .LBB1_156
# %bb.155:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i461
	ld.d	$a1, $sp, 168
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_156:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit463
	ld.d	$a0, $sp, 184
	ori	$a1, $zero, 3360
	add.d	$fp, $sp, $a1
	addi.d	$s0, $sp, 1032
	addi.d	$s1, $sp, 1000
	addi.d	$s2, $sp, 936
	addi.d	$s5, $sp, 840
	addi.d	$a1, $sp, 200
	beq	$a0, $a1, .LBB1_158
# %bb.157:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i464
	ld.d	$a1, $sp, 200
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_158:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit466
	ld.d	$a0, $sp, 216
	addi.d	$s3, $sp, 1064
	addi.d	$s4, $sp, 1192
	addi.d	$s6, $sp, 1280
	addi.d	$s7, $sp, 1240
	addi.d	$s8, $sp, 488
	addi.d	$a1, $sp, 232
	beq	$a0, $a1, .LBB1_160
# %bb.159:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i467
	ld.d	$a1, $sp, 232
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_160:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit469
	ld.d	$a0, $sp, 248
	addi.d	$a1, $sp, 264
	beq	$a0, $a1, .LBB1_162
# %bb.161:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i470
	ld.d	$a1, $sp, 264
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_162:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit472
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	beq	$a0, $a1, .LBB1_164
# %bb.163:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i473
	ld.d	$a1, $sp, 296
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_164:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit475
	ld.d	$a0, $sp, 312
	addi.d	$a1, $sp, 328
	beq	$a0, $a1, .LBB1_166
# %bb.165:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i476
	ld.d	$a1, $sp, 328
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_166:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit478
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	beq	$a0, $a1, .LBB1_168
# %bb.167:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i479
	ld.d	$a1, $sp, 360
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_168:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit481
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB1_170
# %bb.169:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i482
	ld.d	$a1, $sp, 392
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_170:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit484
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB1_172
# %bb.171:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i485
	ld.d	$a1, $sp, 424
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_172:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit487
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	beq	$a0, $a1, .LBB1_174
# %bb.173:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i488
	ld.d	$a1, $sp, 520
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_174:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit490
	ld.d	$a0, $sp, 472
	beq	$a0, $s8, .LBB1_176
# %bb.175:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i491
	ld.d	$a1, $sp, 488
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_176:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit493
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	beq	$a0, $a1, .LBB1_178
# %bb.177:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i494
	ld.d	$a1, $sp, 456
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_178:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit496
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	beq	$a0, $a1, .LBB1_180
# %bb.179:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i497
	ld.d	$a1, $sp, 552
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_180:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit499
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	beq	$a0, $a1, .LBB1_182
# %bb.181:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i500
	ld.d	$a1, $sp, 584
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_182:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit502
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB1_184
# %bb.183:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i503
	ld.d	$a1, $sp, 616
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_184:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit505
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB1_186
# %bb.185:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i506
	ld.d	$a1, $sp, 648
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_186:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit508
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB1_188
# %bb.187:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509
	ld.d	$a1, $sp, 680
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_188:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB1_190
# %bb.189:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i512
	ld.d	$a1, $sp, 712
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_190:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit514
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB1_192
# %bb.191:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i515
	ld.d	$a1, $sp, 744
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_192:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit517
	ld.d	$a0, $sp, 760
	addi.d	$a1, $sp, 776
	beq	$a0, $a1, .LBB1_194
# %bb.193:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i518
	ld.d	$a1, $sp, 776
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_194:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit520
	ld.d	$a0, $sp, 792
	addi.d	$a1, $sp, 808
	beq	$a0, $a1, .LBB1_196
# %bb.195:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i521
	ld.d	$a1, $sp, 808
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_196:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit523
	ld.d	$a0, $sp, 824
	beq	$a0, $s5, .LBB1_198
# %bb.197:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i524
	ld.d	$a1, $sp, 840
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_198:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit526
	ld.d	$a0, $sp, 856
	addi.d	$a1, $sp, 872
	beq	$a0, $a1, .LBB1_200
# %bb.199:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i527
	ld.d	$a1, $sp, 872
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_200:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit529
	ld.d	$a0, $sp, 888
	addi.d	$a1, $sp, 904
	beq	$a0, $a1, .LBB1_202
# %bb.201:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i530
	ld.d	$a1, $sp, 904
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_202:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit532
	ld.d	$a0, $sp, 920
	beq	$a0, $s2, .LBB1_204
# %bb.203:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i533
	ld.d	$a1, $sp, 936
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_204:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit535
	ld.d	$a0, $sp, 984
	beq	$a0, $s1, .LBB1_206
# %bb.205:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i536
	ld.d	$a1, $sp, 1000
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_206:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit538
	ori	$a0, $zero, 3344
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beq	$a0, $fp, .LBB1_208
# %bb.207:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i539
	ori	$a1, $zero, 3360
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_208:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit541
	ld.d	$a0, $sp, 952
	addi.d	$a1, $sp, 968
	beq	$a0, $a1, .LBB1_210
# %bb.209:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i542
	ld.d	$a1, $sp, 968
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_210:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit544
	ld.d	$a0, $sp, 1016
	beq	$a0, $s0, .LBB1_212
# %bb.211:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i545
	ld.d	$a1, $sp, 1032
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_212:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit547
	addi.d	$s0, $sp, 136
	st.d	$s0, $sp, 120
	ori	$a0, $zero, 40
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp181:
	addi.d	$a0, $sp, 120
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp182:
# %bb.213:                              # %.noexc550
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	pcalau12i	$a2, %pc_hi20(.L.str.74)
	addi.d	$a2, $a2, %pc_lo12(.L.str.74)
	vld	$vr0, $a2, 16
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 32
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 32
	st.d	$a1, $sp, 128
	stx.b	$zero, $a0, $a1
.Ltmp184:
	addi.d	$a0, $sp, 1048
	addi.d	$a1, $sp, 120
	addi.d	$fp, $sp, 1048
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp185:
# %bb.214:                              # %._crit_edge.i.i552
	addi.d	$fp, $sp, 1136
	pcalau12i	$a0, %pc_hi20(.L.str.75)
	addi.d	$a0, $a0, %pc_lo12(.L.str.75)
	ld.d	$a1, $a0, 0
	ld.d	$a0, $a0, 5
	addi.d	$s1, $sp, 104
	st.d	$s1, $sp, 88
	st.d	$a1, $sp, 104
	st.d	$a0, $sp, 109
	ori	$a0, $zero, 13
	st.d	$a0, $sp, 96
	st.b	$zero, $sp, 117
.Ltmp187:
	addi.d	$a1, $sp, 88
	ori	$a2, $zero, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp188:
# %bb.215:                              # %.noexc.i557
	addi.d	$fp, $sp, 1224
	addi.d	$s2, $sp, 72
	st.d	$s2, $sp, 56
	ori	$a0, $zero, 34
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	st.d	$a0, $a1, 0
.Ltmp190:
	addi.d	$a0, $sp, 56
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp191:
# %bb.216:                              # %.noexc558
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	pcalau12i	$a2, %pc_hi20(.L.str.76)
	addi.d	$a2, $a2, %pc_lo12(.L.str.76)
	vld	$vr0, $a2, 16
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 72
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.h	$a2, $a2, 32
	vst	$vr0, $a0, 0
	st.h	$a2, $a0, 32
	st.d	$a1, $sp, 64
	stx.b	$zero, $a0, $a1
.Ltmp193:
	addi.d	$a1, $sp, 56
	ori	$a2, $zero, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi)
	jirl	$ra, $ra, 0
.Ltmp194:
# %bb.217:
.Ltmp196:
	ori	$a0, $zero, 4
	addi.d	$a1, $sp, 1048
	ori	$a2, $zero, 3
	pcaddu18i	$ra, %call36(_Z8AddCases10TestCaseIDSt16initializer_listI8TestCaseE)
	jirl	$ra, $ra, 0
.Ltmp197:
# %bb.218:
	ld.d	$fp, $sp, 1304
	beqz	$fp, .LBB1_223
# %bb.219:
	ld.d	$a0, $fp, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB1_221
# %bb.220:
	ld.d	$a0, $fp, 0
	st.d	$zero, $fp, 8
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 1264
	bne	$a0, $s6, .LBB1_224
	b	.LBB1_225
.LBB1_221:
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB1_258
# %bb.222:
	addi.d	$a1, $a0, -1
	st.w	$a1, $fp, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_259
.LBB1_223:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i564
	ld.d	$a0, $sp, 1264
	beq	$a0, $s6, .LBB1_225
.LBB1_224:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i565
	ld.d	$a1, $sp, 1280
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_225:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i566
	ld.d	$a0, $sp, 1224
	beq	$a0, $s7, .LBB1_227
# %bb.226:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i567
	ld.d	$a1, $sp, 1240
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_227:                              # %_ZN8TestCaseD2Ev.exit570
	ld.d	$fp, $sp, 1216
	addi.d	$s5, $sp, 1152
	addi.d	$s6, $sp, 1104
	beqz	$fp, .LBB1_232
# %bb.228:
	ld.d	$a0, $fp, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB1_230
# %bb.229:
	ld.d	$a0, $fp, 0
	st.d	$zero, $fp, 8
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 1176
	bne	$a0, $s4, .LBB1_233
	b	.LBB1_234
.LBB1_230:
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB1_260
# %bb.231:
	addi.d	$a1, $a0, -1
	st.w	$a1, $fp, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_261
.LBB1_232:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i564.1
	ld.d	$a0, $sp, 1176
	beq	$a0, $s4, .LBB1_234
.LBB1_233:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i565.1
	ld.d	$a1, $sp, 1192
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_234:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i566.1
	ld.d	$a0, $sp, 1136
	beq	$a0, $s5, .LBB1_236
# %bb.235:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i567.1
	ld.d	$a1, $sp, 1152
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_236:                              # %_ZN8TestCaseD2Ev.exit570.1
	ld.d	$fp, $sp, 1128
	beqz	$fp, .LBB1_241
# %bb.237:
	ld.d	$a0, $fp, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB1_239
# %bb.238:
	ld.d	$a0, $fp, 0
	st.d	$zero, $fp, 8
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	jirl	$ra, $a1, 0
	ld.d	$a0, $sp, 1088
	bne	$a0, $s6, .LBB1_242
	b	.LBB1_243
.LBB1_239:
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB1_262
# %bb.240:
	addi.d	$a1, $a0, -1
	st.w	$a1, $fp, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB1_263
.LBB1_241:                              # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i564.2
	ld.d	$a0, $sp, 1088
	beq	$a0, $s6, .LBB1_243
.LBB1_242:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i565.2
	ld.d	$a1, $sp, 1104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_243:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i566.2
	ld.d	$a0, $sp, 1048
	beq	$a0, $s3, .LBB1_245
# %bb.244:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i567.2
	ld.d	$a1, $sp, 1064
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_245:                              # %_ZN8TestCaseD2Ev.exit570.2
	ld.d	$a0, $sp, 56
	beq	$a0, $s2, .LBB1_247
# %bb.246:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i571
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_247:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit573
	ld.d	$a0, $sp, 88
	beq	$a0, $s1, .LBB1_249
# %bb.248:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i574
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_249:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit576
	ld.d	$a0, $sp, 120
	beq	$a0, $s0, .LBB1_251
# %bb.250:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i577
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_251:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit579
	addi.d	$sp, $sp, 1440
	ld.d	$s8, $sp, 1944                  # 8-byte Folded Reload
	ld.d	$s7, $sp, 1952                  # 8-byte Folded Reload
	ld.d	$s6, $sp, 1960                  # 8-byte Folded Reload
	ld.d	$s5, $sp, 1968                  # 8-byte Folded Reload
	ld.d	$s4, $sp, 1976                  # 8-byte Folded Reload
	ld.d	$s3, $sp, 1984                  # 8-byte Folded Reload
	ld.d	$s2, $sp, 1992                  # 8-byte Folded Reload
	ld.d	$s1, $sp, 2000                  # 8-byte Folded Reload
	ld.d	$s0, $sp, 2008                  # 8-byte Folded Reload
	ld.d	$fp, $sp, 2016                  # 8-byte Folded Reload
	ld.d	$ra, $sp, 2024                  # 8-byte Folded Reload
	addi.d	$sp, $sp, 2032
	ret
.LBB1_252:
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_51
.LBB1_253:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1264
	addi.d	$a1, $sp, 1280
	bne	$a0, $a1, .LBB1_52
	b	.LBB1_53
.LBB1_254:
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_60
.LBB1_255:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1176
	bne	$a0, $s6, .LBB1_61
	b	.LBB1_62
.LBB1_256:
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_69
.LBB1_257:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1088
	addi.d	$a1, $sp, 1104
	bne	$a0, $a1, .LBB1_70
	b	.LBB1_71
.LBB1_258:
	addi.d	$a1, $fp, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_223
.LBB1_259:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1264
	bne	$a0, $s6, .LBB1_224
	b	.LBB1_225
.LBB1_260:
	addi.d	$a1, $fp, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_232
.LBB1_261:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1176
	bne	$a0, $s4, .LBB1_233
	b	.LBB1_234
.LBB1_262:
	addi.d	$a1, $fp, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB1_241
.LBB1_263:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1088
	bne	$a0, $s6, .LBB1_242
	b	.LBB1_243
.LBB1_264:                              # %.invoke.i.i
.Ltmp205:
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp206:
# %bb.265:                              # %.cont.i.i
.LBB1_266:
.Ltmp202:
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp203:
# %bb.267:                              # %.noexc346
.LBB1_268:
.Ltmp199:
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp200:
# %bb.269:                              # %.noexc411
.LBB1_270:                              # %.loopexit735.loopexit
.Ltmp198:
	move	$s4, $a0
	addi.d	$a0, $sp, 1224
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1136
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1048
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$s3, $zero, 1
	b	.LBB1_272
.LBB1_271:
.Ltmp195:
	move	$s4, $a0
	move	$s3, $zero
.LBB1_272:                              # %.loopexit735
	ld.d	$a0, $sp, 56
	bne	$a0, $s2, .LBB1_278
# %bb.273:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit681
	ld.d	$a0, $sp, 88
	bne	$a0, $s1, .LBB1_282
.LBB1_274:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit684
	ld.d	$a0, $sp, 120
	beq	$a0, $s0, .LBB1_276
.LBB1_275:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i685
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_276:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit687
	addi.d	$s0, $sp, 1048
	xor	$a0, $s0, $fp
	sltui	$a0, $a0, 1
	or	$a0, $s3, $a0
	bnez	$a0, .LBB1_350
	.p2align	4, , 16
.LBB1_277:                              # %.preheader733
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$fp, $fp, -88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$fp, $s0, .LBB1_277
	b	.LBB1_350
.LBB1_278:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i679
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 88
	beq	$a0, $s1, .LBB1_274
	b	.LBB1_282
.LBB1_279:
.Ltmp192:
	b	.LBB1_281
.LBB1_280:
.Ltmp189:
.LBB1_281:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit681
	move	$s4, $a0
	move	$s3, $zero
	ld.d	$a0, $sp, 88
	beq	$a0, $s1, .LBB1_274
.LBB1_282:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i682
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120
	bne	$a0, $s0, .LBB1_275
	b	.LBB1_276
.LBB1_283:
.Ltmp186:
	move	$s4, $a0
	move	$s3, $zero
	ld.d	$a0, $sp, 120
	bne	$a0, $s0, .LBB1_275
	b	.LBB1_276
.LBB1_284:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit687.thread
.Ltmp183:
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_285:                              # %.loopexit736.loopexit
.Ltmp180:
	move	$s4, $a0
	addi.d	$a0, $fp, 2047
	addi.d	$a0, $a0, 65
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 3072
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2984
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2896
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2808
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2720
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2632
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2544
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2456
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2368
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2280
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2192
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 2104
	add.d	$a0, $sp, $a0
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 2016
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1928
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1840
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1752
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1664
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1576
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1488
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1400
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1312
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1224
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1136
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1048
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 1
	b	.LBB1_287
.LBB1_286:
.Ltmp177:
	move	$s4, $a0
	move	$fp, $zero
.LBB1_287:                              # %.loopexit736
	ld.d	$a0, $sp, 152
	bne	$a0, $s8, .LBB1_313
# %bb.288:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit594
	ld.d	$a0, $sp, 184
	addi.d	$a1, $sp, 200
	bne	$a0, $a1, .LBB1_315
.LBB1_289:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit597
	ld.d	$a0, $sp, 216
	addi.d	$a1, $sp, 232
	bne	$a0, $a1, .LBB1_316
.LBB1_290:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600
	ld.d	$a0, $sp, 248
	addi.d	$a1, $sp, 264
	bne	$a0, $a1, .LBB1_321
.LBB1_291:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	bne	$a0, $a1, .LBB1_322
.LBB1_292:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit606
	ld.d	$a0, $sp, 312
	addi.d	$a1, $sp, 328
	bne	$a0, $a1, .LBB1_323
.LBB1_293:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	bne	$a0, $a1, .LBB1_324
.LBB1_294:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	bne	$a0, $a1, .LBB1_325
.LBB1_295:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit615
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	bne	$a0, $a1, .LBB1_326
.LBB1_296:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	bne	$a0, $a1, .LBB1_327
.LBB1_297:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit621
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	bne	$a0, $a1, .LBB1_328
.LBB1_298:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit624
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	bne	$a0, $a1, .LBB1_329
.LBB1_299:
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	bne	$a0, $a1, .LBB1_330
.LBB1_300:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	bne	$a0, $a1, .LBB1_331
.LBB1_301:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit633
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	bne	$a0, $a1, .LBB1_332
.LBB1_302:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	bne	$a0, $a1, .LBB1_333
.LBB1_303:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	bne	$a0, $a1, .LBB1_334
.LBB1_304:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	bne	$a0, $a1, .LBB1_335
.LBB1_305:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit645
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	bne	$a0, $a1, .LBB1_336
.LBB1_306:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit648
	ld.d	$a0, $sp, 760
	addi.d	$a1, $sp, 776
	bne	$a0, $a1, .LBB1_337
.LBB1_307:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651
	ld.d	$a0, $sp, 792
	addi.d	$a1, $sp, 808
	bne	$a0, $a1, .LBB1_338
.LBB1_308:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit654
	ld.d	$a0, $sp, 824
	addi.d	$a1, $sp, 840
	bne	$a0, $a1, .LBB1_339
.LBB1_309:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit657
	ld.d	$a0, $sp, 856
	addi.d	$a1, $sp, 872
	bne	$a0, $a1, .LBB1_340
.LBB1_310:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660
	ld.d	$a0, $sp, 888
	addi.d	$a1, $sp, 904
	bne	$a0, $a1, .LBB1_341
.LBB1_311:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit663
	ld.d	$a0, $sp, 920
	addi.d	$a1, $sp, 936
	bne	$a0, $a1, .LBB1_342
.LBB1_312:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit666
	ld.d	$a0, $sp, 984
	addi.d	$a1, $sp, 1000
	bne	$a0, $a1, .LBB1_343
	b	.LBB1_344
.LBB1_313:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i592
	ld.d	$a1, $sp, 168
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 184
	addi.d	$a1, $sp, 200
	beq	$a0, $a1, .LBB1_289
	b	.LBB1_315
.LBB1_314:
.Ltmp174:
	move	$s4, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 184
	addi.d	$a1, $sp, 200
	beq	$a0, $a1, .LBB1_289
.LBB1_315:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i595
	ld.d	$a1, $sp, 200
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 216
	addi.d	$a1, $sp, 232
	beq	$a0, $a1, .LBB1_290
.LBB1_316:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i598
	ld.d	$a1, $sp, 232
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 248
	addi.d	$a1, $sp, 264
	beq	$a0, $a1, .LBB1_291
	b	.LBB1_321
.LBB1_317:
.Ltmp171:
	move	$s4, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 216
	addi.d	$a1, $sp, 232
	beq	$a0, $a1, .LBB1_290
	b	.LBB1_316
.LBB1_318:
.Ltmp168:
	b	.LBB1_320
.LBB1_319:
.Ltmp165:
.LBB1_320:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit600
	move	$s4, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 248
	addi.d	$a1, $sp, 264
	beq	$a0, $a1, .LBB1_291
.LBB1_321:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i601
	ld.d	$a1, $sp, 264
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	beq	$a0, $a1, .LBB1_292
.LBB1_322:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i604
	ld.d	$a1, $sp, 296
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 312
	addi.d	$a1, $sp, 328
	beq	$a0, $a1, .LBB1_293
.LBB1_323:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i607
	ld.d	$a1, $sp, 328
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	beq	$a0, $a1, .LBB1_294
.LBB1_324:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i610
	ld.d	$a1, $sp, 360
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB1_295
.LBB1_325:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i613
	ld.d	$a1, $sp, 392
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB1_296
.LBB1_326:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i616
	ld.d	$a1, $sp, 424
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	beq	$a0, $a1, .LBB1_297
.LBB1_327:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i619
	ld.d	$a1, $sp, 520
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	beq	$a0, $a1, .LBB1_298
.LBB1_328:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i622
	ld.d	$a1, $sp, 488
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	beq	$a0, $a1, .LBB1_299
.LBB1_329:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i625
	ld.d	$a1, $sp, 456
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	beq	$a0, $a1, .LBB1_300
.LBB1_330:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i628
	ld.d	$a1, $sp, 552
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	beq	$a0, $a1, .LBB1_301
.LBB1_331:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i631
	ld.d	$a1, $sp, 584
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB1_302
.LBB1_332:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i634
	ld.d	$a1, $sp, 616
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB1_303
.LBB1_333:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i637
	ld.d	$a1, $sp, 648
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB1_304
.LBB1_334:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i640
	ld.d	$a1, $sp, 680
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB1_305
.LBB1_335:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i643
	ld.d	$a1, $sp, 712
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB1_306
.LBB1_336:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i646
	ld.d	$a1, $sp, 744
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 760
	addi.d	$a1, $sp, 776
	beq	$a0, $a1, .LBB1_307
.LBB1_337:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i649
	ld.d	$a1, $sp, 776
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 792
	addi.d	$a1, $sp, 808
	beq	$a0, $a1, .LBB1_308
.LBB1_338:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i652
	ld.d	$a1, $sp, 808
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 824
	addi.d	$a1, $sp, 840
	beq	$a0, $a1, .LBB1_309
.LBB1_339:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i655
	ld.d	$a1, $sp, 840
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 856
	addi.d	$a1, $sp, 872
	beq	$a0, $a1, .LBB1_310
.LBB1_340:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i658
	ld.d	$a1, $sp, 872
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 888
	addi.d	$a1, $sp, 904
	beq	$a0, $a1, .LBB1_311
.LBB1_341:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i661
	ld.d	$a1, $sp, 904
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 920
	addi.d	$a1, $sp, 936
	beq	$a0, $a1, .LBB1_312
.LBB1_342:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i664
	ld.d	$a1, $sp, 936
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 984
	addi.d	$a1, $sp, 1000
	beq	$a0, $a1, .LBB1_344
.LBB1_343:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i667
	ld.d	$a1, $sp, 1000
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_344:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit669
	ori	$a0, $zero, 3344
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	ori	$a1, $zero, 3360
	add.d	$a1, $sp, $a1
	bne	$a0, $a1, .LBB1_351
# %bb.345:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit672
	ld.d	$a0, $sp, 952
	addi.d	$a1, $sp, 968
	bne	$a0, $a1, .LBB1_352
.LBB1_346:
	ld.d	$a0, $sp, 1016
	addi.d	$a1, $sp, 1032
	beq	$a0, $a1, .LBB1_348
.LBB1_347:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i676
	ld.d	$a1, $sp, 1032
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_348:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678
	addi.d	$s0, $sp, 1048
	xor	$a0, $s0, $s1
	sltui	$a0, $a0, 1
	or	$a0, $fp, $a0
	bnez	$a0, .LBB1_350
	.p2align	4, , 16
.LBB1_349:                              # %.preheader731
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s1, $s1, -88
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$s1, $s0, .LBB1_349
.LBB1_350:
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_351:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i670
	ori	$a1, $zero, 3360
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 952
	addi.d	$a1, $sp, 968
	beq	$a0, $a1, .LBB1_346
.LBB1_352:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i673
	ld.d	$a1, $sp, 968
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 1016
	addi.d	$a1, $sp, 1032
	bne	$a0, $a1, .LBB1_347
	b	.LBB1_348
.LBB1_353:
.Ltmp162:
	b	.LBB1_355
.LBB1_354:
.Ltmp159:
.LBB1_355:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit603
	move	$s4, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 280
	addi.d	$a1, $sp, 296
	beq	$a0, $a1, .LBB1_292
	b	.LBB1_322
.LBB1_356:
.Ltmp156:
	move	$s4, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 312
	addi.d	$a1, $sp, 328
	beq	$a0, $a1, .LBB1_293
	b	.LBB1_323
.LBB1_357:
.Ltmp153:
	b	.LBB1_359
.LBB1_358:
.Ltmp150:
.LBB1_359:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit609
	move	$s4, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 344
	addi.d	$a1, $sp, 360
	beq	$a0, $a1, .LBB1_294
	b	.LBB1_324
.LBB1_360:
.Ltmp147:
	b	.LBB1_362
.LBB1_361:
.Ltmp144:
.LBB1_362:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit612
	move	$s4, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 376
	addi.d	$a1, $sp, 392
	beq	$a0, $a1, .LBB1_295
	b	.LBB1_325
.LBB1_363:
.Ltmp141:
	b	.LBB1_365
.LBB1_364:
.Ltmp138:
.LBB1_365:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit615
	move	$s4, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 408
	addi.d	$a1, $sp, 424
	beq	$a0, $a1, .LBB1_296
	b	.LBB1_326
.LBB1_366:
.Ltmp135:
	b	.LBB1_368
.LBB1_367:
.Ltmp132:
.LBB1_368:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit618
	move	$s4, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 504
	addi.d	$a1, $sp, 520
	beq	$a0, $a1, .LBB1_297
	b	.LBB1_327
.LBB1_369:
.Ltmp127:
	move	$s4, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 440
	addi.d	$a1, $sp, 456
	beq	$a0, $a1, .LBB1_299
	b	.LBB1_329
.LBB1_370:
.Ltmp124:
	move	$s4, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 536
	addi.d	$a1, $sp, 552
	beq	$a0, $a1, .LBB1_300
	b	.LBB1_330
.LBB1_371:
.Ltmp121:
	b	.LBB1_373
.LBB1_372:
.Ltmp118:
.LBB1_373:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit630
	move	$s4, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 568
	addi.d	$a1, $sp, 584
	beq	$a0, $a1, .LBB1_301
	b	.LBB1_331
.LBB1_374:
.Ltmp115:
	move	$s4, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 600
	addi.d	$a1, $sp, 616
	beq	$a0, $a1, .LBB1_302
	b	.LBB1_332
.LBB1_375:
.Ltmp112:
	b	.LBB1_377
.LBB1_376:
.Ltmp109:
.LBB1_377:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit636
	move	$s4, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 632
	addi.d	$a1, $sp, 648
	beq	$a0, $a1, .LBB1_303
	b	.LBB1_333
.LBB1_378:
.Ltmp106:
	b	.LBB1_380
.LBB1_379:
.Ltmp103:
.LBB1_380:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit639
	move	$s4, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 664
	addi.d	$a1, $sp, 680
	beq	$a0, $a1, .LBB1_304
	b	.LBB1_334
.LBB1_381:
.Ltmp100:
	b	.LBB1_383
.LBB1_382:
.Ltmp97:
.LBB1_383:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit642
	move	$s4, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 696
	addi.d	$a1, $sp, 712
	beq	$a0, $a1, .LBB1_305
	b	.LBB1_335
.LBB1_384:
.Ltmp94:
	b	.LBB1_386
.LBB1_385:
.Ltmp91:
.LBB1_386:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit645
	move	$s4, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 728
	addi.d	$a1, $sp, 744
	beq	$a0, $a1, .LBB1_306
	b	.LBB1_336
.LBB1_387:
.Ltmp88:
	b	.LBB1_389
.LBB1_388:
.Ltmp85:
.LBB1_389:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit648
	move	$s4, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 760
	addi.d	$a1, $sp, 776
	beq	$a0, $a1, .LBB1_307
	b	.LBB1_337
.LBB1_390:
.Ltmp82:
	b	.LBB1_392
.LBB1_391:
.Ltmp79:
.LBB1_392:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit651
	move	$s4, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 792
	addi.d	$a1, $sp, 808
	beq	$a0, $a1, .LBB1_308
	b	.LBB1_338
.LBB1_393:
.Ltmp76:
	move	$s4, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 824
	addi.d	$a1, $sp, 840
	beq	$a0, $a1, .LBB1_309
	b	.LBB1_339
.LBB1_394:
.Ltmp73:
	b	.LBB1_396
.LBB1_395:
.Ltmp70:
.LBB1_396:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit657
	move	$s4, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 856
	addi.d	$a1, $sp, 872
	beq	$a0, $a1, .LBB1_310
	b	.LBB1_340
.LBB1_397:
.Ltmp67:
	b	.LBB1_399
.LBB1_398:
.Ltmp64:
.LBB1_399:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit660
	move	$s4, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 888
	addi.d	$a1, $sp, 904
	beq	$a0, $a1, .LBB1_311
	b	.LBB1_341
.LBB1_400:
.Ltmp61:
	b	.LBB1_402
.LBB1_401:
.Ltmp58:
.LBB1_402:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit663
	move	$s4, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 920
	addi.d	$a1, $sp, 936
	beq	$a0, $a1, .LBB1_312
	b	.LBB1_342
.LBB1_403:
.Ltmp55:
	b	.LBB1_405
.LBB1_404:
.Ltmp52:
.LBB1_405:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit666
	move	$s4, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 984
	addi.d	$a1, $sp, 1000
	bne	$a0, $a1, .LBB1_343
	b	.LBB1_344
.LBB1_406:
.Ltmp47:
	move	$s4, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 952
	addi.d	$a1, $sp, 968
	beq	$a0, $a1, .LBB1_346
	b	.LBB1_352
.LBB1_407:
.Ltmp44:
	move	$s4, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 1016
	addi.d	$a1, $sp, 1032
	bne	$a0, $a1, .LBB1_347
	b	.LBB1_348
.LBB1_408:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit678.thread
.Ltmp41:
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_409:                              # %.loopexit739.loopexit
.Ltmp38:
	move	$s4, $a0
	addi.d	$a0, $sp, 1224
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1136
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1048
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	ori	$s2, $zero, 1
	b	.LBB1_411
.LBB1_410:
.Ltmp35:
	move	$s4, $a0
	move	$s2, $zero
.LBB1_411:                              # %.loopexit739
	ori	$a0, $zero, 3248
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beq	$a0, $s1, .LBB1_414
# %bb.412:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i583
	ori	$a1, $zero, 3264
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB1_414
.LBB1_413:
.Ltmp32:
	move	$s4, $a0
	move	$s2, $zero
.LBB1_414:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585
	move	$s1, $s0
	b	.LBB1_416
.LBB1_415:
.Ltmp29:
	move	$s4, $a0
	move	$s2, $zero
.LBB1_416:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit585
	ori	$a0, $zero, 3280
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beq	$a0, $s3, .LBB1_419
# %bb.417:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i586
	ori	$a1, $zero, 3296
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB1_419
.LBB1_418:
.Ltmp26:
	move	$s4, $a0
	move	$s2, $zero
.LBB1_419:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit588
	ori	$a0, $zero, 3312
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beq	$a0, $fp, .LBB1_421
# %bb.420:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i589
	ori	$a1, $zero, 3328
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_421:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit591
	addi.d	$fp, $sp, 1048
	xor	$a0, $fp, $s1
	sltui	$a0, $a0, 1
	or	$a0, $s2, $a0
	bnez	$a0, .LBB1_350
	.p2align	4, , 16
.LBB1_422:                              # %.preheader737
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s1, $s1, -88
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZN8TestCaseD2Ev)
	jirl	$ra, $ra, 0
	bne	$s1, $fp, .LBB1_422
	b	.LBB1_350
.LBB1_423:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit591.thread
.Ltmp23:
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB1_424:                              # %.loopexit740.loopexit
.Ltmp20:
	move	$s4, $a0
	addi.d	$a0, $sp, 1368
	pcaddu18i	$ra, %call36(_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1304
	pcaddu18i	$ra, %call36(_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1240
	pcaddu18i	$ra, %call36(_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1176
	pcaddu18i	$ra, %call36(_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1112
	pcaddu18i	$ra, %call36(_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev)
	jirl	$ra, $ra, 0
	addi.d	$a0, $sp, 1048
	pcaddu18i	$ra, %call36(_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev)
	jirl	$ra, $ra, 0
	ori	$fp, $zero, 1
	b	.LBB1_428
.LBB1_425:
.Ltmp201:
	move	$s4, $a0
	move	$fp, $zero
	ld.d	$a0, $sp, 472
	addi.d	$a1, $sp, 488
	beq	$a0, $a1, .LBB1_298
	b	.LBB1_328
.LBB1_426:
.Ltmp204:
	move	$s4, $a0
	move	$fp, $zero
	b	.LBB1_344
.LBB1_427:
.Ltmp17:
	move	$s4, $a0
	move	$fp, $zero
.LBB1_428:                              # %.loopexit740
	ori	$a0, $zero, 3344
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	beq	$a0, $s5, .LBB1_434
# %bb.429:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i580
	ori	$a1, $zero, 3360
	add.d	$a1, $sp, $a1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB1_434
.LBB1_430:
.Ltmp6:
	move	$s4, $a0
	b	.LBB1_433
.LBB1_431:
.Ltmp207:
	ori	$a1, $zero, 3344
	add.d	$a1, $sp, $a1
	ld.d	$a2, $a1, 0
	move	$s4, $a0
	beq	$a2, $s5, .LBB1_433
# %bb.432:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
	ori	$a0, $zero, 3360
	add.d	$a0, $sp, $a0
	ld.d	$a0, $a0, 0
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB1_433:
	move	$fp, $zero
.LBB1_434:
	bnez	$fp, .LBB1_350
# %bb.435:
	addi.d	$a0, $sp, 1048
	xor	$a0, $a0, $s0
	sltui	$a0, $a0, 1
	bnez	$a0, .LBB1_350
# %bb.436:                              # %.preheader.preheader
	addi.d	$fp, $sp, 1048
	.p2align	4, , 16
.LBB1_437:                              # %.preheader
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$s0, $s0, -64
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev)
	jirl	$ra, $ra, 0
	bne	$s0, $fp, .LBB1_437
	b	.LBB1_350
.Lfunc_end1:
	.size	_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i, .Lfunc_end1-_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i
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
	.uleb128 .Ltmp5-.Ltmp0                  #   Call between .Ltmp0 and .Ltmp5
	.uleb128 .Ltmp6-.Lfunc_begin0           #     jumps to .Ltmp6
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp7-.Lfunc_begin0           # >> Call Site 2 <<
	.uleb128 .Ltmp12-.Ltmp7                 #   Call between .Ltmp7 and .Ltmp12
	.uleb128 .Ltmp207-.Lfunc_begin0         #     jumps to .Ltmp207
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 3 <<
	.uleb128 .Ltmp13-.Ltmp12                #   Call between .Ltmp12 and .Ltmp13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp13-.Lfunc_begin0          # >> Call Site 4 <<
	.uleb128 .Ltmp16-.Ltmp13                #   Call between .Ltmp13 and .Ltmp16
	.uleb128 .Ltmp17-.Lfunc_begin0          #     jumps to .Ltmp17
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp19-.Ltmp18                #   Call between .Ltmp18 and .Ltmp19
	.uleb128 .Ltmp20-.Lfunc_begin0          #     jumps to .Ltmp20
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp19-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp21-.Ltmp19                #   Call between .Ltmp19 and .Ltmp21
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp21-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp22-.Ltmp21                #   Call between .Ltmp21 and .Ltmp22
	.uleb128 .Ltmp23-.Lfunc_begin0          #     jumps to .Ltmp23
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp24-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp25-.Ltmp24                #   Call between .Ltmp24 and .Ltmp25
	.uleb128 .Ltmp26-.Lfunc_begin0          #     jumps to .Ltmp26
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp27-.Lfunc_begin0          # >> Call Site 9 <<
	.uleb128 .Ltmp28-.Ltmp27                #   Call between .Ltmp27 and .Ltmp28
	.uleb128 .Ltmp29-.Lfunc_begin0          #     jumps to .Ltmp29
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp30-.Lfunc_begin0          # >> Call Site 10 <<
	.uleb128 .Ltmp31-.Ltmp30                #   Call between .Ltmp30 and .Ltmp31
	.uleb128 .Ltmp32-.Lfunc_begin0          #     jumps to .Ltmp32
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp33-.Lfunc_begin0          # >> Call Site 11 <<
	.uleb128 .Ltmp34-.Ltmp33                #   Call between .Ltmp33 and .Ltmp34
	.uleb128 .Ltmp35-.Lfunc_begin0          #     jumps to .Ltmp35
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp36-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp37-.Ltmp36                #   Call between .Ltmp36 and .Ltmp37
	.uleb128 .Ltmp38-.Lfunc_begin0          #     jumps to .Ltmp38
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp39-.Ltmp37                #   Call between .Ltmp37 and .Ltmp39
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp39-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp40-.Ltmp39                #   Call between .Ltmp39 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin0          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin0          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp45-.Ltmp43                #   Call between .Ltmp43 and .Ltmp45
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp46-.Ltmp45                #   Call between .Ltmp45 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin0          #     jumps to .Ltmp47
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp48-.Ltmp46                #   Call between .Ltmp46 and .Ltmp48
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp49-.Ltmp48                #   Call between .Ltmp48 and .Ltmp49
	.uleb128 .Ltmp204-.Lfunc_begin0         #     jumps to .Ltmp204
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp50-.Lfunc_begin0          # >> Call Site 21 <<
	.uleb128 .Ltmp51-.Ltmp50                #   Call between .Ltmp50 and .Ltmp51
	.uleb128 .Ltmp52-.Lfunc_begin0          #     jumps to .Ltmp52
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp53-.Lfunc_begin0          # >> Call Site 22 <<
	.uleb128 .Ltmp54-.Ltmp53                #   Call between .Ltmp53 and .Ltmp54
	.uleb128 .Ltmp55-.Lfunc_begin0          #     jumps to .Ltmp55
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp56-.Lfunc_begin0          # >> Call Site 23 <<
	.uleb128 .Ltmp57-.Ltmp56                #   Call between .Ltmp56 and .Ltmp57
	.uleb128 .Ltmp58-.Lfunc_begin0          #     jumps to .Ltmp58
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin0          # >> Call Site 24 <<
	.uleb128 .Ltmp60-.Ltmp59                #   Call between .Ltmp59 and .Ltmp60
	.uleb128 .Ltmp61-.Lfunc_begin0          #     jumps to .Ltmp61
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp62-.Lfunc_begin0          # >> Call Site 25 <<
	.uleb128 .Ltmp63-.Ltmp62                #   Call between .Ltmp62 and .Ltmp63
	.uleb128 .Ltmp64-.Lfunc_begin0          #     jumps to .Ltmp64
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin0          # >> Call Site 26 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.uleb128 .Ltmp67-.Lfunc_begin0          #     jumps to .Ltmp67
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin0          # >> Call Site 27 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp70-.Lfunc_begin0          #     jumps to .Ltmp70
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin0          # >> Call Site 28 <<
	.uleb128 .Ltmp72-.Ltmp71                #   Call between .Ltmp71 and .Ltmp72
	.uleb128 .Ltmp73-.Lfunc_begin0          #     jumps to .Ltmp73
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin0          # >> Call Site 29 <<
	.uleb128 .Ltmp75-.Ltmp74                #   Call between .Ltmp74 and .Ltmp75
	.uleb128 .Ltmp76-.Lfunc_begin0          #     jumps to .Ltmp76
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin0          # >> Call Site 30 <<
	.uleb128 .Ltmp78-.Ltmp77                #   Call between .Ltmp77 and .Ltmp78
	.uleb128 .Ltmp79-.Lfunc_begin0          #     jumps to .Ltmp79
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin0          # >> Call Site 31 <<
	.uleb128 .Ltmp81-.Ltmp80                #   Call between .Ltmp80 and .Ltmp81
	.uleb128 .Ltmp82-.Lfunc_begin0          #     jumps to .Ltmp82
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin0          # >> Call Site 32 <<
	.uleb128 .Ltmp84-.Ltmp83                #   Call between .Ltmp83 and .Ltmp84
	.uleb128 .Ltmp85-.Lfunc_begin0          #     jumps to .Ltmp85
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin0          # >> Call Site 33 <<
	.uleb128 .Ltmp87-.Ltmp86                #   Call between .Ltmp86 and .Ltmp87
	.uleb128 .Ltmp88-.Lfunc_begin0          #     jumps to .Ltmp88
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin0          # >> Call Site 34 <<
	.uleb128 .Ltmp90-.Ltmp89                #   Call between .Ltmp89 and .Ltmp90
	.uleb128 .Ltmp91-.Lfunc_begin0          #     jumps to .Ltmp91
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin0          # >> Call Site 35 <<
	.uleb128 .Ltmp93-.Ltmp92                #   Call between .Ltmp92 and .Ltmp93
	.uleb128 .Ltmp94-.Lfunc_begin0          #     jumps to .Ltmp94
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin0          # >> Call Site 36 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.uleb128 .Ltmp97-.Lfunc_begin0          #     jumps to .Ltmp97
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp98-.Lfunc_begin0          # >> Call Site 37 <<
	.uleb128 .Ltmp99-.Ltmp98                #   Call between .Ltmp98 and .Ltmp99
	.uleb128 .Ltmp100-.Lfunc_begin0         #     jumps to .Ltmp100
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp101-.Lfunc_begin0         # >> Call Site 38 <<
	.uleb128 .Ltmp102-.Ltmp101              #   Call between .Ltmp101 and .Ltmp102
	.uleb128 .Ltmp103-.Lfunc_begin0         #     jumps to .Ltmp103
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp104-.Lfunc_begin0         # >> Call Site 39 <<
	.uleb128 .Ltmp105-.Ltmp104              #   Call between .Ltmp104 and .Ltmp105
	.uleb128 .Ltmp106-.Lfunc_begin0         #     jumps to .Ltmp106
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp107-.Lfunc_begin0         # >> Call Site 40 <<
	.uleb128 .Ltmp108-.Ltmp107              #   Call between .Ltmp107 and .Ltmp108
	.uleb128 .Ltmp109-.Lfunc_begin0         #     jumps to .Ltmp109
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp110-.Lfunc_begin0         # >> Call Site 41 <<
	.uleb128 .Ltmp111-.Ltmp110              #   Call between .Ltmp110 and .Ltmp111
	.uleb128 .Ltmp112-.Lfunc_begin0         #     jumps to .Ltmp112
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin0         # >> Call Site 42 <<
	.uleb128 .Ltmp114-.Ltmp113              #   Call between .Ltmp113 and .Ltmp114
	.uleb128 .Ltmp115-.Lfunc_begin0         #     jumps to .Ltmp115
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin0         # >> Call Site 43 <<
	.uleb128 .Ltmp117-.Ltmp116              #   Call between .Ltmp116 and .Ltmp117
	.uleb128 .Ltmp118-.Lfunc_begin0         #     jumps to .Ltmp118
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp119-.Lfunc_begin0         # >> Call Site 44 <<
	.uleb128 .Ltmp120-.Ltmp119              #   Call between .Ltmp119 and .Ltmp120
	.uleb128 .Ltmp121-.Lfunc_begin0         #     jumps to .Ltmp121
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp122-.Lfunc_begin0         # >> Call Site 45 <<
	.uleb128 .Ltmp123-.Ltmp122              #   Call between .Ltmp122 and .Ltmp123
	.uleb128 .Ltmp124-.Lfunc_begin0         #     jumps to .Ltmp124
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp123-.Lfunc_begin0         # >> Call Site 46 <<
	.uleb128 .Ltmp125-.Ltmp123              #   Call between .Ltmp123 and .Ltmp125
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp125-.Lfunc_begin0         # >> Call Site 47 <<
	.uleb128 .Ltmp126-.Ltmp125              #   Call between .Ltmp125 and .Ltmp126
	.uleb128 .Ltmp127-.Lfunc_begin0         #     jumps to .Ltmp127
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp126-.Lfunc_begin0         # >> Call Site 48 <<
	.uleb128 .Ltmp128-.Ltmp126              #   Call between .Ltmp126 and .Ltmp128
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp128-.Lfunc_begin0         # >> Call Site 49 <<
	.uleb128 .Ltmp129-.Ltmp128              #   Call between .Ltmp128 and .Ltmp129
	.uleb128 .Ltmp201-.Lfunc_begin0         #     jumps to .Ltmp201
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin0         # >> Call Site 50 <<
	.uleb128 .Ltmp130-.Ltmp129              #   Call between .Ltmp129 and .Ltmp130
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin0         # >> Call Site 51 <<
	.uleb128 .Ltmp131-.Ltmp130              #   Call between .Ltmp130 and .Ltmp131
	.uleb128 .Ltmp132-.Lfunc_begin0         #     jumps to .Ltmp132
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp133-.Lfunc_begin0         # >> Call Site 52 <<
	.uleb128 .Ltmp134-.Ltmp133              #   Call between .Ltmp133 and .Ltmp134
	.uleb128 .Ltmp135-.Lfunc_begin0         #     jumps to .Ltmp135
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp136-.Lfunc_begin0         # >> Call Site 53 <<
	.uleb128 .Ltmp137-.Ltmp136              #   Call between .Ltmp136 and .Ltmp137
	.uleb128 .Ltmp138-.Lfunc_begin0         #     jumps to .Ltmp138
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp139-.Lfunc_begin0         # >> Call Site 54 <<
	.uleb128 .Ltmp140-.Ltmp139              #   Call between .Ltmp139 and .Ltmp140
	.uleb128 .Ltmp141-.Lfunc_begin0         #     jumps to .Ltmp141
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp142-.Lfunc_begin0         # >> Call Site 55 <<
	.uleb128 .Ltmp143-.Ltmp142              #   Call between .Ltmp142 and .Ltmp143
	.uleb128 .Ltmp144-.Lfunc_begin0         #     jumps to .Ltmp144
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp145-.Lfunc_begin0         # >> Call Site 56 <<
	.uleb128 .Ltmp146-.Ltmp145              #   Call between .Ltmp145 and .Ltmp146
	.uleb128 .Ltmp147-.Lfunc_begin0         #     jumps to .Ltmp147
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp148-.Lfunc_begin0         # >> Call Site 57 <<
	.uleb128 .Ltmp149-.Ltmp148              #   Call between .Ltmp148 and .Ltmp149
	.uleb128 .Ltmp150-.Lfunc_begin0         #     jumps to .Ltmp150
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp151-.Lfunc_begin0         # >> Call Site 58 <<
	.uleb128 .Ltmp152-.Ltmp151              #   Call between .Ltmp151 and .Ltmp152
	.uleb128 .Ltmp153-.Lfunc_begin0         #     jumps to .Ltmp153
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp154-.Lfunc_begin0         # >> Call Site 59 <<
	.uleb128 .Ltmp155-.Ltmp154              #   Call between .Ltmp154 and .Ltmp155
	.uleb128 .Ltmp156-.Lfunc_begin0         #     jumps to .Ltmp156
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp157-.Lfunc_begin0         # >> Call Site 60 <<
	.uleb128 .Ltmp158-.Ltmp157              #   Call between .Ltmp157 and .Ltmp158
	.uleb128 .Ltmp159-.Lfunc_begin0         #     jumps to .Ltmp159
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp160-.Lfunc_begin0         # >> Call Site 61 <<
	.uleb128 .Ltmp161-.Ltmp160              #   Call between .Ltmp160 and .Ltmp161
	.uleb128 .Ltmp162-.Lfunc_begin0         #     jumps to .Ltmp162
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp163-.Lfunc_begin0         # >> Call Site 62 <<
	.uleb128 .Ltmp164-.Ltmp163              #   Call between .Ltmp163 and .Ltmp164
	.uleb128 .Ltmp165-.Lfunc_begin0         #     jumps to .Ltmp165
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp166-.Lfunc_begin0         # >> Call Site 63 <<
	.uleb128 .Ltmp167-.Ltmp166              #   Call between .Ltmp166 and .Ltmp167
	.uleb128 .Ltmp168-.Lfunc_begin0         #     jumps to .Ltmp168
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp169-.Lfunc_begin0         # >> Call Site 64 <<
	.uleb128 .Ltmp170-.Ltmp169              #   Call between .Ltmp169 and .Ltmp170
	.uleb128 .Ltmp171-.Lfunc_begin0         #     jumps to .Ltmp171
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp172-.Lfunc_begin0         # >> Call Site 65 <<
	.uleb128 .Ltmp173-.Ltmp172              #   Call between .Ltmp172 and .Ltmp173
	.uleb128 .Ltmp174-.Lfunc_begin0         #     jumps to .Ltmp174
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp175-.Lfunc_begin0         # >> Call Site 66 <<
	.uleb128 .Ltmp176-.Ltmp175              #   Call between .Ltmp175 and .Ltmp176
	.uleb128 .Ltmp177-.Lfunc_begin0         #     jumps to .Ltmp177
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp178-.Lfunc_begin0         # >> Call Site 67 <<
	.uleb128 .Ltmp179-.Ltmp178              #   Call between .Ltmp178 and .Ltmp179
	.uleb128 .Ltmp180-.Lfunc_begin0         #     jumps to .Ltmp180
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp179-.Lfunc_begin0         # >> Call Site 68 <<
	.uleb128 .Ltmp181-.Ltmp179              #   Call between .Ltmp179 and .Ltmp181
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp181-.Lfunc_begin0         # >> Call Site 69 <<
	.uleb128 .Ltmp182-.Ltmp181              #   Call between .Ltmp181 and .Ltmp182
	.uleb128 .Ltmp183-.Lfunc_begin0         #     jumps to .Ltmp183
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp184-.Lfunc_begin0         # >> Call Site 70 <<
	.uleb128 .Ltmp185-.Ltmp184              #   Call between .Ltmp184 and .Ltmp185
	.uleb128 .Ltmp186-.Lfunc_begin0         #     jumps to .Ltmp186
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp187-.Lfunc_begin0         # >> Call Site 71 <<
	.uleb128 .Ltmp188-.Ltmp187              #   Call between .Ltmp187 and .Ltmp188
	.uleb128 .Ltmp189-.Lfunc_begin0         #     jumps to .Ltmp189
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp190-.Lfunc_begin0         # >> Call Site 72 <<
	.uleb128 .Ltmp191-.Ltmp190              #   Call between .Ltmp190 and .Ltmp191
	.uleb128 .Ltmp192-.Lfunc_begin0         #     jumps to .Ltmp192
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp193-.Lfunc_begin0         # >> Call Site 73 <<
	.uleb128 .Ltmp194-.Ltmp193              #   Call between .Ltmp193 and .Ltmp194
	.uleb128 .Ltmp195-.Lfunc_begin0         #     jumps to .Ltmp195
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp196-.Lfunc_begin0         # >> Call Site 74 <<
	.uleb128 .Ltmp197-.Ltmp196              #   Call between .Ltmp196 and .Ltmp197
	.uleb128 .Ltmp198-.Lfunc_begin0         #     jumps to .Ltmp198
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp197-.Lfunc_begin0         # >> Call Site 75 <<
	.uleb128 .Ltmp205-.Ltmp197              #   Call between .Ltmp197 and .Ltmp205
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp205-.Lfunc_begin0         # >> Call Site 76 <<
	.uleb128 .Ltmp206-.Ltmp205              #   Call between .Ltmp205 and .Ltmp206
	.uleb128 .Ltmp207-.Lfunc_begin0         #     jumps to .Ltmp207
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp202-.Lfunc_begin0         # >> Call Site 77 <<
	.uleb128 .Ltmp203-.Ltmp202              #   Call between .Ltmp202 and .Ltmp203
	.uleb128 .Ltmp204-.Lfunc_begin0         #     jumps to .Ltmp204
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp199-.Lfunc_begin0         # >> Call Site 78 <<
	.uleb128 .Ltmp200-.Ltmp199              #   Call between .Ltmp199 and .Ltmp200
	.uleb128 .Ltmp201-.Lfunc_begin0         #     jumps to .Ltmp201
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp200-.Lfunc_begin0         # >> Call Site 79 <<
	.uleb128 .Lfunc_end1-.Ltmp200           #   Call between .Ltmp200 and .Lfunc_end1
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z17BM_Complexity_O_NRN9benchmark5StateE
.LCPI2_0:
	.dword	0x4045000000000000              # double 42
.LCPI2_1:
	.dword	0x3e112e0be826d695              # double 1.0000000000000001E-9
	.text
	.hidden	_Z17BM_Complexity_O_NRN9benchmark5StateE
	.globl	_Z17BM_Complexity_O_NRN9benchmark5StateE
	.p2align	5
	.type	_Z17BM_Complexity_O_NRN9benchmark5StateE,@function
_Z17BM_Complexity_O_NRN9benchmark5StateE: # @_Z17BM_Complexity_O_NRN9benchmark5StateE
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
	.cfi_offset 56, -64
	.cfi_offset 57, -72
	.cfi_offset 58, -80
	move	$fp, $a0
	ld.w	$s1, $a0, 28
	ld.d	$s0, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB2_17
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB2_17
# %bb.2:
	ori	$s1, $zero, 1
	addi.d	$s2, $sp, 8
	pcalau12i	$a0, %pc_hi20(.LCPI2_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI2_0)
	pcalau12i	$a0, %pc_hi20(.LCPI2_1)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI2_1)
	movgr2fr.d	$fs2, $zero
	addi.w	$s3, $zero, -1
	addi.d	$s4, $sp, 0
	.p2align	4, , 16
.LBB2_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_9 Depth 2
	ld.bu	$a0, $fp, 24
	bne	$a0, $s1, .LBB2_16
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
	sub.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
.LBB2_5:                                # %_ZNK9benchmark5State10iterationsEv.exit29
                                        #   in Loop: Header=BB2_3 Depth=1
	st.d	$a0, $sp, 8
	#APP
	#NO_APP
	ld.bu	$a0, $fp, 24
	fmov.d	$fa0, $fs2
	bne	$a0, $s1, .LBB2_7
# %bb.6:                                #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
	sub.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
.LBB2_7:                                # %_ZNK9benchmark5State10iterationsEv.exit27
                                        #   in Loop: Header=BB2_3 Depth=1
	fst.d	$fa0, $sp, 8
	#APP
	#NO_APP
	ld.bu	$a0, $fp, 24
	bne	$a0, $s1, .LBB2_13
# %bb.8:                                # %_ZNK9benchmark5State10iterationsEv.exit25.preheader
                                        #   in Loop: Header=BB2_3 Depth=1
	move	$a0, $s3
	.p2align	4, , 16
.LBB2_9:                                # %_ZNK9benchmark5State10iterationsEv.exit25
                                        #   Parent Loop BB2_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $fp, 16
	ld.d	$a2, $fp, 0
	ld.d	$a3, $fp, 8
	sub.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	addi.d	$a0, $a0, 1
	bge	$a0, $a1, .LBB2_13
# %bb.10:                               # %_ZNK9benchmark5State10iterationsEv.exit23
                                        #   in Loop: Header=BB2_9 Depth=2
	st.d	$a1, $sp, 0
	#APP
	#NO_APP
	ld.bu	$a1, $fp, 24
	fmov.d	$fa0, $fs2
	bne	$a1, $s1, .LBB2_12
# %bb.11:                               #   in Loop: Header=BB2_9 Depth=2
	ld.d	$a1, $fp, 16
	ld.d	$a2, $fp, 0
	ld.d	$a3, $fp, 8
	sub.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
.LBB2_12:                               # %_ZNK9benchmark5State10iterationsEv.exit
                                        #   in Loop: Header=BB2_9 Depth=2
	fld.d	$fa1, $sp, 8
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 8
	#APP
	#NO_APP
	ld.bu	$a1, $fp, 24
	bnez	$a1, .LBB2_9
	.p2align	4, , 16
.LBB2_13:                               # %_ZNK9benchmark5State10iterationsEv.exit25.thread
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	beq	$a1, $a0, .LBB2_19
# %bb.14:                               # %_ZNK9benchmark5State5rangeEm.exit30
                                        #   in Loop: Header=BB2_3 Depth=1
	ld.d	$a0, $a0, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs0
	fmul.d	$fa0, $fa0, $fs1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16SetIterationTimeEd)
	jirl	$ra, $ra, 0
	blez	$s0, .LBB2_20
# %bb.15:                               #   in Loop: Header=BB2_3 Depth=1
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB2_3
	b	.LBB2_17
.LBB2_16:                               #   in Loop: Header=BB2_3 Depth=1
	move	$a0, $zero
	b	.LBB2_5
.LBB2_17:                               # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	beq	$a1, $a0, .LBB2_19
# %bb.18:                               # %_ZNK9benchmark5State5rangeEm.exit
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 56
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
.LBB2_19:
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	pcalau12i	$a1, %pc_hi20(.L.str.42)
	addi.d	$a1, $a1, %pc_lo12(.L.str.42)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	ori	$a2, $zero, 990
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB2_20:
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	pcalau12i	$a1, %pc_hi20(.L.str.42)
	addi.d	$a1, $a1, %pc_lo12(.L.str.42)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.Lfunc_end2:
	.size	_Z17BM_Complexity_O_NRN9benchmark5StateE, .Lfunc_end2-_Z17BM_Complexity_O_NRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZL23BM_Complexity_O_N_log_NRN9benchmark5StateE
.LCPI3_0:
	.dword	0x3ff71547652b82fe              # double 1.4426950408889634
.LCPI3_1:
	.dword	0x4045000000000000              # double 42
.LCPI3_2:
	.dword	0x3e112e0be826d695              # double 1.0000000000000001E-9
	.text
	.p2align	5
	.type	_ZL23BM_Complexity_O_N_log_NRN9benchmark5StateE,@function
_ZL23BM_Complexity_O_N_log_NRN9benchmark5StateE: # @_ZL23BM_Complexity_O_N_log_NRN9benchmark5StateE
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
	fst.d	$fs0, $sp, 48                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs4, $sp, 16                   # 8-byte Folded Spill
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
	.cfi_offset 60, -96
	move	$fp, $a0
	ld.w	$s1, $a0, 28
	ld.d	$s0, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB3_17
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB3_17
# %bb.2:
	ori	$s1, $zero, 1
	addi.d	$s2, $sp, 8
	pcalau12i	$a0, %pc_hi20(.LCPI3_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI3_0)
	pcalau12i	$a0, %pc_hi20(.LCPI3_1)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI3_1)
	pcalau12i	$a0, %pc_hi20(.LCPI3_2)
	fld.d	$fs2, $a0, %pc_lo12(.LCPI3_2)
	movgr2fr.d	$fs3, $zero
	addi.w	$s3, $zero, -1
	addi.d	$s4, $sp, 0
	.p2align	4, , 16
.LBB3_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_9 Depth 2
	ld.bu	$a0, $fp, 24
	bne	$a0, $s1, .LBB3_16
# %bb.4:                                #   in Loop: Header=BB3_3 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
	sub.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
.LBB3_5:                                # %_ZNK9benchmark5State10iterationsEv.exit30
                                        #   in Loop: Header=BB3_3 Depth=1
	st.d	$a0, $sp, 8
	#APP
	#NO_APP
	ld.bu	$a0, $fp, 24
	fmov.d	$fa0, $fs3
	bne	$a0, $s1, .LBB3_7
# %bb.6:                                #   in Loop: Header=BB3_3 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
	sub.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
.LBB3_7:                                # %_ZNK9benchmark5State10iterationsEv.exit28
                                        #   in Loop: Header=BB3_3 Depth=1
	fst.d	$fa0, $sp, 8
	#APP
	#NO_APP
	ld.bu	$a0, $fp, 24
	bne	$a0, $s1, .LBB3_13
# %bb.8:                                # %_ZNK9benchmark5State10iterationsEv.exit26.preheader
                                        #   in Loop: Header=BB3_3 Depth=1
	move	$a0, $s3
	.p2align	4, , 16
.LBB3_9:                                # %_ZNK9benchmark5State10iterationsEv.exit26
                                        #   Parent Loop BB3_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $fp, 16
	ld.d	$a2, $fp, 0
	ld.d	$a3, $fp, 8
	sub.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	addi.d	$a0, $a0, 1
	bge	$a0, $a1, .LBB3_13
# %bb.10:                               # %_ZNK9benchmark5State10iterationsEv.exit24
                                        #   in Loop: Header=BB3_9 Depth=2
	st.d	$a1, $sp, 0
	#APP
	#NO_APP
	ld.bu	$a1, $fp, 24
	fmov.d	$fa0, $fs3
	bne	$a1, $s1, .LBB3_12
# %bb.11:                               #   in Loop: Header=BB3_9 Depth=2
	ld.d	$a1, $fp, 16
	ld.d	$a2, $fp, 0
	ld.d	$a3, $fp, 8
	sub.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
.LBB3_12:                               # %_ZNK9benchmark5State10iterationsEv.exit
                                        #   in Loop: Header=BB3_9 Depth=2
	fld.d	$fa1, $sp, 8
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 8
	#APP
	#NO_APP
	ld.bu	$a1, $fp, 24
	bnez	$a1, .LBB3_9
	.p2align	4, , 16
.LBB3_13:                               # %_ZNK9benchmark5State10iterationsEv.exit26.thread
                                        #   in Loop: Header=BB3_3 Depth=1
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	beq	$a1, $a0, .LBB3_19
# %bb.14:                               # %_ZNK9benchmark5State5rangeEm.exit31
                                        #   in Loop: Header=BB3_3 Depth=1
	ld.d	$a0, $a0, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fmul.d	$fs4, $fa0, $fs0
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fa0, $fs4
	fmul.d	$fa0, $fa0, $fs1
	fmul.d	$fa0, $fa0, $fs2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16SetIterationTimeEd)
	jirl	$ra, $ra, 0
	blez	$s0, .LBB3_20
# %bb.15:                               #   in Loop: Header=BB3_3 Depth=1
	addi.d	$s0, $s0, -1
	bnez	$s0, .LBB3_3
	b	.LBB3_17
.LBB3_16:                               #   in Loop: Header=BB3_3 Depth=1
	move	$a0, $zero
	b	.LBB3_5
.LBB3_17:                               # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	beq	$a1, $a0, .LBB3_19
# %bb.18:                               # %_ZNK9benchmark5State5rangeEm.exit
	ld.d	$a0, $a0, 0
	st.d	$a0, $fp, 56
	fld.d	$fs4, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs3, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs2, $sp, 32                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 40                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 48                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 96                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 104                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 112
	ret
.LBB3_19:
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	pcalau12i	$a1, %pc_hi20(.L.str.42)
	addi.d	$a1, $a1, %pc_lo12(.L.str.42)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	ori	$a2, $zero, 990
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB3_20:
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	pcalau12i	$a1, %pc_hi20(.L.str.42)
	addi.d	$a1, $a1, %pc_lo12(.L.str.42)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZL23BM_Complexity_O_N_log_NRN9benchmark5StateE, .Lfunc_end3-_ZL23BM_Complexity_O_N_log_NRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _Z24BM_ComplexityCaptureArgsRN9benchmark5StateEi
.LCPI4_0:
	.dword	0x4045000000000000              # double 42
.LCPI4_1:
	.dword	0x3e112e0be826d695              # double 1.0000000000000001E-9
	.text
	.hidden	_Z24BM_ComplexityCaptureArgsRN9benchmark5StateEi
	.globl	_Z24BM_ComplexityCaptureArgsRN9benchmark5StateEi
	.p2align	5
	.type	_Z24BM_ComplexityCaptureArgsRN9benchmark5StateEi,@function
_Z24BM_ComplexityCaptureArgsRN9benchmark5StateEi: # @_Z24BM_ComplexityCaptureArgsRN9benchmark5StateEi
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
	fst.d	$fs0, $sp, 40                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 24                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	.cfi_offset 56, -72
	.cfi_offset 57, -80
	.cfi_offset 58, -88
	move	$fp, $a0
	ld.w	$s2, $a0, 28
	ld.d	$s1, $a0, 16
	move	$s0, $a1
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s2, .LBB4_17
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s1, .LBB4_17
# %bb.2:
	ori	$s2, $zero, 1
	addi.d	$s3, $sp, 16
	pcalau12i	$a0, %pc_hi20(.LCPI4_0)
	fld.d	$fs0, $a0, %pc_lo12(.LCPI4_0)
	pcalau12i	$a0, %pc_hi20(.LCPI4_1)
	fld.d	$fs1, $a0, %pc_lo12(.LCPI4_1)
	movgr2fr.d	$fs2, $zero
	addi.w	$s4, $zero, -1
	addi.d	$s5, $sp, 8
	.p2align	4, , 16
.LBB4_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_9 Depth 2
	ld.bu	$a0, $fp, 24
	bne	$a0, $s2, .LBB4_16
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
	sub.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
.LBB4_5:                                # %_ZNK9benchmark5State10iterationsEv.exit29
                                        #   in Loop: Header=BB4_3 Depth=1
	st.d	$a0, $sp, 16
	#APP
	#NO_APP
	ld.bu	$a0, $fp, 24
	fmov.d	$fa0, $fs2
	bne	$a0, $s2, .LBB4_7
# %bb.6:                                #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $fp, 16
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
	sub.d	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
.LBB4_7:                                # %_ZNK9benchmark5State10iterationsEv.exit27
                                        #   in Loop: Header=BB4_3 Depth=1
	fst.d	$fa0, $sp, 16
	#APP
	#NO_APP
	ld.bu	$a0, $fp, 24
	bne	$a0, $s2, .LBB4_13
# %bb.8:                                # %_ZNK9benchmark5State10iterationsEv.exit25.preheader
                                        #   in Loop: Header=BB4_3 Depth=1
	move	$a0, $s4
	.p2align	4, , 16
.LBB4_9:                                # %_ZNK9benchmark5State10iterationsEv.exit25
                                        #   Parent Loop BB4_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a1, $fp, 16
	ld.d	$a2, $fp, 0
	ld.d	$a3, $fp, 8
	sub.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	addi.d	$a0, $a0, 1
	bge	$a0, $a1, .LBB4_13
# %bb.10:                               # %_ZNK9benchmark5State10iterationsEv.exit23
                                        #   in Loop: Header=BB4_9 Depth=2
	st.d	$a1, $sp, 8
	#APP
	#NO_APP
	ld.bu	$a1, $fp, 24
	fmov.d	$fa0, $fs2
	bne	$a1, $s2, .LBB4_12
# %bb.11:                               #   in Loop: Header=BB4_9 Depth=2
	ld.d	$a1, $fp, 16
	ld.d	$a2, $fp, 0
	ld.d	$a3, $fp, 8
	sub.d	$a1, $a1, $a2
	add.d	$a1, $a1, $a3
	movgr2fr.d	$fa0, $a1
	ffint.d.l	$fa0, $fa0
.LBB4_12:                               # %_ZNK9benchmark5State10iterationsEv.exit
                                        #   in Loop: Header=BB4_9 Depth=2
	fld.d	$fa1, $sp, 16
	fmul.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 16
	#APP
	#NO_APP
	ld.bu	$a1, $fp, 24
	bnez	$a1, .LBB4_9
	.p2align	4, , 16
.LBB4_13:                               # %_ZNK9benchmark5State10iterationsEv.exit25.thread
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $fp, 40
	ld.d	$a0, $fp, 32
	beq	$a1, $a0, .LBB4_18
# %bb.14:                               # %_ZNK9benchmark5State5rangeEm.exit
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a0, $a0, 0
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fmul.d	$fa0, $fa0, $fs0
	fmul.d	$fa0, $fa0, $fs1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16SetIterationTimeEd)
	jirl	$ra, $ra, 0
	blez	$s1, .LBB4_19
# %bb.15:                               #   in Loop: Header=BB4_3 Depth=1
	addi.d	$s1, $s1, -1
	bnez	$s1, .LBB4_3
	b	.LBB4_17
.LBB4_16:                               #   in Loop: Header=BB4_3 Depth=1
	move	$a0, $zero
	b	.LBB4_5
.LBB4_17:                               # %._crit_edge
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jirl	$ra, $ra, 0
	st.d	$s0, $fp, 56
	fld.d	$fs2, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 32                   # 8-byte Folded Reload
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
.LBB4_18:
	pcalau12i	$a0, %pc_hi20(.L.str.43)
	addi.d	$a0, $a0, %pc_lo12(.L.str.43)
	pcalau12i	$a1, %pc_hi20(.L.str.42)
	addi.d	$a1, $a1, %pc_lo12(.L.str.42)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm)
	ori	$a2, $zero, 990
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB4_19:
	pcalau12i	$a0, %pc_hi20(.L.str.41)
	addi.d	$a0, $a0, %pc_lo12(.L.str.41)
	pcalau12i	$a1, %pc_hi20(.L.str.42)
	addi.d	$a1, $a1, %pc_lo12(.L.str.42)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_Z24BM_ComplexityCaptureArgsRN9benchmark5StateEi, .Lfunc_end4-_Z24BM_ComplexityCaptureArgsRN9benchmark5StateEi
	.cfi_endproc
                                        # -- End function
	.hidden	main                            # -- Begin function main
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	pcaddu18i	$ra, %call36(_Z14RunOutputTestsiPPc)
	jirl	$ra, $ra, 0
	move	$a0, $zero
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
	.cfi_endproc
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN3$_08__invokeEl
	.type	_ZN3$_08__invokeEl,@function
_ZN3$_08__invokeEl:                     # @"_ZN3$_08__invokeEl"
# %bb.0:
	vldi	$vr0, -912
	ret
.Lfunc_end6:
	.size	_ZN3$_08__invokeEl, .Lfunc_end6-_ZN3$_08__invokeEl
                                        # -- End function
	.section	.text._ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,"axG",@progbits,_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,comdat
	.hidden	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_ # -- Begin function _ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
	.weak	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
	.p2align	5
	.type	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,@function
_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_: # @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
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
	move	$s1, $a1
	move	$fp, $a0
	addi.d	$s3, $a0, 16
	st.d	$s3, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 8
	move	$a0, $s3
	bltu	$s2, $a1, .LBB7_2
# %bb.1:                                # %.noexc.i
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 16
.LBB7_2:                                # %._crit_edge.i.i
	beqz	$s2, .LBB7_6
# %bb.3:                                # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$s2, $a1, .LBB7_5
# %bb.4:
	ld.b	$a1, $s1, 0
	st.b	$a1, $a0, 0
	b	.LBB7_6
.LBB7_5:
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB7_6:
	ld.d	$a0, $sp, 8
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	addi.d	$s1, $fp, 48
	st.d	$s1, $fp, 32
	ld.d	$a1, $s0, 8
	ld.d	$s0, $s0, 0
	ori	$a0, $zero, 16
	st.d	$a1, $sp, 8
	bltu	$a1, $a0, .LBB7_9
# %bb.7:                                # %.noexc.i7
.Ltmp208:
	addi.d	$s2, $fp, 32
	addi.d	$a1, $sp, 8
	move	$a0, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp209:
# %bb.8:                                # %.noexc8
	ld.d	$a1, $sp, 8
	st.d	$a0, $s2, 0
	st.d	$a1, $s1, 0
	move	$s1, $a0
.LBB7_9:                                # %._crit_edge.i.i6
	addi.w	$a0, $zero, -1
	beq	$a1, $a0, .LBB7_13
# %bb.10:                               # %._crit_edge.i.i6
	bnez	$a1, .LBB7_12
# %bb.11:
	ld.b	$a0, $s0, 0
	st.b	$a0, $s1, 0
	b	.LBB7_13
.LBB7_12:
	addi.d	$a2, $a1, 1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB7_13:
	ld.d	$a0, $sp, 8
	st.d	$a0, $fp, 40
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB7_14:
.Ltmp210:
	ld.d	$a2, $fp, 0
	move	$fp, $a0
	beq	$a2, $s3, .LBB7_16
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $s3, 0
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_16:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_, .Lfunc_end7-_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,"aG",@progbits,_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA6_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,comdat
	.p2align	2, 0x0
GCC_except_table7:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp208-.Lfunc_begin1         #   Call between .Lfunc_begin1 and .Ltmp208
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp208-.Lfunc_begin1         # >> Call Site 2 <<
	.uleb128 .Ltmp209-.Ltmp208              #   Call between .Ltmp208 and .Ltmp209
	.uleb128 .Ltmp210-.Lfunc_begin1         #     jumps to .Ltmp210
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp209-.Lfunc_begin1         # >> Call Site 3 <<
	.uleb128 .Lfunc_end7-.Ltmp209           #   Call between .Ltmp209 and .Lfunc_end7
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,"axG",@progbits,_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,comdat
	.hidden	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_ # -- Begin function _ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
	.weak	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
	.p2align	5
	.type	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,@function
_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_: # @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
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
	move	$s1, $a1
	move	$fp, $a0
	addi.d	$s3, $a0, 16
	st.d	$s3, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 8
	move	$a0, $s3
	bltu	$s2, $a1, .LBB8_2
# %bb.1:                                # %.noexc.i
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 16
.LBB8_2:                                # %._crit_edge.i.i
	beqz	$s2, .LBB8_6
# %bb.3:                                # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$s2, $a1, .LBB8_5
# %bb.4:
	ld.b	$a1, $s1, 0
	st.b	$a1, $a0, 0
	b	.LBB8_6
.LBB8_5:
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB8_6:
	ld.d	$a0, $sp, 8
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	addi.d	$s1, $fp, 48
	st.d	$s1, $fp, 32
	ld.d	$a1, $s0, 8
	ld.d	$s0, $s0, 0
	ori	$a0, $zero, 16
	st.d	$a1, $sp, 8
	bltu	$a1, $a0, .LBB8_9
# %bb.7:                                # %.noexc.i7
.Ltmp211:
	addi.d	$s2, $fp, 32
	addi.d	$a1, $sp, 8
	move	$a0, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp212:
# %bb.8:                                # %.noexc8
	ld.d	$a1, $sp, 8
	st.d	$a0, $s2, 0
	st.d	$a1, $s1, 0
	move	$s1, $a0
.LBB8_9:                                # %._crit_edge.i.i6
	addi.w	$a0, $zero, -1
	beq	$a1, $a0, .LBB8_13
# %bb.10:                               # %._crit_edge.i.i6
	bnez	$a1, .LBB8_12
# %bb.11:
	ld.b	$a0, $s0, 0
	st.b	$a0, $s1, 0
	b	.LBB8_13
.LBB8_12:
	addi.d	$a2, $a1, 1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB8_13:
	ld.d	$a0, $sp, 8
	st.d	$a0, $fp, 40
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB8_14:
.Ltmp213:
	ld.d	$a2, $fp, 0
	move	$fp, $a0
	beq	$a2, $s3, .LBB8_16
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $s3, 0
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB8_16:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_, .Lfunc_end8-_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,"aG",@progbits,_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA11_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,comdat
	.p2align	2, 0x0
GCC_except_table8:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp211-.Lfunc_begin2         #   Call between .Lfunc_begin2 and .Ltmp211
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp211-.Lfunc_begin2         # >> Call Site 2 <<
	.uleb128 .Ltmp212-.Ltmp211              #   Call between .Ltmp211 and .Ltmp212
	.uleb128 .Ltmp213-.Lfunc_begin2         #     jumps to .Ltmp213
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp212-.Lfunc_begin2         # >> Call Site 3 <<
	.uleb128 .Lfunc_end8-.Ltmp212           #   Call between .Ltmp212 and .Lfunc_end8
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA10_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,"axG",@progbits,_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA10_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,comdat
	.hidden	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA10_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_ # -- Begin function _ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA10_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
	.weak	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA10_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
	.p2align	5
	.type	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA10_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,@function
_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA10_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_: # @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA10_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
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
	move	$s1, $a1
	move	$fp, $a0
	addi.d	$s3, $a0, 16
	st.d	$s3, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 8
	move	$a0, $s3
	bltu	$s2, $a1, .LBB9_2
# %bb.1:                                # %.noexc.i
	addi.d	$a1, $sp, 8
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 8
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 16
.LBB9_2:                                # %._crit_edge.i.i
	beqz	$s2, .LBB9_6
# %bb.3:                                # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$s2, $a1, .LBB9_5
# %bb.4:
	ld.b	$a1, $s1, 0
	st.b	$a1, $a0, 0
	b	.LBB9_6
.LBB9_5:
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB9_6:
	ld.d	$a0, $sp, 8
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	addi.d	$s1, $fp, 48
	st.d	$s1, $fp, 32
	ld.d	$a1, $s0, 8
	ld.d	$s0, $s0, 0
	ori	$a0, $zero, 16
	st.d	$a1, $sp, 8
	bltu	$a1, $a0, .LBB9_9
# %bb.7:                                # %.noexc.i7
.Ltmp214:
	addi.d	$s2, $fp, 32
	addi.d	$a1, $sp, 8
	move	$a0, $s2
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp215:
# %bb.8:                                # %.noexc8
	ld.d	$a1, $sp, 8
	st.d	$a0, $s2, 0
	st.d	$a1, $s1, 0
	move	$s1, $a0
.LBB9_9:                                # %._crit_edge.i.i6
	addi.w	$a0, $zero, -1
	beq	$a1, $a0, .LBB9_13
# %bb.10:                               # %._crit_edge.i.i6
	bnez	$a1, .LBB9_12
# %bb.11:
	ld.b	$a0, $s0, 0
	st.b	$a0, $s1, 0
	b	.LBB9_13
.LBB9_12:
	addi.d	$a2, $a1, 1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB9_13:
	ld.d	$a0, $sp, 8
	st.d	$a0, $fp, 40
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB9_14:
.Ltmp216:
	ld.d	$a2, $fp, 0
	move	$fp, $a0
	beq	$a2, $s3, .LBB9_16
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $s3, 0
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB9_16:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end9:
	.size	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA10_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_, .Lfunc_end9-_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA10_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA10_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,"aG",@progbits,_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA10_KcRKS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,comdat
	.p2align	2, 0x0
GCC_except_table9:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp214-.Lfunc_begin3         #   Call between .Lfunc_begin3 and .Ltmp214
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp214-.Lfunc_begin3         # >> Call Site 2 <<
	.uleb128 .Ltmp215-.Ltmp214              #   Call between .Ltmp214 and .Ltmp215
	.uleb128 .Ltmp216-.Lfunc_begin3         #     jumps to .Ltmp216
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp215-.Lfunc_begin3         # >> Call Site 3 <<
	.uleb128 .Lfunc_end9-.Ltmp215           #   Call between .Ltmp215 and .Lfunc_end9
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcRA13_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,"axG",@progbits,_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcRA13_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,comdat
	.hidden	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcRA13_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_ # -- Begin function _ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcRA13_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
	.weak	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcRA13_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
	.p2align	5
	.type	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcRA13_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,@function
_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcRA13_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_: # @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcRA13_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
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
	move	$s0, $a2
	move	$s1, $a1
	move	$fp, $a0
	addi.d	$s4, $a0, 16
	st.d	$s4, $a0, 0
	move	$a0, $a1
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 0
	move	$a0, $s4
	bltu	$s2, $a1, .LBB10_2
# %bb.1:                                # %.noexc.i
	addi.d	$a1, $sp, 0
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 0
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 16
.LBB10_2:                               # %._crit_edge.i.i
	beqz	$s2, .LBB10_6
# %bb.3:                                # %._crit_edge.i.i
	ori	$a1, $zero, 1
	bne	$s2, $a1, .LBB10_5
# %bb.4:
	ld.b	$a1, $s1, 0
	st.b	$a1, $a0, 0
	b	.LBB10_6
.LBB10_5:
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB10_6:
	ld.d	$a0, $sp, 0
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	addi.d	$s1, $fp, 48
	st.d	$s1, $fp, 32
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	ori	$a0, $zero, 16
	st.d	$s2, $sp, 0
	bltu	$s2, $a0, .LBB10_9
# %bb.7:                                # %.noexc.i7
.Ltmp217:
	addi.d	$s3, $fp, 32
	addi.d	$a1, $sp, 0
	move	$a0, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp218:
# %bb.8:                                # %.noexc8
	ld.d	$a1, $sp, 0
	st.d	$a0, $s3, 0
	st.d	$a1, $s1, 0
	move	$s1, $a0
.LBB10_9:                               # %._crit_edge.i.i6
	beqz	$s2, .LBB10_13
# %bb.10:                               # %._crit_edge.i.i6
	ori	$a0, $zero, 1
	bne	$s2, $a0, .LBB10_12
# %bb.11:
	ld.b	$a0, $s0, 0
	st.b	$a0, $s1, 0
	b	.LBB10_13
.LBB10_12:
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB10_13:
	ld.d	$a0, $sp, 0
	ld.d	$a1, $fp, 32
	st.d	$a0, $fp, 40
	stx.b	$zero, $a1, $a0
	ld.d	$s4, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s3, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB10_14:
.Ltmp219:
	ld.d	$a2, $fp, 0
	move	$fp, $a0
	beq	$a2, $s4, .LBB10_16
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $s4, 0
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB10_16:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end10:
	.size	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcRA13_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_, .Lfunc_end10-_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcRA13_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcRA13_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,"aG",@progbits,_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EC2IRA5_KcRA13_S8_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISE_SF_EEEbE4typeELb1EEEOSE_OSF_,comdat
	.p2align	2, 0x0
GCC_except_table10:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Lfunc_begin4-.Lfunc_begin4    # >> Call Site 1 <<
	.uleb128 .Ltmp217-.Lfunc_begin4         #   Call between .Lfunc_begin4 and .Ltmp217
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp217-.Lfunc_begin4         # >> Call Site 2 <<
	.uleb128 .Ltmp218-.Ltmp217              #   Call between .Ltmp217 and .Ltmp218
	.uleb128 .Ltmp219-.Lfunc_begin4         #     jumps to .Ltmp219
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp218-.Lfunc_begin4         # >> Call Site 3 <<
	.uleb128 .Lfunc_end10-.Ltmp218          #   Call between .Ltmp218 and .Lfunc_end10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end4:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev,"axG",@progbits,_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev,comdat
	.hidden	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev # -- Begin function _ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev
	.weak	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev
	.p2align	5
	.type	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev,@function
_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev: # @_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 32
	addi.d	$a1, $fp, 48
	beq	$a0, $a1, .LBB11_2
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB11_2:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $fp, 0
	addi.d	$a1, $fp, 16
	beq	$a0, $a1, .LBB11_4
# %bb.3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB11_4:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end11:
	.size	_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev, .Lfunc_end11-_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_ED2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN8TestCaseD2Ev,"axG",@progbits,_ZN8TestCaseD2Ev,comdat
	.hidden	_ZN8TestCaseD2Ev                # -- Begin function _ZN8TestCaseD2Ev
	.weak	_ZN8TestCaseD2Ev
	.p2align	5
	.type	_ZN8TestCaseD2Ev,@function
_ZN8TestCaseD2Ev:                       # @_ZN8TestCaseD2Ev
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
	ld.d	$s0, $a0, 80
	beqz	$s0, .LBB12_5
# %bb.1:
	ld.d	$a0, $s0, 8
	ori	$a1, $zero, 1
	lu32i.d	$a1, 1
	dbar	20
	bne	$a0, $a1, .LBB12_3
# %bb.2:
	ld.d	$a0, $s0, 0
	st.d	$zero, $s0, 8
	ld.d	$a1, $a0, 16
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $s0, 0
	ld.d	$a1, $a0, 24
	move	$a0, $s0
	jirl	$ra, $a1, 0
	ld.d	$a0, $fp, 40
	addi.d	$a1, $fp, 56
	bne	$a0, $a1, .LBB12_6
	b	.LBB12_7
.LBB12_3:
	pcalau12i	$a1, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a1, $a1, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a1, $a1, 0
	beqz	$a1, .LBB12_10
# %bb.4:
	addi.d	$a1, $a0, -1
	st.w	$a1, $s0, 8
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB12_11
.LBB12_5:                               # %_ZNSt12__shared_ptrIN9benchmark5RegexELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
	ld.d	$a0, $fp, 40
	addi.d	$a1, $fp, 56
	beq	$a0, $a1, .LBB12_7
.LBB12_6:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB12_7:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $fp, 0
	addi.d	$a1, $fp, 16
	beq	$a0, $a1, .LBB12_9
# %bb.8:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB12_9:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.LBB12_10:
	addi.d	$a1, $s0, 8
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	addi.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB12_5
.LBB12_11:
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 40
	addi.d	$a1, $fp, 56
	bne	$a0, $a1, .LBB12_6
	b	.LBB12_7
.Lfunc_end12:
	.size	_ZN8TestCaseD2Ev, .Lfunc_end12-_ZN8TestCaseD2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx119to_stringEi,"axG",@progbits,_ZNSt7__cxx119to_stringEi,comdat
	.weak	_ZNSt7__cxx119to_stringEi       # -- Begin function _ZNSt7__cxx119to_stringEi
	.p2align	5
	.type	_ZNSt7__cxx119to_stringEi,@function
_ZNSt7__cxx119to_stringEi:              # @_ZNSt7__cxx119to_stringEi
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
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
	bstrpick.d	$s2, $a1, 31, 31
	srai.d	$a0, $a1, 31
	xor	$a1, $a1, $a0
	sub.w	$s1, $a1, $a0
	ori	$a0, $zero, 10
	ori	$s3, $zero, 1
	bltu	$s1, $a0, .LBB13_9
# %bb.1:                                # %.lr.ph.i.preheader
	ori	$s3, $zero, 4
	ori	$a0, $zero, 99
	ori	$a1, $zero, 999
	ori	$a2, $zero, 625
	lu12i.w	$a3, -189583
	ori	$a3, $a3, 1881
	lu32i.d	$a3, 0
	lu12i.w	$a4, 24
	ori	$a4, $a4, 1695
	move	$a6, $s1
	.p2align	4, , 16
.LBB13_2:                               # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	bgeu	$a0, $a6, .LBB13_7
# %bb.3:                                #   in Loop: Header=BB13_2 Depth=1
	move	$a5, $a6
	bgeu	$a1, $a6, .LBB13_8
# %bb.4:                                #   in Loop: Header=BB13_2 Depth=1
	bstrpick.d	$a6, $a5, 31, 4
	bltu	$a6, $a2, .LBB13_9
# %bb.5:                                #   in Loop: Header=BB13_2 Depth=1
	bstrpick.d	$a6, $a5, 31, 0
	mul.d	$a6, $a6, $a3
	srli.d	$a6, $a6, 45
	addi.w	$s3, $s3, 4
	bltu	$a4, $a5, .LBB13_2
# %bb.6:                                # %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.loopexit
	addi.w	$s3, $s3, -3
	b	.LBB13_9
.LBB13_7:
	addi.w	$s3, $s3, -2
	b	.LBB13_9
.LBB13_8:
	addi.w	$s3, $s3, -1
.LBB13_9:                               # %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit
	addi.d	$a0, $fp, 16
	st.d	$a0, $fp, 0
	st.d	$zero, $fp, 8
	st.b	$zero, $fp, 16
	add.d	$a0, $s3, $s2
	bstrpick.d	$s0, $a0, 31, 0
.Ltmp220:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp221:
# %bb.10:                               # %.noexc
	ld.d	$a0, $fp, 0
	ori	$a1, $zero, 45
	st.b	$a1, $a0, 0
	add.d	$a0, $a0, $s2
	ori	$a2, $zero, 100
	pcalau12i	$a1, %pc_hi20(.L__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits)
	addi.d	$a1, $a1, %pc_lo12(.L__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits)
	bltu	$s1, $a2, .LBB13_15
# %bb.11:                               # %.lr.ph.preheader.i.i.i
	addi.w	$a3, $s3, -2
	lu12i.w	$a4, 335544
	ori	$a4, $a4, 1311
	ori	$a6, $zero, 624
	.p2align	4, , 16
.LBB13_12:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	bstrpick.d	$a5, $s1, 31, 0
	mul.d	$a5, $a5, $a4
	srli.d	$a5, $a5, 37
	mul.d	$a7, $a5, $a2
	sub.w	$a7, $s1, $a7
	slli.d	$a7, $a7, 1
	bstrpick.d	$t0, $a7, 31, 1
	alsl.d	$t0, $t0, $a1, 1
	ld.b	$t0, $t0, 1
	addi.d	$t1, $a3, 1
	bstrpick.d	$t1, $t1, 31, 0
	stx.b	$t0, $a0, $t1
	addi.w	$a7, $a7, 0
	ldx.b	$a7, $a1, $a7
	bstrpick.d	$t0, $a3, 31, 0
	stx.b	$a7, $a0, $t0
	bstrpick.d	$a7, $s1, 31, 4
	addi.w	$a3, $a3, -2
	move	$s1, $a5
	bltu	$a6, $a7, .LBB13_12
# %bb.13:                               # %._crit_edge.i.i.i
	ori	$a2, $zero, 10
	bltu	$a5, $a2, .LBB13_16
.LBB13_14:
	slli.d	$a2, $a5, 1
	bstrpick.d	$a3, $a2, 31, 1
	alsl.d	$a3, $a3, $a1, 1
	ld.b	$a3, $a3, 1
	st.b	$a3, $a0, 1
	addi.w	$a2, $a2, 0
	ldx.bu	$a1, $a1, $a2
	b	.LBB13_17
.LBB13_15:
	move	$a5, $s1
	ori	$a2, $zero, 10
	bgeu	$a5, $a2, .LBB13_14
.LBB13_16:
	ori	$a1, $a5, 48
.LBB13_17:
	st.b	$a1, $a0, 0
	ld.d	$a0, $fp, 0
	st.d	$s0, $fp, 8
	stx.b	$zero, $a0, $s0
	ld.d	$s3, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB13_18:
.Ltmp222:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end13:
	.size	_ZNSt7__cxx119to_stringEi, .Lfunc_end13-_ZNSt7__cxx119to_stringEi
	.cfi_endproc
	.section	.gcc_except_table._ZNSt7__cxx119to_stringEi,"aG",@progbits,_ZNSt7__cxx119to_stringEi,comdat
	.p2align	2, 0x0
GCC_except_table13:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Ltmp220-.Lfunc_begin5         # >> Call Site 1 <<
	.uleb128 .Ltmp221-.Ltmp220              #   Call between .Ltmp220 and .Ltmp221
	.uleb128 .Ltmp222-.Lfunc_begin5         #     jumps to .Ltmp222
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp221-.Lfunc_begin5         # >> Call Site 2 <<
	.uleb128 .Lfunc_end13-.Ltmp221          #   Call between .Ltmp221 and .Lfunc_end13
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.byte	1                               # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                               #   No further actions
	.p2align	2, 0x0
                                        # >> Catch TypeInfos <<
	.word	0                               # TypeInfo 1
.Lttbase0:
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
.Lfunc_end14:
	.size	__clang_call_terminate, .Lfunc_end14-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv,"axG",@progbits,_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv,comdat
	.hidden	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv # -- Begin function _ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv
	.weak	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv
	.p2align	5
	.type	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv,@function
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv: # @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	move	$fp, $a0
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a0, 16
	move	$a0, $fp
	jirl	$ra, $a1, 0
	pcalau12i	$a0, %got_pc_hi20(__libc_single_threaded)
	ld.d	$a0, $a0, %got_pc_lo12(__libc_single_threaded)
	ld.bu	$a0, $a0, 0
	beqz	$a0, .LBB15_3
# %bb.1:
	ld.w	$a0, $fp, 12
	addi.d	$a1, $a0, -1
	st.w	$a1, $fp, 12
	ori	$a1, $zero, 1
	bne	$a0, $a1, .LBB15_4
.LBB15_2:
	ld.d	$a0, $fp, 0
	ld.d	$a1, $a0, 24
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	jr	$a1
.LBB15_3:
	addi.d	$a1, $fp, 12
	addi.w	$a2, $zero, -1
	amadd_db.w	$a0, $a2, $a1
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB15_2
.LBB15_4:                               # %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end15:
	.size	_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv, .Lfunc_end15-_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN3$_18__invokeEl
	.type	_ZN3$_18__invokeEl,@function
_ZN3$_18__invokeEl:                     # @"_ZN3$_18__invokeEl"
# %bb.0:
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	ret
.Lfunc_end16:
	.size	_ZN3$_18__invokeEl, .Lfunc_end16-_ZN3$_18__invokeEl
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN3$_28__invokeEl
.LCPI17_0:
	.dword	0x3ff71547652b82fe              # double 1.4426950408889634
	.text
	.p2align	5
	.type	_ZN3$_28__invokeEl,@function
_ZN3$_28__invokeEl:                     # @"_ZN3$_28__invokeEl"
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	fst.d	$fs0, $sp, 0                    # 8-byte Folded Spill
	pcalau12i	$a1, %pc_hi20(.LCPI17_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI17_0)
	movgr2fr.d	$fa0, $a0
	ffint.d.l	$fa0, $fa0
	fmul.d	$fs0, $fa0, $fa1
	pcaddu18i	$ra, %call36(log)
	jirl	$ra, $ra, 0
	fmul.d	$fa0, $fs0, $fa0
	fld.d	$fs0, $sp, 0                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.Lfunc_end17:
	.size	_ZN3$_28__invokeEl, .Lfunc_end17-_ZN3$_28__invokeEl
                                        # -- End function
	.p2align	5                               # -- Begin function _ZN3$_38__invokeERN9benchmark5StateE
	.type	_ZN3$_38__invokeERN9benchmark5StateE,@function
_ZN3$_38__invokeERN9benchmark5StateE:   # @"_ZN3$_38__invokeERN9benchmark5StateE"
	.cfi_startproc
# %bb.0:
	ori	$a1, $zero, 100
	pcaddu18i	$t8, %call36(_Z24BM_ComplexityCaptureArgsRN9benchmark5StateEi)
	jr	$t8
.Lfunc_end18:
	.size	_ZN3$_38__invokeERN9benchmark5StateE, .Lfunc_end18-_ZN3$_38__invokeERN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _GLOBAL__sub_I_complexity_test.cc
.LCPI19_0:
	.dword	1                               # 0x1
	.dword	2                               # 0x2
.LCPI19_1:
	.dword	3                               # 0x3
	.dword	4                               # 0x4
	.section	.text.startup,"ax",@progbits
	.p2align	5
	.type	_GLOBAL__sub_I_complexity_test.cc,@function
_GLOBAL__sub_I_complexity_test.cc:      # @_GLOBAL__sub_I_complexity_test.cc
.Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception6
# %bb.0:
	addi.d	$sp, $sp, -240
	.cfi_def_cfa_offset 240
	st.d	$ra, $sp, 232                   # 8-byte Folded Spill
	st.d	$fp, $sp, 224                   # 8-byte Folded Spill
	st.d	$s0, $sp, 216                   # 8-byte Folded Spill
	st.d	$s1, $sp, 208                   # 8-byte Folded Spill
	st.d	$s2, $sp, 200                   # 8-byte Folded Spill
	st.d	$s3, $sp, 192                   # 8-byte Folded Spill
	st.d	$s4, $sp, 184                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	st.d	$s6, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	st.d	$s8, $sp, 152                   # 8-byte Folded Spill
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
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$s2, $sp, 136
	st.d	$s2, $sp, 120
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 88
.Ltmp223:
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp224:
# %bb.1:                                # %.noexc.i
	ld.d	$a1, $sp, 88
	pcalau12i	$s3, %pc_hi20(.L.str)
	vld	$vr0, $s3, %pc_lo12(.L.str)
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 120
	st.d	$a1, $sp, 128
	stx.b	$zero, $a0, $a1
	ori	$s1, $zero, 1
.Ltmp226:
	addi.d	$a1, $sp, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp227:
# %bb.2:
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	addi.d	$s6, $a0, 16
	st.d	$s6, $s0, 0
	pcalau12i	$a0, %pc_hi20(_Z16BM_Complexity_O1RN9benchmark5StateE)
	addi.d	$s4, $a0, %pc_lo12(_Z16BM_Complexity_O1RN9benchmark5StateE)
	st.d	$s4, $s0, 224
.Ltmp228:
	move	$s1, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp229:
# %bb.3:
.Ltmp230:
	lu12i.w	$a2, 64
	ori	$a1, $zero, 1
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark5RangeEll)
	jirl	$ra, $ra, 0
.Ltmp231:
# %bb.4:
.Ltmp232:
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp233:
# %bb.5:
.Ltmp234:
	ori	$a1, $zero, 1
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10ComplexityENS_4BigOE)
	jirl	$ra, $ra, 0
.Ltmp235:
# %bb.6:
	move	$fp, $a0
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB19_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_8:                               # %__cxx_global_var_init.1.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_2_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_2_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s2, $sp, 120
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 88
.Ltmp237:
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp238:
# %bb.9:                                # %.noexc.i4
	ld.d	$a1, $sp, 88
	vld	$vr0, $s3, %pc_lo12(.L.str)
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 120
	st.d	$a1, $sp, 128
	stx.b	$zero, $a0, $a1
	ori	$s1, $zero, 1
.Ltmp240:
	addi.d	$a1, $sp, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp241:
# %bb.10:
	st.d	$s6, $s0, 0
	st.d	$s4, $s0, 224
.Ltmp242:
	move	$s1, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp243:
# %bb.11:
.Ltmp244:
	lu12i.w	$a2, 64
	ori	$a1, $zero, 1
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark5RangeEll)
	jirl	$ra, $ra, 0
.Ltmp245:
# %bb.12:
.Ltmp246:
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp247:
# %bb.13:
.Ltmp248:
	ori	$a1, $zero, 7
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10ComplexityENS_4BigOE)
	jirl	$ra, $ra, 0
.Ltmp249:
# %bb.14:
	move	$fp, $a0
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB19_16
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i8
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_16:                              # %__cxx_global_var_init.2.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_3_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_3_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s2, $sp, 120
	ori	$a0, $zero, 16
	st.d	$a0, $sp, 88
.Ltmp251:
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp252:
# %bb.17:                               # %.noexc.i10
	ld.d	$a1, $sp, 88
	vld	$vr0, $s3, %pc_lo12(.L.str)
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
	vst	$vr0, $a0, 0
	ld.d	$a0, $sp, 120
	st.d	$a1, $sp, 128
	stx.b	$zero, $a0, $a1
	ori	$s1, $zero, 1
.Ltmp254:
	addi.d	$a1, $sp, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp255:
# %bb.18:
	st.d	$s6, $s0, 0
	st.d	$s4, $s0, 224
.Ltmp256:
	move	$s1, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp257:
# %bb.19:
.Ltmp258:
	lu12i.w	$a2, 64
	ori	$a1, $zero, 1
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark5RangeEll)
	jirl	$ra, $ra, 0
.Ltmp259:
# %bb.20:
.Ltmp260:
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp261:
# %bb.21:
.Ltmp263:
	pcalau12i	$a1, %pc_hi20(_ZN3$_08__invokeEl)
	addi.d	$a1, $a1, %pc_lo12(_ZN3$_08__invokeEl)
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10ComplexityEPFdlE)
	jirl	$ra, $ra, 0
.Ltmp264:
# %bb.22:
	move	$s0, $a0
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB19_24
# %bb.23:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_24:                              # %__cxx_global_var_init.3.exit
	pcalau12i	$s3, %pc_hi20(one_test_name)
	ld.d	$fp, $s3, %pc_lo12(one_test_name)
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_4_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_4_benchmark_)
	st.d	$s2, $sp, 120
	beqz	$fp, .LBB19_467
# %bb.25:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 88
	move	$a0, $s2
	bltu	$s0, $a1, .LBB19_27
# %bb.26:                               # %.noexc.i.i
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
.LBB19_27:                              # %._crit_edge.i.i.i
	beqz	$s0, .LBB19_31
# %bb.28:                               # %._crit_edge.i.i.i
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_30
# %bb.29:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_31
.LBB19_30:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_31:
	ld.d	$a0, $sp, 88
	ld.d	$a1, $sp, 120
	st.d	$a0, $sp, 128
	stx.b	$zero, $a1, $a0
	pcalau12i	$s4, %pc_hi20(big_o_1_test_name)
	ld.d	$fp, $s4, %pc_lo12(big_o_1_test_name)
	addi.d	$s7, $sp, 104
	st.d	$s7, $sp, 88
	beqz	$fp, .LBB19_472
# %bb.32:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 56
	move	$a0, $s7
	bltu	$s0, $a1, .LBB19_35
# %bb.33:                               # %.noexc.i11.i
.Ltmp266:
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 56
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp267:
# %bb.34:                               # %.noexc13.i
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 104
.LBB19_35:                              # %._crit_edge.i.i10.i
	beqz	$s0, .LBB19_39
# %bb.36:                               # %._crit_edge.i.i10.i
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_38
# %bb.37:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_39
.LBB19_38:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_39:
	ld.d	$a0, $sp, 56
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 96
	stx.b	$zero, $a1, $a0
	pcalau12i	$s5, %pc_hi20(rms_o_1_test_name)
	ld.d	$fp, $s5, %pc_lo12(rms_o_1_test_name)
	addi.d	$s8, $sp, 72
	st.d	$s8, $sp, 56
	beqz	$fp, .LBB19_474
# %bb.40:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 16
	move	$a0, $s8
	bltu	$s0, $a1, .LBB19_43
# %bb.41:                               # %.noexc.i16.i
.Ltmp268:
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp269:
# %bb.42:                               # %.noexc18.i
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 72
.LBB19_43:                              # %._crit_edge.i.i15.i
	beqz	$s0, .LBB19_47
# %bb.44:                               # %._crit_edge.i.i15.i
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_46
# %bb.45:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_47
.LBB19_46:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_47:
	st.d	$s6, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 64
	stx.b	$zero, $a1, $a0
	pcalau12i	$s6, %pc_hi20(enum_auto_big_o_1)
	ld.d	$fp, $s6, %pc_lo12(enum_auto_big_o_1)
	addi.d	$s1, $sp, 32
	st.d	$s1, $sp, 16
	beqz	$fp, .LBB19_476
# %bb.48:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 48
	move	$a0, $s1
	bltu	$s0, $a1, .LBB19_51
# %bb.49:                               # %.noexc.i21.i
.Ltmp270:
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp271:
# %bb.50:                               # %.noexc23.i
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB19_51:                              # %._crit_edge.i.i20.i
	beqz	$s0, .LBB19_55
# %bb.52:                               # %._crit_edge.i.i20.i
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_54
# %bb.53:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_55
.LBB19_54:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_55:
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	stx.b	$zero, $a1, $a0
.Ltmp272:
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 16
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i)
	jirl	$ra, $ra, 0
.Ltmp273:
# %bb.56:
	ld.d	$a0, $sp, 16
	beq	$a0, $s1, .LBB19_58
# %bb.57:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i14
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_58:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
	ld.d	$a0, $sp, 56
	beq	$a0, $s8, .LBB19_60
# %bb.59:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_60:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i
	ld.d	$a0, $sp, 88
	beq	$a0, $s7, .LBB19_62
# %bb.61:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_62:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB19_64
# %bb.63:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_64:                              # %__cxx_global_var_init.9.exit
	ld.d	$fp, $s3, %pc_lo12(one_test_name)
	pcalau12i	$a0, %pc_hi20(dummy105)
	st.w	$zero, $a0, %pc_lo12(dummy105)
	addi.d	$s2, $sp, 136
	st.d	$s2, $sp, 120
	beqz	$fp, .LBB19_467
# %bb.65:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 88
	move	$a0, $s2
	bltu	$s0, $a1, .LBB19_67
# %bb.66:                               # %.noexc.i.i56
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
.LBB19_67:                              # %._crit_edge.i.i.i17
	beqz	$s0, .LBB19_71
# %bb.68:                               # %._crit_edge.i.i.i17
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_70
# %bb.69:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_71
.LBB19_70:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_71:
	ld.d	$a0, $sp, 88
	ld.d	$a1, $sp, 120
	st.d	$a0, $sp, 128
	stx.b	$zero, $a1, $a0
	ld.d	$fp, $s4, %pc_lo12(big_o_1_test_name)
	addi.d	$s7, $sp, 104
	st.d	$s7, $sp, 88
	beqz	$fp, .LBB19_478
# %bb.72:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 56
	move	$a0, $s7
	bltu	$s0, $a1, .LBB19_75
# %bb.73:                               # %.noexc.i11.i53
.Ltmp275:
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 56
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp276:
# %bb.74:                               # %.noexc13.i54
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 104
.LBB19_75:                              # %._crit_edge.i.i10.i18
	beqz	$s0, .LBB19_79
# %bb.76:                               # %._crit_edge.i.i10.i18
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_78
# %bb.77:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_79
.LBB19_78:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_79:
	ld.d	$a0, $sp, 56
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 96
	stx.b	$zero, $a1, $a0
	ld.d	$fp, $s5, %pc_lo12(rms_o_1_test_name)
	addi.d	$s8, $sp, 72
	st.d	$s8, $sp, 56
	beqz	$fp, .LBB19_480
# %bb.80:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 16
	move	$a0, $s8
	bltu	$s0, $a1, .LBB19_83
# %bb.81:                               # %.noexc.i16.i50
.Ltmp277:
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp278:
# %bb.82:                               # %.noexc18.i51
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 72
.LBB19_83:                              # %._crit_edge.i.i15.i19
	beqz	$s0, .LBB19_87
# %bb.84:                               # %._crit_edge.i.i15.i19
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_86
# %bb.85:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_87
.LBB19_86:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_87:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 64
	stx.b	$zero, $a1, $a0
	ld.d	$fp, $s6, %pc_lo12(enum_auto_big_o_1)
	addi.d	$s6, $sp, 32
	st.d	$s6, $sp, 16
	beqz	$fp, .LBB19_482
# %bb.88:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 48
	move	$a0, $s6
	bltu	$s0, $a1, .LBB19_91
# %bb.89:                               # %.noexc.i21.i47
.Ltmp279:
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp280:
# %bb.90:                               # %.noexc23.i48
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB19_91:                              # %._crit_edge.i.i20.i20
	beqz	$s0, .LBB19_95
# %bb.92:                               # %._crit_edge.i.i20.i20
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_94
# %bb.93:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_95
.LBB19_94:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_95:
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	stx.b	$zero, $a1, $a0
.Ltmp281:
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 16
	ori	$a4, $zero, 1
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i)
	jirl	$ra, $ra, 0
.Ltmp282:
# %bb.96:
	ld.d	$a0, $sp, 16
	beq	$a0, $s6, .LBB19_98
# %bb.97:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i36
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_98:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i37
	ld.d	$a0, $sp, 56
	beq	$a0, $s8, .LBB19_100
# %bb.99:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i38
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_100:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i39
	ld.d	$a0, $sp, 88
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	beq	$a0, $s7, .LBB19_102
# %bb.101:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i40
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_102:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i41
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB19_104
# %bb.103:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i42
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_104:                             # %__cxx_global_var_init.10.exit
	ld.d	$fp, $s3, %pc_lo12(one_test_name)
	pcalau12i	$a0, %pc_hi20(dummy109)
	st.w	$zero, $a0, %pc_lo12(dummy109)
	addi.d	$s2, $sp, 136
	st.d	$s2, $sp, 120
	beqz	$fp, .LBB19_467
# %bb.105:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 88
	move	$a0, $s2
	bltu	$s0, $a1, .LBB19_107
# %bb.106:                              # %.noexc.i.i97
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
.LBB19_107:                             # %._crit_edge.i.i.i58
	beqz	$s0, .LBB19_111
# %bb.108:                              # %._crit_edge.i.i.i58
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_110
# %bb.109:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_111
.LBB19_110:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_111:
	ld.d	$a0, $sp, 88
	ld.d	$a1, $sp, 120
	st.d	$a0, $sp, 128
	stx.b	$zero, $a1, $a0
	ld.d	$fp, $s4, %pc_lo12(big_o_1_test_name)
	addi.d	$s3, $sp, 104
	st.d	$s3, $sp, 88
	beqz	$fp, .LBB19_484
# %bb.112:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 56
	move	$a0, $s3
	bltu	$s0, $a1, .LBB19_115
# %bb.113:                              # %.noexc.i11.i94
.Ltmp284:
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 56
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp285:
# %bb.114:                              # %.noexc13.i95
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 104
.LBB19_115:                             # %._crit_edge.i.i10.i59
	beqz	$s0, .LBB19_119
# %bb.116:                              # %._crit_edge.i.i10.i59
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_118
# %bb.117:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_119
.LBB19_118:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_119:
	ld.d	$a0, $sp, 56
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 96
	stx.b	$zero, $a1, $a0
	ld.d	$fp, $s5, %pc_lo12(rms_o_1_test_name)
	addi.d	$s4, $sp, 72
	st.d	$s4, $sp, 56
	beqz	$fp, .LBB19_486
# %bb.120:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 16
	move	$a0, $s4
	bltu	$s0, $a1, .LBB19_123
# %bb.121:                              # %.noexc.i16.i91
.Ltmp286:
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp287:
# %bb.122:                              # %.noexc18.i92
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 72
.LBB19_123:                             # %._crit_edge.i.i15.i60
	beqz	$s0, .LBB19_127
# %bb.124:                              # %._crit_edge.i.i15.i60
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_126
# %bb.125:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_127
.LBB19_126:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_127:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 64
	stx.b	$zero, $a1, $a0
	pcalau12i	$a0, %pc_hi20(lambda_big_o_1)
	ld.d	$fp, $a0, %pc_lo12(lambda_big_o_1)
	addi.d	$s5, $sp, 32
	st.d	$s5, $sp, 16
	beqz	$fp, .LBB19_488
# %bb.128:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 48
	move	$a0, $s5
	bltu	$s0, $a1, .LBB19_131
# %bb.129:                              # %.noexc.i21.i88
.Ltmp288:
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp289:
# %bb.130:                              # %.noexc23.i89
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB19_131:                             # %._crit_edge.i.i20.i61
	beqz	$s0, .LBB19_135
# %bb.132:                              # %._crit_edge.i.i20.i61
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_134
# %bb.133:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_135
.LBB19_134:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_135:
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	stx.b	$zero, $a1, $a0
.Ltmp290:
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 16
	ori	$a4, $zero, 2
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i)
	jirl	$ra, $ra, 0
.Ltmp291:
# %bb.136:
	ld.d	$a0, $sp, 16
	beq	$a0, $s5, .LBB19_138
# %bb.137:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i77
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_138:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i78
	ld.d	$a0, $sp, 56
	beq	$a0, $s4, .LBB19_140
# %bb.139:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i79
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_140:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i80
	ld.d	$a0, $sp, 88
	beq	$a0, $s3, .LBB19_142
# %bb.141:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i81
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_142:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i82
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB19_144
# %bb.143:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i83
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_144:                             # %__cxx_global_var_init.11.exit
	pcalau12i	$a0, %pc_hi20(dummy113)
	st.w	$zero, $a0, %pc_lo12(dummy113)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$s2, $sp, 136
	st.d	$s2, $sp, 120
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 88
.Ltmp293:
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp294:
# %bb.145:                              # %.noexc.i103
	ld.d	$a1, $sp, 88
	pcalau12i	$a2, %pc_hi20(.L.str.13)
	addi.d	$s4, $a2, %pc_lo12(.L.str.13)
	vld	$vr0, $s4, 0
	ld.b	$s3, $s4, 16
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
	vst	$vr0, $a0, 0
	st.b	$s3, $a0, 16
	ld.d	$a0, $sp, 120
	st.d	$a1, $sp, 128
	stx.b	$zero, $a0, $a1
	ori	$s1, $zero, 1
.Ltmp296:
	addi.d	$a1, $sp, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp297:
# %bb.146:
	st.d	$s6, $s0, 0
	pcalau12i	$a0, %pc_hi20(_Z17BM_Complexity_O_NRN9benchmark5StateE)
	addi.d	$s5, $a0, %pc_lo12(_Z17BM_Complexity_O_NRN9benchmark5StateE)
	st.d	$s5, $s0, 224
.Ltmp298:
	move	$s1, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp299:
# %bb.147:
.Ltmp300:
	ori	$a1, $zero, 2
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark15RangeMultiplierEi)
	jirl	$ra, $ra, 0
.Ltmp301:
# %bb.148:
.Ltmp302:
	lu12i.w	$a2, 256
	ori	$a1, $zero, 1024
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark5RangeEll)
	jirl	$ra, $ra, 0
.Ltmp303:
# %bb.149:
.Ltmp304:
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp305:
# %bb.150:
.Ltmp306:
	ori	$a1, $zero, 2
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10ComplexityENS_4BigOE)
	jirl	$ra, $ra, 0
.Ltmp307:
# %bb.151:
	move	$fp, $a0
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB19_153
# %bb.152:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i107
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_153:                             # %__cxx_global_var_init.12.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_5_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_5_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s2, $sp, 120
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 88
.Ltmp309:
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp310:
# %bb.154:                              # %.noexc.i114
	ld.d	$a1, $sp, 88
	vld	$vr0, $s4, 0
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
	vst	$vr0, $a0, 0
	st.b	$s3, $a0, 16
	ld.d	$a0, $sp, 120
	st.d	$a1, $sp, 128
	stx.b	$zero, $a0, $a1
	ori	$s1, $zero, 1
.Ltmp312:
	addi.d	$a1, $sp, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp313:
# %bb.155:
	st.d	$s6, $s0, 0
	st.d	$s5, $s0, 224
.Ltmp314:
	move	$s1, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp315:
# %bb.156:
.Ltmp316:
	ori	$a1, $zero, 2
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark15RangeMultiplierEi)
	jirl	$ra, $ra, 0
.Ltmp317:
# %bb.157:
.Ltmp318:
	lu12i.w	$a2, 256
	ori	$a1, $zero, 1024
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark5RangeEll)
	jirl	$ra, $ra, 0
.Ltmp319:
# %bb.158:
.Ltmp320:
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp321:
# %bb.159:
.Ltmp322:
	ori	$a1, $zero, 7
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10ComplexityENS_4BigOE)
	jirl	$ra, $ra, 0
.Ltmp323:
# %bb.160:
	move	$fp, $a0
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB19_162
# %bb.161:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i118
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_162:                             # %__cxx_global_var_init.14.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_6_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_6_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s2, $sp, 120
	ori	$a0, $zero, 17
	st.d	$a0, $sp, 88
.Ltmp325:
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp326:
# %bb.163:                              # %.noexc.i125
	ld.d	$a1, $sp, 88
	vld	$vr0, $s4, 0
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
	vst	$vr0, $a0, 0
	st.b	$s3, $a0, 16
	ld.d	$a0, $sp, 120
	st.d	$a1, $sp, 128
	stx.b	$zero, $a0, $a1
	ori	$s1, $zero, 1
.Ltmp328:
	addi.d	$a1, $sp, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp329:
# %bb.164:
	st.d	$s6, $s0, 0
	st.d	$s5, $s0, 224
.Ltmp330:
	move	$s1, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp331:
# %bb.165:
.Ltmp332:
	ori	$a1, $zero, 2
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark15RangeMultiplierEi)
	jirl	$ra, $ra, 0
.Ltmp333:
# %bb.166:
.Ltmp334:
	lu12i.w	$a2, 256
	ori	$a1, $zero, 1024
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark5RangeEll)
	jirl	$ra, $ra, 0
.Ltmp335:
# %bb.167:
.Ltmp336:
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp337:
# %bb.168:
.Ltmp339:
	pcalau12i	$a1, %pc_hi20(_ZN3$_18__invokeEl)
	addi.d	$a1, $a1, %pc_lo12(_ZN3$_18__invokeEl)
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10ComplexityEPFdlE)
	jirl	$ra, $ra, 0
.Ltmp340:
# %bb.169:
	move	$s0, $a0
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB19_171
# %bb.170:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i132
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_171:                             # %__cxx_global_var_init.15.exit
	pcalau12i	$s3, %pc_hi20(n_test_name)
	ld.d	$fp, $s3, %pc_lo12(n_test_name)
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_7_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_7_benchmark_)
	st.d	$s2, $sp, 120
	beqz	$fp, .LBB19_467
# %bb.172:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 88
	move	$a0, $s2
	bltu	$s0, $a1, .LBB19_174
# %bb.173:                              # %.noexc.i.i174
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
.LBB19_174:                             # %._crit_edge.i.i.i135
	beqz	$s0, .LBB19_178
# %bb.175:                              # %._crit_edge.i.i.i135
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_177
# %bb.176:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_178
.LBB19_177:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_178:
	ld.d	$a0, $sp, 88
	ld.d	$a1, $sp, 120
	st.d	$a0, $sp, 128
	stx.b	$zero, $a1, $a0
	pcalau12i	$s4, %pc_hi20(big_o_n_test_name)
	ld.d	$fp, $s4, %pc_lo12(big_o_n_test_name)
	addi.d	$s7, $sp, 104
	st.d	$s7, $sp, 88
	beqz	$fp, .LBB19_490
# %bb.179:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 56
	move	$a0, $s7
	bltu	$s0, $a1, .LBB19_182
# %bb.180:                              # %.noexc.i11.i171
.Ltmp342:
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 56
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp343:
# %bb.181:                              # %.noexc13.i172
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 104
.LBB19_182:                             # %._crit_edge.i.i10.i136
	beqz	$s0, .LBB19_186
# %bb.183:                              # %._crit_edge.i.i10.i136
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_185
# %bb.184:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_186
.LBB19_185:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_186:
	ld.d	$a0, $sp, 56
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 96
	stx.b	$zero, $a1, $a0
	pcalau12i	$s5, %pc_hi20(rms_o_n_test_name)
	ld.d	$fp, $s5, %pc_lo12(rms_o_n_test_name)
	addi.d	$s8, $sp, 72
	st.d	$s8, $sp, 56
	beqz	$fp, .LBB19_492
# %bb.187:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 16
	move	$a0, $s8
	bltu	$s0, $a1, .LBB19_190
# %bb.188:                              # %.noexc.i16.i168
.Ltmp344:
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp345:
# %bb.189:                              # %.noexc18.i169
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 72
.LBB19_190:                             # %._crit_edge.i.i15.i137
	beqz	$s0, .LBB19_194
# %bb.191:                              # %._crit_edge.i.i15.i137
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_193
# %bb.192:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_194
.LBB19_193:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_194:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 64
	stx.b	$zero, $a1, $a0
	pcalau12i	$s6, %pc_hi20(enum_auto_big_o_n)
	ld.d	$fp, $s6, %pc_lo12(enum_auto_big_o_n)
	addi.d	$s1, $sp, 32
	st.d	$s1, $sp, 16
	beqz	$fp, .LBB19_494
# %bb.195:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 48
	move	$a0, $s1
	bltu	$s0, $a1, .LBB19_198
# %bb.196:                              # %.noexc.i21.i165
.Ltmp346:
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp347:
# %bb.197:                              # %.noexc23.i166
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB19_198:                             # %._crit_edge.i.i20.i138
	beqz	$s0, .LBB19_202
# %bb.199:                              # %._crit_edge.i.i20.i138
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_201
# %bb.200:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_202
.LBB19_201:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_202:
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	stx.b	$zero, $a1, $a0
.Ltmp348:
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 16
	ori	$a4, $zero, 3
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i)
	jirl	$ra, $ra, 0
.Ltmp349:
# %bb.203:
	ld.d	$a0, $sp, 16
	beq	$a0, $s1, .LBB19_205
# %bb.204:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i154
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_205:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i155
	ld.d	$a0, $sp, 56
	beq	$a0, $s8, .LBB19_207
# %bb.206:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i156
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_207:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i157
	ld.d	$a0, $sp, 88
	beq	$a0, $s7, .LBB19_209
# %bb.208:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i158
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_209:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i159
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB19_211
# %bb.210:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i160
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_211:                             # %__cxx_global_var_init.20.exit
	ld.d	$fp, $s3, %pc_lo12(n_test_name)
	pcalau12i	$a0, %pc_hi20(dummy162)
	st.w	$zero, $a0, %pc_lo12(dummy162)
	addi.d	$s2, $sp, 136
	st.d	$s2, $sp, 120
	beqz	$fp, .LBB19_467
# %bb.212:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 88
	move	$a0, $s2
	bltu	$s0, $a1, .LBB19_214
# %bb.213:                              # %.noexc.i.i215
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
.LBB19_214:                             # %._crit_edge.i.i.i176
	beqz	$s0, .LBB19_218
# %bb.215:                              # %._crit_edge.i.i.i176
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_217
# %bb.216:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_218
.LBB19_217:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_218:
	ld.d	$a0, $sp, 88
	ld.d	$a1, $sp, 120
	st.d	$a0, $sp, 128
	stx.b	$zero, $a1, $a0
	ld.d	$fp, $s4, %pc_lo12(big_o_n_test_name)
	addi.d	$s7, $sp, 104
	st.d	$s7, $sp, 88
	beqz	$fp, .LBB19_496
# %bb.219:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 56
	move	$a0, $s7
	bltu	$s0, $a1, .LBB19_222
# %bb.220:                              # %.noexc.i11.i212
.Ltmp351:
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 56
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp352:
# %bb.221:                              # %.noexc13.i213
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 104
.LBB19_222:                             # %._crit_edge.i.i10.i177
	beqz	$s0, .LBB19_226
# %bb.223:                              # %._crit_edge.i.i10.i177
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_225
# %bb.224:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_226
.LBB19_225:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_226:
	ld.d	$a0, $sp, 56
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 96
	stx.b	$zero, $a1, $a0
	ld.d	$fp, $s5, %pc_lo12(rms_o_n_test_name)
	addi.d	$s8, $sp, 72
	st.d	$s8, $sp, 56
	beqz	$fp, .LBB19_498
# %bb.227:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 16
	move	$a0, $s8
	bltu	$s0, $a1, .LBB19_230
# %bb.228:                              # %.noexc.i16.i209
.Ltmp353:
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp354:
# %bb.229:                              # %.noexc18.i210
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 72
.LBB19_230:                             # %._crit_edge.i.i15.i178
	beqz	$s0, .LBB19_234
# %bb.231:                              # %._crit_edge.i.i15.i178
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_233
# %bb.232:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_234
.LBB19_233:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_234:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 64
	stx.b	$zero, $a1, $a0
	ld.d	$fp, $s6, %pc_lo12(enum_auto_big_o_n)
	addi.d	$s1, $sp, 32
	st.d	$s1, $sp, 16
	beqz	$fp, .LBB19_500
# %bb.235:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 48
	move	$a0, $s1
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	bltu	$s0, $a1, .LBB19_238
# %bb.236:                              # %.noexc.i21.i206
.Ltmp355:
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp356:
# %bb.237:                              # %.noexc23.i207
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB19_238:                             # %._crit_edge.i.i20.i179
	beqz	$s0, .LBB19_242
# %bb.239:                              # %._crit_edge.i.i20.i179
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_241
# %bb.240:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_242
.LBB19_241:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_242:
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	stx.b	$zero, $a1, $a0
.Ltmp357:
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 16
	ori	$a4, $zero, 4
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i)
	jirl	$ra, $ra, 0
.Ltmp358:
# %bb.243:
	ld.d	$a0, $sp, 16
	beq	$a0, $s1, .LBB19_245
# %bb.244:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i195
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_245:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i196
	ld.d	$a0, $sp, 56
	beq	$a0, $s8, .LBB19_247
# %bb.246:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i197
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_247:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i198
	ld.d	$a0, $sp, 88
	beq	$a0, $s7, .LBB19_249
# %bb.248:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i199
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_249:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i200
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB19_251
# %bb.250:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i201
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_251:                             # %__cxx_global_var_init.21.exit
	ld.d	$fp, $s3, %pc_lo12(n_test_name)
	pcalau12i	$a0, %pc_hi20(dummy166)
	st.w	$zero, $a0, %pc_lo12(dummy166)
	addi.d	$s2, $sp, 136
	st.d	$s2, $sp, 120
	beqz	$fp, .LBB19_467
# %bb.252:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 88
	move	$a0, $s2
	bltu	$s0, $a1, .LBB19_254
# %bb.253:                              # %.noexc.i.i256
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
.LBB19_254:                             # %._crit_edge.i.i.i217
	beqz	$s0, .LBB19_258
# %bb.255:                              # %._crit_edge.i.i.i217
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_257
# %bb.256:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_258
.LBB19_257:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_258:
	ld.d	$a0, $sp, 88
	ld.d	$a1, $sp, 120
	st.d	$a0, $sp, 128
	stx.b	$zero, $a1, $a0
	ld.d	$fp, $s4, %pc_lo12(big_o_n_test_name)
	addi.d	$s3, $sp, 104
	st.d	$s3, $sp, 88
	beqz	$fp, .LBB19_502
# %bb.259:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 56
	move	$a0, $s3
	bltu	$s0, $a1, .LBB19_262
# %bb.260:                              # %.noexc.i11.i253
.Ltmp360:
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 56
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp361:
# %bb.261:                              # %.noexc13.i254
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 104
.LBB19_262:                             # %._crit_edge.i.i10.i218
	beqz	$s0, .LBB19_266
# %bb.263:                              # %._crit_edge.i.i10.i218
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_265
# %bb.264:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_266
.LBB19_265:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_266:
	ld.d	$a0, $sp, 56
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 96
	stx.b	$zero, $a1, $a0
	ld.d	$fp, $s5, %pc_lo12(rms_o_n_test_name)
	addi.d	$s4, $sp, 72
	st.d	$s4, $sp, 56
	beqz	$fp, .LBB19_504
# %bb.267:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 16
	move	$a0, $s4
	bltu	$s0, $a1, .LBB19_270
# %bb.268:                              # %.noexc.i16.i250
.Ltmp362:
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp363:
# %bb.269:                              # %.noexc18.i251
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 72
.LBB19_270:                             # %._crit_edge.i.i15.i219
	beqz	$s0, .LBB19_274
# %bb.271:                              # %._crit_edge.i.i15.i219
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_273
# %bb.272:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_274
.LBB19_273:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_274:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 64
	stx.b	$zero, $a1, $a0
	pcalau12i	$a0, %pc_hi20(lambda_big_o_n)
	ld.d	$fp, $a0, %pc_lo12(lambda_big_o_n)
	addi.d	$s1, $sp, 32
	st.d	$s1, $sp, 16
	beqz	$fp, .LBB19_506
# %bb.275:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 48
	move	$a0, $s1
	bltu	$s0, $a1, .LBB19_278
# %bb.276:                              # %.noexc.i21.i247
.Ltmp364:
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp365:
# %bb.277:                              # %.noexc23.i248
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB19_278:                             # %._crit_edge.i.i20.i220
	beqz	$s0, .LBB19_282
# %bb.279:                              # %._crit_edge.i.i20.i220
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_281
# %bb.280:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_282
.LBB19_281:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_282:
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	stx.b	$zero, $a1, $a0
.Ltmp366:
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 16
	ori	$a4, $zero, 5
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i)
	jirl	$ra, $ra, 0
.Ltmp367:
# %bb.283:
	ld.d	$a0, $sp, 16
	beq	$a0, $s1, .LBB19_285
# %bb.284:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i236
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_285:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i237
	ld.d	$a0, $sp, 56
	beq	$a0, $s4, .LBB19_287
# %bb.286:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i238
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_287:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i239
	ld.d	$a0, $sp, 88
	beq	$a0, $s3, .LBB19_289
# %bb.288:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i240
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_289:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i241
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB19_291
# %bb.290:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i242
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_291:                             # %__cxx_global_var_init.22.exit
	pcalau12i	$a0, %pc_hi20(dummy170)
	st.w	$zero, $a0, %pc_lo12(dummy170)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$s2, $sp, 136
	st.d	$s2, $sp, 120
	ori	$a0, $zero, 23
	st.d	$a0, $sp, 88
.Ltmp369:
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp370:
# %bb.292:                              # %.noexc.i262
	ld.d	$a1, $sp, 88
	pcalau12i	$a2, %pc_hi20(.L.str.24)
	addi.d	$s4, $a2, %pc_lo12(.L.str.24)
	vld	$vr0, $s4, 0
	ld.d	$s3, $s4, 15
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
	vst	$vr0, $a0, 0
	st.d	$s3, $a0, 15
	ld.d	$a0, $sp, 120
	st.d	$a1, $sp, 128
	stx.b	$zero, $a0, $a1
	ori	$s1, $zero, 1
.Ltmp372:
	addi.d	$a1, $sp, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp373:
# %bb.293:
	st.d	$s6, $s0, 0
	pcalau12i	$a0, %pc_hi20(_ZL23BM_Complexity_O_N_log_NRN9benchmark5StateE)
	addi.d	$s5, $a0, %pc_lo12(_ZL23BM_Complexity_O_N_log_NRN9benchmark5StateE)
	st.d	$s5, $s0, 224
.Ltmp374:
	move	$s1, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp375:
# %bb.294:
.Ltmp376:
	ori	$a1, $zero, 2
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark15RangeMultiplierEi)
	jirl	$ra, $ra, 0
.Ltmp377:
# %bb.295:
.Ltmp378:
	lu12i.w	$a2, 4096
	ori	$a1, $zero, 1024
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark5RangeEll)
	jirl	$ra, $ra, 0
.Ltmp379:
# %bb.296:
.Ltmp380:
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp381:
# %bb.297:
.Ltmp382:
	ori	$a1, $zero, 6
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10ComplexityENS_4BigOE)
	jirl	$ra, $ra, 0
.Ltmp383:
# %bb.298:
	move	$fp, $a0
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB19_300
# %bb.299:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i266
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_300:                             # %__cxx_global_var_init.23.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_8_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_8_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s2, $sp, 120
	ori	$a0, $zero, 23
	st.d	$a0, $sp, 88
.Ltmp385:
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp386:
# %bb.301:                              # %.noexc.i273
	ld.d	$a1, $sp, 88
	vld	$vr0, $s4, 0
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
	vst	$vr0, $a0, 0
	st.d	$s3, $a0, 15
	ld.d	$a0, $sp, 120
	st.d	$a1, $sp, 128
	stx.b	$zero, $a0, $a1
	ori	$s1, $zero, 1
.Ltmp388:
	addi.d	$a1, $sp, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp389:
# %bb.302:
	st.d	$s6, $s0, 0
	st.d	$s5, $s0, 224
.Ltmp390:
	move	$s1, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp391:
# %bb.303:
.Ltmp392:
	ori	$a1, $zero, 2
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark15RangeMultiplierEi)
	jirl	$ra, $ra, 0
.Ltmp393:
# %bb.304:
.Ltmp394:
	lu12i.w	$a2, 4096
	ori	$a1, $zero, 1024
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark5RangeEll)
	jirl	$ra, $ra, 0
.Ltmp395:
# %bb.305:
.Ltmp396:
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp397:
# %bb.306:
.Ltmp398:
	ori	$a1, $zero, 7
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10ComplexityENS_4BigOE)
	jirl	$ra, $ra, 0
.Ltmp399:
# %bb.307:
	move	$fp, $a0
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB19_309
# %bb.308:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i277
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_309:                             # %__cxx_global_var_init.25.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_9_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL27benchmark_uniq_9_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	st.d	$s2, $sp, 120
	ori	$a0, $zero, 23
	st.d	$a0, $sp, 88
.Ltmp401:
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp402:
# %bb.310:                              # %.noexc.i284
	ld.d	$a1, $sp, 88
	vld	$vr0, $s4, 0
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
	vst	$vr0, $a0, 0
	st.d	$s3, $a0, 15
	ld.d	$a0, $sp, 120
	st.d	$a1, $sp, 128
	stx.b	$zero, $a0, $a1
	ori	$s1, $zero, 1
.Ltmp404:
	addi.d	$a1, $sp, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp405:
# %bb.311:
	st.d	$s6, $s0, 0
	st.d	$s5, $s0, 224
.Ltmp406:
	move	$s1, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp407:
# %bb.312:
.Ltmp408:
	ori	$a1, $zero, 2
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark15RangeMultiplierEi)
	jirl	$ra, $ra, 0
.Ltmp409:
# %bb.313:
.Ltmp410:
	lu12i.w	$a2, 4096
	ori	$a1, $zero, 1024
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark5RangeEll)
	jirl	$ra, $ra, 0
.Ltmp411:
# %bb.314:
.Ltmp412:
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp413:
# %bb.315:
.Ltmp415:
	pcalau12i	$a1, %pc_hi20(_ZN3$_28__invokeEl)
	addi.d	$a1, $a1, %pc_lo12(_ZN3$_28__invokeEl)
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10ComplexityEPFdlE)
	jirl	$ra, $ra, 0
.Ltmp416:
# %bb.316:
	move	$s0, $a0
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB19_318
# %bb.317:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i291
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_318:                             # %__cxx_global_var_init.26.exit
	pcalau12i	$s3, %pc_hi20(n_lg_n_test_name)
	ld.d	$fp, $s3, %pc_lo12(n_lg_n_test_name)
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_10_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL28benchmark_uniq_10_benchmark_)
	st.d	$s2, $sp, 120
	beqz	$fp, .LBB19_467
# %bb.319:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 88
	move	$a0, $s2
	bltu	$s0, $a1, .LBB19_321
# %bb.320:                              # %.noexc.i.i333
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
.LBB19_321:                             # %._crit_edge.i.i.i294
	beqz	$s0, .LBB19_325
# %bb.322:                              # %._crit_edge.i.i.i294
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_324
# %bb.323:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_325
.LBB19_324:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_325:
	ld.d	$a0, $sp, 88
	ld.d	$a1, $sp, 120
	st.d	$a0, $sp, 128
	stx.b	$zero, $a1, $a0
	pcalau12i	$s4, %pc_hi20(big_o_n_lg_n_test_name)
	ld.d	$fp, $s4, %pc_lo12(big_o_n_lg_n_test_name)
	addi.d	$s7, $sp, 104
	st.d	$s7, $sp, 88
	beqz	$fp, .LBB19_508
# %bb.326:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 56
	move	$a0, $s7
	bltu	$s0, $a1, .LBB19_329
# %bb.327:                              # %.noexc.i11.i330
.Ltmp418:
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 56
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp419:
# %bb.328:                              # %.noexc13.i331
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 104
.LBB19_329:                             # %._crit_edge.i.i10.i295
	beqz	$s0, .LBB19_333
# %bb.330:                              # %._crit_edge.i.i10.i295
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_332
# %bb.331:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_333
.LBB19_332:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_333:
	ld.d	$a0, $sp, 56
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 96
	stx.b	$zero, $a1, $a0
	pcalau12i	$s5, %pc_hi20(rms_o_n_lg_n_test_name)
	ld.d	$fp, $s5, %pc_lo12(rms_o_n_lg_n_test_name)
	addi.d	$s8, $sp, 72
	st.d	$s8, $sp, 56
	beqz	$fp, .LBB19_510
# %bb.334:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 16
	move	$a0, $s8
	bltu	$s0, $a1, .LBB19_337
# %bb.335:                              # %.noexc.i16.i327
.Ltmp420:
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp421:
# %bb.336:                              # %.noexc18.i328
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 72
.LBB19_337:                             # %._crit_edge.i.i15.i296
	beqz	$s0, .LBB19_341
# %bb.338:                              # %._crit_edge.i.i15.i296
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_340
# %bb.339:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_341
.LBB19_340:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_341:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 64
	stx.b	$zero, $a1, $a0
	pcalau12i	$s6, %pc_hi20(enum_auto_big_o_n_lg_n)
	ld.d	$fp, $s6, %pc_lo12(enum_auto_big_o_n_lg_n)
	addi.d	$s1, $sp, 32
	st.d	$s1, $sp, 16
	beqz	$fp, .LBB19_512
# %bb.342:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 48
	move	$a0, $s1
	bltu	$s0, $a1, .LBB19_345
# %bb.343:                              # %.noexc.i21.i324
.Ltmp422:
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp423:
# %bb.344:                              # %.noexc23.i325
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB19_345:                             # %._crit_edge.i.i20.i297
	beqz	$s0, .LBB19_349
# %bb.346:                              # %._crit_edge.i.i20.i297
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_348
# %bb.347:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_349
.LBB19_348:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_349:
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	stx.b	$zero, $a1, $a0
.Ltmp424:
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 16
	ori	$a4, $zero, 6
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i)
	jirl	$ra, $ra, 0
.Ltmp425:
# %bb.350:
	ld.d	$a0, $sp, 16
	beq	$a0, $s1, .LBB19_352
# %bb.351:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i313
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_352:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i314
	ld.d	$a0, $sp, 56
	beq	$a0, $s8, .LBB19_354
# %bb.353:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i315
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_354:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i316
	ld.d	$a0, $sp, 88
	beq	$a0, $s7, .LBB19_356
# %bb.355:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i317
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_356:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i318
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB19_358
# %bb.357:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i319
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_358:                             # %__cxx_global_var_init.31.exit
	ld.d	$fp, $s3, %pc_lo12(n_lg_n_test_name)
	pcalau12i	$a0, %pc_hi20(dummy221)
	st.w	$zero, $a0, %pc_lo12(dummy221)
	addi.d	$s2, $sp, 136
	st.d	$s2, $sp, 120
	beqz	$fp, .LBB19_467
# %bb.359:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 88
	move	$a0, $s2
	bltu	$s0, $a1, .LBB19_361
# %bb.360:                              # %.noexc.i.i374
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
.LBB19_361:                             # %._crit_edge.i.i.i335
	beqz	$s0, .LBB19_365
# %bb.362:                              # %._crit_edge.i.i.i335
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_364
# %bb.363:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_365
.LBB19_364:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_365:
	ld.d	$a0, $sp, 88
	ld.d	$a1, $sp, 120
	st.d	$a0, $sp, 128
	stx.b	$zero, $a1, $a0
	ld.d	$fp, $s4, %pc_lo12(big_o_n_lg_n_test_name)
	addi.d	$s7, $sp, 104
	st.d	$s7, $sp, 88
	beqz	$fp, .LBB19_514
# %bb.366:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 56
	move	$a0, $s7
	bltu	$s0, $a1, .LBB19_369
# %bb.367:                              # %.noexc.i11.i371
.Ltmp427:
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 56
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp428:
# %bb.368:                              # %.noexc13.i372
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 104
.LBB19_369:                             # %._crit_edge.i.i10.i336
	beqz	$s0, .LBB19_373
# %bb.370:                              # %._crit_edge.i.i10.i336
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_372
# %bb.371:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_373
.LBB19_372:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_373:
	ld.d	$a0, $sp, 56
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 96
	stx.b	$zero, $a1, $a0
	ld.d	$fp, $s5, %pc_lo12(rms_o_n_lg_n_test_name)
	addi.d	$s8, $sp, 72
	st.d	$s8, $sp, 56
	beqz	$fp, .LBB19_516
# %bb.374:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 16
	move	$a0, $s8
	bltu	$s0, $a1, .LBB19_377
# %bb.375:                              # %.noexc.i16.i368
.Ltmp429:
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp430:
# %bb.376:                              # %.noexc18.i369
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 72
.LBB19_377:                             # %._crit_edge.i.i15.i337
	beqz	$s0, .LBB19_381
# %bb.378:                              # %._crit_edge.i.i15.i337
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_380
# %bb.379:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_381
.LBB19_380:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_381:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 64
	stx.b	$zero, $a1, $a0
	ld.d	$fp, $s6, %pc_lo12(enum_auto_big_o_n_lg_n)
	addi.d	$s1, $sp, 32
	st.d	$s1, $sp, 16
	beqz	$fp, .LBB19_518
# %bb.382:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 48
	move	$a0, $s1
	ld.d	$s6, $sp, 8                     # 8-byte Folded Reload
	bltu	$s0, $a1, .LBB19_385
# %bb.383:                              # %.noexc.i21.i365
.Ltmp431:
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp432:
# %bb.384:                              # %.noexc23.i366
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB19_385:                             # %._crit_edge.i.i20.i338
	beqz	$s0, .LBB19_389
# %bb.386:                              # %._crit_edge.i.i20.i338
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_388
# %bb.387:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_389
.LBB19_388:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_389:
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	stx.b	$zero, $a1, $a0
.Ltmp433:
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 16
	ori	$a4, $zero, 7
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i)
	jirl	$ra, $ra, 0
.Ltmp434:
# %bb.390:
	ld.d	$a0, $sp, 16
	beq	$a0, $s1, .LBB19_392
# %bb.391:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i354
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_392:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i355
	ld.d	$a0, $sp, 56
	beq	$a0, $s8, .LBB19_394
# %bb.393:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i356
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_394:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i357
	ld.d	$a0, $sp, 88
	beq	$a0, $s7, .LBB19_396
# %bb.395:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i358
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_396:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i359
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB19_398
# %bb.397:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i360
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_398:                             # %__cxx_global_var_init.32.exit
	ld.d	$fp, $s3, %pc_lo12(n_lg_n_test_name)
	pcalau12i	$a0, %pc_hi20(dummy226)
	st.w	$zero, $a0, %pc_lo12(dummy226)
	addi.d	$s2, $sp, 136
	st.d	$s2, $sp, 120
	beqz	$fp, .LBB19_467
# %bb.399:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 88
	move	$a0, $s2
	bltu	$s0, $a1, .LBB19_401
# %bb.400:                              # %.noexc.i.i415
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
.LBB19_401:                             # %._crit_edge.i.i.i376
	beqz	$s0, .LBB19_405
# %bb.402:                              # %._crit_edge.i.i.i376
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_404
# %bb.403:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_405
.LBB19_404:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_405:
	ld.d	$a0, $sp, 88
	ld.d	$a1, $sp, 120
	st.d	$a0, $sp, 128
	stx.b	$zero, $a1, $a0
	ld.d	$fp, $s4, %pc_lo12(big_o_n_lg_n_test_name)
	addi.d	$s3, $sp, 104
	st.d	$s3, $sp, 88
	beqz	$fp, .LBB19_520
# %bb.406:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 56
	move	$a0, $s3
	bltu	$s0, $a1, .LBB19_409
# %bb.407:                              # %.noexc.i11.i412
.Ltmp436:
	addi.d	$a0, $sp, 88
	addi.d	$a1, $sp, 56
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp437:
# %bb.408:                              # %.noexc13.i413
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 88
	st.d	$a1, $sp, 104
.LBB19_409:                             # %._crit_edge.i.i10.i377
	beqz	$s0, .LBB19_413
# %bb.410:                              # %._crit_edge.i.i10.i377
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_412
# %bb.411:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_413
.LBB19_412:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_413:
	ld.d	$a0, $sp, 56
	ld.d	$a1, $sp, 88
	st.d	$a0, $sp, 96
	stx.b	$zero, $a1, $a0
	ld.d	$fp, $s5, %pc_lo12(rms_o_n_lg_n_test_name)
	addi.d	$s4, $sp, 72
	st.d	$s4, $sp, 56
	beqz	$fp, .LBB19_522
# %bb.414:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 16
	move	$a0, $s4
	bltu	$s0, $a1, .LBB19_417
# %bb.415:                              # %.noexc.i16.i409
.Ltmp438:
	addi.d	$a0, $sp, 56
	addi.d	$a1, $sp, 16
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp439:
# %bb.416:                              # %.noexc18.i410
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 56
	st.d	$a1, $sp, 72
.LBB19_417:                             # %._crit_edge.i.i15.i378
	beqz	$s0, .LBB19_421
# %bb.418:                              # %._crit_edge.i.i15.i378
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_420
# %bb.419:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_421
.LBB19_420:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_421:
	ld.d	$a0, $sp, 16
	ld.d	$a1, $sp, 56
	st.d	$a0, $sp, 64
	stx.b	$zero, $a1, $a0
	pcalau12i	$a0, %pc_hi20(lambda_big_o_n_lg_n)
	ld.d	$fp, $a0, %pc_lo12(lambda_big_o_n_lg_n)
	addi.d	$s1, $sp, 32
	st.d	$s1, $sp, 16
	beqz	$fp, .LBB19_524
# %bb.422:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(strlen)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a1, $zero, 16
	st.d	$a0, $sp, 48
	move	$a0, $s1
	bltu	$s0, $a1, .LBB19_425
# %bb.423:                              # %.noexc.i21.i406
.Ltmp440:
	addi.d	$a0, $sp, 16
	addi.d	$a1, $sp, 48
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp441:
# %bb.424:                              # %.noexc23.i407
	ld.d	$a1, $sp, 48
	st.d	$a0, $sp, 16
	st.d	$a1, $sp, 32
.LBB19_425:                             # %._crit_edge.i.i20.i379
	beqz	$s0, .LBB19_429
# %bb.426:                              # %._crit_edge.i.i20.i379
	ori	$a1, $zero, 1
	bne	$s0, $a1, .LBB19_428
# %bb.427:
	ld.b	$a1, $fp, 0
	st.b	$a1, $a0, 0
	b	.LBB19_429
.LBB19_428:
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB19_429:
	ld.d	$a0, $sp, 48
	ld.d	$a1, $sp, 16
	st.d	$a0, $sp, 24
	stx.b	$zero, $a1, $a0
.Ltmp442:
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 16
	ori	$a4, $zero, 8
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i)
	jirl	$ra, $ra, 0
.Ltmp443:
# %bb.430:
	ld.d	$a0, $sp, 16
	beq	$a0, $s1, .LBB19_432
# %bb.431:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i395
	ld.d	$a1, $sp, 32
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_432:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i396
	ld.d	$a0, $sp, 56
	beq	$a0, $s4, .LBB19_434
# %bb.433:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25.i397
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_434:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27.i398
	ld.d	$a0, $sp, 88
	beq	$a0, $s3, .LBB19_436
# %bb.435:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28.i399
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_436:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30.i400
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB19_438
# %bb.437:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31.i401
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_438:                             # %__cxx_global_var_init.33.exit
	pcalau12i	$a0, %pc_hi20(dummy231)
	st.w	$zero, $a0, %pc_lo12(dummy231)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	addi.d	$s2, $sp, 136
	st.d	$s2, $sp, 120
	ori	$a0, $zero, 37
	st.d	$a0, $sp, 88
.Ltmp445:
	addi.d	$a0, $sp, 120
	addi.d	$a1, $sp, 88
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp446:
# %bb.439:                              # %.noexc.i418
	ld.d	$a1, $sp, 88
	pcalau12i	$a2, %pc_hi20(.L.str.35)
	addi.d	$a2, $a2, %pc_lo12(.L.str.35)
	vld	$vr0, $a2, 16
	st.d	$a0, $sp, 120
	st.d	$a1, $sp, 136
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 0
	ld.d	$a2, $a2, 29
	vst	$vr0, $a0, 0
	st.d	$a2, $a0, 29
	st.d	$a1, $sp, 128
	stx.b	$zero, $a0, $a1
	ori	$s1, $zero, 1
.Ltmp448:
	addi.d	$a1, $sp, 120
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp449:
# %bb.440:
	st.d	$s6, $s0, 0
	pcalau12i	$a0, %pc_hi20(_ZN3$_38__invokeERN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZN3$_38__invokeERN9benchmark5StateE)
	st.d	$a0, $s0, 224
.Ltmp450:
	move	$s1, $zero
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp451:
# %bb.441:
.Ltmp452:
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark13UseManualTimeEv)
	jirl	$ra, $ra, 0
.Ltmp453:
# %bb.442:
.Ltmp454:
	ori	$a1, $zero, 2
	move	$s1, $zero
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark10ComplexityENS_4BigOE)
	jirl	$ra, $ra, 0
.Ltmp455:
# %bb.443:
.Ltmp457:
	move	$fp, $a0
	ori	$a0, $zero, 32
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp458:
# %bb.444:
	st.d	$a0, $sp, 88
	pcalau12i	$a1, %pc_hi20(.LCPI19_0)
	vld	$vr0, $a1, %pc_lo12(.LCPI19_0)
	pcalau12i	$a1, %pc_hi20(.LCPI19_1)
	vld	$vr1, $a1, %pc_lo12(.LCPI19_1)
	addi.d	$a1, $a0, 32
	st.d	$a1, $sp, 104
	vst	$vr0, $a0, 0
	vst	$vr1, $a0, 16
	st.d	$a1, $sp, 96
.Ltmp460:
	addi.d	$a1, $sp, 88
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9Benchmark6RangesERKSt6vectorISt4pairIllESaIS4_EE)
	jirl	$ra, $ra, 0
.Ltmp461:
# %bb.445:
	move	$fp, $a0
	ld.d	$a0, $sp, 88
	beqz	$a0, .LBB19_447
# %bb.446:
	ld.d	$a1, $sp, 104
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_447:                             # %_ZNSt6vectorISt4pairIllESaIS1_EED2Ev.exit.i
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB19_449
# %bb.448:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i421
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_449:                             # %__cxx_global_var_init.34.exit
	pcalau12i	$a0, %pc_hi20(_ZL28benchmark_uniq_11_benchmark_)
	st.d	$fp, $a0, %pc_lo12(_ZL28benchmark_uniq_11_benchmark_)
	pcalau12i	$a0, %pc_hi20(_ZL23complexity_capture_nameB5cxx11)
	addi.d	$fp, $a0, %pc_lo12(_ZL23complexity_capture_nameB5cxx11)
	addi.d	$a0, $fp, 16
	st.d	$a0, $fp, 0
	ori	$a0, $zero, 49
	st.d	$a0, $sp, 120
	addi.d	$a1, $sp, 120
	move	$a0, $fp
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a1, $sp, 120
	pcalau12i	$a2, %pc_hi20(.L.str.37)
	addi.d	$a2, $a2, %pc_lo12(.L.str.37)
	vld	$vr0, $a2, 0
	st.d	$a0, $fp, 0
	st.d	$a1, $fp, 16
	vst	$vr0, $a0, 0
	vld	$vr0, $a2, 16
	vst	$vr0, $a0, 16
	vld	$vr0, $a2, 32
	ld.b	$a2, $a2, 48
	vst	$vr0, $a0, 32
	st.b	$a2, $a0, 48
	st.d	$a1, $fp, 8
	stx.b	$zero, $a0, $a1
	pcalau12i	$a0, %got_pc_hi20(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev)
	ld.d	$a0, $a0, %got_pc_lo12(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev)
	pcalau12i	$a1, %pc_hi20(__dso_handle)
	addi.d	$a2, $a1, %pc_lo12(__dso_handle)
	move	$a1, $fp
	pcaddu18i	$ra, %call36(__cxa_atexit)
	jirl	$ra, $ra, 0
	ld.d	$s0, $fp, 0
	ld.d	$s1, $fp, 8
	st.d	$s2, $sp, 120
	st.d	$zero, $sp, 128
	st.b	$zero, $sp, 136
	addi.d	$a1, $s1, 5
.Ltmp463:
	addi.d	$a0, $sp, 120
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp464:
# %bb.450:
	ld.d	$a0, $sp, 128
	addi.w	$a1, $zero, -2
	lu52i.d	$s3, $a1, 2047
	sub.d	$a0, $s3, $a0
	bltu	$a0, $s1, .LBB19_468
# %bb.451:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
.Ltmp465:
	addi.d	$a0, $sp, 120
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp466:
# %bb.452:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i
	ld.d	$a0, $sp, 128
	addi.w	$a1, $zero, -6
	lu52i.d	$a1, $a1, 2047
	bgeu	$a0, $a1, .LBB19_468
# %bb.453:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i
.Ltmp467:
	pcalau12i	$a0, %pc_hi20(.L.str.39)
	addi.d	$a1, $a0, %pc_lo12(.L.str.39)
	addi.d	$a0, $sp, 120
	ori	$a2, $zero, 5
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp468:
# %bb.454:                              # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit.i
	ld.d	$s0, $fp, 0
	ld.d	$fp, $fp, 8
	addi.d	$s1, $sp, 104
	st.d	$s1, $sp, 88
	st.d	$zero, $sp, 96
	st.b	$zero, $sp, 104
	addi.d	$a1, $fp, 4
.Ltmp469:
	addi.d	$a0, $sp, 88
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm)
	jirl	$ra, $ra, 0
.Ltmp470:
# %bb.455:
	ld.d	$a0, $sp, 96
	sub.d	$a0, $s3, $a0
	bltu	$a0, $fp, .LBB19_470
# %bb.456:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i8.i
.Ltmp471:
	addi.d	$a0, $sp, 88
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp472:
# %bb.457:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i9.i
	ld.d	$a0, $sp, 96
	addi.w	$a1, $zero, -5
	lu52i.d	$a1, $a1, 2047
	bgeu	$a0, $a1, .LBB19_470
# %bb.458:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i10.i
.Ltmp473:
	pcalau12i	$a0, %pc_hi20(.L.str.40)
	addi.d	$a1, $a0, %pc_lo12(.L.str.40)
	addi.d	$a0, $sp, 88
	ori	$a2, $zero, 4
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm)
	jirl	$ra, $ra, 0
.Ltmp474:
# %bb.459:                              # %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit13.i
	addi.d	$s0, $sp, 72
	st.d	$s0, $sp, 56
	ori	$a0, $zero, 78
	st.h	$a0, $sp, 72
	ori	$a0, $zero, 1
	st.d	$a0, $sp, 64
.Ltmp475:
	pcalau12i	$a0, %pc_hi20(_ZL23complexity_capture_nameB5cxx11)
	addi.d	$a0, $a0, %pc_lo12(_ZL23complexity_capture_nameB5cxx11)
	addi.d	$a1, $sp, 120
	addi.d	$a2, $sp, 88
	addi.d	$a3, $sp, 56
	ori	$a4, $zero, 9
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_117AddComplexityTestERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_S7_S7_i)
	jirl	$ra, $ra, 0
.Ltmp476:
# %bb.460:
	ld.d	$a0, $sp, 56
	beq	$a0, $s0, .LBB19_462
# %bb.461:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i426
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_462:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i427
	ld.d	$a0, $sp, 88
	beq	$a0, $s1, .LBB19_464
# %bb.463:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14.i
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_464:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16.i
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB19_466
# %bb.465:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i17.i
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_466:                             # %__cxx_global_var_init.38.exit
	pcalau12i	$a0, %pc_hi20(dummy264)
	st.w	$zero, $a0, %pc_lo12(dummy264)
	ld.d	$s8, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 216                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 224                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 232                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 240
	ret
.LBB19_467:                             # %.noexc.i16
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.LBB19_468:                             # %.invoke.i.i.i
.Ltmp481:
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp482:
# %bb.469:                              # %.cont.i.i.i
.LBB19_470:                             # %.invoke.i.i11.i
.Ltmp478:
	pcalau12i	$a0, %pc_hi20(.L.str.77)
	addi.d	$a0, $a0, %pc_lo12(.L.str.77)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp479:
# %bb.471:                              # %.cont.i.i12.i
.LBB19_472:
.Ltmp562:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp563:
# %bb.473:                              # %.noexc12.i
.LBB19_474:
.Ltmp559:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp560:
# %bb.475:                              # %.noexc17.i
.LBB19_476:
.Ltmp556:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp557:
# %bb.477:                              # %.noexc22.i
.LBB19_478:
.Ltmp553:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp554:
# %bb.479:                              # %.noexc12.i55
.LBB19_480:
.Ltmp550:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp551:
# %bb.481:                              # %.noexc17.i52
.LBB19_482:
.Ltmp547:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp548:
# %bb.483:                              # %.noexc22.i49
.LBB19_484:
.Ltmp544:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp545:
# %bb.485:                              # %.noexc12.i96
.LBB19_486:
.Ltmp541:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp542:
# %bb.487:                              # %.noexc17.i93
.LBB19_488:
.Ltmp538:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp539:
# %bb.489:                              # %.noexc22.i90
.LBB19_490:
.Ltmp535:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp536:
# %bb.491:                              # %.noexc12.i173
.LBB19_492:
.Ltmp532:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp533:
# %bb.493:                              # %.noexc17.i170
.LBB19_494:
.Ltmp529:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp530:
# %bb.495:                              # %.noexc22.i167
.LBB19_496:
.Ltmp526:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp527:
# %bb.497:                              # %.noexc12.i214
.LBB19_498:
.Ltmp523:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp524:
# %bb.499:                              # %.noexc17.i211
.LBB19_500:
.Ltmp520:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp521:
# %bb.501:                              # %.noexc22.i208
.LBB19_502:
.Ltmp517:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp518:
# %bb.503:                              # %.noexc12.i255
.LBB19_504:
.Ltmp514:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp515:
# %bb.505:                              # %.noexc17.i252
.LBB19_506:
.Ltmp511:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp512:
# %bb.507:                              # %.noexc22.i249
.LBB19_508:
.Ltmp508:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp509:
# %bb.509:                              # %.noexc12.i332
.LBB19_510:
.Ltmp505:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp506:
# %bb.511:                              # %.noexc17.i329
.LBB19_512:
.Ltmp502:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp503:
# %bb.513:                              # %.noexc22.i326
.LBB19_514:
.Ltmp499:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp500:
# %bb.515:                              # %.noexc12.i373
.LBB19_516:
.Ltmp496:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp497:
# %bb.517:                              # %.noexc17.i370
.LBB19_518:
.Ltmp493:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp494:
# %bb.519:                              # %.noexc22.i367
.LBB19_520:
.Ltmp490:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp491:
# %bb.521:                              # %.noexc12.i414
.LBB19_522:
.Ltmp487:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp488:
# %bb.523:                              # %.noexc17.i411
.LBB19_524:
.Ltmp484:
	pcalau12i	$a0, %pc_hi20(.L.str.80)
	addi.d	$a0, $a0, %pc_lo12(.L.str.80)
	pcaddu18i	$ra, %call36(_ZSt19__throw_logic_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp485:
# %bb.525:                              # %.noexc22.i408
.LBB19_526:
.Ltmp477:
	ld.d	$a2, $sp, 56
	move	$fp, $a0
	beq	$a2, $s0, .LBB19_528
# %bb.527:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20.i
	ld.d	$a0, $sp, 72
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_528:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22.i
	ld.d	$a0, $sp, 88
	bne	$a0, $s1, .LBB19_592
	b	.LBB19_594
.LBB19_529:
.Ltmp462:
	ld.d	$a2, $sp, 88
	move	$fp, $a0
	beqz	$a2, .LBB19_594
# %bb.530:
	ld.d	$a0, $sp, 104
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	b	.LBB19_593
.LBB19_531:
.Ltmp459:
	move	$fp, $a0
	b	.LBB19_594
.LBB19_532:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit19.thread.i
.Ltmp447:
	move	$fp, $a0
	b	.LBB19_615
.LBB19_533:
.Ltmp444:
	b	.LBB19_541
.LBB19_534:
.Ltmp435:
	b	.LBB19_552
.LBB19_535:
.Ltmp426:
	b	.LBB19_552
.LBB19_536:                             # %.thread.i288
.Ltmp417:
	b	.LBB19_603
.LBB19_537:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.thread.i281
.Ltmp403:
	move	$fp, $a0
	b	.LBB19_615
.LBB19_538:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i270
.Ltmp387:
	move	$fp, $a0
	b	.LBB19_615
.LBB19_539:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i259
.Ltmp371:
	move	$fp, $a0
	b	.LBB19_615
.LBB19_540:
.Ltmp368:
.LBB19_541:
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	bne	$a2, $s1, .LBB19_549
	b	.LBB19_578
.LBB19_542:
.Ltmp359:
	b	.LBB19_552
.LBB19_543:
.Ltmp350:
	b	.LBB19_552
.LBB19_544:                             # %.thread.i129
.Ltmp341:
	b	.LBB19_603
.LBB19_545:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.thread.i122
.Ltmp327:
	move	$fp, $a0
	b	.LBB19_615
.LBB19_546:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i111
.Ltmp311:
	move	$fp, $a0
	b	.LBB19_615
.LBB19_547:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i100
.Ltmp295:
	move	$fp, $a0
	b	.LBB19_615
.LBB19_548:
.Ltmp292:
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	beq	$a2, $s5, .LBB19_578
.LBB19_549:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.i62
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB19_578
.LBB19_550:
.Ltmp283:
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	bne	$a2, $s6, .LBB19_553
	b	.LBB19_589
.LBB19_551:
.Ltmp274:
.LBB19_552:
	ld.d	$a2, $sp, 16
	move	$fp, $a0
	beq	$a2, $s1, .LBB19_589
.LBB19_553:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.i
	ld.d	$a0, $sp, 32
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB19_589
.LBB19_554:                             # %.thread.i
.Ltmp265:
	b	.LBB19_603
.LBB19_555:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.thread.i
.Ltmp253:
	move	$fp, $a0
	b	.LBB19_615
.LBB19_556:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i1
.Ltmp239:
	move	$fp, $a0
	b	.LBB19_615
.LBB19_557:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i
.Ltmp225:
	move	$fp, $a0
	b	.LBB19_615
.LBB19_558:
.Ltmp486:
	b	.LBB19_577
.LBB19_559:
.Ltmp489:
	b	.LBB19_581
.LBB19_560:
.Ltmp492:
	move	$fp, $a0
	b	.LBB19_594
.LBB19_561:
.Ltmp495:
	b	.LBB19_588
.LBB19_562:
.Ltmp498:
	move	$fp, $a0
	ld.d	$a0, $sp, 88
	bne	$a0, $s7, .LBB19_592
	b	.LBB19_594
.LBB19_563:
.Ltmp501:
	move	$fp, $a0
	b	.LBB19_594
.LBB19_564:
.Ltmp504:
	b	.LBB19_588
.LBB19_565:
.Ltmp507:
	move	$fp, $a0
	ld.d	$a0, $sp, 88
	bne	$a0, $s7, .LBB19_592
	b	.LBB19_594
.LBB19_566:
.Ltmp510:
	move	$fp, $a0
	b	.LBB19_594
.LBB19_567:
.Ltmp513:
	b	.LBB19_577
.LBB19_568:
.Ltmp516:
	b	.LBB19_581
.LBB19_569:
.Ltmp519:
	move	$fp, $a0
	b	.LBB19_594
.LBB19_570:
.Ltmp522:
	b	.LBB19_588
.LBB19_571:
.Ltmp525:
	move	$fp, $a0
	ld.d	$a0, $sp, 88
	bne	$a0, $s7, .LBB19_592
	b	.LBB19_594
.LBB19_572:
.Ltmp528:
	move	$fp, $a0
	b	.LBB19_594
.LBB19_573:
.Ltmp531:
	b	.LBB19_588
.LBB19_574:
.Ltmp534:
	move	$fp, $a0
	ld.d	$a0, $sp, 88
	bne	$a0, $s7, .LBB19_592
	b	.LBB19_594
.LBB19_575:
.Ltmp537:
	move	$fp, $a0
	b	.LBB19_594
.LBB19_576:
.Ltmp540:
.LBB19_577:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.i63
	move	$fp, $a0
.LBB19_578:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.i63
	ld.d	$a0, $sp, 56
	beq	$a0, $s4, .LBB19_582
# %bb.579:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i65
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB19_582
.LBB19_580:
.Ltmp543:
.LBB19_581:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i66
	move	$fp, $a0
.LBB19_582:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i66
	ld.d	$a0, $sp, 88
	bne	$a0, $s3, .LBB19_592
	b	.LBB19_594
.LBB19_583:
.Ltmp546:
	move	$fp, $a0
	b	.LBB19_594
.LBB19_584:
.Ltmp549:
	b	.LBB19_588
.LBB19_585:
.Ltmp552:
	move	$fp, $a0
	ld.d	$a0, $sp, 88
	bne	$a0, $s7, .LBB19_592
	b	.LBB19_594
.LBB19_586:
.Ltmp555:
	move	$fp, $a0
	b	.LBB19_594
.LBB19_587:
.Ltmp558:
.LBB19_588:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.i
	move	$fp, $a0
.LBB19_589:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.i
	ld.d	$a0, $sp, 56
	beq	$a0, $s8, .LBB19_591
# %bb.590:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_591:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i
	ld.d	$a0, $sp, 88
	beq	$a0, $s7, .LBB19_594
.LBB19_592:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40.i
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
.LBB19_593:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.i
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_594:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42.i
	ld.d	$a0, $sp, 120
	beq	$a0, $s2, .LBB19_617
# %bb.595:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i43.i
	ld.d	$a1, $sp, 136
	addi.d	$a1, $a1, 1
	b	.LBB19_616
.LBB19_596:
.Ltmp561:
	move	$fp, $a0
	ld.d	$a0, $sp, 88
	bne	$a0, $s7, .LBB19_592
	b	.LBB19_594
.LBB19_597:
.Ltmp564:
	move	$fp, $a0
	b	.LBB19_594
.LBB19_598:
.Ltmp456:
	ld.d	$a2, $sp, 120
	move	$fp, $a0
	beq	$a2, $s2, .LBB19_614
	b	.LBB19_612
.LBB19_599:
.Ltmp262:
	ld.d	$a2, $sp, 120
	move	$fp, $a0
	beq	$a2, $s2, .LBB19_614
	b	.LBB19_612
.LBB19_600:
.Ltmp480:
	ld.d	$a2, $sp, 88
	move	$fp, $a0
	beq	$a2, $s1, .LBB19_594
# %bb.601:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i5.i
	ld.d	$a0, $sp, 104
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	b	.LBB19_593
.LBB19_602:
.Ltmp483:
.LBB19_603:                             # %.thread.i
	ld.d	$a2, $sp, 120
	move	$fp, $a0
	beq	$a2, $s2, .LBB19_617
# %bb.604:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11.thread25.i
	ld.d	$a0, $sp, 136
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	b	.LBB19_616
.LBB19_605:
.Ltmp414:
	ld.d	$a2, $sp, 120
	move	$fp, $a0
	beq	$a2, $s2, .LBB19_614
	b	.LBB19_612
.LBB19_606:
.Ltmp338:
	ld.d	$a2, $sp, 120
	move	$fp, $a0
	beq	$a2, $s2, .LBB19_614
	b	.LBB19_612
.LBB19_607:
.Ltmp250:
	ld.d	$a2, $sp, 120
	move	$fp, $a0
	beq	$a2, $s2, .LBB19_614
	b	.LBB19_612
.LBB19_608:
.Ltmp236:
	ld.d	$a2, $sp, 120
	move	$fp, $a0
	bne	$a2, $s2, .LBB19_612
	b	.LBB19_614
.LBB19_609:
.Ltmp400:
	ld.d	$a2, $sp, 120
	move	$fp, $a0
	beq	$a2, $s2, .LBB19_614
	b	.LBB19_612
.LBB19_610:
.Ltmp384:
	ld.d	$a2, $sp, 120
	move	$fp, $a0
	beq	$a2, $s2, .LBB19_614
	b	.LBB19_612
.LBB19_611:
.Ltmp324:
	ld.d	$a2, $sp, 120
	move	$fp, $a0
	beq	$a2, $s2, .LBB19_614
.LBB19_612:                             # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
	ld.d	$a0, $sp, 136
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s1, .LBB19_617
	b	.LBB19_615
.LBB19_613:
.Ltmp308:
	ld.d	$a2, $sp, 120
	move	$fp, $a0
	bne	$a2, $s2, .LBB19_612
.LBB19_614:                             # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i
	beqz	$s1, .LBB19_617
.LBB19_615:
	ori	$a1, $zero, 232
	move	$a0, $s0
.LBB19_616:                             # %common.resume
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB19_617:                             # %common.resume
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end19:
	.size	_GLOBAL__sub_I_complexity_test.cc, .Lfunc_end19-_GLOBAL__sub_I_complexity_test.cc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table19:
.Lexception6:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end6-.Lcst_begin6
.Lcst_begin6:
	.uleb128 .Lfunc_begin6-.Lfunc_begin6    # >> Call Site 1 <<
	.uleb128 .Ltmp223-.Lfunc_begin6         #   Call between .Lfunc_begin6 and .Ltmp223
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp223-.Lfunc_begin6         # >> Call Site 2 <<
	.uleb128 .Ltmp224-.Ltmp223              #   Call between .Ltmp223 and .Ltmp224
	.uleb128 .Ltmp225-.Lfunc_begin6         #     jumps to .Ltmp225
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp226-.Lfunc_begin6         # >> Call Site 3 <<
	.uleb128 .Ltmp235-.Ltmp226              #   Call between .Ltmp226 and .Ltmp235
	.uleb128 .Ltmp236-.Lfunc_begin6         #     jumps to .Ltmp236
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp235-.Lfunc_begin6         # >> Call Site 4 <<
	.uleb128 .Ltmp237-.Ltmp235              #   Call between .Ltmp235 and .Ltmp237
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp237-.Lfunc_begin6         # >> Call Site 5 <<
	.uleb128 .Ltmp238-.Ltmp237              #   Call between .Ltmp237 and .Ltmp238
	.uleb128 .Ltmp239-.Lfunc_begin6         #     jumps to .Ltmp239
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp240-.Lfunc_begin6         # >> Call Site 6 <<
	.uleb128 .Ltmp249-.Ltmp240              #   Call between .Ltmp240 and .Ltmp249
	.uleb128 .Ltmp250-.Lfunc_begin6         #     jumps to .Ltmp250
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp249-.Lfunc_begin6         # >> Call Site 7 <<
	.uleb128 .Ltmp251-.Ltmp249              #   Call between .Ltmp249 and .Ltmp251
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp251-.Lfunc_begin6         # >> Call Site 8 <<
	.uleb128 .Ltmp252-.Ltmp251              #   Call between .Ltmp251 and .Ltmp252
	.uleb128 .Ltmp253-.Lfunc_begin6         #     jumps to .Ltmp253
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp254-.Lfunc_begin6         # >> Call Site 9 <<
	.uleb128 .Ltmp261-.Ltmp254              #   Call between .Ltmp254 and .Ltmp261
	.uleb128 .Ltmp262-.Lfunc_begin6         #     jumps to .Ltmp262
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp263-.Lfunc_begin6         # >> Call Site 10 <<
	.uleb128 .Ltmp264-.Ltmp263              #   Call between .Ltmp263 and .Ltmp264
	.uleb128 .Ltmp265-.Lfunc_begin6         #     jumps to .Ltmp265
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp264-.Lfunc_begin6         # >> Call Site 11 <<
	.uleb128 .Ltmp266-.Ltmp264              #   Call between .Ltmp264 and .Ltmp266
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp266-.Lfunc_begin6         # >> Call Site 12 <<
	.uleb128 .Ltmp267-.Ltmp266              #   Call between .Ltmp266 and .Ltmp267
	.uleb128 .Ltmp564-.Lfunc_begin6         #     jumps to .Ltmp564
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp267-.Lfunc_begin6         # >> Call Site 13 <<
	.uleb128 .Ltmp268-.Ltmp267              #   Call between .Ltmp267 and .Ltmp268
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp268-.Lfunc_begin6         # >> Call Site 14 <<
	.uleb128 .Ltmp269-.Ltmp268              #   Call between .Ltmp268 and .Ltmp269
	.uleb128 .Ltmp561-.Lfunc_begin6         #     jumps to .Ltmp561
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp269-.Lfunc_begin6         # >> Call Site 15 <<
	.uleb128 .Ltmp270-.Ltmp269              #   Call between .Ltmp269 and .Ltmp270
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp270-.Lfunc_begin6         # >> Call Site 16 <<
	.uleb128 .Ltmp271-.Ltmp270              #   Call between .Ltmp270 and .Ltmp271
	.uleb128 .Ltmp558-.Lfunc_begin6         #     jumps to .Ltmp558
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp271-.Lfunc_begin6         # >> Call Site 17 <<
	.uleb128 .Ltmp272-.Ltmp271              #   Call between .Ltmp271 and .Ltmp272
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp272-.Lfunc_begin6         # >> Call Site 18 <<
	.uleb128 .Ltmp273-.Ltmp272              #   Call between .Ltmp272 and .Ltmp273
	.uleb128 .Ltmp274-.Lfunc_begin6         #     jumps to .Ltmp274
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp273-.Lfunc_begin6         # >> Call Site 19 <<
	.uleb128 .Ltmp275-.Ltmp273              #   Call between .Ltmp273 and .Ltmp275
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp275-.Lfunc_begin6         # >> Call Site 20 <<
	.uleb128 .Ltmp276-.Ltmp275              #   Call between .Ltmp275 and .Ltmp276
	.uleb128 .Ltmp555-.Lfunc_begin6         #     jumps to .Ltmp555
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp276-.Lfunc_begin6         # >> Call Site 21 <<
	.uleb128 .Ltmp277-.Ltmp276              #   Call between .Ltmp276 and .Ltmp277
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp277-.Lfunc_begin6         # >> Call Site 22 <<
	.uleb128 .Ltmp278-.Ltmp277              #   Call between .Ltmp277 and .Ltmp278
	.uleb128 .Ltmp552-.Lfunc_begin6         #     jumps to .Ltmp552
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp278-.Lfunc_begin6         # >> Call Site 23 <<
	.uleb128 .Ltmp279-.Ltmp278              #   Call between .Ltmp278 and .Ltmp279
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp279-.Lfunc_begin6         # >> Call Site 24 <<
	.uleb128 .Ltmp280-.Ltmp279              #   Call between .Ltmp279 and .Ltmp280
	.uleb128 .Ltmp549-.Lfunc_begin6         #     jumps to .Ltmp549
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp280-.Lfunc_begin6         # >> Call Site 25 <<
	.uleb128 .Ltmp281-.Ltmp280              #   Call between .Ltmp280 and .Ltmp281
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp281-.Lfunc_begin6         # >> Call Site 26 <<
	.uleb128 .Ltmp282-.Ltmp281              #   Call between .Ltmp281 and .Ltmp282
	.uleb128 .Ltmp283-.Lfunc_begin6         #     jumps to .Ltmp283
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp282-.Lfunc_begin6         # >> Call Site 27 <<
	.uleb128 .Ltmp284-.Ltmp282              #   Call between .Ltmp282 and .Ltmp284
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp284-.Lfunc_begin6         # >> Call Site 28 <<
	.uleb128 .Ltmp285-.Ltmp284              #   Call between .Ltmp284 and .Ltmp285
	.uleb128 .Ltmp546-.Lfunc_begin6         #     jumps to .Ltmp546
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp285-.Lfunc_begin6         # >> Call Site 29 <<
	.uleb128 .Ltmp286-.Ltmp285              #   Call between .Ltmp285 and .Ltmp286
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp286-.Lfunc_begin6         # >> Call Site 30 <<
	.uleb128 .Ltmp287-.Ltmp286              #   Call between .Ltmp286 and .Ltmp287
	.uleb128 .Ltmp543-.Lfunc_begin6         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp287-.Lfunc_begin6         # >> Call Site 31 <<
	.uleb128 .Ltmp288-.Ltmp287              #   Call between .Ltmp287 and .Ltmp288
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp288-.Lfunc_begin6         # >> Call Site 32 <<
	.uleb128 .Ltmp289-.Ltmp288              #   Call between .Ltmp288 and .Ltmp289
	.uleb128 .Ltmp540-.Lfunc_begin6         #     jumps to .Ltmp540
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp289-.Lfunc_begin6         # >> Call Site 33 <<
	.uleb128 .Ltmp290-.Ltmp289              #   Call between .Ltmp289 and .Ltmp290
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp290-.Lfunc_begin6         # >> Call Site 34 <<
	.uleb128 .Ltmp291-.Ltmp290              #   Call between .Ltmp290 and .Ltmp291
	.uleb128 .Ltmp292-.Lfunc_begin6         #     jumps to .Ltmp292
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp291-.Lfunc_begin6         # >> Call Site 35 <<
	.uleb128 .Ltmp293-.Ltmp291              #   Call between .Ltmp291 and .Ltmp293
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp293-.Lfunc_begin6         # >> Call Site 36 <<
	.uleb128 .Ltmp294-.Ltmp293              #   Call between .Ltmp293 and .Ltmp294
	.uleb128 .Ltmp295-.Lfunc_begin6         #     jumps to .Ltmp295
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp296-.Lfunc_begin6         # >> Call Site 37 <<
	.uleb128 .Ltmp307-.Ltmp296              #   Call between .Ltmp296 and .Ltmp307
	.uleb128 .Ltmp308-.Lfunc_begin6         #     jumps to .Ltmp308
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp307-.Lfunc_begin6         # >> Call Site 38 <<
	.uleb128 .Ltmp309-.Ltmp307              #   Call between .Ltmp307 and .Ltmp309
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp309-.Lfunc_begin6         # >> Call Site 39 <<
	.uleb128 .Ltmp310-.Ltmp309              #   Call between .Ltmp309 and .Ltmp310
	.uleb128 .Ltmp311-.Lfunc_begin6         #     jumps to .Ltmp311
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp312-.Lfunc_begin6         # >> Call Site 40 <<
	.uleb128 .Ltmp323-.Ltmp312              #   Call between .Ltmp312 and .Ltmp323
	.uleb128 .Ltmp324-.Lfunc_begin6         #     jumps to .Ltmp324
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp323-.Lfunc_begin6         # >> Call Site 41 <<
	.uleb128 .Ltmp325-.Ltmp323              #   Call between .Ltmp323 and .Ltmp325
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp325-.Lfunc_begin6         # >> Call Site 42 <<
	.uleb128 .Ltmp326-.Ltmp325              #   Call between .Ltmp325 and .Ltmp326
	.uleb128 .Ltmp327-.Lfunc_begin6         #     jumps to .Ltmp327
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp328-.Lfunc_begin6         # >> Call Site 43 <<
	.uleb128 .Ltmp337-.Ltmp328              #   Call between .Ltmp328 and .Ltmp337
	.uleb128 .Ltmp338-.Lfunc_begin6         #     jumps to .Ltmp338
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp339-.Lfunc_begin6         # >> Call Site 44 <<
	.uleb128 .Ltmp340-.Ltmp339              #   Call between .Ltmp339 and .Ltmp340
	.uleb128 .Ltmp341-.Lfunc_begin6         #     jumps to .Ltmp341
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp340-.Lfunc_begin6         # >> Call Site 45 <<
	.uleb128 .Ltmp342-.Ltmp340              #   Call between .Ltmp340 and .Ltmp342
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp342-.Lfunc_begin6         # >> Call Site 46 <<
	.uleb128 .Ltmp343-.Ltmp342              #   Call between .Ltmp342 and .Ltmp343
	.uleb128 .Ltmp537-.Lfunc_begin6         #     jumps to .Ltmp537
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp343-.Lfunc_begin6         # >> Call Site 47 <<
	.uleb128 .Ltmp344-.Ltmp343              #   Call between .Ltmp343 and .Ltmp344
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp344-.Lfunc_begin6         # >> Call Site 48 <<
	.uleb128 .Ltmp345-.Ltmp344              #   Call between .Ltmp344 and .Ltmp345
	.uleb128 .Ltmp534-.Lfunc_begin6         #     jumps to .Ltmp534
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp345-.Lfunc_begin6         # >> Call Site 49 <<
	.uleb128 .Ltmp346-.Ltmp345              #   Call between .Ltmp345 and .Ltmp346
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp346-.Lfunc_begin6         # >> Call Site 50 <<
	.uleb128 .Ltmp347-.Ltmp346              #   Call between .Ltmp346 and .Ltmp347
	.uleb128 .Ltmp531-.Lfunc_begin6         #     jumps to .Ltmp531
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp347-.Lfunc_begin6         # >> Call Site 51 <<
	.uleb128 .Ltmp348-.Ltmp347              #   Call between .Ltmp347 and .Ltmp348
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp348-.Lfunc_begin6         # >> Call Site 52 <<
	.uleb128 .Ltmp349-.Ltmp348              #   Call between .Ltmp348 and .Ltmp349
	.uleb128 .Ltmp350-.Lfunc_begin6         #     jumps to .Ltmp350
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp349-.Lfunc_begin6         # >> Call Site 53 <<
	.uleb128 .Ltmp351-.Ltmp349              #   Call between .Ltmp349 and .Ltmp351
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp351-.Lfunc_begin6         # >> Call Site 54 <<
	.uleb128 .Ltmp352-.Ltmp351              #   Call between .Ltmp351 and .Ltmp352
	.uleb128 .Ltmp528-.Lfunc_begin6         #     jumps to .Ltmp528
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp352-.Lfunc_begin6         # >> Call Site 55 <<
	.uleb128 .Ltmp353-.Ltmp352              #   Call between .Ltmp352 and .Ltmp353
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp353-.Lfunc_begin6         # >> Call Site 56 <<
	.uleb128 .Ltmp354-.Ltmp353              #   Call between .Ltmp353 and .Ltmp354
	.uleb128 .Ltmp525-.Lfunc_begin6         #     jumps to .Ltmp525
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp354-.Lfunc_begin6         # >> Call Site 57 <<
	.uleb128 .Ltmp355-.Ltmp354              #   Call between .Ltmp354 and .Ltmp355
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp355-.Lfunc_begin6         # >> Call Site 58 <<
	.uleb128 .Ltmp356-.Ltmp355              #   Call between .Ltmp355 and .Ltmp356
	.uleb128 .Ltmp522-.Lfunc_begin6         #     jumps to .Ltmp522
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp356-.Lfunc_begin6         # >> Call Site 59 <<
	.uleb128 .Ltmp357-.Ltmp356              #   Call between .Ltmp356 and .Ltmp357
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp357-.Lfunc_begin6         # >> Call Site 60 <<
	.uleb128 .Ltmp358-.Ltmp357              #   Call between .Ltmp357 and .Ltmp358
	.uleb128 .Ltmp359-.Lfunc_begin6         #     jumps to .Ltmp359
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp358-.Lfunc_begin6         # >> Call Site 61 <<
	.uleb128 .Ltmp360-.Ltmp358              #   Call between .Ltmp358 and .Ltmp360
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp360-.Lfunc_begin6         # >> Call Site 62 <<
	.uleb128 .Ltmp361-.Ltmp360              #   Call between .Ltmp360 and .Ltmp361
	.uleb128 .Ltmp519-.Lfunc_begin6         #     jumps to .Ltmp519
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp361-.Lfunc_begin6         # >> Call Site 63 <<
	.uleb128 .Ltmp362-.Ltmp361              #   Call between .Ltmp361 and .Ltmp362
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp362-.Lfunc_begin6         # >> Call Site 64 <<
	.uleb128 .Ltmp363-.Ltmp362              #   Call between .Ltmp362 and .Ltmp363
	.uleb128 .Ltmp516-.Lfunc_begin6         #     jumps to .Ltmp516
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp363-.Lfunc_begin6         # >> Call Site 65 <<
	.uleb128 .Ltmp364-.Ltmp363              #   Call between .Ltmp363 and .Ltmp364
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp364-.Lfunc_begin6         # >> Call Site 66 <<
	.uleb128 .Ltmp365-.Ltmp364              #   Call between .Ltmp364 and .Ltmp365
	.uleb128 .Ltmp513-.Lfunc_begin6         #     jumps to .Ltmp513
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp365-.Lfunc_begin6         # >> Call Site 67 <<
	.uleb128 .Ltmp366-.Ltmp365              #   Call between .Ltmp365 and .Ltmp366
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp366-.Lfunc_begin6         # >> Call Site 68 <<
	.uleb128 .Ltmp367-.Ltmp366              #   Call between .Ltmp366 and .Ltmp367
	.uleb128 .Ltmp368-.Lfunc_begin6         #     jumps to .Ltmp368
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp367-.Lfunc_begin6         # >> Call Site 69 <<
	.uleb128 .Ltmp369-.Ltmp367              #   Call between .Ltmp367 and .Ltmp369
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp369-.Lfunc_begin6         # >> Call Site 70 <<
	.uleb128 .Ltmp370-.Ltmp369              #   Call between .Ltmp369 and .Ltmp370
	.uleb128 .Ltmp371-.Lfunc_begin6         #     jumps to .Ltmp371
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp372-.Lfunc_begin6         # >> Call Site 71 <<
	.uleb128 .Ltmp383-.Ltmp372              #   Call between .Ltmp372 and .Ltmp383
	.uleb128 .Ltmp384-.Lfunc_begin6         #     jumps to .Ltmp384
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp383-.Lfunc_begin6         # >> Call Site 72 <<
	.uleb128 .Ltmp385-.Ltmp383              #   Call between .Ltmp383 and .Ltmp385
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp385-.Lfunc_begin6         # >> Call Site 73 <<
	.uleb128 .Ltmp386-.Ltmp385              #   Call between .Ltmp385 and .Ltmp386
	.uleb128 .Ltmp387-.Lfunc_begin6         #     jumps to .Ltmp387
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp388-.Lfunc_begin6         # >> Call Site 74 <<
	.uleb128 .Ltmp399-.Ltmp388              #   Call between .Ltmp388 and .Ltmp399
	.uleb128 .Ltmp400-.Lfunc_begin6         #     jumps to .Ltmp400
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp399-.Lfunc_begin6         # >> Call Site 75 <<
	.uleb128 .Ltmp401-.Ltmp399              #   Call between .Ltmp399 and .Ltmp401
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp401-.Lfunc_begin6         # >> Call Site 76 <<
	.uleb128 .Ltmp402-.Ltmp401              #   Call between .Ltmp401 and .Ltmp402
	.uleb128 .Ltmp403-.Lfunc_begin6         #     jumps to .Ltmp403
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp404-.Lfunc_begin6         # >> Call Site 77 <<
	.uleb128 .Ltmp413-.Ltmp404              #   Call between .Ltmp404 and .Ltmp413
	.uleb128 .Ltmp414-.Lfunc_begin6         #     jumps to .Ltmp414
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp415-.Lfunc_begin6         # >> Call Site 78 <<
	.uleb128 .Ltmp416-.Ltmp415              #   Call between .Ltmp415 and .Ltmp416
	.uleb128 .Ltmp417-.Lfunc_begin6         #     jumps to .Ltmp417
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp416-.Lfunc_begin6         # >> Call Site 79 <<
	.uleb128 .Ltmp418-.Ltmp416              #   Call between .Ltmp416 and .Ltmp418
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp418-.Lfunc_begin6         # >> Call Site 80 <<
	.uleb128 .Ltmp419-.Ltmp418              #   Call between .Ltmp418 and .Ltmp419
	.uleb128 .Ltmp510-.Lfunc_begin6         #     jumps to .Ltmp510
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp419-.Lfunc_begin6         # >> Call Site 81 <<
	.uleb128 .Ltmp420-.Ltmp419              #   Call between .Ltmp419 and .Ltmp420
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp420-.Lfunc_begin6         # >> Call Site 82 <<
	.uleb128 .Ltmp421-.Ltmp420              #   Call between .Ltmp420 and .Ltmp421
	.uleb128 .Ltmp507-.Lfunc_begin6         #     jumps to .Ltmp507
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp421-.Lfunc_begin6         # >> Call Site 83 <<
	.uleb128 .Ltmp422-.Ltmp421              #   Call between .Ltmp421 and .Ltmp422
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp422-.Lfunc_begin6         # >> Call Site 84 <<
	.uleb128 .Ltmp423-.Ltmp422              #   Call between .Ltmp422 and .Ltmp423
	.uleb128 .Ltmp504-.Lfunc_begin6         #     jumps to .Ltmp504
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp423-.Lfunc_begin6         # >> Call Site 85 <<
	.uleb128 .Ltmp424-.Ltmp423              #   Call between .Ltmp423 and .Ltmp424
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp424-.Lfunc_begin6         # >> Call Site 86 <<
	.uleb128 .Ltmp425-.Ltmp424              #   Call between .Ltmp424 and .Ltmp425
	.uleb128 .Ltmp426-.Lfunc_begin6         #     jumps to .Ltmp426
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp425-.Lfunc_begin6         # >> Call Site 87 <<
	.uleb128 .Ltmp427-.Ltmp425              #   Call between .Ltmp425 and .Ltmp427
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp427-.Lfunc_begin6         # >> Call Site 88 <<
	.uleb128 .Ltmp428-.Ltmp427              #   Call between .Ltmp427 and .Ltmp428
	.uleb128 .Ltmp501-.Lfunc_begin6         #     jumps to .Ltmp501
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp428-.Lfunc_begin6         # >> Call Site 89 <<
	.uleb128 .Ltmp429-.Ltmp428              #   Call between .Ltmp428 and .Ltmp429
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp429-.Lfunc_begin6         # >> Call Site 90 <<
	.uleb128 .Ltmp430-.Ltmp429              #   Call between .Ltmp429 and .Ltmp430
	.uleb128 .Ltmp498-.Lfunc_begin6         #     jumps to .Ltmp498
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp430-.Lfunc_begin6         # >> Call Site 91 <<
	.uleb128 .Ltmp431-.Ltmp430              #   Call between .Ltmp430 and .Ltmp431
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp431-.Lfunc_begin6         # >> Call Site 92 <<
	.uleb128 .Ltmp432-.Ltmp431              #   Call between .Ltmp431 and .Ltmp432
	.uleb128 .Ltmp495-.Lfunc_begin6         #     jumps to .Ltmp495
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp432-.Lfunc_begin6         # >> Call Site 93 <<
	.uleb128 .Ltmp433-.Ltmp432              #   Call between .Ltmp432 and .Ltmp433
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp433-.Lfunc_begin6         # >> Call Site 94 <<
	.uleb128 .Ltmp434-.Ltmp433              #   Call between .Ltmp433 and .Ltmp434
	.uleb128 .Ltmp435-.Lfunc_begin6         #     jumps to .Ltmp435
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp434-.Lfunc_begin6         # >> Call Site 95 <<
	.uleb128 .Ltmp436-.Ltmp434              #   Call between .Ltmp434 and .Ltmp436
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp436-.Lfunc_begin6         # >> Call Site 96 <<
	.uleb128 .Ltmp437-.Ltmp436              #   Call between .Ltmp436 and .Ltmp437
	.uleb128 .Ltmp492-.Lfunc_begin6         #     jumps to .Ltmp492
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp437-.Lfunc_begin6         # >> Call Site 97 <<
	.uleb128 .Ltmp438-.Ltmp437              #   Call between .Ltmp437 and .Ltmp438
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp438-.Lfunc_begin6         # >> Call Site 98 <<
	.uleb128 .Ltmp439-.Ltmp438              #   Call between .Ltmp438 and .Ltmp439
	.uleb128 .Ltmp489-.Lfunc_begin6         #     jumps to .Ltmp489
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp439-.Lfunc_begin6         # >> Call Site 99 <<
	.uleb128 .Ltmp440-.Ltmp439              #   Call between .Ltmp439 and .Ltmp440
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp440-.Lfunc_begin6         # >> Call Site 100 <<
	.uleb128 .Ltmp441-.Ltmp440              #   Call between .Ltmp440 and .Ltmp441
	.uleb128 .Ltmp486-.Lfunc_begin6         #     jumps to .Ltmp486
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp441-.Lfunc_begin6         # >> Call Site 101 <<
	.uleb128 .Ltmp442-.Ltmp441              #   Call between .Ltmp441 and .Ltmp442
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp442-.Lfunc_begin6         # >> Call Site 102 <<
	.uleb128 .Ltmp443-.Ltmp442              #   Call between .Ltmp442 and .Ltmp443
	.uleb128 .Ltmp444-.Lfunc_begin6         #     jumps to .Ltmp444
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp443-.Lfunc_begin6         # >> Call Site 103 <<
	.uleb128 .Ltmp445-.Ltmp443              #   Call between .Ltmp443 and .Ltmp445
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp445-.Lfunc_begin6         # >> Call Site 104 <<
	.uleb128 .Ltmp446-.Ltmp445              #   Call between .Ltmp445 and .Ltmp446
	.uleb128 .Ltmp447-.Lfunc_begin6         #     jumps to .Ltmp447
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp448-.Lfunc_begin6         # >> Call Site 105 <<
	.uleb128 .Ltmp455-.Ltmp448              #   Call between .Ltmp448 and .Ltmp455
	.uleb128 .Ltmp456-.Lfunc_begin6         #     jumps to .Ltmp456
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp457-.Lfunc_begin6         # >> Call Site 106 <<
	.uleb128 .Ltmp458-.Ltmp457              #   Call between .Ltmp457 and .Ltmp458
	.uleb128 .Ltmp459-.Lfunc_begin6         #     jumps to .Ltmp459
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp460-.Lfunc_begin6         # >> Call Site 107 <<
	.uleb128 .Ltmp461-.Ltmp460              #   Call between .Ltmp460 and .Ltmp461
	.uleb128 .Ltmp462-.Lfunc_begin6         #     jumps to .Ltmp462
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp461-.Lfunc_begin6         # >> Call Site 108 <<
	.uleb128 .Ltmp463-.Ltmp461              #   Call between .Ltmp461 and .Ltmp463
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp463-.Lfunc_begin6         # >> Call Site 109 <<
	.uleb128 .Ltmp468-.Ltmp463              #   Call between .Ltmp463 and .Ltmp468
	.uleb128 .Ltmp483-.Lfunc_begin6         #     jumps to .Ltmp483
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp469-.Lfunc_begin6         # >> Call Site 110 <<
	.uleb128 .Ltmp474-.Ltmp469              #   Call between .Ltmp469 and .Ltmp474
	.uleb128 .Ltmp480-.Lfunc_begin6         #     jumps to .Ltmp480
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp475-.Lfunc_begin6         # >> Call Site 111 <<
	.uleb128 .Ltmp476-.Ltmp475              #   Call between .Ltmp475 and .Ltmp476
	.uleb128 .Ltmp477-.Lfunc_begin6         #     jumps to .Ltmp477
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp476-.Lfunc_begin6         # >> Call Site 112 <<
	.uleb128 .Ltmp481-.Ltmp476              #   Call between .Ltmp476 and .Ltmp481
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp481-.Lfunc_begin6         # >> Call Site 113 <<
	.uleb128 .Ltmp482-.Ltmp481              #   Call between .Ltmp481 and .Ltmp482
	.uleb128 .Ltmp483-.Lfunc_begin6         #     jumps to .Ltmp483
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp478-.Lfunc_begin6         # >> Call Site 114 <<
	.uleb128 .Ltmp479-.Ltmp478              #   Call between .Ltmp478 and .Ltmp479
	.uleb128 .Ltmp480-.Lfunc_begin6         #     jumps to .Ltmp480
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp562-.Lfunc_begin6         # >> Call Site 115 <<
	.uleb128 .Ltmp563-.Ltmp562              #   Call between .Ltmp562 and .Ltmp563
	.uleb128 .Ltmp564-.Lfunc_begin6         #     jumps to .Ltmp564
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp559-.Lfunc_begin6         # >> Call Site 116 <<
	.uleb128 .Ltmp560-.Ltmp559              #   Call between .Ltmp559 and .Ltmp560
	.uleb128 .Ltmp561-.Lfunc_begin6         #     jumps to .Ltmp561
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp556-.Lfunc_begin6         # >> Call Site 117 <<
	.uleb128 .Ltmp557-.Ltmp556              #   Call between .Ltmp556 and .Ltmp557
	.uleb128 .Ltmp558-.Lfunc_begin6         #     jumps to .Ltmp558
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp553-.Lfunc_begin6         # >> Call Site 118 <<
	.uleb128 .Ltmp554-.Ltmp553              #   Call between .Ltmp553 and .Ltmp554
	.uleb128 .Ltmp555-.Lfunc_begin6         #     jumps to .Ltmp555
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp550-.Lfunc_begin6         # >> Call Site 119 <<
	.uleb128 .Ltmp551-.Ltmp550              #   Call between .Ltmp550 and .Ltmp551
	.uleb128 .Ltmp552-.Lfunc_begin6         #     jumps to .Ltmp552
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp547-.Lfunc_begin6         # >> Call Site 120 <<
	.uleb128 .Ltmp548-.Ltmp547              #   Call between .Ltmp547 and .Ltmp548
	.uleb128 .Ltmp549-.Lfunc_begin6         #     jumps to .Ltmp549
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp544-.Lfunc_begin6         # >> Call Site 121 <<
	.uleb128 .Ltmp545-.Ltmp544              #   Call between .Ltmp544 and .Ltmp545
	.uleb128 .Ltmp546-.Lfunc_begin6         #     jumps to .Ltmp546
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp541-.Lfunc_begin6         # >> Call Site 122 <<
	.uleb128 .Ltmp542-.Ltmp541              #   Call between .Ltmp541 and .Ltmp542
	.uleb128 .Ltmp543-.Lfunc_begin6         #     jumps to .Ltmp543
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp538-.Lfunc_begin6         # >> Call Site 123 <<
	.uleb128 .Ltmp539-.Ltmp538              #   Call between .Ltmp538 and .Ltmp539
	.uleb128 .Ltmp540-.Lfunc_begin6         #     jumps to .Ltmp540
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp535-.Lfunc_begin6         # >> Call Site 124 <<
	.uleb128 .Ltmp536-.Ltmp535              #   Call between .Ltmp535 and .Ltmp536
	.uleb128 .Ltmp537-.Lfunc_begin6         #     jumps to .Ltmp537
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp532-.Lfunc_begin6         # >> Call Site 125 <<
	.uleb128 .Ltmp533-.Ltmp532              #   Call between .Ltmp532 and .Ltmp533
	.uleb128 .Ltmp534-.Lfunc_begin6         #     jumps to .Ltmp534
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp529-.Lfunc_begin6         # >> Call Site 126 <<
	.uleb128 .Ltmp530-.Ltmp529              #   Call between .Ltmp529 and .Ltmp530
	.uleb128 .Ltmp531-.Lfunc_begin6         #     jumps to .Ltmp531
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp526-.Lfunc_begin6         # >> Call Site 127 <<
	.uleb128 .Ltmp527-.Ltmp526              #   Call between .Ltmp526 and .Ltmp527
	.uleb128 .Ltmp528-.Lfunc_begin6         #     jumps to .Ltmp528
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp523-.Lfunc_begin6         # >> Call Site 128 <<
	.uleb128 .Ltmp524-.Ltmp523              #   Call between .Ltmp523 and .Ltmp524
	.uleb128 .Ltmp525-.Lfunc_begin6         #     jumps to .Ltmp525
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp520-.Lfunc_begin6         # >> Call Site 129 <<
	.uleb128 .Ltmp521-.Ltmp520              #   Call between .Ltmp520 and .Ltmp521
	.uleb128 .Ltmp522-.Lfunc_begin6         #     jumps to .Ltmp522
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp517-.Lfunc_begin6         # >> Call Site 130 <<
	.uleb128 .Ltmp518-.Ltmp517              #   Call between .Ltmp517 and .Ltmp518
	.uleb128 .Ltmp519-.Lfunc_begin6         #     jumps to .Ltmp519
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp514-.Lfunc_begin6         # >> Call Site 131 <<
	.uleb128 .Ltmp515-.Ltmp514              #   Call between .Ltmp514 and .Ltmp515
	.uleb128 .Ltmp516-.Lfunc_begin6         #     jumps to .Ltmp516
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp511-.Lfunc_begin6         # >> Call Site 132 <<
	.uleb128 .Ltmp512-.Ltmp511              #   Call between .Ltmp511 and .Ltmp512
	.uleb128 .Ltmp513-.Lfunc_begin6         #     jumps to .Ltmp513
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp508-.Lfunc_begin6         # >> Call Site 133 <<
	.uleb128 .Ltmp509-.Ltmp508              #   Call between .Ltmp508 and .Ltmp509
	.uleb128 .Ltmp510-.Lfunc_begin6         #     jumps to .Ltmp510
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp505-.Lfunc_begin6         # >> Call Site 134 <<
	.uleb128 .Ltmp506-.Ltmp505              #   Call between .Ltmp505 and .Ltmp506
	.uleb128 .Ltmp507-.Lfunc_begin6         #     jumps to .Ltmp507
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp502-.Lfunc_begin6         # >> Call Site 135 <<
	.uleb128 .Ltmp503-.Ltmp502              #   Call between .Ltmp502 and .Ltmp503
	.uleb128 .Ltmp504-.Lfunc_begin6         #     jumps to .Ltmp504
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp499-.Lfunc_begin6         # >> Call Site 136 <<
	.uleb128 .Ltmp500-.Ltmp499              #   Call between .Ltmp499 and .Ltmp500
	.uleb128 .Ltmp501-.Lfunc_begin6         #     jumps to .Ltmp501
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp496-.Lfunc_begin6         # >> Call Site 137 <<
	.uleb128 .Ltmp497-.Ltmp496              #   Call between .Ltmp496 and .Ltmp497
	.uleb128 .Ltmp498-.Lfunc_begin6         #     jumps to .Ltmp498
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp493-.Lfunc_begin6         # >> Call Site 138 <<
	.uleb128 .Ltmp494-.Ltmp493              #   Call between .Ltmp493 and .Ltmp494
	.uleb128 .Ltmp495-.Lfunc_begin6         #     jumps to .Ltmp495
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp490-.Lfunc_begin6         # >> Call Site 139 <<
	.uleb128 .Ltmp491-.Ltmp490              #   Call between .Ltmp490 and .Ltmp491
	.uleb128 .Ltmp492-.Lfunc_begin6         #     jumps to .Ltmp492
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp487-.Lfunc_begin6         # >> Call Site 140 <<
	.uleb128 .Ltmp488-.Ltmp487              #   Call between .Ltmp487 and .Ltmp488
	.uleb128 .Ltmp489-.Lfunc_begin6         #     jumps to .Ltmp489
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp484-.Lfunc_begin6         # >> Call Site 141 <<
	.uleb128 .Ltmp485-.Ltmp484              #   Call between .Ltmp484 and .Ltmp485
	.uleb128 .Ltmp486-.Lfunc_begin6         #     jumps to .Ltmp486
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp485-.Lfunc_begin6         # >> Call Site 142 <<
	.uleb128 .Lfunc_end19-.Ltmp485          #   Call between .Ltmp485 and .Lfunc_end19
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end6:
	.p2align	2, 0x0
                                        # -- End function
	.type	_ZL27benchmark_uniq_2_benchmark_,@object # @_ZL27benchmark_uniq_2_benchmark_
	.local	_ZL27benchmark_uniq_2_benchmark_
	.comm	_ZL27benchmark_uniq_2_benchmark_,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str:
	.asciz	"BM_Complexity_O1"
	.size	.L.str, 17

	.type	_ZL27benchmark_uniq_3_benchmark_,@object # @_ZL27benchmark_uniq_3_benchmark_
	.local	_ZL27benchmark_uniq_3_benchmark_
	.comm	_ZL27benchmark_uniq_3_benchmark_,8,8
	.type	_ZL27benchmark_uniq_4_benchmark_,@object # @_ZL27benchmark_uniq_4_benchmark_
	.local	_ZL27benchmark_uniq_4_benchmark_
	.comm	_ZL27benchmark_uniq_4_benchmark_,8,8
	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"BM_Complexity_O1/manual_time"
	.size	.L.str.4, 29

	.hidden	one_test_name                   # @one_test_name
	.type	one_test_name,@object
	.data
	.globl	one_test_name
	.p2align	3, 0x0
one_test_name:
	.dword	.L.str.4
	.size	one_test_name, 8

	.type	.L.str.5,@object                # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"BM_Complexity_O1/manual_time_BigO"
	.size	.L.str.5, 34

	.hidden	big_o_1_test_name               # @big_o_1_test_name
	.type	big_o_1_test_name,@object
	.data
	.globl	big_o_1_test_name
	.p2align	3, 0x0
big_o_1_test_name:
	.dword	.L.str.5
	.size	big_o_1_test_name, 8

	.type	.L.str.6,@object                # @.str.6
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.6:
	.asciz	"BM_Complexity_O1/manual_time_RMS"
	.size	.L.str.6, 33

	.hidden	rms_o_1_test_name               # @rms_o_1_test_name
	.type	rms_o_1_test_name,@object
	.data
	.globl	rms_o_1_test_name
	.p2align	3, 0x0
rms_o_1_test_name:
	.dword	.L.str.6
	.size	rms_o_1_test_name, 8

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"\\([0-9]+\\)"
	.size	.L.str.7, 11

	.hidden	enum_auto_big_o_1               # @enum_auto_big_o_1
	.type	enum_auto_big_o_1,@object
	.data
	.globl	enum_auto_big_o_1
	.p2align	3, 0x0
enum_auto_big_o_1:
	.dword	.L.str.7
	.size	enum_auto_big_o_1, 8

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"f\\(N\\)"
	.size	.L.str.8, 7

	.hidden	lambda_big_o_1                  # @lambda_big_o_1
	.type	lambda_big_o_1,@object
	.data
	.globl	lambda_big_o_1
	.p2align	3, 0x0
lambda_big_o_1:
	.dword	.L.str.8
	.size	lambda_big_o_1, 8

	.hidden	dummy105                        # @dummy105
	.type	dummy105,@object
	.bss
	.globl	dummy105
	.p2align	2, 0x0
dummy105:
	.word	0                               # 0x0
	.size	dummy105, 4

	.hidden	dummy109                        # @dummy109
	.type	dummy109,@object
	.globl	dummy109
	.p2align	2, 0x0
dummy109:
	.word	0                               # 0x0
	.size	dummy109, 4

	.hidden	dummy113                        # @dummy113
	.type	dummy113,@object
	.globl	dummy113
	.p2align	2, 0x0
dummy113:
	.word	0                               # 0x0
	.size	dummy113, 4

	.type	_ZL27benchmark_uniq_5_benchmark_,@object # @_ZL27benchmark_uniq_5_benchmark_
	.local	_ZL27benchmark_uniq_5_benchmark_
	.comm	_ZL27benchmark_uniq_5_benchmark_,8,8
	.type	.L.str.13,@object               # @.str.13
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.13:
	.asciz	"BM_Complexity_O_N"
	.size	.L.str.13, 18

	.type	_ZL27benchmark_uniq_6_benchmark_,@object # @_ZL27benchmark_uniq_6_benchmark_
	.local	_ZL27benchmark_uniq_6_benchmark_
	.comm	_ZL27benchmark_uniq_6_benchmark_,8,8
	.type	_ZL27benchmark_uniq_7_benchmark_,@object # @_ZL27benchmark_uniq_7_benchmark_
	.local	_ZL27benchmark_uniq_7_benchmark_
	.comm	_ZL27benchmark_uniq_7_benchmark_,8,8
	.type	.L.str.16,@object               # @.str.16
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.16:
	.asciz	"BM_Complexity_O_N/manual_time"
	.size	.L.str.16, 30

	.hidden	n_test_name                     # @n_test_name
	.type	n_test_name,@object
	.data
	.globl	n_test_name
	.p2align	3, 0x0
n_test_name:
	.dword	.L.str.16
	.size	n_test_name, 8

	.type	.L.str.17,@object               # @.str.17
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.17:
	.asciz	"BM_Complexity_O_N/manual_time_BigO"
	.size	.L.str.17, 35

	.hidden	big_o_n_test_name               # @big_o_n_test_name
	.type	big_o_n_test_name,@object
	.data
	.globl	big_o_n_test_name
	.p2align	3, 0x0
big_o_n_test_name:
	.dword	.L.str.17
	.size	big_o_n_test_name, 8

	.type	.L.str.18,@object               # @.str.18
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.18:
	.asciz	"BM_Complexity_O_N/manual_time_RMS"
	.size	.L.str.18, 34

	.hidden	rms_o_n_test_name               # @rms_o_n_test_name
	.type	rms_o_n_test_name,@object
	.data
	.globl	rms_o_n_test_name
	.p2align	3, 0x0
rms_o_n_test_name:
	.dword	.L.str.18
	.size	rms_o_n_test_name, 8

	.type	.L.str.19,@object               # @.str.19
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.19:
	.asciz	"N"
	.size	.L.str.19, 2

	.hidden	enum_auto_big_o_n               # @enum_auto_big_o_n
	.type	enum_auto_big_o_n,@object
	.data
	.globl	enum_auto_big_o_n
	.p2align	3, 0x0
enum_auto_big_o_n:
	.dword	.L.str.19
	.size	enum_auto_big_o_n, 8

	.hidden	lambda_big_o_n                  # @lambda_big_o_n
	.type	lambda_big_o_n,@object
	.globl	lambda_big_o_n
	.p2align	3, 0x0
lambda_big_o_n:
	.dword	.L.str.8
	.size	lambda_big_o_n, 8

	.hidden	dummy162                        # @dummy162
	.type	dummy162,@object
	.bss
	.globl	dummy162
	.p2align	2, 0x0
dummy162:
	.word	0                               # 0x0
	.size	dummy162, 4

	.hidden	dummy166                        # @dummy166
	.type	dummy166,@object
	.globl	dummy166
	.p2align	2, 0x0
dummy166:
	.word	0                               # 0x0
	.size	dummy166, 4

	.hidden	dummy170                        # @dummy170
	.type	dummy170,@object
	.globl	dummy170
	.p2align	2, 0x0
dummy170:
	.word	0                               # 0x0
	.size	dummy170, 4

	.type	_ZL27benchmark_uniq_8_benchmark_,@object # @_ZL27benchmark_uniq_8_benchmark_
	.local	_ZL27benchmark_uniq_8_benchmark_
	.comm	_ZL27benchmark_uniq_8_benchmark_,8,8
	.type	.L.str.24,@object               # @.str.24
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.24:
	.asciz	"BM_Complexity_O_N_log_N"
	.size	.L.str.24, 24

	.type	_ZL27benchmark_uniq_9_benchmark_,@object # @_ZL27benchmark_uniq_9_benchmark_
	.local	_ZL27benchmark_uniq_9_benchmark_
	.comm	_ZL27benchmark_uniq_9_benchmark_,8,8
	.type	_ZL28benchmark_uniq_10_benchmark_,@object # @_ZL28benchmark_uniq_10_benchmark_
	.local	_ZL28benchmark_uniq_10_benchmark_
	.comm	_ZL28benchmark_uniq_10_benchmark_,8,8
	.type	.L.str.27,@object               # @.str.27
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.27:
	.asciz	"BM_Complexity_O_N_log_N/manual_time"
	.size	.L.str.27, 36

	.hidden	n_lg_n_test_name                # @n_lg_n_test_name
	.type	n_lg_n_test_name,@object
	.data
	.globl	n_lg_n_test_name
	.p2align	3, 0x0
n_lg_n_test_name:
	.dword	.L.str.27
	.size	n_lg_n_test_name, 8

	.type	.L.str.28,@object               # @.str.28
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.28:
	.asciz	"BM_Complexity_O_N_log_N/manual_time_BigO"
	.size	.L.str.28, 41

	.hidden	big_o_n_lg_n_test_name          # @big_o_n_lg_n_test_name
	.type	big_o_n_lg_n_test_name,@object
	.data
	.globl	big_o_n_lg_n_test_name
	.p2align	3, 0x0
big_o_n_lg_n_test_name:
	.dword	.L.str.28
	.size	big_o_n_lg_n_test_name, 8

	.type	.L.str.29,@object               # @.str.29
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.29:
	.asciz	"BM_Complexity_O_N_log_N/manual_time_RMS"
	.size	.L.str.29, 40

	.hidden	rms_o_n_lg_n_test_name          # @rms_o_n_lg_n_test_name
	.type	rms_o_n_lg_n_test_name,@object
	.data
	.globl	rms_o_n_lg_n_test_name
	.p2align	3, 0x0
rms_o_n_lg_n_test_name:
	.dword	.L.str.29
	.size	rms_o_n_lg_n_test_name, 8

	.type	.L.str.30,@object               # @.str.30
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.30:
	.asciz	"NlgN"
	.size	.L.str.30, 5

	.hidden	enum_auto_big_o_n_lg_n          # @enum_auto_big_o_n_lg_n
	.type	enum_auto_big_o_n_lg_n,@object
	.data
	.globl	enum_auto_big_o_n_lg_n
	.p2align	3, 0x0
enum_auto_big_o_n_lg_n:
	.dword	.L.str.30
	.size	enum_auto_big_o_n_lg_n, 8

	.hidden	lambda_big_o_n_lg_n             # @lambda_big_o_n_lg_n
	.type	lambda_big_o_n_lg_n,@object
	.globl	lambda_big_o_n_lg_n
	.p2align	3, 0x0
lambda_big_o_n_lg_n:
	.dword	.L.str.8
	.size	lambda_big_o_n_lg_n, 8

	.hidden	dummy221                        # @dummy221
	.type	dummy221,@object
	.bss
	.globl	dummy221
	.p2align	2, 0x0
dummy221:
	.word	0                               # 0x0
	.size	dummy221, 4

	.hidden	dummy226                        # @dummy226
	.type	dummy226,@object
	.globl	dummy226
	.p2align	2, 0x0
dummy226:
	.word	0                               # 0x0
	.size	dummy226, 4

	.hidden	dummy231                        # @dummy231
	.type	dummy231,@object
	.globl	dummy231
	.p2align	2, 0x0
dummy231:
	.word	0                               # 0x0
	.size	dummy231, 4

	.type	_ZL28benchmark_uniq_11_benchmark_,@object # @_ZL28benchmark_uniq_11_benchmark_
	.local	_ZL28benchmark_uniq_11_benchmark_
	.comm	_ZL28benchmark_uniq_11_benchmark_,8,8
	.type	.L.str.35,@object               # @.str.35
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.35:
	.asciz	"BM_ComplexityCaptureArgs/capture_test"
	.size	.L.str.35, 38

	.type	_ZL23complexity_capture_nameB5cxx11,@object # @_ZL23complexity_capture_nameB5cxx11
	.local	_ZL23complexity_capture_nameB5cxx11
	.comm	_ZL23complexity_capture_nameB5cxx11,32,8
	.type	.L.str.37,@object               # @.str.37
	.p2align	3, 0x0
.L.str.37:
	.asciz	"BM_ComplexityCaptureArgs/capture_test/manual_time"
	.size	.L.str.37, 50

	.hidden	__dso_handle
	.hidden	dummy264                        # @dummy264
	.type	dummy264,@object
	.bss
	.globl	dummy264
	.p2align	2, 0x0
dummy264:
	.word	0                               # 0x0
	.size	dummy264, 4

	.type	.L.str.39,@object               # @.str.39
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.39:
	.asciz	"_BigO"
	.size	.L.str.39, 6

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"_RMS"
	.size	.L.str.40, 5

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"cached_ > 0"
	.size	.L.str.41, 12

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MicroBenchmarks/libs/benchmark/include/benchmark/benchmark.h"
	.size	.L.str.42, 135

	.type	.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv,@object # @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv
.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv:
	.asciz	"StateIterator &benchmark::State::StateIterator::operator++()"
	.size	.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv, 61

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"range_.size() > pos"
	.size	.L.str.43, 20

	.type	.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm,@object # @__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm
.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm:
	.asciz	"int64_t benchmark::State::range(std::size_t) const"
	.size	.L__PRETTY_FUNCTION__._ZNK9benchmark5State5rangeEm, 51

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"%name"
	.size	.L.str.44, 6

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"%bigo_name"
	.size	.L.str.45, 11

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"%rms_name"
	.size	.L.str.46, 10

	.type	.L.str.47,@object               # @.str.47
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.47:
	.asciz	"%bigo_str"
	.size	.L.str.47, 10

	.type	.L.str.48,@object               # @.str.48
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.48:
	.asciz	"[ ]* %float "
	.size	.L.str.48, 13

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"%bigo"
	.size	.L.str.49, 6

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"%rms"
	.size	.L.str.50, 5

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"[ ]*[0-9]+ %"
	.size	.L.str.51, 13

	.type	.L.str.52,@object               # @.str.52
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.52:
	.asciz	"^%bigo_name %bigo_str %bigo_str[ ]*$"
	.size	.L.str.52, 37

	.type	.L.str.53,@object               # @.str.53
	.p2align	3, 0x0
.L.str.53:
	.asciz	"^%bigo_name"
	.size	.L.str.53, 12

	.type	.L.str.54,@object               # @.str.54
	.p2align	3, 0x0
.L.str.54:
	.asciz	"^%rms_name %rms %rms[ ]*$"
	.size	.L.str.54, 26

	.type	.L.str.55,@object               # @.str.55
	.p2align	3, 0x0
.L.str.55:
	.asciz	"\"name\": \"%bigo_name\",$"
	.size	.L.str.55, 23

	.type	.L.str.56,@object               # @.str.56
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.56:
	.asciz	"\"family_index\": "
	.size	.L.str.56, 17

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	",$"
	.size	.L.str.57, 3

	.type	.L.str.58,@object               # @.str.58
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.58:
	.asciz	"\"per_family_instance_index\": 0,$"
	.size	.L.str.58, 33

	.type	.L.str.59,@object               # @.str.59
	.p2align	3, 0x0
.L.str.59:
	.asciz	"\"run_name\": \"%name\",$"
	.size	.L.str.59, 22

	.type	.L.str.60,@object               # @.str.60
	.p2align	3, 0x0
.L.str.60:
	.asciz	"\"run_type\": \"aggregate\",$"
	.size	.L.str.60, 26

	.type	.L.str.61,@object               # @.str.61
	.p2align	3, 0x0
.L.str.61:
	.asciz	"\"repetitions\": %int,$"
	.size	.L.str.61, 22

	.type	.L.str.62,@object               # @.str.62
	.p2align	3, 0x0
.L.str.62:
	.asciz	"\"threads\": 1,$"
	.size	.L.str.62, 15

	.type	.L.str.63,@object               # @.str.63
	.p2align	3, 0x0
.L.str.63:
	.asciz	"\"aggregate_name\": \"BigO\",$"
	.size	.L.str.63, 27

	.type	.L.str.64,@object               # @.str.64
	.p2align	3, 0x0
.L.str.64:
	.asciz	"\"aggregate_unit\": \"time\",$"
	.size	.L.str.64, 27

	.type	.L.str.65,@object               # @.str.65
	.p2align	3, 0x0
.L.str.65:
	.asciz	"\"cpu_coefficient\": %float,$"
	.size	.L.str.65, 28

	.type	.L.str.66,@object               # @.str.66
	.p2align	3, 0x0
.L.str.66:
	.asciz	"\"real_coefficient\": %float,$"
	.size	.L.str.66, 29

	.type	.L.str.67,@object               # @.str.67
	.p2align	3, 0x0
.L.str.67:
	.asciz	"\"big_o\": \"%bigo\",$"
	.size	.L.str.67, 19

	.type	.L.str.68,@object               # @.str.68
	.p2align	3, 0x0
.L.str.68:
	.asciz	"\"time_unit\": \"ns\"$"
	.size	.L.str.68, 19

	.type	.L.str.70,@object               # @.str.70
	.p2align	3, 0x0
.L.str.70:
	.asciz	"\"name\": \"%rms_name\",$"
	.size	.L.str.70, 22

	.type	.L.str.71,@object               # @.str.71
	.p2align	3, 0x0
.L.str.71:
	.asciz	"\"aggregate_name\": \"RMS\",$"
	.size	.L.str.71, 26

	.type	.L.str.72,@object               # @.str.72
	.p2align	3, 0x0
.L.str.72:
	.asciz	"\"aggregate_unit\": \"percentage\",$"
	.size	.L.str.72, 33

	.type	.L.str.73,@object               # @.str.73
	.p2align	3, 0x0
.L.str.73:
	.asciz	"\"rms\": %float$"
	.size	.L.str.73, 15

	.type	.L.str.74,@object               # @.str.74
	.p2align	3, 0x0
.L.str.74:
	.asciz	"^\"%bigo_name\",,%float,%float,%bigo,,,,,$"
	.size	.L.str.74, 41

	.type	.L.str.75,@object               # @.str.75
	.p2align	3, 0x0
.L.str.75:
	.asciz	"^\"%bigo_name\""
	.size	.L.str.75, 14

	.type	.L.str.76,@object               # @.str.76
	.p2align	3, 0x0
.L.str.76:
	.asciz	"^\"%rms_name\",,%float,%float,,,,,,$"
	.size	.L.str.76, 35

	.type	.L.str.77,@object               # @.str.77
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.77:
	.asciz	"basic_string::append"
	.size	.L.str.77, 21

	.type	.L__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits,@object # @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits
.L__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits:
	.asciz	"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899"
	.size	.L__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, 201

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"basic_string: construction from null is not valid"
	.size	.L.str.80, 50

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_complexity_test.cc
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
	.addrsig_sym _Z16BM_Complexity_O1RN9benchmark5StateE
	.addrsig_sym __gxx_personality_v0
	.addrsig_sym _Z17BM_Complexity_O_NRN9benchmark5StateE
	.addrsig_sym _ZL23BM_Complexity_O_N_log_NRN9benchmark5StateE
	.addrsig_sym _ZN3$_08__invokeEl
	.addrsig_sym _ZN3$_18__invokeEl
	.addrsig_sym _ZN3$_28__invokeEl
	.addrsig_sym _ZN3$_38__invokeERN9benchmark5StateE
	.addrsig_sym _GLOBAL__sub_I_complexity_test.cc
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZL23complexity_capture_nameB5cxx11
	.addrsig_sym __dso_handle
