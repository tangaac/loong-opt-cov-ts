	.file	"spec_arg_test.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.section	.text.unlikely.,"ax",@progbits
	.p2align	5                               # -- Begin function _ZL12BM_NotChosenRN9benchmark5StateE
	.type	_ZL12BM_NotChosenRN9benchmark5StateE,@function
_ZL12BM_NotChosenRN9benchmark5StateE:   # @_ZL12BM_NotChosenRN9benchmark5StateE
# %bb.0:
	pcalau12i	$a0, %pc_hi20(.L.str.17)
	addi.d	$a0, $a0, %pc_lo12(.L.str.17)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZL12BM_NotChosenRN9benchmark5StateE)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZL12BM_NotChosenRN9benchmark5StateE)
	ori	$a2, $zero, 45
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZL12BM_NotChosenRN9benchmark5StateE, .Lfunc_end0-_ZL12BM_NotChosenRN9benchmark5StateE
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZL9BM_ChosenRN9benchmark5StateE
	.type	_ZL9BM_ChosenRN9benchmark5StateE,@function
_ZL9BM_ChosenRN9benchmark5StateE:       # @_ZL9BM_ChosenRN9benchmark5StateE
	.cfi_startproc
# %bb.0:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
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
	ld.w	$s1, $a0, 28
	ld.d	$s0, $a0, 16
	pcaddu18i	$ra, %call36(_ZN9benchmark5State16StartKeepRunningEv)
	jirl	$ra, $ra, 0
	bnez	$s1, .LBB1_3
# %bb.1:                                # %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
	beqz	$s0, .LBB1_3
# %bb.2:                                # %_ZN9benchmark5State13StateIteratorppEv.exit.preheader
	srai.d	$a0, $s0, 63
	andn	$a0, $s0, $a0
	addi.d	$a1, $s0, -1
	bgeu	$a1, $a0, .LBB1_4
.LBB1_3:                                # %._crit_edge
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN9benchmark5State17FinishKeepRunningEv)
	jr	$t8
.LBB1_4:
	pcalau12i	$a0, %pc_hi20(.L.str.18)
	addi.d	$a0, $a0, %pc_lo12(.L.str.18)
	pcalau12i	$a1, %pc_hi20(.L.str.19)
	addi.d	$a1, $a1, %pc_lo12(.L.str.19)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv)
	ori	$a2, $zero, 1134
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.Lfunc_end1:
	.size	_ZL9BM_ChosenRN9benchmark5StateE, .Lfunc_end1-_ZL9BM_ChosenRN9benchmark5StateE
	.cfi_endproc
                                        # -- End function
	.hidden	main                            # -- Begin function main
	.globl	main
	.p2align	5
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:                                # %._crit_edge.i.i
	addi.d	$sp, $sp, -368
	.cfi_def_cfa_offset 368
	st.d	$ra, $sp, 360                   # 8-byte Folded Spill
	st.d	$fp, $sp, 352                   # 8-byte Folded Spill
	st.d	$s0, $sp, 344                   # 8-byte Folded Spill
	st.d	$s1, $sp, 336                   # 8-byte Folded Spill
	st.d	$s2, $sp, 328                   # 8-byte Folded Spill
	st.d	$s3, $sp, 320                   # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	move	$fp, $a1
	st.w	$a0, $sp, 316
	pcalau12i	$a1, %pc_hi20(.L.str)
	addi.d	$a1, $a1, %pc_lo12(.L.str)
	ld.d	$a2, $a1, 0
	ld.w	$a1, $a1, 8
	addi.d	$s1, $sp, 296
	st.d	$s1, $sp, 280
	st.d	$a2, $sp, 296
	st.w	$a1, $sp, 304
	ori	$a1, $zero, 12
	st.d	$a1, $sp, 288
	st.b	$zero, $sp, 308
	blez	$a0, .LBB2_4
# %bb.1:                                # %.lr.ph.preheader
	move	$s2, $zero
	slli.d	$s3, $a0, 3
	pcalau12i	$a0, %pc_hi20(.L.str.4)
	addi.d	$s0, $a0, %pc_lo12(.L.str.4)
	.p2align	4, , 16
.LBB2_2:                                # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ldx.d	$a1, $fp, $s2
	move	$a0, $s0
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_5
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	addi.d	$s2, $s2, 8
	bne	$s3, $s2, .LBB2_2
.LBB2_4:                                # %.critedge
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a0, $a0, %pc_lo12(.L.str.5)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__.main)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__.main)
	ori	$a2, $zero, 68
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB2_5:
.Ltmp0:
	pcalau12i	$a0, %got_pc_hi20(_ZN9benchmark16PrintDefaultHelpEv)
	ld.d	$a2, $a0, %got_pc_lo12(_ZN9benchmark16PrintDefaultHelpEv)
	addi.d	$a0, $sp, 316
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark10InitializeEPiPPcPFvvE)
	jirl	$ra, $ra, 0
.Ltmp1:
# %bb.6:
.Ltmp2:
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(_ZN9benchmark18GetBenchmarkFilterB5cxx11Ev)
	jirl	$ra, $ra, 0
.Ltmp3:
# %bb.7:
	ld.d	$a2, $sp, 288
	ld.d	$a0, $sp, 168
	bne	$a2, $a0, .LBB2_10
# %bb.8:
	ld.d	$fp, $sp, 160
	beqz	$a2, .LBB2_37
# %bb.9:
	ld.d	$a0, $sp, 280
	move	$a1, $fp
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	sltu	$s2, $zero, $a0
	addi.d	$s0, $sp, 176
	bne	$fp, $s0, .LBB2_11
	b	.LBB2_12
.LBB2_10:                               # %._ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit_crit_edge
	ld.d	$fp, $sp, 160
	ori	$s2, $zero, 1
	addi.d	$s0, $sp, 176
	beq	$fp, $s0, .LBB2_12
.LBB2_11:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a0, $sp, 176
	addi.d	$a1, $a0, 1
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_12:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	beqz	$s2, .LBB2_24
# %bb.13:
.Ltmp42:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.7)
	addi.d	$a1, $a1, %pc_lo12(.L.str.7)
	ori	$a2, $zero, 64
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp43:
# %bb.14:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
.Ltmp45:
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(_ZN9benchmark18GetBenchmarkFilterB5cxx11Ev)
	jirl	$ra, $ra, 0
.Ltmp46:
# %bb.15:
	ld.d	$a1, $sp, 160
	ld.d	$a2, $sp, 168
.Ltmp48:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp49:
# %bb.16:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
.Ltmp50:
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.8)
	addi.d	$a1, $a0, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 17
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp51:
# %bb.17:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit42
	ld.d	$a1, $sp, 280
	ld.d	$a2, $sp, 288
.Ltmp52:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp53:
# %bb.18:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit44
.Ltmp54:
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp55:
# %bb.19:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit46
	ld.d	$a0, $sp, 160
	beq	$a0, $s0, .LBB2_21
# %bb.20:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i47
	ld.d	$a1, $sp, 176
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_21:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit49
	ori	$fp, $zero, 1
	ld.d	$a0, $sp, 280
	beq	$a0, $s1, .LBB2_23
