	.file	"GenMesh.cc"
                                        # Start of file scope inline assembly
	.globl	_ZSt21ios_base_library_initv

                                        # End of file scope inline assembly
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function _ZN7GenMeshC2EPK9InputFile
.LCPI0_0:
	.dword	8                               # 0x8
	.dword	7309475736097875309             # 0x657079746873656d
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_1:
	.dword	0x4071abe4b73fefb5              # double 282.74333882308139
.LCPI0_2:
	.dword	0x400921fb54442d18              # double 3.1415926535897931
.LCPI0_3:
	.dword	0x4066800000000000              # double 180
.LCPI0_4:
	.dword	0x401921fb54442d18              # double 6.2831853071795862
	.text
	.globl	_ZN7GenMeshC2EPK9InputFile
	.p2align	5
	.type	_ZN7GenMeshC2EPK9InputFile,@function
_ZN7GenMeshC2EPK9InputFile:             # @_ZN7GenMeshC2EPK9InputFile
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception0
# %bb.0:                                # %._crit_edge.i.i
	addi.d	$sp, $sp, -208
	.cfi_def_cfa_offset 208
	st.d	$ra, $sp, 200                   # 8-byte Folded Spill
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	st.d	$s0, $sp, 184                   # 8-byte Folded Spill
	st.d	$s1, $sp, 176                   # 8-byte Folded Spill
	st.d	$s2, $sp, 168                   # 8-byte Folded Spill
	st.d	$s3, $sp, 160                   # 8-byte Folded Spill
	st.d	$s4, $sp, 152                   # 8-byte Folded Spill
	st.d	$s5, $sp, 144                   # 8-byte Folded Spill
	st.d	$s6, $sp, 136                   # 8-byte Folded Spill
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	st.d	$s8, $sp, 120                   # 8-byte Folded Spill
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
	move	$fp, $a0
	addi.d	$s3, $a0, 16
	st.d	$s3, $a0, 0
	st.d	$zero, $a0, 8
	pcalau12i	$a0, %pc_hi20(.LCPI0_0)
	vld	$vr0, $a0, %pc_lo12(.LCPI0_0)
	st.b	$zero, $fp, 16
	addi.d	$s1, $sp, 72
	st.d	$s1, $sp, 56
	vst	$vr0, $sp, 64
	st.b	$zero, $sp, 80
	addi.d	$s2, $sp, 40
	st.d	$s2, $sp, 24
	st.d	$zero, $sp, 32
	st.b	$zero, $sp, 40
.Ltmp0:
	addi.d	$a0, $sp, 88
	addi.d	$a2, $sp, 56
	addi.d	$a3, $sp, 24
	pcaddu18i	$ra, %call36(_ZNK9InputFile9getStringERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_)
	jirl	$ra, $ra, 0
.Ltmp1:
# %bb.1:
	ld.d	$a0, $fp, 0
	beq	$a0, $s3, .LBB0_5
# %bb.2:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
	ld.d	$a1, $sp, 88
	addi.d	$a2, $sp, 104
	beq	$a1, $a2, .LBB0_8
# %bb.3:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
	ld.d	$a3, $s3, 0
	vld	$vr0, $sp, 96
	st.d	$a1, $fp, 0
	vst	$vr0, $fp, 8
	beqz	$a0, .LBB0_7
.LBB0_4:
	st.d	$a0, $sp, 88
	st.d	$a3, $sp, 104
	b	.LBB0_14
.LBB0_5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
	ld.d	$a1, $sp, 88
	addi.d	$a2, $sp, 104
	beq	$a1, $a2, .LBB0_8
# %bb.6:
	move	$a0, $zero
                                        # implicit-def: $r7
	vld	$vr0, $sp, 96
	st.d	$a1, $fp, 0
	vst	$vr0, $fp, 8
	bnez	$a0, .LBB0_4
.LBB0_7:
	st.d	$a2, $sp, 88
	move	$a0, $a2
	b	.LBB0_14
.LBB0_8:
	addi.d	$a2, $sp, 88
	beq	$a2, $fp, .LBB0_56
# %bb.9:
	ld.d	$a2, $sp, 96
	beqz	$a2, .LBB0_13
# %bb.10:
	ori	$a3, $zero, 1
	bne	$a2, $a3, .LBB0_12
# %bb.11:
	ld.b	$a1, $a1, 0
	st.b	$a1, $a0, 0
	b	.LBB0_13
.LBB0_12:
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB0_13:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
	ld.d	$a0, $sp, 96
	ld.d	$a1, $fp, 0
	st.d	$a0, $fp, 8
	stx.b	$zero, $a1, $a0
	ld.d	$a0, $sp, 88
.LBB0_14:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
	st.d	$zero, $sp, 96
	st.b	$zero, $a0, 0
	ld.d	$a0, $sp, 88
	addi.d	$s4, $sp, 104
	beq	$a0, $s4, .LBB0_16
# %bb.15:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_16:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ld.d	$a0, $sp, 24
	beq	$a0, $s2, .LBB0_18
# %bb.17:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
	ld.d	$a1, $sp, 40
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_18:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27
	ld.d	$a0, $sp, 56
	beq	$a0, $s1, .LBB0_20
# %bb.19:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
	ld.d	$a1, $sp, 72
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_20:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
	ld.d	$s1, $fp, 8
	beqz	$s1, .LBB0_64
# %bb.21:
	ori	$a0, $zero, 4
	beq	$s1, $a0, .LBB0_25
# %bb.22:
	ori	$a0, $zero, 3
	bne	$s1, $a0, .LBB0_60
# %bb.23:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
	ld.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_27
# %bb.24:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	move	$a0, $s2
	b	.LBB0_26
.LBB0_25:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
.LBB0_26:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42
	move	$a2, $s1
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_60
.LBB0_27:                               # %._crit_edge.i.i48
	pcalau12i	$a0, %pc_hi20(.L.str.7)
	addi.d	$a0, $a0, %pc_lo12(.L.str.7)
	ld.d	$a1, $a0, 0
	ld.h	$a0, $a0, 8
	st.d	$s4, $sp, 88
	st.d	$a1, $sp, 104
	st.h	$a0, $sp, 112
	ori	$a0, $zero, 10
	st.d	$a0, $sp, 96
	st.b	$zero, $sp, 114
	st.d	$zero, $sp, 40
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 24
.Ltmp3:
	addi.d	$a0, $sp, 56
	addi.d	$a2, $sp, 88
	addi.d	$a3, $sp, 24
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZNK9InputFile13getDoubleListERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIdSaIdEE)
	jirl	$ra, $ra, 0
.Ltmp4:
# %bb.28:
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB0_30
# %bb.29:
	ld.d	$a1, $sp, 40
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_30:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit
	ld.d	$a0, $sp, 88
	beq	$a0, $s4, .LBB0_32
# %bb.31:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_32:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
	ld.d	$s0, $sp, 56
	ld.d	$a0, $sp, 64
	beq	$s0, $a0, .LBB0_67
# %bb.33:
	sub.d	$s4, $a0, $s0
	srai.d	$s6, $s4, 3
	ori	$a0, $zero, 5
	bgeu	$s6, $a0, .LBB0_70
# %bb.34:
	fld.d	$fa0, $s0, 0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s1, $fa0
	ori	$a0, $zero, 2
	st.w	$s1, $fp, 32
	bltu	$s6, $a0, .LBB0_36
# %bb.35:
	fld.d	$fa0, $s0, 8
	b	.LBB0_37
.LBB0_36:
	movgr2fr.w	$fa0, $s1
	ffint.d.w	$fa0, $fa0
.LBB0_37:
	ld.d	$s2, $fp, 8
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s5, $fa0
	ori	$s7, $zero, 3
	st.w	$s5, $fp, 36
	bne	$s2, $s7, .LBB0_39
# %bb.38:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 3
	ori	$s8, $zero, 3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_52
.LBB0_39:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71.thread
	bltu	$s6, $s7, .LBB0_42
# %bb.40:
	fld.d	$fa2, $s0, 16
	ori	$a0, $zero, 32
	fst.d	$fa2, $fp, 40
	bne	$s4, $a0, .LBB0_43
.LBB0_41:
	fld.d	$fa0, $s0, 24
	b	.LBB0_44
.LBB0_42:
	vldi	$vr2, -912
	ori	$a0, $zero, 32
	fst.d	$fa2, $fp, 40
	beq	$s4, $a0, .LBB0_41
.LBB0_43:
	vldi	$vr0, -912
.LBB0_44:
	ori	$a0, $zero, 1
	fst.d	$fa0, $fp, 48
	blt	$s1, $a0, .LBB0_57
# %bb.45:
	blt	$s5, $a0, .LBB0_57
# %bb.46:
	movgr2fr.d	$fa1, $zero
	fcmp.cle.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_57
# %bb.47:
	fcmp.cult.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB0_57
# %bb.48:
	ori	$a0, $zero, 3
	bne	$s2, $a0, .LBB0_51
# %bb.49:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 3
	vst	$vr2, $sp, 0                    # 16-byte Folded Spill
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	pcalau12i	$a1, %pc_hi20(.LCPI0_4)
	fld.d	$fa0, $a1, %pc_lo12(.LCPI0_4)
	vld	$vr1, $sp, 0                    # 16-byte Folded Reload
	fcmp.cult.d	$fcc0, $fa1, $fa0
	bcnez	$fcc0, .LBB0_51
# %bb.50:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
	beqz	$a0, .LBB0_73
.LBB0_51:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit81
	ld.d	$a0, $sp, 72
	sub.d	$a1, $a0, $s0
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$s8, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 144                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 160                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 184                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 200                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 208
	ret
.LBB0_52:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71.thread87
	bltu	$s6, $s8, .LBB0_54
# %bb.53:
	fld.d	$fa0, $s0, 16
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_2)
	fmul.d	$fa0, $fa0, $fa1
	b	.LBB0_55
.LBB0_54:
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_1)
.LBB0_55:
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_3)
	fdiv.d	$fa2, $fa0, $fa1
	ori	$a0, $zero, 32
	fst.d	$fa2, $fp, 40
	beq	$s4, $a0, .LBB0_41
	b	.LBB0_43
.LBB0_56:
	move	$a0, $a1
	b	.LBB0_14
.LBB0_57:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_76
# %bb.58:
.Ltmp10:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	ori	$a2, $zero, 42
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp11:
# %bb.59:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
.Ltmp12:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp13:
	b	.LBB0_76
.LBB0_60:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_76
# %bb.61:
.Ltmp23:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	ori	$a2, $zero, 25
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp24:
# %bb.62:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
.Ltmp25:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp26:
# %bb.63:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
.Ltmp27:
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp28:
	b	.LBB0_76
.LBB0_64:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_76
# %bb.65:
.Ltmp29:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 29
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp30:
# %bb.66:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
.Ltmp31:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp32:
	b	.LBB0_76
.LBB0_67:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_76
# %bb.68:
.Ltmp18:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 31
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp19:
# %bb.69:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56
.Ltmp20:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp21:
	b	.LBB0_76
.LBB0_70:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_76
# %bb.71:
.Ltmp14:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	ori	$a2, $zero, 40
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp15:
# %bb.72:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67
.Ltmp16:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp17:
	b	.LBB0_76
.LBB0_73:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_76
# %bb.74:
.Ltmp6:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	ori	$a2, $zero, 38
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp7:
# %bb.75:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77
.Ltmp8:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp9:
.LBB0_76:                               # %_ZNSolsEPFRSoS_E.exit
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_77:
.Ltmp33:
	move	$s0, $a0
	b	.LBB0_90
.LBB0_78:
.Ltmp5:
	ld.d	$a2, $sp, 24
	move	$s0, $a0
	beqz	$a2, .LBB0_80
# %bb.79:
	ld.d	$a0, $sp, 40
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_80:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit60
	ld.d	$a0, $sp, 88
	beq	$a0, $s4, .LBB0_90
# %bb.81:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
	ld.d	$a1, $sp, 104
	b	.LBB0_86
.LBB0_82:
.Ltmp2:
	ld.d	$a2, $sp, 24
	move	$s0, $a0
	beq	$a2, $s2, .LBB0_84
# %bb.83:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
	ld.d	$a0, $sp, 40
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_84:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
	ld.d	$a0, $sp, 56
	beq	$a0, $s1, .LBB0_90
# %bb.85:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
	ld.d	$a1, $sp, 72
.LBB0_86:
	addi.d	$a1, $a1, 1
	b	.LBB0_89
.LBB0_87:
.Ltmp22:
	ld.d	$a2, $sp, 56
	move	$s0, $a0
	beqz	$a2, .LBB0_90
# %bb.88:
	ld.d	$a0, $sp, 72
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
.LBB0_89:
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_90:
	ld.d	$a0, $fp, 0
	beq	$a0, $s3, .LBB0_92
# %bb.91:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
	ld.d	$a1, $s3, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_92:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end0:
	.size	_ZN7GenMeshC2EPK9InputFile, .Lfunc_end0-_ZN7GenMeshC2EPK9InputFile
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table0:
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
	.uleb128 .Ltmp3-.Ltmp1                  #   Call between .Ltmp1 and .Ltmp3
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp3-.Lfunc_begin0           # >> Call Site 3 <<
	.uleb128 .Ltmp4-.Ltmp3                  #   Call between .Ltmp3 and .Ltmp4
	.uleb128 .Ltmp5-.Lfunc_begin0           #     jumps to .Ltmp5
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp4-.Lfunc_begin0           # >> Call Site 4 <<
	.uleb128 .Ltmp10-.Ltmp4                 #   Call between .Ltmp4 and .Ltmp10
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp10-.Lfunc_begin0          # >> Call Site 5 <<
	.uleb128 .Ltmp13-.Ltmp10                #   Call between .Ltmp10 and .Ltmp13
	.uleb128 .Ltmp22-.Lfunc_begin0          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp23-.Lfunc_begin0          # >> Call Site 6 <<
	.uleb128 .Ltmp32-.Ltmp23                #   Call between .Ltmp23 and .Ltmp32
	.uleb128 .Ltmp33-.Lfunc_begin0          #     jumps to .Ltmp33
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp18-.Lfunc_begin0          # >> Call Site 7 <<
	.uleb128 .Ltmp9-.Ltmp18                 #   Call between .Ltmp18 and .Ltmp9
	.uleb128 .Ltmp22-.Lfunc_begin0          #     jumps to .Ltmp22
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp9-.Lfunc_begin0           # >> Call Site 8 <<
	.uleb128 .Lfunc_end0-.Ltmp9             #   Call between .Ltmp9 and .Lfunc_end0
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end0:
	.p2align	2, 0x0
                                        # -- End function
	.text
	.globl	_ZN7GenMeshD2Ev                 # -- Begin function _ZN7GenMeshD2Ev
	.p2align	5
	.type	_ZN7GenMeshD2Ev,@function
_ZN7GenMeshD2Ev:                        # @_ZN7GenMeshD2Ev
	.cfi_startproc
# %bb.0:
	move	$a1, $a0
	ld.d	$a0, $a0, 0
	addi.d	$a1, $a1, 16
	beq	$a0, $a1, .LBB1_2
# %bb.1:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
	ld.d	$a1, $a1, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB1_2:                                # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
	ret
.Lfunc_end1:
	.size	_ZN7GenMeshD2Ev, .Lfunc_end1-_ZN7GenMeshD2Ev
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7GenMesh8generateERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_ # -- Begin function _ZN7GenMesh8generateERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.p2align	5
	.type	_ZN7GenMesh8generateERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_,@function
_ZN7GenMesh8generateERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_: # @_ZN7GenMesh8generateERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -144
	.cfi_def_cfa_offset 144
	st.d	$ra, $sp, 136                   # 8-byte Folded Spill
	st.d	$fp, $sp, 128                   # 8-byte Folded Spill
	st.d	$s0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s1, $sp, 112                   # 8-byte Folded Spill
	st.d	$s2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s3, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$s5, $sp, 80                    # 8-byte Folded Spill
	st.d	$s6, $sp, 72                    # 8-byte Folded Spill
	st.d	$s7, $sp, 64                    # 8-byte Folded Spill
	st.d	$s8, $sp, 56                    # 8-byte Folded Spill
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
	ld.d	$t0, $sp, 160
	st.d	$t0, $sp, 40                    # 8-byte Folded Spill
	ld.d	$t0, $sp, 152
	st.d	$t0, $sp, 48                    # 8-byte Folded Spill
	ld.d	$s5, $sp, 144
	move	$s8, $a7
	move	$s2, $a6
	move	$s3, $a5
	move	$s4, $a4
	move	$fp, $a3
	move	$s0, $a2
	move	$s1, $a1
	move	$s6, $a0
	pcaddu18i	$ra, %call36(_ZN7GenMesh9calcNumPEEv)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s6, 64
	ld.w	$a1, $s6, 32
	ld.w	$a2, $s6, 56
	mul.w	$a3, $a1, $a0
	div.w	$a3, $a3, $a2
	st.w	$a3, $s6, 80
	addi.d	$a0, $a0, 1
	mul.w	$a0, $a0, $a1
	div.w	$a0, $a0, $a2
	ld.w	$a1, $s6, 68
	ld.w	$a2, $s6, 36
	ld.w	$a4, $s6, 60
	sub.d	$a0, $a0, $a3
	st.w	$a0, $s6, 72
	mul.w	$a0, $a2, $a1
	div.w	$a0, $a0, $a4
	st.w	$a0, $s6, 84
	addi.d	$a1, $a1, 1
	mul.w	$a1, $a1, $a2
	ld.d	$s7, $s6, 8
	div.w	$a1, $a1, $a4
	sub.d	$a0, $a1, $a0
	ori	$a1, $zero, 4
	st.w	$a0, $s6, 76
	beq	$s7, $a1, .LBB2_5
# %bb.1:
	ori	$a0, $zero, 3
	bne	$s7, $a0, .LBB2_8
# %bb.2:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
	st.d	$s8, $sp, 32                    # 8-byte Folded Spill
	ld.d	$s8, $s6, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 3
	move	$a0, $s8
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB2_7
# %bb.3:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	move	$a0, $s8
	move	$a2, $s7
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	bnez	$a0, .LBB2_8
# %bb.4:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	st.d	$s5, $sp, 0
	move	$a0, $s6
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	move	$a4, $s4
	move	$a5, $s3
	move	$a6, $s2
	pcaddu18i	$ra, %call36(_ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_)
	jirl	$ra, $ra, 0
	b	.LBB2_8
.LBB2_5:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33
	ld.d	$a0, $s6, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	move	$a2, $s7
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB2_8
# %bb.6:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit33.thread
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	st.d	$s5, $sp, 0
	move	$a0, $s6
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	move	$a4, $s4
	move	$a5, $s3
	move	$a6, $s2
	move	$a7, $s8
	pcaddu18i	$ra, %call36(_ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_)
	jirl	$ra, $ra, 0
	b	.LBB2_8
.LBB2_7:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	st.d	$a0, $sp, 16
	ld.d	$a0, $sp, 48                    # 8-byte Folded Reload
	st.d	$a0, $sp, 8
	st.d	$s5, $sp, 0
	move	$a0, $s6
	move	$a1, $s1
	move	$a2, $s0
	move	$a3, $fp
	move	$a4, $s4
	move	$a5, $s3
	move	$a6, $s2
	ld.d	$a7, $sp, 32                    # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_)
	jirl	$ra, $ra, 0
.LBB2_8:                                # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit35.thread38
	ld.d	$s8, $sp, 56                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 64                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s3, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 128                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 136                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 144
	ret
.Lfunc_end2:
	.size	_ZN7GenMesh8generateERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_, .Lfunc_end2-_ZN7GenMesh8generateERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function _ZN7GenMesh9calcNumPEEv
.LCPI3_0:
	.dword	0x3d719799812dea11              # double 9.9999999999999998E-13
.LCPI3_1:
	.dword	0xbd719799812dea11              # double -9.9999999999999998E-13
	.text
	.globl	_ZN7GenMesh9calcNumPEEv
	.p2align	5
	.type	_ZN7GenMesh9calcNumPEEv,@function
_ZN7GenMesh9calcNumPEEv:                # @_ZN7GenMesh9calcNumPEEv
# %bb.0:
	addi.d	$sp, $sp, -64
	st.d	$ra, $sp, 56                    # 8-byte Folded Spill
	st.d	$fp, $sp, 48                    # 8-byte Folded Spill
	st.d	$s0, $sp, 40                    # 8-byte Folded Spill
	fst.d	$fs0, $sp, 32                   # 8-byte Folded Spill
	fst.d	$fs1, $sp, 24                   # 8-byte Folded Spill
	fst.d	$fs2, $sp, 16                   # 8-byte Folded Spill
	fst.d	$fs3, $sp, 8                    # 8-byte Folded Spill
	ld.w	$a1, $a0, 32
	movgr2fr.w	$fa0, $a1
	ld.w	$a1, $a0, 36
	pcalau12i	$a2, %got_pc_hi20(_ZN8Parallel5numpeE)
	ld.d	$fp, $a2, %got_pc_lo12(_ZN8Parallel5numpeE)
	ffint.d.w	$fs0, $fa0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fs1, $fa0
	ld.w	$a1, $fp, 0
	fcmp.clt.d	$fcc0, $fs1, $fs0
	fsel	$fs2, $fs1, $fs0, $fcc0
	fsel	$fs3, $fs0, $fs1, $fcc0
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fmul.d	$fa0, $fs3, $fa0
	fdiv.d	$fa1, $fa0, $fs2
	fsqrt.d	$fa0, $fa1
	fcmp.cor.d	$fcc0, $fa0, $fa0
	bceqz	$fcc0, .LBB3_9
.LBB3_1:                                # %.split
	pcalau12i	$a1, %pc_hi20(.LCPI3_0)
	fld.d	$fa1, $a1, %pc_lo12(.LCPI3_0)
	fadd.d	$fa1, $fa0, $fa1
	vreplvei.d	$vr1, $vr1, 0
	vfrintrm.d	$vr1, $vr1
	ftintrz.w.d	$fa1, $fa1
	movfr2gr.s	$a2, $fa1
	ori	$a3, $zero, 1
	slt	$a4, $a3, $a2
	ld.w	$a1, $fp, 0
	maskeqz	$a2, $a2, $a4
	masknez	$a3, $a3, $a4
	or	$a2, $a2, $a3
	.p2align	4, , 16
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	div.w	$a3, $a1, $a2
	mul.d	$a4, $a3, $a2
	sub.w	$a4, $a1, $a4
	addi.w	$a2, $a2, -1
	bnez	$a4, .LBB3_2
# %bb.3:
	pcalau12i	$a4, %pc_hi20(.LCPI3_1)
	fld.d	$fa1, $a4, %pc_lo12(.LCPI3_1)
	fadd.d	$fa0, $fa0, $fa1
	vreplvei.d	$vr0, $vr0, 0
	vfrintrp.d	$vr0, $vr0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$a4, $fa0
	addi.w	$a2, $a2, 1
	.p2align	4, , 16
.LBB3_4:                                # =>This Inner Loop Header: Depth=1
	div.w	$a5, $a1, $a4
	mul.d	$a6, $a5, $a4
	sub.w	$a6, $a1, $a6
	addi.w	$a4, $a4, 1
	bnez	$a6, .LBB3_4
# %bb.5:
	movgr2fr.w	$fa0, $a2
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fa0, $fs3, $fa0
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fs2, $fa1
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa0, $fa1, $fcc0
	addi.d	$a3, $a4, -1
	movgr2fr.w	$fa1, $a3
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa1, $fs3, $fa1
	movgr2fr.w	$fa2, $a5
	ffint.d.w	$fa2, $fa2
	fdiv.d	$fa2, $fs2, $fa2
	fcmp.clt.d	$fcc0, $fa1, $fa2
	fsel	$fa1, $fa1, $fa2, $fcc0
	fcmp.cle.d	$fcc0, $fa0, $fa1
	addi.w	$a3, $a3, 0
	movcf2gr	$a4, $fcc0
	masknez	$a3, $a3, $a4
	maskeqz	$a2, $a2, $a4
	or	$a2, $a2, $a3
	st.w	$a2, $a0, 56
	div.w	$a1, $a1, $a2
	fcmp.cule.d	$fcc0, $fs0, $fs1
	st.w	$a1, $a0, 60
	bcnez	$fcc0, .LBB3_7
# %bb.6:
	st.w	$a1, $a0, 56
	st.w	$a2, $a0, 60
	b	.LBB3_8
.LBB3_7:
	move	$a1, $a2
.LBB3_8:
	pcalau12i	$a2, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a2, $a2, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a2, $a2, 0
	div.w	$a3, $a2, $a1
	mul.d	$a1, $a3, $a1
	sub.d	$a1, $a2, $a1
	st.w	$a1, $a0, 64
	st.w	$a3, $a0, 68
	fld.d	$fs3, $sp, 8                    # 8-byte Folded Reload
	fld.d	$fs2, $sp, 16                   # 8-byte Folded Reload
	fld.d	$fs1, $sp, 24                   # 8-byte Folded Reload
	fld.d	$fs0, $sp, 32                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 40                    # 8-byte Folded Reload
	ld.d	$fp, $sp, 48                    # 8-byte Folded Reload
	ld.d	$ra, $sp, 56                    # 8-byte Folded Reload
	addi.d	$sp, $sp, 64
	ret
.LBB3_9:                                # %call.sqrt
	fmov.d	$fa0, $fa1
	move	$s0, $a0
	pcaddu18i	$ra, %call36(sqrt)
	jirl	$ra, $ra, 0
	move	$a0, $s0
	b	.LBB3_1
.Lfunc_end3:
	.size	_ZN7GenMesh9calcNumPEEv, .Lfunc_end3-_ZN7GenMesh9calcNumPEEv
                                        # -- End function
	.globl	_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_ # -- Begin function _ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.p2align	5
	.type	_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_,@function
_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_: # @_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.cfi_startproc
# %bb.0:
	addi.d	$sp, $sp, -272
	.cfi_def_cfa_offset 272
	st.d	$ra, $sp, 264                   # 8-byte Folded Spill
	st.d	$fp, $sp, 256                   # 8-byte Folded Spill
	st.d	$s0, $sp, 248                   # 8-byte Folded Spill
	st.d	$s1, $sp, 240                   # 8-byte Folded Spill
	st.d	$s2, $sp, 232                   # 8-byte Folded Spill
	st.d	$s3, $sp, 224                   # 8-byte Folded Spill
	st.d	$s4, $sp, 216                   # 8-byte Folded Spill
	st.d	$s5, $sp, 208                   # 8-byte Folded Spill
	st.d	$s6, $sp, 200                   # 8-byte Folded Spill
	st.d	$s7, $sp, 192                   # 8-byte Folded Spill
	st.d	$s8, $sp, 184                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 176                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 168                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 160                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 152                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 144                  # 8-byte Folded Spill
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
	ld.w	$s5, $a0, 72
	ld.w	$t0, $a0, 76
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 68
	addi.d	$t1, $s5, 1
	addi.d	$t2, $t0, 1
	sltui	$a0, $a0, 1
	st.d	$t0, $sp, 56                    # 8-byte Folded Spill
	mul.d	$t0, $t1, $t0
	st.d	$t0, $sp, 8                     # 8-byte Folded Spill
	addi.d	$t0, $t0, 1
	st.d	$t1, $sp, 96                    # 8-byte Folded Spill
	st.d	$t2, $sp, 16                    # 8-byte Folded Spill
	mulw.d.w	$t1, $t2, $t1
	st.d	$t1, $sp, 0                     # 8-byte Folded Spill
	masknez	$t1, $t1, $a0
	maskeqz	$a0, $t0, $a0
	or	$a0, $a0, $t1
	addi.w	$s1, $a0, 0
	addi.w	$a0, $zero, -1
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	bge	$a0, $s1, .LBB4_381
# %bb.1:
	move	$s3, $a4
	move	$s6, $a1
	ld.d	$fp, $a1, 16
	ld.d	$s0, $a1, 0
	sub.d	$s8, $fp, $s0
	srai.d	$a0, $s8, 4
	bgeu	$a0, $s1, .LBB4_8
# %bb.2:                                # %_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i
	ld.d	$fp, $s6, 8
	slli.d	$a0, $s1, 4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	beq	$fp, $s0, .LBB4_5
# %bb.3:                                # %.lr.ph.i.i.i.i.i.preheader
	move	$a0, $s0
	move	$a1, $s7
	.p2align	4, , 16
.LBB4_4:                                # %.lr.ph.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a0, 0
	vst	$vr0, $a1, 0
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 16
	bne	$a0, $fp, .LBB4_4
.LBB4_5:                                # %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i
	sub.d	$fp, $fp, $s0
	beqz	$s0, .LBB4_7
# %bb.6:
	move	$a0, $s0
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_7:                                # %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i
	st.d	$s7, $s6, 0
	add.d	$a0, $s7, $fp
	st.d	$a0, $s6, 8
	alsl.d	$fp, $s1, $s7, 4
	st.d	$fp, $s6, 16
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bgez	$a0, .LBB4_9
	b	.LBB4_33
.LBB4_8:
	move	$s7, $s0
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bltz	$a0, .LBB4_33
.LBB4_9:                                # %.lr.ph553
	ld.w	$a1, $s1, 32
	move	$a0, $zero
	fld.d	$fa0, $s1, 40
	movgr2fr.w	$fa1, $a1
	ld.w	$a1, $s1, 36
	ffint.d.w	$fa1, $fa1
	fld.d	$fa2, $s1, 48
	fdiv.d	$fs1, $fa0, $fa1
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fs2, $fa2, $fa0
	addi.w	$a1, $zero, -16
	lu52i.d	$a1, $a1, 2047
	st.d	$a1, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 127
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	vrepli.b	$vr0, 0
	vst	$vr0, $sp, 64                   # 16-byte Folded Spill
	b	.LBB4_14
	.p2align	4, , 16
.LBB4_10:                               #   in Loop: Header=BB4_14 Depth=1
	ld.d	$a0, $s6, 8
	beq	$a0, $fp, .LBB4_26
# %bb.11:                               #   in Loop: Header=BB4_14 Depth=1
	addi.d	$a1, $a0, 16
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vst	$vr0, $a0, 0
	st.d	$a1, $s6, 8
.LBB4_12:                               #   in Loop: Header=BB4_14 Depth=1
	move	$s8, $s7
.LBB4_13:                               # %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit
                                        #   in Loop: Header=BB4_14 Depth=1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	addi.w	$a0, $a2, 1
	move	$s7, $s8
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	beq	$a2, $a1, .LBB4_33
.LBB4_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_18 Depth 2
                                        #       Child Loop BB4_22 Depth 3
                                        #     Child Loop BB4_29 Depth 2
	ld.w	$a1, $s1, 84
	add.w	$a1, $a1, $a0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	beqz	$a1, .LBB4_10
# %bb.15:                               #   in Loop: Header=BB4_14 Depth=1
	bltz	$s5, .LBB4_12
# %bb.16:                               # %.lr.ph.preheader
                                        #   in Loop: Header=BB4_14 Depth=1
	move	$a0, $zero
	ld.d	$s0, $s6, 8
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fmul.d	$fs3, $fs2, $fa0
	b	.LBB4_18
	.p2align	4, , 16
.LBB4_17:                               #   in Loop: Header=BB4_18 Depth=2
	fst.d	$fs4, $s0, 0
	fst.d	$fs0, $s0, 8
	addi.d	$s0, $s0, 16
	st.d	$s0, $s6, 8
	move	$s8, $s7
	addi.w	$a0, $s2, 1
	beq	$s2, $s5, .LBB4_13
.LBB4_18:                               # %.lr.ph
                                        #   Parent Loop BB4_14 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB4_22 Depth 3
	ld.w	$a1, $s1, 80
	ld.w	$a2, $s1, 32
	move	$s2, $a0
	add.d	$a0, $a0, $a1
	sub.d	$a0, $a2, $a0
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fmul.d	$fs0, $fs1, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(cos)
	jirl	$ra, $ra, 0
	fmul.d	$fs4, $fs3, $fa0
	fmov.d	$fa0, $fs0
	pcaddu18i	$ra, %call36(sin)
	jirl	$ra, $ra, 0
	fmul.d	$fs0, $fs3, $fa0
	bne	$s0, $fp, .LBB4_17
# %bb.19:                               #   in Loop: Header=BB4_18 Depth=2
	sub.d	$s0, $fp, $s7
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_380
# %bb.20:                               # %.noexc452
                                        #   in Loop: Header=BB4_18 Depth=2
	srai.d	$a0, $s0, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	sltu	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	add.d	$a0, $a0, $s0
	fstx.d	$fs4, $s8, $s0
	fst.d	$fs0, $a0, 8
	move	$s4, $s8
	beq	$s7, $fp, .LBB4_23
# %bb.21:                               # %.lr.ph.i.i.i.i.i.i442.preheader
                                        #   in Loop: Header=BB4_18 Depth=2
	move	$a0, $s7
	move	$s4, $s8
	.p2align	4, , 16
.LBB4_22:                               # %.lr.ph.i.i.i.i.i.i442
                                        #   Parent Loop BB4_14 Depth=1
                                        #     Parent Loop BB4_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a0, 0
	vst	$vr0, $s4, 0
	addi.d	$a0, $a0, 16
	addi.d	$s4, $s4, 16
	bne	$a0, $fp, .LBB4_22
.LBB4_23:                               # %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit.i.i446
                                        #   in Loop: Header=BB4_18 Depth=2
	beqz	$s7, .LBB4_25
# %bb.24:                               # %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i.i.i449
                                        #   in Loop: Header=BB4_18 Depth=2
	move	$a0, $s7
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_25:                               # %_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_.exit.i450
                                        #   in Loop: Header=BB4_18 Depth=2
	addi.d	$s0, $s4, 16
	st.d	$s8, $s6, 0
	st.d	$s0, $s6, 8
	alsl.d	$fp, $s1, $s8, 4
	st.d	$fp, $s6, 16
	move	$s7, $s8
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	addi.w	$a0, $s2, 1
	bne	$s2, $s5, .LBB4_18
	b	.LBB4_13
.LBB4_26:                               #   in Loop: Header=BB4_14 Depth=1
	sub.d	$s0, $fp, $s7
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_380
# %bb.27:                               # %.noexc438
                                        #   in Loop: Header=BB4_14 Depth=1
	srai.d	$a0, $s0, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	sltu	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vstx	$vr0, $a0, $s0
	move	$s2, $a0
	beq	$s7, $fp, .LBB4_30
# %bb.28:                               # %.lr.ph.i.i.i.i.i.i.preheader
                                        #   in Loop: Header=BB4_14 Depth=1
	move	$a0, $s7
	move	$s2, $s8
	.p2align	4, , 16
.LBB4_29:                               # %.lr.ph.i.i.i.i.i.i
                                        #   Parent Loop BB4_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a0, 0
	vst	$vr0, $s2, 0
	addi.d	$a0, $a0, 16
	addi.d	$s2, $s2, 16
	bne	$a0, $fp, .LBB4_29
.LBB4_30:                               # %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit.i.i
                                        #   in Loop: Header=BB4_14 Depth=1
	beqz	$s7, .LBB4_32
# %bb.31:                               # %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i.i.i
                                        #   in Loop: Header=BB4_14 Depth=1
	move	$a0, $s7
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_32:                               # %_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_.exit.i
                                        #   in Loop: Header=BB4_14 Depth=1
	addi.d	$a0, $s2, 16
	st.d	$s8, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$fp, $s1, $s8, 4
	st.d	$fp, $s6, 16
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	b	.LBB4_13
.LBB4_33:                               # %._crit_edge
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	mul.w	$fp, $a0, $s5
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bge	$a0, $fp, .LBB4_381
# %bb.34:
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$s0, $a1, 0
	sub.d	$s7, $a0, $s0
	srai.d	$a0, $s7, 2
	slli.d	$s6, $fp, 2
	bgeu	$a0, $fp, .LBB4_40
# %bb.35:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s1, $a0, 8
	sub.d	$s8, $s1, $s0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beq	$s1, $s0, .LBB4_37
# %bb.36:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_37:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
	beqz	$s0, .LBB4_39
# %bb.38:
	move	$a0, $s0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_39:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$s2, $a1, 0
	add.d	$a0, $s2, $s8
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $a1, 16
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
.LBB4_40:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$s0, $a1, 0
	sub.d	$s7, $a0, $s0
	srai.d	$a0, $s7, 2
	bgeu	$a0, $fp, .LBB4_46
# %bb.41:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i160
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s1, $a0, 8
	sub.d	$s8, $s1, $s0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beq	$s1, $s0, .LBB4_43
# %bb.42:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_43:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i162
	beqz	$s0, .LBB4_45
# %bb.44:
	move	$a0, $s0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_45:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i164
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$s2, $a1, 0
	add.d	$a0, $s2, $s8
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $a1, 16
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
.LBB4_46:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit165
	ld.d	$a0, $s3, 16
	ld.d	$s0, $s3, 0
	addi.w	$fp, $s6, 0
	sub.d	$s6, $a0, $s0
	srai.d	$a0, $s6, 2
	bgeu	$a0, $fp, .LBB4_52
# %bb.47:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i166
	ld.d	$s1, $s3, 8
	sub.d	$s7, $s1, $s0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	beq	$s1, $s0, .LBB4_49
# %bb.48:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_49:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i168
	beqz	$s0, .LBB4_51
# %bb.50:
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_51:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i170
	st.d	$s2, $s3, 0
	add.d	$a0, $s2, $s7
	st.d	$a0, $s3, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $s3, 16
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
.LBB4_52:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit171
	ld.w	$a1, $s1, 76
	ori	$a0, $zero, 1
	st.d	$s5, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB4_116
# %bb.53:                               # %.preheader547.lr.ph
	ld.w	$a0, $s1, 72
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB4_116
# %bb.54:                               # %.preheader547.preheader
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	ori	$s2, $zero, 1
	addi.w	$a2, $zero, -4
	lu52i.d	$a2, $a2, 2047
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$fp, $a2, 511
	b	.LBB4_57
	.p2align	4, , 16
.LBB4_55:                               # %._crit_edge556.loopexit
                                        #   in Loop: Header=BB4_57 Depth=1
	ld.w	$a1, $s1, 76
.LBB4_56:                               # %._crit_edge556
                                        #   in Loop: Header=BB4_57 Depth=1
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	bge	$a2, $a1, .LBB4_116
.LBB4_57:                               # %.preheader547
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_60 Depth 2
	blt	$a0, $s2, .LBB4_56
# %bb.58:                               # %.lr.ph555
                                        #   in Loop: Header=BB4_57 Depth=1
	ld.d	$a1, $s3, 8
	move	$s8, $zero
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	mul.d	$a0, $a2, $a0
	st.d	$a0, $sp, 88                    # 8-byte Folded Spill
	b	.LBB4_60
	.p2align	4, , 16
.LBB4_59:                               #   in Loop: Header=BB4_60 Depth=2
	st.w	$s1, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $s3, 8
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $s1, 72
	addi.w	$s8, $s8, 1
	bge	$s8, $a0, .LBB4_55
.LBB4_60:                               #   Parent Loop BB4_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s3, 0
	ld.d	$a0, $a5, 8
	ld.d	$a3, $a5, 16
	sub.d	$a1, $a1, $a2
	srai.d	$s4, $a1, 2
	beq	$a0, $a3, .LBB4_62
# %bb.61:                               #   in Loop: Header=BB4_60 Depth=2
	st.w	$s4, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a5, 8
	b	.LBB4_68
	.p2align	4, , 16
.LBB4_62:                               #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s6, $a5, 0
	sub.d	$s0, $a0, $s6
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_380
# %bb.63:                               # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	stx.w	$s4, $a0, $s0
	blt	$s0, $s2, .LBB4_65
# %bb.64:                               #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_65:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i
                                        #   in Loop: Header=BB4_60 Depth=2
	beqz	$s6, .LBB4_67
# %bb.66:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i
                                        #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_67:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i
                                        #   in Loop: Header=BB4_60 Depth=2
	add.d	$a0, $s7, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	st.d	$s7, $a5, 0
	st.d	$a0, $a5, 8
	alsl.d	$a0, $s1, $s7, 2
	st.d	$a0, $a5, 16
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
.LBB4_68:                               # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
                                        #   in Loop: Header=BB4_60 Depth=2
	ld.w	$a0, $s1, 68
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	add.d	$a2, $s8, $a1
	sltui	$a3, $a0, 1
	ld.w	$a4, $s1, 84
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a1, 16
	maskeqz	$a3, $s5, $a3
	sub.w	$a4, $zero, $a4
	sub.d	$s1, $a2, $a3
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	bne	$a2, $a4, .LBB4_72
# %bb.69:                               #   in Loop: Header=BB4_60 Depth=2
	beq	$a0, $a1, .LBB4_78
# %bb.70:                               #   in Loop: Header=BB4_60 Depth=2
	ori	$a1, $zero, 3
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	ld.d	$a1, $s3, 8
	ld.d	$a0, $s3, 16
	beq	$a1, $a0, .LBB4_84
.LBB4_71:                               #   in Loop: Header=BB4_60 Depth=2
	st.w	$zero, $a1, 0
	b	.LBB4_76
	.p2align	4, , 16
.LBB4_72:                               #   in Loop: Header=BB4_60 Depth=2
	beq	$a0, $a1, .LBB4_102
# %bb.73:                               #   in Loop: Header=BB4_60 Depth=2
	ori	$a1, $zero, 4
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	ld.d	$a1, $s3, 8
	ld.d	$a0, $s3, 16
	beq	$a1, $a0, .LBB4_108
.LBB4_74:                               #   in Loop: Header=BB4_60 Depth=2
	st.w	$s1, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $s3, 8
	addi.d	$s5, $s1, 1
	beq	$a1, $a0, .LBB4_114
.LBB4_75:                               #   in Loop: Header=BB4_60 Depth=2
	st.w	$s5, $a1, 0
.LBB4_76:                               # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit189
                                        #   in Loop: Header=BB4_60 Depth=2
	addi.d	$a1, $a1, 4
	st.d	$a1, $s3, 8
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.d	$s1, $s1, $a2
	addi.d	$s5, $s1, 1
	beq	$a1, $a0, .LBB4_90
.LBB4_77:                               #   in Loop: Header=BB4_60 Depth=2
	st.w	$s5, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $s3, 8
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB4_59
	b	.LBB4_96
.LBB4_78:                               #   in Loop: Header=BB4_60 Depth=2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s6, $a1, 0
	sub.d	$s0, $a0, $s6
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_380
# %bb.79:                               # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i175
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ori	$a0, $zero, 3
	stx.w	$a0, $s7, $s0
	blt	$s0, $s2, .LBB4_81
# %bb.80:                               #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_81:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i177
                                        #   in Loop: Header=BB4_60 Depth=2
	beqz	$s6, .LBB4_83
# %bb.82:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i179
                                        #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_83:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i180
                                        #   in Loop: Header=BB4_60 Depth=2
	add.d	$a0, $s7, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$s7, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s4, $s7, 2
	st.d	$a0, $a1, 16
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $s3, 8
	ld.d	$a0, $s3, 16
	bne	$a1, $a0, .LBB4_71
.LBB4_84:                               #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s6, $s3, 0
	sub.d	$s0, $a1, $s6
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_380
# %bb.85:                               # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i183
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	stx.w	$zero, $a0, $s0
	blt	$s0, $s2, .LBB4_87
.LBB4_86:                               #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_87:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i185
                                        #   in Loop: Header=BB4_60 Depth=2
	beqz	$s6, .LBB4_89
# %bb.88:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i204
                                        #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_89:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i205
                                        #   in Loop: Header=BB4_60 Depth=2
	add.d	$a0, $s7, $s0
	addi.d	$a1, $a0, 4
	st.d	$s7, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a0, $s4, $s7, 2
	st.d	$a0, $s3, 16
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.d	$s1, $s1, $a2
	addi.d	$s5, $s1, 1
	bne	$a1, $a0, .LBB4_77
.LBB4_90:                               #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s6, $s3, 0
	sub.d	$s0, $a0, $s6
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_380
# %bb.91:                               # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i208
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	stx.w	$s5, $a0, $s0
	blt	$s0, $s2, .LBB4_93
# %bb.92:                               #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_93:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i210
                                        #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	beqz	$s6, .LBB4_95
# %bb.94:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i212
                                        #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_95:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i213
                                        #   in Loop: Header=BB4_60 Depth=2
	add.d	$a0, $s7, $s0
	addi.d	$a1, $a0, 4
	st.d	$s7, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a0, $s4, $s7, 2
	st.d	$a0, $s3, 16
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB4_59
.LBB4_96:                               #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s6, $s3, 0
	sub.d	$s0, $a0, $s6
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_380
# %bb.97:                               # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i216
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	stx.w	$s1, $a0, $s0
	blt	$s0, $s2, .LBB4_99
# %bb.98:                               #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_99:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i218
                                        #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	beqz	$s6, .LBB4_101
# %bb.100:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i220
                                        #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_101:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i221
                                        #   in Loop: Header=BB4_60 Depth=2
	add.d	$a0, $s7, $s0
	addi.d	$a1, $a0, 4
	st.d	$s7, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a0, $s4, $s7, 2
	st.d	$a0, $s3, 16
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $s1, 72
	addi.w	$s8, $s8, 1
	blt	$s8, $a0, .LBB4_60
	b	.LBB4_55
.LBB4_102:                              #   in Loop: Header=BB4_60 Depth=2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s6, $a1, 0
	sub.d	$s0, $a0, $s6
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_380
# %bb.103:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i191
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ori	$a0, $zero, 4
	stx.w	$a0, $s7, $s0
	blt	$s0, $s2, .LBB4_105
# %bb.104:                              #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_105:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i193
                                        #   in Loop: Header=BB4_60 Depth=2
	beqz	$s6, .LBB4_107
# %bb.106:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i195
                                        #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_107:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i196
                                        #   in Loop: Header=BB4_60 Depth=2
	add.d	$a0, $s7, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$s7, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s4, $s7, 2
	st.d	$a0, $a1, 16
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $s3, 8
	ld.d	$a0, $s3, 16
	bne	$a1, $a0, .LBB4_74
.LBB4_108:                              #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s6, $s3, 0
	sub.d	$s0, $a1, $s6
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_380
# %bb.109:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	stx.w	$s1, $a0, $s0
	blt	$s0, $s2, .LBB4_111
# %bb.110:                              #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_111:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
                                        #   in Loop: Header=BB4_60 Depth=2
	beqz	$s6, .LBB4_113
# %bb.112:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i
                                        #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_113:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i
                                        #   in Loop: Header=BB4_60 Depth=2
	add.d	$a0, $s7, $s0
	addi.d	$a1, $a0, 4
	st.d	$s7, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a0, $s4, $s7, 2
	st.d	$a0, $s3, 16
	ld.d	$a5, $sp, 128                   # 8-byte Folded Reload
	addi.d	$s5, $s1, 1
	bne	$a1, $a0, .LBB4_75
.LBB4_114:                              #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s6, $s3, 0
	sub.d	$s0, $a0, $s6
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_380
# %bb.115:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i200
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	stx.w	$s5, $a0, $s0
	bge	$s0, $s2, .LBB4_86
	b	.LBB4_87
.LBB4_116:                              # %._crit_edge558
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel5numpeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel5numpeE)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_373
# %bb.117:
	move	$a0, $s1
	ld.w	$s1, $s1, 68
	ld.w	$fp, $a0, 64
	sltui	$a0, $s1, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	masknez	$a0, $a1, $a0
	sltui	$a1, $fp, 1
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	masknez	$a1, $a3, $a1
	add.w	$s2, $a1, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bge	$a0, $s2, .LBB4_381
# %bb.118:
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$s4, $a1, 0
	sub.d	$s5, $a0, $s4
	srai.d	$a0, $s5, 2
	bgeu	$a0, $s2, .LBB4_124
# %bb.119:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i223
	ld.d	$s6, $a1, 8
	sub.d	$s0, $s6, $s4
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	beq	$s6, $s4, .LBB4_121
# %bb.120:
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_121:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i225
	beqz	$s4, .LBB4_123
# %bb.122:
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.w	$s1, $a0, 68
	ld.w	$fp, $a0, 64
.LBB4_123:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i227
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$s3, $a1, 0
	add.d	$a0, $s3, $s0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s3, 2
	st.d	$a0, $a1, 16
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
.LBB4_124:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit228
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 60
	addi.w	$a0, $a0, -1
	ld.w	$a1, $a1, 56
	xor	$a0, $s1, $a0
	sltui	$a0, $a0, 1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	masknez	$a0, $a2, $a0
	addi.w	$a1, $a1, -1
	xor	$a1, $fp, $a1
	sltui	$a1, $a1, 1
	masknez	$a1, $a3, $a1
	add.w	$a0, $a1, $a0
	addi.w	$a1, $zero, -2
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	bge	$a1, $a0, .LBB4_381
# %bb.125:
	ld.d	$s6, $sp, 288
	ld.d	$a1, $s6, 16
	ld.d	$s3, $s6, 0
	addi.w	$s2, $a0, 1
	sub.d	$s4, $a1, $s3
	srai.d	$a0, $s4, 2
	bgeu	$a0, $s2, .LBB4_131
# %bb.126:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i229
	ld.d	$s1, $s6, 8
	sub.d	$s0, $s1, $s3
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	beq	$s1, $s3, .LBB4_128
# %bb.127:
	move	$a0, $s5
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_128:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i231
	ld.d	$s1, $sp, 112                   # 8-byte Folded Reload
	beqz	$s3, .LBB4_130
# %bb.129:
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.w	$fp, $s1, 64
.LBB4_130:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i233
	st.d	$s5, $s6, 0
	add.d	$a0, $s5, $s0
	st.d	$a0, $s6, 8
	alsl.d	$a0, $s2, $s5, 2
	st.d	$a0, $s6, 16
	ld.w	$s1, $s1, 68
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
.LBB4_131:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit234
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	beqz	$fp, .LBB4_158
# %bb.132:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit234
	beqz	$s1, .LBB4_158
# %bb.133:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$fp, $a0, 0
	ld.d	$a0, $a5, 8
	ld.d	$a1, $a5, 16
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.w	$s1, $a2, 56
	beq	$a0, $a1, .LBB4_135
# %bb.134:
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a5, 8
	b	.LBB4_141
.LBB4_135:
	ld.d	$s0, $a5, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s3, $a0, .LBB4_380
# %bb.136:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i236
	srai.d	$a0, $s3, 2
	ori	$s5, $zero, 1
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$zero, $a0, $s3
	blt	$s3, $s5, .LBB4_138
# %bb.137:
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_138:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i238
	add.d	$s5, $s4, $s3
	beqz	$s0, .LBB4_140
# %bb.139:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i240
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_140:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i241
	addi.d	$a0, $s5, 4
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
	st.d	$s4, $a5, 0
	st.d	$a0, $a5, 8
	alsl.d	$a0, $s2, $s4, 2
	st.d	$a0, $a5, 16
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
.LBB4_141:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit242
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 8
	ld.d	$a1, $a3, 16
	nor	$a2, $s1, $zero
	add.d	$s1, $fp, $a2
	beq	$a0, $a1, .LBB4_143
# %bb.142:
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	b	.LBB4_149
.LBB4_143:
	ld.d	$s0, $a3, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s3, $a0, .LBB4_380
# %bb.144:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i244
	srai.d	$a0, $s3, 2
	ori	$s2, $zero, 1
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$s1, $a0, $s3
	blt	$s3, $s2, .LBB4_146
# %bb.145:
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_146:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i246
	add.d	$s1, $s4, $s3
	beqz	$s0, .LBB4_148
# %bb.147:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i248
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_148:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i249
	addi.d	$a0, $s1, 4
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$s4, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s4, 2
	st.d	$a0, $a1, 16
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
.LBB4_149:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit250
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 8
	ld.d	$a1, $a3, 16
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB4_151
# %bb.150:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	b	.LBB4_157
.LBB4_151:
	ld.d	$s0, $a3, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s3, $a0, .LBB4_380
# %bb.152:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i252
	srai.d	$a0, $s3, 2
	ori	$s1, $zero, 1
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$s1, $a0, $s3
	blt	$s3, $s1, .LBB4_154
# %bb.153:
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_154:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i254
	add.d	$s1, $s4, $s3
	beqz	$s0, .LBB4_156
# %bb.155:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i256
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_156:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i257
	addi.d	$a0, $s1, 4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$s4, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s4, 2
	st.d	$a0, $a1, 16
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
.LBB4_157:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit258thread-pre-split
	ld.w	$s1, $a2, 68
.LBB4_158:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit258
	beqz	$s1, .LBB4_191
# %bb.159:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $a5, 8
	ld.d	$s3, $a5, 0
	ld.w	$s2, $a1, 0
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a4, $a2, 56
	move	$a1, $s5
	sub.d	$s5, $a0, $s3
	srai.d	$a3, $s5, 2
	st.d	$a3, $sp, 136                   # 8-byte Folded Spill
	st.d	$a4, $sp, 128                   # 8-byte Folded Spill
	bltz	$a1, .LBB4_174
# %bb.160:                              # %.lr.ph563.preheader
	ld.w	$a1, $a2, 64
	beqz	$a1, .LBB4_171
# %bb.161:
	move	$s4, $s3
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	beqz	$a1, .LBB4_173
.LBB4_162:                              # %.lr.ph563.peel.next.preheader
	move	$s5, $zero
	addi.w	$a1, $zero, -4
	lu52i.d	$s7, $a1, 2047
	ori	$s8, $zero, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$fp, $a1, 511
	b	.LBB4_164
	.p2align	4, , 16
.LBB4_163:                              #   in Loop: Header=BB4_164 Depth=1
	st.w	$s5, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	move	$s3, $s4
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	beq	$a1, $s5, .LBB4_174
.LBB4_164:                              # %.lr.ph563.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 16
	addi.w	$s5, $s5, 1
	bne	$a0, $a1, .LBB4_163
# %bb.165:                              #   in Loop: Header=BB4_164 Depth=1
	sub.d	$s0, $a0, $s4
	beq	$s0, $s7, .LBB4_380
# %bb.166:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i276
                                        #   in Loop: Header=BB4_164 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s8, $a0
	masknez	$a2, $s8, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	stx.w	$s5, $a0, $s0
	blt	$s0, $s8, .LBB4_168
# %bb.167:                              #   in Loop: Header=BB4_164 Depth=1
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_168:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i278
                                        #   in Loop: Header=BB4_164 Depth=1
	beqz	$s4, .LBB4_170
# %bb.169:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i280
                                        #   in Loop: Header=BB4_164 Depth=1
	move	$a0, $s4
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_170:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i281
                                        #   in Loop: Header=BB4_164 Depth=1
	add.d	$a0, $s3, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.d	$s3, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $s1, $s3, 2
	st.d	$a1, $a2, 16
	move	$s4, $s3
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	bne	$a1, $s5, .LBB4_164
	b	.LBB4_174
.LBB4_171:
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 16
	beq	$a0, $a1, .LBB4_206
# %bb.172:
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	move	$s4, $s3
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	bnez	$a1, .LBB4_162
.LBB4_173:
	move	$s3, $s4
.LBB4_174:                              # %._crit_edge564
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	sub.d	$s1, $s2, $a3
	beq	$a0, $a1, .LBB4_176
# %bb.175:
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	b	.LBB4_182
.LBB4_176:
	ld.d	$s0, $a2, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	beq	$s3, $a0, .LBB4_380
# %bb.177:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i260
	srai.d	$a0, $s3, 2
	ori	$s2, $zero, 1
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$s1, $a0, $s3
	blt	$s3, $s2, .LBB4_179
# %bb.178:
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_179:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i262
	add.d	$s1, $s4, $s3
	beqz	$s0, .LBB4_181
# %bb.180:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i264
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_181:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i265
	addi.d	$a0, $s1, 4
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	st.d	$s4, $a2, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s3, $a1, 0
	st.d	$a0, $a2, 8
	alsl.d	$a0, $fp, $s4, 2
	st.d	$a0, $a2, 16
.LBB4_182:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit266
	ld.d	$a1, $a1, 8
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 8
	ld.d	$a2, $a3, 16
	sub.d	$a1, $a1, $s3
	srai.d	$a1, $a1, 2
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	sub.d	$s1, $a1, $a4
	beq	$a0, $a2, .LBB4_184
# %bb.183:
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	b	.LBB4_190
.LBB4_184:
	ld.d	$s0, $a3, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s3, $a0, .LBB4_380
# %bb.185:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i268
	srai.d	$a0, $s3, 2
	ori	$s2, $zero, 1
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$s1, $a0, $s3
	blt	$s3, $s2, .LBB4_187
# %bb.186:
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_187:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i270
	add.d	$s1, $s4, $s3
	beqz	$s0, .LBB4_189
# %bb.188:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i272
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_189:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i273
	addi.d	$a0, $s1, 4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$s4, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s4, 2
	st.d	$a0, $a1, 16
.LBB4_190:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit274
	ld.d	$a5, $sp, 48                    # 8-byte Folded Reload
.LBB4_191:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit274
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a4, 64
	beqz	$a0, .LBB4_250
# %bb.192:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $a5, 8
	ld.d	$s3, $a5, 0
	ld.w	$a2, $a4, 68
	ld.w	$s7, $a1, 0
	sub.d	$s0, $a0, $s3
	srai.d	$s5, $s0, 2
	st.d	$s7, $sp, 136                   # 8-byte Folded Spill
	beqz	$a2, .LBB4_194
# %bb.193:
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	move	$a3, $a5
	ori	$s2, $zero, 1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bge	$a0, $s2, .LBB4_225
	b	.LBB4_234
.LBB4_194:
	ld.d	$a1, $a5, 16
	beq	$a0, $a1, .LBB4_197
# %bb.195:
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a5, 8
	move	$a3, $a5
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	ld.w	$a0, $a4, 64
	ori	$a1, $zero, 2
	bge	$a0, $a1, .LBB4_203
.LBB4_196:
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	ori	$s2, $zero, 1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bge	$a0, $s2, .LBB4_225
	b	.LBB4_234
.LBB4_197:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s2, $sp, 24                    # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_380
# %bb.198:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i284
	ori	$fp, $zero, 1
	sltu	$a0, $fp, $s5
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s5, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $a0, $s5
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$zero, $a0, $s0
	blt	$s0, $fp, .LBB4_200
# %bb.199:
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_200:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i286
	add.d	$fp, $s4, $s0
	beqz	$s3, .LBB4_202
# %bb.201:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i288
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_202:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i289
	addi.d	$a0, $fp, 4
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	st.d	$s4, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a0, $s1, $s4, 2
	st.d	$a0, $a3, 16
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a4, 64
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB4_196
.LBB4_203:
	ld.d	$a0, $s2, 8
	ld.d	$a1, $s2, 16
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB4_212
# %bb.204:
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s2, 8
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	beq	$a0, $a1, .LBB4_218
.LBB4_205:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	b	.LBB4_224
.LBB4_206:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s5, $a0, .LBB4_380
# %bb.207:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i276.peel
	ori	$s0, $zero, 1
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	sltu	$a0, $s0, $a2
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$zero, $a0, $s5
	blt	$s5, $s0, .LBB4_209
# %bb.208:
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_209:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i278.peel
	add.d	$s0, $s4, $s5
	beqz	$s3, .LBB4_211
# %bb.210:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i280.peel
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_211:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i281.peel
	addi.d	$a0, $s0, 4
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.d	$s4, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $fp, $s4, 2
	st.d	$a1, $a2, 16
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	bnez	$a1, .LBB4_162
	b	.LBB4_173
.LBB4_212:
	ld.d	$s0, $s2, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s3, $a0, .LBB4_380
# %bb.213:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i292
	srai.d	$a0, $s3, 2
	ori	$fp, $zero, 1
	sltu	$a1, $fp, $a0
	masknez	$a2, $fp, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$zero, $a0, $s3
	blt	$s3, $fp, .LBB4_215
# %bb.214:
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_215:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i294
	add.d	$fp, $s4, $s3
	beqz	$s0, .LBB4_217
# %bb.216:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i296
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_217:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i297
	addi.d	$a0, $fp, 4
	st.d	$s4, $s2, 0
	st.d	$a0, $s2, 8
	alsl.d	$a0, $s1, $s4, 2
	st.d	$a0, $s2, 16
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	bne	$a0, $a1, .LBB4_205
.LBB4_218:
	ld.d	$s0, $a2, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s3, $a0, .LBB4_380
# %bb.219:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i300
	srai.d	$a0, $s3, 2
	ori	$fp, $zero, 1
	sltu	$a1, $fp, $a0
	masknez	$a2, $fp, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$fp, $a0, $s3
	blt	$s3, $fp, .LBB4_221
# %bb.220:
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_221:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i302
	add.d	$fp, $s4, $s3
	beqz	$s0, .LBB4_223
# %bb.222:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i304
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_223:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i305
	addi.d	$a0, $fp, 4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$s4, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s1, $s4, 2
	st.d	$a0, $a1, 16
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
.LBB4_224:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit306
	addi.d	$s5, $s5, 1
	st.d	$s5, $sp, 128                   # 8-byte Folded Spill
	ori	$s2, $zero, 1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	blt	$a0, $s2, .LBB4_234
.LBB4_225:                              # %.lr.ph569.preheader
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 68
	slti	$a0, $a0, 1
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $s2, $a0
	or	$s5, $a0, $a1
	ld.d	$a0, $a3, 8
	ld.d	$a1, $a3, 16
	addi.w	$a2, $zero, -4
	lu52i.d	$s7, $a2, 2047
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$s8, $a2, 511
	ld.d	$s1, $sp, 56                    # 8-byte Folded Reload
	b	.LBB4_227
	.p2align	4, , 16
.LBB4_226:                              #   in Loop: Header=BB4_227 Depth=1
	st.w	$s5, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	addi.w	$s1, $s1, -1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.d	$s5, $s5, $a2
	beqz	$s1, .LBB4_234
.LBB4_227:                              # %.lr.ph569
                                        # =>This Inner Loop Header: Depth=1
	bne	$a0, $a1, .LBB4_226
# %bb.228:                              #   in Loop: Header=BB4_227 Depth=1
	ld.d	$s3, $a3, 0
	sub.d	$s0, $a1, $s3
	beq	$s0, $s7, .LBB4_380
# %bb.229:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i324
                                        #   in Loop: Header=BB4_227 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s8
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s8, $a1
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$s5, $a0, $s0
	blt	$s0, $s2, .LBB4_231
# %bb.230:                              #   in Loop: Header=BB4_227 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_231:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i326
                                        #   in Loop: Header=BB4_227 Depth=1
	beqz	$s3, .LBB4_233
# %bb.232:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i328
                                        #   in Loop: Header=BB4_227 Depth=1
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_233:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i329
                                        #   in Loop: Header=BB4_227 Depth=1
	add.d	$a0, $s4, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	st.d	$s4, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $fp, $s4, 2
	st.d	$a1, $a3, 16
	addi.w	$s1, $s1, -1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.d	$s5, $s5, $a2
	bnez	$s1, .LBB4_227
.LBB4_234:                              # %._crit_edge570
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	addi.d	$fp, $a4, -1
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB4_236
# %bb.235:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	b	.LBB4_242
.LBB4_236:
	ld.d	$s0, $a2, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	beq	$s3, $a0, .LBB4_380
# %bb.237:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i308
	srai.d	$a0, $s3, 2
	ori	$s2, $zero, 1
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$fp, $a0, $s3
	blt	$s3, $s2, .LBB4_239
# %bb.238:
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_239:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i310
	add.d	$fp, $s4, $s3
	beqz	$s0, .LBB4_241
# %bb.240:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i312
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_241:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i313
	addi.d	$a0, $fp, 4
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$s4, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s1, $s4, 2
	st.d	$a0, $a1, 16
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
.LBB4_242:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit314
	ld.d	$a1, $a3, 8
	ld.d	$a2, $a3, 0
	ld.d	$a0, $a5, 8
	ld.d	$a3, $a5, 16
	sub.d	$a1, $a1, $a2
	srai.d	$a1, $a1, 2
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	sub.d	$s3, $a1, $a2
	beq	$a0, $a3, .LBB4_244
# %bb.243:
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a5, 8
	b	.LBB4_250
.LBB4_244:
	ld.d	$s0, $a5, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB4_380
# %bb.245:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i316
	srai.d	$a0, $s1, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s3, $a0, $s1
	blt	$s1, $s4, .LBB4_247
# %bb.246:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_247:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i318
	add.d	$s3, $s2, $s1
	beqz	$s0, .LBB4_249
# %bb.248:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i320
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_249:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i321
	addi.d	$a0, $s3, 4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$s2, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $a1, 16
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
.LBB4_250:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit322
	ld.d	$s4, $sp, 280
	ld.d	$a5, $sp, 272
	ld.w	$a0, $a4, 56
	ld.w	$a2, $a4, 64
	ld.w	$a1, $a4, 68
	addi.w	$a0, $a0, -1
	st.d	$s4, $sp, 128                   # 8-byte Folded Spill
	st.d	$a5, $sp, 136                   # 8-byte Folded Spill
	beq	$a2, $a0, .LBB4_314
# %bb.251:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a3, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $s6, 8
	ld.d	$s1, $s6, 0
	ld.w	$s5, $a3, 0
	sub.d	$s2, $a0, $s1
	or	$a1, $a2, $a1
	srai.d	$a2, $s2, 2
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	st.d	$s5, $sp, 120                   # 8-byte Folded Spill
	bnez	$a1, .LBB4_254