.LBB2_22:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
	ld.d	$a1, $sp, 296
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_23:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
	move	$a0, $fp
	ld.d	$s3, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 328                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 336                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 344                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 352                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 360                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 368
	ret
.LBB2_24:
.Ltmp5:
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(_ZN9benchmark17BenchmarkReporterC2Ev)
	jirl	$ra, $ra, 0
.Ltmp6:
# %bb.25:                               # %._crit_edge.i.i54
	ori	$a0, $zero, 3
	st.w	$a0, $sp, 184
	st.d	$zero, $sp, 192
	addi.d	$a0, $sp, 208
	st.w	$zero, $sp, 208
	st.d	$zero, $sp, 216
	st.d	$a0, $sp, 224
	st.d	$a0, $sp, 232
	st.d	$zero, $sp, 240
	st.b	$zero, $sp, 248
	pcalau12i	$a0, %pc_hi20(_ZTVN12_GLOBAL__N_112TestReporterE+16)
	addi.d	$a0, $a0, %pc_lo12(_ZTVN12_GLOBAL__N_112TestReporterE+16)
	st.d	$a0, $sp, 160
	st.d	$zero, $sp, 256
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 264
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	ld.d	$a1, $a0, 0
	ld.b	$a0, $a0, 8
	addi.d	$s0, $sp, 144
	st.d	$s0, $sp, 128
	st.d	$a1, $sp, 144
	st.b	$a0, $sp, 152
	ori	$a0, $zero, 9
	st.d	$a0, $sp, 136
	st.b	$zero, $sp, 153
.Ltmp8:
	addi.d	$a0, $sp, 160
	addi.d	$a1, $sp, 128
	pcaddu18i	$ra, %call36(_ZN9benchmark22RunSpecifiedBenchmarksEPNS_17BenchmarkReporterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp9:
# %bb.26:
	move	$fp, $a0
	ld.d	$a0, $sp, 128
	beq	$a0, $s0, .LBB2_28
# %bb.27:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
	ld.d	$a1, $sp, 144
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_28:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60
	ori	$a0, $zero, 1
	bne	$fp, $a0, .LBB2_64
# %bb.29:
.Ltmp11:
	addi.d	$a1, $sp, 256
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_)
	jirl	$ra, $ra, 0
.Ltmp12:
# %bb.30:
	ld.d	$a1, $sp, 112
	ld.d	$a0, $sp, 104
	sub.d	$a1, $a1, $a0
	ori	$a2, $zero, 32
	bne	$a1, $a2, .LBB2_65
# %bb.31:
	ld.d	$a1, $a0, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a0, $a0, %pc_lo12(.L.str.3)
	pcaddu18i	$ra, %call36(strcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_38
# %bb.32:
.Ltmp14:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.12)
	addi.d	$a1, $a1, %pc_lo12(.L.str.12)
	ori	$a2, $zero, 20
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp15:
# %bb.33:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit65
.Ltmp16:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 9
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp17:
# %bb.34:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67
.Ltmp18:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.13)
	addi.d	$a1, $a1, %pc_lo12(.L.str.13)
	ori	$a2, $zero, 19
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp19:
# %bb.35:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit69
	ld.d	$a0, $sp, 104
	ld.d	$a1, $a0, 0
	ld.d	$a2, $a0, 8
.Ltmp20:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp21:
# %bb.36:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit71
	ori	$fp, $zero, 2
.Ltmp22:
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp23:
	b	.LBB2_54
.LBB2_37:
	move	$s2, $zero
	addi.d	$s0, $sp, 176
	bne	$fp, $s0, .LBB2_11
	b	.LBB2_12
.LBB2_38:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ld.d	$a1, $a0, 0
	ld.w	$a0, $a0, 8
	addi.d	$s2, $sp, 88
	st.d	$s2, $sp, 72
	st.d	$a1, $sp, 88
	st.w	$a0, $sp, 96
	ori	$a0, $zero, 12
	st.d	$a0, $sp, 80
	st.b	$zero, $sp, 100
	ld.d	$a2, $sp, 93
	st.d	$a1, $sp, 56
	addi.d	$s0, $sp, 56
	st.d	$s0, $sp, 40
	st.d	$a2, $sp, 61
	st.d	$a0, $sp, 48
.Ltmp25:
	addi.d	$a0, $sp, 40
	pcaddu18i	$ra, %call36(_ZN9benchmark18SetBenchmarkFilterENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp26:
# %bb.39:
	ld.d	$a0, $sp, 40
	beq	$a0, $s0, .LBB2_41
# %bb.40:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
	ld.d	$a1, $sp, 56
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_41:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
.Ltmp28:
	addi.d	$a0, $sp, 8
	pcaddu18i	$ra, %call36(_ZN9benchmark18GetBenchmarkFilterB5cxx11Ev)
	jirl	$ra, $ra, 0
.Ltmp29:
# %bb.42:
	ld.d	$a2, $sp, 80
	ld.d	$a0, $sp, 16
	bne	$a2, $a0, .LBB2_45
# %bb.43:
	ld.d	$s0, $sp, 8
	beqz	$a2, .LBB2_63
# %bb.44:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85
	ld.d	$a0, $sp, 72
	move	$a1, $s0
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_63
.LBB2_45:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit85.thread
.Ltmp31:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.15)
	addi.d	$a1, $a1, %pc_lo12(.L.str.15)
	ori	$a2, $zero, 10
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp32:
# %bb.46:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit87
	ld.d	$a1, $sp, 72
	ld.d	$a2, $sp, 80
.Ltmp33:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp34:
# %bb.47:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit89
.Ltmp35:
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a1, $a0, %pc_lo12(.L.str.16)
	ori	$a2, $zero, 34
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp36:
# %bb.48:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit91
	ld.d	$a1, $sp, 8
	ld.d	$a2, $sp, 16
.Ltmp37:
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp38:
# %bb.49:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit93
.Ltmp39:
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	ori	$a2, $zero, 2
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp40:
# %bb.50:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit93._ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit95_crit_edge
	ld.d	$s0, $sp, 8
	ori	$fp, $zero, 3
	addi.d	$a0, $sp, 24
	beq	$s0, $a0, .LBB2_52
.LBB2_51:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
	ld.d	$a0, $sp, 24
	addi.d	$a1, $a0, 1
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_52:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104
	ld.d	$a0, $sp, 72
	beq	$a0, $s2, .LBB2_54
# %bb.53:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i105
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_54:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
	ld.d	$a0, $sp, 104
	ld.d	$s0, $sp, 112
	beq	$a0, $s0, .LBB2_60
# %bb.55:                               # %.lr.ph.i.i.preheader
	addi.d	$s2, $a0, 16
	b	.LBB2_57
	.p2align	4, , 16
.LBB2_56:                               # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
                                        #   in Loop: Header=BB2_57 Depth=1
	addi.d	$a0, $s2, 16
	addi.d	$s2, $s2, 32
	beq	$a0, $s0, .LBB2_59
.LBB2_57:                               # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s2, -16
	beq	$s2, $a0, .LBB2_56
# %bb.58:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
                                        #   in Loop: Header=BB2_57 Depth=1
	ld.d	$a1, $s2, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB2_56
.LBB2_59:                               # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i
	ld.d	$a0, $sp, 104