# %bb.252:
	ld.d	$a1, $s6, 16
	beq	$a0, $a1, .LBB4_265
# %bb.253:
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
.LBB4_254:
	move	$s0, $s1
	ori	$s7, $zero, 1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	blt	$a2, $s7, .LBB4_271
.LBB4_255:                              # %.lr.ph574.preheader
	ld.w	$a1, $a1, 68
	slt	$a1, $zero, $a1
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	alsl.w	$a2, $a4, $a3, 1
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $a4, $a1
	or	$s8, $a2, $a1
	ld.d	$a1, $s6, 16
	addi.w	$a2, $zero, -4
	lu52i.d	$fp, $a2, 2047
	lu52i.d	$s5, $a3, 511
	b	.LBB4_258
	.p2align	4, , 16
.LBB4_256:                              #   in Loop: Header=BB4_258 Depth=1
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	move	$s1, $s0
.LBB4_257:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit362
                                        #   in Loop: Header=BB4_258 Depth=1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	addi.w	$a2, $a2, -1
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	add.d	$s8, $s8, $a3
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	beqz	$a2, .LBB4_272
.LBB4_258:                              # %.lr.ph574
                                        # =>This Inner Loop Header: Depth=1
	bne	$a0, $a1, .LBB4_256
# %bb.259:                              #   in Loop: Header=BB4_258 Depth=1
	sub.d	$s2, $a1, $s0
	beq	$s2, $fp, .LBB4_380
# %bb.260:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i356
                                        #   in Loop: Header=BB4_258 Depth=1
	srai.d	$a0, $s2, 2
	sltu	$a1, $s7, $a0
	masknez	$a2, $s7, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$s3, $a0, $a1
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s8, $a0, $s2
	blt	$s2, $s7, .LBB4_262
# %bb.261:                              #   in Loop: Header=BB4_258 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_262:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i358
                                        #   in Loop: Header=BB4_258 Depth=1
	beqz	$s0, .LBB4_264
# %bb.263:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i360
                                        #   in Loop: Header=BB4_258 Depth=1
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_264:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i361
                                        #   in Loop: Header=BB4_258 Depth=1
	add.d	$a0, $s1, $s2
	addi.d	$a0, $a0, 4
	st.d	$s1, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a1, $s3, $s1, 2
	st.d	$a1, $s6, 16
	move	$s0, $s1
	b	.LBB4_257
.LBB4_265:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s2, $a0, .LBB4_380
# %bb.266:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i332
	ori	$s3, $zero, 1
	sltu	$a0, $s3, $a2
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$zero, $a0, $s2
	blt	$s2, $s3, .LBB4_268
# %bb.267:
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_268:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i334
	add.d	$s3, $s0, $s2
	beqz	$s1, .LBB4_270
# %bb.269:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i336
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_270:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i337
	addi.d	$a0, $s3, 4
	st.d	$s0, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a1, $fp, $s0, 2
	st.d	$a1, $s6, 16
	ori	$s7, $zero, 1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	bge	$a2, $s7, .LBB4_255
.LBB4_271:
	move	$s1, $s0
.LBB4_272:                              # %._crit_edge575
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a5, 8
	ld.d	$a1, $a5, 16
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	addi.d	$s3, $a2, 1
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	beq	$a0, $a1, .LBB4_274
# %bb.273:
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a5, 8
	b	.LBB4_280
.LBB4_274:
	ld.d	$s0, $a5, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB4_380
# %bb.275:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i340
	srai.d	$a0, $s1, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s3, $a0, $s1
	blt	$s1, $s4, .LBB4_277
# %bb.276:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_277:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i342
	add.d	$s3, $s2, $s1
	beqz	$s0, .LBB4_279
# %bb.278:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i344
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_279:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i345
	addi.d	$a0, $s3, 4
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	st.d	$s2, $a5, 0
	ld.d	$s1, $s6, 0
	st.d	$a0, $a5, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $a5, 16
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
.LBB4_280:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit346
	ld.d	$a1, $s6, 8
	ld.d	$a0, $s4, 8
	ld.d	$a2, $s4, 16
	sub.d	$a1, $a1, $s1
	srai.d	$a1, $a1, 2
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	sub.d	$s3, $a1, $a3
	beq	$a0, $a2, .LBB4_282
# %bb.281:
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s4, 8
	b	.LBB4_288
.LBB4_282:
	ld.d	$s0, $s4, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB4_380
# %bb.283:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i348
	srai.d	$a0, $s1, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s3, $a0, $s1
	blt	$s1, $s4, .LBB4_285
# %bb.284:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_285:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i350
	add.d	$s3, $s2, $s1
	beqz	$s0, .LBB4_287
# %bb.286:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i352
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_287:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i353
	addi.d	$a0, $s3, 4
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	st.d	$s2, $s4, 0
	st.d	$a0, $s4, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $s4, 16
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
.LBB4_288:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit354
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $a4, 64
	ld.w	$a1, $a4, 68
	or	$a0, $a0, $a1
	bnez	$a0, .LBB4_314
# %bb.289:                              # %.preheader
	ld.w	$a0, $a4, 56
	ori	$a1, $zero, 3
	blt	$a0, $a1, .LBB4_316
# %bb.290:                              # %.lr.ph577.preheader
	ori	$fp, $zero, 2
	addi.w	$a0, $zero, -4
	lu52i.d	$s5, $a0, 2047
	ori	$s7, $zero, 1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$s8, $a0, 511
	b	.LBB4_292
	.p2align	4, , 16
.LBB4_291:                              #   in Loop: Header=BB4_292 Depth=1
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s4, 8
	ld.w	$a0, $a4, 56
	addi.w	$fp, $fp, 1
	bge	$fp, $a0, .LBB4_313
.LBB4_292:                              # %.lr.ph577
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 8
	ld.d	$a1, $s6, 16
	beq	$a0, $a1, .LBB4_295
# %bb.293:                              #   in Loop: Header=BB4_292 Depth=1
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	ld.d	$a0, $a5, 8
	ld.d	$a1, $a5, 16
	beq	$a0, $a1, .LBB4_301
.LBB4_294:                              #   in Loop: Header=BB4_292 Depth=1
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a5, 8
	ld.d	$a0, $s4, 8
	ld.d	$a1, $s4, 16
	bne	$a0, $a1, .LBB4_291
	b	.LBB4_307
	.p2align	4, , 16
.LBB4_295:                              #   in Loop: Header=BB4_292 Depth=1
	ld.d	$s1, $s6, 0
	sub.d	$s0, $a0, $s1
	beq	$s0, $s5, .LBB4_380
# %bb.296:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i364
                                        #   in Loop: Header=BB4_292 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s7, $a0
	masknez	$a2, $s7, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s8
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s8, $a1
	or	$s3, $a0, $a1
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$zero, $a0, $s0
	blt	$s0, $s7, .LBB4_298
# %bb.297:                              #   in Loop: Header=BB4_292 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_298:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i366
                                        #   in Loop: Header=BB4_292 Depth=1
	beqz	$s1, .LBB4_300
# %bb.299:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i368
                                        #   in Loop: Header=BB4_292 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_300:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i369
                                        #   in Loop: Header=BB4_292 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a0, $s3, $s2, 2
	st.d	$a0, $s6, 16
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a5, 8
	ld.d	$a1, $a5, 16
	bne	$a0, $a1, .LBB4_294
.LBB4_301:                              #   in Loop: Header=BB4_292 Depth=1
	ld.d	$s1, $a5, 0
	sub.d	$s0, $a0, $s1
	beq	$s0, $s5, .LBB4_380
# %bb.302:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i372
                                        #   in Loop: Header=BB4_292 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s7, $a0
	masknez	$a2, $s7, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s8
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s8, $a1
	or	$s3, $a0, $a1
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$fp, $a0, $s0
	blt	$s0, $s7, .LBB4_304
# %bb.303:                              #   in Loop: Header=BB4_292 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_304:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i374
                                        #   in Loop: Header=BB4_292 Depth=1
	beqz	$s1, .LBB4_306
# %bb.305:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i376
                                        #   in Loop: Header=BB4_292 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_306:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i377
                                        #   in Loop: Header=BB4_292 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	st.d	$s2, $a5, 0
	st.d	$a0, $a5, 8
	alsl.d	$a0, $s3, $s2, 2
	st.d	$a0, $a5, 16
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $s4, 8
	ld.d	$a1, $s4, 16
	bne	$a0, $a1, .LBB4_291
.LBB4_307:                              #   in Loop: Header=BB4_292 Depth=1
	ld.d	$s1, $s4, 0
	sub.d	$s0, $a0, $s1
	beq	$s0, $s5, .LBB4_380
# %bb.308:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i380
                                        #   in Loop: Header=BB4_292 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s7, $a0
	masknez	$a2, $s7, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s8
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s8, $a1
	or	$s3, $a0, $a1
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s7, $a0, $s0
	blt	$s0, $s7, .LBB4_310
# %bb.309:                              #   in Loop: Header=BB4_292 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_310:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i382
                                        #   in Loop: Header=BB4_292 Depth=1
	beqz	$s1, .LBB4_312
# %bb.311:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i384
                                        #   in Loop: Header=BB4_292 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_312:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i385
                                        #   in Loop: Header=BB4_292 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $s4, 0
	st.d	$a0, $s4, 8
	alsl.d	$a0, $s3, $s2, 2
	st.d	$a0, $s4, 16
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a4, 56
	addi.w	$fp, $fp, 1
	blt	$fp, $a0, .LBB4_292
.LBB4_313:                              # %thread-pre-split.loopexit
	ld.w	$a1, $a4, 68
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
.LBB4_314:                              # %thread-pre-split
	ld.w	$a0, $a4, 60
	addi.w	$a0, $a0, -1
	bne	$a1, $a0, .LBB4_317
.LBB4_315:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit402
	ld.w	$s2, $a4, 56
	ld.w	$a0, $a4, 64
	addi.w	$a1, $s2, -1
	bne	$a0, $a1, .LBB4_349
	b	.LBB4_373
.LBB4_316:
	move	$a1, $zero
	ld.w	$a0, $a4, 60
	addi.w	$a0, $a0, -1
	beq	$a1, $a0, .LBB4_315
.LBB4_317:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a2, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $s6, 8
	ld.d	$s0, $s6, 0
	ld.w	$a5, $a2, 0
	ld.w	$a6, $a4, 56
	sub.d	$s2, $a0, $s0
	srai.d	$a2, $s2, 2
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	st.d	$a5, $sp, 104                   # 8-byte Folded Spill
	st.d	$a6, $sp, 96                    # 8-byte Folded Spill
	bltz	$s5, .LBB4_332
# %bb.318:                              # %.lr.ph582.preheader
	ld.w	$a2, $a4, 64
	sltui	$a1, $a1, 1
	maskeqz	$a1, $s5, $a1
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	sub.d	$fp, $a3, $a1
	beqz	$a2, .LBB4_329
# %bb.319:
	move	$s1, $s0
	beqz	$s5, .LBB4_331
.LBB4_320:                              # %.lr.ph582.peel.next.preheader
	move	$s3, $s5
	addi.d	$s8, $fp, 1
	addi.w	$a1, $zero, -4
	lu52i.d	$fp, $a1, 2047
	ori	$s5, $zero, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$s7, $a1, 511
	b	.LBB4_322
	.p2align	4, , 16
.LBB4_321:                              #   in Loop: Header=BB4_322 Depth=1
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	move	$s0, $s1
	addi.w	$s3, $s3, -1
	addi.d	$s8, $s8, 1
	beqz	$s3, .LBB4_332
.LBB4_322:                              # %.lr.ph582.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s6, 16
	bne	$a0, $a1, .LBB4_321
# %bb.323:                              #   in Loop: Header=BB4_322 Depth=1
	sub.d	$s2, $a0, $s1
	beq	$s2, $fp, .LBB4_380
# %bb.324:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i404
                                        #   in Loop: Header=BB4_322 Depth=1
	srai.d	$a0, $s2, 2
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s7
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s8, $a0, $s2
	blt	$s2, $s5, .LBB4_326
# %bb.325:                              #   in Loop: Header=BB4_322 Depth=1
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_326:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i406
                                        #   in Loop: Header=BB4_322 Depth=1
	beqz	$s1, .LBB4_328
# %bb.327:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i408
                                        #   in Loop: Header=BB4_322 Depth=1
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_328:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i409
                                        #   in Loop: Header=BB4_322 Depth=1
	add.d	$a0, $s0, $s2
	addi.d	$a0, $a0, 4
	st.d	$s0, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a1, $s4, $s0, 2
	st.d	$a1, $s6, 16
	move	$s1, $s0
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	addi.w	$s3, $s3, -1
	addi.d	$s8, $s8, 1
	bnez	$s3, .LBB4_322
	b	.LBB4_332
.LBB4_329:
	ld.d	$a1, $s6, 16
	beq	$a0, $a1, .LBB4_374
# %bb.330:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	move	$s1, $s0
	bnez	$s5, .LBB4_320
.LBB4_331:
	move	$s0, $s1
.LBB4_332:                              # %._crit_edge583
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 96                    # 8-byte Folded Reload
	add.d	$s3, $a4, $a3
	beq	$a0, $a1, .LBB4_334
# %bb.333:
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	b	.LBB4_340
.LBB4_334:
	ld.d	$s0, $a2, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	beq	$s1, $a0, .LBB4_380
# %bb.335:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i388
	srai.d	$a0, $s1, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s3, $a0, $s1
	blt	$s1, $s4, .LBB4_337
# %bb.336:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_337:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i390
	add.d	$s3, $s2, $s1
	beqz	$s0, .LBB4_339
# %bb.338:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i392
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_339:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i393
	addi.d	$a0, $s3, 4
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$s2, $a1, 0
	ld.d	$s0, $s6, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $a1, 16
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
.LBB4_340:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit394
	ld.d	$a1, $s6, 8
	ld.d	$a0, $s4, 8
	ld.d	$a2, $s4, 16
	sub.d	$a1, $a1, $s0
	srai.d	$a1, $a1, 2
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	sub.d	$s3, $a1, $a3
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	beq	$a0, $a2, .LBB4_342
# %bb.341:
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s4, 8
	b	.LBB4_348
.LBB4_342:
	ld.d	$s0, $s4, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB4_380
# %bb.343:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i396
	srai.d	$a0, $s1, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s3, $a0, $s1
	blt	$s1, $s4, .LBB4_345
# %bb.344:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_345:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i398
	add.d	$s3, $s2, $s1
	beqz	$s0, .LBB4_347
# %bb.346:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i400
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_347:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i401
	addi.d	$a0, $s3, 4
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	st.d	$s2, $s4, 0
	st.d	$a0, $s4, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $s4, 16
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
.LBB4_348:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit402
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	ld.w	$s2, $a4, 56
	ld.w	$a0, $a4, 64
	addi.w	$a1, $s2, -1
	beq	$a0, $a1, .LBB4_373
.LBB4_349:
	ld.w	$a1, $a4, 60
	ld.w	$a0, $a4, 68
	addi.w	$a1, $a1, -1
	beq	$a0, $a1, .LBB4_373
# %bb.350:
	pcalau12i	$a1, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a1, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$s3, $a1, 0
	sltui	$a1, $a0, 1
	nor	$a2, $s5, $zero
	ld.d	$a0, $s6, 8
	ld.d	$a3, $s6, 16
	ld.d	$a4, $sp, 40                    # 8-byte Folded Reload
	masknez	$a4, $a4, $a1
	maskeqz	$a1, $a2, $a1
	or	$a1, $a1, $a4
	ld.d	$a2, $sp, 0                     # 8-byte Folded Reload
	add.d	$s5, $a1, $a2
	beq	$a0, $a3, .LBB4_352
# %bb.351:
	st.w	$s5, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	b	.LBB4_358
.LBB4_352:
	ld.d	$fp, $s6, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB4_380
# %bb.353:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i412
	srai.d	$a0, $s0, 2
	ori	$s7, $zero, 1
	sltu	$a1, $s7, $a0
	masknez	$a2, $s7, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s5, $a0, $s0
	blt	$s0, $s7, .LBB4_355
# %bb.354:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_355:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i414
	add.d	$s5, $s1, $s0
	beqz	$fp, .LBB4_357
# %bb.356:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i416
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_357:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i417
	addi.d	$a0, $s5, 4
	st.d	$s1, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a0, $s4, $s1, 2
	st.d	$a0, $s6, 16
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
.LBB4_358:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit418
	ld.d	$a0, $a5, 8
	ld.d	$a1, $a5, 16
	add.d	$a2, $s2, $s3
	addi.d	$s3, $a2, 1
	beq	$a0, $a1, .LBB4_361
# %bb.359:
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a5, 8
	ld.d	$a0, $s4, 8
	ld.d	$a1, $s4, 16
	beq	$a0, $a1, .LBB4_367
.LBB4_360:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s4, 8
	b	.LBB4_373
.LBB4_361:
	ld.d	$fp, $a5, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB4_380
# %bb.362:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i420
	srai.d	$a0, $s0, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s3, $a0, $s0
	blt	$s0, $s4, .LBB4_364
# %bb.363:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_364:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i422
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB4_366
# %bb.365:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i424
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_366:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i425
	addi.d	$a0, $s3, 4
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $a1, 16
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $s4, 8
	ld.d	$a1, $s4, 16
	bne	$a0, $a1, .LBB4_360
.LBB4_367:
	ld.d	$fp, $s4, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB4_380
# %bb.368:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i428
	srai.d	$a0, $s0, 2
	ori	$s3, $zero, 1
	sltu	$a1, $s3, $a0
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s3, $a0, $s0
	blt	$s0, $s3, .LBB4_370
# %bb.369:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_370:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i430
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB4_372
# %bb.371:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i432
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_372:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i433
	addi.d	$a0, $s3, 4
	st.d	$s1, $s4, 0
	st.d	$a0, $s4, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $s4, 16
.LBB4_373:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit434
	fld.d	$fs4, $sp, 144                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 152                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 160                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 168                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 176                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 200                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 208                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 216                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 224                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 232                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 240                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 248                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 256                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 264                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 272
	ret
.LBB4_374:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s2, $a0, .LBB4_380
# %bb.375:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i404.peel
	ori	$s4, $zero, 1
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	sltu	$a0, $s4, $a2
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s3, $a0, $a1
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$fp, $a0, $s2
	blt	$s2, $s4, .LBB4_377
# %bb.376:
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_377:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i406.peel
	add.d	$s4, $s1, $s2
	ld.d	$s5, $sp, 64                    # 8-byte Folded Reload
	beqz	$s0, .LBB4_379
# %bb.378:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i408.peel
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_379:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i409.peel
	addi.d	$a0, $s4, 4
	st.d	$s1, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a1, $s3, $s1, 2
	st.d	$a1, $s6, 16
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	bnez	$s5, .LBB4_320
	b	.LBB4_331
.LBB4_380:                              # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB4_381:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end4:
	.size	_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_, .Lfunc_end4-_ZN7GenMesh11generatePieERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_ # -- Begin function _ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.p2align	5
	.type	_ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_,@function
_ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_: # @_ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.cfi_startproc
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
	fst.d	$fs0, $sp, 160                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 152                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 144                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 136                  # 8-byte Folded Spill
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
	move	$s4, $a0
	ld.w	$a0, $a0, 72
	ld.w	$t0, $s4, 76
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	st.d	$t0, $sp, 64                    # 8-byte Folded Spill
	addi.d	$t0, $t0, 1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$t0, $sp, 16                    # 8-byte Folded Spill
	mul.w	$s1, $t0, $a0
	addi.w	$a0, $zero, -1
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	bge	$a0, $s1, .LBB5_318
# %bb.1:
	move	$s3, $a4
	move	$s6, $a1
	ld.d	$fp, $a1, 16
	ld.d	$s7, $a1, 0
	sub.d	$s8, $fp, $s7
	srai.d	$a0, $s8, 4
	st.d	$a6, $sp, 32                    # 8-byte Folded Spill
	st.d	$a5, $sp, 24                    # 8-byte Folded Spill
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	bgeu	$a0, $s1, .LBB5_8
# %bb.2:                                # %_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i
	ld.d	$fp, $s6, 8
	slli.d	$a0, $s1, 4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beq	$fp, $s7, .LBB5_5
# %bb.3:                                # %.lr.ph.i.i.i.i.i.preheader
	move	$a0, $s7
	move	$a1, $s0
	.p2align	4, , 16
.LBB5_4:                                # %.lr.ph.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a0, 0
	vst	$vr0, $a1, 0
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 16
	bne	$a0, $fp, .LBB5_4
.LBB5_5:                                # %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i
	sub.d	$fp, $fp, $s7
	beqz	$s7, .LBB5_7
# %bb.6:
	move	$a0, $s7
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_7:                                # %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i
	st.d	$s0, $s6, 0
	add.d	$a0, $s0, $fp
	st.d	$a0, $s6, 8
	alsl.d	$fp, $s1, $s0, 4
	st.d	$fp, $s6, 16
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	bgez	$a0, .LBB5_9
	b	.LBB5_22
.LBB5_8:
	move	$s0, $s7
	st.d	$s4, $sp, 120                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	bltz	$a0, .LBB5_22
.LBB5_9:                                # %.lr.ph408
	bltz	$s8, .LBB5_22
# %bb.10:                               # %.lr.ph.preheader
	ld.w	$a0, $s4, 32
	move	$a1, $zero
	fld.d	$fa0, $s4, 40
	movgr2fr.w	$fa1, $a0
	ld.w	$a0, $s4, 36
	ffint.d.w	$fa1, $fa1
	fld.d	$fa2, $s4, 48
	fdiv.d	$fs0, $fa0, $fa1
	movgr2fr.w	$fa0, $a0
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fs1, $fa2, $fa0
	ld.d	$a0, $s6, 8
	addi.w	$a2, $zero, -16
	lu52i.d	$a2, $a2, 2047
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$s1, $a2, 127
	b	.LBB5_12
	.p2align	4, , 16
.LBB5_11:                               # %._crit_edge
                                        #   in Loop: Header=BB5_12 Depth=1
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	addi.w	$a1, $a3, 1
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	beq	$a3, $a2, .LBB5_22
.LBB5_12:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_14 Depth 2
                                        #       Child Loop BB5_18 Depth 3
	ld.w	$a3, $s4, 84
	move	$a2, $zero
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	add.d	$a1, $a3, $a1
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fmul.d	$fs2, $fs1, $fa0
	b	.LBB5_14
	.p2align	4, , 16
.LBB5_13:                               #   in Loop: Header=BB5_14 Depth=2
	fst.d	$fs3, $a0, 0
	fst.d	$fs2, $a0, 8
	addi.d	$a0, $a0, 16
	st.d	$a0, $s6, 8
	addi.w	$a2, $s2, 1
	beq	$s2, $s8, .LBB5_11
.LBB5_14:                               #   Parent Loop BB5_12 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_18 Depth 3
	ld.w	$a1, $s4, 80
	move	$s2, $a2
	add.d	$a1, $a1, $a2
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fmul.d	$fs3, $fs0, $fa0
	bne	$a0, $fp, .LBB5_13
# %bb.15:                               #   in Loop: Header=BB5_14 Depth=2
	sub.d	$s8, $fp, $s0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beq	$s8, $a0, .LBB5_317
# %bb.16:                               # %.noexc342
                                        #   in Loop: Header=BB5_14 Depth=2
	srai.d	$a0, $s8, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	add.d	$a0, $a0, $s8
	fstx.d	$fs3, $s7, $s8
	fst.d	$fs2, $a0, 8
	move	$s5, $s7
	beq	$s0, $fp, .LBB5_19
# %bb.17:                               # %.lr.ph.i.i.i.i.i.i.preheader
                                        #   in Loop: Header=BB5_14 Depth=2
	move	$a0, $s0
	move	$s5, $s7
	.p2align	4, , 16
.LBB5_18:                               # %.lr.ph.i.i.i.i.i.i
                                        #   Parent Loop BB5_12 Depth=1
                                        #     Parent Loop BB5_14 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a0, 0
	vst	$vr0, $s5, 0
	addi.d	$a0, $a0, 16
	addi.d	$s5, $s5, 16
	bne	$a0, $fp, .LBB5_18
.LBB5_19:                               # %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit.i.i
                                        #   in Loop: Header=BB5_14 Depth=2
	beqz	$s0, .LBB5_21
# %bb.20:                               # %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i.i.i
                                        #   in Loop: Header=BB5_14 Depth=2
	move	$a0, $s0
	move	$a1, $s8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_21:                               # %_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_.exit.i
                                        #   in Loop: Header=BB5_14 Depth=2
	addi.d	$a0, $s5, 16
	st.d	$s7, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$fp, $s4, $s7, 4
	st.d	$fp, $s6, 16
	move	$s0, $s7
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a2, $s2, 1
	bne	$s2, $s8, .LBB5_14
	b	.LBB5_11
.LBB5_22:                               # %._crit_edge409
	ld.d	$a0, $sp, 64                    # 8-byte Folded Reload
	mul.w	$fp, $a0, $s8
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bge	$a0, $fp, .LBB5_318
# %bb.23:
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $s2, 16
	ld.d	$s0, $s2, 0
	sub.d	$s6, $a0, $s0
	srai.d	$a0, $s6, 2
	bgeu	$a0, $fp, .LBB5_29
# %bb.24:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
	ld.d	$s1, $s2, 8
	sub.d	$s7, $s1, $s0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	beq	$s1, $s0, .LBB5_26
# %bb.25:
	move	$a0, $s8
	move	$a1, $s0
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_26:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
	beqz	$s0, .LBB5_28
# %bb.27:
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_28:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
	st.d	$s8, $s2, 0
	add.d	$a0, $s8, $s7
	st.d	$a0, $s2, 8
	alsl.d	$a0, $fp, $s8, 2
	st.d	$a0, $s2, 16
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
.LBB5_29:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$s0, $a1, 0
	sub.d	$s6, $a0, $s0
	srai.d	$a0, $s6, 2
	bgeu	$a0, $fp, .LBB5_35
# %bb.30:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i137
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $a0, 8
	sub.d	$s7, $s1, $s0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	beq	$s1, $s0, .LBB5_32
# %bb.31:
	move	$a0, $s8
	move	$a1, $s0
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_32:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i139
	beqz	$s0, .LBB5_34
# %bb.33:
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_34:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i141
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$s8, $a1, 0
	add.d	$a0, $s8, $s7
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s8, 2
	st.d	$a0, $a1, 16
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
.LBB5_35:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit142
	ld.d	$a0, $s3, 16
	ld.d	$s0, $s3, 0
	slli.w	$fp, $fp, 2
	sub.d	$s6, $a0, $s0
	srai.d	$a0, $s6, 2
	bgeu	$a0, $fp, .LBB5_41
# %bb.36:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i143
	ld.d	$s1, $s3, 8
	sub.d	$s7, $s1, $s0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	beq	$s1, $s0, .LBB5_38
# %bb.37:
	move	$a0, $s8
	move	$a1, $s0
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_38:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i145
	beqz	$s0, .LBB5_40
# %bb.39:
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_40:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i147
	st.d	$s8, $s3, 0
	add.d	$a0, $s8, $s7
	st.d	$a0, $s3, 8
	alsl.d	$a0, $fp, $s8, 2
	st.d	$a0, $s3, 16
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
.LBB5_41:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit148
	ld.w	$a1, $s4, 76
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB5_93
# %bb.42:                               # %.preheader.lr.ph
	ld.w	$a0, $s4, 72
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB5_93
# %bb.43:                               # %.preheader.preheader
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	ori	$s1, $zero, 1
	addi.w	$a2, $zero, -4
	lu52i.d	$a2, $a2, 2047
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$fp, $a2, 511
	move	$a2, $zero
	b	.LBB5_46
	.p2align	4, , 16
.LBB5_44:                               # %._crit_edge412.loopexit
                                        #   in Loop: Header=BB5_46 Depth=1
	ld.w	$a1, $s4, 76
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
.LBB5_45:                               # %._crit_edge412
                                        #   in Loop: Header=BB5_46 Depth=1
	addi.w	$a4, $a2, 1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a2
	move	$a2, $a4
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	bge	$a4, $a1, .LBB5_93
.LBB5_46:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_50 Depth 2
	blt	$a0, $s1, .LBB5_45
# %bb.47:                               # %.lr.ph411
                                        #   in Loop: Header=BB5_46 Depth=1
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	ld.d	$a1, $s3, 8
	move	$a0, $s8
	move	$s8, $zero
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	b	.LBB5_50
	.p2align	4, , 16
.LBB5_48:                               #   in Loop: Header=BB5_50 Depth=2
	st.w	$s4, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $s3, 8
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
.LBB5_49:                               # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit182
                                        #   in Loop: Header=BB5_50 Depth=2
	ld.d	$s2, $sp, 112                   # 8-byte Folded Reload
	ld.w	$a0, $s4, 72
	addi.w	$s8, $s8, 1
	bge	$s8, $a0, .LBB5_44
.LBB5_50:                               #   Parent Loop BB5_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s3, 0
	ld.d	$a0, $s2, 8
	ld.d	$a3, $s2, 16
	sub.d	$a1, $a1, $a2
	srai.d	$s4, $a1, 2
	beq	$a0, $a3, .LBB5_53
# %bb.51:                               #   in Loop: Header=BB5_50 Depth=2
	st.w	$s4, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s2, 8
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $s4, 8
	ld.d	$a1, $s4, 16
	beq	$a0, $a1, .LBB5_59
.LBB5_52:                               #   in Loop: Header=BB5_50 Depth=2
	ori	$a1, $zero, 4
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s4, 8
	b	.LBB5_65
	.p2align	4, , 16
.LBB5_53:                               #   in Loop: Header=BB5_50 Depth=2
	ld.d	$s0, $s2, 0
	sub.d	$s6, $a0, $s0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB5_317
# %bb.54:                               # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
                                        #   in Loop: Header=BB5_50 Depth=2
	srai.d	$a0, $s6, 2
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	stx.w	$s4, $a0, $s6
	blt	$s6, $s1, .LBB5_56
# %bb.55:                               #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s7
	move	$a1, $s0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_56:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i
                                        #   in Loop: Header=BB5_50 Depth=2
	ld.d	$s4, $sp, 88                    # 8-byte Folded Reload
	beqz	$s0, .LBB5_58
# %bb.57:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i
                                        #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_58:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i
                                        #   in Loop: Header=BB5_50 Depth=2
	add.d	$a0, $s7, $s6
	addi.d	$a0, $a0, 4
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$s7, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s7, 2
	st.d	$a0, $a1, 16
	ld.d	$a0, $s4, 8
	ld.d	$a1, $s4, 16
	bne	$a0, $a1, .LBB5_52
.LBB5_59:                               #   in Loop: Header=BB5_50 Depth=2
	ld.d	$s0, $s4, 0
	sub.d	$s6, $a0, $s0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB5_317
# %bb.60:                               # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i151
                                        #   in Loop: Header=BB5_50 Depth=2
	srai.d	$a0, $s6, 2
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	ori	$a0, $zero, 4
	stx.w	$a0, $s7, $s6
	blt	$s6, $s1, .LBB5_62
# %bb.61:                               #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s7
	move	$a1, $s0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_62:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i153
                                        #   in Loop: Header=BB5_50 Depth=2
	beqz	$s0, .LBB5_64
# %bb.63:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i155
                                        #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_64:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i156
                                        #   in Loop: Header=BB5_50 Depth=2
	add.d	$a0, $s7, $s6
	addi.d	$a0, $a0, 4
	st.d	$s7, $s4, 0
	st.d	$a0, $s4, 8
	alsl.d	$a0, $s2, $s7, 2
	st.d	$a0, $s4, 16
.LBB5_65:                               # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit157
                                        #   in Loop: Header=BB5_50 Depth=2
	ld.d	$a1, $s3, 8
	ld.d	$a0, $s3, 16
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	add.d	$s2, $a2, $s8
	beq	$a1, $a0, .LBB5_69
# %bb.66:                               #   in Loop: Header=BB5_50 Depth=2
	st.w	$s2, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $s3, 8
	addi.d	$s4, $s2, 1
	beq	$a1, $a0, .LBB5_75
.LBB5_67:                               #   in Loop: Header=BB5_50 Depth=2
	st.w	$s4, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $s3, 8
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.d	$s2, $a2, $s8
	addi.d	$s5, $s2, 2
	beq	$a1, $a0, .LBB5_81
.LBB5_68:                               #   in Loop: Header=BB5_50 Depth=2
	st.w	$s5, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $s3, 8
	addi.d	$s4, $s2, 1
	bne	$a1, $a0, .LBB5_48
	b	.LBB5_87
	.p2align	4, , 16
.LBB5_69:                               #   in Loop: Header=BB5_50 Depth=2
	ld.d	$s0, $s3, 0
	sub.d	$s6, $a1, $s0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB5_317
# %bb.70:                               # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
                                        #   in Loop: Header=BB5_50 Depth=2
	srai.d	$a0, $s6, 2
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	stx.w	$s2, $a0, $s6
	blt	$s6, $s1, .LBB5_72
# %bb.71:                               #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s7
	move	$a1, $s0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_72:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
                                        #   in Loop: Header=BB5_50 Depth=2
	beqz	$s0, .LBB5_74
# %bb.73:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i
                                        #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_74:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i
                                        #   in Loop: Header=BB5_50 Depth=2
	add.d	$a0, $s7, $s6
	addi.d	$a1, $a0, 4
	st.d	$s7, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a0, $s4, $s7, 2
	st.d	$a0, $s3, 16
	addi.d	$s4, $s2, 1
	bne	$a1, $a0, .LBB5_67
.LBB5_75:                               #   in Loop: Header=BB5_50 Depth=2
	ld.d	$s0, $s3, 0
	sub.d	$s6, $a0, $s0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB5_317
# %bb.76:                               # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i160
                                        #   in Loop: Header=BB5_50 Depth=2
	srai.d	$a0, $s6, 2
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	stx.w	$s4, $a0, $s6
	blt	$s6, $s1, .LBB5_78
# %bb.77:                               #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s7
	move	$a1, $s0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_78:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i162
                                        #   in Loop: Header=BB5_50 Depth=2
	beqz	$s0, .LBB5_80
# %bb.79:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i164
                                        #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_80:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i165
                                        #   in Loop: Header=BB5_50 Depth=2
	add.d	$a0, $s7, $s6
	addi.d	$a1, $a0, 4
	st.d	$s7, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a0, $s2, $s7, 2
	st.d	$a0, $s3, 16
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.d	$s2, $a2, $s8
	addi.d	$s5, $s2, 2
	bne	$a1, $a0, .LBB5_68
.LBB5_81:                               #   in Loop: Header=BB5_50 Depth=2
	ld.d	$s0, $s3, 0
	sub.d	$s6, $a0, $s0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB5_317
# %bb.82:                               # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i168
                                        #   in Loop: Header=BB5_50 Depth=2
	srai.d	$a0, $s6, 2
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	stx.w	$s5, $a0, $s6
	blt	$s6, $s1, .LBB5_84
# %bb.83:                               #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s7
	move	$a1, $s0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_84:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i170
                                        #   in Loop: Header=BB5_50 Depth=2
	beqz	$s0, .LBB5_86
# %bb.85:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i172
                                        #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_86:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i173
                                        #   in Loop: Header=BB5_50 Depth=2
	add.d	$a0, $s7, $s6
	addi.d	$a1, $a0, 4
	st.d	$s7, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a0, $s4, $s7, 2
	st.d	$a0, $s3, 16
	addi.d	$s4, $s2, 1
	bne	$a1, $a0, .LBB5_48
.LBB5_87:                               #   in Loop: Header=BB5_50 Depth=2
	ld.d	$s0, $s3, 0
	sub.d	$s6, $a0, $s0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB5_317
# %bb.88:                               # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i176
                                        #   in Loop: Header=BB5_50 Depth=2
	srai.d	$a0, $s6, 2
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	stx.w	$s4, $a0, $s6
	blt	$s6, $s1, .LBB5_90
# %bb.89:                               #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s7
	move	$a1, $s0
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_90:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i178
                                        #   in Loop: Header=BB5_50 Depth=2
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	beqz	$s0, .LBB5_92
# %bb.91:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i180
                                        #   in Loop: Header=BB5_50 Depth=2
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_92:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i181
                                        #   in Loop: Header=BB5_50 Depth=2
	add.d	$a0, $s7, $s6
	addi.d	$a1, $a0, 4
	st.d	$s7, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a0, $s2, $s7, 2
	st.d	$a0, $s3, 16
	b	.LBB5_49
.LBB5_93:                               # %._crit_edge414
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel5numpeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel5numpeE)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB5_316
# %bb.94:
	ld.w	$s1, $s4, 68
	ld.w	$fp, $s4, 64
	sltui	$a0, $s1, 1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	masknez	$a0, $a1, $a0
	sltui	$a1, $fp, 1
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
	masknez	$a1, $a3, $a1
	add.w	$s2, $a1, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bge	$a0, $s2, .LBB5_318
# %bb.95:
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$s4, $a1, 0
	sub.d	$s5, $a0, $s4
	srai.d	$a0, $s5, 2
	bgeu	$a0, $s2, .LBB5_101
# %bb.96:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i183
	ld.d	$s6, $a1, 8
	sub.d	$s0, $s6, $s4
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	beq	$s6, $s4, .LBB5_98
# %bb.97:
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_98:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i185
	beqz	$s4, .LBB5_100
# %bb.99:
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.w	$s1, $a0, 68
	ld.w	$fp, $a0, 64
.LBB5_100:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i187
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$s3, $a1, 0
	add.d	$a0, $s3, $s0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s3, 2
	st.d	$a0, $a1, 16
	ld.d	$a3, $sp, 16                    # 8-byte Folded Reload
.LBB5_101:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit188
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 60
	addi.w	$a0, $a0, -1
	ld.w	$a1, $a1, 56
	xor	$a0, $s1, $a0
	sltui	$a0, $a0, 1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	masknez	$a0, $a2, $a0
	addi.w	$a1, $a1, -1
	xor	$a1, $fp, $a1
	sltui	$a1, $a1, 1
	masknez	$a1, $a3, $a1
	add.w	$a0, $a1, $a0
	addi.w	$a1, $zero, -2
	bge	$a1, $a0, .LBB5_318
# %bb.102:
	ld.d	$s6, $sp, 272
	ld.d	$a1, $s6, 16
	ld.d	$s3, $s6, 0
	addi.w	$s2, $a0, 1
	sub.d	$s4, $a1, $s3
	srai.d	$a0, $s4, 2
	bgeu	$a0, $s2, .LBB5_108
# %bb.103:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i189
	ld.d	$s1, $s6, 8
	sub.d	$s0, $s1, $s3
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	beq	$s1, $s3, .LBB5_105
# %bb.104:
	move	$a0, $s5
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_105:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i191
	ld.d	$s7, $sp, 120                   # 8-byte Folded Reload
	beqz	$s3, .LBB5_107
# %bb.106:
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.w	$fp, $s7, 64
.LBB5_107:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i193
	st.d	$s5, $s6, 0
	add.d	$a0, $s5, $s0
	st.d	$a0, $s6, 8
	alsl.d	$a0, $s2, $s5, 2
	st.d	$a0, $s6, 16
	ld.w	$s1, $s7, 68
	move	$s4, $s7
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	bnez	$fp, .LBB5_109
	b	.LBB5_134
.LBB5_108:
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	beqz	$fp, .LBB5_134
.LBB5_109:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit194
	beqz	$s1, .LBB5_134
# %bb.110:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$fp, $a0, 0
	ld.d	$a0, $a3, 8
	ld.d	$a1, $a3, 16
	ld.w	$s1, $s4, 56
	beq	$a0, $a1, .LBB5_112
# %bb.111:
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	b	.LBB5_118
.LBB5_112:
	ld.d	$s3, $a3, 0
	sub.d	$s4, $a0, $s3
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB5_317
# %bb.113:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i196
	srai.d	$a0, $s4, 2
	ori	$s5, $zero, 1
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$zero, $a0, $s4
	blt	$s4, $s5, .LBB5_115
# %bb.114:
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_115:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i198
	add.d	$s5, $s0, $s4
	beqz	$s3, .LBB5_117
# %bb.116:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i200
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_117:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i201
	addi.d	$a0, $s5, 4
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	st.d	$s0, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a0, $s2, $s0, 2
	st.d	$a0, $a3, 16
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
.LBB5_118:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit202
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 8
	ld.d	$a1, $a4, 16
	nor	$a2, $s1, $zero
	add.d	$s1, $fp, $a2
	beq	$a0, $a1, .LBB5_121
# %bb.119:
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	ld.d	$a0, $s2, 8
	ld.d	$a1, $s2, 16
	beq	$a0, $a1, .LBB5_127
.LBB5_120:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s2, 8
	b	.LBB5_133
.LBB5_121:
	ld.d	$s3, $a4, 0
	sub.d	$s4, $a0, $s3
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB5_317
# %bb.122:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i204
	srai.d	$a0, $s4, 2
	ori	$s2, $zero, 1
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s1, $a0, $s4
	blt	$s4, $s2, .LBB5_124
# %bb.123:
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_124:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i206
	add.d	$s1, $s0, $s4
	beqz	$s3, .LBB5_126
# %bb.125:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i208
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_126:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i209
	addi.d	$a0, $s1, 4
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$s0, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s0, 2
	st.d	$a0, $a1, 16
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $s2, 8
	ld.d	$a1, $s2, 16
	bne	$a0, $a1, .LBB5_120
.LBB5_127:
	ld.d	$s3, $s2, 0
	sub.d	$s4, $a0, $s3
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB5_317
# %bb.128:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i212
	srai.d	$a0, $s4, 2
	ori	$s1, $zero, 1
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s1, $a0, $s4
	blt	$s4, $s1, .LBB5_130
# %bb.129:
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_130:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i214
	add.d	$s1, $s0, $s4
	beqz	$s3, .LBB5_132
# %bb.131:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i216
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_132:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i217
	addi.d	$a0, $s1, 4
	st.d	$s0, $s2, 0
	st.d	$a0, $s2, 8
	alsl.d	$a0, $fp, $s0, 2
	st.d	$a0, $s2, 16
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
.LBB5_133:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit218thread-pre-split
	ld.w	$s1, $s4, 68
.LBB5_134:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit218
	beqz	$s1, .LBB5_173
# %bb.135:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $a3, 8
	ld.d	$s3, $a3, 0
	ld.w	$a1, $a1, 0
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ld.w	$s1, $s4, 56
	sub.d	$s5, $a0, $s3
	srai.d	$a1, $s5, 2
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	bltz	$s8, .LBB5_156
# %bb.136:                              # %.lr.ph419.preheader
	ld.w	$a1, $s4, 64
	beqz	$a1, .LBB5_138
# %bb.137:
	move	$s4, $s3
	bnez	$s8, .LBB5_140
	b	.LBB5_155
.LBB5_138:
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 16
	beq	$a0, $a1, .LBB5_149
# %bb.139:
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	move	$s4, $s3
	beqz	$s8, .LBB5_155
.LBB5_140:                              # %.lr.ph419.peel.next.preheader
	move	$s2, $zero
	addi.w	$a1, $zero, -4
	lu52i.d	$s7, $a1, 2047
	ori	$s8, $zero, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$fp, $a1, 511
	b	.LBB5_142
	.p2align	4, , 16
.LBB5_141:                              #   in Loop: Header=BB5_142 Depth=1
	st.w	$s2, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	move	$s3, $s4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	beq	$a1, $s2, .LBB5_156
.LBB5_142:                              # %.lr.ph419.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 16
	addi.w	$s2, $s2, 1
	bne	$a0, $a1, .LBB5_141
# %bb.143:                              #   in Loop: Header=BB5_142 Depth=1
	sub.d	$s5, $a0, $s4
	beq	$s5, $s7, .LBB5_317
# %bb.144:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i236
                                        #   in Loop: Header=BB5_142 Depth=1
	srai.d	$a0, $s5, 2
	sltu	$a1, $s8, $a0
	masknez	$a2, $s8, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $fp
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $fp, $a1
	or	$s0, $a0, $a1
	slli.d	$a0, $s0, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	stx.w	$s2, $a0, $s5
	blt	$s5, $s8, .LBB5_146
# %bb.145:                              #   in Loop: Header=BB5_142 Depth=1
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_146:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i238
                                        #   in Loop: Header=BB5_142 Depth=1
	beqz	$s4, .LBB5_148
# %bb.147:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i240
                                        #   in Loop: Header=BB5_142 Depth=1
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_148:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i241
                                        #   in Loop: Header=BB5_142 Depth=1
	add.d	$a0, $s3, $s5
	addi.d	$a0, $a0, 4
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.d	$s3, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $s0, $s3, 2
	st.d	$a1, $a2, 16
	move	$s4, $s3
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bne	$a1, $s2, .LBB5_142
	b	.LBB5_156
.LBB5_149:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s5, $a0, .LBB5_317
# %bb.150:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i236.peel
	ori	$s0, $zero, 1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	sltu	$a0, $s0, $a2
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$zero, $a0, $s5
	blt	$s5, $s0, .LBB5_152
# %bb.151:
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_152:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i238.peel
	add.d	$s0, $s4, $s5
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	beqz	$s3, .LBB5_154
# %bb.153:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i240.peel
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_154:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i241.peel
	addi.d	$a0, $s0, 4
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.d	$s4, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $fp, $s4, 2
	st.d	$a1, $a2, 16
	bnez	$s8, .LBB5_140
.LBB5_155:
	move	$s3, $s4
.LBB5_156:                              # %._crit_edge420
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	sub.d	$s1, $a3, $s1
	beq	$a0, $a1, .LBB5_158
# %bb.157:
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	b	.LBB5_164
.LBB5_158:
	ld.d	$s3, $a2, 0
	sub.d	$s4, $a0, $s3
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	beq	$s4, $a0, .LBB5_317
# %bb.159:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i220
	srai.d	$a0, $s4, 2
	ori	$s2, $zero, 1
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s1, $a0, $s4
	blt	$s4, $s2, .LBB5_161
# %bb.160:
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_161:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i222
	add.d	$s1, $s0, $s4
	beqz	$s3, .LBB5_163
# %bb.162:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i224
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_163:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i225
	addi.d	$a0, $s1, 4
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	st.d	$s0, $a2, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s3, $a1, 0
	st.d	$a0, $a2, 8
	alsl.d	$a0, $fp, $s0, 2
	st.d	$a0, $a2, 16
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
.LBB5_164:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit226
	ld.d	$a1, $a1, 8
	ld.d	$a0, $a3, 8
	ld.d	$a2, $a3, 16
	sub.d	$a1, $a1, $s3
	srai.d	$a1, $a1, 2
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	sub.d	$s1, $a1, $a4
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	beq	$a0, $a2, .LBB5_166
# %bb.165:
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	b	.LBB5_172
.LBB5_166:
	ld.d	$s3, $a3, 0
	sub.d	$s4, $a0, $s3
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB5_317
# %bb.167:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i228
	srai.d	$a0, $s4, 2
	ori	$s2, $zero, 1
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s1, $a0, $s4
	blt	$s4, $s2, .LBB5_169
# %bb.168:
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_169:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i230
	add.d	$s1, $s0, $s4
	beqz	$s3, .LBB5_171
# %bb.170:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i232
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_171:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i233
	addi.d	$a0, $s1, 4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$s0, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s0, 2
	st.d	$a0, $a1, 16
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
.LBB5_172:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit234
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
.LBB5_173:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit234
	ld.w	$a0, $s4, 64
	beqz	$a0, .LBB5_212
# %bb.174:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $a3, 8
	ld.d	$s3, $a3, 0
	ld.w	$a1, $a1, 0
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	sub.d	$s5, $a0, $s3
	srai.d	$a1, $s5, 2
	st.d	$a1, $sp, 128                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	bltz	$s8, .LBB5_196
# %bb.175:                              # %.lr.ph425.preheader
	ld.w	$a1, $s4, 68
	beqz	$a1, .LBB5_177
# %bb.176:
	move	$s4, $s3
	bnez	$s8, .LBB5_179
	b	.LBB5_195
.LBB5_177:
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 16
	beq	$a0, $a1, .LBB5_189
# %bb.178:
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	move	$s4, $s3
	beqz	$s8, .LBB5_195
.LBB5_179:
	addi.w	$a1, $zero, -4
	lu52i.d	$s1, $a1, 2047
	ori	$s2, $zero, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$s7, $a1, 511
	ld.d	$fp, $sp, 72                    # 8-byte Folded Reload
	b	.LBB5_182
	.p2align	4, , 16
.LBB5_180:                              #   in Loop: Header=BB5_182 Depth=1
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	move	$s3, $s4
.LBB5_181:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit266
                                        #   in Loop: Header=BB5_182 Depth=1
	addi.w	$s8, $s8, -1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$fp, $fp, $a1
	beqz	$s8, .LBB5_196
.LBB5_182:                              # %.lr.ph425.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 16
	bne	$a0, $a1, .LBB5_180
# %bb.183:                              #   in Loop: Header=BB5_182 Depth=1
	sub.d	$s5, $a0, $s4
	beq	$s5, $s1, .LBB5_317
# %bb.184:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i260
                                        #   in Loop: Header=BB5_182 Depth=1
	srai.d	$a0, $s5, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s7
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$s0, $a0, $a1
	slli.d	$a0, $s0, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	stx.w	$fp, $a0, $s5
	blt	$s5, $s2, .LBB5_186
# %bb.185:                              #   in Loop: Header=BB5_182 Depth=1
	move	$a0, $s3
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_186:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i262
                                        #   in Loop: Header=BB5_182 Depth=1
	beqz	$s4, .LBB5_188
# %bb.187:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i264
                                        #   in Loop: Header=BB5_182 Depth=1
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_188:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i265
                                        #   in Loop: Header=BB5_182 Depth=1
	add.d	$a0, $s3, $s5
	addi.d	$a0, $a0, 4
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.d	$s3, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $s0, $s3, 2
	st.d	$a1, $a2, 16
	move	$s4, $s3
	b	.LBB5_181
.LBB5_189:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s5, $a0, .LBB5_317
# %bb.190:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i260.peel
	ori	$s0, $zero, 1
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	sltu	$a0, $s0, $a2
	masknez	$a1, $s0, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$zero, $a0, $s5
	blt	$s5, $s0, .LBB5_192
# %bb.191:
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_192:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i262.peel
	add.d	$s0, $s4, $s5
	ld.d	$s8, $sp, 64                    # 8-byte Folded Reload
	beqz	$s3, .LBB5_194
# %bb.193:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i264.peel
	move	$a0, $s3
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_194:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i265.peel
	addi.d	$a0, $s0, 4
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.d	$s4, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $fp, $s4, 2
	st.d	$a1, $a2, 16
	bnez	$s8, .LBB5_179
.LBB5_195:
	move	$s3, $s4
.LBB5_196:                              # %._crit_edge426
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	addi.d	$s1, $a3, -1
	beq	$a0, $a1, .LBB5_198
# %bb.197:
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	b	.LBB5_204
.LBB5_198:
	ld.d	$s3, $a2, 0
	sub.d	$s4, $a0, $s3
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB5_317
# %bb.199:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i244
	srai.d	$a0, $s4, 2
	ori	$s2, $zero, 1
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s1, $a0, $s4
	blt	$s4, $s2, .LBB5_201
# %bb.200:
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_201:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i246
	add.d	$s1, $s0, $s4
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	beqz	$s3, .LBB5_203
# %bb.202:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i248
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_203:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i249
	addi.d	$a0, $s1, 4
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	st.d	$s0, $a2, 0
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s3, $a1, 0
	st.d	$a0, $a2, 8
	alsl.d	$a0, $fp, $s0, 2
	st.d	$a0, $a2, 16
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
.LBB5_204:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit250
	ld.d	$a1, $a1, 8
	ld.d	$a0, $a3, 8
	ld.d	$a2, $a3, 16
	sub.d	$a1, $a1, $s3
	srai.d	$a1, $a1, 2
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	sub.d	$s1, $a1, $a4
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	beq	$a0, $a2, .LBB5_206
# %bb.205:
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	b	.LBB5_212
.LBB5_206:
	ld.d	$s3, $a3, 0
	sub.d	$s2, $a0, $s3
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s2, $a0, .LBB5_317
# %bb.207:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i252
	srai.d	$a0, $s2, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s1, $a0, $s2
	blt	$s2, $s4, .LBB5_209
# %bb.208:
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_209:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i254
	add.d	$s1, $s0, $s2
	beqz	$s3, .LBB5_211
# %bb.210:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i256
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_211:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i257
	addi.d	$a0, $s1, 4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$s0, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s0, 2
	st.d	$a0, $a1, 16
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
.LBB5_212:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit258
	ld.d	$s7, $sp, 264
	ld.w	$a0, $s4, 56
	ld.w	$a1, $s4, 64
	ld.d	$a2, $sp, 256
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	addi.w	$a0, $a0, -1
	beq	$a1, $a0, .LBB5_245
# %bb.213:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $s6, 8
	ld.d	$s0, $s6, 0
	ld.w	$a2, $a1, 0
	sub.d	$s2, $a0, $s0
	srai.d	$a1, $s2, 2
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	st.d	$a2, $sp, 104                   # 8-byte Folded Spill
	bltz	$a1, .LBB5_235
# %bb.214:                              # %.lr.ph431.preheader
	ld.w	$a1, $s4, 68
	beqz	$a1, .LBB5_216
# %bb.215:
	move	$s3, $s0
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	bnez	$s4, .LBB5_218
	b	.LBB5_234
.LBB5_216:
	ld.d	$a1, $s6, 16
	beq	$a0, $a1, .LBB5_228
# %bb.217:
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	move	$s3, $s0
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	beqz	$s4, .LBB5_234
.LBB5_218:                              # %.lr.ph431.peel.next.preheader
	slli.d	$a1, $s8, 1
	addi.d	$s7, $a1, 1
	addi.w	$a1, $zero, -4
	lu52i.d	$s8, $a1, 2047
	ori	$fp, $zero, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$s1, $a1, 511
	b	.LBB5_221
	.p2align	4, , 16
.LBB5_219:                              #   in Loop: Header=BB5_221 Depth=1
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	move	$s0, $s3
.LBB5_220:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit290
                                        #   in Loop: Header=BB5_221 Depth=1
	addi.w	$s4, $s4, -1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$s7, $s7, $a1
	beqz	$s4, .LBB5_235
.LBB5_221:                              # %.lr.ph431.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s6, 16
	bne	$a0, $a1, .LBB5_219
# %bb.222:                              #   in Loop: Header=BB5_221 Depth=1
	sub.d	$s2, $a0, $s3
	beq	$s2, $s8, .LBB5_317
# %bb.223:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i284
                                        #   in Loop: Header=BB5_221 Depth=1
	srai.d	$a0, $s2, 2
	sltu	$a1, $fp, $a0
	masknez	$a2, $fp, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$s5, $a0, $a1
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s7, $a0, $s2
	blt	$s2, $fp, .LBB5_225
# %bb.224:                              #   in Loop: Header=BB5_221 Depth=1
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_225:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i286
                                        #   in Loop: Header=BB5_221 Depth=1
	beqz	$s3, .LBB5_227
# %bb.226:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i288
                                        #   in Loop: Header=BB5_221 Depth=1
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_227:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i289
                                        #   in Loop: Header=BB5_221 Depth=1
	add.d	$a0, $s0, $s2
	addi.d	$a0, $a0, 4
	st.d	$s0, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a1, $s5, $s0, 2
	st.d	$a1, $s6, 16
	move	$s3, $s0
	b	.LBB5_220
.LBB5_228:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s2, $a0, .LBB5_317
# %bb.229:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i284.peel
	ori	$s1, $zero, 1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	sltu	$a0, $s1, $a2
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	stx.w	$s8, $a0, $s2
	blt	$s2, $s1, .LBB5_231
# %bb.230:
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_231:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i286.peel
	add.d	$s1, $s3, $s2
	beqz	$s0, .LBB5_233
# %bb.232:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i288.peel
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_233:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i289.peel
	addi.d	$a0, $s1, 4
	st.d	$s3, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a1, $fp, $s3, 2
	st.d	$a1, $s6, 16
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	bnez	$s4, .LBB5_218
.LBB5_234:
	move	$s0, $s3
.LBB5_235:                              # %._crit_edge432
	ld.d	$a2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	addi.d	$s1, $a3, 1
	beq	$a0, $a1, .LBB5_237
# %bb.236:
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	b	.LBB5_243
.LBB5_237:
	ld.d	$s0, $a2, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 96                    # 8-byte Folded Reload
	beq	$s3, $a0, .LBB5_317
# %bb.238:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i268
	srai.d	$a0, $s3, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s1, $a0, $s3
	blt	$s3, $s4, .LBB5_240
# %bb.239:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_240:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i270
	add.d	$s1, $s2, $s3
	beqz	$s0, .LBB5_242
# %bb.241:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i272
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_242:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i273
	addi.d	$a0, $s1, 4
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$s2, $a1, 0
	ld.d	$s0, $s6, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $a1, 16
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
.LBB5_243:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit274
	ld.d	$a1, $s6, 8
	ld.d	$a0, $s7, 8
	ld.d	$a2, $s7, 16
	sub.d	$a1, $a1, $s0
	srai.d	$a1, $a1, 2
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	sub.d	$s1, $a1, $a3
	beq	$a0, $a2, .LBB5_250
# %bb.244:
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s7, 8
.LBB5_245:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit282
	ld.w	$a0, $s4, 60
	ld.w	$a1, $s4, 68
	addi.w	$a0, $a0, -1
	beq	$a1, $a0, .LBB5_285
.LBB5_246:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $s6, 8
	ld.d	$s0, $s6, 0
	ld.w	$a4, $a1, 0
	ld.w	$a5, $s4, 56
	sub.d	$s2, $a0, $s0
	srai.d	$a1, $s2, 2
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	st.d	$a4, $sp, 104                   # 8-byte Folded Spill
	st.d	$a5, $sp, 88                    # 8-byte Folded Spill
	bltz	$s8, .LBB5_249
# %bb.247:                              # %.lr.ph437.preheader
	ld.w	$a1, $s4, 64
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	mul.d	$fp, $a2, $a3
	beqz	$a1, .LBB5_256
# %bb.248:
	move	$s3, $s0
	move	$s5, $s7
	bnez	$s8, .LBB5_258
	b	.LBB5_274
.LBB5_249:
	move	$s5, $s7
	b	.LBB5_275
.LBB5_250:
	ld.d	$s0, $s7, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s3, $a0, .LBB5_317
# %bb.251:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i276
	srai.d	$a0, $s3, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s1, $a0, $s3
	blt	$s3, $s4, .LBB5_253
# %bb.252:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_253:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i278
	add.d	$s1, $s2, $s3
	beqz	$s0, .LBB5_255
# %bb.254:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i280
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_255:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i281
	addi.d	$a0, $s1, 4
	st.d	$s2, $s7, 0
	st.d	$a0, $s7, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $s7, 16
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $s4, 60
	ld.w	$a1, $s4, 68
	addi.w	$a0, $a0, -1
	bne	$a1, $a0, .LBB5_246
	b	.LBB5_285
.LBB5_256:
	ld.d	$a1, $s6, 16
	beq	$a0, $a1, .LBB5_268
# %bb.257:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	move	$s3, $s0
	move	$s5, $s7
	beqz	$s8, .LBB5_274
.LBB5_258:                              # %.lr.ph437.peel.next.preheader
	addi.d	$s8, $fp, 1
	addi.w	$a1, $zero, -4
	lu52i.d	$fp, $a1, 2047
	ori	$s1, $zero, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$s7, $a1, 511
	b	.LBB5_261
	.p2align	4, , 16
.LBB5_259:                              #   in Loop: Header=BB5_261 Depth=1
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	move	$s0, $s3
.LBB5_260:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit314
                                        #   in Loop: Header=BB5_261 Depth=1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a1, $a1, -1
	addi.d	$s8, $s8, 1
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	beqz	$a1, .LBB5_275
.LBB5_261:                              # %.lr.ph437.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s6, 16
	bne	$a0, $a1, .LBB5_259
# %bb.262:                              #   in Loop: Header=BB5_261 Depth=1
	sub.d	$s2, $a0, $s3
	beq	$s2, $fp, .LBB5_317
# %bb.263:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i308
                                        #   in Loop: Header=BB5_261 Depth=1
	srai.d	$a0, $s2, 2
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s7
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s7, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s8, $a0, $s2
	blt	$s2, $s1, .LBB5_265
# %bb.264:                              #   in Loop: Header=BB5_261 Depth=1
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_265:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i310
                                        #   in Loop: Header=BB5_261 Depth=1
	beqz	$s3, .LBB5_267
# %bb.266:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i312
                                        #   in Loop: Header=BB5_261 Depth=1
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_267:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i313
                                        #   in Loop: Header=BB5_261 Depth=1
	add.d	$a0, $s0, $s2
	addi.d	$a0, $a0, 4
	st.d	$s0, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a1, $s4, $s0, 2
	st.d	$a1, $s6, 16
	move	$s3, $s0
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	b	.LBB5_260
.LBB5_268:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s2, $a0, .LBB5_317
# %bb.269:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i308.peel
	ori	$s4, $zero, 1
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	sltu	$a0, $s4, $a2
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	stx.w	$fp, $a0, $s2
	blt	$s2, $s4, .LBB5_271
# %bb.270:
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_271:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i310.peel
	add.d	$s4, $s3, $s2
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	beqz	$s0, .LBB5_273
# %bb.272:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i312.peel
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_273:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i313.peel
	addi.d	$a0, $s4, 4
	st.d	$s3, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a1, $s1, $s3, 2
	st.d	$a1, $s6, 16
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	move	$s5, $s7
	bnez	$s8, .LBB5_258
.LBB5_274:
	move	$s0, $s3
.LBB5_275:                              # %._crit_edge438
	ld.d	$s8, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $s8, 8
	ld.d	$a1, $s8, 16
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	add.d	$s3, $a3, $a2
	beq	$a0, $a1, .LBB5_277
# %bb.276:
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s8, 8
	move	$s7, $s5
	b	.LBB5_283
.LBB5_277:
	ld.d	$s0, $s8, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB5_317
# %bb.278:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i292
	move	$s7, $s5
	srai.d	$a0, $s1, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s3, $a0, $s1
	blt	$s1, $s4, .LBB5_280
# %bb.279:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_280:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i294
	add.d	$s3, $s2, $s1
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	beqz	$s0, .LBB5_282
# %bb.281:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i296
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_282:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i297
	addi.d	$a0, $s3, 4
	st.d	$s2, $s8, 0
	ld.d	$s0, $s6, 0
	st.d	$a0, $s8, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $s8, 16
.LBB5_283:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit298
	ld.d	$a1, $s6, 8
	ld.d	$a0, $s7, 8
	ld.d	$a2, $s7, 16
	sub.d	$a1, $a1, $s0
	srai.d	$a1, $a1, 2
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	sub.d	$s3, $a1, $a3
	beq	$a0, $a2, .LBB5_289
# %bb.284:
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s7, 8
.LBB5_285:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit306
	ld.w	$s2, $s4, 56
	ld.w	$a0, $s4, 64
	addi.w	$a1, $s2, -1
	beq	$a0, $a1, .LBB5_316
.LBB5_286:
	ld.w	$a0, $s4, 60
	ld.w	$a1, $s4, 68
	addi.w	$a0, $a0, -1
	beq	$a1, $a0, .LBB5_316
# %bb.287:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $s6, 8
	ld.d	$a2, $s6, 16
	ld.w	$s3, $a1, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	addi.d	$s5, $a1, -1
	beq	$a0, $a2, .LBB5_295
# %bb.288:
	st.w	$s5, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	b	.LBB5_301
.LBB5_289:
	ld.d	$s0, $s7, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB5_317
# %bb.290:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i300
	srai.d	$a0, $s1, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s3, $a0, $s1
	blt	$s1, $s4, .LBB5_292
# %bb.291:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_292:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i302
	add.d	$s3, $s2, $s1
	beqz	$s0, .LBB5_294
# %bb.293:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i304
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_294:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i305
	addi.d	$a0, $s3, 4
	st.d	$s2, $s7, 0
	st.d	$a0, $s7, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $s7, 16
	ld.d	$s4, $sp, 120                   # 8-byte Folded Reload
	ld.w	$s2, $s4, 56
	ld.w	$a0, $s4, 64
	addi.w	$a1, $s2, -1
	bne	$a0, $a1, .LBB5_286
	b	.LBB5_316
.LBB5_295:
	ld.d	$fp, $s6, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB5_317
# %bb.296:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i316
	move	$s8, $s7
	srai.d	$a0, $s0, 2
	ori	$s7, $zero, 1
	sltu	$a1, $s7, $a0
	masknez	$a2, $s7, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s5, $a0, $s0
	blt	$s0, $s7, .LBB5_298
# %bb.297:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_298:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i318
	add.d	$s5, $s1, $s0
	move	$s7, $s8
	beqz	$fp, .LBB5_300
# %bb.299:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i320
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_300:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i321
	addi.d	$a0, $s5, 4
	st.d	$s1, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a0, $s4, $s1, 2
	st.d	$a0, $s6, 16