.LBB2_60:                               # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
	beqz	$a0, .LBB2_62
# %bb.61:
	ld.d	$a1, $sp, 120
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_62:                               # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_112TestReporterD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280
	bne	$a0, $s1, .LBB2_22
	b	.LBB2_23
.LBB2_63:
	move	$fp, $zero
	addi.d	$a0, $sp, 24
	bne	$s0, $a0, .LBB2_51
	b	.LBB2_52
.LBB2_64:
	pcalau12i	$a0, %pc_hi20(.L.str.10)
	addi.d	$a0, $a0, %pc_lo12(.L.str.10)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__.main)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__.main)
	ori	$a2, $zero, 85
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB2_65:
	pcalau12i	$a0, %pc_hi20(.L.str.11)
	addi.d	$a0, $a0, %pc_lo12(.L.str.11)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__.main)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__.main)
	ori	$a2, $zero, 88
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.LBB2_66:
.Ltmp30:
	move	$fp, $a0
	b	.LBB2_77
.LBB2_67:
.Ltmp27:
	ld.d	$a2, $sp, 40
	move	$fp, $a0
	beq	$a2, $s0, .LBB2_77
# %bb.68:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i96
	ld.d	$a0, $sp, 56
	b	.LBB2_76
.LBB2_69:
.Ltmp13:
	move	$fp, $a0
	b	.LBB2_84
.LBB2_70:
.Ltmp10:
	ld.d	$a2, $sp, 128
	move	$fp, $a0
	beq	$a2, $s0, .LBB2_84
# %bb.71:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
	ld.d	$a0, $sp, 144
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB2_84
.LBB2_72:
.Ltmp47:
	b	.LBB2_81
.LBB2_73:
.Ltmp7:
	b	.LBB2_81
.LBB2_74:
.Ltmp41:
	ld.d	$a2, $sp, 8
	addi.d	$a1, $sp, 24
	move	$fp, $a0
	beq	$a2, $a1, .LBB2_77
# %bb.75:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99
	ld.d	$a0, $sp, 24
.LBB2_76:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB2_77:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit98
	ld.d	$a0, $sp, 72
	beq	$a0, $s2, .LBB2_83
# %bb.78:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108
	ld.d	$a1, $sp, 88
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB2_83
.LBB2_79:
.Ltmp4:
	b	.LBB2_81
.LBB2_80:
.Ltmp44:
.LBB2_81:
	move	$fp, $a0
	ld.d	$a0, $sp, 280
	beq	$a0, $s1, .LBB2_88
	b	.LBB2_85
.LBB2_82:
.Ltmp24:
	move	$fp, $a0
.LBB2_83:
	addi.d	$a0, $sp, 104
	pcaddu18i	$ra, %call36(_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev)
	jirl	$ra, $ra, 0
.LBB2_84:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
	addi.d	$a0, $sp, 160
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_112TestReporterD2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280
	beq	$a0, $s1, .LBB2_88
.LBB2_85:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i114
	ld.d	$a1, $sp, 296
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_86:
.Ltmp56:
	ld.d	$a2, $sp, 160
	move	$fp, $a0
	bne	$a2, $s0, .LBB2_89
# %bb.87:
	ld.d	$a0, $sp, 280
	bne	$a0, $s1, .LBB2_85
.LBB2_88:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB2_89:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i50
	ld.d	$a0, $sp, 176
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 280
	beq	$a0, $s1, .LBB2_88
	b	.LBB2_85
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
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
	.uleb128 .Ltmp44-.Lfunc_begin0          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp2-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp3-.Ltmp2                  #   Call between .Ltmp2 and .Ltmp3
	.uleb128 .Ltmp4-.Lfunc_begin0           #     jumps to .Ltmp4
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp42-.Ltmp3                 #   Call between .Ltmp3 and .Ltmp42
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp42-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp43-.Ltmp42                #   Call between .Ltmp42 and .Ltmp43
	.uleb128 .Ltmp44-.Lfunc_begin0          #     jumps to .Ltmp44
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp45-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp46-.Ltmp45                #   Call between .Ltmp45 and .Ltmp46
	.uleb128 .Ltmp47-.Lfunc_begin0          #     jumps to .Ltmp47
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp48-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp55-.Ltmp48                #   Call between .Ltmp48 and .Ltmp55
	.uleb128 .Ltmp56-.Lfunc_begin0          #     jumps to .Ltmp56
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin0          # >> Call Site 8 <<
	.uleb128 .Ltmp5-.Ltmp55                 #   Call between .Ltmp55 and .Ltmp5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp5-.Lfunc_begin0           # >> Call Site 9 <<
	.uleb128 .Ltmp6-.Ltmp5                  #   Call between .Ltmp5 and .Ltmp6
	.uleb128 .Ltmp7-.Lfunc_begin0           #     jumps to .Ltmp7
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp8-.Lfunc_begin0           # >> Call Site 10 <<
	.uleb128 .Ltmp9-.Ltmp8                  #   Call between .Ltmp8 and .Ltmp9
	.uleb128 .Ltmp10-.Lfunc_begin0          #     jumps to .Ltmp10
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 11 <<
	.uleb128 .Ltmp11-.Ltmp9                 #   Call between .Ltmp9 and .Ltmp11
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp11-.Lfunc_begin0          # >> Call Site 12 <<
	.uleb128 .Ltmp12-.Ltmp11                #   Call between .Ltmp11 and .Ltmp12
	.uleb128 .Ltmp13-.Lfunc_begin0          #     jumps to .Ltmp13
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp12-.Lfunc_begin0          # >> Call Site 13 <<
	.uleb128 .Ltmp14-.Ltmp12                #   Call between .Ltmp12 and .Ltmp14
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp14-.Lfunc_begin0          # >> Call Site 14 <<
	.uleb128 .Ltmp23-.Ltmp14                #   Call between .Ltmp14 and .Ltmp23
	.uleb128 .Ltmp24-.Lfunc_begin0          #     jumps to .Ltmp24
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp25-.Lfunc_begin0          # >> Call Site 15 <<
	.uleb128 .Ltmp26-.Ltmp25                #   Call between .Ltmp25 and .Ltmp26
	.uleb128 .Ltmp27-.Lfunc_begin0          #     jumps to .Ltmp27
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp26-.Lfunc_begin0          # >> Call Site 16 <<
	.uleb128 .Ltmp28-.Ltmp26                #   Call between .Ltmp26 and .Ltmp28
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp28-.Lfunc_begin0          # >> Call Site 17 <<
	.uleb128 .Ltmp29-.Ltmp28                #   Call between .Ltmp28 and .Ltmp29
	.uleb128 .Ltmp30-.Lfunc_begin0          #     jumps to .Ltmp30
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp29-.Lfunc_begin0          # >> Call Site 18 <<
	.uleb128 .Ltmp31-.Ltmp29                #   Call between .Ltmp29 and .Ltmp31
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp31-.Lfunc_begin0          # >> Call Site 19 <<
	.uleb128 .Ltmp40-.Ltmp31                #   Call between .Ltmp31 and .Ltmp40
	.uleb128 .Ltmp41-.Lfunc_begin0          #     jumps to .Ltmp41
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin0          # >> Call Site 20 <<
	.uleb128 .Lfunc_end2-.Ltmp40            #   Call between .Ltmp40 and .Lfunc_end2
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_,comdat
	.hidden	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_ # -- Begin function _ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_
	.p2align	5
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_,@function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_: # @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
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
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	.cfi_offset 27, -56
	.cfi_offset 28, -64
	move	$s1, $a1
	ld.d	$a1, $a1, 8
	ld.d	$a2, $s1, 0
	move	$fp, $a0
	sub.d	$s2, $a1, $a2
	st.d	$zero, $a0, 16
	vrepli.b	$vr0, 0
	vst	$vr0, $a0, 0
	beq	$a1, $a2, .LBB3_2