.LBB5_301:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit322
	ld.d	$s5, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $s5, 8
	ld.d	$a1, $s5, 16
	add.d	$a2, $s2, $s3
	addi.d	$s3, $a2, 1
	beq	$a0, $a1, .LBB5_304
# %bb.302:
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s5, 8
	ld.d	$a0, $s7, 8
	ld.d	$a1, $s7, 16
	beq	$a0, $a1, .LBB5_310
.LBB5_303:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s7, 8
	b	.LBB5_316
.LBB5_304:
	ld.d	$fp, $s5, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB5_317
# %bb.305:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i324
	srai.d	$a0, $s0, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s3, $a0, $s0
	blt	$s0, $s4, .LBB5_307
# %bb.306:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_307:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i326
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB5_309
# %bb.308:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i328
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_309:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i329
	addi.d	$a0, $s3, 4
	st.d	$s1, $s5, 0
	st.d	$a0, $s5, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $s5, 16
	ld.d	$a0, $s7, 8
	ld.d	$a1, $s7, 16
	bne	$a0, $a1, .LBB5_303
.LBB5_310:
	ld.d	$fp, $s7, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB5_317
# %bb.311:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i332
	srai.d	$a0, $s0, 2
	ori	$s3, $zero, 1
	sltu	$a1, $s3, $a0
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s3, $a0, $s0
	blt	$s0, $s3, .LBB5_313
# %bb.312:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_313:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i334
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB5_315
# %bb.314:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i336
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_315:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i337
	addi.d	$a0, $s3, 4
	st.d	$s1, $s7, 0
	st.d	$a0, $s7, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $s7, 16
.LBB5_316:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit338
	fld.d	$fs3, $sp, 136                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 144                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 152                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 160                  # 8-byte Folded Reload
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
.LBB5_317:                              # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB5_318:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end5:
	.size	_ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_, .Lfunc_end5-_ZN7GenMesh12generateRectERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.cfi_endproc
                                        # -- End function
	.globl	_ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_ # -- Begin function _ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.p2align	5
	.type	_ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_,@function
_ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_: # @_ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, DW.ref.__gxx_personality_v0
	.cfi_lsda 27, .Lexception1
# %bb.0:
	addi.d	$sp, $sp, -352
	.cfi_def_cfa_offset 352
	st.d	$ra, $sp, 344                   # 8-byte Folded Spill
	st.d	$fp, $sp, 336                   # 8-byte Folded Spill
	st.d	$s0, $sp, 328                   # 8-byte Folded Spill
	st.d	$s1, $sp, 320                   # 8-byte Folded Spill
	st.d	$s2, $sp, 312                   # 8-byte Folded Spill
	st.d	$s3, $sp, 304                   # 8-byte Folded Spill
	st.d	$s4, $sp, 296                   # 8-byte Folded Spill
	st.d	$s5, $sp, 288                   # 8-byte Folded Spill
	st.d	$s6, $sp, 280                   # 8-byte Folded Spill
	st.d	$s7, $sp, 272                   # 8-byte Folded Spill
	st.d	$s8, $sp, 264                   # 8-byte Folded Spill
	fst.d	$fs0, $sp, 256                  # 8-byte Folded Spill
	fst.d	$fs1, $sp, 248                  # 8-byte Folded Spill
	fst.d	$fs2, $sp, 240                  # 8-byte Folded Spill
	fst.d	$fs3, $sp, 232                  # 8-byte Folded Spill
	fst.d	$fs4, $sp, 224                  # 8-byte Folded Spill
	fst.d	$fs5, $sp, 216                  # 8-byte Folded Spill
	fst.d	$fs6, $sp, 208                  # 8-byte Folded Spill
	fst.d	$fs7, $sp, 200                  # 8-byte Folded Spill
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
	move	$s7, $a0
	ld.w	$a0, $a0, 72
	ld.w	$s4, $s7, 76
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	addi.w	$a0, $a0, 1
	addi.w	$s6, $s4, 1
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	mul.d	$a0, $a0, $s6
	slli.w	$s1, $a0, 1
	addi.w	$s5, $zero, -1
	st.d	$a7, $sp, 80                    # 8-byte Folded Spill
	st.d	$a6, $sp, 48                    # 8-byte Folded Spill
	st.d	$a5, $sp, 56                    # 8-byte Folded Spill
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	st.d	$a3, $sp, 192                   # 8-byte Folded Spill
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	bge	$s5, $s1, .LBB6_516
# %bb.1:
	move	$s8, $a1
	ld.d	$s2, $a1, 16
	ld.d	$fp, $a1, 0
	ld.d	$a0, $sp, 368
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	ld.d	$s3, $sp, 360
	ld.d	$a0, $sp, 352
	st.d	$a0, $sp, 32                    # 8-byte Folded Spill
	sub.d	$s0, $s2, $fp
	srai.d	$a0, $s0, 4
	bgeu	$a0, $s1, .LBB6_8
# %bb.2:                                # %_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i
	ld.d	$s2, $s8, 8
	slli.d	$a0, $s1, 4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	beq	$s2, $fp, .LBB6_5
# %bb.3:                                # %.lr.ph.i.i.i.i.i.preheader
	move	$a0, $fp
	move	$a1, $a2
	.p2align	4, , 16
.LBB6_4:                                # %.lr.ph.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a0, 0
	vst	$vr0, $a1, 0
	addi.d	$a0, $a0, 16
	addi.d	$a1, $a1, 16
	bne	$a0, $s2, .LBB6_4
.LBB6_5:                                # %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i
	sub.d	$s2, $s2, $fp
	beqz	$fp, .LBB6_7
# %bb.6:
	move	$a0, $fp
	move	$a1, $s0
	move	$fp, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a2, $fp
.LBB6_7:                                # %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i
	st.d	$a2, $s8, 0
	add.d	$a0, $a2, $s2
	st.d	$a0, $s8, 8
	alsl.d	$s2, $s1, $a2, 4
	st.d	$s2, $s8, 16
	b	.LBB6_9
.LBB6_8:
	move	$a2, $fp
.LBB6_9:                                # %_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit
	addi.w	$a0, $zero, -2
	bge	$a0, $s4, .LBB6_517
# %bb.10:                               # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
	st.d	$s3, $sp, 24                    # 8-byte Folded Spill
	st.d	$s5, $sp, 184                   # 8-byte Folded Spill
	st.d	$s4, $sp, 64                    # 8-byte Folded Spill
	st.d	$s6, $sp, 88                    # 8-byte Folded Spill
	beqz	$s6, .LBB6_72
# %bb.11:                               # %.noexc296
	move	$s0, $a2
	ld.w	$a0, $s7, 32
	fld.d	$fa0, $s7, 40
	addi.d	$a0, $a0, -1
	movgr2fr.w	$fa1, $a0
	ld.w	$a0, $s7, 36
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fs0, $fa0, $fa1
	fld.d	$fa0, $s7, 48
	addi.d	$a0, $a0, -1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 160                  # 8-byte Folded Spill
	slli.d	$fp, $s6, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s6, $a0
	st.w	$zero, $a0, 0
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	beqz	$s4, .LBB6_13
# %bb.12:                               # %.lr.ph.i.preheader.i.i.i.i.i
	addi.d	$a0, $s6, 4
	addi.d	$a2, $fp, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB6_13:                               # %.lr.ph1041
	move	$a4, $zero
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $s6, 2
	st.d	$a0, $sp, 16                    # 8-byte Folded Spill
	vldi	$vr0, -1000
	fdiv.d	$fs2, $fs0, $fa0
	fld.d	$fa1, $sp, 160                  # 8-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 152                  # 8-byte Folded Spill
	ld.d	$a3, $s8, 8
	vldi	$vr3, -800
	movgr2fr.d	$fs4, $zero
	move	$a2, $s0
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	b	.LBB6_15
	.p2align	4, , 16
.LBB6_14:                               # %._crit_edge
                                        #   in Loop: Header=BB6_15 Depth=1
	addi.d	$a4, $a4, 1
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	beq	$a4, $a0, .LBB6_71
.LBB6_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_21 Depth 2
                                        #       Child Loop BB6_54 Depth 3
                                        #       Child Loop BB6_62 Depth 3
                                        #       Child Loop BB6_70 Depth 3
                                        #       Child Loop BB6_49 Depth 3
                                        #       Child Loop BB6_33 Depth 3
	sub.d	$a0, $a3, $a2
	srli.d	$a0, $a0, 4
	slli.d	$a1, $a4, 2
	stx.w	$a0, $s6, $a1
	bltz	$s3, .LBB6_14
# %bb.16:                               # %.lr.ph
                                        #   in Loop: Header=BB6_15 Depth=1
	ld.w	$a1, $s7, 84
	move	$a0, $zero
	add.d	$a1, $a1, $a4
	movgr2fr.w	$fa0, $a1
	addi.w	$a5, $a1, 0
	fld.d	$fa1, $s7, 48
	ffint.d.w	$fa0, $fa0
	fadd.d	$fa0, $fa0, $fa3
	fld.d	$fa2, $sp, 160                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa2, $fa0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa1, $fa0, $fcc0
	fmax.d	$fs5, $fa0, $fs4
	fld.d	$fa0, $sp, 152                  # 8-byte Folded Reload
	fadd.d	$fs6, $fa0, $fs5
	fsub.d	$fs7, $fs5, $fa0
	move	$s4, $a2
	st.d	$a4, $sp, 176                   # 8-byte Folded Spill
	move	$s6, $a5
	b	.LBB6_21
	.p2align	4, , 16
.LBB6_17:                               #   in Loop: Header=BB6_21 Depth=2
	beq	$a3, $s2, .LBB6_29
# %bb.18:                               #   in Loop: Header=BB6_21 Depth=2
	fst.d	$fs1, $a3, 0
	fst.d	$fs5, $a3, 8
.LBB6_19:                               # %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit
                                        #   in Loop: Header=BB6_21 Depth=2
	addi.d	$a3, $a3, 16
	st.d	$a3, $s8, 8
	move	$a2, $s4
.LBB6_20:                               # %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit
                                        #   in Loop: Header=BB6_21 Depth=2
	addi.w	$a0, $s0, 1
	move	$s4, $a2
	beq	$s0, $s3, .LBB6_14
.LBB6_21:                               #   Parent Loop BB6_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_54 Depth 3
                                        #       Child Loop BB6_62 Depth 3
                                        #       Child Loop BB6_70 Depth 3
                                        #       Child Loop BB6_49 Depth 3
                                        #       Child Loop BB6_33 Depth 3
	ld.w	$a1, $s7, 80
	move	$s0, $a0
	add.d	$a1, $a1, $a0
	addi.w	$a0, $a1, 0
	movgr2fr.w	$fa0, $a1
	fld.d	$fa1, $s7, 40
	ffint.d.w	$fa0, $fa0
	fadd.d	$fa0, $fa0, $fa3
	fmul.d	$fa0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa1, $fa0, $fcc0
	fmax.d	$fs1, $fa0, $fs4
	beqz	$a0, .LBB6_17
# %bb.22:                               #   in Loop: Header=BB6_21 Depth=2
	ld.w	$a1, $s7, 32
	beq	$a0, $a1, .LBB6_17
# %bb.23:                               #   in Loop: Header=BB6_21 Depth=2
	beqz	$a5, .LBB6_17
# %bb.24:                               #   in Loop: Header=BB6_21 Depth=2
	ld.w	$a0, $s7, 36
	beq	$a5, $a0, .LBB6_17
# %bb.25:                               #   in Loop: Header=BB6_21 Depth=2
	bnez	$a4, .LBB6_38
# %bb.26:                               #   in Loop: Header=BB6_21 Depth=2
	ld.w	$a0, $s7, 72
	bne	$s0, $a0, .LBB6_38
# %bb.27:                               #   in Loop: Header=BB6_21 Depth=2
	fsub.d	$fs1, $fs1, $fs2
	beq	$a3, $s2, .LBB6_45
# %bb.28:                               #   in Loop: Header=BB6_21 Depth=2
	fst.d	$fs1, $a3, 0
	fst.d	$fs6, $a3, 8
	b	.LBB6_19
	.p2align	4, , 16
.LBB6_29:                               #   in Loop: Header=BB6_21 Depth=2
	sub.d	$fp, $s2, $s4
	addi.w	$a0, $zero, -16
	lu52i.d	$a0, $a0, 2047
	beq	$fp, $a0, .LBB6_504
# %bb.30:                               #   in Loop: Header=BB6_21 Depth=2
	srai.d	$a0, $fp, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	lu52i.d	$a1, $s5, 127
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 4
.Ltmp58:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp59:
# %bb.31:                               # %.noexc663
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a2, $a0
	add.d	$a0, $a0, $fp
	fstx.d	$fs1, $a2, $fp
	fst.d	$fs5, $a0, 8
	move	$s3, $a2
	beq	$s4, $s2, .LBB6_34
# %bb.32:                               # %.lr.ph.i.i.i.i.i.i.preheader
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a0, $s4
	move	$s3, $a2
	.p2align	4, , 16
.LBB6_33:                               # %.lr.ph.i.i.i.i.i.i
                                        #   Parent Loop BB6_15 Depth=1
                                        #     Parent Loop BB6_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a0, 0
	vst	$vr0, $s3, 0
	addi.d	$a0, $a0, 16
	addi.d	$s3, $s3, 16
	bne	$a0, $s2, .LBB6_33
.LBB6_34:                               # %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit.i.i
                                        #   in Loop: Header=BB6_21 Depth=2
	beqz	$s4, .LBB6_36
# %bb.35:                               # %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i.i.i
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a0, $s4
	move	$a1, $fp
	move	$fp, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a2, $fp
.LBB6_36:                               # %_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_.exit.i
                                        #   in Loop: Header=BB6_21 Depth=2
	addi.d	$a3, $s3, 16
	st.d	$a2, $s8, 0
	st.d	$a3, $s8, 8
	alsl.d	$s2, $s1, $a2, 4
.LBB6_37:                               # %_ZNSt6vectorI7double2SaIS0_EE9push_backEOS0_.exit
                                        #   in Loop: Header=BB6_21 Depth=2
	st.d	$s2, $s8, 16
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	vldi	$vr3, -800
	move	$a5, $s6
	b	.LBB6_20
.LBB6_38:                               #   in Loop: Header=BB6_21 Depth=2
	bnez	$s0, .LBB6_42
# %bb.39:                               #   in Loop: Header=BB6_21 Depth=2
	ld.wu	$a0, $s7, 76
	bne	$a4, $a0, .LBB6_42
# %bb.40:                               #   in Loop: Header=BB6_21 Depth=2
	fadd.d	$fs1, $fs2, $fs1
	beq	$a3, $s2, .LBB6_66
# %bb.41:                               #   in Loop: Header=BB6_21 Depth=2
	fst.d	$fs1, $a3, 0
	fst.d	$fs7, $a3, 8
	b	.LBB6_19
.LBB6_42:                               #   in Loop: Header=BB6_21 Depth=2
	fsub.d	$fs3, $fs1, $fs2
	beq	$a3, $s2, .LBB6_50
# %bb.43:                               #   in Loop: Header=BB6_21 Depth=2
	fst.d	$fs3, $a3, 0
	fst.d	$fs6, $a3, 8
	addi.d	$a0, $a3, 16
	st.d	$a0, $s8, 8
	move	$s1, $s4
	fadd.d	$fs1, $fs2, $fs1
	beq	$a0, $s2, .LBB6_58
.LBB6_44:                               #   in Loop: Header=BB6_21 Depth=2
	fst.d	$fs1, $a0, 0
	fst.d	$fs7, $a0, 8
	addi.d	$a3, $a0, 16
	st.d	$a3, $s8, 8
	move	$a2, $s1
	b	.LBB6_20
.LBB6_45:                               #   in Loop: Header=BB6_21 Depth=2
	sub.d	$fp, $s2, $s4
	addi.w	$a0, $zero, -16
	lu52i.d	$a0, $a0, 2047
	beq	$fp, $a0, .LBB6_506
# %bb.46:                               #   in Loop: Header=BB6_21 Depth=2
	srai.d	$a0, $fp, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	lu52i.d	$a1, $s5, 127
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 4
.Ltmp52:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp53:
# %bb.47:                               # %.noexc677
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a2, $a0
	add.d	$a0, $a0, $fp
	fstx.d	$fs1, $a2, $fp
	fst.d	$fs6, $a0, 8
	move	$s3, $a2
	beq	$s4, $s2, .LBB6_34
# %bb.48:                               # %.lr.ph.i.i.i.i.i.i667.preheader
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a0, $s4
	move	$s3, $a2
	.p2align	4, , 16
.LBB6_49:                               # %.lr.ph.i.i.i.i.i.i667
                                        #   Parent Loop BB6_15 Depth=1
                                        #     Parent Loop BB6_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a0, 0
	vst	$vr0, $s3, 0
	addi.d	$a0, $a0, 16
	addi.d	$s3, $s3, 16
	bne	$a0, $s2, .LBB6_49
	b	.LBB6_34
.LBB6_50:                               #   in Loop: Header=BB6_21 Depth=2
	sub.d	$fp, $s2, $s4
	addi.w	$a0, $zero, -16
	lu52i.d	$a0, $a0, 2047
	beq	$fp, $a0, .LBB6_508
# %bb.51:                               #   in Loop: Header=BB6_21 Depth=2
	srai.d	$a0, $fp, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	lu52i.d	$a1, $s5, 127
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s3, $a0, $a1
	slli.d	$a0, $s3, 4
.Ltmp34:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp35:
# %bb.52:                               # %.noexc707
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$s1, $a0
	add.d	$a0, $a0, $fp
	fstx.d	$fs3, $s1, $fp
	fst.d	$fs6, $a0, 8
	move	$s5, $s1
	beq	$s4, $s2, .LBB6_55
# %bb.53:                               # %.lr.ph.i.i.i.i.i.i697.preheader
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a0, $s4
	move	$s5, $s1
	.p2align	4, , 16
.LBB6_54:                               # %.lr.ph.i.i.i.i.i.i697
                                        #   Parent Loop BB6_15 Depth=1
                                        #     Parent Loop BB6_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a0, 0
	vst	$vr0, $s5, 0
	addi.d	$a0, $a0, 16
	addi.d	$s5, $s5, 16
	bne	$a0, $s2, .LBB6_54
.LBB6_55:                               # %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit.i.i701
                                        #   in Loop: Header=BB6_21 Depth=2
	beqz	$s4, .LBB6_57
# %bb.56:                               # %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i.i.i704
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a0, $s4
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_57:                               # %_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_.exit.i705
                                        #   in Loop: Header=BB6_21 Depth=2
	addi.d	$a0, $s5, 16
	st.d	$s1, $s8, 0
	st.d	$a0, $s8, 8
	alsl.d	$s2, $s3, $s1, 4
	st.d	$s2, $s8, 16
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	vldi	$vr3, -800
	move	$a5, $s6
	fadd.d	$fs1, $fs2, $fs1
	bne	$a0, $s2, .LBB6_44
.LBB6_58:                               #   in Loop: Header=BB6_21 Depth=2
	sub.d	$fp, $s2, $s1
	addi.w	$a0, $zero, -16
	lu52i.d	$a0, $a0, 2047
	beq	$fp, $a0, .LBB6_510
# %bb.59:                               #   in Loop: Header=BB6_21 Depth=2
	srai.d	$a0, $fp, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	lu52i.d	$a1, $s5, 127
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s3, $a0, $a1
	slli.d	$a0, $s3, 4
.Ltmp37:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp38:
# %bb.60:                               # %.noexc722
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a2, $a0
	add.d	$a0, $a0, $fp
	fstx.d	$fs1, $a2, $fp
	fst.d	$fs7, $a0, 8
	move	$s4, $a2
	beq	$s1, $s2, .LBB6_63
# %bb.61:                               # %.lr.ph.i.i.i.i.i.i712.preheader
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a0, $s1
	move	$s4, $a2
	.p2align	4, , 16
.LBB6_62:                               # %.lr.ph.i.i.i.i.i.i712
                                        #   Parent Loop BB6_15 Depth=1
                                        #     Parent Loop BB6_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a0, 0
	vst	$vr0, $s4, 0
	addi.d	$a0, $a0, 16
	addi.d	$s4, $s4, 16
	bne	$a0, $s2, .LBB6_62
.LBB6_63:                               # %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit.i.i716
                                        #   in Loop: Header=BB6_21 Depth=2
	beqz	$s1, .LBB6_65
# %bb.64:                               # %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i.i.i719
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a0, $s1
	move	$a1, $fp
	move	$fp, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a2, $fp
.LBB6_65:                               # %_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_.exit.i720
                                        #   in Loop: Header=BB6_21 Depth=2
	addi.d	$a3, $s4, 16
	st.d	$a2, $s8, 0
	st.d	$a3, $s8, 8
	alsl.d	$s2, $s3, $a2, 4
	b	.LBB6_37
.LBB6_66:                               #   in Loop: Header=BB6_21 Depth=2
	sub.d	$fp, $s2, $s4
	addi.w	$a0, $zero, -16
	lu52i.d	$a0, $a0, 2047
	beq	$fp, $a0, .LBB6_512
# %bb.67:                               #   in Loop: Header=BB6_21 Depth=2
	srai.d	$a0, $fp, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	lu52i.d	$a1, $s5, 127
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 4
.Ltmp46:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp47:
# %bb.68:                               # %.noexc692
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a2, $a0
	add.d	$a0, $a0, $fp
	fstx.d	$fs1, $a2, $fp
	fst.d	$fs7, $a0, 8
	move	$s3, $a2
	beq	$s4, $s2, .LBB6_34
# %bb.69:                               # %.lr.ph.i.i.i.i.i.i682.preheader
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a0, $s4
	move	$s3, $a2
	.p2align	4, , 16
.LBB6_70:                               # %.lr.ph.i.i.i.i.i.i682
                                        #   Parent Loop BB6_15 Depth=1
                                        #     Parent Loop BB6_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a0, 0
	vst	$vr0, $s3, 0
	addi.d	$a0, $a0, 16
	addi.d	$s3, $s3, 16
	bne	$a0, $s2, .LBB6_70
	b	.LBB6_34
.LBB6_71:
	st.d	$a3, $sp, 0                     # 8-byte Folded Spill
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$s4, $sp, 64                    # 8-byte Folded Reload
	mul.w	$s3, $s4, $s3
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	bgez	$s3, .LBB6_73
	b	.LBB6_514
.LBB6_72:                               # %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.._crit_edge1042_crit_edge
	st.d	$a2, $sp, 8                     # 8-byte Folded Spill
	ld.d	$a0, $s8, 8
	st.d	$a0, $sp, 0                     # 8-byte Folded Spill
	move	$s6, $zero
	st.d	$zero, $sp, 16                  # 8-byte Folded Spill
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	mul.w	$s3, $s4, $s3
	st.d	$s6, $sp, 104                   # 8-byte Folded Spill
	bltz	$s3, .LBB6_514
.LBB6_73:
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$fp, $a1, 0
	sub.d	$s0, $a0, $fp
	srai.d	$a0, $s0, 2
	bgeu	$a0, $s3, .LBB6_80
# %bb.74:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s4, $a0, 8
	slli.d	$a0, $s3, 2
.Ltmp64:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp65:
# %bb.75:                               # %.noexc298
	move	$s1, $a0
	sub.d	$s2, $s4, $fp
	beq	$s4, $fp, .LBB6_77
# %bb.76:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_77:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
	beqz	$fp, .LBB6_79
# %bb.78:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_79:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	add.d	$a0, $s1, $s2
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s3, $s1, 2
	st.d	$a0, $a1, 16
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
.LBB6_80:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$fp, $a1, 0
	sub.d	$s0, $a0, $fp
	srai.d	$a0, $s0, 2
	bgeu	$a0, $s3, .LBB6_87
# %bb.81:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i311
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s4, $a0, 8
	slli.d	$a0, $s3, 2
.Ltmp66:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp67:
# %bb.82:                               # %.noexc317
	move	$s1, $a0
	sub.d	$s2, $s4, $fp
	beq	$s4, $fp, .LBB6_84
# %bb.83:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_84:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i313
	beqz	$fp, .LBB6_86
# %bb.85:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_86:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i315
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	add.d	$a0, $s1, $s2
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s3, $s1, 2
	st.d	$a0, $a1, 16
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
.LBB6_87:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit318
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$fp, $a1, 0
	slli.d	$a1, $s3, 2
	alsl.w	$s3, $s3, $a1, 1
	sub.d	$s0, $a0, $fp
	srai.d	$a0, $s0, 2
	bgeu	$a0, $s3, .LBB6_94
# %bb.88:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i319
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s4, $a0, 8
	slli.d	$a0, $s3, 2
.Ltmp68:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp69:
# %bb.89:                               # %.noexc325
	move	$s1, $a0
	sub.d	$s2, $s4, $fp
	beq	$s4, $fp, .LBB6_91
# %bb.90:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_91:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i321
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	beqz	$fp, .LBB6_93
# %bb.92:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_93:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i323
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	add.d	$a0, $s1, $s2
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s3, $s1, 2
	st.d	$a0, $a1, 16
.LBB6_94:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit326
	ld.w	$a0, $s7, 76
	ori	$a5, $zero, 1
	st.d	$s7, $sp, 160                   # 8-byte Folded Spill
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	blt	$a0, $a5, .LBB6_155
# %bb.95:                               # %.lr.ph1049
	move	$a6, $zero
	b	.LBB6_98
	.p2align	4, , 16
.LBB6_96:                               # %.loopexit985.loopexit
                                        #   in Loop: Header=BB6_98 Depth=1
	ld.w	$a0, $s7, 76
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ori	$a5, $zero, 1
	ld.d	$a6, $sp, 96                    # 8-byte Folded Reload
.LBB6_97:                               # %.loopexit985
                                        #   in Loop: Header=BB6_98 Depth=1
	bge	$a6, $a0, .LBB6_155
.LBB6_98:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_104 Depth 2
                                        #       Child Loop BB6_142 Depth 3
                                        #       Child Loop BB6_144 Depth 3
	move	$a1, $a6
	ld.w	$a2, $s7, 84
	slli.d	$a3, $a6, 2
	ldx.w	$s3, $s6, $a3
	addi.d	$a6, $a6, 1
	slli.d	$a3, $a6, 2
	ld.w	$a4, $s7, 64
	ldx.w	$s4, $s6, $a3
	add.w	$s5, $a2, $a1
	blt	$a4, $a5, .LBB6_100
# %bb.99:                               #   in Loop: Header=BB6_98 Depth=1
	slt	$a2, $zero, $s5
	add.w	$s3, $s3, $a2
	addi.w	$a2, $a0, -1
	slt	$a1, $a1, $a2
	add.w	$s4, $s4, $a1
.LBB6_100:                              #   in Loop: Header=BB6_98 Depth=1
	ld.w	$a1, $s7, 72
	blt	$a1, $a5, .LBB6_97
# %bb.101:                              # %.lr.ph1047
                                        #   in Loop: Header=BB6_98 Depth=1
	st.d	$a6, $sp, 96                    # 8-byte Folded Spill
	move	$s6, $zero
	addi.d	$a0, $s4, 1
	st.d	$a0, $sp, 112                   # 8-byte Folded Spill
	addi.d	$a0, $s3, 1
	st.d	$a0, $sp, 120                   # 8-byte Folded Spill
	st.d	$s3, $sp, 152                   # 8-byte Folded Spill
	st.d	$s4, $sp, 144                   # 8-byte Folded Spill
	st.d	$s5, $sp, 176                   # 8-byte Folded Spill
	b	.LBB6_104
	.p2align	4, , 16
.LBB6_102:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i728
                                        #   in Loop: Header=BB6_104 Depth=2
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.d	$s0, $a1, 0
	st.d	$fp, $a1, 8
	alsl.d	$a0, $s7, $s0, 2
	move	$s0, $a1
	st.d	$a0, $a1, 16
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
.LBB6_103:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit
                                        #   in Loop: Header=BB6_104 Depth=2
	ori	$a1, $zero, 24
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a0, $s7, 72
	addi.w	$s6, $s6, 1
	ld.d	$s3, $sp, 152                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 144                   # 8-byte Folded Reload
	bge	$s6, $a0, .LBB6_96
.LBB6_104:                              #   Parent Loop BB6_98 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_142 Depth 3
                                        #       Child Loop BB6_144 Depth 3
	ld.w	$fp, $s7, 80
.Ltmp70:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp71:
# %bb.105:                              #   in Loop: Header=BB6_104 Depth=2
	move	$s8, $a0
	add.w	$a2, $fp, $s6
	addi.d	$s2, $a0, 24
	addi.d	$a0, $a0, 4
	alsl.d	$a1, $s6, $s3, 1
	st.w	$a1, $s8, 4
	addi.d	$a3, $a1, -1
	st.w	$a3, $s8, 0
	addi.d	$a1, $a1, 1
	st.w	$a1, $s8, 8
	alsl.d	$a3, $s6, $s4, 1
	addi.d	$a1, $s8, 20
	st.w	$a3, $s8, 20
	addi.d	$a4, $a3, 1
	st.w	$a4, $s8, 16
	addi.d	$a3, $a3, 2
	st.w	$a3, $s8, 12
	beqz	$s5, .LBB6_109
# %bb.106:                              #   in Loop: Header=BB6_104 Depth=2
	ld.w	$a3, $s7, 36
	addi.w	$a3, $a3, -1
	bne	$s5, $a3, .LBB6_113
# %bb.107:                              #   in Loop: Header=BB6_104 Depth=2
	add.d	$a3, $s6, $s4
	st.w	$a3, $s8, 20
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	add.d	$a4, $s6, $a4
	st.w	$a4, $s8, 12
	st.w	$a3, $s8, 16
	move	$s2, $a1
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	bnez	$a2, .LBB6_117
# %bb.108:                              #   in Loop: Header=BB6_104 Depth=2
	vld	$vr0, $a0, 0
	addi.d	$s2, $s8, 16
	vst	$vr0, $s8, 0
	b	.LBB6_117
	.p2align	4, , 16
.LBB6_109:                              #   in Loop: Header=BB6_104 Depth=2
	ld.w	$a4, $s7, 32
	add.d	$a3, $s6, $s3
	st.w	$a3, $s8, 0
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	add.d	$a3, $s6, $a3
	addi.w	$a4, $a4, -1
	st.w	$a3, $s8, 8
	bne	$a2, $a4, .LBB6_111
# %bb.110:                              #   in Loop: Header=BB6_104 Depth=2
	ld.d	$a2, $s8, 16
	st.d	$a2, $s8, 12
	move	$s2, $a1
.LBB6_111:                              #   in Loop: Header=BB6_104 Depth=2
	addi.d	$a1, $s8, 8
	sub.d	$a2, $s2, $a1
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	ori	$a4, $zero, 5
	blt	$a2, $a4, .LBB6_152
# %bb.112:                              #   in Loop: Header=BB6_104 Depth=2
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	addi.d	$s2, $s2, -4
	b	.LBB6_117
	.p2align	4, , 16
.LBB6_113:                              #   in Loop: Header=BB6_104 Depth=2
	beqz	$a2, .LBB6_116
# %bb.114:                              #   in Loop: Header=BB6_104 Depth=2
	ld.w	$a0, $s7, 32
	addi.w	$a0, $a0, -1
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	bne	$a2, $a0, .LBB6_117
# %bb.115:                              #   in Loop: Header=BB6_104 Depth=2
	ld.d	$a0, $s8, 16
	st.d	$a0, $s8, 12
	move	$s2, $a1
	b	.LBB6_117
.LBB6_116:                              #   in Loop: Header=BB6_104 Depth=2
	ld.w	$a2, $a0, 16
	vld	$vr0, $a0, 0
	st.w	$a2, $s8, 16
	vst	$vr0, $s8, 0
	move	$s2, $a1
	ld.d	$s7, $sp, 136                   # 8-byte Folded Reload
	.p2align	4, , 16
.LBB6_117:                              #   in Loop: Header=BB6_104 Depth=2
	ld.d	$a1, $s0, 8
	ld.d	$a2, $s0, 0
	ld.d	$a0, $s7, 8
	ld.d	$a3, $s7, 16
	sub.d	$a1, $a1, $a2
	srai.d	$s4, $a1, 2
	beq	$a0, $a3, .LBB6_119
# %bb.118:                              #   in Loop: Header=BB6_104 Depth=2
	st.w	$s4, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s7, 8
	b	.LBB6_126
	.p2align	4, , 16
.LBB6_119:                              #   in Loop: Header=BB6_104 Depth=2
	ld.d	$s0, $s7, 0
	sub.d	$fp, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$fp, $a0, .LBB6_498
# %bb.120:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
                                        #   in Loop: Header=BB6_104 Depth=2
	srai.d	$a0, $fp, 2
	ori	$s5, $zero, 1
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s3, $a0, $a1
	slli.d	$a0, $s3, 2
.Ltmp73:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp74:
# %bb.121:                              # %.noexc351
                                        #   in Loop: Header=BB6_104 Depth=2
	move	$s1, $a0
	stx.w	$s4, $a0, $fp
	blt	$fp, $s5, .LBB6_123
# %bb.122:                              #   in Loop: Header=BB6_104 Depth=2
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_123:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i
                                        #   in Loop: Header=BB6_104 Depth=2
	beqz	$s0, .LBB6_125
# %bb.124:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i
                                        #   in Loop: Header=BB6_104 Depth=2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_125:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i
                                        #   in Loop: Header=BB6_104 Depth=2
	add.d	$a0, $s1, $fp
	addi.d	$a0, $a0, 4
	st.d	$s1, $s7, 0
	st.d	$a0, $s7, 8
	alsl.d	$a0, $s3, $s1, 2
	st.d	$a0, $s7, 16
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
.LBB6_126:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
                                        #   in Loop: Header=BB6_104 Depth=2
	ld.d	$a0, $s1, 8
	ld.d	$a1, $s1, 16
	sub.d	$s4, $s2, $s8
	srai.d	$s7, $s4, 2
	beq	$a0, $a1, .LBB6_128
# %bb.127:                              #   in Loop: Header=BB6_104 Depth=2
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s1, 8
	bne	$s8, $s2, .LBB6_135
	b	.LBB6_103
	.p2align	4, , 16
.LBB6_128:                              #   in Loop: Header=BB6_104 Depth=2
	ld.d	$s0, $s1, 0
	sub.d	$fp, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$fp, $a0, .LBB6_500
# %bb.129:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i353
                                        #   in Loop: Header=BB6_104 Depth=2
	srai.d	$a0, $fp, 2
	ori	$s5, $zero, 1
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s3, $a0, $a1
	slli.d	$a0, $s3, 2
.Ltmp76:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp77:
# %bb.130:                              # %.noexc360
                                        #   in Loop: Header=BB6_104 Depth=2
	move	$s1, $a0
	stx.w	$s7, $a0, $fp
	blt	$fp, $s5, .LBB6_132
# %bb.131:                              #   in Loop: Header=BB6_104 Depth=2
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_132:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i355
                                        #   in Loop: Header=BB6_104 Depth=2
	beqz	$s0, .LBB6_134
# %bb.133:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i357
                                        #   in Loop: Header=BB6_104 Depth=2
	move	$a0, $s0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_134:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i358
                                        #   in Loop: Header=BB6_104 Depth=2
	add.d	$a0, $s1, $fp
	addi.d	$a0, $a0, 4
	ld.d	$a1, $sp, 192                   # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s3, $s1, 2
	move	$s1, $a1
	st.d	$a0, $a1, 16
	ld.d	$s0, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	beq	$s8, $s2, .LBB6_103
.LBB6_135:                              #   in Loop: Header=BB6_104 Depth=2
	ld.d	$s2, $s0, 8
	ld.d	$s3, $s0, 16
	sub.d	$a0, $s3, $s2
	bgeu	$a0, $s4, .LBB6_149
# %bb.136:                              #   in Loop: Header=BB6_104 Depth=2
	ld.d	$s1, $s0, 0
	sub.d	$s5, $s2, $s1
	srai.d	$a1, $s5, 2
	ld.d	$a0, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a0, $a0, 511
	sub.d	$a2, $a0, $a1
	bltu	$a2, $s7, .LBB6_502
# %bb.137:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i727
                                        #   in Loop: Header=BB6_104 Depth=2
	sltu	$a2, $s7, $a1
	masknez	$a3, $s7, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a0
	maskeqz	$a1, $a1, $a2
	masknez	$a0, $a0, $a2
	or	$s7, $a1, $a0
	slli.d	$a0, $s7, 2
.Ltmp79:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp80:
# %bb.138:                              # %.noexc730
                                        #   in Loop: Header=BB6_104 Depth=2
	move	$s0, $a0
	move	$fp, $a0
	beq	$s1, $s2, .LBB6_145
# %bb.139:                              # %.lr.ph.i.i.i.i63.i.preheader
                                        #   in Loop: Header=BB6_104 Depth=2
	addi.d	$a1, $s5, -4
	move	$a0, $s1
	move	$fp, $s0
	ori	$a2, $zero, 28
	bltu	$a1, $a2, .LBB6_144
# %bb.140:                              # %.lr.ph.i.i.i.i63.i.preheader
                                        #   in Loop: Header=BB6_104 Depth=2
	sub.d	$a2, $s0, $s1
	move	$a0, $s1
	move	$fp, $s0
	ori	$a3, $zero, 32
	bltu	$a2, $a3, .LBB6_144
# %bb.141:                              # %vector.ph
                                        #   in Loop: Header=BB6_104 Depth=2
	srli.d	$a0, $a1, 2
	addi.d	$a1, $a0, 1
	bstrpick.d	$a0, $a1, 62, 3
	slli.d	$a2, $a0, 3
	slli.d	$a3, $a0, 5
	add.d	$a0, $s1, $a3
	add.d	$fp, $s0, $a3
	addi.d	$a3, $s0, 16
	addi.d	$a4, $s1, 16
	move	$a5, $a2
	.p2align	4, , 16
.LBB6_142:                              # %vector.body
                                        #   Parent Loop BB6_98 Depth=1
                                        #     Parent Loop BB6_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a4, -16
	vld	$vr1, $a4, 0
	vst	$vr0, $a3, -16
	vst	$vr1, $a3, 0
	addi.d	$a3, $a3, 32
	addi.d	$a5, $a5, -8
	addi.d	$a4, $a4, 32
	bnez	$a5, .LBB6_142
# %bb.143:                              # %middle.block
                                        #   in Loop: Header=BB6_104 Depth=2
	beq	$a1, $a2, .LBB6_145
	.p2align	4, , 16
.LBB6_144:                              # %.lr.ph.i.i.i.i63.i
                                        #   Parent Loop BB6_98 Depth=1
                                        #     Parent Loop BB6_104 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	ld.w	$a1, $a0, 0
	st.w	$a1, $fp, 0
	addi.d	$a0, $a0, 4
	addi.d	$fp, $fp, 4
	bne	$a0, $s2, .LBB6_144
.LBB6_145:                              # %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit.i
                                        #   in Loop: Header=BB6_104 Depth=2
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB6_147
# %bb.146:                              #   in Loop: Header=BB6_104 Depth=2
	move	$a0, $fp
	move	$a1, $s8
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	add.d	$fp, $fp, $s4
.LBB6_147:                              # %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit76.i
                                        #   in Loop: Header=BB6_104 Depth=2
	ld.d	$s5, $sp, 176                   # 8-byte Folded Reload
	beqz	$s1, .LBB6_102
# %bb.148:                              #   in Loop: Header=BB6_104 Depth=2
	sub.d	$a1, $s3, $s1
	move	$a0, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB6_102
	.p2align	4, , 16
.LBB6_149:                              # %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
                                        #   in Loop: Header=BB6_104 Depth=2
	ori	$a0, $zero, 1
	blt	$s4, $a0, .LBB6_151
# %bb.150:                              #   in Loop: Header=BB6_104 Depth=2
	move	$a0, $s2
	move	$a1, $s8
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 8
.LBB6_151:                              # %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit59.i
                                        #   in Loop: Header=BB6_104 Depth=2
	ld.d	$s1, $sp, 192                   # 8-byte Folded Reload
	add.d	$a0, $s2, $s4
	st.d	$a0, $s0, 8
	b	.LBB6_103
.LBB6_152:                              #   in Loop: Header=BB6_104 Depth=2
	ori	$a1, $zero, 4
	bne	$a2, $a1, .LBB6_154
# %bb.153:                              #   in Loop: Header=BB6_104 Depth=2
	st.w	$a3, $a0, 0
.LBB6_154:                              #   in Loop: Header=BB6_104 Depth=2
	addi.d	$s2, $s2, -4
	b	.LBB6_117
.LBB6_155:                              # %._crit_edge1050
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel5numpeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel5numpeE)
	ld.w	$a0, $a0, 0
	beq	$a0, $a5, .LBB6_435
# %bb.156:
	ld.w	$s4, $s7, 68
	ld.w	$s3, $s7, 64
	sltu	$a0, $zero, $s4
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	sltu	$a1, $zero, $s3
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	mul.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 1
	alsl.w	$s5, $a0, $a1, 1
	bltz	$s5, .LBB6_514
# %bb.157:
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$s0, $a1, 0
	sub.d	$s1, $a0, $s0
	srai.d	$a0, $s1, 2
	bgeu	$a0, $s5, .LBB6_164
# %bb.158:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i365
	ld.d	$s6, $a1, 8
	slli.d	$a0, $s5, 2
.Ltmp85:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp86:
# %bb.159:                              # %.noexc371
	move	$fp, $a0
	sub.d	$s2, $s6, $s0
	beq	$s6, $s0, .LBB6_161
# %bb.160:
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_161:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i367
	beqz	$s0, .LBB6_163
# %bb.162:
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.w	$s4, $s7, 68
	ld.w	$s3, $s7, 64
.LBB6_163:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i369
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$fp, $a1, 0
	add.d	$a0, $fp, $s2
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s5, $fp, 2
	st.d	$a0, $a1, 16
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
.LBB6_164:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit372
	ld.w	$a0, $s7, 60
	addi.w	$a0, $a0, -1
	ld.w	$a1, $s7, 56
	xor	$a0, $s4, $a0
	sltu	$a0, $zero, $a0
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a2
	addi.w	$a1, $a1, -1
	xor	$a1, $s3, $a1
	sltu	$a1, $zero, $a1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	mul.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 1
	alsl.w	$a2, $a0, $a1, 1
	addi.w	$a3, $zero, -3
	bge	$a3, $a2, .LBB6_514
# %bb.165:
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $a3, 16
	ld.d	$fp, $a3, 0
	alsl.d	$a0, $a0, $a1, 1
	addi.w	$s5, $a0, 2
	sub.d	$s0, $a2, $fp
	srai.d	$a0, $s0, 2
	bgeu	$a0, $s5, .LBB6_172
# %bb.166:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i373
	ld.d	$s4, $a3, 8
	slli.d	$a0, $s5, 2
.Ltmp87:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp88:
# %bb.167:                              # %.noexc379
	move	$s1, $a0
	sub.d	$s2, $s4, $fp
	beq	$s4, $fp, .LBB6_169
# %bb.168:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_169:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i375
	beqz	$fp, .LBB6_171
# %bb.170:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.w	$s3, $s7, 64
.LBB6_171:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i377
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	st.d	$s1, $a3, 0
	add.d	$a0, $s1, $s2
	st.d	$a0, $a3, 8
	alsl.d	$a0, $s5, $s1, 2
	st.d	$a0, $a3, 16
	ld.w	$s4, $s7, 68
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
.LBB6_172:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit380
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	beqz	$s3, .LBB6_209
# %bb.173:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit380
	beqz	$s4, .LBB6_209
# %bb.174:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$s2, $a0, 0
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 8
	ld.d	$a0, $a2, 16
	ld.w	$s3, $s7, 56
	beq	$a1, $a0, .LBB6_177
# %bb.175:
	st.w	$zero, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $a2, 8
	beq	$a1, $a0, .LBB6_184
.LBB6_176:
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 0
	addi.d	$a0, $a1, 4
	st.d	$a0, $a2, 8
	b	.LBB6_191
.LBB6_177:
	ld.d	$fp, $a2, 0
	sub.d	$s0, $a1, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB6_550
# %bb.178:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i382
	srai.d	$a0, $s0, 2
	ori	$s5, $zero, 1
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
.Ltmp89:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp90:
# %bb.179:                              # %.noexc389
	move	$s1, $a0
	stx.w	$zero, $a0, $s0
	blt	$s0, $s5, .LBB6_181
# %bb.180:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_181:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i384
	add.d	$s5, $s1, $s0
	beqz	$fp, .LBB6_183
# %bb.182:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i386
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_183:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i387
	addi.d	$a1, $s5, 4
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.d	$s1, $a2, 0
	st.d	$a1, $a2, 8
	alsl.d	$a0, $s4, $s1, 2
	st.d	$a0, $a2, 16
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB6_176
.LBB6_184:
	ld.d	$fp, $a2, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB6_552
# %bb.185:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i392
	srai.d	$a0, $s0, 2
	ori	$s5, $zero, 1
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
.Ltmp91:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp92:
# %bb.186:                              # %.noexc399
	move	$s1, $a0
	stx.w	$s5, $a0, $s0
	blt	$s0, $s5, .LBB6_188
# %bb.187:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_188:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i394
	add.d	$s5, $s1, $s0
	beqz	$fp, .LBB6_190
# %bb.189:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i396
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_190:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i397
	addi.d	$a0, $s5, 4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s4, $s1, 2
	st.d	$a0, $a1, 16
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
.LBB6_191:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit400
	ld.d	$a4, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 8
	ld.d	$a1, $a4, 16
	nor	$a2, $s3, $zero
	add.d	$s3, $s2, $a2
	beq	$a0, $a1, .LBB6_194
# %bb.192:
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	beq	$a0, $a1, .LBB6_201
.LBB6_193:
	ori	$a1, $zero, 2
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	b	.LBB6_208
.LBB6_194:
	ld.d	$fp, $a4, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB6_554
# %bb.195:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
	srai.d	$a0, $s0, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	lu52i.d	$a1, $s5, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
.Ltmp93:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp94:
# %bb.196:                              # %.noexc404
	move	$s1, $a0
	stx.w	$s3, $a0, $s0
	blt	$s0, $s4, .LBB6_198
# %bb.197:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_198:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB6_200
# %bb.199:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_200:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i
	addi.d	$a0, $s3, 4
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $a1, 16
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	bne	$a0, $a1, .LBB6_193
.LBB6_201:
	ld.d	$fp, $a2, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB6_556
# %bb.202:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i406
	srai.d	$a0, $s0, 2
	ori	$s3, $zero, 1
	sltu	$a1, $s3, $a0
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	lu52i.d	$a1, $s5, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
.Ltmp95:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp96:
# %bb.203:                              # %.noexc413
	move	$s1, $a0
	ori	$a0, $zero, 2
	stx.w	$a0, $s1, $s0
	blt	$s0, $s3, .LBB6_205
# %bb.204:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_205:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i408
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB6_207
# %bb.206:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i410
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_207:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i411
	addi.d	$a0, $s3, 4
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $a1, 16
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
.LBB6_208:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit414thread-pre-split
	ld.w	$s4, $s7, 68
.LBB6_209:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit414
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	beqz	$s4, .LBB6_264
# %bb.210:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$s4, $a2, 0
	ld.w	$a2, $a1, 0
	ld.w	$a4, $s7, 56
	sub.d	$fp, $a0, $s4
	srai.d	$a1, $fp, 2
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	st.d	$a4, $sp, 168                   # 8-byte Folded Spill
	bltz	$s3, .LBB6_245
# %bb.211:                              # %.lr.ph1055.preheader
	ld.w	$a1, $s7, 64
	ori	$s6, $zero, 2
	beqz	$a1, .LBB6_242
# %bb.212:
	move	$s5, $s4
	beqz	$s3, .LBB6_244
.LBB6_213:                              # %.lr.ph1055.peel.next.preheader
	move	$s7, $zero
	addi.w	$a1, $zero, -4
	lu52i.d	$s8, $a1, 2047
	ori	$s2, $zero, 1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$s1, $a1, 511
	b	.LBB6_216
	.p2align	4, , 16
.LBB6_214:                              #   in Loop: Header=BB6_216 Depth=1
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	ori	$a1, $zero, 2
	move	$s4, $fp
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
.LBB6_215:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit434
                                        #   in Loop: Header=BB6_216 Depth=1
	add.d	$s6, $s6, $a1
	move	$s5, $s4
	beq	$s3, $s7, .LBB6_245
.LBB6_216:                              # %.lr.ph1055.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a2, $a1, 72
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a4, 16
	addi.w	$s7, $s7, 1
	bne	$s7, $a2, .LBB6_219
# %bb.217:                              #   in Loop: Header=BB6_216 Depth=1
	beq	$a0, $a1, .LBB6_221
# %bb.218:                              #   in Loop: Header=BB6_216 Depth=1
	st.w	$s6, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	ori	$a1, $zero, 1
	move	$s4, $s5
	b	.LBB6_215
	.p2align	4, , 16
.LBB6_219:                              #   in Loop: Header=BB6_216 Depth=1
	beq	$a0, $a1, .LBB6_228
# %bb.220:                              #   in Loop: Header=BB6_216 Depth=1
	st.w	$s6, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	move	$fp, $s5
	addi.d	$s3, $s6, 1
	bne	$a0, $a1, .LBB6_214
	b	.LBB6_235
.LBB6_221:                              #   in Loop: Header=BB6_216 Depth=1
	sub.d	$fp, $a0, $s5
	beq	$fp, $s8, .LBB6_518
# %bb.222:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i426
                                        #   in Loop: Header=BB6_216 Depth=1
	srai.d	$a0, $fp, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$s0, $a0, $a1
	slli.d	$a0, $s0, 2
.Ltmp124:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp125:
# %bb.223:                              # %.noexc433
                                        #   in Loop: Header=BB6_216 Depth=1
	move	$s4, $a0
	stx.w	$s6, $a0, $fp
	blt	$fp, $s2, .LBB6_225
# %bb.224:                              #   in Loop: Header=BB6_216 Depth=1
	move	$a0, $s4
	move	$a1, $s5
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_225:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i428
                                        #   in Loop: Header=BB6_216 Depth=1
	beqz	$s5, .LBB6_227
# %bb.226:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i430
                                        #   in Loop: Header=BB6_216 Depth=1
	move	$a0, $s5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_227:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i431
                                        #   in Loop: Header=BB6_216 Depth=1
	add.d	$a0, $s4, $fp
	addi.d	$a0, $a0, 4
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.d	$s4, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $s0, $s4, 2
	st.d	$a1, $a2, 16
	ori	$a1, $zero, 1
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	b	.LBB6_215
.LBB6_228:                              #   in Loop: Header=BB6_216 Depth=1
	sub.d	$s0, $a0, $s5
	beq	$s0, $s8, .LBB6_524
# %bb.229:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i436
                                        #   in Loop: Header=BB6_216 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
.Ltmp112:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp113:
# %bb.230:                              # %.noexc443
                                        #   in Loop: Header=BB6_216 Depth=1
	move	$fp, $a0
	stx.w	$s6, $a0, $s0
	blt	$s0, $s2, .LBB6_232
# %bb.231:                              #   in Loop: Header=BB6_216 Depth=1
	move	$a0, $fp
	move	$a1, $s5
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_232:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i438
                                        #   in Loop: Header=BB6_216 Depth=1
	beqz	$s5, .LBB6_234
# %bb.233:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i440
                                        #   in Loop: Header=BB6_216 Depth=1
	move	$a0, $s5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_234:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i441
                                        #   in Loop: Header=BB6_216 Depth=1
	add.d	$a0, $fp, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	st.d	$fp, $a4, 0
	st.d	$a0, $a4, 8
	alsl.d	$a1, $s4, $fp, 2
	st.d	$a1, $a4, 16
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	addi.d	$s3, $s6, 1
	bne	$a0, $a1, .LBB6_214
.LBB6_235:                              #   in Loop: Header=BB6_216 Depth=1
	sub.d	$s0, $a1, $fp
	beq	$s0, $s8, .LBB6_522
# %bb.236:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i446
                                        #   in Loop: Header=BB6_216 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s1
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s1, $a1
	or	$s5, $a0, $a1
	slli.d	$a0, $s5, 2
.Ltmp115:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp116:
# %bb.237:                              # %.noexc453
                                        #   in Loop: Header=BB6_216 Depth=1
	move	$s4, $a0
	stx.w	$s3, $a0, $s0
	blt	$s0, $s2, .LBB6_239
# %bb.238:                              #   in Loop: Header=BB6_216 Depth=1
	move	$a0, $s4
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_239:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i448
                                        #   in Loop: Header=BB6_216 Depth=1
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	beqz	$fp, .LBB6_241
# %bb.240:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i450
                                        #   in Loop: Header=BB6_216 Depth=1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_241:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i451
                                        #   in Loop: Header=BB6_216 Depth=1
	add.d	$a0, $s4, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.d	$s4, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $s5, $s4, 2
	st.d	$a1, $a2, 16
	ori	$a1, $zero, 2
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	b	.LBB6_215
.LBB6_242:
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 16
	beq	$a0, $a1, .LBB6_469
# %bb.243:
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ori	$s6, $zero, 1
	move	$s5, $s4
	bnez	$s3, .LBB6_213
.LBB6_244:
	move	$s4, $s5
.LBB6_245:                              # %._crit_edge1056
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	sub.d	$s3, $a4, $a5
	beq	$a0, $a1, .LBB6_247
# %bb.246:
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	b	.LBB6_254
.LBB6_247:
	ld.d	$fp, $a2, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB6_542
# %bb.248:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i416
	srai.d	$a0, $s0, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a1, $s5, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
.Ltmp130:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp131:
# %bb.249:                              # %.noexc423
	move	$s1, $a0
	stx.w	$s3, $a0, $s0
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	blt	$s0, $s4, .LBB6_251
# %bb.250:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_251:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i418
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB6_253
# %bb.252:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i420
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_253:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i421
	addi.d	$a0, $s3, 4
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	st.d	$s1, $a2, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $a1, 0
	st.d	$a0, $a2, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $a2, 16
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
.LBB6_254:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit424
	ld.d	$a1, $a1, 8
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 8
	ld.d	$a2, $a4, 16
	sub.d	$a1, $a1, $s4
	srai.d	$a1, $a1, 2
	ld.d	$a5, $sp, 192                   # 8-byte Folded Reload
	sub.d	$s3, $a1, $a5
	beq	$a0, $a2, .LBB6_256
# %bb.255:
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	b	.LBB6_263
.LBB6_256:
	ld.d	$fp, $a4, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB6_544
# %bb.257:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i456
	srai.d	$a0, $s0, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	lu52i.d	$a1, $s5, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
.Ltmp132:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp133:
# %bb.258:                              # %.noexc463
	move	$s1, $a0
	stx.w	$s3, $a0, $s0
	blt	$s0, $s4, .LBB6_260
# %bb.259:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_260:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i458
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB6_262
# %bb.261:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i460
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_262:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i461
	addi.d	$a0, $s3, 4
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $a1, 16
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
.LBB6_263:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit464
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
.LBB6_264:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit464
	ld.w	$a0, $s7, 64
	beqz	$a0, .LBB6_320
# %bb.265:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$s4, $a2, 0
	ld.w	$a2, $a1, 0
	sub.d	$fp, $a0, $s4
	srai.d	$a1, $fp, 2
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a2, $sp, 168                   # 8-byte Folded Spill
	beqz	$a1, .LBB6_301
# %bb.266:                              # %.lr.ph1060.preheader
	ld.w	$a1, $s7, 68
	beqz	$a1, .LBB6_298
# %bb.267:
	move	$s5, $s4
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	beqz	$a1, .LBB6_300
.LBB6_268:                              # %.lr.ph1060.peel.next.preheader
	bstrpick.d	$s3, $s3, 31, 0
	ori	$s6, $zero, 1
	ori	$s7, $zero, 4
	addi.w	$a1, $zero, -4
	lu52i.d	$a1, $a1, 2047
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$s2, $a1, 511
	ori	$s1, $zero, 1
	b	.LBB6_271
	.p2align	4, , 16
.LBB6_269:                              #   in Loop: Header=BB6_271 Depth=1
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	move	$s4, $fp
.LBB6_270:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit484
                                        #   in Loop: Header=BB6_271 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$s7, $s7, 4
	move	$s5, $s4
	beq	$s3, $s1, .LBB6_301
.LBB6_271:                              # %.lr.ph1060.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ldx.w	$s8, $a1, $s7
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.wu	$a2, $a1, 76
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a4, 16
	bne	$s1, $a2, .LBB6_274
# %bb.272:                              #   in Loop: Header=BB6_271 Depth=1
	beq	$a0, $a1, .LBB6_276
# %bb.273:                              #   in Loop: Header=BB6_271 Depth=1
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	move	$s4, $s5
	b	.LBB6_270
	.p2align	4, , 16
.LBB6_274:                              #   in Loop: Header=BB6_271 Depth=1
	beq	$a0, $a1, .LBB6_283
# %bb.275:                              #   in Loop: Header=BB6_271 Depth=1
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	move	$fp, $s5
	addi.d	$s8, $s8, 1
	bne	$a0, $a1, .LBB6_269
	b	.LBB6_290
.LBB6_276:                              #   in Loop: Header=BB6_271 Depth=1
	sub.d	$fp, $a0, $s5
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beq	$fp, $a0, .LBB6_520
# %bb.277:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i476
                                        #   in Loop: Header=BB6_271 Depth=1
	srai.d	$a0, $fp, 2
	sltu	$a1, $s6, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$s0, $a0, $a1
	slli.d	$a0, $s0, 2
.Ltmp155:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp156:
# %bb.278:                              # %.noexc483
                                        #   in Loop: Header=BB6_271 Depth=1
	move	$s4, $a0
	stx.w	$s8, $a0, $fp
	blt	$fp, $s6, .LBB6_280
# %bb.279:                              #   in Loop: Header=BB6_271 Depth=1
	move	$a0, $s4
	move	$a1, $s5
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_280:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i478
                                        #   in Loop: Header=BB6_271 Depth=1
	beqz	$s5, .LBB6_282
# %bb.281:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i480
                                        #   in Loop: Header=BB6_271 Depth=1
	move	$a0, $s5
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_282:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i481
                                        #   in Loop: Header=BB6_271 Depth=1
	add.d	$a0, $s4, $fp
	addi.d	$a0, $a0, 4
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.d	$s4, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $s0, $s4, 2
	b	.LBB6_297
.LBB6_283:                              #   in Loop: Header=BB6_271 Depth=1
	sub.d	$s0, $a0, $s5
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB6_528
# %bb.284:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i486
                                        #   in Loop: Header=BB6_271 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s6, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
.Ltmp143:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp144:
# %bb.285:                              # %.noexc493
                                        #   in Loop: Header=BB6_271 Depth=1
	move	$fp, $a0
	stx.w	$s8, $a0, $s0
	blt	$s0, $s6, .LBB6_287
# %bb.286:                              #   in Loop: Header=BB6_271 Depth=1
	move	$a0, $fp
	move	$a1, $s5
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_287:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i488
                                        #   in Loop: Header=BB6_271 Depth=1
	beqz	$s5, .LBB6_289
# %bb.288:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i490
                                        #   in Loop: Header=BB6_271 Depth=1
	move	$a0, $s5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_289:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i491
                                        #   in Loop: Header=BB6_271 Depth=1
	add.d	$a0, $fp, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a4, $sp, 80                    # 8-byte Folded Reload
	st.d	$fp, $a4, 0
	st.d	$a0, $a4, 8
	alsl.d	$a1, $s4, $fp, 2
	st.d	$a1, $a4, 16
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	addi.d	$s8, $s8, 1
	bne	$a0, $a1, .LBB6_269
.LBB6_290:                              #   in Loop: Header=BB6_271 Depth=1
	sub.d	$s0, $a1, $fp
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB6_526
# %bb.291:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i496
                                        #   in Loop: Header=BB6_271 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s6, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s2, $a1
	or	$s5, $a0, $a1
	slli.d	$a0, $s5, 2
.Ltmp146:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp147:
# %bb.292:                              # %.noexc503
                                        #   in Loop: Header=BB6_271 Depth=1
	move	$s4, $a0
	stx.w	$s8, $a0, $s0
	blt	$s0, $s6, .LBB6_294
# %bb.293:                              #   in Loop: Header=BB6_271 Depth=1
	move	$a0, $s4
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_294:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i498
                                        #   in Loop: Header=BB6_271 Depth=1
	beqz	$fp, .LBB6_296
# %bb.295:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i500
                                        #   in Loop: Header=BB6_271 Depth=1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_296:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i501
                                        #   in Loop: Header=BB6_271 Depth=1
	add.d	$a0, $s4, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.d	$s4, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $s5, $s4, 2
.LBB6_297:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit484
                                        #   in Loop: Header=BB6_271 Depth=1
	st.d	$a1, $a2, 16
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	b	.LBB6_270
.LBB6_298:
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 16
	ld.w	$s1, $s6, 0
	beq	$a0, $a1, .LBB6_476
# %bb.299:
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	move	$s5, $s4
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	bnez	$a1, .LBB6_268
.LBB6_300:
	move	$s4, $s5
.LBB6_301:                              # %._crit_edge1061
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a4, $sp, 168                   # 8-byte Folded Reload
	addi.d	$s3, $a4, -1
	beq	$a0, $a1, .LBB6_303
# %bb.302:
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	b	.LBB6_310
.LBB6_303:
	ld.d	$fp, $a2, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB6_546
# %bb.304:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i466
	srai.d	$a0, $s0, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a1, $s5, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
.Ltmp161:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp162:
# %bb.305:                              # %.noexc473
	move	$s1, $a0
	stx.w	$s3, $a0, $s0
	blt	$s0, $s4, .LBB6_307
# %bb.306:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_307:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i468
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB6_309
# %bb.308:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i470
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_309:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i471
	addi.d	$a0, $s3, 4
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	st.d	$s1, $a2, 0
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s4, $a1, 0
	st.d	$a0, $a2, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $a2, 16
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
.LBB6_310:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit474
	ld.d	$a1, $a1, 8
	ld.d	$a4, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 8
	ld.d	$a2, $a4, 16
	sub.d	$a1, $a1, $s4
	srai.d	$a1, $a1, 2
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	sub.d	$s3, $a1, $a5
	beq	$a0, $a2, .LBB6_312
# %bb.311:
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	b	.LBB6_319
.LBB6_312:
	ld.d	$fp, $a4, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB6_548
# %bb.313:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i506
	srai.d	$a0, $s0, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	lu52i.d	$a1, $s5, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
.Ltmp163:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp164:
# %bb.314:                              # %.noexc513
	move	$s1, $a0
	stx.w	$s3, $a0, $s0
	blt	$s0, $s4, .LBB6_316
# %bb.315:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_316:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i508
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB6_318
# %bb.317:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i510
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_318:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i511
	addi.d	$a0, $s3, 4
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $a1, 16
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
.LBB6_319:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit514
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
.LBB6_320:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit514
	ld.w	$a0, $s7, 56
	ld.w	$a1, $s7, 64
	ld.d	$a2, $sp, 8                     # 8-byte Folded Reload
	ld.d	$a4, $sp, 0                     # 8-byte Folded Reload
	sub.d	$a2, $a4, $a2
	addi.w	$a0, $a0, -1
	srai.d	$a2, $a2, 4
	st.d	$a2, $sp, 152                   # 8-byte Folded Spill
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB6_376
# %bb.321:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $a3, 8
	ld.d	$s1, $a3, 0
	ld.w	$a2, $a1, 0
	sub.d	$fp, $a0, $s1
	srai.d	$a1, $fp, 2
	st.d	$a1, $sp, 144                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a2, $sp, 136                   # 8-byte Folded Spill
	beqz	$a1, .LBB6_357
# %bb.322:                              # %.lr.ph1066.preheader
	ld.w	$a1, $s7, 68
	beqz	$a1, .LBB6_353
# %bb.323:
	move	$s2, $s1
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	beqz	$a4, .LBB6_356
.LBB6_324:                              # %.lr.ph1066.peel.next
	bstrpick.d	$s3, $s6, 31, 0
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	addi.d	$a1, $a1, -1
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	ori	$s4, $zero, 1
	ori	$s8, $zero, 8
	addi.w	$a1, $zero, -4
	lu52i.d	$a1, $a1, 2047
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	lu52i.d	$a1, $s5, 511
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ori	$s6, $zero, 1
	b	.LBB6_327
	.p2align	4, , 16
.LBB6_325:                              #   in Loop: Header=BB6_327 Depth=1
	st.w	$s4, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$s1, $fp
	ori	$s4, $zero, 1
.LBB6_326:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit534
                                        #   in Loop: Header=BB6_327 Depth=1
	addi.d	$s6, $s6, 1
	addi.d	$s8, $s8, 4
	move	$s2, $s1
	beq	$s3, $s6, .LBB6_357
.LBB6_327:                              # =>This Inner Loop Header: Depth=1
	ld.wu	$a1, $s7, 76
	bne	$s6, $a1, .LBB6_330
# %bb.328:                              # %.thread
                                        #   in Loop: Header=BB6_327 Depth=1
	ld.d	$a1, $a3, 16
	beq	$a0, $a1, .LBB6_332