# %bb.1:                                # %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i
	move	$a0, $s2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	b	.LBB3_3
.LBB3_2:
	move	$s0, $zero
.LBB3_3:
	st.d	$s0, $fp, 0
	st.d	$s0, $fp, 8
	add.d	$a0, $s0, $s2
	st.d	$a0, $fp, 16
	ld.d	$s2, $s1, 0
	ld.d	$s3, $s1, 8
	st.d	$s0, $sp, 16
	st.d	$s0, $sp, 0
	addi.d	$a0, $sp, 16
	st.d	$a0, $sp, 8
	beq	$s2, $s3, .LBB3_13
# %bb.4:                                # %.lr.ph.i.i.i.preheader
	ori	$s4, $zero, 16
	addi.w	$s5, $zero, -1
	b	.LBB3_7
	.p2align	4, , 16
.LBB3_5:                                #   in Loop: Header=BB3_7 Depth=1
	addi.d	$a2, $a1, 1
	move	$a1, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB3_6:                                #   in Loop: Header=BB3_7 Depth=1
	ld.d	$a0, $sp, 24
	ld.d	$a1, $sp, 16
	st.d	$a0, $s0, 8
	addi.d	$s2, $s2, 32
	addi.d	$s0, $a1, 32
	st.d	$s0, $sp, 16
	beq	$s2, $s3, .LBB3_13
.LBB3_7:                                # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	addi.d	$a0, $s0, 16
	st.d	$a0, $s0, 0
	ld.d	$a1, $s2, 8
	ld.d	$s1, $s2, 0
	st.d	$a1, $sp, 24
	bltu	$a1, $s4, .LBB3_10
# %bb.8:                                # %.noexc.i.i.i.i.i
                                        #   in Loop: Header=BB3_7 Depth=1
.Ltmp57:
	addi.d	$a1, $sp, 24
	move	$a0, $s0
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp58:
# %bb.9:                                # %.noexc.i.i.i
                                        #   in Loop: Header=BB3_7 Depth=1
	ld.d	$a1, $sp, 24
	st.d	$a0, $s0, 0
	st.d	$a1, $s0, 16
.LBB3_10:                               # %._crit_edge.i.i.i.i.i.i
                                        #   in Loop: Header=BB3_7 Depth=1
	beq	$a1, $s5, .LBB3_6
# %bb.11:                               # %._crit_edge.i.i.i.i.i.i
                                        #   in Loop: Header=BB3_7 Depth=1
	bnez	$a1, .LBB3_5
# %bb.12:                               #   in Loop: Header=BB3_7 Depth=1
	ld.b	$a1, $s1, 0
	st.b	$a1, $a0, 0
	b	.LBB3_6
.LBB3_13:                               # %.loopexit
	st.d	$s0, $fp, 8
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
.LBB3_14:                               # %.body
.Ltmp59:
	move	$s0, $a0
	addi.d	$a0, $sp, 0
	pcaddu18i	$ra, %call36(_ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev)
	jirl	$ra, $ra, 0
	ld.d	$a0, $fp, 0
	beqz	$a0, .LBB3_16
# %bb.15:
	ld.d	$a1, $fp, 16
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB3_16:                               # %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end3:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_, .Lfunc_end3-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_,"aG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2ERKS7_,comdat
	.p2align	2, 0x0
GCC_except_table3:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp57-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp57
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp57-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp58-.Ltmp57                #   Call between .Ltmp57 and .Ltmp58
	.uleb128 .Ltmp59-.Lfunc_begin1          #     jumps to .Ltmp59
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Lfunc_end3-.Ltmp58            #   Call between .Ltmp58 and .Lfunc_end3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,comdat
	.hidden	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev # -- Begin function _ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.p2align	5
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev,@function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev: # @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
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
	beq	$a0, $s0, .LBB4_6
# %bb.1:                                # %.lr.ph.i.preheader
	addi.d	$s1, $a0, 16
	b	.LBB4_3
	.p2align	4, , 16
.LBB4_2:                                # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i
                                        #   in Loop: Header=BB4_3 Depth=1
	addi.d	$a0, $s1, 16
	addi.d	$s1, $s1, 32
	beq	$a0, $s0, .LBB4_5
.LBB4_3:                                # %.lr.ph.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, -16
	beq	$s1, $a0, .LBB4_2
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
                                        #   in Loop: Header=BB4_3 Depth=1
	ld.d	$a1, $s1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB4_2
.LBB4_5:                                # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split
	ld.d	$a0, $fp, 0
.LBB4_6:                                # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit
	beqz	$a0, .LBB4_8
# %bb.7:
	ld.d	$a1, $fp, 16
	sub.d	$a1, $a1, $a0
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB4_8:                                # %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	ret
.Lfunc_end4:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev, .Lfunc_end4-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev
	.cfi_endproc
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_112TestReporterD2Ev
	.type	_ZN12_GLOBAL__N_112TestReporterD2Ev,@function
_ZN12_GLOBAL__N_112TestReporterD2Ev:    # @_ZN12_GLOBAL__N_112TestReporterD2Ev
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception2
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
	ld.d	$a0, $a0, 96
	ld.d	$s0, $fp, 104
	pcalau12i	$a1, %pc_hi20(_ZTVN12_GLOBAL__N_112TestReporterE+16)
	addi.d	$a1, $a1, %pc_lo12(_ZTVN12_GLOBAL__N_112TestReporterE+16)
	st.d	$a1, $fp, 0
	beq	$a0, $s0, .LBB5_6
# %bb.1:                                # %.lr.ph.i.i.preheader
	addi.d	$s1, $a0, 16
	b	.LBB5_3
	.p2align	4, , 16
.LBB5_2:                                # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
                                        #   in Loop: Header=BB5_3 Depth=1
	addi.d	$a0, $s1, 16
	addi.d	$s1, $s1, 32
	beq	$a0, $s0, .LBB5_5
.LBB5_3:                                # %.lr.ph.i.i
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s1, -16
	beq	$s1, $a0, .LBB5_2
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
                                        #   in Loop: Header=BB5_3 Depth=1
	ld.d	$a1, $s1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB5_2
.LBB5_5:                                # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i
	ld.d	$a0, $fp, 96
.LBB5_6:                                # %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
	beqz	$a0, .LBB5_8
# %bb.7:
	ld.d	$a1, $fp, 112
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_8:                                # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark15ConsoleReporterE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark15ConsoleReporterE)
	ld.d	$a1, $fp, 56
	addi.d	$a0, $a0, 16
	st.d	$a0, $fp, 0
	addi.d	$a0, $fp, 40