# %bb.329:                              #   in Loop: Header=BB6_327 Depth=1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$s1, $s2
	b	.LBB6_326
	.p2align	4, , 16
.LBB6_330:                              #   in Loop: Header=BB6_327 Depth=1
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	ldx.w	$s1, $a1, $s8
	ld.d	$a1, $a3, 16
	addi.d	$s7, $s1, -2
	beq	$a0, $a1, .LBB6_339
# %bb.331:                              #   in Loop: Header=BB6_327 Depth=1
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$fp, $s2
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	addi.d	$s4, $s1, -1
	bne	$a0, $a1, .LBB6_325
	b	.LBB6_346
.LBB6_332:                              #   in Loop: Header=BB6_327 Depth=1
	sub.d	$fp, $a0, $s2
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beq	$fp, $a0, .LBB6_530
# %bb.333:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i526
                                        #   in Loop: Header=BB6_327 Depth=1
	srai.d	$a0, $fp, 2
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	sltu	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s0, $a0, $a1
	slli.d	$a0, $s0, 2
.Ltmp186:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp187:
# %bb.334:                              # %.noexc533
                                        #   in Loop: Header=BB6_327 Depth=1
	move	$s1, $a0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	stx.w	$a0, $s1, $fp
	blt	$fp, $s4, .LBB6_336
# %bb.335:                              #   in Loop: Header=BB6_327 Depth=1
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_336:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i528
                                        #   in Loop: Header=BB6_327 Depth=1
	beqz	$s2, .LBB6_338
# %bb.337:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i530
                                        #   in Loop: Header=BB6_327 Depth=1
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_338:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i531
                                        #   in Loop: Header=BB6_327 Depth=1
	add.d	$a0, $s1, $fp
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	st.d	$s1, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s0, $s1, 2
	st.d	$a1, $a3, 16
	b	.LBB6_326
.LBB6_339:                              #   in Loop: Header=BB6_327 Depth=1
	sub.d	$s0, $a0, $s2
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB6_536
# %bb.340:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i536
                                        #   in Loop: Header=BB6_327 Depth=1
	move	$s5, $s3
	srai.d	$a0, $s0, 2
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	sltu	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	ori	$s3, $zero, 1
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
.Ltmp174:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp175:
# %bb.341:                              # %.noexc543
                                        #   in Loop: Header=BB6_327 Depth=1
	move	$fp, $a0
	stx.w	$s7, $a0, $s0
	blt	$s0, $s3, .LBB6_343
# %bb.342:                              #   in Loop: Header=BB6_327 Depth=1
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_343:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i538
                                        #   in Loop: Header=BB6_327 Depth=1
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	beqz	$s2, .LBB6_345
# %bb.344:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i540
                                        #   in Loop: Header=BB6_327 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_345:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i541
                                        #   in Loop: Header=BB6_327 Depth=1
	add.d	$a0, $fp, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	st.d	$fp, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s4, $fp, 2
	st.d	$a1, $a3, 16
	move	$s3, $s5
	addi.d	$s4, $s1, -1
	bne	$a0, $a1, .LBB6_325
.LBB6_346:                              #   in Loop: Header=BB6_327 Depth=1
	sub.d	$s0, $a1, $fp
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB6_534
# %bb.347:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i546
                                        #   in Loop: Header=BB6_327 Depth=1
	srai.d	$a0, $s0, 2
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	sltu	$a1, $a0, $a2
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $a2, $a1
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
.Ltmp177:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp178:
# %bb.348:                              # %.noexc553
                                        #   in Loop: Header=BB6_327 Depth=1
	move	$s1, $a0
	stx.w	$s4, $a0, $s0
	ori	$s4, $zero, 1
	blt	$s0, $s4, .LBB6_350
# %bb.349:                              #   in Loop: Header=BB6_327 Depth=1
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_350:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i548
                                        #   in Loop: Header=BB6_327 Depth=1
	beqz	$fp, .LBB6_352
# %bb.351:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i550
                                        #   in Loop: Header=BB6_327 Depth=1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_352:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i551
                                        #   in Loop: Header=BB6_327 Depth=1
	add.d	$a0, $s1, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	st.d	$s1, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s2, $s1, 2
	st.d	$a1, $a3, 16
	b	.LBB6_326
.LBB6_353:
	ld.w	$a1, $s7, 76
	beqz	$a1, .LBB6_483
# %bb.354:
	ld.w	$a1, $s6, 4
	ld.d	$a2, $a3, 16
	addi.d	$s3, $a1, -1
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	beq	$a0, $a2, .LBB6_484
.LBB6_355:
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$s2, $s1
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	bnez	$a4, .LBB6_324
.LBB6_356:
	move	$s1, $s2
.LBB6_357:                              # %._crit_edge1067
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a4, $sp, 136                   # 8-byte Folded Reload
	addi.d	$s4, $a4, 1
	beq	$a0, $a1, .LBB6_359
# %bb.358:
	st.w	$s4, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	b	.LBB6_366
.LBB6_359:
	ld.d	$fp, $a2, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB6_558
# %bb.360:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i516
	srai.d	$a0, $s0, 2
	ori	$s1, $zero, 1
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a1, $s5, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s3, $a0, $a1
	slli.d	$a0, $s3, 2
.Ltmp192:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp193:
# %bb.361:                              # %.noexc523
	move	$s2, $a0
	stx.w	$s4, $a0, $s0
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	blt	$s0, $s1, .LBB6_363
# %bb.362:
	move	$a0, $s2
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_363:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i518
	add.d	$s1, $s2, $s0
	beqz	$fp, .LBB6_365
# %bb.364:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i520
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_365:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i521
	addi.d	$a0, $s1, 4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$s2, $a1, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $a3, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s3, $s2, 2
	st.d	$a0, $a1, 16
.LBB6_366:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit524
	ld.d	$a1, $a3, 8
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 8
	ld.d	$a2, $a3, 16
	sub.d	$a1, $a1, $s1
	srai.d	$a1, $a1, 2
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	sub.d	$s3, $a1, $a4
	beq	$a0, $a2, .LBB6_368
# %bb.367:
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	b	.LBB6_375
.LBB6_368:
	ld.d	$fp, $a3, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB6_560
# %bb.369:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i556
	srai.d	$a0, $s0, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	lu52i.d	$a1, $s5, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
.Ltmp194:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp195:
# %bb.370:                              # %.noexc563
	move	$s1, $a0
	stx.w	$s3, $a0, $s0
	blt	$s0, $s4, .LBB6_372
# %bb.371:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_372:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i558
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB6_374
# %bb.373:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i560
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_374:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i561
	addi.d	$a0, $s3, 4
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $a1, 16
.LBB6_375:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit564
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
.LBB6_376:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit564
	ld.w	$a0, $s7, 60
	ld.w	$a1, $s7, 68
	addi.w	$a0, $a0, -1
	beq	$a1, $a0, .LBB6_423
# %bb.377:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 8
	ld.d	$s1, $a3, 0
	ld.w	$a1, $a1, 0
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ld.w	$a1, $s7, 56
	st.d	$a1, $sp, 168                   # 8-byte Folded Spill
	sub.d	$fp, $a0, $s1
	srai.d	$a1, $fp, 2
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	bltz	$s3, .LBB6_412
# %bb.378:                              # %.lr.ph1072.preheader
	ld.w	$a1, $s7, 76
	slli.d	$a1, $a1, 2
	ld.w	$a2, $s7, 64
	ldx.w	$s0, $s6, $a1
	beqz	$a2, .LBB6_409
# %bb.379:
	move	$s2, $s1
	beqz	$s3, .LBB6_411
.LBB6_380:                              # %.lr.ph1072.peel.next
	move	$s7, $zero
	addi.d	$s8, $s0, 1
	addi.w	$a1, $zero, -4
	lu52i.d	$s3, $a1, 2047
	ori	$s4, $zero, 1
	lu52i.d	$s5, $s5, 511
	b	.LBB6_383
	.p2align	4, , 16
.LBB6_381:                              #   in Loop: Header=BB6_383 Depth=1
	st.w	$s6, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	ori	$a1, $zero, 2
	move	$s1, $fp
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
.LBB6_382:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit584
                                        #   in Loop: Header=BB6_383 Depth=1
	add.d	$s8, $s8, $a1
	move	$s2, $s1
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	beq	$a1, $s7, .LBB6_412
.LBB6_383:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.w	$a2, $a1, 72
	ld.d	$a1, $a3, 16
	addi.w	$s7, $s7, 1
	bne	$s7, $a2, .LBB6_386
# %bb.384:                              #   in Loop: Header=BB6_383 Depth=1
	beq	$a0, $a1, .LBB6_388
# %bb.385:                              #   in Loop: Header=BB6_383 Depth=1
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	ori	$a1, $zero, 1
	move	$s1, $s2
	b	.LBB6_382
	.p2align	4, , 16
.LBB6_386:                              #   in Loop: Header=BB6_383 Depth=1
	beq	$a0, $a1, .LBB6_395
# %bb.387:                              #   in Loop: Header=BB6_383 Depth=1
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$fp, $s2
	addi.d	$s6, $s8, 1
	bne	$a0, $a1, .LBB6_381
	b	.LBB6_402
.LBB6_388:                              #   in Loop: Header=BB6_383 Depth=1
	sub.d	$fp, $a0, $s2
	beq	$fp, $s3, .LBB6_532
# %bb.389:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i576
                                        #   in Loop: Header=BB6_383 Depth=1
	srai.d	$a0, $fp, 2
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$s0, $a0, $a1
	slli.d	$a0, $s0, 2
.Ltmp217:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp218:
# %bb.390:                              # %.noexc583
                                        #   in Loop: Header=BB6_383 Depth=1
	move	$s1, $a0
	stx.w	$s8, $a0, $fp
	blt	$fp, $s4, .LBB6_392
# %bb.391:                              #   in Loop: Header=BB6_383 Depth=1
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_392:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i578
                                        #   in Loop: Header=BB6_383 Depth=1
	beqz	$s2, .LBB6_394
# %bb.393:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i580
                                        #   in Loop: Header=BB6_383 Depth=1
	move	$a0, $s2
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_394:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i581
                                        #   in Loop: Header=BB6_383 Depth=1
	add.d	$a0, $s1, $fp
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	st.d	$s1, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s0, $s1, 2
	st.d	$a1, $a3, 16
	ori	$a1, $zero, 1
	b	.LBB6_382
.LBB6_395:                              #   in Loop: Header=BB6_383 Depth=1
	sub.d	$s0, $a0, $s2
	beq	$s0, $s3, .LBB6_540
# %bb.396:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i586
                                        #   in Loop: Header=BB6_383 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 2
.Ltmp205:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp206:
# %bb.397:                              # %.noexc593
                                        #   in Loop: Header=BB6_383 Depth=1
	move	$fp, $a0
	stx.w	$s8, $a0, $s0
	blt	$s0, $s4, .LBB6_399
# %bb.398:                              #   in Loop: Header=BB6_383 Depth=1
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_399:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i588
                                        #   in Loop: Header=BB6_383 Depth=1
	beqz	$s2, .LBB6_401
# %bb.400:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i590
                                        #   in Loop: Header=BB6_383 Depth=1
	move	$a0, $s2
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_401:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i591
                                        #   in Loop: Header=BB6_383 Depth=1
	add.d	$a0, $fp, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	st.d	$fp, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s1, $fp, 2
	st.d	$a1, $a3, 16
	addi.d	$s6, $s8, 1
	bne	$a0, $a1, .LBB6_381
.LBB6_402:                              #   in Loop: Header=BB6_383 Depth=1
	sub.d	$s0, $a1, $fp
	beq	$s0, $s3, .LBB6_538
# %bb.403:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i596
                                        #   in Loop: Header=BB6_383 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $s5
	maskeqz	$a0, $a0, $a1
	masknez	$a1, $s5, $a1
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
.Ltmp208:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp209:
# %bb.404:                              # %.noexc603
                                        #   in Loop: Header=BB6_383 Depth=1
	move	$s1, $a0
	stx.w	$s6, $a0, $s0
	blt	$s0, $s4, .LBB6_406
# %bb.405:                              #   in Loop: Header=BB6_383 Depth=1
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_406:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i598
                                        #   in Loop: Header=BB6_383 Depth=1
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	beqz	$fp, .LBB6_408
# %bb.407:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i600
                                        #   in Loop: Header=BB6_383 Depth=1
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_408:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i601
                                        #   in Loop: Header=BB6_383 Depth=1
	add.d	$a0, $s1, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	st.d	$s1, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s2, $s1, 2
	st.d	$a1, $a3, 16
	ori	$a1, $zero, 2
	b	.LBB6_382
.LBB6_409:
	ld.d	$a1, $a3, 16
	beq	$a0, $a1, .LBB6_491
# %bb.410:
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$s2, $s1
	bnez	$s3, .LBB6_380
.LBB6_411:
	move	$s1, $s2
.LBB6_412:                              # %._crit_edge1073
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 168                   # 8-byte Folded Reload
	add.d	$s4, $a5, $a4
	beq	$a0, $a1, .LBB6_414
# %bb.413:
	st.w	$s4, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	b	.LBB6_421
.LBB6_414:
	ld.d	$fp, $a2, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s7, $sp, 160                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB6_562
# %bb.415:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i566
	srai.d	$a0, $s0, 2
	ori	$s1, $zero, 1
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a1, $s5, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s3, $a0, $a1
	slli.d	$a0, $s3, 2
.Ltmp223:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp224:
# %bb.416:                              # %.noexc573
	move	$s2, $a0
	stx.w	$s4, $a0, $s0
	blt	$s0, $s1, .LBB6_418
# %bb.417:
	move	$a0, $s2
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_418:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i568
	add.d	$s1, $s2, $s0
	beqz	$fp, .LBB6_420
# %bb.419:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i570
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_420:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i571
	addi.d	$a0, $s1, 4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$s2, $a1, 0
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$s1, $a3, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s3, $s2, 2
	st.d	$a0, $a1, 16
.LBB6_421:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit574
	ld.d	$a1, $a3, 8
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 8
	ld.d	$a2, $a3, 16
	sub.d	$a1, $a1, $s1
	srai.d	$a1, $a1, 2
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	sub.d	$s3, $a1, $a4
	beq	$a0, $a2, .LBB6_428
# %bb.422:
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
.LBB6_423:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit614
	ld.w	$s2, $s7, 56
	ld.w	$a0, $s7, 64
	addi.w	$a1, $s2, -1
	beq	$a0, $a1, .LBB6_435
.LBB6_424:
	ld.w	$a0, $s7, 60
	ld.w	$a1, $s7, 68
	addi.w	$a0, $a0, -1
	beq	$a1, $a0, .LBB6_435
# %bb.425:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a2, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $a3, 8
	ld.d	$a0, $a3, 16
	ld.w	$s3, $a2, 0
	ld.d	$s7, $sp, 152                   # 8-byte Folded Reload
	addi.d	$s5, $s7, -2
	beq	$a1, $a0, .LBB6_437
# %bb.426:
	st.w	$s5, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $a3, 8
	addi.d	$s5, $s7, -1
	beq	$a1, $a0, .LBB6_444
.LBB6_427:
	st.w	$s5, $a1, 0
	addi.d	$a0, $a1, 4
	st.d	$a0, $a3, 8
	b	.LBB6_451
.LBB6_428:
	ld.d	$fp, $a3, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB6_564
# %bb.429:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i606
	srai.d	$a0, $s0, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	lu52i.d	$a1, $s5, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
.Ltmp225:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp226:
# %bb.430:                              # %.noexc613
	move	$s1, $a0
	stx.w	$s3, $a0, $s0
	blt	$s0, $s4, .LBB6_432
# %bb.431:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_432:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i608
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB6_434
# %bb.433:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i610
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_434:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i611
	addi.d	$a0, $s3, 4
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $a1, 16
	ld.w	$s2, $s7, 56
	ld.w	$a0, $s7, 64
	addi.w	$a1, $s2, -1
	bne	$a0, $a1, .LBB6_424
.LBB6_435:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit654
	beqz	$s6, .LBB6_454
.LBB6_436:
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s6
	move	$a0, $s6
	fld.d	$fs7, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 240                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 256                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 352
	pcaddu18i	$t8, %call36(_ZdlPvm)
	jr	$t8
.LBB6_437:
	ld.d	$fp, $a3, 0
	sub.d	$s0, $a1, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB6_566
# %bb.438:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i616
	srai.d	$a0, $s0, 2
	ori	$s6, $zero, 1
	sltu	$a1, $s6, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
.Ltmp233:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp234:
# %bb.439:                              # %.noexc623
	move	$s1, $a0
	stx.w	$s5, $a0, $s0
	blt	$s0, $s6, .LBB6_441
# %bb.440:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_441:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i618
	add.d	$s5, $s1, $s0
	beqz	$fp, .LBB6_443
# %bb.442:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i620
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_443:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i621
	addi.d	$a1, $s5, 4
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	st.d	$s1, $a3, 0
	st.d	$a1, $a3, 8
	alsl.d	$a0, $s4, $s1, 2
	st.d	$a0, $a3, 16
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	addi.d	$s5, $s7, -1
	bne	$a1, $a0, .LBB6_427
.LBB6_444:
	ld.d	$fp, $a3, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB6_568
# %bb.445:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i626
	srai.d	$a0, $s0, 2
	ori	$s6, $zero, 1
	sltu	$a1, $s6, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s4, $a0, $a1
	slli.d	$a0, $s4, 2
.Ltmp235:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp236:
# %bb.446:                              # %.noexc633
	move	$s1, $a0
	stx.w	$s5, $a0, $s0
	blt	$s0, $s6, .LBB6_448
# %bb.447:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_448:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i628
	add.d	$s5, $s1, $s0
	beqz	$fp, .LBB6_450
# %bb.449:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i630
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_450:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i631
	addi.d	$a0, $s5, 4
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s4, $s1, 2
	st.d	$a0, $a1, 16
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
.LBB6_451:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit634
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 8
	ld.d	$a1, $a3, 16
	add.d	$a2, $s2, $s3
	addi.d	$s3, $a2, 1
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB6_455
# %bb.452:
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	beq	$a0, $a1, .LBB6_462
.LBB6_453:
	ori	$a1, $zero, 2
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	bnez	$s6, .LBB6_436
.LBB6_454:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit656
	fld.d	$fs7, $sp, 200                  # 8-byte Folded Reload
	fld.d	$fs6, $sp, 208                  # 8-byte Folded Reload
	fld.d	$fs5, $sp, 216                  # 8-byte Folded Reload
	fld.d	$fs4, $sp, 224                  # 8-byte Folded Reload
	fld.d	$fs3, $sp, 232                  # 8-byte Folded Reload
	fld.d	$fs2, $sp, 240                  # 8-byte Folded Reload
	fld.d	$fs1, $sp, 248                  # 8-byte Folded Reload
	fld.d	$fs0, $sp, 256                  # 8-byte Folded Reload
	ld.d	$s8, $sp, 264                   # 8-byte Folded Reload
	ld.d	$s7, $sp, 272                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 280                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 288                   # 8-byte Folded Reload
	ld.d	$s4, $sp, 296                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 304                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 312                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 320                   # 8-byte Folded Reload
	ld.d	$s0, $sp, 328                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 336                   # 8-byte Folded Reload
	ld.d	$ra, $sp, 344                   # 8-byte Folded Reload
	addi.d	$sp, $sp, 352
	ret
.LBB6_455:
	ld.d	$fp, $a3, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB6_570
# %bb.456:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i636
	srai.d	$a0, $s0, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	lu52i.d	$a1, $s5, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
.Ltmp237:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp238:
# %bb.457:                              # %.noexc643
	move	$s1, $a0
	stx.w	$s3, $a0, $s0
	blt	$s0, $s4, .LBB6_459
# %bb.458:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_459:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i638
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB6_461
# %bb.460:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i640
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_461:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i641
	addi.d	$a0, $s3, 4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $a1, 16
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	bne	$a0, $a1, .LBB6_453
.LBB6_462:
	ld.d	$fp, $a2, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB6_572
# %bb.463:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i646
	srai.d	$a0, $s0, 2
	ori	$s3, $zero, 1
	sltu	$a1, $s3, $a0
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	lu52i.d	$a1, $s5, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s2, $a0, $a1
	slli.d	$a0, $s2, 2
.Ltmp239:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp240:
# %bb.464:                              # %.noexc653
	move	$s1, $a0
	ori	$a0, $zero, 2
	stx.w	$a0, $s1, $s0
	blt	$s0, $s3, .LBB6_466
# %bb.465:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_466:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i648
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB6_468
# %bb.467:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i650
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_468:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i651
	addi.d	$a0, $s3, 4
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $a1, 16
	bnez	$s6, .LBB6_436
	b	.LBB6_454
.LBB6_469:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$fp, $a0, .LBB6_518
# %bb.470:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i426.peel
	ori	$s1, $zero, 1
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	sltu	$a0, $s1, $a2
	masknez	$a1, $s1, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s0, $a0, $a1
	slli.d	$a0, $s0, 2
.Ltmp109:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp110:
# %bb.471:                              # %.noexc433.peel
	move	$s5, $a0
	stx.w	$zero, $a0, $fp
	blt	$fp, $s1, .LBB6_473
# %bb.472:
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_473:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i428.peel
	add.d	$s1, $s5, $fp
	beqz	$s4, .LBB6_475
# %bb.474:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i430.peel
	move	$a0, $s4
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_475:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i431.peel
	addi.d	$a0, $s1, 4
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.d	$s5, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $s0, $s5, 2
	st.d	$a1, $a2, 16
	ori	$s6, $zero, 1
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	bnez	$s3, .LBB6_213
	b	.LBB6_244
.LBB6_476:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$fp, $a0, .LBB6_520
# %bb.477:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i476.peel
	ori	$s2, $zero, 1
	ld.d	$a2, $sp, 176                   # 8-byte Folded Reload
	sltu	$a0, $s2, $a2
	masknez	$a1, $s2, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s0, $a0, $a1
	slli.d	$a0, $s0, 2
.Ltmp140:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp141:
	ld.d	$s3, $sp, 88                    # 8-byte Folded Reload
# %bb.478:                              # %.noexc483.peel
	move	$s5, $a0
	stx.w	$s1, $a0, $fp
	blt	$fp, $s2, .LBB6_480
# %bb.479:
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_480:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i478.peel
	add.d	$s1, $s5, $fp
	beqz	$s4, .LBB6_482
# %bb.481:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i480.peel
	move	$a0, $s4
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_482:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i481.peel
	addi.d	$a0, $s1, 4
	ld.d	$a2, $sp, 80                    # 8-byte Folded Reload
	st.d	$s5, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $s0, $s5, 2
	st.d	$a1, $a2, 16
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	bnez	$a1, .LBB6_268
	b	.LBB6_300
.LBB6_483:
	ld.d	$a1, $sp, 152                   # 8-byte Folded Reload
	ld.d	$a2, $a3, 16
	addi.d	$s3, $a1, -1
	ld.d	$s6, $sp, 88                    # 8-byte Folded Reload
	bne	$a0, $a2, .LBB6_355
.LBB6_484:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$fp, $a0, .LBB6_530
# %bb.485:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i526.peel
	ori	$s4, $zero, 1
	ld.d	$a2, $sp, 144                   # 8-byte Folded Reload
	sltu	$a0, $s4, $a2
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a1, $s5, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s0, $a0, $a1
	slli.d	$a0, $s0, 2
.Ltmp171:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp172:
# %bb.486:                              # %.noexc533.peel
	move	$s2, $a0
	stx.w	$s3, $a0, $fp
	blt	$fp, $s4, .LBB6_488
# %bb.487:
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_488:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i528.peel
	add.d	$s3, $s2, $fp
	beqz	$s1, .LBB6_490
# %bb.489:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i530.peel
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_490:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i531.peel
	addi.d	$a0, $s3, 4
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	st.d	$s2, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s0, $s2, 2
	st.d	$a1, $a3, 16
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	bnez	$a4, .LBB6_324
	b	.LBB6_356
.LBB6_491:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$fp, $a0, .LBB6_532
# %bb.492:                              # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i576.peel
	ori	$s4, $zero, 1
	ld.d	$a2, $sp, 192                   # 8-byte Folded Reload
	sltu	$a0, $s4, $a2
	masknez	$a1, $s4, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	add.d	$a0, $a0, $a2
	ld.d	$s5, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a1, $s5, 511
	sltu	$a2, $a0, $a1
	maskeqz	$a0, $a0, $a2
	masknez	$a1, $a1, $a2
	or	$s3, $a0, $a1
	slli.d	$a0, $s3, 2
.Ltmp202:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp203:
# %bb.493:                              # %.noexc583.peel
	move	$s2, $a0
	stx.w	$s0, $a0, $fp
	blt	$fp, $s4, .LBB6_495
# %bb.494:
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_495:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i578.peel
	add.d	$s4, $s2, $fp
	beqz	$s1, .LBB6_497
# %bb.496:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i.i.i580.peel
	move	$a0, $s1
	move	$a1, $fp
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_497:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i581.peel
	addi.d	$a0, $s4, 4
	ld.d	$a3, $sp, 72                    # 8-byte Folded Reload
	st.d	$s2, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s3, $s2, 2
	st.d	$a1, $a3, 16
	ld.d	$s3, $sp, 128                   # 8-byte Folded Reload
	bnez	$s3, .LBB6_380
	b	.LBB6_411
.LBB6_498:
.Ltmp256:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp257:
# %bb.499:                              # %.noexc350
.LBB6_500:
.Ltmp253:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp254:
# %bb.501:                              # %.noexc359
.LBB6_502:
.Ltmp82:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp83:
# %bb.503:                              # %.noexc729
.LBB6_504:
.Ltmp61:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp62:
# %bb.505:                              # %.noexc662
.LBB6_506:
.Ltmp55:
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp56:
# %bb.507:                              # %.noexc676
.LBB6_508:
.Ltmp43:
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp44:
# %bb.509:                              # %.noexc706
.LBB6_510:
.Ltmp40:
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp41:
# %bb.511:                              # %.noexc721
.LBB6_512:
.Ltmp49:
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp50:
# %bb.513:                              # %.noexc691
.LBB6_514:                              # %.invoke
.Ltmp259:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp260:
# %bb.515:                              # %.cont
.LBB6_516:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB6_517:                              # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB6_518:                              # %.loopexit1098
.Ltmp127:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp128:
# %bb.519:                              # %.noexc432
.LBB6_520:                              # %.loopexit1115
.Ltmp158:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp159:
# %bb.521:                              # %.noexc482
.LBB6_522:                              # %.loopexit1094
.Ltmp118:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp119:
# %bb.523:                              # %.noexc452
.LBB6_524:                              # %.loopexit1091
.Ltmp121:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp122:
# %bb.525:                              # %.noexc442
.LBB6_526:                              # %.loopexit1111
.Ltmp149:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp150:
# %bb.527:                              # %.noexc502
.LBB6_528:                              # %.loopexit1107
.Ltmp152:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp153:
# %bb.529:                              # %.noexc492
.LBB6_530:                              # %.loopexit1132
.Ltmp189:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp190:
# %bb.531:                              # %.noexc532
.LBB6_532:                              # %.loopexit1145
.Ltmp220:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp221:
# %bb.533:                              # %.noexc582
.LBB6_534:                              # %.loopexit1128
.Ltmp180:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp181:
# %bb.535:                              # %.noexc552
.LBB6_536:                              # %.loopexit1124
.Ltmp183:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp184:
# %bb.537:                              # %.noexc542
.LBB6_538:                              # %.loopexit1142
.Ltmp211:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp212:
# %bb.539:                              # %.noexc602
.LBB6_540:                              # %.loopexit1138
.Ltmp214:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp215:
# %bb.541:                              # %.noexc592
.LBB6_542:
.Ltmp137:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp138:
# %bb.543:                              # %.noexc422
.LBB6_544:
.Ltmp134:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp135:
# %bb.545:                              # %.noexc462
.LBB6_546:
.Ltmp168:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp169:
# %bb.547:                              # %.noexc472
.LBB6_548:
.Ltmp165:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp166:
# %bb.549:                              # %.noexc512
.LBB6_550:
.Ltmp106:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp107:
# %bb.551:                              # %.noexc388
.LBB6_552:
.Ltmp103:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp104:
# %bb.553:                              # %.noexc398
.LBB6_554:
.Ltmp100:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp101:
# %bb.555:                              # %.noexc403
.LBB6_556:
.Ltmp97:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp98:
# %bb.557:                              # %.noexc412
.LBB6_558:
.Ltmp199:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp200:
# %bb.559:                              # %.noexc522
.LBB6_560:
.Ltmp196:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp197:
# %bb.561:                              # %.noexc562
.LBB6_562:
.Ltmp230:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp231:
# %bb.563:                              # %.noexc572
.LBB6_564:
.Ltmp227:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp228:
# %bb.565:                              # %.noexc612
.LBB6_566:
.Ltmp250:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp251:
# %bb.567:                              # %.noexc622
.LBB6_568:
.Ltmp247:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp248:
# %bb.569:                              # %.noexc632
.LBB6_570:
.Ltmp244:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp245:
# %bb.571:                              # %.noexc642
.LBB6_572:
.Ltmp241:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp242:
# %bb.573:                              # %.noexc652
.LBB6_574:                              # %.loopexit935.loopexit.split-lp
.Ltmp204:
	move	$s0, $a0
	b	.LBB6_642
.LBB6_575:                              # %.loopexit950.loopexit.split-lp
.Ltmp173:
	b	.LBB6_640
.LBB6_576:                              # %.loopexit965.loopexit.split-lp
.Ltmp142:
	b	.LBB6_630
.LBB6_577:                              # %.loopexit980.loopexit.split-lp
.Ltmp111:
	b	.LBB6_640
.LBB6_578:
.Ltmp243:
	b	.LBB6_602
.LBB6_579:
.Ltmp246:
	b	.LBB6_602
.LBB6_580:
.Ltmp249:
	b	.LBB6_640
.LBB6_581:
.Ltmp252:
	b	.LBB6_640
.LBB6_582:
.Ltmp229:
	b	.LBB6_602
.LBB6_583:
.Ltmp232:
	b	.LBB6_602
.LBB6_584:
.Ltmp198:
	b	.LBB6_602
.LBB6_585:
.Ltmp201:
	b	.LBB6_640
.LBB6_586:
.Ltmp99:
	b	.LBB6_602
.LBB6_587:
.Ltmp102:
	b	.LBB6_602
.LBB6_588:
.Ltmp105:
	b	.LBB6_602
.LBB6_589:
.Ltmp108:
	b	.LBB6_602
.LBB6_590:
.Ltmp167:
	b	.LBB6_602
.LBB6_591:
.Ltmp170:
	b	.LBB6_602
.LBB6_592:
.Ltmp136:
	b	.LBB6_602
.LBB6_593:
.Ltmp139:
	b	.LBB6_640
.LBB6_594:                              # %.loopexit935.loopexit
.Ltmp219:
	b	.LBB6_602
.LBB6_595:                              # %.loopexit.split-lp
.Ltmp216:
	b	.LBB6_640
.LBB6_596:                              # %.loopexit950.loopexit
.Ltmp188:
	b	.LBB6_640
.LBB6_597:                              # %.loopexit.split-lp931
.Ltmp213:
	b	.LBB6_640
.LBB6_598:                              # %.loopexit.split-lp941
.Ltmp185:
	b	.LBB6_630
.LBB6_599:                              # %.loopexit930
.Ltmp210:
	b	.LBB6_640
.LBB6_600:                              # %.loopexit.split-lp946
.Ltmp182:
	b	.LBB6_630
.LBB6_601:                              # %.loopexit
.Ltmp207:
.LBB6_602:                              # %.loopexit980
	move	$s0, $a0
	b	.LBB6_641
.LBB6_603:                              # %.loopexit945
.Ltmp179:
	b	.LBB6_630
.LBB6_604:                              # %.loopexit940
.Ltmp176:
	b	.LBB6_630
.LBB6_605:                              # %.loopexit.split-lp936
.Ltmp222:
	b	.LBB6_640
.LBB6_606:                              # %.loopexit.split-lp951
.Ltmp191:
	b	.LBB6_640
.LBB6_607:                              # %.loopexit965.loopexit
.Ltmp157:
	b	.LBB6_630
.LBB6_608:                              # %.loopexit.split-lp956
.Ltmp154:
	b	.LBB6_630
.LBB6_609:                              # %.loopexit980.loopexit
.Ltmp126:
	b	.LBB6_640
.LBB6_610:                              # %.loopexit.split-lp961
.Ltmp151:
	b	.LBB6_630
.LBB6_611:                              # %.loopexit.split-lp971
.Ltmp123:
	b	.LBB6_640
.LBB6_612:                              # %.loopexit960
.Ltmp148:
	b	.LBB6_630