.Ltmp60:
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
.Ltmp61:
# %bb.9:                                # %_ZN9benchmark15ConsoleReporterD2Ev.exit
	move	$a0, $fp
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
	pcaddu18i	$t8, %call36(_ZN9benchmark17BenchmarkReporterD2Ev)
	jr	$t8
.LBB5_10:
.Ltmp62:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN12_GLOBAL__N_112TestReporterD2Ev, .Lfunc_end5-_ZN12_GLOBAL__N_112TestReporterD2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table5:
.Lexception2:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase0-.Lttbaseref0
.Lttbaseref0:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end2-.Lcst_begin2
.Lcst_begin2:
	.uleb128 .Lfunc_begin2-.Lfunc_begin2    # >> Call Site 1 <<
	.uleb128 .Ltmp60-.Lfunc_begin2          #   Call between .Lfunc_begin2 and .Ltmp60
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp60-.Lfunc_begin2          # >> Call Site 2 <<
	.uleb128 .Ltmp61-.Ltmp60                #   Call between .Ltmp60 and .Ltmp61
	.uleb128 .Ltmp62-.Lfunc_begin2          #     jumps to .Ltmp62
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp61-.Lfunc_begin2          # >> Call Site 3 <<
	.uleb128 .Lfunc_end5-.Ltmp61            #   Call between .Ltmp61 and .Lfunc_end5
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end2:
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
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_112TestReporter13ReportContextERKN9benchmark17BenchmarkReporter7ContextE
	.type	_ZN12_GLOBAL__N_112TestReporter13ReportContextERKN9benchmark17BenchmarkReporter7ContextE,@function
_ZN12_GLOBAL__N_112TestReporter13ReportContextERKN9benchmark17BenchmarkReporter7ContextE: # @_ZN12_GLOBAL__N_112TestReporter13ReportContextERKN9benchmark17BenchmarkReporter7ContextE
	.cfi_startproc
# %bb.0:
	pcaddu18i	$t8, %call36(_ZN9benchmark15ConsoleReporter13ReportContextERKNS_17BenchmarkReporter7ContextE)
	jr	$t8
.Lfunc_end6:
	.size	_ZN12_GLOBAL__N_112TestReporter13ReportContextERKN9benchmark17BenchmarkReporter7ContextE, .Lfunc_end6-_ZN12_GLOBAL__N_112TestReporter13ReportContextERKN9benchmark17BenchmarkReporter7ContextE
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
.Lfunc_end7:
	.size	_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl, .Lfunc_end7-_ZN9benchmark17BenchmarkReporter16ReportRunsConfigEdbl
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_112TestReporter10ReportRunsERKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS4_EE
	.type	_ZN12_GLOBAL__N_112TestReporter10ReportRunsERKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS4_EE,@function
_ZN12_GLOBAL__N_112TestReporter10ReportRunsERKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS4_EE: # @_ZN12_GLOBAL__N_112TestReporter10ReportRunsERKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS4_EE
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
	move	$fp, $a1
	ld.d	$a2, $a1, 8
	ld.d	$a1, $a1, 0
	sub.d	$a2, $a2, $a1
	ori	$a3, $zero, 560
	bne	$a2, $a3, .LBB8_11
# %bb.1:
	move	$s0, $a0
	ld.d	$s1, $a0, 104
	ld.d	$a0, $a0, 112
	beq	$s1, $a0, .LBB8_7
# %bb.2:
	addi.d	$a0, $s1, 16
	st.d	$a0, $s1, 0
	ld.d	$a2, $a1, 8
	ld.d	$s2, $a1, 0
	ori	$a1, $zero, 16
	st.d	$a2, $sp, 0
	bltu	$a2, $a1, .LBB8_4
# %bb.3:                                # %.noexc.i.i
	addi.d	$a1, $sp, 0
	move	$a0, $s1
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
	ld.d	$a2, $sp, 0
	st.d	$a0, $s1, 0
	st.d	$a2, $s1, 16
.LBB8_4:                                # %._crit_edge.i.i.i
	addi.w	$a1, $zero, -1
	beq	$a2, $a1, .LBB8_9
# %bb.5:                                # %._crit_edge.i.i.i
	bnez	$a2, .LBB8_8
# %bb.6:
	ld.b	$a1, $s2, 0
	st.b	$a1, $a0, 0
	b	.LBB8_9
.LBB8_7:
	addi.d	$a0, $s0, 96
	pcaddu18i	$ra, %call36(_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_)
	jirl	$ra, $ra, 0
	b	.LBB8_10
.LBB8_8:
	addi.d	$a2, $a2, 1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB8_9:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
	ld.d	$a0, $sp, 0
	ld.d	$a1, $s0, 104
	st.d	$a0, $s1, 8
	addi.d	$a0, $a1, 32
	st.d	$a0, $s0, 104
.LBB8_10:                               # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark15ConsoleReporter10ReportRunsERKSt6vectorINS_17BenchmarkReporter3RunESaIS3_EE)
	jirl	$ra, $ra, 0
	ld.d	$s2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$s1, $sp, 16                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 24                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 32                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 40                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 48
	ret
.LBB8_11:
	pcalau12i	$a0, %pc_hi20(.L.str.20)
	addi.d	$a0, $a0, %pc_lo12(.L.str.20)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	pcalau12i	$a2, %pc_hi20(.L__PRETTY_FUNCTION__._ZN12_GLOBAL__N_112TestReporter10ReportRunsERKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS4_EE)
	addi.d	$a3, $a2, %pc_lo12(.L__PRETTY_FUNCTION__._ZN12_GLOBAL__N_112TestReporter10ReportRunsERKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS4_EE)
	ori	$a2, $zero, 25
	pcaddu18i	$ra, %call36(__assert_fail)
	jirl	$ra, $ra, 0
.Lfunc_end8:
	.size	_ZN12_GLOBAL__N_112TestReporter10ReportRunsERKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS4_EE, .Lfunc_end8-_ZN12_GLOBAL__N_112TestReporter10ReportRunsERKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS4_EE
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
.Lfunc_end9:
	.size	_ZN9benchmark17BenchmarkReporter8FinalizeEv, .Lfunc_end9-_ZN9benchmark17BenchmarkReporter8FinalizeEv
                                        # -- End function
	.text
	.p2align	5                               # -- Begin function _ZN12_GLOBAL__N_112TestReporterD0Ev
	.type	_ZN12_GLOBAL__N_112TestReporterD0Ev,@function
_ZN12_GLOBAL__N_112TestReporterD0Ev:    # @_ZN12_GLOBAL__N_112TestReporterD0Ev
# %bb.0:
	addi.d	$sp, $sp, -16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	st.d	$fp, $sp, 0                     # 8-byte Folded Spill
	move	$fp, $a0
	pcaddu18i	$ra, %call36(_ZN12_GLOBAL__N_112TestReporterD2Ev)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 120
	move	$a0, $fp
	ld.d	$fp, $sp, 0                     # 8-byte Folded Reload
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.Lfunc_end10:
	.size	_ZN12_GLOBAL__N_112TestReporterD0Ev, .Lfunc_end10-_ZN12_GLOBAL__N_112TestReporterD0Ev
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
.Lfunc_end11:
	.size	__clang_call_terminate, .Lfunc_end11-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_,"axG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_,comdat
	.weak	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_ # -- Begin function _ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_
	.p2align	5
	.type	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_,@function
_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_: # @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception3
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
	move	$fp, $a0
	ld.d	$s5, $a0, 8
	ld.d	$s0, $a0, 0
	sub.d	$s7, $s5, $s0
	addi.w	$a0, $zero, -32
	lu52i.d	$a0, $a0, 2047
	beq	$s7, $a0, .LBB12_18
# %bb.1:                                # %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
	move	$s4, $a1
	srai.d	$a0, $s7, 5
	ori	$a1, $zero, 1
	sltu	$a2, $a1, $a0
	masknez	$a1, $a1, $a2
	maskeqz	$a2, $a0, $a2
	or	$a1, $a2, $a1
	add.d	$a0, $a1, $a0
	addi.w	$s6, $zero, -1
	lu52i.d	$a1, $s6, 63
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$a0, $a0, $a1
	slli.d	$s1, $a0, 5
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	add.d	$s3, $a0, $s7
	addi.d	$a0, $s3, 16
	ld.d	$a1, $s4, 8
	ld.d	$s4, $s4, 0
	stx.d	$a0, $s2, $s7
	ori	$a2, $zero, 16
	st.d	$a1, $sp, 0
	bltu	$a1, $a2, .LBB12_4
# %bb.2:                                # %.noexc.i
.Ltmp63:
	addi.d	$a1, $sp, 0
	move	$a0, $s3
	move	$a2, $zero
	pcaddu18i	$ra, %call36(_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm)
	jirl	$ra, $ra, 0
.Ltmp64:
# %bb.3:                                # %.noexc
	ld.d	$a1, $sp, 0
	st.d	$a0, $s3, 0
	st.d	$a1, $s3, 16
.LBB12_4:                               # %._crit_edge.i.i
	beq	$a1, $s6, .LBB12_7
# %bb.5:                                # %._crit_edge.i.i
	bnez	$a1, .LBB12_11
# %bb.6:
	ld.b	$a1, $s4, 0
	st.b	$a1, $a0, 0
.LBB12_7:
	ld.d	$a0, $sp, 0
	st.d	$a0, $s3, 8
	move	$s3, $s2
	bne	$s0, $s5, .LBB12_12
.LBB12_8:                               # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
	beqz	$s0, .LBB12_10
.LBB12_9:                               # %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit.i
	ld.d	$a0, $fp, 16
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB12_10:                              # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocD2Ev.exit
	addi.d	$a0, $s3, 32
	st.d	$s2, $fp, 0
	st.d	$a0, $fp, 8
	add.d	$a0, $s2, $s1
	st.d	$a0, $fp, 16
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
.LBB12_11:
	addi.d	$a2, $a1, 1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 0
	st.d	$a0, $s3, 8
	move	$s3, $s2
	beq	$s0, $s5, .LBB12_8
.LBB12_12:                              # %.lr.ph.i.i.i.preheader
	move	$s4, $zero
	b	.LBB12_15
	.p2align	4, , 16
.LBB12_13:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
                                        #   in Loop: Header=BB12_15 Depth=1
	ld.d	$a0, $s3, 0
	ld.d	$s8, $s7, 8
	st.d	$a1, $s6, 0
	st.d	$a0, $s6, 16
.LBB12_14:                              # %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
                                        #   in Loop: Header=BB12_15 Depth=1
	st.d	$s8, $s6, 8
	stx.d	$s3, $s0, $s4
	st.d	$zero, $s7, 8
	addi.d	$s4, $s4, 32
	add.d	$a0, $s0, $s4
	st.b	$zero, $s3, 0
	beq	$a0, $s5, .LBB12_17
.LBB12_15:                              # %.lr.ph.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	add.d	$s6, $s2, $s4
	ldx.d	$a1, $s0, $s4
	add.d	$s7, $s0, $s4
	addi.d	$a0, $s6, 16
	addi.d	$s3, $s7, 16
	stx.d	$a0, $s2, $s4
	bne	$s3, $a1, .LBB12_13
# %bb.16:                               # %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i.i.i.i
                                        #   in Loop: Header=BB12_15 Depth=1
	ld.d	$s8, $s7, 8
	addi.d	$a2, $s8, 1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	b	.LBB12_14
.LBB12_17:                              # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.loopexit
	add.d	$s3, $s2, $s4
	bnez	$s0, .LBB12_9
	b	.LBB12_10
.LBB12_18:
	pcalau12i	$a0, %pc_hi20(.L.str.21)
	addi.d	$a0, $a0, %pc_lo12(.L.str.21)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB12_19:                              # %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Guard_allocD2Ev.exit22
.Ltmp65:
	move	$fp, $a0
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end12:
	.size	_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_, .Lfunc_end12-_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_
	.cfi_endproc
	.section	.gcc_except_table._ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_,"aG",@progbits,_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_appendIJRKS5_EEEvDpOT_,comdat
	.p2align	2, 0x0
GCC_except_table12:
.Lexception3:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end3-.Lcst_begin3
.Lcst_begin3:
	.uleb128 .Lfunc_begin3-.Lfunc_begin3    # >> Call Site 1 <<
	.uleb128 .Ltmp63-.Lfunc_begin3          #   Call between .Lfunc_begin3 and .Ltmp63
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp63-.Lfunc_begin3          # >> Call Site 2 <<
	.uleb128 .Ltmp64-.Ltmp63                #   Call between .Ltmp63 and .Ltmp64
	.uleb128 .Ltmp65-.Lfunc_begin3          #     jumps to .Ltmp65
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin3          # >> Call Site 3 <<
	.uleb128 .Lfunc_end12-.Ltmp64           #   Call between .Ltmp64 and .Lfunc_end12
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end3:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,"axG",@progbits,_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,comdat
	.hidden	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E # -- Begin function _ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.weak	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.p2align	5
	.type	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E,@function
_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E: # @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.cfi_startproc
# %bb.0:
	beqz	$a1, .LBB13_6
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
	b	.LBB13_3
	.p2align	4, , 16
.LBB13_2:                               # %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
                                        #   in Loop: Header=BB13_3 Depth=1
	ori	$a1, $zero, 80
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$s0, $s1
	beqz	$s1, .LBB13_5
.LBB13_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s0, 24
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 32
	ld.d	$s1, $s0, 16
	addi.d	$a1, $s0, 48
	beq	$a0, $a1, .LBB13_2
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
                                        #   in Loop: Header=BB13_3 Depth=1
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB13_2
.LBB13_5:
	ld.d	$s1, $sp, 0                     # 8-byte Folded Reload
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB13_6:                               # %._crit_edge
	ret
.Lfunc_end13:
	.size	_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E, .Lfunc_end13-_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_,"axG",@progbits,_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_,comdat
	.weak	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_ # -- Begin function _ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_
	.p2align	5
	.type	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_,@function
_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_: # @_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_
	.cfi_startproc
# %bb.0:
	beq	$a0, $a1, .LBB14_6