.LBB6_613:                              # %.loopexit.split-lp976
.Ltmp120:
	b	.LBB6_640
.LBB6_614:                              # %.loopexit955
.Ltmp145:
	b	.LBB6_630
.LBB6_615:                              # %.loopexit975
.Ltmp117:
	b	.LBB6_640
.LBB6_616:                              # %.loopexit970
.Ltmp114:
	b	.LBB6_640
.LBB6_617:                              # %.loopexit.split-lp966
.Ltmp160:
	b	.LBB6_630
.LBB6_618:                              # %.loopexit.split-lp981
.Ltmp129:
	b	.LBB6_640
.LBB6_619:
.Ltmp261:
	b	.LBB6_640
.LBB6_620:                              # %.loopexit1011
.Ltmp48:
	b	.LBB6_630
.LBB6_621:                              # %.loopexit1006
.Ltmp39:
	b	.LBB6_630
.LBB6_622:                              # %.loopexit.split-lp1012
.Ltmp51:
	move	$s0, $a0
	b	.LBB6_642
.LBB6_623:                              # %.loopexit.split-lp1007
.Ltmp42:
	move	$s0, $a0
	b	.LBB6_642
.LBB6_624:                              # %.loopexit.split-lp1002
.Ltmp45:
	move	$s0, $a0
	b	.LBB6_642
.LBB6_625:                              # %.loopexit1001
.Ltmp36:
	b	.LBB6_630
.LBB6_626:                              # %.loopexit.split-lp1017
.Ltmp57:
	move	$s0, $a0
	b	.LBB6_642
.LBB6_627:                              # %.loopexit1016
.Ltmp54:
	b	.LBB6_630
.LBB6_628:                              # %.loopexit.split-lp1022
.Ltmp63:
	b	.LBB6_630
.LBB6_629:                              # %.loopexit1021
.Ltmp60:
.LBB6_630:                              # %.thread925
	move	$s0, $a0
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
	b	.LBB6_642
.LBB6_631:                              # %.loopexit.split-lp997
.Ltmp84:
	b	.LBB6_637
.LBB6_632:                              # %.loopexit996
.Ltmp81:
	b	.LBB6_637
.LBB6_633:                              # %.loopexit986
.Ltmp75:
	b	.LBB6_637
.LBB6_634:                              # %.loopexit.split-lp992
.Ltmp255:
	move	$s0, $a0
	b	.LBB6_638
.LBB6_635:                              # %.loopexit.split-lp987
.Ltmp258:
	move	$s0, $a0
	b	.LBB6_638
.LBB6_636:                              # %.loopexit991
.Ltmp78:
.LBB6_637:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit364
	move	$s0, $a0
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
.LBB6_638:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit364
	ori	$a1, $zero, 24
	move	$a0, $s8
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	b	.LBB6_641
.LBB6_639:
.Ltmp72:
.LBB6_640:                              # %.loopexit980
	move	$s0, $a0
	ld.d	$s6, $sp, 104                   # 8-byte Folded Reload
.LBB6_641:                              # %.loopexit980
	beqz	$s6, .LBB6_643
.LBB6_642:                              # %.thread925
	ld.d	$a0, $sp, 16                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s6
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_643:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit658
	move	$a0, $s0
	pcaddu18i	$ra, %call36(_Unwind_Resume)
	jirl	$ra, $ra, 0
.Lfunc_end6:
	.size	_ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_, .Lfunc_end6-_ZN7GenMesh11generateHexERSt6vectorI7double2SaIS1_EERS0_IiSaIiEES7_S7_S7_S7_S7_S7_S7_S7_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2, 0x0
GCC_except_table6:
.Lexception1:
	.byte	255                             # @LPStart Encoding = omit
	.byte	255                             # @TType Encoding = omit
	.byte	1                               # Call site Encoding = uleb128
	.uleb128 .Lcst_end1-.Lcst_begin1
.Lcst_begin1:
	.uleb128 .Lfunc_begin1-.Lfunc_begin1    # >> Call Site 1 <<
	.uleb128 .Ltmp58-.Lfunc_begin1          #   Call between .Lfunc_begin1 and .Ltmp58
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp58-.Lfunc_begin1          # >> Call Site 2 <<
	.uleb128 .Ltmp59-.Ltmp58                #   Call between .Ltmp58 and .Ltmp59
	.uleb128 .Ltmp60-.Lfunc_begin1          #     jumps to .Ltmp60
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp59-.Lfunc_begin1          # >> Call Site 3 <<
	.uleb128 .Ltmp52-.Ltmp59                #   Call between .Ltmp59 and .Ltmp52
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp52-.Lfunc_begin1          # >> Call Site 4 <<
	.uleb128 .Ltmp53-.Ltmp52                #   Call between .Ltmp52 and .Ltmp53
	.uleb128 .Ltmp54-.Lfunc_begin1          #     jumps to .Ltmp54
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp34-.Lfunc_begin1          # >> Call Site 5 <<
	.uleb128 .Ltmp35-.Ltmp34                #   Call between .Ltmp34 and .Ltmp35
	.uleb128 .Ltmp36-.Lfunc_begin1          #     jumps to .Ltmp36
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp35-.Lfunc_begin1          # >> Call Site 6 <<
	.uleb128 .Ltmp37-.Ltmp35                #   Call between .Ltmp35 and .Ltmp37
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp37-.Lfunc_begin1          # >> Call Site 7 <<
	.uleb128 .Ltmp38-.Ltmp37                #   Call between .Ltmp37 and .Ltmp38
	.uleb128 .Ltmp39-.Lfunc_begin1          #     jumps to .Ltmp39
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp38-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp46-.Ltmp38                #   Call between .Ltmp38 and .Ltmp46
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp46-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin1          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp65-.Ltmp64                #   Call between .Ltmp64 and .Ltmp65
	.uleb128 .Ltmp261-.Lfunc_begin1         #     jumps to .Ltmp261
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin1          # >> Call Site 12 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp261-.Lfunc_begin1         #     jumps to .Ltmp261
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin1          # >> Call Site 13 <<
	.uleb128 .Ltmp68-.Ltmp67                #   Call between .Ltmp67 and .Ltmp68
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin1          # >> Call Site 14 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp261-.Lfunc_begin1         #     jumps to .Ltmp261
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin1          # >> Call Site 15 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin1          # >> Call Site 16 <<
	.uleb128 .Ltmp71-.Ltmp70                #   Call between .Ltmp70 and .Ltmp71
	.uleb128 .Ltmp72-.Lfunc_begin1          #     jumps to .Ltmp72
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin1          # >> Call Site 17 <<
	.uleb128 .Ltmp73-.Ltmp71                #   Call between .Ltmp71 and .Ltmp73
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin1          # >> Call Site 18 <<
	.uleb128 .Ltmp74-.Ltmp73                #   Call between .Ltmp73 and .Ltmp74
	.uleb128 .Ltmp75-.Lfunc_begin1          #     jumps to .Ltmp75
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin1          # >> Call Site 19 <<
	.uleb128 .Ltmp76-.Ltmp74                #   Call between .Ltmp74 and .Ltmp76
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin1          # >> Call Site 20 <<
	.uleb128 .Ltmp77-.Ltmp76                #   Call between .Ltmp76 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin1          #     jumps to .Ltmp78
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin1          # >> Call Site 21 <<
	.uleb128 .Ltmp79-.Ltmp77                #   Call between .Ltmp77 and .Ltmp79
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin1          # >> Call Site 22 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.uleb128 .Ltmp81-.Lfunc_begin1          #     jumps to .Ltmp81
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin1          # >> Call Site 23 <<
	.uleb128 .Ltmp85-.Ltmp80                #   Call between .Ltmp80 and .Ltmp85
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin1          # >> Call Site 24 <<
	.uleb128 .Ltmp86-.Ltmp85                #   Call between .Ltmp85 and .Ltmp86
	.uleb128 .Ltmp261-.Lfunc_begin1         #     jumps to .Ltmp261
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin1          # >> Call Site 25 <<
	.uleb128 .Ltmp87-.Ltmp86                #   Call between .Ltmp86 and .Ltmp87
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin1          # >> Call Site 26 <<
	.uleb128 .Ltmp88-.Ltmp87                #   Call between .Ltmp87 and .Ltmp88
	.uleb128 .Ltmp261-.Lfunc_begin1         #     jumps to .Ltmp261
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin1          # >> Call Site 27 <<
	.uleb128 .Ltmp89-.Ltmp88                #   Call between .Ltmp88 and .Ltmp89
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin1          # >> Call Site 28 <<
	.uleb128 .Ltmp90-.Ltmp89                #   Call between .Ltmp89 and .Ltmp90
	.uleb128 .Ltmp108-.Lfunc_begin1         #     jumps to .Ltmp108
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin1          # >> Call Site 29 <<
	.uleb128 .Ltmp91-.Ltmp90                #   Call between .Ltmp90 and .Ltmp91
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin1          # >> Call Site 30 <<
	.uleb128 .Ltmp92-.Ltmp91                #   Call between .Ltmp91 and .Ltmp92
	.uleb128 .Ltmp105-.Lfunc_begin1         #     jumps to .Ltmp105
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin1          # >> Call Site 31 <<
	.uleb128 .Ltmp93-.Ltmp92                #   Call between .Ltmp92 and .Ltmp93
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin1          # >> Call Site 32 <<
	.uleb128 .Ltmp94-.Ltmp93                #   Call between .Ltmp93 and .Ltmp94
	.uleb128 .Ltmp102-.Lfunc_begin1         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin1          # >> Call Site 33 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp95-.Lfunc_begin1          # >> Call Site 34 <<
	.uleb128 .Ltmp96-.Ltmp95                #   Call between .Ltmp95 and .Ltmp96
	.uleb128 .Ltmp99-.Lfunc_begin1          #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp96-.Lfunc_begin1          # >> Call Site 35 <<
	.uleb128 .Ltmp124-.Ltmp96               #   Call between .Ltmp96 and .Ltmp124
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin1         # >> Call Site 36 <<
	.uleb128 .Ltmp125-.Ltmp124              #   Call between .Ltmp124 and .Ltmp125
	.uleb128 .Ltmp126-.Lfunc_begin1         #     jumps to .Ltmp126
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp125-.Lfunc_begin1         # >> Call Site 37 <<
	.uleb128 .Ltmp112-.Ltmp125              #   Call between .Ltmp125 and .Ltmp112
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin1         # >> Call Site 38 <<
	.uleb128 .Ltmp113-.Ltmp112              #   Call between .Ltmp112 and .Ltmp113
	.uleb128 .Ltmp114-.Lfunc_begin1         #     jumps to .Ltmp114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin1         # >> Call Site 39 <<
	.uleb128 .Ltmp115-.Ltmp113              #   Call between .Ltmp113 and .Ltmp115
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin1         # >> Call Site 40 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin1         #     jumps to .Ltmp117
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp116-.Lfunc_begin1         # >> Call Site 41 <<
	.uleb128 .Ltmp130-.Ltmp116              #   Call between .Ltmp116 and .Ltmp130
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin1         # >> Call Site 42 <<
	.uleb128 .Ltmp131-.Ltmp130              #   Call between .Ltmp130 and .Ltmp131
	.uleb128 .Ltmp139-.Lfunc_begin1         #     jumps to .Ltmp139
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin1         # >> Call Site 43 <<
	.uleb128 .Ltmp132-.Ltmp131              #   Call between .Ltmp131 and .Ltmp132
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp132-.Lfunc_begin1         # >> Call Site 44 <<
	.uleb128 .Ltmp133-.Ltmp132              #   Call between .Ltmp132 and .Ltmp133
	.uleb128 .Ltmp136-.Lfunc_begin1         #     jumps to .Ltmp136
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp133-.Lfunc_begin1         # >> Call Site 45 <<
	.uleb128 .Ltmp155-.Ltmp133              #   Call between .Ltmp133 and .Ltmp155
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp155-.Lfunc_begin1         # >> Call Site 46 <<
	.uleb128 .Ltmp156-.Ltmp155              #   Call between .Ltmp155 and .Ltmp156
	.uleb128 .Ltmp157-.Lfunc_begin1         #     jumps to .Ltmp157
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp156-.Lfunc_begin1         # >> Call Site 47 <<
	.uleb128 .Ltmp143-.Ltmp156              #   Call between .Ltmp156 and .Ltmp143
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp143-.Lfunc_begin1         # >> Call Site 48 <<
	.uleb128 .Ltmp144-.Ltmp143              #   Call between .Ltmp143 and .Ltmp144
	.uleb128 .Ltmp145-.Lfunc_begin1         #     jumps to .Ltmp145
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin1         # >> Call Site 49 <<
	.uleb128 .Ltmp146-.Ltmp144              #   Call between .Ltmp144 and .Ltmp146
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp146-.Lfunc_begin1         # >> Call Site 50 <<
	.uleb128 .Ltmp147-.Ltmp146              #   Call between .Ltmp146 and .Ltmp147
	.uleb128 .Ltmp148-.Lfunc_begin1         #     jumps to .Ltmp148
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp147-.Lfunc_begin1         # >> Call Site 51 <<
	.uleb128 .Ltmp161-.Ltmp147              #   Call between .Ltmp147 and .Ltmp161
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp161-.Lfunc_begin1         # >> Call Site 52 <<
	.uleb128 .Ltmp162-.Ltmp161              #   Call between .Ltmp161 and .Ltmp162
	.uleb128 .Ltmp170-.Lfunc_begin1         #     jumps to .Ltmp170
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp162-.Lfunc_begin1         # >> Call Site 53 <<
	.uleb128 .Ltmp163-.Ltmp162              #   Call between .Ltmp162 and .Ltmp163
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp163-.Lfunc_begin1         # >> Call Site 54 <<
	.uleb128 .Ltmp164-.Ltmp163              #   Call between .Ltmp163 and .Ltmp164
	.uleb128 .Ltmp167-.Lfunc_begin1         #     jumps to .Ltmp167
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp164-.Lfunc_begin1         # >> Call Site 55 <<
	.uleb128 .Ltmp186-.Ltmp164              #   Call between .Ltmp164 and .Ltmp186
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp186-.Lfunc_begin1         # >> Call Site 56 <<
	.uleb128 .Ltmp187-.Ltmp186              #   Call between .Ltmp186 and .Ltmp187
	.uleb128 .Ltmp188-.Lfunc_begin1         #     jumps to .Ltmp188
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp187-.Lfunc_begin1         # >> Call Site 57 <<
	.uleb128 .Ltmp174-.Ltmp187              #   Call between .Ltmp187 and .Ltmp174
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp174-.Lfunc_begin1         # >> Call Site 58 <<
	.uleb128 .Ltmp175-.Ltmp174              #   Call between .Ltmp174 and .Ltmp175
	.uleb128 .Ltmp176-.Lfunc_begin1         #     jumps to .Ltmp176
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp175-.Lfunc_begin1         # >> Call Site 59 <<
	.uleb128 .Ltmp177-.Ltmp175              #   Call between .Ltmp175 and .Ltmp177
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp177-.Lfunc_begin1         # >> Call Site 60 <<
	.uleb128 .Ltmp178-.Ltmp177              #   Call between .Ltmp177 and .Ltmp178
	.uleb128 .Ltmp179-.Lfunc_begin1         #     jumps to .Ltmp179
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp178-.Lfunc_begin1         # >> Call Site 61 <<
	.uleb128 .Ltmp192-.Ltmp178              #   Call between .Ltmp178 and .Ltmp192
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp192-.Lfunc_begin1         # >> Call Site 62 <<
	.uleb128 .Ltmp193-.Ltmp192              #   Call between .Ltmp192 and .Ltmp193
	.uleb128 .Ltmp201-.Lfunc_begin1         #     jumps to .Ltmp201
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp193-.Lfunc_begin1         # >> Call Site 63 <<
	.uleb128 .Ltmp194-.Ltmp193              #   Call between .Ltmp193 and .Ltmp194
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp194-.Lfunc_begin1         # >> Call Site 64 <<
	.uleb128 .Ltmp195-.Ltmp194              #   Call between .Ltmp194 and .Ltmp195
	.uleb128 .Ltmp198-.Lfunc_begin1         #     jumps to .Ltmp198
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp195-.Lfunc_begin1         # >> Call Site 65 <<
	.uleb128 .Ltmp217-.Ltmp195              #   Call between .Ltmp195 and .Ltmp217
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp217-.Lfunc_begin1         # >> Call Site 66 <<
	.uleb128 .Ltmp218-.Ltmp217              #   Call between .Ltmp217 and .Ltmp218
	.uleb128 .Ltmp219-.Lfunc_begin1         #     jumps to .Ltmp219
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp218-.Lfunc_begin1         # >> Call Site 67 <<
	.uleb128 .Ltmp205-.Ltmp218              #   Call between .Ltmp218 and .Ltmp205
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp205-.Lfunc_begin1         # >> Call Site 68 <<
	.uleb128 .Ltmp206-.Ltmp205              #   Call between .Ltmp205 and .Ltmp206
	.uleb128 .Ltmp207-.Lfunc_begin1         #     jumps to .Ltmp207
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp206-.Lfunc_begin1         # >> Call Site 69 <<
	.uleb128 .Ltmp208-.Ltmp206              #   Call between .Ltmp206 and .Ltmp208
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp208-.Lfunc_begin1         # >> Call Site 70 <<
	.uleb128 .Ltmp209-.Ltmp208              #   Call between .Ltmp208 and .Ltmp209
	.uleb128 .Ltmp210-.Lfunc_begin1         #     jumps to .Ltmp210
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp209-.Lfunc_begin1         # >> Call Site 71 <<
	.uleb128 .Ltmp223-.Ltmp209              #   Call between .Ltmp209 and .Ltmp223
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp223-.Lfunc_begin1         # >> Call Site 72 <<
	.uleb128 .Ltmp224-.Ltmp223              #   Call between .Ltmp223 and .Ltmp224
	.uleb128 .Ltmp232-.Lfunc_begin1         #     jumps to .Ltmp232
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp224-.Lfunc_begin1         # >> Call Site 73 <<
	.uleb128 .Ltmp225-.Ltmp224              #   Call between .Ltmp224 and .Ltmp225
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp225-.Lfunc_begin1         # >> Call Site 74 <<
	.uleb128 .Ltmp226-.Ltmp225              #   Call between .Ltmp225 and .Ltmp226
	.uleb128 .Ltmp229-.Lfunc_begin1         #     jumps to .Ltmp229
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp226-.Lfunc_begin1         # >> Call Site 75 <<
	.uleb128 .Ltmp233-.Ltmp226              #   Call between .Ltmp226 and .Ltmp233
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp233-.Lfunc_begin1         # >> Call Site 76 <<
	.uleb128 .Ltmp234-.Ltmp233              #   Call between .Ltmp233 and .Ltmp234
	.uleb128 .Ltmp252-.Lfunc_begin1         #     jumps to .Ltmp252
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp234-.Lfunc_begin1         # >> Call Site 77 <<
	.uleb128 .Ltmp235-.Ltmp234              #   Call between .Ltmp234 and .Ltmp235
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp235-.Lfunc_begin1         # >> Call Site 78 <<
	.uleb128 .Ltmp236-.Ltmp235              #   Call between .Ltmp235 and .Ltmp236
	.uleb128 .Ltmp249-.Lfunc_begin1         #     jumps to .Ltmp249
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp236-.Lfunc_begin1         # >> Call Site 79 <<
	.uleb128 .Ltmp237-.Ltmp236              #   Call between .Ltmp236 and .Ltmp237
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp237-.Lfunc_begin1         # >> Call Site 80 <<
	.uleb128 .Ltmp238-.Ltmp237              #   Call between .Ltmp237 and .Ltmp238
	.uleb128 .Ltmp246-.Lfunc_begin1         #     jumps to .Ltmp246
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp238-.Lfunc_begin1         # >> Call Site 81 <<
	.uleb128 .Ltmp239-.Ltmp238              #   Call between .Ltmp238 and .Ltmp239
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp239-.Lfunc_begin1         # >> Call Site 82 <<
	.uleb128 .Ltmp240-.Ltmp239              #   Call between .Ltmp239 and .Ltmp240
	.uleb128 .Ltmp243-.Lfunc_begin1         #     jumps to .Ltmp243
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp240-.Lfunc_begin1         # >> Call Site 83 <<
	.uleb128 .Ltmp109-.Ltmp240              #   Call between .Ltmp240 and .Ltmp109
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin1         # >> Call Site 84 <<
	.uleb128 .Ltmp110-.Ltmp109              #   Call between .Ltmp109 and .Ltmp110
	.uleb128 .Ltmp111-.Lfunc_begin1         #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp110-.Lfunc_begin1         # >> Call Site 85 <<
	.uleb128 .Ltmp140-.Ltmp110              #   Call between .Ltmp110 and .Ltmp140
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp140-.Lfunc_begin1         # >> Call Site 86 <<
	.uleb128 .Ltmp141-.Ltmp140              #   Call between .Ltmp140 and .Ltmp141
	.uleb128 .Ltmp142-.Lfunc_begin1         #     jumps to .Ltmp142
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp141-.Lfunc_begin1         # >> Call Site 87 <<
	.uleb128 .Ltmp171-.Ltmp141              #   Call between .Ltmp141 and .Ltmp171
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp171-.Lfunc_begin1         # >> Call Site 88 <<
	.uleb128 .Ltmp172-.Ltmp171              #   Call between .Ltmp171 and .Ltmp172
	.uleb128 .Ltmp173-.Lfunc_begin1         #     jumps to .Ltmp173
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp172-.Lfunc_begin1         # >> Call Site 89 <<
	.uleb128 .Ltmp202-.Ltmp172              #   Call between .Ltmp172 and .Ltmp202
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp202-.Lfunc_begin1         # >> Call Site 90 <<
	.uleb128 .Ltmp203-.Ltmp202              #   Call between .Ltmp202 and .Ltmp203
	.uleb128 .Ltmp204-.Lfunc_begin1         #     jumps to .Ltmp204
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp203-.Lfunc_begin1         # >> Call Site 91 <<
	.uleb128 .Ltmp256-.Ltmp203              #   Call between .Ltmp203 and .Ltmp256
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp256-.Lfunc_begin1         # >> Call Site 92 <<
	.uleb128 .Ltmp257-.Ltmp256              #   Call between .Ltmp256 and .Ltmp257
	.uleb128 .Ltmp258-.Lfunc_begin1         #     jumps to .Ltmp258
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp253-.Lfunc_begin1         # >> Call Site 93 <<
	.uleb128 .Ltmp254-.Ltmp253              #   Call between .Ltmp253 and .Ltmp254
	.uleb128 .Ltmp255-.Lfunc_begin1         #     jumps to .Ltmp255
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin1          # >> Call Site 94 <<
	.uleb128 .Ltmp83-.Ltmp82                #   Call between .Ltmp82 and .Ltmp83
	.uleb128 .Ltmp84-.Lfunc_begin1          #     jumps to .Ltmp84
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin1          # >> Call Site 95 <<
	.uleb128 .Ltmp62-.Ltmp61                #   Call between .Ltmp61 and .Ltmp62
	.uleb128 .Ltmp63-.Lfunc_begin1          #     jumps to .Ltmp63
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin1          # >> Call Site 96 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin1          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin1          # >> Call Site 97 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin1          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin1          # >> Call Site 98 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin1          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin1          # >> Call Site 99 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin1          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp259-.Lfunc_begin1         # >> Call Site 100 <<
	.uleb128 .Ltmp260-.Ltmp259              #   Call between .Ltmp259 and .Ltmp260
	.uleb128 .Ltmp261-.Lfunc_begin1         #     jumps to .Ltmp261
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp260-.Lfunc_begin1         # >> Call Site 101 <<
	.uleb128 .Ltmp127-.Ltmp260              #   Call between .Ltmp260 and .Ltmp127
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin1         # >> Call Site 102 <<
	.uleb128 .Ltmp128-.Ltmp127              #   Call between .Ltmp127 and .Ltmp128
	.uleb128 .Ltmp129-.Lfunc_begin1         #     jumps to .Ltmp129
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin1         # >> Call Site 103 <<
	.uleb128 .Ltmp159-.Ltmp158              #   Call between .Ltmp158 and .Ltmp159
	.uleb128 .Ltmp160-.Lfunc_begin1         #     jumps to .Ltmp160
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin1         # >> Call Site 104 <<
	.uleb128 .Ltmp119-.Ltmp118              #   Call between .Ltmp118 and .Ltmp119
	.uleb128 .Ltmp120-.Lfunc_begin1         #     jumps to .Ltmp120
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin1         # >> Call Site 105 <<
	.uleb128 .Ltmp122-.Ltmp121              #   Call between .Ltmp121 and .Ltmp122
	.uleb128 .Ltmp123-.Lfunc_begin1         #     jumps to .Ltmp123
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp149-.Lfunc_begin1         # >> Call Site 106 <<
	.uleb128 .Ltmp150-.Ltmp149              #   Call between .Ltmp149 and .Ltmp150
	.uleb128 .Ltmp151-.Lfunc_begin1         #     jumps to .Ltmp151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin1         # >> Call Site 107 <<
	.uleb128 .Ltmp153-.Ltmp152              #   Call between .Ltmp152 and .Ltmp153
	.uleb128 .Ltmp154-.Lfunc_begin1         #     jumps to .Ltmp154
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp189-.Lfunc_begin1         # >> Call Site 108 <<
	.uleb128 .Ltmp190-.Ltmp189              #   Call between .Ltmp189 and .Ltmp190
	.uleb128 .Ltmp191-.Lfunc_begin1         #     jumps to .Ltmp191
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp220-.Lfunc_begin1         # >> Call Site 109 <<
	.uleb128 .Ltmp221-.Ltmp220              #   Call between .Ltmp220 and .Ltmp221
	.uleb128 .Ltmp222-.Lfunc_begin1         #     jumps to .Ltmp222
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp180-.Lfunc_begin1         # >> Call Site 110 <<
	.uleb128 .Ltmp181-.Ltmp180              #   Call between .Ltmp180 and .Ltmp181
	.uleb128 .Ltmp182-.Lfunc_begin1         #     jumps to .Ltmp182
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp183-.Lfunc_begin1         # >> Call Site 111 <<
	.uleb128 .Ltmp184-.Ltmp183              #   Call between .Ltmp183 and .Ltmp184
	.uleb128 .Ltmp185-.Lfunc_begin1         #     jumps to .Ltmp185
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp211-.Lfunc_begin1         # >> Call Site 112 <<
	.uleb128 .Ltmp212-.Ltmp211              #   Call between .Ltmp211 and .Ltmp212
	.uleb128 .Ltmp213-.Lfunc_begin1         #     jumps to .Ltmp213
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp214-.Lfunc_begin1         # >> Call Site 113 <<
	.uleb128 .Ltmp215-.Ltmp214              #   Call between .Ltmp214 and .Ltmp215
	.uleb128 .Ltmp216-.Lfunc_begin1         #     jumps to .Ltmp216
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp137-.Lfunc_begin1         # >> Call Site 114 <<
	.uleb128 .Ltmp138-.Ltmp137              #   Call between .Ltmp137 and .Ltmp138
	.uleb128 .Ltmp139-.Lfunc_begin1         #     jumps to .Ltmp139
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp134-.Lfunc_begin1         # >> Call Site 115 <<
	.uleb128 .Ltmp135-.Ltmp134              #   Call between .Ltmp134 and .Ltmp135
	.uleb128 .Ltmp136-.Lfunc_begin1         #     jumps to .Ltmp136
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp168-.Lfunc_begin1         # >> Call Site 116 <<
	.uleb128 .Ltmp169-.Ltmp168              #   Call between .Ltmp168 and .Ltmp169
	.uleb128 .Ltmp170-.Lfunc_begin1         #     jumps to .Ltmp170
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp165-.Lfunc_begin1         # >> Call Site 117 <<
	.uleb128 .Ltmp166-.Ltmp165              #   Call between .Ltmp165 and .Ltmp166
	.uleb128 .Ltmp167-.Lfunc_begin1         #     jumps to .Ltmp167
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin1         # >> Call Site 118 <<
	.uleb128 .Ltmp107-.Ltmp106              #   Call between .Ltmp106 and .Ltmp107
	.uleb128 .Ltmp108-.Lfunc_begin1         #     jumps to .Ltmp108
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin1         # >> Call Site 119 <<
	.uleb128 .Ltmp104-.Ltmp103              #   Call between .Ltmp103 and .Ltmp104
	.uleb128 .Ltmp105-.Lfunc_begin1         #     jumps to .Ltmp105
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin1         # >> Call Site 120 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin1         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin1          # >> Call Site 121 <<
	.uleb128 .Ltmp98-.Ltmp97                #   Call between .Ltmp97 and .Ltmp98
	.uleb128 .Ltmp99-.Lfunc_begin1          #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp199-.Lfunc_begin1         # >> Call Site 122 <<
	.uleb128 .Ltmp200-.Ltmp199              #   Call between .Ltmp199 and .Ltmp200
	.uleb128 .Ltmp201-.Lfunc_begin1         #     jumps to .Ltmp201
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp196-.Lfunc_begin1         # >> Call Site 123 <<
	.uleb128 .Ltmp197-.Ltmp196              #   Call between .Ltmp196 and .Ltmp197
	.uleb128 .Ltmp198-.Lfunc_begin1         #     jumps to .Ltmp198
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp230-.Lfunc_begin1         # >> Call Site 124 <<
	.uleb128 .Ltmp231-.Ltmp230              #   Call between .Ltmp230 and .Ltmp231
	.uleb128 .Ltmp232-.Lfunc_begin1         #     jumps to .Ltmp232
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp227-.Lfunc_begin1         # >> Call Site 125 <<
	.uleb128 .Ltmp228-.Ltmp227              #   Call between .Ltmp227 and .Ltmp228
	.uleb128 .Ltmp229-.Lfunc_begin1         #     jumps to .Ltmp229
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp250-.Lfunc_begin1         # >> Call Site 126 <<
	.uleb128 .Ltmp251-.Ltmp250              #   Call between .Ltmp250 and .Ltmp251
	.uleb128 .Ltmp252-.Lfunc_begin1         #     jumps to .Ltmp252
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp247-.Lfunc_begin1         # >> Call Site 127 <<
	.uleb128 .Ltmp248-.Ltmp247              #   Call between .Ltmp247 and .Ltmp248
	.uleb128 .Ltmp249-.Lfunc_begin1         #     jumps to .Ltmp249
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp244-.Lfunc_begin1         # >> Call Site 128 <<
	.uleb128 .Ltmp245-.Ltmp244              #   Call between .Ltmp244 and .Ltmp245
	.uleb128 .Ltmp246-.Lfunc_begin1         #     jumps to .Ltmp246
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp241-.Lfunc_begin1         # >> Call Site 129 <<
	.uleb128 .Ltmp242-.Ltmp241              #   Call between .Ltmp241 and .Ltmp242
	.uleb128 .Ltmp243-.Lfunc_begin1         #     jumps to .Ltmp243
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp242-.Lfunc_begin1         # >> Call Site 130 <<
	.uleb128 .Lfunc_end6-.Ltmp242           #   Call between .Ltmp242 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.type	.L.str.2,@object                # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"Error:  must specify meshtype"
	.size	.L.str.2, 30

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"pie"
	.size	.L.str.3, 4

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"rect"
	.size	.L.str.4, 5

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"hex"
	.size	.L.str.5, 4

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Error:  invalid meshtype "
	.size	.L.str.6, 26

	.type	.L.str.7,@object                # @.str.7
	.section	.rodata.str1.8,"aMS",@progbits,1
	.p2align	3, 0x0
.L.str.7:
	.asciz	"meshparams"
	.size	.L.str.7, 11

	.type	.L.str.8,@object                # @.str.8
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.8:
	.asciz	"Error:  must specify meshparams"
	.size	.L.str.8, 32

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Error:  meshparams must have <= 4 values"
	.size	.L.str.9, 41

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Error:  meshparams values must be positive"
	.size	.L.str.10, 43

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Error:  meshparams theta must be < 360"
	.size	.L.str.11, 39

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"vector::reserve"
	.size	.L.str.13, 16

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"vector::_M_realloc_append"
	.size	.L.str.14, 26

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"cannot create std::vector larger than max_size()"
	.size	.L.str.15, 49

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"vector::_M_range_insert"
	.size	.L.str.16, 24

	.globl	_ZN7GenMeshC1EPK9InputFile
	.type	_ZN7GenMeshC1EPK9InputFile,@function
_ZN7GenMeshC1EPK9InputFile = _ZN7GenMeshC2EPK9InputFile
	.globl	_ZN7GenMeshD1Ev
	.type	_ZN7GenMeshD1Ev,@function
_ZN7GenMeshD1Ev = _ZN7GenMeshD2Ev
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