# %bb.1:                                # %.lr.ph.preheader
	addi.d	$sp, $sp, -32
	.cfi_def_cfa_offset 32
	st.d	$ra, $sp, 24                    # 8-byte Folded Spill
	st.d	$fp, $sp, 16                    # 8-byte Folded Spill
	st.d	$s0, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	move	$fp, $a1
	addi.d	$s0, $a0, 16
	b	.LBB14_3
	.p2align	4, , 16
.LBB14_2:                               # %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit
                                        #   in Loop: Header=BB14_3 Depth=1
	addi.d	$a0, $s0, 16
	addi.d	$s0, $s0, 32
	beq	$a0, $fp, .LBB14_5
.LBB14_3:                               # %.lr.ph
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s0, -16
	beq	$s0, $a0, .LBB14_2
# %bb.4:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
                                        #   in Loop: Header=BB14_3 Depth=1
	ld.d	$a1, $s0, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB14_2
.LBB14_5:
	ld.d	$s0, $sp, 8                     # 8-byte Folded Reload
	ld.d	$fp, $sp, 16                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 24                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 32
.LBB14_6:                               # %._crit_edge
	ret
.Lfunc_end14:
	.size	_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_, .Lfunc_end14-_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev,"axG",@progbits,_ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev,comdat
	.hidden	_ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev # -- Begin function _ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev
	.weak	_ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev
	.p2align	5
	.type	_ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev,@function
_ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev: # @_ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception4
# %bb.0:
	addi.d	$sp, $sp, -16
	.cfi_def_cfa_offset 16
	st.d	$ra, $sp, 8                     # 8-byte Folded Spill
	.cfi_offset 1, -8
	ld.d	$a1, $a0, 8
	bnez	$a1, .LBB15_2
.LBB15_1:
	ld.d	$ra, $sp, 8                     # 8-byte Folded Reload
	addi.d	$sp, $sp, 16
	ret
.LBB15_2:
	ld.d	$a0, $a0, 0
	ld.d	$a1, $a1, 0
.Ltmp66:
	pcaddu18i	$ra, %call36(_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_)
	jirl	$ra, $ra, 0
.Ltmp67:
	b	.LBB15_1
.LBB15_3:
.Ltmp68:
	pcaddu18i	$ra, %call36(__clang_call_terminate)
	jirl	$ra, $ra, 0
.Lfunc_end15:
	.size	_ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev, .Lfunc_end15-_ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev
	.cfi_endproc
	.section	.gcc_except_table._ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev,"aG",@progbits,_ZNSt19_UninitDestroyGuardIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvED2Ev,comdat
	.p2align	2, 0x0
GCC_except_table15:
.Lexception4:
	.byte	255                             # @LPStart Encoding = omit
	.byte	155                             # @TType Encoding = indirect pcrel sdata4
	.uleb128 .Lttbase1-.Lttbaseref1
.Lttbaseref1:
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end4-.Lcst_begin4
.Lcst_begin4:
	.uleb128 .Ltmp66-.Lfunc_begin4          # >> Call Site 1 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp68-.Lfunc_begin4          #     jumps to .Ltmp68
	.byte	1                               #   On action: 1
	.uleb128 .Ltmp67-.Lfunc_begin4          # >> Call Site 2 <<
	.uleb128 .Lfunc_end15-.Ltmp67           #   Call between .Ltmp67 and .Lfunc_end15
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
	.section	.text.startup,"ax",@progbits
	.p2align	5                               # -- Begin function _GLOBAL__sub_I_spec_arg_test.cc
	.type	_GLOBAL__sub_I_spec_arg_test.cc,@function
_GLOBAL__sub_I_spec_arg_test.cc:        # @_GLOBAL__sub_I_spec_arg_test.cc
.Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception5
# %bb.0:
	addi.d	$sp, $sp, -80
	.cfi_def_cfa_offset 80
	st.d	$ra, $sp, 72                    # 8-byte Folded Spill
	st.d	$fp, $sp, 64                    # 8-byte Folded Spill
	st.d	$s0, $sp, 56                    # 8-byte Folded Spill
	st.d	$s1, $sp, 48                    # 8-byte Folded Spill
	st.d	$s2, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	.cfi_offset 1, -8
	.cfi_offset 22, -16
	.cfi_offset 23, -24
	.cfi_offset 24, -32
	.cfi_offset 25, -40
	.cfi_offset 26, -48
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal17InitializeStreamsEv)
	jirl	$ra, $ra, 0
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$fp, $a0
	pcalau12i	$a0, %pc_hi20(.L.str)
	addi.d	$a0, $a0, %pc_lo12(.L.str)
	ld.d	$a1, $a0, 0
	ld.w	$a0, $a0, 8
	addi.d	$s1, $sp, 16
	st.d	$s1, $sp, 0
	st.d	$a1, $sp, 16
	st.w	$a0, $sp, 24
	ori	$a0, $zero, 12
	st.d	$a0, $sp, 8
	st.b	$zero, $sp, 28
	ori	$s3, $zero, 1
.Ltmp69:
	addi.d	$a1, $sp, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp70:
# %bb.1:
	pcalau12i	$a0, %got_pc_hi20(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZTVN9benchmark8internal17FunctionBenchmarkE)
	addi.d	$s2, $a0, 16
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL12BM_NotChosenRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL12BM_NotChosenRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp71:
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp72:
# %bb.2:
	move	$s0, $a0
	ld.d	$a0, $sp, 0
	beq	$a0, $s1, .LBB16_4
# %bb.3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
	ld.d	$a1, $sp, 16
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_4:                               # %__cxx_global_var_init.1.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_2_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_2_benchmark_)
	ori	$a0, $zero, 232
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ld.d	$a2, $a1, 0
	ld.b	$a1, $a1, 8
	move	$fp, $a0
	st.d	$s1, $sp, 0
	st.d	$a2, $sp, 16
	st.b	$a1, $sp, 24
	ori	$a0, $zero, 9
	st.d	$a0, $sp, 8
	st.b	$zero, $sp, 25
	ori	$s3, $zero, 1
.Ltmp74:
	addi.d	$a1, $sp, 0
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE)
	jirl	$ra, $ra, 0
.Ltmp75:
# %bb.5:
	st.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(_ZL9BM_ChosenRN9benchmark5StateE)
	addi.d	$a0, $a0, %pc_lo12(_ZL9BM_ChosenRN9benchmark5StateE)
	st.d	$a0, $fp, 224
.Ltmp76:
	move	$s3, $zero
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE)
	jirl	$ra, $ra, 0
.Ltmp77:
# %bb.6:
	move	$s0, $a0
	ld.d	$a0, $sp, 0
	beq	$a0, $s1, .LBB16_8
# %bb.7:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i4
	ld.d	$a1, $sp, 16
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_8:                               # %__cxx_global_var_init.2.exit
	pcalau12i	$a0, %pc_hi20(_ZL27benchmark_uniq_3_benchmark_)
	st.d	$s0, $a0, %pc_lo12(_ZL27benchmark_uniq_3_benchmark_)
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$s1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s0, $sp, 56                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 64                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 72                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 80
	ret
.LBB16_9:
.Ltmp78:
	ld.d	$a2, $sp, 0
	move	$s0, $a0
	beq	$a2, $s1, .LBB16_14
.LBB16_10:                              # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i
	ld.d	$a0, $sp, 16
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	beqz	$s3, .LBB16_12
.LBB16_11:                              # %common.resume.sink.split
	ori	$a1, $zero, 232
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB16_12:                              # %common.resume
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.LBB16_13:
.Ltmp73:
	ld.d	$a2, $sp, 0
	move	$s0, $a0
	bne	$a2, $s1, .LBB16_10
.LBB16_14:                              # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i7.i
	beqz	$s3, .LBB16_12
	b	.LBB16_11
.Lfunc_end16:
	.size	_GLOBAL__sub_I_spec_arg_test.cc, .Lfunc_end16-_GLOBAL__sub_I_spec_arg_test.cc
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table16:
.Lexception5:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end5-.Lcst_begin5
.Lcst_begin5:
	.uleb128 .Lfunc_begin5-.Lfunc_begin5    # >> Call Site 1 <<
	.uleb128 .Ltmp69-.Lfunc_begin5          #   Call between .Lfunc_begin5 and .Ltmp69
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin5          # >> Call Site 2 <<
	.uleb128 .Ltmp72-.Ltmp69                #   Call between .Ltmp69 and .Ltmp72
	.uleb128 .Ltmp73-.Lfunc_begin5          #     jumps to .Ltmp73
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp72-.Lfunc_begin5          # >> Call Site 3 <<
	.uleb128 .Ltmp74-.Ltmp72                #   Call between .Ltmp72 and .Ltmp74
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin5          # >> Call Site 4 <<
	.uleb128 .Ltmp77-.Ltmp74                #   Call between .Ltmp74 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin5          #     jumps to .Ltmp78
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin5          # >> Call Site 5 <<
	.uleb128 .Lfunc_end16-.Ltmp77           #   Call between .Ltmp77 and .Lfunc_end16
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end5:
	.p2align	2, 0x0
                                        # -- End function
	.type	_ZL27benchmark_uniq_2_benchmark_,@object # @_ZL27benchmark_uniq_2_benchmark_
	.local	_ZL27benchmark_uniq_2_benchmark_
	.comm	_ZL27benchmark_uniq_2_benchmark_,8,8
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str:
	.asciz	"BM_NotChosen"
	.size	.L.str, 13

	.type	_ZL27benchmark_uniq_3_benchmark_,@object # @_ZL27benchmark_uniq_3_benchmark_
	.local	_ZL27benchmark_uniq_3_benchmark_
	.comm	_ZL27benchmark_uniq_3_benchmark_,8,8
	.type	.L.str.3,@object                # @.str.3
	.p2align	3, 0x0
.L.str.3:
	.asciz	"BM_Chosen"
	.size	.L.str.3, 10

	.type	.L.str.4,@object                # @.str.4
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.4:
	.asciz	"--benchmark_filter=BM_NotChosen"
	.size	.L.str.4, 32

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"found"
	.size	.L.str.5, 6

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MicroBenchmarks/libs/benchmark/test/spec_arg_test.cc"
	.size	.L.str.6, 127

	.type	.L__PRETTY_FUNCTION__.main,@object # @__PRETTY_FUNCTION__.main
.L__PRETTY_FUNCTION__.main:
	.asciz	"int main(int, char **)"
	.size	.L__PRETTY_FUNCTION__.main, 23

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Seeing different value for flags. GetBenchmarkFilter() returns ["
	.size	.L.str.7, 65

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"] expected flag=["
	.size	.L.str.8, 18

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"]\n"
	.size	.L.str.9, 3

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"returned_count == 1"
	.size	.L.str.10, 20

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"matched_functions.size() == 1"
	.size	.L.str.11, 30

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Expected benchmark ["
	.size	.L.str.12, 21

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"] to run, but got ["
	.size	.L.str.13, 20

	.type	.L.str.14,@object               # @.str.14
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.14:
	.asciz	"golden_value"
	.size	.L.str.14, 13

	.type	.L.str.15,@object               # @.str.15
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.15:
	.asciz	"Expected ["
	.size	.L.str.15, 11

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"] for --benchmark_filter but got ["
	.size	.L.str.16, 35

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"false && \"SHOULD NOT BE CALLED\""
	.size	.L.str.17, 32

	.type	.L__PRETTY_FUNCTION__._ZL12BM_NotChosenRN9benchmark5StateE,@object # @__PRETTY_FUNCTION__._ZL12BM_NotChosenRN9benchmark5StateE
.L__PRETTY_FUNCTION__._ZL12BM_NotChosenRN9benchmark5StateE:
	.asciz	"void BM_NotChosen(benchmark::State &)"
	.size	.L__PRETTY_FUNCTION__._ZL12BM_NotChosenRN9benchmark5StateE, 38

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"cached_ > 0"
	.size	.L.str.18, 12

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"/home/tangyan/code/auto-tests/loong-opt-cov-ts/test-suite/llvm-test-suite/MicroBenchmarks/libs/benchmark/include/benchmark/benchmark.h"
	.size	.L.str.19, 135

	.type	.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv,@object # @__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv
.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv:
	.asciz	"StateIterator &benchmark::State::StateIterator::operator++()"
	.size	.L__PRETTY_FUNCTION__._ZN9benchmark5State13StateIteratorppEv, 61

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

	.type	.L.str.20,@object               # @.str.20
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.20:
	.asciz	"report.size() == 1"
	.size	.L.str.20, 19

	.type	.L__PRETTY_FUNCTION__._ZN12_GLOBAL__N_112TestReporter10ReportRunsERKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS4_EE,@object # @__PRETTY_FUNCTION__._ZN12_GLOBAL__N_112TestReporter10ReportRunsERKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS4_EE
.L__PRETTY_FUNCTION__._ZN12_GLOBAL__N_112TestReporter10ReportRunsERKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS4_EE:
	.asciz	"virtual void (anonymous namespace)::TestReporter::ReportRuns(const std::vector<Run> &)"
	.size	.L__PRETTY_FUNCTION__._ZN12_GLOBAL__N_112TestReporter10ReportRunsERKSt6vectorIN9benchmark17BenchmarkReporter3RunESaIS4_EE, 87

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"vector::_M_realloc_append"
	.size	.L.str.21, 26

	.section	.init_array,"aw",@init_array
	.p2align	3, 0x0
	.dword	_GLOBAL__sub_I_spec_arg_test.cc
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
	.addrsig_sym _ZL12BM_NotChosenRN9benchmark5StateE
	.addrsig_sym _ZL9BM_ChosenRN9benchmark5StateE
	.addrsig_sym _ZN9benchmark16PrintDefaultHelpEv
	.addrsig_sym _GLOBAL__sub_I_spec_arg_test.cc
	.addrsig_sym _Unwind_Resume
	.addrsig_sym _ZSt4cerr
	.addrsig_sym _ZTIN12_GLOBAL__N_112TestReporterE
	.addrsig_sym _ZTVN10__cxxabiv120__si_class_type_infoE
	.addrsig_sym _ZTSN12_GLOBAL__N_112TestReporterE
	.addrsig_sym _ZTIN9benchmark15ConsoleReporterE
