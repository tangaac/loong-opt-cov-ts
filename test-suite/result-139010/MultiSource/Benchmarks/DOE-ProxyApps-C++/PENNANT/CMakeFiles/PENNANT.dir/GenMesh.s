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
	vld	$vr0, $sp, 96
	ld.d	$a3, $fp, 16
	st.d	$a1, $fp, 0
	vst	$vr0, $fp, 8
	beqz	$a0, .LBB0_7
# %bb.4:
	st.d	$a0, $sp, 88
	st.d	$a3, $sp, 104
	b	.LBB0_14
.LBB0_5:                                # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
	ld.d	$a1, $sp, 88
	addi.d	$a2, $sp, 104
	beq	$a1, $a2, .LBB0_8
# %bb.6:                                # %.thread.i
	vld	$vr0, $sp, 96
	st.d	$a1, $fp, 0
	vst	$vr0, $fp, 8
.LBB0_7:
	st.d	$a2, $sp, 88
	move	$a0, $a2
	b	.LBB0_14
.LBB0_8:
	addi.d	$a2, $sp, 88
	beq	$a2, $fp, .LBB0_54
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
	ori	$a0, $zero, 3
	beq	$s1, $a0, .LBB0_23
# %bb.21:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
	ori	$a0, $zero, 4
	bne	$s1, $a0, .LBB0_58
# %bb.22:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.4)
	addi.d	$a1, $a1, %pc_lo12(.L.str.4)
	move	$a2, $s1
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_25
	b	.LBB0_62
.LBB0_23:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
	ld.d	$s2, $fp, 0
	pcalau12i	$a0, %pc_hi20(.L.str.3)
	addi.d	$a1, $a0, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 3
	move	$a0, $s2
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_25
# %bb.24:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42
	pcalau12i	$a0, %pc_hi20(.L.str.5)
	addi.d	$a1, $a0, %pc_lo12(.L.str.5)
	move	$a0, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	bnez	$a0, .LBB0_62
.LBB0_25:                               # %._crit_edge.i.i48
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
# %bb.26:
	ld.d	$a0, $sp, 24
	beqz	$a0, .LBB0_28
# %bb.27:
	ld.d	$a1, $sp, 40
	sub.d	$a1, $a1, $a0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_28:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit
	ld.d	$a0, $sp, 88
	beq	$a0, $s4, .LBB0_30
# %bb.29:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52
	ld.d	$a1, $sp, 104
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_30:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54
	ld.d	$s0, $sp, 56
	ld.d	$a0, $sp, 64
	beq	$s0, $a0, .LBB0_66
# %bb.31:
	sub.d	$s4, $a0, $s0
	srai.d	$s6, $s4, 3
	ori	$a0, $zero, 5
	bgeu	$s6, $a0, .LBB0_69
# %bb.32:
	fld.d	$fa0, $s0, 0
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s1, $fa0
	ori	$a0, $zero, 2
	st.w	$s1, $fp, 32
	bltu	$s6, $a0, .LBB0_34
# %bb.33:
	fld.d	$fa0, $s0, 8
	b	.LBB0_35
.LBB0_34:
	movgr2fr.w	$fa0, $s1
	ffint.d.w	$fa0, $fa0
.LBB0_35:
	ld.d	$s2, $fp, 8
	ftintrz.w.d	$fa0, $fa0
	movfr2gr.s	$s5, $fa0
	ori	$s7, $zero, 3
	st.w	$s5, $fp, 36
	bne	$s2, $s7, .LBB0_37
# %bb.36:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71
	ld.d	$a0, $fp, 0
	pcalau12i	$a1, %pc_hi20(.L.str.3)
	addi.d	$a1, $a1, %pc_lo12(.L.str.3)
	ori	$a2, $zero, 3
	ori	$s8, $zero, 3
	pcaddu18i	$ra, %call36(bcmp)
	jirl	$ra, $ra, 0
	beqz	$a0, .LBB0_50
.LBB0_37:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71.thread
	bltu	$s6, $s7, .LBB0_40
# %bb.38:
	fld.d	$fa2, $s0, 16
	ori	$a0, $zero, 32
	fst.d	$fa2, $fp, 40
	bne	$s4, $a0, .LBB0_41
.LBB0_39:
	fld.d	$fa0, $s0, 24
	b	.LBB0_42
.LBB0_40:
	vldi	$vr2, -912
	ori	$a0, $zero, 32
	fst.d	$fa2, $fp, 40
	beq	$s4, $a0, .LBB0_39
.LBB0_41:
	vldi	$vr0, -912
.LBB0_42:
	ori	$a0, $zero, 1
	fst.d	$fa0, $fp, 48
	blt	$s1, $a0, .LBB0_55
# %bb.43:
	blt	$s5, $a0, .LBB0_55
# %bb.44:
	movgr2fr.d	$fa1, $zero
	fcmp.cle.d	$fcc0, $fa2, $fa1
	bcnez	$fcc0, .LBB0_55
# %bb.45:
	fcmp.cult.d	$fcc0, $fa1, $fa0
	bceqz	$fcc0, .LBB0_55
# %bb.46:
	ori	$a0, $zero, 3
	bne	$s2, $a0, .LBB0_49
# %bb.47:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
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
	bcnez	$fcc0, .LBB0_49
# %bb.48:                               # %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
	beqz	$a0, .LBB0_72
.LBB0_49:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit81
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
.LBB0_50:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit71.thread87
	bltu	$s6, $s8, .LBB0_52
# %bb.51:
	fld.d	$fa0, $s0, 16
	pcalau12i	$a0, %pc_hi20(.LCPI0_2)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_2)
	fmul.d	$fa0, $fa0, $fa1
	b	.LBB0_53
.LBB0_52:
	pcalau12i	$a0, %pc_hi20(.LCPI0_1)
	fld.d	$fa0, $a0, %pc_lo12(.LCPI0_1)
.LBB0_53:
	pcalau12i	$a0, %pc_hi20(.LCPI0_3)
	fld.d	$fa1, $a0, %pc_lo12(.LCPI0_3)
	fdiv.d	$fa2, $fa0, $fa1
	ori	$a0, $zero, 32
	fst.d	$fa2, $fp, 40
	beq	$s4, $a0, .LBB0_39
	b	.LBB0_41
.LBB0_54:
	move	$a0, $a1
	b	.LBB0_14
.LBB0_55:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_75
# %bb.56:
.Ltmp10:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.10)
	addi.d	$a1, $a1, %pc_lo12(.L.str.10)
	ori	$a2, $zero, 42
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp11:
# %bb.57:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit73
.Ltmp12:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp13:
	b	.LBB0_75
.LBB0_58:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30
	bnez	$s1, .LBB0_62
# %bb.59:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_75
# %bb.60:
.Ltmp23:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.2)
	addi.d	$a1, $a1, %pc_lo12(.L.str.2)
	ori	$a2, $zero, 29
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp24:
# %bb.61:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
.Ltmp25:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp26:
	b	.LBB0_75
.LBB0_62:                               # %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit42.thread
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_75
# %bb.63:
.Ltmp27:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.6)
	addi.d	$a1, $a1, %pc_lo12(.L.str.6)
	ori	$a2, $zero, 25
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp28:
# %bb.64:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit44
	ld.d	$a1, $fp, 0
	ld.d	$a2, $fp, 8
.Ltmp29:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp30:
# %bb.65:                               # %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
.Ltmp31:
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp32:
	b	.LBB0_75
.LBB0_66:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_75
# %bb.67:
.Ltmp18:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.8)
	addi.d	$a1, $a1, %pc_lo12(.L.str.8)
	ori	$a2, $zero, 31
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp19:
# %bb.68:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit56
.Ltmp20:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp21:
	b	.LBB0_75
.LBB0_69:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_75
# %bb.70:
.Ltmp14:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.9)
	addi.d	$a1, $a1, %pc_lo12(.L.str.9)
	ori	$a2, $zero, 40
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp15:
# %bb.71:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit67
.Ltmp16:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp17:
	b	.LBB0_75
.LBB0_72:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	bnez	$a0, .LBB0_75
# %bb.73:
.Ltmp6:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcalau12i	$a1, %pc_hi20(.L.str.11)
	addi.d	$a1, $a1, %pc_lo12(.L.str.11)
	ori	$a2, $zero, 38
	pcaddu18i	$ra, %call36(_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l)
	jirl	$ra, $ra, 0
.Ltmp7:
# %bb.74:                               # %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit77
.Ltmp8:
	pcalau12i	$a0, %got_pc_hi20(_ZSt4cerr)
	ld.d	$a0, $a0, %got_pc_lo12(_ZSt4cerr)
	pcaddu18i	$ra, %call36(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	jirl	$ra, $ra, 0
.Ltmp9:
.LBB0_75:                               # %_ZNSolsEPFRSoS_E.exit
	ori	$a0, $zero, 1
	pcaddu18i	$ra, %call36(exit)
	jirl	$ra, $ra, 0
.LBB0_76:
.Ltmp33:
	move	$s0, $a0
	b	.LBB0_89
.LBB0_77:
.Ltmp5:
	ld.d	$a2, $sp, 24
	move	$s0, $a0
	beqz	$a2, .LBB0_79
# %bb.78:
	ld.d	$a0, $sp, 40
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_79:                               # %_ZNSt6vectorIdSaIdEED2Ev.exit60
	ld.d	$a0, $sp, 88
	beq	$a0, $s4, .LBB0_89
# %bb.80:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61
	ld.d	$a1, $sp, 104
	b	.LBB0_85
.LBB0_81:
.Ltmp2:
	ld.d	$a2, $sp, 24
	move	$s0, $a0
	beq	$a2, $s2, .LBB0_83
# %bb.82:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
	ld.d	$a0, $sp, 40
	addi.d	$a1, $a0, 1
	move	$a0, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_83:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35
	ld.d	$a0, $sp, 56
	beq	$a0, $s1, .LBB0_89
# %bb.84:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
	ld.d	$a1, $sp, 72
.LBB0_85:
	addi.d	$a1, $a1, 1
	b	.LBB0_88
.LBB0_86:
.Ltmp22:
	ld.d	$a2, $sp, 56
	move	$s0, $a0
	beqz	$a2, .LBB0_89
# %bb.87:
	ld.d	$a0, $sp, 72
	sub.d	$a1, $a0, $a2
	move	$a0, $a2
.LBB0_88:
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_89:
	ld.d	$a0, $fp, 0
	beq	$a0, $s3, .LBB0_91
# %bb.90:                               # %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i82
	ld.d	$a1, $s3, 0
	addi.d	$a1, $a1, 1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB0_91:                               # %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit84
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
	st.d	$a0, $sp, 136                   # 8-byte Folded Spill
	ld.w	$a0, $a0, 68
	addi.d	$t1, $s5, 1
	addi.d	$t2, $t0, 1
	sltui	$a0, $a0, 1
	st.d	$t0, $sp, 56                    # 8-byte Folded Spill
	mul.d	$t0, $t1, $t0
	st.d	$t0, $sp, 8                     # 8-byte Folded Spill
	addi.d	$t0, $t0, 1
	st.d	$t1, $sp, 88                    # 8-byte Folded Spill
	st.d	$t2, $sp, 16                    # 8-byte Folded Spill
	mulw.d.w	$t1, $t2, $t1
	st.d	$t1, $sp, 0                     # 8-byte Folded Spill
	masknez	$t1, $t1, $a0
	maskeqz	$a0, $t0, $a0
	or	$a0, $a0, $t1
	addi.w	$s1, $a0, 0
	addi.w	$a0, $zero, -1
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	st.d	$a2, $sp, 120                   # 8-byte Folded Spill
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	bge	$a0, $s1, .LBB4_378
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
# %bb.3:                                # %.lr.ph.i.i.i.i.i.i.preheader
	move	$a0, $s7
	move	$a1, $s0
	.p2align	4, , 16
.LBB4_4:                                # %.lr.ph.i.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a1, 0
	vst	$vr0, $a0, 0
	addi.d	$a1, $a1, 16
	addi.d	$a0, $a0, 16
	bne	$a1, $fp, .LBB4_4
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
	st.d	$s5, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bgez	$a0, .LBB4_9
	b	.LBB4_33
.LBB4_8:
	move	$s7, $s0
	st.d	$s5, $sp, 104                   # 8-byte Folded Spill
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bltz	$a0, .LBB4_33
.LBB4_9:                                # %.lr.ph515
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a2, 32
	move	$a0, $zero
	fld.d	$fa0, $a2, 40
	movgr2fr.w	$fa1, $a1
	ld.w	$a1, $a2, 36
	ffint.d.w	$fa1, $fa1
	fld.d	$fa2, $a2, 48
	fdiv.d	$fs1, $fa0, $fa1
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fdiv.d	$fs2, $fa2, $fa0
	addi.w	$a1, $zero, -16
	lu52i.d	$a1, $a1, 2047
	st.d	$a1, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$s1, $a1, 127
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
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a0, $a2, 1
	move	$s7, $s8
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	beq	$a2, $a1, .LBB4_33
.LBB4_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_18 Depth 2
                                        #       Child Loop BB4_22 Depth 3
                                        #     Child Loop BB4_29 Depth 2
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a1, 84
	add.w	$a1, $a1, $a0
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
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
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a1, $a2, 80
	ld.w	$a2, $a2, 32
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
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_377
# %bb.20:                               # %.noexc414
                                        #   in Loop: Header=BB4_18 Depth=2
	srai.d	$a0, $s0, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s1
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s1, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	add.d	$a0, $a0, $s0
	fstx.d	$fs4, $s8, $s0
	fst.d	$fs0, $a0, 8
	move	$s5, $s8
	beq	$s7, $fp, .LBB4_23
# %bb.21:                               # %.lr.ph.i.i.i.i.i.i.i405.preheader
                                        #   in Loop: Header=BB4_18 Depth=2
	move	$s5, $s8
	move	$a0, $s7
	.p2align	4, , 16
.LBB4_22:                               # %.lr.ph.i.i.i.i.i.i.i405
                                        #   Parent Loop BB4_14 Depth=1
                                        #     Parent Loop BB4_18 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a0, 0
	vst	$vr0, $s5, 0
	addi.d	$a0, $a0, 16
	addi.d	$s5, $s5, 16
	bne	$a0, $fp, .LBB4_22
.LBB4_23:                               # %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit.i.i409
                                        #   in Loop: Header=BB4_18 Depth=2
	beqz	$s7, .LBB4_25
# %bb.24:                               #   in Loop: Header=BB4_18 Depth=2
	move	$a0, $s7
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_25:                               # %_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_.exit.i412
                                        #   in Loop: Header=BB4_18 Depth=2
	addi.d	$s0, $s5, 16
	st.d	$s8, $s6, 0
	st.d	$s0, $s6, 8
	alsl.d	$fp, $s4, $s8, 4
	st.d	$fp, $s6, 16
	move	$s7, $s8
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	addi.w	$a0, $s2, 1
	bne	$s2, $s5, .LBB4_18
	b	.LBB4_13
.LBB4_26:                               #   in Loop: Header=BB4_14 Depth=1
	sub.d	$s0, $fp, $s7
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_377
# %bb.27:                               # %.noexc401
                                        #   in Loop: Header=BB4_14 Depth=1
	srai.d	$a0, $s0, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s1
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s1, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$s2, $a1, $a0
	slli.d	$a0, $s2, 4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s8, $a0
	vld	$vr0, $sp, 64                   # 16-byte Folded Reload
	vstx	$vr0, $a0, $s0
	move	$s4, $a0
	beq	$s7, $fp, .LBB4_30
# %bb.28:                               # %.lr.ph.i.i.i.i.i.i.i.preheader
                                        #   in Loop: Header=BB4_14 Depth=1
	move	$s4, $s8
	move	$a0, $s7
	.p2align	4, , 16
.LBB4_29:                               # %.lr.ph.i.i.i.i.i.i.i
                                        #   Parent Loop BB4_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	vld	$vr0, $a0, 0
	vst	$vr0, $s4, 0
	addi.d	$a0, $a0, 16
	addi.d	$s4, $s4, 16
	bne	$a0, $fp, .LBB4_29
.LBB4_30:                               # %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit.i.i
                                        #   in Loop: Header=BB4_14 Depth=1
	beqz	$s7, .LBB4_32
# %bb.31:                               #   in Loop: Header=BB4_14 Depth=1
	move	$a0, $s7
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_32:                               # %_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_.exit.i
                                        #   in Loop: Header=BB4_14 Depth=1
	addi.d	$a0, $s4, 16
	st.d	$s8, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$fp, $s2, $s8, 4
	st.d	$fp, $s6, 16
	b	.LBB4_13
.LBB4_33:                               # %._crit_edge
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	mul.w	$fp, $a0, $s5
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bge	$a0, $fp, .LBB4_378
# %bb.34:
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$s0, $a1, 0
	sub.d	$s7, $a0, $s0
	srai.d	$a0, $s7, 2
	slli.d	$s6, $fp, 2
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	bgeu	$a0, $fp, .LBB4_40
# %bb.35:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	sub.d	$s8, $a0, $s0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s2, $a0
	blt	$s8, $a1, .LBB4_37
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
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$s2, $a1, 0
	add.d	$a0, $s2, $s8
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $a1, 16
.LBB4_40:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$s0, $a1, 0
	sub.d	$s7, $a0, $s0
	srai.d	$a0, $s7, 2
	bgeu	$a0, $fp, .LBB4_46
# %bb.41:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i160
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	sub.d	$s8, $a0, $s0
	move	$a0, $s6
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s2, $a0
	blt	$s8, $a1, .LBB4_43
# %bb.42:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s8
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_43:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i161
	beqz	$s0, .LBB4_45
# %bb.44:
	move	$a0, $s0
	move	$a1, $s7
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_45:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i163
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$s2, $a1, 0
	add.d	$a0, $s2, $s8
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $a1, 16
.LBB4_46:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit164
	ld.d	$a0, $s3, 16
	ld.d	$s0, $s3, 0
	addi.w	$fp, $s6, 0
	sub.d	$s6, $a0, $s0
	srai.d	$a0, $s6, 2
	bgeu	$a0, $fp, .LBB4_52
# %bb.47:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i165
	ld.d	$a0, $s3, 8
	sub.d	$s7, $a0, $s0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s2, $a0
	blt	$s7, $a1, .LBB4_49
# %bb.48:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_49:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i166
	beqz	$s0, .LBB4_51
# %bb.50:
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_51:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i168
	st.d	$s2, $s3, 0
	add.d	$a0, $s2, $s7
	st.d	$a0, $s3, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $s3, 16
.LBB4_52:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit169
	ld.w	$a1, $s1, 76
	ori	$a0, $zero, 1
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	blt	$a1, $a0, .LBB4_116
# %bb.53:                               # %.preheader509.lr.ph
	ld.w	$a0, $s1, 72
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB4_116
# %bb.54:                               # %.preheader509.preheader
	st.d	$zero, $sp, 96                  # 8-byte Folded Spill
	ori	$s2, $zero, 1
	addi.w	$a2, $zero, -4
	lu52i.d	$a2, $a2, 2047
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$fp, $a2, 511
	b	.LBB4_57
	.p2align	4, , 16
.LBB4_55:                               # %._crit_edge518.loopexit
                                        #   in Loop: Header=BB4_57 Depth=1
	ld.w	$a1, $s1, 76
.LBB4_56:                               # %._crit_edge518
                                        #   in Loop: Header=BB4_57 Depth=1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	addi.w	$a2, $a2, 1
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	bge	$a2, $a1, .LBB4_116
.LBB4_57:                               # %.preheader509
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB4_60 Depth 2
	blt	$a0, $s2, .LBB4_56
# %bb.58:                               # %.lr.ph517
                                        #   in Loop: Header=BB4_57 Depth=1
	ld.d	$a1, $s3, 8
	move	$s8, $zero
	ld.d	$a0, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	mul.d	$a0, $a2, $a0
	st.d	$a0, $sp, 64                    # 8-byte Folded Spill
	b	.LBB4_60
	.p2align	4, , 16
.LBB4_59:                               #   in Loop: Header=BB4_60 Depth=2
	st.w	$s1, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $s3, 8
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $s1, 72
	addi.w	$s8, $s8, 1
	bge	$s8, $a0, .LBB4_55
.LBB4_60:                               #   Parent Loop BB4_57 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s3, 0
	ld.d	$a0, $a5, 8
	ld.d	$a3, $a5, 16
	sub.d	$a1, $a1, $a2
	srli.d	$s4, $a1, 2
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
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_377
# %bb.63:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s1, $a1, $a0
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
# %bb.66:                               #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_67:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i
                                        #   in Loop: Header=BB4_60 Depth=2
	add.d	$a0, $s7, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	st.d	$s7, $a5, 0
	st.d	$a0, $a5, 8
	alsl.d	$a0, $s1, $s7, 2
	st.d	$a0, $a5, 16
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
.LBB4_68:                               # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
                                        #   in Loop: Header=BB4_60 Depth=2
	ld.w	$a0, $s1, 68
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	add.d	$a2, $s8, $a1
	sltui	$a3, $a0, 1
	ld.w	$a4, $s1, 84
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 8
	ld.d	$a1, $a1, 16
	maskeqz	$a3, $s5, $a3
	sub.w	$a4, $zero, $a4
	sub.d	$s1, $a2, $a3
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	bne	$a2, $a4, .LBB4_72
# %bb.69:                               #   in Loop: Header=BB4_60 Depth=2
	beq	$a0, $a1, .LBB4_78
# %bb.70:                               #   in Loop: Header=BB4_60 Depth=2
	ori	$a1, $zero, 3
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
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
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
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
.LBB4_76:                               # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit185
                                        #   in Loop: Header=BB4_60 Depth=2
	addi.d	$a1, $a1, 4
	st.d	$a1, $s3, 8
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	add.d	$s1, $s1, $a2
	addi.d	$s5, $s1, 1
	beq	$a1, $a0, .LBB4_90
.LBB4_77:                               #   in Loop: Header=BB4_60 Depth=2
	st.w	$s5, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $s3, 8
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB4_59
	b	.LBB4_96
.LBB4_78:                               #   in Loop: Header=BB4_60 Depth=2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $a1, 0
	sub.d	$s0, $a0, $s6
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_377
# %bb.79:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i173
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s4, $a1, $a0
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
.LBB4_81:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i175
                                        #   in Loop: Header=BB4_60 Depth=2
	beqz	$s6, .LBB4_83
# %bb.82:                               #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_83:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i177
                                        #   in Loop: Header=BB4_60 Depth=2
	add.d	$a0, $s7, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$s7, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s4, $s7, 2
	st.d	$a0, $a1, 16
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $s3, 8
	ld.d	$a0, $s3, 16
	bne	$a1, $a0, .LBB4_71
.LBB4_84:                               #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s6, $s3, 0
	sub.d	$s0, $a1, $s6
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_377
# %bb.85:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i180
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s4, $a1, $a0
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
.LBB4_87:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i182
                                        #   in Loop: Header=BB4_60 Depth=2
	beqz	$s6, .LBB4_89
# %bb.88:                               #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_89:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i198
                                        #   in Loop: Header=BB4_60 Depth=2
	add.d	$a0, $s7, $s0
	addi.d	$a1, $a0, 4
	st.d	$s7, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a0, $s4, $s7, 2
	st.d	$a0, $s3, 16
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	add.d	$s1, $s1, $a2
	addi.d	$s5, $s1, 1
	bne	$a1, $a0, .LBB4_77
.LBB4_90:                               #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s6, $s3, 0
	sub.d	$s0, $a0, $s6
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_377
# %bb.91:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i201
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s4, $a1, $a0
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
.LBB4_93:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i203
                                        #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	beqz	$s6, .LBB4_95
# %bb.94:                               #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_95:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i205
                                        #   in Loop: Header=BB4_60 Depth=2
	add.d	$a0, $s7, $s0
	addi.d	$a1, $a0, 4
	st.d	$s7, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a0, $s4, $s7, 2
	st.d	$a0, $s3, 16
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	bne	$a1, $a0, .LBB4_59
.LBB4_96:                               #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s6, $s3, 0
	sub.d	$s0, $a0, $s6
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_377
# %bb.97:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i208
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s4, $a1, $a0
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
.LBB4_99:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i210
                                        #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	beqz	$s6, .LBB4_101
# %bb.100:                              #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_101:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i212
                                        #   in Loop: Header=BB4_60 Depth=2
	add.d	$a0, $s7, $s0
	addi.d	$a1, $a0, 4
	st.d	$s7, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a0, $s4, $s7, 2
	st.d	$a0, $s3, 16
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.w	$a0, $s1, 72
	addi.w	$s8, $s8, 1
	blt	$s8, $a0, .LBB4_60
	b	.LBB4_55
.LBB4_102:                              #   in Loop: Header=BB4_60 Depth=2
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s6, $a1, 0
	sub.d	$s0, $a0, $s6
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_377
# %bb.103:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i187
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s4, $a1, $a0
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
.LBB4_105:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i189
                                        #   in Loop: Header=BB4_60 Depth=2
	beqz	$s6, .LBB4_107
# %bb.106:                              #   in Loop: Header=BB4_60 Depth=2
	move	$a0, $s6
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_107:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i191
                                        #   in Loop: Header=BB4_60 Depth=2
	add.d	$a0, $s7, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$s7, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s4, $s7, 2
	st.d	$a0, $a1, 16
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $s3, 8
	ld.d	$a0, $s3, 16
	bne	$a1, $a0, .LBB4_74
.LBB4_108:                              #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s6, $s3, 0
	sub.d	$s0, $a1, $s6
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_377
# %bb.109:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s4, $a1, $a0
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
# %bb.112:                              #   in Loop: Header=BB4_60 Depth=2
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
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	addi.d	$s5, $s1, 1
	bne	$a1, $a0, .LBB4_75
.LBB4_114:                              #   in Loop: Header=BB4_60 Depth=2
	ld.d	$s6, $s3, 0
	sub.d	$s0, $a0, $s6
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_377
# %bb.115:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i194
                                        #   in Loop: Header=BB4_60 Depth=2
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	stx.w	$s5, $a0, $s0
	bge	$s0, $s2, .LBB4_86
	b	.LBB4_87
.LBB4_116:                              # %._crit_edge520
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel5numpeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel5numpeE)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB4_370
# %bb.117:
	move	$a0, $s1
	ld.w	$s1, $s1, 68
	ld.w	$fp, $a0, 64
	sltui	$a0, $s1, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	masknez	$a0, $a1, $a0
	sltui	$a1, $fp, 1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	masknez	$a1, $a2, $a1
	add.w	$s2, $a1, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bge	$a0, $s2, .LBB4_378
# %bb.118:
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$s3, $a1, 0
	sub.d	$s4, $a0, $s3
	srai.d	$a0, $s4, 2
	bgeu	$a0, $s2, .LBB4_124
# %bb.119:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i214
	ld.d	$a0, $a1, 8
	sub.d	$s0, $a0, $s3
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s5, $a0
	blt	$s0, $a1, .LBB4_121
# %bb.120:
	move	$a0, $s5
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_121:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i215
	beqz	$s3, .LBB4_123
# %bb.122:
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$s1, $a0, 68
	ld.w	$fp, $a0, 64
.LBB4_123:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i217
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$s5, $a1, 0
	add.d	$a0, $s5, $s0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s5, 2
	st.d	$a0, $a1, 16
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
.LBB4_124:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit218
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a1, 60
	addi.w	$a0, $a0, -1
	ld.w	$a1, $a1, 56
	xor	$a0, $s1, $a0
	sltui	$a0, $a0, 1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	masknez	$a0, $a2, $a0
	addi.w	$a1, $a1, -1
	xor	$a1, $fp, $a1
	sltui	$a1, $a1, 1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	masknez	$a1, $a2, $a1
	add.w	$a0, $a1, $a0
	addi.w	$a1, $zero, -2
	bge	$a1, $a0, .LBB4_378
# %bb.125:
	ld.d	$s6, $sp, 288
	ld.d	$a1, $s6, 16
	ld.d	$s3, $s6, 0
	addi.w	$s2, $a0, 1
	sub.d	$s4, $a1, $s3
	srai.d	$a0, $s4, 2
	bgeu	$a0, $s2, .LBB4_131
# %bb.126:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i219
	ld.d	$a0, $s6, 8
	sub.d	$s0, $a0, $s3
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s5, $a0
	blt	$s0, $a1, .LBB4_128
# %bb.127:
	move	$a0, $s5
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_128:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i220
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	beqz	$s3, .LBB4_130
# %bb.129:
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.w	$fp, $s1, 64
.LBB4_130:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i222
	st.d	$s5, $s6, 0
	add.d	$a0, $s5, $s0
	st.d	$a0, $s6, 8
	alsl.d	$a0, $s2, $s5, 2
	st.d	$a0, $s6, 16
	ld.w	$s1, $s1, 68
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
.LBB4_131:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit223
	beqz	$fp, .LBB4_158
# %bb.132:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit223
	beqz	$s1, .LBB4_158
# %bb.133:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$fp, $a0, 0
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 8
	ld.d	$a1, $a3, 16
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.w	$s1, $a2, 56
	beq	$a0, $a1, .LBB4_135
# %bb.134:
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	b	.LBB4_141
.LBB4_135:
	ld.d	$s0, $a3, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s3, $a0, .LBB4_377
# %bb.136:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i225
	srai.d	$a0, $s3, 2
	ori	$s5, $zero, 1
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s2, $a1, $a0
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
.LBB4_138:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i227
	add.d	$s5, $s4, $s3
	beqz	$s0, .LBB4_140
# %bb.139:
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_140:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i229
	addi.d	$a0, $s5, 4
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$s4, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s4, 2
	st.d	$a0, $a1, 16
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
.LBB4_141:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit230
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 8
	ld.d	$a1, $a3, 16
	nor	$a2, $s1, $zero
	add.d	$fp, $fp, $a2
	beq	$a0, $a1, .LBB4_143
# %bb.142:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	b	.LBB4_149
.LBB4_143:
	ld.d	$s0, $a3, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s3, $a0, .LBB4_377
# %bb.144:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i232
	srai.d	$a0, $s3, 2
	ori	$s2, $zero, 1
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s1, $a1, $a0
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$fp, $a0, $s3
	blt	$s3, $s2, .LBB4_146
# %bb.145:
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_146:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i234
	add.d	$fp, $s4, $s3
	beqz	$s0, .LBB4_148
# %bb.147:
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_148:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i236
	addi.d	$a0, $fp, 4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$s4, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s1, $s4, 2
	st.d	$a0, $a1, 16
.LBB4_149:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit237
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 8
	ld.d	$a1, $a3, 16
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
	beq	$s3, $a0, .LBB4_377
# %bb.152:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i239
	srai.d	$a0, $s3, 2
	ori	$s1, $zero, 1
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$fp, $a1, $a0
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
.LBB4_154:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i241
	add.d	$s1, $s4, $s3
	beqz	$s0, .LBB4_156
# %bb.155:
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_156:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i243
	addi.d	$a0, $s1, 4
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$s4, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s4, 2
	st.d	$a0, $a1, 16
	ld.d	$a2, $sp, 136                   # 8-byte Folded Reload
.LBB4_157:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit244thread-pre-split
	ld.w	$s1, $a2, 68
.LBB4_158:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit244
	beqz	$s1, .LBB4_184
# %bb.159:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$s4, $a2, 0
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$s1, $a1, 56
	sub.d	$s2, $a0, $s4
	st.d	$s2, $sp, 120                   # 8-byte Folded Spill
	bltz	$s5, .LBB4_174
# %bb.160:                              # %.lr.ph525.preheader
	ld.w	$a1, $a1, 64
	beqz	$a1, .LBB4_171
# %bb.161:
	move	$s5, $s4
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	beqz	$a1, .LBB4_173
.LBB4_162:                              # %.lr.ph525.peel.next.preheader
	move	$s2, $zero
	addi.w	$a1, $zero, -4
	lu52i.d	$s7, $a1, 2047
	ori	$s8, $zero, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$s3, $a1, 511
	b	.LBB4_164
	.p2align	4, , 16
.LBB4_163:                              #   in Loop: Header=BB4_164 Depth=1
	st.w	$s2, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	move	$s4, $s5
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	beq	$a1, $s2, .LBB4_174
.LBB4_164:                              # %.lr.ph525.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a2, 16
	addi.w	$s2, $s2, 1
	bne	$a0, $a1, .LBB4_163
# %bb.165:                              #   in Loop: Header=BB4_164 Depth=1
	sub.d	$s0, $a0, $s5
	beq	$s0, $s7, .LBB4_377
# %bb.166:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i260
                                        #   in Loop: Header=BB4_164 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s8, $a0
	masknez	$a2, $s8, $a1
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
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$s2, $a0, $s0
	blt	$s0, $s8, .LBB4_168
# %bb.167:                              #   in Loop: Header=BB4_164 Depth=1
	move	$a0, $s4
	move	$a1, $s5
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_168:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i262
                                        #   in Loop: Header=BB4_164 Depth=1
	beqz	$s5, .LBB4_170
# %bb.169:                              #   in Loop: Header=BB4_164 Depth=1
	move	$a0, $s5
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_170:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i264
                                        #   in Loop: Header=BB4_164 Depth=1
	add.d	$a0, $s4, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.d	$s4, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $fp, $s4, 2
	st.d	$a1, $a2, 16
	move	$s5, $s4
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	bne	$a1, $s2, .LBB4_164
	b	.LBB4_174
.LBB4_171:
	ld.d	$a1, $a2, 16
	beq	$a0, $a1, .LBB4_213
# %bb.172:
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	move	$s5, $s4
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	bnez	$a1, .LBB4_162
.LBB4_173:
	move	$s4, $s5
.LBB4_174:                              # %._crit_edge526
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 8
	ld.d	$a1, $a3, 16
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	sub.d	$s1, $a4, $s1
	beq	$a0, $a1, .LBB4_176
# %bb.175:
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	b	.LBB4_182
.LBB4_176:
	ld.d	$s0, $a3, 0
	sub.d	$s4, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB4_377
# %bb.177:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i246
	srai.d	$a0, $s4, 2
	ori	$s2, $zero, 1
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	stx.w	$s1, $a0, $s4
	blt	$s4, $s2, .LBB4_179
# %bb.178:
	move	$a0, $s5
	move	$a1, $s0
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_179:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i248
	add.d	$s1, $s5, $s4
	beqz	$s0, .LBB4_181
# %bb.180:
	move	$a0, $s0
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_181:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i250
	addi.d	$a0, $s1, 4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$s5, $a1, 0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $a2, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s5, 2
	st.d	$a0, $a1, 16
.LBB4_182:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit251
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a1, $a2, 8
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 8
	ld.d	$a2, $a4, 16
	srli.d	$a3, $a3, 2
	sub.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 2
	sub.d	$fp, $a1, $a3
	beq	$a0, $a2, .LBB4_198
# %bb.183:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
.LBB4_184:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit258
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $s1, 64
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	beqz	$a0, .LBB4_248
.LBB4_185:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $a3, 8
	ld.d	$s3, $a3, 0
	ld.w	$a2, $s1, 68
	ld.w	$s7, $a1, 0
	sub.d	$s0, $a0, $s3
	srai.d	$s5, $s0, 2
	st.d	$s7, $sp, 128                   # 8-byte Folded Spill
	beqz	$a2, .LBB4_196
.LBB4_186:
	st.d	$s5, $sp, 120                   # 8-byte Folded Spill
	ori	$s2, $zero, 1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	blt	$a0, $s2, .LBB4_232
.LBB4_187:                              # %.lr.ph531.preheader
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $a0, 68
	slti	$a0, $a0, 1
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
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
	b	.LBB4_189
	.p2align	4, , 16
.LBB4_188:                              #   in Loop: Header=BB4_189 Depth=1
	st.w	$s5, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	addi.w	$s1, $s1, -1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	add.d	$s5, $s5, $a2
	beqz	$s1, .LBB4_232
.LBB4_189:                              # %.lr.ph531
                                        # =>This Inner Loop Header: Depth=1
	bne	$a0, $a1, .LBB4_188
# %bb.190:                              #   in Loop: Header=BB4_189 Depth=1
	ld.d	$s3, $a3, 0
	sub.d	$s0, $a1, $s3
	beq	$s0, $s7, .LBB4_377
# %bb.191:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i302
                                        #   in Loop: Header=BB4_189 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s8
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s8, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s8, $a1
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$s5, $a0, $s0
	blt	$s0, $s2, .LBB4_193
# %bb.192:                              #   in Loop: Header=BB4_189 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_193:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i304
                                        #   in Loop: Header=BB4_189 Depth=1
	beqz	$s3, .LBB4_195
# %bb.194:                              #   in Loop: Header=BB4_189 Depth=1
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_195:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i306
                                        #   in Loop: Header=BB4_189 Depth=1
	add.d	$a0, $s4, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	st.d	$s4, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $fp, $s4, 2
	st.d	$a1, $a3, 16
	addi.w	$s1, $s1, -1
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	add.d	$s5, $s5, $a2
	bnez	$s1, .LBB4_189
	b	.LBB4_232
.LBB4_196:
	ld.d	$a1, $a3, 16
	beq	$a0, $a1, .LBB4_204
# %bb.197:
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	ld.w	$a0, $s1, 64
	ori	$a1, $zero, 2
	bge	$a0, $a1, .LBB4_210
	b	.LBB4_186
.LBB4_198:
	ld.d	$s0, $a4, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s3, $a0, .LBB4_377
# %bb.199:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i253
	srai.d	$a0, $s3, 2
	ori	$s2, $zero, 1
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s1, $a1, $a0
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$fp, $a0, $s3
	blt	$s3, $s2, .LBB4_201
# %bb.200:
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_201:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i255
	add.d	$fp, $s4, $s3
	beqz	$s0, .LBB4_203
# %bb.202:
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_203:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i257
	addi.d	$a0, $fp, 4
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$s4, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s1, $s4, 2
	st.d	$a0, $a1, 16
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $s1, 64
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	bnez	$a0, .LBB4_185
	b	.LBB4_248
.LBB4_204:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s2, $sp, 32                    # 8-byte Folded Reload
	beq	$s0, $a0, .LBB4_377
# %bb.205:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i267
	ori	$fp, $zero, 1
	sltu	$a0, $fp, $s5
	masknez	$a1, $fp, $a0
	maskeqz	$a0, $s5, $a0
	or	$a0, $a0, $a1
	add.d	$a1, $a0, $s5
	sltu	$a0, $a1, $a0
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a1, $a2
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a2, $a3
	or	$a1, $a1, $a3
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$s1, $a0, $a1
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$zero, $a0, $s0
	blt	$s0, $fp, .LBB4_207
# %bb.206:
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_207:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i269
	add.d	$fp, $s4, $s0
	beqz	$s3, .LBB4_209
# %bb.208:
	move	$a0, $s3
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_209:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i271
	addi.d	$a0, $fp, 4
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	st.d	$s4, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a0, $s1, $s4, 2
	st.d	$a0, $a3, 16
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $s1, 64
	ori	$a1, $zero, 2
	blt	$a0, $a1, .LBB4_186
.LBB4_210:
	ld.d	$a0, $s2, 8
	ld.d	$a1, $s2, 16
	beq	$a0, $a1, .LBB4_219
# %bb.211:
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s2, 8
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	beq	$a0, $a1, .LBB4_225
.LBB4_212:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	b	.LBB4_231
.LBB4_213:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s2, $a0, .LBB4_377
# %bb.214:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i260.peel
	move	$a1, $s2
	srai.d	$a0, $a1, 2
	ori	$fp, $zero, 1
	sltu	$a1, $fp, $a0
	masknez	$a2, $fp, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s0, $a1, $a0
	slli.d	$a0, $s0, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	stx.w	$zero, $a0, $s2
	blt	$s2, $fp, .LBB4_216
# %bb.215:
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_216:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i262.peel
	add.d	$fp, $s5, $s2
	beqz	$s4, .LBB4_218
# %bb.217:
	move	$a0, $s4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_218:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i264.peel
	addi.d	$a0, $fp, 4
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.d	$s5, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $s0, $s5, 2
	st.d	$a1, $a2, 16
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	bnez	$a1, .LBB4_162
	b	.LBB4_173
.LBB4_219:
	ld.d	$s0, $s2, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s3, $a0, .LBB4_377
# %bb.220:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i274
	srai.d	$a0, $s3, 2
	ori	$fp, $zero, 1
	sltu	$a1, $fp, $a0
	masknez	$a2, $fp, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s1, $a1, $a0
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$zero, $a0, $s3
	blt	$s3, $fp, .LBB4_222
# %bb.221:
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_222:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i276
	add.d	$fp, $s4, $s3
	beqz	$s0, .LBB4_224
# %bb.223:
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_224:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i278
	addi.d	$a0, $fp, 4
	st.d	$s4, $s2, 0
	st.d	$a0, $s2, 8
	alsl.d	$a0, $s1, $s4, 2
	st.d	$a0, $s2, 16
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	bne	$a0, $a1, .LBB4_212
.LBB4_225:
	ld.d	$s0, $a2, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s3, $a0, .LBB4_377
# %bb.226:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i281
	srai.d	$a0, $s3, 2
	ori	$fp, $zero, 1
	sltu	$a1, $fp, $a0
	masknez	$a2, $fp, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s1, $a1, $a0
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$fp, $a0, $s3
	blt	$s3, $fp, .LBB4_228
# %bb.227:
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_228:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i283
	add.d	$fp, $s4, $s3
	beqz	$s0, .LBB4_230
# %bb.229:
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_230:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i285
	addi.d	$a0, $fp, 4
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$s4, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s1, $s4, 2
	st.d	$a0, $a1, 16
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
.LBB4_231:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit286
	addi.d	$s5, $s5, 1
	st.d	$s5, $sp, 120                   # 8-byte Folded Spill
	ori	$s2, $zero, 1
	ld.d	$a0, $sp, 56                    # 8-byte Folded Reload
	bge	$a0, $s2, .LBB4_187
.LBB4_232:                              # %._crit_edge532
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	addi.d	$s1, $a4, -1
	beq	$a0, $a1, .LBB4_234
# %bb.233:
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	b	.LBB4_240
.LBB4_234:
	ld.d	$s0, $a2, 0
	sub.d	$s3, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB4_377
# %bb.235:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i288
	srai.d	$a0, $s3, 2
	ori	$fp, $zero, 1
	sltu	$a1, $fp, $a0
	masknez	$a2, $fp, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s2, $a1, $a0
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$s1, $a0, $s3
	blt	$s3, $fp, .LBB4_237
# %bb.236:
	move	$a0, $s4
	move	$a1, $s0
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_237:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i290
	add.d	$fp, $s4, $s3
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	beqz	$s0, .LBB4_239
# %bb.238:
	move	$a0, $s0
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_239:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i292
	addi.d	$a0, $fp, 4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$s4, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s4, 2
	st.d	$a0, $a1, 16
	ld.d	$a3, $sp, 48                    # 8-byte Folded Reload
.LBB4_240:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit293
	ld.d	$a1, $a3, 8
	ld.d	$a2, $a3, 0
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 8
	ld.d	$a3, $a4, 16
	sub.d	$a1, $a1, $a2
	srli.d	$a1, $a1, 2
	ld.d	$a2, $sp, 120                   # 8-byte Folded Reload
	sub.d	$fp, $a1, $a2
	beq	$a0, $a3, .LBB4_242
# %bb.241:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	b	.LBB4_248
.LBB4_242:
	ld.d	$s0, $a4, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB4_377
# %bb.243:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i295
	srai.d	$a0, $s1, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$fp, $a0, $s1
	blt	$s1, $s4, .LBB4_245
# %bb.244:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_245:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i297
	add.d	$fp, $s2, $s1
	beqz	$s0, .LBB4_247
# %bb.246:
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_247:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i299
	addi.d	$a0, $fp, 4
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$s2, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s3, $s2, 2
	st.d	$a0, $a1, 16
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
.LBB4_248:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit300
	ld.d	$a5, $sp, 280
	ld.d	$a6, $sp, 272
	ld.w	$a0, $s1, 56
	ld.w	$a2, $s1, 64
	ld.w	$a1, $s1, 68
	addi.w	$a0, $a0, -1
	st.d	$a5, $sp, 120                   # 8-byte Folded Spill
	st.d	$a6, $sp, 128                   # 8-byte Folded Spill
	beq	$a2, $a0, .LBB4_312
# %bb.249:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a3, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $s6, 8
	ld.d	$s1, $s6, 0
	ld.w	$s4, $a3, 0
	sub.d	$s2, $a0, $s1
	or	$a1, $a2, $a1
	srai.d	$a2, $s2, 2
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	st.d	$s4, $sp, 112                   # 8-byte Folded Spill
	bnez	$a1, .LBB4_252
# %bb.250:
	ld.d	$a1, $s6, 16
	beq	$a0, $a1, .LBB4_263
# %bb.251:
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
.LBB4_252:
	move	$s0, $s1
	ori	$s7, $zero, 1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	blt	$a2, $s7, .LBB4_269
.LBB4_253:                              # %.lr.ph536.preheader
	ld.w	$a1, $a1, 68
	slt	$a1, $zero, $a1
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 88                    # 8-byte Folded Reload
	alsl.w	$a2, $a4, $a3, 1
	maskeqz	$a2, $a2, $a1
	masknez	$a1, $a4, $a1
	or	$s8, $a2, $a1
	ld.d	$a1, $s6, 16
	addi.w	$a2, $zero, -4
	lu52i.d	$fp, $a2, 2047
	lu52i.d	$s3, $a3, 511
	b	.LBB4_256
	.p2align	4, , 16
.LBB4_254:                              #   in Loop: Header=BB4_256 Depth=1
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	move	$s1, $s0
.LBB4_255:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit335
                                        #   in Loop: Header=BB4_256 Depth=1
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	addi.w	$a2, $a2, -1
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	add.d	$s8, $s8, $a3
	st.d	$a2, $sp, 56                    # 8-byte Folded Spill
	beqz	$a2, .LBB4_270
.LBB4_256:                              # %.lr.ph536
                                        # =>This Inner Loop Header: Depth=1
	bne	$a0, $a1, .LBB4_254
# %bb.257:                              #   in Loop: Header=BB4_256 Depth=1
	sub.d	$s2, $a1, $s0
	beq	$s2, $fp, .LBB4_377
# %bb.258:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i330
                                        #   in Loop: Header=BB4_256 Depth=1
	srai.d	$a0, $s2, 2
	sltu	$a1, $s7, $a0
	masknez	$a2, $s7, $a1
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
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s8, $a0, $s2
	blt	$s2, $s7, .LBB4_260
# %bb.259:                              #   in Loop: Header=BB4_256 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_260:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i332
                                        #   in Loop: Header=BB4_256 Depth=1
	beqz	$s0, .LBB4_262
# %bb.261:                              #   in Loop: Header=BB4_256 Depth=1
	move	$a0, $s0
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_262:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i334
                                        #   in Loop: Header=BB4_256 Depth=1
	add.d	$a0, $s1, $s2
	addi.d	$a0, $a0, 4
	st.d	$s1, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a1, $s4, $s1, 2
	st.d	$a1, $s6, 16
	move	$s0, $s1
	b	.LBB4_255
.LBB4_263:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s2, $a0, .LBB4_377
# %bb.264:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i309
	ori	$s3, $zero, 1
	sltu	$a0, $s3, $a2
	masknez	$a1, $s3, $a0
	maskeqz	$a0, $a2, $a0
	or	$a0, $a0, $a1
	add.d	$a1, $a0, $a2
	sltu	$a0, $a1, $a0
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a1, $a2
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a2, $a3
	or	$a1, $a1, $a3
	masknez	$a1, $a1, $a0
	maskeqz	$a0, $a2, $a0
	or	$fp, $a0, $a1
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$zero, $a0, $s2
	blt	$s2, $s3, .LBB4_266
# %bb.265:
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_266:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i311
	add.d	$s3, $s0, $s2
	beqz	$s1, .LBB4_268
# %bb.267:
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_268:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i313
	addi.d	$a0, $s3, 4
	st.d	$s0, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a1, $fp, $s0, 2
	st.d	$a1, $s6, 16
	ori	$s7, $zero, 1
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	bge	$a2, $s7, .LBB4_253
.LBB4_269:
	move	$s1, $s0
.LBB4_270:                              # %._crit_edge537
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a6, 8
	ld.d	$a1, $a6, 16
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	addi.d	$s3, $a2, 1
	beq	$a0, $a1, .LBB4_272
# %bb.271:
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a6, 8
	b	.LBB4_278
.LBB4_272:
	ld.d	$s0, $a6, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB4_377
# %bb.273:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i316
	srai.d	$a0, $s1, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s3, $a0, $s1
	blt	$s1, $s4, .LBB4_275
# %bb.274:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_275:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i318
	add.d	$s3, $s2, $s1
	beqz	$s0, .LBB4_277
# %bb.276:
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_277:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i320
	addi.d	$a0, $s3, 4
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	st.d	$s2, $a6, 0
	ld.d	$s1, $s6, 0
	st.d	$a0, $a6, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $a6, 16
.LBB4_278:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit321
	ld.d	$a1, $s6, 8
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a5, 8
	ld.d	$a2, $a5, 16
	sub.d	$a1, $a1, $s1
	srli.d	$a1, $a1, 2
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	sub.d	$fp, $a1, $a3
	beq	$a0, $a2, .LBB4_280
# %bb.279:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a5, 8
	b	.LBB4_286
.LBB4_280:
	ld.d	$s0, $a5, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB4_377
# %bb.281:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i323
	srai.d	$a0, $s1, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$fp, $a0, $s1
	blt	$s1, $s4, .LBB4_283
# %bb.282:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_283:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i325
	add.d	$fp, $s2, $s1
	beqz	$s0, .LBB4_285
# %bb.284:
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_285:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i327
	addi.d	$a0, $fp, 4
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	st.d	$s2, $a5, 0
	st.d	$a0, $a5, 8
	alsl.d	$a0, $s3, $s2, 2
	st.d	$a0, $a5, 16
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
.LBB4_286:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit328
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$a0, $s1, 64
	ld.w	$a1, $s1, 68
	or	$a0, $a0, $a1
	bnez	$a0, .LBB4_312
# %bb.287:                              # %.preheader
	ld.w	$a0, $s1, 56
	ori	$a1, $zero, 3
	blt	$a0, $a1, .LBB4_325
# %bb.288:                              # %.lr.ph539.preheader
	ori	$fp, $zero, 2
	addi.w	$a0, $zero, -4
	lu52i.d	$s3, $a0, 2047
	ori	$s7, $zero, 1
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$s8, $a0, 511
	b	.LBB4_290
	.p2align	4, , 16
.LBB4_289:                              #   in Loop: Header=BB4_290 Depth=1
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a5, 8
	ld.w	$a0, $s1, 56
	addi.w	$fp, $fp, 1
	bge	$fp, $a0, .LBB4_311
.LBB4_290:                              # %.lr.ph539
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a0, $s6, 8
	ld.d	$a1, $s6, 16
	beq	$a0, $a1, .LBB4_293
# %bb.291:                              #   in Loop: Header=BB4_290 Depth=1
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	ld.d	$a0, $a6, 8
	ld.d	$a1, $a6, 16
	beq	$a0, $a1, .LBB4_299
.LBB4_292:                              #   in Loop: Header=BB4_290 Depth=1
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a6, 8
	ld.d	$a0, $a5, 8
	ld.d	$a1, $a5, 16
	bne	$a0, $a1, .LBB4_289
	b	.LBB4_305
	.p2align	4, , 16
.LBB4_293:                              #   in Loop: Header=BB4_290 Depth=1
	ld.d	$s1, $s6, 0
	sub.d	$s0, $a0, $s1
	beq	$s0, $s3, .LBB4_377
# %bb.294:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i337
                                        #   in Loop: Header=BB4_290 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s7, $a0
	masknez	$a2, $s7, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s8
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s8, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s8, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$zero, $a0, $s0
	blt	$s0, $s7, .LBB4_296
# %bb.295:                              #   in Loop: Header=BB4_290 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_296:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i339
                                        #   in Loop: Header=BB4_290 Depth=1
	beqz	$s1, .LBB4_298
# %bb.297:                              #   in Loop: Header=BB4_290 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_298:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i341
                                        #   in Loop: Header=BB4_290 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	st.d	$s2, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a0, $s4, $s2, 2
	st.d	$a0, $s6, 16
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a6, 8
	ld.d	$a1, $a6, 16
	bne	$a0, $a1, .LBB4_292
.LBB4_299:                              #   in Loop: Header=BB4_290 Depth=1
	ld.d	$s1, $a6, 0
	sub.d	$s0, $a0, $s1
	beq	$s0, $s3, .LBB4_377
# %bb.300:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i344
                                        #   in Loop: Header=BB4_290 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s7, $a0
	masknez	$a2, $s7, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s8
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s8, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s8, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$fp, $a0, $s0
	blt	$s0, $s7, .LBB4_302
# %bb.301:                              #   in Loop: Header=BB4_290 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_302:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i346
                                        #   in Loop: Header=BB4_290 Depth=1
	beqz	$s1, .LBB4_304
# %bb.303:                              #   in Loop: Header=BB4_290 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_304:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i348
                                        #   in Loop: Header=BB4_290 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	st.d	$s2, $a6, 0
	st.d	$a0, $a6, 8
	alsl.d	$a0, $s4, $s2, 2
	st.d	$a0, $a6, 16
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a5, 8
	ld.d	$a1, $a5, 16
	bne	$a0, $a1, .LBB4_289
.LBB4_305:                              #   in Loop: Header=BB4_290 Depth=1
	ld.d	$s1, $a5, 0
	sub.d	$s0, $a0, $s1
	beq	$s0, $s3, .LBB4_377
# %bb.306:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i351
                                        #   in Loop: Header=BB4_290 Depth=1
	srai.d	$a0, $s0, 2
	sltu	$a1, $s7, $a0
	masknez	$a2, $s7, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s8
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s8, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s8, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$s7, $a0, $s0
	blt	$s0, $s7, .LBB4_308
# %bb.307:                              #   in Loop: Header=BB4_290 Depth=1
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_308:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i353
                                        #   in Loop: Header=BB4_290 Depth=1
	beqz	$s1, .LBB4_310
# %bb.309:                              #   in Loop: Header=BB4_290 Depth=1
	move	$a0, $s1
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_310:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i355
                                        #   in Loop: Header=BB4_290 Depth=1
	add.d	$a0, $s2, $s0
	addi.d	$a0, $a0, 4
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	st.d	$s2, $a5, 0
	st.d	$a0, $a5, 8
	alsl.d	$a0, $s4, $s2, 2
	st.d	$a0, $a5, 16
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	ld.w	$a0, $s1, 56
	addi.w	$fp, $fp, 1
	blt	$fp, $a0, .LBB4_290
.LBB4_311:                              # %thread-pre-split.loopexit
	ld.w	$a1, $s1, 68
.LBB4_312:                              # %thread-pre-split
	ld.w	$a0, $s1, 60
	addi.w	$a0, $a0, -1
	beq	$a1, $a0, .LBB4_326
.LBB4_313:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a4, $a0, 0
	ld.d	$a0, $s6, 8
	move	$a2, $s1
	ld.d	$s1, $s6, 0
	ld.w	$a5, $a2, 56
	sub.d	$s4, $a0, $s1
	st.d	$s4, $sp, 88                    # 8-byte Folded Spill
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	st.d	$a5, $sp, 96                    # 8-byte Folded Spill
	bltz	$s5, .LBB4_330
# %bb.314:                              # %.lr.ph544.preheader
	ld.w	$a2, $a2, 64
	sltui	$a1, $a1, 1
	maskeqz	$a1, $s5, $a1
	ld.d	$a3, $sp, 8                     # 8-byte Folded Reload
	sub.d	$fp, $a3, $a1
	beqz	$a2, .LBB4_327
# %bb.315:
	move	$s2, $s1
	beqz	$s5, .LBB4_329
.LBB4_316:                              # %.lr.ph544.peel.next.preheader
	addi.d	$s8, $fp, 1
	addi.w	$a1, $zero, -4
	lu52i.d	$s0, $a1, 2047
	ori	$fp, $zero, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$s7, $a1, 511
	move	$s4, $s5
	b	.LBB4_318
	.p2align	4, , 16
.LBB4_317:                              #   in Loop: Header=BB4_318 Depth=1
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	move	$s1, $s2
	addi.w	$s4, $s4, -1
	addi.d	$s8, $s8, 1
	beqz	$s4, .LBB4_330
.LBB4_318:                              # %.lr.ph544.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s6, 16
	bne	$a0, $a1, .LBB4_317
# %bb.319:                              #   in Loop: Header=BB4_318 Depth=1
	sub.d	$s3, $a0, $s2
	beq	$s3, $s0, .LBB4_377
# %bb.320:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i372
                                        #   in Loop: Header=BB4_318 Depth=1
	srai.d	$a0, $s3, 2
	sltu	$a1, $fp, $a0
	masknez	$a2, $fp, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s7
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s7, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s7, $a1
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s8, $a0, $s3
	blt	$s3, $fp, .LBB4_322
# %bb.321:                              #   in Loop: Header=BB4_318 Depth=1
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_322:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i374
                                        #   in Loop: Header=BB4_318 Depth=1
	beqz	$s2, .LBB4_324
# %bb.323:                              #   in Loop: Header=BB4_318 Depth=1
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_324:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i376
                                        #   in Loop: Header=BB4_318 Depth=1
	add.d	$a0, $s1, $s3
	addi.d	$a0, $a0, 4
	st.d	$s1, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a1, $s5, $s1, 2
	st.d	$a1, $s6, 16
	move	$s2, $s1
	ld.d	$s5, $sp, 104                   # 8-byte Folded Reload
	addi.w	$s4, $s4, -1
	addi.d	$s8, $s8, 1
	bnez	$s4, .LBB4_318
	b	.LBB4_330
.LBB4_325:
	move	$a1, $zero
	ld.w	$a0, $s1, 60
	addi.w	$a0, $a0, -1
	bne	$a1, $a0, .LBB4_313
.LBB4_326:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit370
	ld.w	$s2, $s1, 56
	ld.w	$a0, $s1, 64
	addi.w	$a1, $s2, -1
	beq	$a0, $a1, .LBB4_370
	b	.LBB4_346
.LBB4_327:
	ld.d	$a1, $s6, 16
	beq	$a0, $a1, .LBB4_371
# %bb.328:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	move	$s2, $s1
	bnez	$s5, .LBB4_316
.LBB4_329:
	move	$s1, $s2
.LBB4_330:                              # %._crit_edge545
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a6, 8
	ld.d	$a1, $a6, 16
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	add.d	$s0, $a3, $a2
	beq	$a0, $a1, .LBB4_332
# %bb.331:
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a6, 8
	b	.LBB4_338
.LBB4_332:
	ld.d	$s1, $a6, 0
	sub.d	$s2, $a0, $s1
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s2, $a0, .LBB4_377
# %bb.333:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i358
	srai.d	$a0, $s2, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	stx.w	$s0, $a0, $s2
	blt	$s2, $s4, .LBB4_335
# %bb.334:
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_335:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i360
	add.d	$s0, $s3, $s2
	beqz	$s1, .LBB4_337
# %bb.336:
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_337:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i362
	addi.d	$a0, $s0, 4
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	st.d	$s3, $a6, 0
	ld.d	$s1, $s6, 0
	st.d	$a0, $a6, 8
	alsl.d	$a0, $fp, $s3, 2
	st.d	$a0, $a6, 16
.LBB4_338:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit363
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $s6, 8
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a5, 8
	ld.d	$a2, $a5, 16
	srli.d	$a3, $a3, 2
	sub.d	$a1, $a1, $s1
	srli.d	$a1, $a1, 2
	sub.d	$fp, $a1, $a3
	beq	$a0, $a2, .LBB4_340
# %bb.339:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a5, 8
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.w	$s2, $s1, 56
	ld.w	$a0, $s1, 64
	addi.w	$a1, $s2, -1
	beq	$a0, $a1, .LBB4_370
	b	.LBB4_346
.LBB4_340:
	ld.d	$s0, $a5, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB4_377
# %bb.341:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i365
	srai.d	$a0, $s1, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$fp, $a0, $s1
	blt	$s1, $s4, .LBB4_343
# %bb.342:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_343:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i367
	add.d	$fp, $s2, $s1
	beqz	$s0, .LBB4_345
# %bb.344:
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_345:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i369
	addi.d	$a0, $fp, 4
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	st.d	$s2, $a5, 0
	st.d	$a0, $a5, 8
	alsl.d	$a0, $s3, $s2, 2
	st.d	$a0, $a5, 16
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
	ld.w	$s2, $s1, 56
	ld.w	$a0, $s1, 64
	addi.w	$a1, $s2, -1
	beq	$a0, $a1, .LBB4_370
.LBB4_346:
	ld.w	$a1, $s1, 60
	ld.w	$a0, $s1, 68
	addi.w	$a1, $a1, -1
	beq	$a0, $a1, .LBB4_370
# %bb.347:
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
	add.d	$s4, $a1, $a2
	beq	$a0, $a3, .LBB4_349
# %bb.348:
	st.w	$s4, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	b	.LBB4_355
.LBB4_349:
	ld.d	$fp, $s6, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB4_377
# %bb.350:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i379
	srai.d	$a0, $s0, 2
	ori	$s7, $zero, 1
	sltu	$a1, $s7, $a0
	masknez	$a2, $s7, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s4, $a0, $s0
	blt	$s0, $s7, .LBB4_352
# %bb.351:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_352:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i381
	add.d	$s4, $s1, $s0
	beqz	$fp, .LBB4_354
# %bb.353:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_354:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i383
	addi.d	$a0, $s4, 4
	st.d	$s1, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a0, $s5, $s1, 2
	st.d	$a0, $s6, 16
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 128                   # 8-byte Folded Reload
.LBB4_355:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit384
	ld.d	$a0, $a6, 8
	ld.d	$a1, $a6, 16
	add.d	$a2, $s2, $s3
	addi.d	$s2, $a2, 1
	beq	$a0, $a1, .LBB4_358
# %bb.356:
	st.w	$s2, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a6, 8
	ld.d	$a0, $a5, 8
	ld.d	$a1, $a5, 16
	beq	$a0, $a1, .LBB4_364
.LBB4_357:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a5, 8
	b	.LBB4_370
.LBB4_358:
	ld.d	$fp, $a6, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB4_377
# %bb.359:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i386
	srai.d	$a0, $s0, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s2, $a0, $s0
	blt	$s0, $s4, .LBB4_361
# %bb.360:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_361:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i388
	add.d	$s2, $s1, $s0
	beqz	$fp, .LBB4_363
# %bb.362:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_363:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i390
	addi.d	$a0, $s2, 4
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s3, $s1, 2
	st.d	$a0, $a1, 16
	ld.d	$a5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$a0, $a5, 8
	ld.d	$a1, $a5, 16
	bne	$a0, $a1, .LBB4_357
.LBB4_364:
	ld.d	$fp, $a5, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB4_377
# %bb.365:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i393
	srai.d	$a0, $s0, 2
	ori	$s3, $zero, 1
	sltu	$a1, $s3, $a0
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s2, $a1, $a0
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s3, $a0, $s0
	blt	$s0, $s3, .LBB4_367
# %bb.366:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_367:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i395
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB4_369
# %bb.368:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_369:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i397
	addi.d	$a0, $s3, 4
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $a1, 16
.LBB4_370:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit398
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
.LBB4_371:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB4_377
# %bb.372:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i372.peel
	move	$a1, $s4
	srai.d	$a0, $a1, 2
	ori	$s3, $zero, 1
	sltu	$a1, $s3, $a0
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s0, $a1, $a0
	slli.d	$a0, $s0, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$fp, $a0, $s4
	blt	$s4, $s3, .LBB4_374
# %bb.373:
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB4_374:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i374.peel
	add.d	$s3, $s2, $s4
	beqz	$s1, .LBB4_376
# %bb.375:
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB4_376:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i376.peel
	addi.d	$a0, $s3, 4
	st.d	$s2, $s6, 0
	st.d	$a0, $s6, 8
	alsl.d	$a1, $s0, $s2, 2
	st.d	$a1, $s6, 16
	bnez	$s5, .LBB4_316
	b	.LBB4_329
.LBB4_377:                              # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB4_378:
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
	move	$s5, $a0
	ld.w	$a0, $a0, 72
	ld.w	$s2, $s5, 76
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	addi.d	$a0, $a0, 1
	addi.d	$t0, $s2, 1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	st.d	$t0, $sp, 16                    # 8-byte Folded Spill
	mul.w	$s1, $t0, $a0
	addi.w	$a0, $zero, -1
	st.d	$a7, $sp, 48                    # 8-byte Folded Spill
	st.d	$a6, $sp, 24                    # 8-byte Folded Spill
	st.d	$a5, $sp, 32                    # 8-byte Folded Spill
	st.d	$a3, $sp, 88                    # 8-byte Folded Spill
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	st.d	$a0, $sp, 40                    # 8-byte Folded Spill
	bge	$a0, $s1, .LBB5_315
# %bb.1:
	move	$s3, $a4
	move	$s6, $a1
	ld.d	$fp, $a1, 16
	ld.d	$s7, $a1, 0
	sub.d	$s8, $fp, $s7
	srai.d	$a0, $s8, 4
	st.d	$s1, $sp, 8                     # 8-byte Folded Spill
	bgeu	$a0, $s1, .LBB5_8
# %bb.2:                                # %_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i
	ld.d	$fp, $s6, 8
	slli.d	$a0, $s1, 4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	beq	$fp, $s7, .LBB5_5
# %bb.3:                                # %.lr.ph.i.i.i.i.i.i.preheader
	move	$a0, $s0
	move	$a1, $s7
	.p2align	4, , 16
.LBB5_4:                                # %.lr.ph.i.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a1, 0
	vst	$vr0, $a0, 0
	addi.d	$a1, $a1, 16
	addi.d	$a0, $a0, 16
	bne	$a1, $fp, .LBB5_4
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
	st.d	$s5, $sp, 120                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	bgez	$s2, .LBB5_9
	b	.LBB5_22
.LBB5_8:
	move	$s0, $s7
	st.d	$s5, $sp, 120                   # 8-byte Folded Spill
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	st.d	$s2, $sp, 56                    # 8-byte Folded Spill
	bltz	$s2, .LBB5_22
.LBB5_9:                                # %.lr.ph380
	bltz	$s8, .LBB5_22
# %bb.10:                               # %.lr.ph.preheader
	ld.w	$a0, $s5, 32
	move	$a1, $zero
	fld.d	$fa0, $s5, 40
	movgr2fr.w	$fa1, $a0
	ld.w	$a0, $s5, 36
	ffint.d.w	$fa1, $fa1
	fld.d	$fa2, $s5, 48
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
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	addi.w	$a1, $a2, 1
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	beq	$a2, $s2, .LBB5_22
.LBB5_12:                               # %.lr.ph
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_14 Depth 2
                                        #       Child Loop BB5_18 Depth 3
	ld.w	$a3, $s5, 84
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
	ld.w	$a1, $s5, 80
	move	$s2, $a2
	add.d	$a1, $a1, $a2
	movgr2fr.w	$fa0, $a1
	ffint.d.w	$fa0, $fa0
	fmul.d	$fs3, $fs0, $fa0
	bne	$a0, $fp, .LBB5_13
# %bb.15:                               #   in Loop: Header=BB5_14 Depth=2
	sub.d	$s8, $fp, $s0
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beq	$s8, $a0, .LBB5_314
# %bb.16:                               # %.noexc314
                                        #   in Loop: Header=BB5_14 Depth=2
	srai.d	$a0, $s8, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s1
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s1, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s1, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	add.d	$a0, $a0, $s8
	fstx.d	$fs3, $s7, $s8
	fst.d	$fs2, $a0, 8
	move	$s5, $s7
	beq	$s0, $fp, .LBB5_19
# %bb.17:                               # %.lr.ph.i.i.i.i.i.i.i.preheader
                                        #   in Loop: Header=BB5_14 Depth=2
	move	$s5, $s7
	move	$a0, $s0
	.p2align	4, , 16
.LBB5_18:                               # %.lr.ph.i.i.i.i.i.i.i
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
# %bb.20:                               #   in Loop: Header=BB5_14 Depth=2
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
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a2, $s2, 1
	bne	$s2, $s8, .LBB5_14
	b	.LBB5_11
.LBB5_22:                               # %._crit_edge381
	mul.w	$fp, $s2, $s8
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bge	$a0, $fp, .LBB5_315
# %bb.23:
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$s0, $a1, 0
	sub.d	$s6, $a0, $s0
	srai.d	$a0, $s6, 2
	bgeu	$a0, $fp, .LBB5_29
# %bb.24:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
	ld.d	$a0, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a0, 8
	sub.d	$s7, $a0, $s0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s8, $a0
	blt	$s7, $a1, .LBB5_26
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
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$s8, $a1, 0
	add.d	$a0, $s8, $s7
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s8, 2
	st.d	$a0, $a1, 16
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
	ld.d	$a0, $a0, 8
	sub.d	$s7, $a0, $s0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s8, $a0
	blt	$s7, $a1, .LBB5_32
# %bb.31:
	move	$a0, $s8
	move	$a1, $s0
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_32:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i138
	beqz	$s0, .LBB5_34
# %bb.33:
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_34:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i140
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$s8, $a1, 0
	add.d	$a0, $s8, $s7
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s8, 2
	st.d	$a0, $a1, 16
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
.LBB5_35:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit141
	ld.d	$a0, $s3, 16
	ld.d	$s0, $s3, 0
	slli.w	$fp, $fp, 2
	sub.d	$s6, $a0, $s0
	srai.d	$a0, $s6, 2
	bgeu	$a0, $fp, .LBB5_41
# %bb.36:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i142
	ld.d	$a0, $s3, 8
	sub.d	$s7, $a0, $s0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s8, $a0
	blt	$s7, $a1, .LBB5_38
# %bb.37:
	move	$a0, $s8
	move	$a1, $s0
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_38:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i143
	beqz	$s0, .LBB5_40
# %bb.39:
	move	$a0, $s0
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_40:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i145
	st.d	$s8, $s3, 0
	add.d	$a0, $s8, $s7
	st.d	$a0, $s3, 8
	alsl.d	$a0, $fp, $s8, 2
	st.d	$a0, $s3, 16
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
.LBB5_41:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit146
	ld.w	$a1, $s5, 76
	ori	$a0, $zero, 1
	blt	$a1, $a0, .LBB5_92
# %bb.42:                               # %.preheader.lr.ph
	ld.w	$a0, $s5, 72
	ori	$a2, $zero, 1
	blt	$a0, $a2, .LBB5_92
# %bb.43:                               # %.preheader.preheader
	st.d	$zero, $sp, 104                 # 8-byte Folded Spill
	ori	$s2, $zero, 1
	addi.w	$a2, $zero, -4
	lu52i.d	$a2, $a2, 2047
	st.d	$a2, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$fp, $a2, 511
	move	$a2, $zero
	b	.LBB5_46
	.p2align	4, , 16
.LBB5_44:                               # %._crit_edge384.loopexit
                                        #   in Loop: Header=BB5_46 Depth=1
	ld.w	$a1, $s5, 76
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $sp, 64                    # 8-byte Folded Reload
.LBB5_45:                               # %._crit_edge384
                                        #   in Loop: Header=BB5_46 Depth=1
	addi.w	$a4, $a2, 1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	add.d	$a3, $a3, $a2
	move	$a2, $a4
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	bge	$a4, $a1, .LBB5_92
.LBB5_46:                               # %.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_49 Depth 2
	blt	$a0, $s2, .LBB5_45
# %bb.47:                               # %.lr.ph383
                                        #   in Loop: Header=BB5_46 Depth=1
	st.d	$a2, $sp, 64                    # 8-byte Folded Spill
	ld.d	$a1, $s3, 8
	move	$a0, $s8
	move	$s8, $zero
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	add.d	$a0, $a0, $a2
	st.d	$a0, $sp, 96                    # 8-byte Folded Spill
	b	.LBB5_49
	.p2align	4, , 16
.LBB5_48:                               #   in Loop: Header=BB5_49 Depth=2
	st.w	$s4, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $s3, 8
	ld.w	$a0, $s5, 72
	addi.w	$s8, $s8, 1
	bge	$s8, $a0, .LBB5_44
.LBB5_49:                               #   Parent Loop BB5_46 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.d	$a2, $s3, 0
	ld.d	$a4, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a4, 8
	ld.d	$a3, $a4, 16
	sub.d	$a1, $a1, $a2
	srli.d	$s4, $a1, 2
	beq	$a0, $a3, .LBB5_52
# %bb.50:                               #   in Loop: Header=BB5_49 Depth=2
	st.w	$s4, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $s5, 8
	ld.d	$a1, $s5, 16
	beq	$a0, $a1, .LBB5_58
.LBB5_51:                               #   in Loop: Header=BB5_49 Depth=2
	ori	$a1, $zero, 4
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s5, 8
	b	.LBB5_64
	.p2align	4, , 16
.LBB5_52:                               #   in Loop: Header=BB5_49 Depth=2
	ld.d	$s7, $a4, 0
	sub.d	$s6, $a0, $s7
	ld.d	$s5, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB5_314
# %bb.53:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i
                                        #   in Loop: Header=BB5_49 Depth=2
	srai.d	$a0, $s6, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s1, $a1, $a0
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s4, $a0, $s6
	blt	$s6, $s2, .LBB5_55
# %bb.54:                               #   in Loop: Header=BB5_49 Depth=2
	move	$a0, $s0
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_55:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i
                                        #   in Loop: Header=BB5_49 Depth=2
	beqz	$s7, .LBB5_57
# %bb.56:                               #   in Loop: Header=BB5_49 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_57:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i
                                        #   in Loop: Header=BB5_49 Depth=2
	add.d	$a0, $s0, $s6
	addi.d	$a0, $a0, 4
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$s0, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s1, $s0, 2
	st.d	$a0, $a1, 16
	ld.d	$a0, $s5, 8
	ld.d	$a1, $s5, 16
	bne	$a0, $a1, .LBB5_51
.LBB5_58:                               #   in Loop: Header=BB5_49 Depth=2
	ld.d	$s7, $s5, 0
	sub.d	$s6, $a0, $s7
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB5_314
# %bb.59:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i149
                                        #   in Loop: Header=BB5_49 Depth=2
	srai.d	$a0, $s6, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s1, $a1, $a0
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	ori	$a0, $zero, 4
	stx.w	$a0, $s0, $s6
	blt	$s6, $s2, .LBB5_61
# %bb.60:                               #   in Loop: Header=BB5_49 Depth=2
	move	$a0, $s0
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_61:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i151
                                        #   in Loop: Header=BB5_49 Depth=2
	beqz	$s7, .LBB5_63
# %bb.62:                               #   in Loop: Header=BB5_49 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_63:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i153
                                        #   in Loop: Header=BB5_49 Depth=2
	add.d	$a0, $s0, $s6
	addi.d	$a0, $a0, 4
	st.d	$s0, $s5, 0
	st.d	$a0, $s5, 8
	alsl.d	$a0, $s1, $s0, 2
	st.d	$a0, $s5, 16
.LBB5_64:                               # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit154
                                        #   in Loop: Header=BB5_49 Depth=2
	ld.d	$a1, $s3, 8
	ld.d	$a0, $s3, 16
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	add.d	$s1, $a2, $s8
	beq	$a1, $a0, .LBB5_68
# %bb.65:                               #   in Loop: Header=BB5_49 Depth=2
	st.w	$s1, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $s3, 8
	addi.d	$s4, $s1, 1
	beq	$a1, $a0, .LBB5_74
.LBB5_66:                               #   in Loop: Header=BB5_49 Depth=2
	st.w	$s4, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $s3, 8
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.d	$s1, $a2, $s8
	addi.d	$s5, $s1, 2
	beq	$a1, $a0, .LBB5_80
.LBB5_67:                               #   in Loop: Header=BB5_49 Depth=2
	st.w	$s5, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $s3, 8
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	addi.d	$s4, $s1, 1
	bne	$a1, $a0, .LBB5_48
	b	.LBB5_86
	.p2align	4, , 16
.LBB5_68:                               #   in Loop: Header=BB5_49 Depth=2
	ld.d	$s7, $s3, 0
	sub.d	$s6, $a1, $s7
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB5_314
# %bb.69:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
                                        #   in Loop: Header=BB5_49 Depth=2
	srai.d	$a0, $s6, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s1, $a0, $s6
	blt	$s6, $s2, .LBB5_71
# %bb.70:                               #   in Loop: Header=BB5_49 Depth=2
	move	$a0, $s0
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_71:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
                                        #   in Loop: Header=BB5_49 Depth=2
	beqz	$s7, .LBB5_73
# %bb.72:                               #   in Loop: Header=BB5_49 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_73:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i
                                        #   in Loop: Header=BB5_49 Depth=2
	add.d	$a0, $s0, $s6
	addi.d	$a1, $a0, 4
	st.d	$s0, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a0, $s4, $s0, 2
	st.d	$a0, $s3, 16
	addi.d	$s4, $s1, 1
	bne	$a1, $a0, .LBB5_66
.LBB5_74:                               #   in Loop: Header=BB5_49 Depth=2
	ld.d	$s7, $s3, 0
	sub.d	$s6, $a0, $s7
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB5_314
# %bb.75:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i156
                                        #   in Loop: Header=BB5_49 Depth=2
	srai.d	$a0, $s6, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s1, $a1, $a0
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s4, $a0, $s6
	blt	$s6, $s2, .LBB5_77
# %bb.76:                               #   in Loop: Header=BB5_49 Depth=2
	move	$a0, $s0
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_77:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i158
                                        #   in Loop: Header=BB5_49 Depth=2
	beqz	$s7, .LBB5_79
# %bb.78:                               #   in Loop: Header=BB5_49 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_79:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i160
                                        #   in Loop: Header=BB5_49 Depth=2
	add.d	$a0, $s0, $s6
	addi.d	$a1, $a0, 4
	st.d	$s0, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a0, $s1, $s0, 2
	st.d	$a0, $s3, 16
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	add.d	$s1, $a2, $s8
	addi.d	$s5, $s1, 2
	bne	$a1, $a0, .LBB5_67
.LBB5_80:                               #   in Loop: Header=BB5_49 Depth=2
	ld.d	$s7, $s3, 0
	sub.d	$s6, $a0, $s7
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB5_314
# %bb.81:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i163
                                        #   in Loop: Header=BB5_49 Depth=2
	srai.d	$a0, $s6, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s5, $a0, $s6
	blt	$s6, $s2, .LBB5_83
# %bb.82:                               #   in Loop: Header=BB5_49 Depth=2
	move	$a0, $s0
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_83:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i165
                                        #   in Loop: Header=BB5_49 Depth=2
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	beqz	$s7, .LBB5_85
# %bb.84:                               #   in Loop: Header=BB5_49 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_85:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i167
                                        #   in Loop: Header=BB5_49 Depth=2
	add.d	$a0, $s0, $s6
	addi.d	$a1, $a0, 4
	st.d	$s0, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a0, $s4, $s0, 2
	st.d	$a0, $s3, 16
	addi.d	$s4, $s1, 1
	bne	$a1, $a0, .LBB5_48
.LBB5_86:                               #   in Loop: Header=BB5_49 Depth=2
	ld.d	$s7, $s3, 0
	sub.d	$s6, $a0, $s7
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB5_314
# %bb.87:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i170
                                        #   in Loop: Header=BB5_49 Depth=2
	srai.d	$a0, $s6, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s1, $a1, $a0
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s4, $a0, $s6
	blt	$s6, $s2, .LBB5_89
# %bb.88:                               #   in Loop: Header=BB5_49 Depth=2
	move	$a0, $s0
	move	$a1, $s7
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_89:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i172
                                        #   in Loop: Header=BB5_49 Depth=2
	beqz	$s7, .LBB5_91
# %bb.90:                               #   in Loop: Header=BB5_49 Depth=2
	move	$a0, $s7
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_91:                               # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i174
                                        #   in Loop: Header=BB5_49 Depth=2
	add.d	$a0, $s0, $s6
	addi.d	$a1, $a0, 4
	st.d	$s0, $s3, 0
	st.d	$a1, $s3, 8
	alsl.d	$a0, $s1, $s0, 2
	st.d	$a0, $s3, 16
	ld.w	$a0, $s5, 72
	addi.w	$s8, $s8, 1
	blt	$s8, $a0, .LBB5_49
	b	.LBB5_44
.LBB5_92:                               # %._crit_edge386
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel5numpeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel5numpeE)
	ld.w	$a0, $a0, 0
	ori	$a1, $zero, 1
	beq	$a0, $a1, .LBB5_313
# %bb.93:
	ld.w	$s1, $s5, 68
	ld.w	$fp, $s5, 64
	sltui	$a0, $s1, 1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	masknez	$a0, $a1, $a0
	sltui	$a1, $fp, 1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	masknez	$a1, $a2, $a1
	add.w	$s2, $a1, $a0
	ld.d	$a0, $sp, 40                    # 8-byte Folded Reload
	bge	$a0, $s2, .LBB5_315
# %bb.94:
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$s3, $a1, 0
	sub.d	$s4, $a0, $s3
	srai.d	$a0, $s4, 2
	bgeu	$a0, $s2, .LBB5_100
# %bb.95:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i176
	ld.d	$a0, $a1, 8
	sub.d	$s0, $a0, $s3
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s5, $a0
	blt	$s0, $a1, .LBB5_97
# %bb.96:
	move	$a0, $s5
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_97:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i177
	beqz	$s3, .LBB5_99
# %bb.98:
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 120                   # 8-byte Folded Reload
	ld.w	$s1, $a0, 68
	ld.w	$fp, $a0, 64
.LBB5_99:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i179
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$s5, $a1, 0
	add.d	$a0, $s5, $s0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s5, 2
	st.d	$a0, $a1, 16
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
.LBB5_100:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit180
	ld.w	$a0, $s5, 60
	addi.w	$a0, $a0, -1
	ld.w	$a1, $s5, 56
	xor	$a0, $s1, $a0
	sltui	$a0, $a0, 1
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	masknez	$a0, $a2, $a0
	addi.w	$a1, $a1, -1
	xor	$a1, $fp, $a1
	sltui	$a1, $a1, 1
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	masknez	$a1, $a2, $a1
	add.w	$a0, $a1, $a0
	addi.w	$a1, $zero, -2
	bge	$a1, $a0, .LBB5_315
# %bb.101:
	ld.d	$s7, $sp, 272
	ld.d	$a1, $s7, 16
	ld.d	$s3, $s7, 0
	addi.w	$s2, $a0, 1
	sub.d	$s4, $a1, $s3
	srai.d	$a0, $s4, 2
	bgeu	$a0, $s2, .LBB5_107
# %bb.102:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i181
	ld.d	$a0, $s7, 8
	sub.d	$s0, $a0, $s3
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	ori	$a1, $zero, 1
	move	$s5, $a0
	blt	$s0, $a1, .LBB5_104
# %bb.103:
	move	$a0, $s5
	move	$a1, $s3
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_104:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i182
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	beqz	$s3, .LBB5_106
# %bb.105:
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.w	$fp, $s6, 64
.LBB5_106:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i184
	st.d	$s5, $s7, 0
	add.d	$a0, $s5, $s0
	st.d	$a0, $s7, 8
	alsl.d	$a0, $s2, $s5, 2
	st.d	$a0, $s7, 16
	ld.w	$s1, $s6, 68
	move	$s5, $s6
.LBB5_107:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit185
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
	beqz	$fp, .LBB5_133
# %bb.108:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit185
	beqz	$s1, .LBB5_133
# %bb.109:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$fp, $a0, 0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.w	$s1, $s5, 56
	beq	$a0, $a1, .LBB5_111
# %bb.110:
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	b	.LBB5_117
.LBB5_111:
	ld.d	$s3, $a2, 0
	sub.d	$s4, $a0, $s3
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB5_314
# %bb.112:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i187
	srai.d	$a0, $s4, 2
	ori	$s5, $zero, 1
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s2, $a1, $a0
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$zero, $a0, $s4
	blt	$s4, $s5, .LBB5_114
# %bb.113:
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_114:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i189
	add.d	$s5, $s0, $s4
	beqz	$s3, .LBB5_116
# %bb.115:
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_116:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i191
	addi.d	$a0, $s5, 4
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	st.d	$s0, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s0, 2
	st.d	$a0, $a1, 16
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a3, $sp, 32                    # 8-byte Folded Reload
.LBB5_117:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit192
	ld.d	$a0, $a3, 8
	ld.d	$a1, $a3, 16
	nor	$a2, $s1, $zero
	add.d	$fp, $fp, $a2
	beq	$a0, $a1, .LBB5_120
# %bb.118:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	beq	$a0, $a1, .LBB5_126
.LBB5_119:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	b	.LBB5_132
.LBB5_120:
	ld.d	$s3, $a3, 0
	sub.d	$s4, $a0, $s3
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB5_314
# %bb.121:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i194
	srai.d	$a0, $s4, 2
	ori	$s2, $zero, 1
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s1, $a1, $a0
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$fp, $a0, $s4
	blt	$s4, $s2, .LBB5_123
# %bb.122:
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_123:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i196
	add.d	$fp, $s0, $s4
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	beqz	$s3, .LBB5_125
# %bb.124:
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_125:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i198
	addi.d	$a0, $fp, 4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$s0, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s1, $s0, 2
	st.d	$a0, $a1, 16
	ld.d	$a2, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	bne	$a0, $a1, .LBB5_119
.LBB5_126:
	ld.d	$s3, $a2, 0
	sub.d	$s4, $a0, $s3
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB5_314
# %bb.127:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i201
	srai.d	$a0, $s4, 2
	ori	$s1, $zero, 1
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s1, $a0, $s4
	blt	$s4, $s1, .LBB5_129
# %bb.128:
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_129:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i203
	add.d	$s1, $s0, $s4
	beqz	$s3, .LBB5_131
# %bb.130:
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_131:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i205
	addi.d	$a0, $s1, 4
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$s0, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s0, 2
	st.d	$a0, $a1, 16
.LBB5_132:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit206thread-pre-split
	ld.w	$s1, $s5, 68
.LBB5_133:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit206
	beqz	$s1, .LBB5_165
# %bb.134:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$s4, $a2, 0
	ld.w	$s0, $s5, 56
	sub.d	$s2, $a0, $s4
	st.d	$s2, $sp, 112                   # 8-byte Folded Spill
	bltz	$s8, .LBB5_155
# %bb.135:                              # %.lr.ph391.preheader
	ld.w	$a1, $s5, 64
	beqz	$a1, .LBB5_137
# %bb.136:
	move	$s5, $s4
	bnez	$s8, .LBB5_139
	b	.LBB5_154
.LBB5_137:
	ld.d	$a1, $a2, 16
	beq	$a0, $a1, .LBB5_148
# %bb.138:
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	move	$s5, $s4
	beqz	$s8, .LBB5_154
.LBB5_139:                              # %.lr.ph391.peel.next.preheader
	move	$s1, $zero
	addi.w	$a1, $zero, -4
	lu52i.d	$s2, $a1, 2047
	ori	$s8, $zero, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$s3, $a1, 511
	b	.LBB5_141
	.p2align	4, , 16
.LBB5_140:                              #   in Loop: Header=BB5_141 Depth=1
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	move	$s4, $s5
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	beq	$a1, $s1, .LBB5_155
.LBB5_141:                              # %.lr.ph391.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a2, 16
	addi.w	$s1, $s1, 1
	bne	$a0, $a1, .LBB5_140
# %bb.142:                              #   in Loop: Header=BB5_141 Depth=1
	sub.d	$s6, $a0, $s5
	beq	$s6, $s2, .LBB5_314
# %bb.143:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i222
                                        #   in Loop: Header=BB5_141 Depth=1
	srai.d	$a0, $s6, 2
	sltu	$a1, $s8, $a0
	masknez	$a2, $s8, $a1
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
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$s1, $a0, $s6
	blt	$s6, $s8, .LBB5_145
# %bb.144:                              #   in Loop: Header=BB5_141 Depth=1
	move	$a0, $s4
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_145:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i224
                                        #   in Loop: Header=BB5_141 Depth=1
	beqz	$s5, .LBB5_147
# %bb.146:                              #   in Loop: Header=BB5_141 Depth=1
	move	$a0, $s5
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_147:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i226
                                        #   in Loop: Header=BB5_141 Depth=1
	add.d	$a0, $s4, $s6
	addi.d	$a0, $a0, 4
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.d	$s4, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $fp, $s4, 2
	st.d	$a1, $a2, 16
	move	$s5, $s4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	bne	$a1, $s1, .LBB5_141
	b	.LBB5_155
.LBB5_148:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s2, $a0, .LBB5_314
# %bb.149:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i222.peel
	move	$a1, $s2
	srai.d	$a0, $a1, 2
	ori	$fp, $zero, 1
	sltu	$a1, $fp, $a0
	masknez	$a2, $fp, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s1, $a1, $a0
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	stx.w	$zero, $a0, $s2
	blt	$s2, $fp, .LBB5_151
# %bb.150:
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_151:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i224.peel
	add.d	$fp, $s5, $s2
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	beqz	$s4, .LBB5_153
# %bb.152:
	move	$a0, $s4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_153:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i226.peel
	addi.d	$a0, $fp, 4
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.d	$s5, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $s1, $s5, 2
	st.d	$a1, $a2, 16
	bnez	$s8, .LBB5_139
.LBB5_154:
	move	$s4, $s5
.LBB5_155:                              # %._crit_edge392
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $s3, 8
	ld.d	$a1, $s3, 16
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	sub.d	$s1, $a3, $s0
	beq	$a0, $a1, .LBB5_157
# %bb.156:
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s3, 8
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	b	.LBB5_163
.LBB5_157:
	ld.d	$s4, $s3, 0
	sub.d	$s5, $a0, $s4
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	beq	$s5, $a0, .LBB5_314
# %bb.158:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i208
	srai.d	$a0, $s5, 2
	ori	$s2, $zero, 1
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s1, $a0, $s5
	blt	$s5, $s2, .LBB5_160
# %bb.159:
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_160:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i210
	add.d	$s1, $s0, $s5
	beqz	$s4, .LBB5_162
# %bb.161:
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_162:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i212
	addi.d	$a0, $s1, 4
	st.d	$s0, $s3, 0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $a2, 0
	st.d	$a0, $s3, 8
	alsl.d	$a0, $fp, $s0, 2
	st.d	$a0, $s3, 16
.LBB5_163:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit213
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 8
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 8
	ld.d	$a2, $a4, 16
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	srli.d	$a3, $a3, 2
	sub.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 2
	sub.d	$fp, $a1, $a3
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	beq	$a0, $a2, .LBB5_169
# %bb.164:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
.LBB5_165:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit220
	ld.w	$a0, $s5, 64
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	beqz	$a0, .LBB5_210
.LBB5_166:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $a2, 8
	ld.d	$s4, $a2, 0
	ld.w	$a4, $a1, 0
	sub.d	$a3, $a0, $s4
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	st.d	$a4, $sp, 112                   # 8-byte Folded Spill
	bltz	$s2, .LBB5_194
# %bb.167:                              # %.lr.ph397.preheader
	ld.w	$a1, $s5, 68
	beqz	$a1, .LBB5_175
# %bb.168:
	move	$s5, $s4
	bnez	$s2, .LBB5_177
	b	.LBB5_193
.LBB5_169:
	ld.d	$s3, $a4, 0
	sub.d	$s4, $a0, $s3
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB5_314
# %bb.170:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i215
	srai.d	$a0, $s4, 2
	ori	$s2, $zero, 1
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s1, $a1, $a0
	slli.d	$a0, $s1, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$fp, $a0, $s4
	blt	$s4, $s2, .LBB5_172
# %bb.171:
	move	$a0, $s0
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_172:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i217
	add.d	$fp, $s0, $s4
	beqz	$s3, .LBB5_174
# %bb.173:
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_174:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i219
	addi.d	$a0, $fp, 4
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$s0, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s1, $s0, 2
	st.d	$a0, $a1, 16
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $s5, 64
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	bnez	$a0, .LBB5_166
	b	.LBB5_210
.LBB5_175:
	ld.d	$a1, $a2, 16
	beq	$a0, $a1, .LBB5_187
# %bb.176:
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	move	$s5, $s4
	beqz	$s2, .LBB5_193
.LBB5_177:
	move	$s8, $s2
	addi.w	$a1, $zero, -4
	lu52i.d	$s0, $a1, 2047
	ori	$s1, $zero, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$s2, $a1, 511
	ld.d	$s3, $sp, 72                    # 8-byte Folded Reload
	b	.LBB5_180
	.p2align	4, , 16
.LBB5_178:                              #   in Loop: Header=BB5_180 Depth=1
	st.w	$s3, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	move	$s4, $s5
.LBB5_179:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit248
                                        #   in Loop: Header=BB5_180 Depth=1
	addi.w	$s8, $s8, -1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$s3, $s3, $a1
	beqz	$s8, .LBB5_194
.LBB5_180:                              # %.lr.ph397.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $a2, 16
	bne	$a0, $a1, .LBB5_178
# %bb.181:                              #   in Loop: Header=BB5_180 Depth=1
	sub.d	$s6, $a0, $s5
	beq	$s6, $s0, .LBB5_314
# %bb.182:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i243
                                        #   in Loop: Header=BB5_180 Depth=1
	srai.d	$a0, $s6, 2
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s2
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s2, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s2, $a1
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$s3, $a0, $s6
	blt	$s6, $s1, .LBB5_184
# %bb.183:                              #   in Loop: Header=BB5_180 Depth=1
	move	$a0, $s4
	move	$a1, $s5
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_184:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i245
                                        #   in Loop: Header=BB5_180 Depth=1
	beqz	$s5, .LBB5_186
# %bb.185:                              #   in Loop: Header=BB5_180 Depth=1
	move	$a0, $s5
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_186:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i247
                                        #   in Loop: Header=BB5_180 Depth=1
	add.d	$a0, $s4, $s6
	addi.d	$a0, $a0, 4
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.d	$s4, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $fp, $s4, 2
	st.d	$a1, $a2, 16
	move	$s5, $s4
	b	.LBB5_179
.LBB5_187:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$a3, $a0, .LBB5_314
# %bb.188:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i243.peel
	ld.d	$s1, $sp, 128                   # 8-byte Folded Reload
	srai.d	$a0, $s1, 2
	ori	$fp, $zero, 1
	sltu	$a1, $fp, $a0
	masknez	$a2, $fp, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s0, $a1, $a0
	slli.d	$a0, $s0, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	stx.w	$zero, $a0, $s1
	blt	$s1, $fp, .LBB5_190
# %bb.189:
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_190:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i245.peel
	add.d	$fp, $s5, $s1
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	beqz	$s4, .LBB5_192
# %bb.191:
	move	$a0, $s4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_192:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i247.peel
	addi.d	$a0, $fp, 4
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	st.d	$s5, $a2, 0
	st.d	$a0, $a2, 8
	alsl.d	$a1, $s0, $s5, 2
	st.d	$a1, $a2, 16
	bnez	$s2, .LBB5_177
.LBB5_193:
	move	$s4, $s5
.LBB5_194:                              # %._crit_edge398
	ld.d	$s3, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $s3, 8
	ld.d	$a1, $s3, 16
	ld.d	$a3, $sp, 112                   # 8-byte Folded Reload
	addi.d	$s1, $a3, -1
	beq	$a0, $a1, .LBB5_196
# %bb.195:
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s3, 8
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	b	.LBB5_202
.LBB5_196:
	ld.d	$s4, $s3, 0
	sub.d	$s5, $a0, $s4
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s5, $a0, .LBB5_314
# %bb.197:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i229
	srai.d	$a0, $s5, 2
	ori	$s2, $zero, 1
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$s1, $a0, $s5
	blt	$s5, $s2, .LBB5_199
# %bb.198:
	move	$a0, $s0
	move	$a1, $s4
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_199:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i231
	add.d	$s1, $s0, $s5
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	beqz	$s4, .LBB5_201
# %bb.200:
	move	$a0, $s4
	move	$a1, $s5
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_201:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i233
	addi.d	$a0, $s1, 4
	st.d	$s0, $s3, 0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	ld.d	$s4, $a2, 0
	st.d	$a0, $s3, 8
	alsl.d	$a0, $fp, $s0, 2
	st.d	$a0, $s3, 16
.LBB5_202:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit234
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 8
	ld.d	$a4, $sp, 24                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 8
	ld.d	$a2, $a4, 16
	ld.d	$a3, $sp, 128                   # 8-byte Folded Reload
	srli.d	$a3, $a3, 2
	sub.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 2
	sub.d	$fp, $a1, $a3
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	beq	$a0, $a2, .LBB5_204
# %bb.203:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	b	.LBB5_210
.LBB5_204:
	ld.d	$s1, $a4, 0
	sub.d	$s3, $a0, $s1
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s3, $a0, .LBB5_314
# %bb.205:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i236
	srai.d	$a0, $s3, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s2, $a1, $a0
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s0, $a0
	stx.w	$fp, $a0, $s3
	blt	$s3, $s4, .LBB5_207
# %bb.206:
	move	$a0, $s0
	move	$a1, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_207:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i238
	add.d	$fp, $s0, $s3
	beqz	$s1, .LBB5_209
# %bb.208:
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_209:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i240
	addi.d	$a0, $fp, 4
	ld.d	$a1, $sp, 24                    # 8-byte Folded Reload
	st.d	$s0, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s0, 2
	st.d	$a0, $a1, 16
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
.LBB5_210:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit241
	ld.d	$a0, $sp, 264
	st.d	$a0, $sp, 128                   # 8-byte Folded Spill
	ld.w	$a0, $s5, 56
	ld.w	$a1, $s5, 64
	ld.d	$a2, $sp, 256
	st.d	$a2, $sp, 112                   # 8-byte Folded Spill
	addi.w	$a0, $a0, -1
	beq	$a1, $a0, .LBB5_243
# %bb.211:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $s7, 8
	ld.d	$s1, $s7, 0
	ld.w	$a2, $a1, 0
	sub.d	$a1, $a0, $s1
	st.d	$a1, $sp, 104                   # 8-byte Folded Spill
	st.d	$a2, $sp, 96                    # 8-byte Folded Spill
	bltz	$s2, .LBB5_233
# %bb.212:                              # %.lr.ph403.preheader
	ld.w	$a1, $s5, 68
	beqz	$a1, .LBB5_214
# %bb.213:
	move	$s4, $s1
	bnez	$s2, .LBB5_216
	b	.LBB5_232
.LBB5_214:
	ld.d	$a1, $s7, 16
	beq	$a0, $a1, .LBB5_226
# %bb.215:
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s7, 8
	move	$s4, $s1
	beqz	$s2, .LBB5_232
.LBB5_216:                              # %.lr.ph403.peel.next.preheader
	move	$s5, $s2
	slli.d	$a1, $s8, 1
	addi.d	$s2, $a1, 1
	addi.w	$a1, $zero, -4
	lu52i.d	$s8, $a1, 2047
	ori	$s0, $zero, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$fp, $a1, 511
	b	.LBB5_219
	.p2align	4, , 16
.LBB5_217:                              #   in Loop: Header=BB5_219 Depth=1
	st.w	$s2, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s7, 8
	move	$s1, $s4
.LBB5_218:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit269
                                        #   in Loop: Header=BB5_219 Depth=1
	addi.w	$s5, $s5, -1
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	add.d	$s2, $s2, $a1
	beqz	$s5, .LBB5_233
.LBB5_219:                              # %.lr.ph403.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s7, 16
	bne	$a0, $a1, .LBB5_217
# %bb.220:                              #   in Loop: Header=BB5_219 Depth=1
	sub.d	$s3, $a0, $s4
	beq	$s3, $s8, .LBB5_314
# %bb.221:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i264
                                        #   in Loop: Header=BB5_219 Depth=1
	srai.d	$a0, $s3, 2
	sltu	$a1, $s0, $a0
	masknez	$a2, $s0, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s6, $a1, $a0
	slli.d	$a0, $s6, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s2, $a0, $s3
	blt	$s3, $s0, .LBB5_223
# %bb.222:                              #   in Loop: Header=BB5_219 Depth=1
	move	$a0, $s1
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_223:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i266
                                        #   in Loop: Header=BB5_219 Depth=1
	beqz	$s4, .LBB5_225
# %bb.224:                              #   in Loop: Header=BB5_219 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_225:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i268
                                        #   in Loop: Header=BB5_219 Depth=1
	add.d	$a0, $s1, $s3
	addi.d	$a0, $a0, 4
	st.d	$s1, $s7, 0
	st.d	$a0, $s7, 8
	alsl.d	$a1, $s6, $s1, 2
	st.d	$a1, $s7, 16
	move	$s4, $s1
	b	.LBB5_218
.LBB5_226:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$a1, $sp, 104                   # 8-byte Folded Reload
	beq	$a1, $a0, .LBB5_314
# %bb.227:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i264.peel
	ld.d	$s3, $sp, 104                   # 8-byte Folded Reload
	srai.d	$a0, $s3, 2
	ori	$s0, $zero, 1
	sltu	$a1, $s0, $a0
	masknez	$a2, $s0, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	stx.w	$s8, $a0, $s3
	blt	$s3, $s0, .LBB5_229
# %bb.228:
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_229:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i266.peel
	add.d	$s0, $s4, $s3
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	beqz	$s1, .LBB5_231
# %bb.230:
	move	$a0, $s1
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_231:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i268.peel
	addi.d	$a0, $s0, 4
	st.d	$s4, $s7, 0
	st.d	$a0, $s7, 8
	alsl.d	$a1, $fp, $s4, 2
	st.d	$a1, $s7, 16
	bnez	$s2, .LBB5_216
.LBB5_232:
	move	$s1, $s4
.LBB5_233:                              # %._crit_edge404
	ld.d	$a2, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	addi.d	$s0, $a3, 1
	beq	$a0, $a1, .LBB5_235
# %bb.234:
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	b	.LBB5_241
.LBB5_235:
	ld.d	$s1, $a2, 0
	sub.d	$s4, $a0, $s1
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	beq	$s4, $a0, .LBB5_314
# %bb.236:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i250
	srai.d	$a0, $s4, 2
	ori	$s2, $zero, 1
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	stx.w	$s0, $a0, $s4
	blt	$s4, $s2, .LBB5_238
# %bb.237:
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_238:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i252
	add.d	$s0, $s3, $s4
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	beqz	$s1, .LBB5_240
# %bb.239:
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_240:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i254
	addi.d	$a0, $s0, 4
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	st.d	$s3, $a1, 0
	ld.d	$s1, $s7, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s3, 2
	st.d	$a0, $a1, 16
.LBB5_241:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit255
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a1, $s7, 8
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a4, 8
	ld.d	$a2, $a4, 16
	ld.d	$a3, $sp, 104                   # 8-byte Folded Reload
	srli.d	$a3, $a3, 2
	sub.d	$a1, $a1, $s1
	srli.d	$a1, $a1, 2
	sub.d	$fp, $a1, $a3
	beq	$a0, $a2, .LBB5_247
# %bb.242:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
.LBB5_243:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit262
	ld.w	$a0, $s5, 60
	ld.w	$a1, $s5, 68
	addi.w	$a0, $a0, -1
	beq	$a1, $a0, .LBB5_282
.LBB5_244:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a3, $a0, 0
	ld.d	$a0, $s7, 8
	ld.d	$s1, $s7, 0
	ld.w	$a4, $s5, 56
	sub.d	$s6, $a0, $s1
	st.d	$a3, $sp, 104                   # 8-byte Folded Spill
	st.d	$a4, $sp, 96                    # 8-byte Folded Spill
	bltz	$s8, .LBB5_272
# %bb.245:                              # %.lr.ph409.preheader
	ld.w	$a1, $s5, 64
	ld.d	$a2, $sp, 72                    # 8-byte Folded Reload
	mul.d	$fp, $s2, $a2
	beqz	$a1, .LBB5_253
# %bb.246:
	move	$s4, $s1
	bnez	$s8, .LBB5_255
	b	.LBB5_271
.LBB5_247:
	ld.d	$s0, $a4, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB5_314
# %bb.248:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i257
	srai.d	$a0, $s1, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s2, $a1, $a0
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	stx.w	$fp, $a0, $s1
	blt	$s1, $s4, .LBB5_250
# %bb.249:
	move	$a0, $s3
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_250:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i259
	add.d	$fp, $s3, $s1
	beqz	$s0, .LBB5_252
# %bb.251:
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_252:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i261
	addi.d	$a0, $fp, 4
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$s3, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $s3, 2
	st.d	$a0, $a1, 16
	ld.d	$s2, $sp, 56                    # 8-byte Folded Reload
	ld.w	$a0, $s5, 60
	ld.w	$a1, $s5, 68
	addi.w	$a0, $a0, -1
	bne	$a1, $a0, .LBB5_244
	b	.LBB5_282
.LBB5_253:
	ld.d	$a1, $s7, 16
	beq	$a0, $a1, .LBB5_265
# %bb.254:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s7, 8
	move	$s4, $s1
	beqz	$s8, .LBB5_271
.LBB5_255:                              # %.lr.ph409.peel.next.preheader
	addi.d	$s8, $fp, 1
	addi.w	$a1, $zero, -4
	lu52i.d	$s0, $a1, 2047
	ori	$fp, $zero, 1
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$s2, $a1, 511
	b	.LBB5_258
	.p2align	4, , 16
.LBB5_256:                              #   in Loop: Header=BB5_258 Depth=1
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s7, 8
	move	$s1, $s4
.LBB5_257:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit290
                                        #   in Loop: Header=BB5_258 Depth=1
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	addi.w	$a1, $a1, -1
	addi.d	$s8, $s8, 1
	st.d	$a1, $sp, 80                    # 8-byte Folded Spill
	beqz	$a1, .LBB5_272
.LBB5_258:                              # %.lr.ph409.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $s7, 16
	bne	$a0, $a1, .LBB5_256
# %bb.259:                              #   in Loop: Header=BB5_258 Depth=1
	sub.d	$s3, $a0, $s4
	beq	$s3, $s0, .LBB5_314
# %bb.260:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i285
                                        #   in Loop: Header=BB5_258 Depth=1
	srai.d	$a0, $s3, 2
	sltu	$a1, $fp, $a0
	masknez	$a2, $fp, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s2
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s2, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s2, $a1
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s8, $a0, $s3
	blt	$s3, $fp, .LBB5_262
# %bb.261:                              #   in Loop: Header=BB5_258 Depth=1
	move	$a0, $s1
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_262:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i287
                                        #   in Loop: Header=BB5_258 Depth=1
	beqz	$s4, .LBB5_264
# %bb.263:                              #   in Loop: Header=BB5_258 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_264:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i289
                                        #   in Loop: Header=BB5_258 Depth=1
	add.d	$a0, $s1, $s3
	addi.d	$a0, $a0, 4
	st.d	$s1, $s7, 0
	st.d	$a0, $s7, 8
	alsl.d	$a1, $s5, $s1, 2
	st.d	$a1, $s7, 16
	move	$s4, $s1
	ld.d	$s5, $sp, 120                   # 8-byte Folded Reload
	b	.LBB5_257
.LBB5_265:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s6, $a0, .LBB5_314
# %bb.266:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i285.peel
	srai.d	$a0, $s6, 2
	ori	$s2, $zero, 1
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s0, $a1, $a0
	slli.d	$a0, $s0, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s4, $a0
	stx.w	$fp, $a0, $s6
	blt	$s6, $s2, .LBB5_268
# %bb.267:
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_268:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i287.peel
	add.d	$s2, $s4, $s6
	ld.d	$s8, $sp, 80                    # 8-byte Folded Reload
	beqz	$s1, .LBB5_270
# %bb.269:
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_270:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i289.peel
	addi.d	$a0, $s2, 4
	st.d	$s4, $s7, 0
	st.d	$a0, $s7, 8
	alsl.d	$a1, $s0, $s4, 2
	st.d	$a1, $s7, 16
	bnez	$s8, .LBB5_255
.LBB5_271:
	move	$s1, $s4
.LBB5_272:                              # %._crit_edge410
	move	$s8, $s6
	ld.d	$s6, $sp, 112                   # 8-byte Folded Reload
	ld.d	$a0, $s6, 8
	ld.d	$a1, $s6, 16
	ld.d	$a2, $sp, 104                   # 8-byte Folded Reload
	ld.d	$a3, $sp, 96                    # 8-byte Folded Reload
	add.d	$s0, $a3, $a2
	beq	$a0, $a1, .LBB5_274
# %bb.273:
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s6, 8
	b	.LBB5_280
.LBB5_274:
	ld.d	$s1, $s6, 0
	sub.d	$s2, $a0, $s1
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s2, $a0, .LBB5_314
# %bb.275:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i271
	srai.d	$a0, $s2, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s3, $a0
	stx.w	$s0, $a0, $s2
	blt	$s2, $s4, .LBB5_277
# %bb.276:
	move	$a0, $s3
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_277:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i273
	add.d	$s0, $s3, $s2
	beqz	$s1, .LBB5_279
# %bb.278:
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_279:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i275
	addi.d	$a0, $s0, 4
	st.d	$s3, $s6, 0
	ld.d	$s1, $s7, 0
	st.d	$a0, $s6, 8
	alsl.d	$a0, $fp, $s3, 2
	st.d	$a0, $s6, 16
.LBB5_280:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit276
	ld.d	$a4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a1, $s7, 8
	ld.d	$a0, $a4, 8
	ld.d	$a2, $a4, 16
	srli.d	$a3, $s8, 2
	sub.d	$a1, $a1, $s1
	srli.d	$a1, $a1, 2
	sub.d	$fp, $a1, $a3
	beq	$a0, $a2, .LBB5_286
# %bb.281:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
.LBB5_282:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit283
	ld.w	$s2, $s5, 56
	ld.w	$a0, $s5, 64
	addi.w	$a1, $s2, -1
	beq	$a0, $a1, .LBB5_313
.LBB5_283:
	ld.w	$a0, $s5, 60
	ld.w	$a1, $s5, 68
	addi.w	$a0, $a0, -1
	beq	$a1, $a0, .LBB5_313
# %bb.284:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $s7, 8
	ld.d	$a2, $s7, 16
	ld.w	$s3, $a1, 0
	ld.d	$a1, $sp, 8                     # 8-byte Folded Reload
	addi.d	$s4, $a1, -1
	beq	$a0, $a2, .LBB5_292
# %bb.285:
	st.w	$s4, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s7, 8
	ld.d	$s8, $sp, 112                   # 8-byte Folded Reload
	b	.LBB5_298
.LBB5_286:
	ld.d	$s0, $a4, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB5_314
# %bb.287:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i278
	srai.d	$a0, $s1, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s2, $a0
	stx.w	$fp, $a0, $s1
	blt	$s1, $s4, .LBB5_289
# %bb.288:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_289:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i280
	add.d	$fp, $s2, $s1
	beqz	$s0, .LBB5_291
# %bb.290:
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_291:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i282
	addi.d	$a0, $fp, 4
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$s2, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s3, $s2, 2
	st.d	$a0, $a1, 16
	ld.w	$s2, $s5, 56
	ld.w	$a0, $s5, 64
	addi.w	$a1, $s2, -1
	bne	$a0, $a1, .LBB5_283
	b	.LBB5_313
.LBB5_292:
	ld.d	$fp, $s7, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s8, $sp, 112                   # 8-byte Folded Reload
	beq	$s0, $a0, .LBB5_314
# %bb.293:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i292
	srai.d	$a0, $s0, 2
	ori	$s6, $zero, 1
	sltu	$a1, $s6, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s4, $a0, $s0
	blt	$s0, $s6, .LBB5_295
# %bb.294:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_295:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i294
	add.d	$s4, $s1, $s0
	beqz	$fp, .LBB5_297
# %bb.296:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_297:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i296
	addi.d	$a0, $s4, 4
	st.d	$s1, $s7, 0
	st.d	$a0, $s7, 8
	alsl.d	$a0, $s5, $s1, 2
	st.d	$a0, $s7, 16
.LBB5_298:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit297
	ld.d	$a0, $s8, 8
	ld.d	$a1, $s8, 16
	add.d	$a2, $s2, $s3
	addi.d	$s2, $a2, 1
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	beq	$a0, $a1, .LBB5_301
# %bb.299:
	st.w	$s2, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s8, 8
	ld.d	$a0, $s4, 8
	ld.d	$a1, $s4, 16
	beq	$a0, $a1, .LBB5_307
.LBB5_300:
	ori	$a1, $zero, 1
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s4, 8
	b	.LBB5_313
.LBB5_301:
	ld.d	$fp, $s8, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB5_314
# %bb.302:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i299
	srai.d	$a0, $s0, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s2, $a0, $s0
	blt	$s0, $s4, .LBB5_304
# %bb.303:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_304:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i301
	add.d	$s2, $s1, $s0
	beqz	$fp, .LBB5_306
# %bb.305:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_306:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i303
	addi.d	$a0, $s2, 4
	st.d	$s1, $s8, 0
	st.d	$a0, $s8, 8
	alsl.d	$a0, $s3, $s1, 2
	st.d	$a0, $s8, 16
	ld.d	$s4, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $s4, 8
	ld.d	$a1, $s4, 16
	bne	$a0, $a1, .LBB5_300
.LBB5_307:
	ld.d	$fp, $s4, 0
	sub.d	$s0, $a0, $fp
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s0, $a0, .LBB5_314
# %bb.308:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i306
	srai.d	$a0, $s0, 2
	ori	$s3, $zero, 1
	sltu	$a1, $s3, $a0
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s2, $a1, $a0
	slli.d	$a0, $s2, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s1, $a0
	stx.w	$s3, $a0, $s0
	blt	$s0, $s3, .LBB5_310
# %bb.309:
	move	$a0, $s1
	move	$a1, $fp
	move	$a2, $s0
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB5_310:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i308
	add.d	$s3, $s1, $s0
	beqz	$fp, .LBB5_312
# %bb.311:
	move	$a0, $fp
	move	$a1, $s0
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB5_312:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i310
	addi.d	$a0, $s3, 4
	st.d	$s1, $s4, 0
	st.d	$a0, $s4, 8
	alsl.d	$a0, $s2, $s1, 2
	st.d	$a0, $s4, 16
.LBB5_313:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit311
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
.LBB5_314:                              # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB5_315:
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
	move	$s5, $a0
	ld.w	$t0, $a0, 72
	ld.w	$a0, $a0, 76
	st.d	$t0, $sp, 120                   # 8-byte Folded Spill
	addi.w	$t0, $t0, 1
	st.d	$a0, $sp, 72                    # 8-byte Folded Spill
	addi.w	$s7, $a0, 1
	st.d	$t0, $sp, 48                    # 8-byte Folded Spill
	mul.d	$a0, $t0, $s7
	slli.w	$s0, $a0, 1
	addi.w	$a0, $zero, -1
	st.d	$a7, $sp, 88                    # 8-byte Folded Spill
	st.d	$a6, $sp, 64                    # 8-byte Folded Spill
	st.d	$a5, $sp, 56                    # 8-byte Folded Spill
	st.d	$a4, $sp, 136                   # 8-byte Folded Spill
	st.d	$a3, $sp, 128                   # 8-byte Folded Spill
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	st.d	$a0, $sp, 184                   # 8-byte Folded Spill
	bge	$a0, $s0, .LBB6_497
# %bb.1:
	move	$s8, $a1
	ld.d	$s2, $a1, 16
	ld.d	$fp, $a1, 0
	ld.d	$a0, $sp, 368
	st.d	$a0, $sp, 80                    # 8-byte Folded Spill
	ld.d	$s3, $sp, 360
	ld.d	$s4, $sp, 352
	sub.d	$s1, $s2, $fp
	srai.d	$a0, $s1, 4
	bgeu	$a0, $s0, .LBB6_8
# %bb.2:                                # %_ZNSt12_Vector_baseI7double2SaIS0_EE11_M_allocateEm.exit.i.i
	ld.d	$s2, $s8, 8
	slli.d	$a0, $s0, 4
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$a2, $a0
	beq	$s2, $fp, .LBB6_5
# %bb.3:                                # %.lr.ph.i.i.i.i.i.i.preheader
	move	$a0, $a2
	move	$a1, $fp
	.p2align	4, , 16
.LBB6_4:                                # %.lr.ph.i.i.i.i.i.i
                                        # =>This Inner Loop Header: Depth=1
	vld	$vr0, $a1, 0
	vst	$vr0, $a0, 0
	addi.d	$a1, $a1, 16
	addi.d	$a0, $a0, 16
	bne	$a1, $s2, .LBB6_4
.LBB6_5:                                # %_ZNSt6vectorI7double2SaIS0_EE20_M_allocate_and_copyIPKS0_EEPS0_mT_S7_.exit.i
	sub.d	$s2, $s2, $fp
	beqz	$fp, .LBB6_7
# %bb.6:
	move	$a0, $fp
	move	$a1, $s1
	move	$fp, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a2, $fp
.LBB6_7:                                # %_ZNSt12_Vector_baseI7double2SaIS0_EE13_M_deallocateEPS0_m.exit.i
	st.d	$a2, $s8, 0
	add.d	$a0, $a2, $s2
	st.d	$a0, $s8, 8
	alsl.d	$s2, $s0, $a2, 4
	st.d	$s2, $s8, 16
	b	.LBB6_9
.LBB6_8:
	move	$a2, $fp
.LBB6_9:                                # %_ZNSt6vectorI7double2SaIS0_EE7reserveEm.exit
	addi.w	$a0, $zero, -2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	bge	$a0, $a1, .LBB6_498
# %bb.10:                               # %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
	st.d	$s4, $sp, 40                    # 8-byte Folded Spill
	st.d	$s3, $sp, 32                    # 8-byte Folded Spill
	st.d	$s5, $sp, 168                   # 8-byte Folded Spill
	st.d	$s7, $sp, 96                    # 8-byte Folded Spill
	beqz	$s7, .LBB6_71
# %bb.11:                               # %.noexc296
	move	$s0, $a2
	ld.w	$a0, $s5, 32
	fld.d	$fa0, $s5, 40
	addi.d	$a0, $a0, -1
	movgr2fr.w	$fa1, $a0
	ld.w	$a0, $s5, 36
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fs0, $fa0, $fa1
	fld.d	$fa0, $s5, 48
	addi.d	$a0, $a0, -1
	movgr2fr.w	$fa1, $a0
	ffint.d.w	$fa1, $fa1
	fdiv.d	$fa0, $fa0, $fa1
	fst.d	$fa0, $sp, 192                  # 8-byte Folded Spill
	slli.d	$fp, $s7, 2
	move	$a0, $fp
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s7, $a0
	st.w	$zero, $a0, 0
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	beqz	$a0, .LBB6_13
# %bb.12:                               # %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
	addi.d	$a0, $s7, 4
	addi.d	$a2, $fp, -4
	move	$a1, $zero
	pcaddu18i	$ra, %call36(memset)
	jirl	$ra, $ra, 0
.LBB6_13:                               # %.lr.ph975
	move	$a4, $zero
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	alsl.d	$a0, $a0, $s7, 2
	st.d	$a0, $sp, 24                    # 8-byte Folded Spill
	vldi	$vr0, -1000
	fdiv.d	$fs2, $fs0, $fa0
	fld.d	$fa1, $sp, 192                  # 8-byte Folded Reload
	fdiv.d	$fa0, $fa1, $fa0
	fst.d	$fa0, $sp, 160                  # 8-byte Folded Spill
	ld.d	$a3, $s8, 8
	vldi	$vr3, -800
	movgr2fr.d	$fs4, $zero
	move	$a2, $s0
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	b	.LBB6_15
	.p2align	4, , 16
.LBB6_14:                               # %._crit_edge
                                        #   in Loop: Header=BB6_15 Depth=1
	addi.d	$a4, $a4, 1
	ld.d	$a0, $sp, 96                    # 8-byte Folded Reload
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	beq	$a4, $a0, .LBB6_70
.LBB6_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_21 Depth 2
                                        #       Child Loop BB6_54 Depth 3
                                        #       Child Loop BB6_62 Depth 3
                                        #       Child Loop BB6_69 Depth 3
                                        #       Child Loop BB6_49 Depth 3
                                        #       Child Loop BB6_33 Depth 3
	sub.d	$a0, $a3, $a2
	srli.d	$a0, $a0, 4
	slli.d	$a1, $a4, 2
	stx.w	$a0, $s7, $a1
	bltz	$a6, .LBB6_14
# %bb.16:                               # %.lr.ph
                                        #   in Loop: Header=BB6_15 Depth=1
	ld.w	$a1, $s5, 84
	move	$a0, $zero
	add.d	$a1, $a1, $a4
	movgr2fr.w	$fa0, $a1
	addi.w	$a5, $a1, 0
	fld.d	$fa1, $s5, 48
	ffint.d.w	$fa0, $fa0
	fadd.d	$fa0, $fa0, $fa3
	fld.d	$fa2, $sp, 192                  # 8-byte Folded Reload
	fmul.d	$fa0, $fa2, $fa0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa1, $fa0, $fcc0
	fcmp.clt.d	$fcc0, $fs4, $fa0
	fsel	$fs5, $fs4, $fa0, $fcc0
	fld.d	$fa0, $sp, 160                  # 8-byte Folded Reload
	fadd.d	$fs6, $fa0, $fs5
	fsub.d	$fs7, $fs5, $fa0
	move	$s4, $a2
	move	$s7, $a4
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
	addi.w	$a0, $fp, 1
	move	$s4, $a2
	beq	$fp, $a6, .LBB6_14
.LBB6_21:                               #   Parent Loop BB6_15 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB6_54 Depth 3
                                        #       Child Loop BB6_62 Depth 3
                                        #       Child Loop BB6_69 Depth 3
                                        #       Child Loop BB6_49 Depth 3
                                        #       Child Loop BB6_33 Depth 3
	ld.w	$a1, $s5, 80
	move	$fp, $a0
	add.d	$a1, $a1, $a0
	addi.w	$a0, $a1, 0
	movgr2fr.w	$fa0, $a1
	fld.d	$fa1, $s5, 40
	ffint.d.w	$fa0, $fa0
	fadd.d	$fa0, $fa0, $fa3
	fmul.d	$fa0, $fs0, $fa0
	fcmp.clt.d	$fcc0, $fa0, $fa1
	fsel	$fa0, $fa1, $fa0, $fcc0
	fcmp.clt.d	$fcc0, $fs4, $fa0
	fsel	$fs1, $fs4, $fa0, $fcc0
	beqz	$a0, .LBB6_17
# %bb.22:                               #   in Loop: Header=BB6_21 Depth=2
	ld.w	$a1, $s5, 32
	beq	$a0, $a1, .LBB6_17
# %bb.23:                               #   in Loop: Header=BB6_21 Depth=2
	beqz	$a5, .LBB6_17
# %bb.24:                               #   in Loop: Header=BB6_21 Depth=2
	ld.w	$a0, $s5, 36
	beq	$a5, $a0, .LBB6_17
# %bb.25:                               #   in Loop: Header=BB6_21 Depth=2
	bnez	$a4, .LBB6_38
# %bb.26:                               #   in Loop: Header=BB6_21 Depth=2
	ld.w	$a0, $s5, 72
	bne	$fp, $a0, .LBB6_38
# %bb.27:                               #   in Loop: Header=BB6_21 Depth=2
	fsub.d	$fs1, $fs1, $fs2
	beq	$a3, $s2, .LBB6_45
# %bb.28:                               #   in Loop: Header=BB6_21 Depth=2
	fst.d	$fs1, $a3, 0
	fst.d	$fs6, $a3, 8
	b	.LBB6_19
	.p2align	4, , 16
.LBB6_29:                               #   in Loop: Header=BB6_21 Depth=2
	sub.d	$s1, $s2, $s4
	addi.w	$a0, $zero, -16
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB6_485
# %bb.30:                               #   in Loop: Header=BB6_21 Depth=2
	srai.d	$a0, $s1, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 127
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s0, $a1, $a0
	slli.d	$a0, $s0, 4
.Ltmp58:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp59:
# %bb.31:                               # %.noexc627
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a2, $a0
	add.d	$a0, $a0, $s1
	fstx.d	$fs1, $a2, $s1
	fst.d	$fs5, $a0, 8
	move	$s3, $a2
	beq	$s4, $s2, .LBB6_34
# %bb.32:                               # %.lr.ph.i.i.i.i.i.i.i.preheader
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$s3, $a2
	move	$a0, $s4
	.p2align	4, , 16
.LBB6_33:                               # %.lr.ph.i.i.i.i.i.i.i
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
	beqz	$s4, .LBB6_37
# %bb.35:                               #   in Loop: Header=BB6_21 Depth=2
	move	$a0, $s4
	move	$a1, $s1
.LBB6_36:                               # %_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_.exit.i
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$s1, $a2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	move	$a2, $s1
.LBB6_37:                               # %_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_.exit.i
                                        #   in Loop: Header=BB6_21 Depth=2
	addi.d	$a3, $s3, 16
	st.d	$a2, $s8, 0
	st.d	$a3, $s8, 8
	alsl.d	$s2, $s0, $a2, 4
	st.d	$s2, $s8, 16
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	move	$a4, $s7
	vldi	$vr3, -800
	move	$a5, $s6
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	b	.LBB6_20
.LBB6_38:                               #   in Loop: Header=BB6_21 Depth=2
	bnez	$fp, .LBB6_42
# %bb.39:                               #   in Loop: Header=BB6_21 Depth=2
	ld.wu	$a0, $s5, 76
	bne	$a4, $a0, .LBB6_42
# %bb.40:                               #   in Loop: Header=BB6_21 Depth=2
	fadd.d	$fs1, $fs2, $fs1
	beq	$a3, $s2, .LBB6_65
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
	sub.d	$s1, $s2, $s4
	addi.w	$a0, $zero, -16
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB6_487
# %bb.46:                               #   in Loop: Header=BB6_21 Depth=2
	srai.d	$a0, $s1, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 127
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s0, $a1, $a0
	slli.d	$a0, $s0, 4
.Ltmp52:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp53:
# %bb.47:                               # %.noexc640
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a2, $a0
	add.d	$a0, $a0, $s1
	fstx.d	$fs1, $a2, $s1
	fst.d	$fs6, $a0, 8
	move	$s3, $a2
	beq	$s4, $s2, .LBB6_34
# %bb.48:                               # %.lr.ph.i.i.i.i.i.i.i631.preheader
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$s3, $a2
	move	$a0, $s4
	.p2align	4, , 16
.LBB6_49:                               # %.lr.ph.i.i.i.i.i.i.i631
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
	sub.d	$s3, $s2, $s4
	addi.w	$a0, $zero, -16
	lu52i.d	$a0, $a0, 2047
	beq	$s3, $a0, .LBB6_489
# %bb.51:                               #   in Loop: Header=BB6_21 Depth=2
	srai.d	$a0, $s3, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 127
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s0, $a1, $a0
	slli.d	$a0, $s0, 4
.Ltmp34:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp35:
# %bb.52:                               # %.noexc668
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$s1, $a0
	add.d	$a0, $a0, $s3
	fstx.d	$fs3, $s1, $s3
	fst.d	$fs6, $a0, 8
	move	$s5, $s1
	beq	$s4, $s2, .LBB6_55
# %bb.53:                               # %.lr.ph.i.i.i.i.i.i.i659.preheader
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$s5, $s1
	move	$a0, $s4
	.p2align	4, , 16
.LBB6_54:                               # %.lr.ph.i.i.i.i.i.i.i659
                                        #   Parent Loop BB6_15 Depth=1
                                        #     Parent Loop BB6_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a0, 0
	vst	$vr0, $s5, 0
	addi.d	$a0, $a0, 16
	addi.d	$s5, $s5, 16
	bne	$a0, $s2, .LBB6_54
.LBB6_55:                               # %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit.i.i663
                                        #   in Loop: Header=BB6_21 Depth=2
	beqz	$s4, .LBB6_57
# %bb.56:                               #   in Loop: Header=BB6_21 Depth=2
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_57:                               # %_ZNSt6vectorI7double2SaIS0_EE17_M_realloc_appendIJS0_EEEvDpOT_.exit.i666
                                        #   in Loop: Header=BB6_21 Depth=2
	addi.d	$a0, $s5, 16
	st.d	$s1, $s8, 0
	st.d	$a0, $s8, 8
	alsl.d	$s2, $s0, $s1, 4
	st.d	$s2, $s8, 16
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	move	$a4, $s7
	vldi	$vr3, -800
	move	$a5, $s6
	ld.d	$a6, $sp, 120                   # 8-byte Folded Reload
	fadd.d	$fs1, $fs2, $fs1
	bne	$a0, $s2, .LBB6_44
.LBB6_58:                               #   in Loop: Header=BB6_21 Depth=2
	sub.d	$s4, $s2, $s1
	addi.w	$a0, $zero, -16
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB6_491
# %bb.59:                               #   in Loop: Header=BB6_21 Depth=2
	srai.d	$a0, $s4, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 127
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s0, $a1, $a0
	slli.d	$a0, $s0, 4
.Ltmp37:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp38:
# %bb.60:                               # %.noexc682
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a2, $a0
	add.d	$a0, $a0, $s4
	fstx.d	$fs1, $a2, $s4
	fst.d	$fs7, $a0, 8
	move	$s3, $a2
	beq	$s1, $s2, .LBB6_63
# %bb.61:                               # %.lr.ph.i.i.i.i.i.i.i673.preheader
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$s3, $a2
	move	$a0, $s1
	.p2align	4, , 16
.LBB6_62:                               # %.lr.ph.i.i.i.i.i.i.i673
                                        #   Parent Loop BB6_15 Depth=1
                                        #     Parent Loop BB6_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a0, 0
	vst	$vr0, $s3, 0
	addi.d	$a0, $a0, 16
	addi.d	$s3, $s3, 16
	bne	$a0, $s2, .LBB6_62
.LBB6_63:                               # %_ZSt34__uninitialized_move_if_noexcept_aIP7double2S1_SaIS0_EET0_T_S4_S3_RT1_.exit.i.i677
                                        #   in Loop: Header=BB6_21 Depth=2
	beqz	$s1, .LBB6_37
# %bb.64:                               #   in Loop: Header=BB6_21 Depth=2
	move	$a0, $s1
	move	$a1, $s4
	b	.LBB6_36
.LBB6_65:                               #   in Loop: Header=BB6_21 Depth=2
	sub.d	$s1, $s2, $s4
	addi.w	$a0, $zero, -16
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB6_493
# %bb.66:                               #   in Loop: Header=BB6_21 Depth=2
	srai.d	$a0, $s1, 4
	ori	$a2, $zero, 1
	sltu	$a1, $a2, $a0
	masknez	$a2, $a2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 127
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s0, $a1, $a0
	slli.d	$a0, $s0, 4
.Ltmp46:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp47:
# %bb.67:                               # %.noexc654
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$a2, $a0
	add.d	$a0, $a0, $s1
	fstx.d	$fs1, $a2, $s1
	fst.d	$fs7, $a0, 8
	move	$s3, $a2
	beq	$s4, $s2, .LBB6_34
# %bb.68:                               # %.lr.ph.i.i.i.i.i.i.i645.preheader
                                        #   in Loop: Header=BB6_21 Depth=2
	move	$s3, $a2
	move	$a0, $s4
	.p2align	4, , 16
.LBB6_69:                               # %.lr.ph.i.i.i.i.i.i.i645
                                        #   Parent Loop BB6_15 Depth=1
                                        #     Parent Loop BB6_21 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	vld	$vr0, $a0, 0
	vst	$vr0, $s3, 0
	addi.d	$a0, $a0, 16
	addi.d	$s3, $s3, 16
	bne	$a0, $s2, .LBB6_69
	b	.LBB6_34
.LBB6_70:
	st.d	$a3, $sp, 8                     # 8-byte Folded Spill
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	mul.w	$s0, $a0, $a6
	bgez	$s0, .LBB6_72
	b	.LBB6_495
.LBB6_71:                               # %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit.._crit_edge976_crit_edge
	st.d	$a2, $sp, 16                    # 8-byte Folded Spill
	ld.d	$a0, $s8, 8
	st.d	$a0, $sp, 8                     # 8-byte Folded Spill
	move	$s7, $zero
	st.d	$zero, $sp, 24                  # 8-byte Folded Spill
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a0, $sp, 72                    # 8-byte Folded Reload
	mul.w	$s0, $a0, $a6
	bltz	$s0, .LBB6_495
.LBB6_72:
	ld.d	$a0, $s3, 16
	ld.d	$s1, $s3, 0
	sub.d	$s2, $a0, $s1
	srai.d	$a0, $s2, 2
	bgeu	$a0, $s0, .LBB6_79
# %bb.73:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
	ld.d	$fp, $s3, 8
	slli.d	$a0, $s0, 2
.Ltmp64:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp65:
# %bb.74:                               # %.noexc298
	move	$s4, $a0
	sub.d	$fp, $fp, $s1
	ori	$a0, $zero, 1
	blt	$fp, $a0, .LBB6_76
# %bb.75:
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_76:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i
	beqz	$s1, .LBB6_78
# %bb.77:
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_78:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
	st.d	$s4, $s3, 0
	add.d	$a0, $s4, $fp
	st.d	$a0, $s3, 8
	alsl.d	$a0, $s0, $s4, 2
	st.d	$a0, $s3, 16
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
.LBB6_79:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$s1, $a1, 0
	sub.d	$s2, $a0, $s1
	srai.d	$a0, $s2, 2
	bgeu	$a0, $s0, .LBB6_86
# %bb.80:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i311
	ld.d	$a0, $sp, 128                   # 8-byte Folded Reload
	ld.d	$fp, $a0, 8
	slli.d	$a0, $s0, 2
.Ltmp66:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp67:
# %bb.81:                               # %.noexc316
	move	$s4, $a0
	sub.d	$fp, $fp, $s1
	ori	$a0, $zero, 1
	blt	$fp, $a0, .LBB6_83
# %bb.82:
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_83:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i312
	beqz	$s1, .LBB6_85
# %bb.84:
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_85:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i314
	ld.d	$a1, $sp, 128                   # 8-byte Folded Reload
	st.d	$s4, $a1, 0
	add.d	$a0, $s4, $fp
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s0, $s4, 2
	st.d	$a0, $a1, 16
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
.LBB6_86:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit317
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$s1, $a1, 0
	slli.d	$a1, $s0, 2
	alsl.w	$s0, $s0, $a1, 1
	sub.d	$s2, $a0, $s1
	srai.d	$a0, $s2, 2
	bgeu	$a0, $s0, .LBB6_93
# %bb.87:                               # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i318
	ld.d	$a0, $sp, 136                   # 8-byte Folded Reload
	ld.d	$fp, $a0, 8
	slli.d	$a0, $s0, 2
.Ltmp68:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp69:
# %bb.88:                               # %.noexc323
	move	$s4, $a0
	sub.d	$fp, $fp, $s1
	ori	$a0, $zero, 1
	blt	$fp, $a0, .LBB6_90
# %bb.89:
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_90:                               # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i319
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	beqz	$s1, .LBB6_92
# %bb.91:
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_92:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i321
	ld.d	$a1, $sp, 136                   # 8-byte Folded Reload
	st.d	$s4, $a1, 0
	add.d	$a0, $s4, $fp
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s0, $s4, 2
	st.d	$a0, $a1, 16
.LBB6_93:                               # %_ZNSt6vectorIiSaIiEE7reserveEm.exit324
	ld.w	$a0, $s5, 76
	ori	$a5, $zero, 1
	st.d	$s7, $sp, 112                   # 8-byte Folded Spill
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	blt	$a0, $a5, .LBB6_138
# %bb.94:                               # %.lr.ph983
	move	$a6, $zero
	b	.LBB6_97
	.p2align	4, , 16
.LBB6_95:                               # %.loopexit926.loopexit
                                        #   in Loop: Header=BB6_97 Depth=1
	ld.w	$a0, $s5, 76
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	ori	$a5, $zero, 1
	ld.d	$a6, $sp, 104                   # 8-byte Folded Reload
.LBB6_96:                               # %.loopexit926
                                        #   in Loop: Header=BB6_97 Depth=1
	bge	$a6, $a0, .LBB6_138
.LBB6_97:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_101 Depth 2
	move	$a1, $a6
	ld.w	$a2, $s5, 84
	slli.d	$a3, $a6, 2
	ldx.w	$s8, $s7, $a3
	addi.d	$a6, $a6, 1
	slli.d	$a3, $a6, 2
	ld.w	$a4, $s5, 64
	ldx.w	$a3, $s7, $a3
	add.w	$a7, $a2, $a1
	blt	$a4, $a5, .LBB6_99
# %bb.98:                               #   in Loop: Header=BB6_97 Depth=1
	slt	$a2, $zero, $a7
	add.d	$s8, $s8, $a2
	addi.w	$a2, $a0, -1
	slt	$a1, $a1, $a2
	add.d	$a3, $a3, $a1
.LBB6_99:                               #   in Loop: Header=BB6_97 Depth=1
	ld.w	$a1, $s5, 72
	blt	$a1, $a5, .LBB6_96
# %bb.100:                              # %.lr.ph981
                                        #   in Loop: Header=BB6_97 Depth=1
	st.d	$a7, $sp, 152                   # 8-byte Folded Spill
	st.d	$a3, $sp, 160                   # 8-byte Folded Spill
	st.d	$a6, $sp, 104                   # 8-byte Folded Spill
	move	$s6, $zero
	move	$s7, $zero
	ori	$s0, $zero, 2
	st.d	$s8, $sp, 144                   # 8-byte Folded Spill
	.p2align	4, , 16
.LBB6_101:                              #   Parent Loop BB6_97 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	ld.w	$fp, $s5, 80
.Ltmp70:
	ori	$a0, $zero, 24
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp71:
# %bb.102:                              #   in Loop: Header=BB6_101 Depth=2
	move	$s4, $a0
	add.w	$a2, $s7, $fp
	addi.d	$fp, $a0, 24
	addi.d	$a0, $a0, 4
	add.d	$a1, $s8, $s0
	addi.d	$a3, $a1, -2
	st.w	$a3, $s4, 4
	addi.d	$a3, $a1, -3
	st.w	$a3, $s4, 0
	addi.d	$a1, $a1, -1
	st.w	$a1, $s4, 8
	ld.d	$a4, $sp, 160                   # 8-byte Folded Reload
	add.d	$a3, $a4, $s6
	addi.d	$a1, $s4, 20
	st.w	$a3, $s4, 20
	addi.d	$a3, $a3, 1
	st.w	$a3, $s4, 16
	add.d	$a3, $a4, $s0
	st.w	$a3, $s4, 12
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	beqz	$a5, .LBB6_106
# %bb.103:                              #   in Loop: Header=BB6_101 Depth=2
	ld.w	$a3, $s5, 36
	addi.w	$a3, $a3, -1
	bne	$a5, $a3, .LBB6_110
# %bb.104:                              #   in Loop: Header=BB6_101 Depth=2
	add.d	$a3, $a4, $s7
	st.w	$a3, $s4, 20
	addi.d	$a4, $a3, 1
	st.w	$a4, $s4, 12
	st.w	$a3, $s4, 16
	move	$fp, $a1
	bnez	$a2, .LBB6_115
# %bb.105:                              #   in Loop: Header=BB6_101 Depth=2
	vld	$vr0, $a0, 0
	addi.d	$fp, $s4, 16
	vst	$vr0, $s4, 0
	b	.LBB6_115
	.p2align	4, , 16
.LBB6_106:                              #   in Loop: Header=BB6_101 Depth=2
	ld.w	$a4, $s5, 32
	add.d	$a3, $s8, $s7
	st.w	$a3, $s4, 0
	addi.d	$a3, $a3, 1
	addi.w	$a4, $a4, -1
	st.w	$a3, $s4, 8
	bne	$a2, $a4, .LBB6_108
# %bb.107:                              #   in Loop: Header=BB6_101 Depth=2
	ld.d	$a2, $s4, 16
	st.d	$a2, $s4, 12
	move	$fp, $a1
.LBB6_108:                              #   in Loop: Header=BB6_101 Depth=2
	addi.d	$a1, $s4, 8
	sub.d	$a2, $fp, $a1
	ori	$a4, $zero, 5
	blt	$a2, $a4, .LBB6_135
# %bb.109:                              #   in Loop: Header=BB6_101 Depth=2
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	addi.d	$fp, $fp, -4
	b	.LBB6_115
	.p2align	4, , 16
.LBB6_110:                              #   in Loop: Header=BB6_101 Depth=2
	beqz	$a2, .LBB6_113
# %bb.111:                              #   in Loop: Header=BB6_101 Depth=2
	ld.w	$a0, $s5, 32
	addi.w	$a0, $a0, -1
	bne	$a2, $a0, .LBB6_115
# %bb.112:                              #   in Loop: Header=BB6_101 Depth=2
	ld.d	$a0, $s4, 16
	st.d	$a0, $s4, 12
	b	.LBB6_114
.LBB6_113:                              #   in Loop: Header=BB6_101 Depth=2
	ld.w	$a2, $a0, 16
	vld	$vr0, $a0, 0
	st.w	$a2, $s4, 16
	vst	$vr0, $s4, 0
.LBB6_114:                              #   in Loop: Header=BB6_101 Depth=2
	move	$fp, $a1
.LBB6_115:                              #   in Loop: Header=BB6_101 Depth=2
	ld.d	$a1, $s1, 8
	ld.d	$a2, $s1, 0
	ld.d	$a0, $s3, 8
	ld.d	$a3, $s3, 16
	sub.d	$a1, $a1, $a2
	srli.d	$s5, $a1, 2
	beq	$a0, $a3, .LBB6_117
# %bb.116:                              #   in Loop: Header=BB6_101 Depth=2
	st.w	$s5, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s3, 8
	b	.LBB6_124
	.p2align	4, , 16
.LBB6_117:                              #   in Loop: Header=BB6_101 Depth=2
	ld.d	$s2, $s3, 0
	sub.d	$s1, $a0, $s2
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB6_481
# %bb.118:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i
                                        #   in Loop: Header=BB6_101 Depth=2
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	srai.d	$a0, $s1, 2
	ori	$s8, $zero, 1
	sltu	$a1, $s8, $a0
	masknez	$a2, $s8, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
.Ltmp73:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp74:
# %bb.119:                              # %.noexc348
                                        #   in Loop: Header=BB6_101 Depth=2
	move	$fp, $a0
	stx.w	$s5, $a0, $s1
	blt	$s1, $s8, .LBB6_121
# %bb.120:                              #   in Loop: Header=BB6_101 Depth=2
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_121:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i
                                        #   in Loop: Header=BB6_101 Depth=2
	beqz	$s2, .LBB6_123
# %bb.122:                              #   in Loop: Header=BB6_101 Depth=2
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_123:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i
                                        #   in Loop: Header=BB6_101 Depth=2
	add.d	$a0, $fp, $s1
	addi.d	$a0, $a0, 4
	ld.d	$a1, $sp, 176                   # 8-byte Folded Reload
	st.d	$fp, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s3, $fp, 2
	move	$s3, $a1
	st.d	$a0, $a1, 16
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
.LBB6_124:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
                                        #   in Loop: Header=BB6_101 Depth=2
	ld.d	$a0, $s2, 8
	ld.d	$a1, $s2, 16
	sub.d	$a2, $fp, $s4
	srli.d	$s5, $a2, 2
	beq	$a0, $a1, .LBB6_126
# %bb.125:                              #   in Loop: Header=BB6_101 Depth=2
	st.w	$s5, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $s2, 8
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	b	.LBB6_133
	.p2align	4, , 16
.LBB6_126:                              #   in Loop: Header=BB6_101 Depth=2
	ld.d	$s2, $s2, 0
	sub.d	$s1, $a0, $s2
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB6_483
# %bb.127:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i350
                                        #   in Loop: Header=BB6_101 Depth=2
	st.d	$fp, $sp, 192                   # 8-byte Folded Spill
	srai.d	$a0, $s1, 2
	ori	$s8, $zero, 1
	sltu	$a1, $s8, $a0
	masknez	$a2, $s8, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
.Ltmp76:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp77:
# %bb.128:                              # %.noexc356
                                        #   in Loop: Header=BB6_101 Depth=2
	move	$fp, $a0
	stx.w	$s5, $a0, $s1
	blt	$s1, $s8, .LBB6_130
# %bb.129:                              #   in Loop: Header=BB6_101 Depth=2
	move	$a0, $fp
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_130:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i352
                                        #   in Loop: Header=BB6_101 Depth=2
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	beqz	$s2, .LBB6_132
# %bb.131:                              #   in Loop: Header=BB6_101 Depth=2
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_132:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i354
                                        #   in Loop: Header=BB6_101 Depth=2
	add.d	$a0, $fp, $s1
	addi.d	$a0, $a0, 4
	ld.d	$s2, $sp, 128                   # 8-byte Folded Reload
	st.d	$fp, $s2, 0
	st.d	$a0, $s2, 8
	alsl.d	$a0, $s3, $fp, 2
	st.d	$a0, $s2, 16
	ld.d	$s1, $sp, 136                   # 8-byte Folded Reload
	ld.d	$s3, $sp, 176                   # 8-byte Folded Reload
	ld.d	$s8, $sp, 144                   # 8-byte Folded Reload
	ld.d	$fp, $sp, 192                   # 8-byte Folded Reload
.LBB6_133:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit357
                                        #   in Loop: Header=BB6_101 Depth=2
	ld.d	$a1, $s1, 8
.Ltmp79:
	move	$a0, $s1
	move	$a2, $s4
	move	$a3, $fp
	move	$a4, $zero
	pcaddu18i	$ra, %call36(_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag)
	jirl	$ra, $ra, 0
.Ltmp80:
# %bb.134:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit
                                        #   in Loop: Header=BB6_101 Depth=2
	ori	$a1, $zero, 24
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.w	$a0, $s5, 72
	addi.w	$s7, $s7, 1
	addi.d	$s0, $s0, 2
	addi.d	$s6, $s6, 2
	blt	$s7, $a0, .LBB6_101
	b	.LBB6_95
.LBB6_135:                              #   in Loop: Header=BB6_101 Depth=2
	ori	$a1, $zero, 4
	bne	$a2, $a1, .LBB6_137
# %bb.136:                              #   in Loop: Header=BB6_101 Depth=2
	st.w	$a3, $a0, 0
.LBB6_137:                              #   in Loop: Header=BB6_101 Depth=2
	addi.d	$fp, $fp, -4
	b	.LBB6_115
.LBB6_138:                              # %._crit_edge984
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel5numpeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel5numpeE)
	ld.w	$a0, $a0, 0
	beq	$a0, $a5, .LBB6_435
# %bb.139:
	ld.w	$fp, $s5, 68
	ld.w	$s0, $s5, 64
	sltu	$a0, $zero, $fp
	ld.d	$a1, $sp, 48                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a1
	sltu	$a1, $zero, $s0
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	mul.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 1
	alsl.w	$s3, $a0, $a1, 1
	bltz	$s3, .LBB6_495
# %bb.140:
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a1, 16
	ld.d	$s2, $a1, 0
	sub.d	$s4, $a0, $s2
	srai.d	$a0, $s4, 2
	bgeu	$a0, $s3, .LBB6_147
# %bb.141:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i361
	ld.d	$s5, $a1, 8
	slli.d	$a0, $s3, 2
.Ltmp82:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp83:
# %bb.142:                              # %.noexc366
	move	$s1, $a0
	sub.d	$s5, $s5, $s2
	ori	$a0, $zero, 1
	blt	$s5, $a0, .LBB6_144
# %bb.143:
	move	$a0, $s1
	move	$a1, $s2
	move	$a2, $s5
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_144:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i362
	beqz	$s2, .LBB6_146
# %bb.145:
	move	$a0, $s2
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.d	$a0, $sp, 168                   # 8-byte Folded Reload
	ld.w	$fp, $a0, 68
	ld.w	$s0, $a0, 64
.LBB6_146:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i364
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$s1, $a1, 0
	add.d	$a0, $s1, $s5
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s3, $s1, 2
	st.d	$a0, $a1, 16
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
.LBB6_147:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit367
	ld.w	$a0, $s5, 60
	addi.w	$a0, $a0, -1
	ld.w	$a1, $s5, 56
	xor	$a0, $fp, $a0
	sltu	$a0, $zero, $a0
	ld.d	$a2, $sp, 48                    # 8-byte Folded Reload
	mul.d	$a0, $a0, $a2
	addi.w	$a1, $a1, -1
	xor	$a1, $s0, $a1
	sltu	$a1, $zero, $a1
	ld.d	$a2, $sp, 96                    # 8-byte Folded Reload
	mul.d	$a1, $a1, $a2
	slli.d	$a1, $a1, 1
	alsl.w	$a2, $a0, $a1, 1
	addi.w	$a3, $zero, -3
	bge	$a3, $a2, .LBB6_495
# %bb.148:
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a2, $a3, 16
	ld.d	$s1, $a3, 0
	alsl.d	$a0, $a0, $a1, 1
	addi.w	$s3, $a0, 2
	sub.d	$s2, $a2, $s1
	srai.d	$a0, $s2, 2
	bgeu	$a0, $s3, .LBB6_155
# %bb.149:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i368
	ld.d	$fp, $a3, 8
	slli.d	$a0, $s3, 2
.Ltmp84:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp85:
# %bb.150:                              # %.noexc373
	move	$s4, $a0
	sub.d	$fp, $fp, $s1
	ori	$a0, $zero, 1
	blt	$fp, $a0, .LBB6_152
# %bb.151:
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $fp
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_152:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i369
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	beqz	$s1, .LBB6_154
# %bb.153:
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
	ld.w	$s0, $s5, 64
.LBB6_154:                              # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i371
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	st.d	$s4, $a3, 0
	add.d	$a0, $s4, $fp
	st.d	$a0, $a3, 8
	alsl.d	$a0, $s3, $s4, 2
	st.d	$a0, $a3, 16
	ld.w	$fp, $s5, 68
.LBB6_155:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit374
	beqz	$s0, .LBB6_192
# %bb.156:                              # %_ZNSt6vectorIiSaIiEE7reserveEm.exit374
	beqz	$fp, .LBB6_192
# %bb.157:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$s0, $a0, 0
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a1, $a2, 8
	ld.d	$a0, $a2, 16
	ld.w	$s3, $s5, 56
	beq	$a1, $a0, .LBB6_160
# %bb.158:
	st.w	$zero, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $a2, 8
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	beq	$a1, $a0, .LBB6_167
.LBB6_159:
	ori	$a0, $zero, 1
	st.w	$a0, $a1, 0
	addi.d	$a0, $a1, 4
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$a0, $a1, 8
	b	.LBB6_174
.LBB6_160:
	ld.d	$s1, $a2, 0
	sub.d	$s4, $a1, $s1
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB6_531
# %bb.161:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i376
	srai.d	$a0, $s4, 2
	ori	$s5, $zero, 1
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
.Ltmp86:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp87:
# %bb.162:                              # %.noexc382
	move	$s2, $a0
	stx.w	$zero, $a0, $s4
	blt	$s4, $s5, .LBB6_164
# %bb.163:
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_164:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i378
	add.d	$s5, $s2, $s4
	beqz	$s1, .LBB6_166
# %bb.165:
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_166:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i380
	addi.d	$a1, $s5, 4
	ld.d	$a2, $sp, 88                    # 8-byte Folded Reload
	st.d	$s2, $a2, 0
	st.d	$a1, $a2, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $a2, 16
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
	bne	$a1, $a0, .LBB6_159
.LBB6_167:
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s1, $a1, 0
	sub.d	$s4, $a0, $s1
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB6_533
# %bb.168:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i385
	srai.d	$a0, $s4, 2
	ori	$s5, $zero, 1
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s2, $a1, $a0
	slli.d	$a0, $s2, 2
.Ltmp88:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp89:
# %bb.169:                              # %.noexc391
	move	$fp, $a0
	stx.w	$s5, $a0, $s4
	blt	$s4, $s5, .LBB6_171
# %bb.170:
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_171:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i387
	add.d	$s5, $fp, $s4
	beqz	$s1, .LBB6_173
# %bb.172:
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_173:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i389
	addi.d	$a0, $s5, 4
	ld.d	$a1, $sp, 88                    # 8-byte Folded Reload
	st.d	$fp, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $fp, 2
	st.d	$a0, $a1, 16
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 56                    # 8-byte Folded Reload
.LBB6_174:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit392
	ld.d	$a0, $a5, 8
	ld.d	$a1, $a5, 16
	nor	$a2, $s3, $zero
	add.d	$s0, $s0, $a2
	beq	$a0, $a1, .LBB6_177
# %bb.175:
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a5, 8
	ld.d	$a0, $a4, 8
	ld.d	$a1, $a4, 16
	beq	$a0, $a1, .LBB6_184
.LBB6_176:
	ori	$a1, $zero, 2
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	b	.LBB6_191
.LBB6_177:
	ld.d	$s1, $a5, 0
	sub.d	$s4, $a0, $s1
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB6_535
# %bb.178:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
	srai.d	$a0, $s4, 2
	ori	$s3, $zero, 1
	sltu	$a1, $s3, $a0
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s2, $a1, $a0
	slli.d	$a0, $s2, 2
.Ltmp90:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp91:
# %bb.179:                              # %.noexc394
	move	$fp, $a0
	stx.w	$s0, $a0, $s4
	blt	$s4, $s3, .LBB6_181
# %bb.180:
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_181:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
	add.d	$s0, $fp, $s4
	beqz	$s1, .LBB6_183
# %bb.182:
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_183:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i
	addi.d	$a0, $s0, 4
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$fp, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $fp, 2
	st.d	$a0, $a1, 16
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 8
	ld.d	$a1, $a4, 16
	bne	$a0, $a1, .LBB6_176
.LBB6_184:
	ld.d	$s1, $a4, 0
	sub.d	$s4, $a0, $s1
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB6_537
# %bb.185:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i396
	srai.d	$a0, $s4, 2
	ori	$s0, $zero, 1
	sltu	$a1, $s0, $a0
	masknez	$a2, $s0, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
.Ltmp92:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp93:
# %bb.186:                              # %.noexc402
	move	$s2, $a0
	ori	$a0, $zero, 2
	stx.w	$a0, $s2, $s4
	blt	$s4, $s0, .LBB6_188
# %bb.187:
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_188:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i398
	add.d	$s0, $s2, $s4
	beqz	$s1, .LBB6_190
# %bb.189:
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_190:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i400
	addi.d	$a0, $s0, 4
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$s2, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $a1, 16
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
.LBB6_191:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit403thread-pre-split
	ld.w	$fp, $s5, 68
.LBB6_192:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit403
	beqz	$fp, .LBB6_247
# %bb.193:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a0, $a0, 0
	st.d	$a0, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 8
	ld.d	$s4, $a3, 0
	ld.w	$a1, $s5, 56
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	sub.d	$s1, $a0, $s4
	st.d	$s1, $sp, 160                   # 8-byte Folded Spill
	bltz	$s6, .LBB6_228
# %bb.194:                              # %.lr.ph989.preheader
	ld.w	$a1, $s5, 64
	ori	$s0, $zero, 2
	beqz	$a1, .LBB6_225
# %bb.195:
	move	$s6, $s4
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	beqz	$a1, .LBB6_227
.LBB6_196:                              # %.lr.ph989.peel.next.preheader
	move	$s3, $zero
	addi.w	$a1, $zero, -4
	lu52i.d	$s7, $a1, 2047
	ori	$s8, $zero, 1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$fp, $a1, 511
	b	.LBB6_199
	.p2align	4, , 16
.LBB6_197:                              #   in Loop: Header=BB6_199 Depth=1
	st.w	$s5, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	ori	$a1, $zero, 2
	move	$s4, $s1
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
.LBB6_198:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit421
                                        #   in Loop: Header=BB6_199 Depth=1
	add.d	$s0, $s0, $a1
	move	$s6, $s4
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	beq	$a1, $s3, .LBB6_228
.LBB6_199:                              # %.lr.ph989.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ld.w	$a2, $s5, 72
	ld.d	$a1, $a3, 16
	addi.w	$s3, $s3, 1
	bne	$s3, $a2, .LBB6_202
# %bb.200:                              #   in Loop: Header=BB6_199 Depth=1
	beq	$a0, $a1, .LBB6_204
# %bb.201:                              #   in Loop: Header=BB6_199 Depth=1
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	ori	$a1, $zero, 1
	move	$s4, $s6
	b	.LBB6_198
	.p2align	4, , 16
.LBB6_202:                              #   in Loop: Header=BB6_199 Depth=1
	beq	$a0, $a1, .LBB6_211
# %bb.203:                              #   in Loop: Header=BB6_199 Depth=1
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$s1, $s6
	addi.d	$s5, $s0, 1
	bne	$a0, $a1, .LBB6_197
	b	.LBB6_218
.LBB6_204:                              #   in Loop: Header=BB6_199 Depth=1
	sub.d	$s1, $a0, $s6
	beq	$s1, $s7, .LBB6_499
# %bb.205:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i414
                                        #   in Loop: Header=BB6_199 Depth=1
	srai.d	$a0, $s1, 2
	sltu	$a1, $s8, $a0
	masknez	$a2, $s8, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s2, $a1, $a0
	slli.d	$a0, $s2, 2
.Ltmp121:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp122:
# %bb.206:                              # %.noexc420
                                        #   in Loop: Header=BB6_199 Depth=1
	move	$s4, $a0
	stx.w	$s0, $a0, $s1
	blt	$s1, $s8, .LBB6_208
# %bb.207:                              #   in Loop: Header=BB6_199 Depth=1
	move	$a0, $s4
	move	$a1, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_208:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i416
                                        #   in Loop: Header=BB6_199 Depth=1
	beqz	$s6, .LBB6_210
# %bb.209:                              #   in Loop: Header=BB6_199 Depth=1
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_210:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i418
                                        #   in Loop: Header=BB6_199 Depth=1
	add.d	$a0, $s4, $s1
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.d	$s4, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s2, $s4, 2
	st.d	$a1, $a3, 16
	ori	$a1, $zero, 1
	b	.LBB6_198
.LBB6_211:                              #   in Loop: Header=BB6_199 Depth=1
	sub.d	$s4, $a0, $s6
	beq	$s4, $s7, .LBB6_505
# %bb.212:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i423
                                        #   in Loop: Header=BB6_199 Depth=1
	srai.d	$a0, $s4, 2
	sltu	$a1, $s8, $a0
	masknez	$a2, $s8, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s2, $a1, $a0
	slli.d	$a0, $s2, 2
.Ltmp109:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp110:
# %bb.213:                              # %.noexc429
                                        #   in Loop: Header=BB6_199 Depth=1
	move	$s1, $a0
	stx.w	$s0, $a0, $s4
	blt	$s4, $s8, .LBB6_215
# %bb.214:                              #   in Loop: Header=BB6_199 Depth=1
	move	$a0, $s1
	move	$a1, $s6
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_215:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i425
                                        #   in Loop: Header=BB6_199 Depth=1
	beqz	$s6, .LBB6_217
# %bb.216:                              #   in Loop: Header=BB6_199 Depth=1
	move	$a0, $s6
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_217:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i427
                                        #   in Loop: Header=BB6_199 Depth=1
	add.d	$a0, $s1, $s4
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.d	$s1, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s2, $s1, 2
	st.d	$a1, $a3, 16
	addi.d	$s5, $s0, 1
	bne	$a0, $a1, .LBB6_197
.LBB6_218:                              #   in Loop: Header=BB6_199 Depth=1
	sub.d	$s6, $a1, $s1
	beq	$s6, $s7, .LBB6_503
# %bb.219:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i432
                                        #   in Loop: Header=BB6_199 Depth=1
	srai.d	$a0, $s6, 2
	sltu	$a1, $s8, $a0
	masknez	$a2, $s8, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s2, $a1, $a0
	slli.d	$a0, $s2, 2
.Ltmp112:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp113:
# %bb.220:                              # %.noexc438
                                        #   in Loop: Header=BB6_199 Depth=1
	move	$s4, $a0
	stx.w	$s5, $a0, $s6
	blt	$s6, $s8, .LBB6_222
# %bb.221:                              #   in Loop: Header=BB6_199 Depth=1
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_222:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i434
                                        #   in Loop: Header=BB6_199 Depth=1
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	beqz	$s1, .LBB6_224
# %bb.223:                              #   in Loop: Header=BB6_199 Depth=1
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_224:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i436
                                        #   in Loop: Header=BB6_199 Depth=1
	add.d	$a0, $s4, $s6
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.d	$s4, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s2, $s4, 2
	st.d	$a1, $a3, 16
	ori	$a1, $zero, 2
	b	.LBB6_198
.LBB6_225:
	ld.d	$a1, $a3, 16
	beq	$a0, $a1, .LBB6_452
# %bb.226:
	st.w	$zero, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	ori	$s0, $zero, 1
	move	$s6, $s4
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	bnez	$a1, .LBB6_196
.LBB6_227:
	move	$s4, $s6
.LBB6_228:                              # %._crit_edge990
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a4, $sp, 192                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 176                   # 8-byte Folded Reload
	sub.d	$s0, $a4, $a5
	beq	$a0, $a1, .LBB6_230
# %bb.229:
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	b	.LBB6_237
.LBB6_230:
	ld.d	$s1, $a2, 0
	sub.d	$s4, $a0, $s1
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	beq	$s4, $a0, .LBB6_523
# %bb.231:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i405
	srai.d	$a0, $s4, 2
	ori	$s3, $zero, 1
	sltu	$a1, $s3, $a0
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
.Ltmp127:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp128:
# %bb.232:                              # %.noexc411
	move	$s2, $a0
	stx.w	$s0, $a0, $s4
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	blt	$s4, $s3, .LBB6_234
# %bb.233:
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_234:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i407
	add.d	$s0, $s2, $s4
	beqz	$s1, .LBB6_236
# %bb.235:
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_236:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i409
	addi.d	$a0, $s0, 4
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$s2, $a1, 0
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s4, $a3, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $a1, 16
.LBB6_237:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit412
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a3, 8
	ld.d	$a0, $a4, 8
	ld.d	$a2, $a4, 16
	srli.d	$a3, $a5, 2
	sub.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 2
	sub.d	$s0, $a1, $a3
	beq	$a0, $a2, .LBB6_239
# %bb.238:
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	b	.LBB6_246
.LBB6_239:
	ld.d	$s1, $a4, 0
	sub.d	$s4, $a0, $s1
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s4, $a0, .LBB6_525
# %bb.240:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i441
	srai.d	$a0, $s4, 2
	ori	$s3, $zero, 1
	sltu	$a1, $s3, $a0
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s2, $a1, $a0
	slli.d	$a0, $s2, 2
.Ltmp129:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp130:
# %bb.241:                              # %.noexc447
	move	$fp, $a0
	stx.w	$s0, $a0, $s4
	blt	$s4, $s3, .LBB6_243
# %bb.242:
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_243:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i443
	add.d	$s0, $fp, $s4
	beqz	$s1, .LBB6_245
# %bb.244:
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_245:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i445
	addi.d	$a0, $s0, 4
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$fp, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s2, $fp, 2
	st.d	$a0, $a1, 16
.LBB6_246:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit448
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
.LBB6_247:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit448
	ld.w	$a0, $s5, 64
	beqz	$a0, .LBB6_303
# %bb.248:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 8
	ld.d	$s4, $a3, 0
	ld.w	$a2, $a1, 0
	sub.d	$s2, $a0, $s4
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$s2, $sp, 160                   # 8-byte Folded Spill
	st.d	$a2, $sp, 176                   # 8-byte Folded Spill
	beqz	$a1, .LBB6_284
# %bb.249:                              # %.lr.ph994.preheader
	ld.w	$a1, $s5, 68
	beqz	$a1, .LBB6_281
# %bb.250:
	move	$s6, $s4
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	beqz	$a1, .LBB6_283
.LBB6_251:                              # %.lr.ph994.peel.next.preheader
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	bstrpick.d	$s0, $a1, 31, 0
	ori	$s2, $zero, 1
	ori	$s3, $zero, 4
	addi.w	$a1, $zero, -4
	lu52i.d	$a1, $a1, 2047
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$s8, $a1, 511
	ori	$fp, $zero, 1
	b	.LBB6_255
	.p2align	4, , 16
.LBB6_252:                              #   in Loop: Header=BB6_255 Depth=1
	beq	$a0, $a1, .LBB6_259
# %bb.253:                              #   in Loop: Header=BB6_255 Depth=1
	st.w	$s5, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$s4, $s6
.LBB6_254:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit466
                                        #   in Loop: Header=BB6_255 Depth=1
	addi.d	$fp, $fp, 1
	addi.d	$s3, $s3, 4
	move	$s6, $s4
	beq	$s0, $fp, .LBB6_284
.LBB6_255:                              # %.lr.ph994.peel.next
                                        # =>This Inner Loop Header: Depth=1
	ldx.w	$s5, $s7, $s3
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.wu	$a2, $a1, 76
	ld.d	$a1, $a3, 16
	beq	$fp, $a2, .LBB6_252
# %bb.256:                              #   in Loop: Header=BB6_255 Depth=1
	beq	$a0, $a1, .LBB6_267
# %bb.257:                              #   in Loop: Header=BB6_255 Depth=1
	st.w	$s5, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$s1, $s6
	addi.d	$s7, $s5, 1
	beq	$a0, $a1, .LBB6_274
.LBB6_258:                              #   in Loop: Header=BB6_255 Depth=1
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$s4, $s1
	b	.LBB6_266
.LBB6_259:                              #   in Loop: Header=BB6_255 Depth=1
	sub.d	$s1, $a0, $s6
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beq	$s1, $a0, .LBB6_501
# %bb.260:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i459
                                        #   in Loop: Header=BB6_255 Depth=1
	srai.d	$a0, $s1, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s8
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s8, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s8, $a1
	or	$s7, $a1, $a0
	slli.d	$a0, $s7, 2
.Ltmp152:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp153:
# %bb.261:                              # %.noexc465
                                        #   in Loop: Header=BB6_255 Depth=1
	move	$s4, $a0
	stx.w	$s5, $a0, $s1
	blt	$s1, $s2, .LBB6_263
# %bb.262:                              #   in Loop: Header=BB6_255 Depth=1
	move	$a0, $s4
	move	$a1, $s6
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_263:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i461
                                        #   in Loop: Header=BB6_255 Depth=1
	beqz	$s6, .LBB6_265
# %bb.264:                              #   in Loop: Header=BB6_255 Depth=1
	move	$a0, $s6
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_265:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i463
                                        #   in Loop: Header=BB6_255 Depth=1
	add.d	$a0, $s4, $s1
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.d	$s4, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s7, $s4, 2
	st.d	$a1, $a3, 16
.LBB6_266:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit466
                                        #   in Loop: Header=BB6_255 Depth=1
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	b	.LBB6_254
.LBB6_267:                              #   in Loop: Header=BB6_255 Depth=1
	sub.d	$s4, $a0, $s6
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beq	$s4, $a0, .LBB6_509
# %bb.268:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i468
                                        #   in Loop: Header=BB6_255 Depth=1
	srai.d	$a0, $s4, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s8
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s8, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s8, $a1
	or	$s7, $a1, $a0
	slli.d	$a0, $s7, 2
.Ltmp140:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp141:
# %bb.269:                              # %.noexc474
                                        #   in Loop: Header=BB6_255 Depth=1
	move	$s1, $a0
	stx.w	$s5, $a0, $s4
	blt	$s4, $s2, .LBB6_271
# %bb.270:                              #   in Loop: Header=BB6_255 Depth=1
	move	$a0, $s1
	move	$a1, $s6
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_271:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i470
                                        #   in Loop: Header=BB6_255 Depth=1
	beqz	$s6, .LBB6_273
# %bb.272:                              #   in Loop: Header=BB6_255 Depth=1
	move	$a0, $s6
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_273:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i472
                                        #   in Loop: Header=BB6_255 Depth=1
	add.d	$a0, $s1, $s4
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.d	$s1, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s7, $s1, 2
	st.d	$a1, $a3, 16
	addi.d	$s7, $s5, 1
	bne	$a0, $a1, .LBB6_258
.LBB6_274:                              #   in Loop: Header=BB6_255 Depth=1
	sub.d	$s6, $a1, $s1
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beq	$s6, $a0, .LBB6_507
# %bb.275:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i477
                                        #   in Loop: Header=BB6_255 Depth=1
	srai.d	$a0, $s6, 2
	sltu	$a1, $s2, $a0
	masknez	$a2, $s2, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $s8
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $s8, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $s8, $a1
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
.Ltmp143:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp144:
# %bb.276:                              # %.noexc483
                                        #   in Loop: Header=BB6_255 Depth=1
	move	$s4, $a0
	stx.w	$s7, $a0, $s6
	blt	$s6, $s2, .LBB6_278
# %bb.277:                              #   in Loop: Header=BB6_255 Depth=1
	move	$a0, $s4
	move	$a1, $s1
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_278:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i479
                                        #   in Loop: Header=BB6_255 Depth=1
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	beqz	$s1, .LBB6_280
# %bb.279:                              #   in Loop: Header=BB6_255 Depth=1
	move	$a0, $s1
	move	$a1, $s6
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_280:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i481
                                        #   in Loop: Header=BB6_255 Depth=1
	add.d	$a0, $s4, $s6
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.d	$s4, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s5, $s4, 2
	st.d	$a1, $a3, 16
	b	.LBB6_254
.LBB6_281:
	ld.d	$a1, $a3, 16
	ld.w	$fp, $s7, 0
	beq	$a0, $a1, .LBB6_459
# %bb.282:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$s6, $s4
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	bnez	$a1, .LBB6_251
.LBB6_283:
	move	$s4, $s6
.LBB6_284:                              # %._crit_edge995
	ld.d	$a2, $sp, 56                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	addi.d	$s0, $a4, -1
	beq	$a0, $a1, .LBB6_286
# %bb.285:
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	b	.LBB6_293
.LBB6_286:
	ld.d	$s1, $a2, 0
	sub.d	$s4, $a0, $s1
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	beq	$s4, $a0, .LBB6_527
# %bb.287:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i450
	srai.d	$a0, $s4, 2
	ori	$s3, $zero, 1
	sltu	$a1, $s3, $a0
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
.Ltmp158:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp159:
# %bb.288:                              # %.noexc456
	move	$s2, $a0
	stx.w	$s0, $a0, $s4
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	blt	$s4, $s3, .LBB6_290
# %bb.289:
	move	$a0, $s2
	move	$a1, $s1
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_290:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i452
	add.d	$s0, $s2, $s4
	beqz	$s1, .LBB6_292
# %bb.291:
	move	$a0, $s1
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_292:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i454
	addi.d	$a0, $s0, 4
	ld.d	$a1, $sp, 56                    # 8-byte Folded Reload
	st.d	$s2, $a1, 0
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	ld.d	$s4, $a3, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $a1, 16
.LBB6_293:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit457
	ld.d	$a4, $sp, 64                    # 8-byte Folded Reload
	ld.d	$a5, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a1, $a3, 8
	ld.d	$a0, $a4, 8
	ld.d	$a2, $a4, 16
	srli.d	$a3, $a5, 2
	sub.d	$a1, $a1, $s4
	srli.d	$a1, $a1, 2
	sub.d	$s0, $a1, $a3
	beq	$a0, $a2, .LBB6_295
# %bb.294:
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	b	.LBB6_302
.LBB6_295:
	ld.d	$s1, $a4, 0
	sub.d	$s2, $a0, $s1
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s2, $a0, .LBB6_529
# %bb.296:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i486
	srai.d	$a0, $s2, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
.Ltmp160:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp161:
# %bb.297:                              # %.noexc492
	move	$fp, $a0
	stx.w	$s0, $a0, $s2
	blt	$s2, $s4, .LBB6_299
# %bb.298:
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_299:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i488
	add.d	$s0, $fp, $s2
	beqz	$s1, .LBB6_301
# %bb.300:
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_301:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i490
	addi.d	$a0, $s0, 4
	ld.d	$a1, $sp, 64                    # 8-byte Folded Reload
	st.d	$fp, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s3, $fp, 2
	st.d	$a0, $a1, 16
.LBB6_302:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit493
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
.LBB6_303:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit493
	ld.w	$a0, $s5, 56
	ld.w	$a1, $s5, 64
	ld.d	$a2, $sp, 16                    # 8-byte Folded Reload
	ld.d	$a4, $sp, 8                     # 8-byte Folded Reload
	sub.d	$a2, $a4, $a2
	addi.w	$a0, $a0, -1
	srli.d	$a2, $a2, 4
	st.d	$a2, $sp, 160                   # 8-byte Folded Spill
	beq	$a1, $a0, .LBB6_352
# %bb.304:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a1, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a0, $a3, 8
	ld.d	$s2, $a3, 0
	ld.w	$a2, $a1, 0
	sub.d	$s1, $a0, $s2
	ld.d	$a1, $sp, 96                    # 8-byte Folded Reload
	st.d	$s1, $sp, 136                   # 8-byte Folded Spill
	st.d	$a2, $sp, 144                   # 8-byte Folded Spill
	beqz	$a1, .LBB6_341
# %bb.305:                              # %.lr.ph1000.preheader
	ld.w	$a1, $s5, 68
	beqz	$a1, .LBB6_337
# %bb.306:
	move	$s3, $s2
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	beqz	$a1, .LBB6_340
.LBB6_307:                              # %.lr.ph1000.peel.next
	bstrpick.d	$s0, $s4, 31, 0
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	addi.d	$s8, $a1, -1
	ori	$fp, $zero, 1
	ori	$s7, $zero, 8
	addi.w	$a1, $zero, -4
	lu52i.d	$a1, $a1, 2047
	st.d	$a1, $sp, 192                   # 8-byte Folded Spill
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a1, $a1, 511
	st.d	$a1, $sp, 176                   # 8-byte Folded Spill
	ori	$s1, $zero, 1
	st.d	$s0, $sp, 152                   # 8-byte Folded Spill
	b	.LBB6_310
	.p2align	4, , 16
.LBB6_308:                              #   in Loop: Header=BB6_310 Depth=1
	st.w	$s6, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$s2, $s4
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
.LBB6_309:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit511
                                        #   in Loop: Header=BB6_310 Depth=1
	addi.d	$s1, $s1, 1
	addi.d	$s7, $s7, 4
	move	$s3, $s2
	beq	$s0, $s1, .LBB6_341
.LBB6_310:                              # =>This Inner Loop Header: Depth=1
	ld.wu	$a1, $s5, 76
	bne	$s1, $a1, .LBB6_313
# %bb.311:                              # %.thread
                                        #   in Loop: Header=BB6_310 Depth=1
	ld.d	$a1, $a3, 16
	beq	$a0, $a1, .LBB6_315
# %bb.312:                              #   in Loop: Header=BB6_310 Depth=1
	st.w	$s8, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$s2, $s3
	b	.LBB6_309
	.p2align	4, , 16
.LBB6_313:                              #   in Loop: Header=BB6_310 Depth=1
	ld.d	$a1, $sp, 112                   # 8-byte Folded Reload
	ldx.w	$s5, $a1, $s7
	ld.d	$a1, $a3, 16
	addi.d	$s6, $s5, -2
	beq	$a0, $a1, .LBB6_322
# %bb.314:                              #   in Loop: Header=BB6_310 Depth=1
	st.w	$s6, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$s4, $s3
	addi.d	$s6, $s5, -1
	bne	$a0, $a1, .LBB6_308
	b	.LBB6_329
.LBB6_315:                              #   in Loop: Header=BB6_310 Depth=1
	sub.d	$s4, $a0, $s3
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beq	$s4, $a0, .LBB6_511
# %bb.316:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i504
                                        #   in Loop: Header=BB6_310 Depth=1
	srai.d	$a0, $s4, 2
	sltu	$a1, $fp, $a0
	masknez	$a2, $fp, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
.Ltmp183:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp184:
# %bb.317:                              # %.noexc510
                                        #   in Loop: Header=BB6_310 Depth=1
	move	$s2, $a0
	stx.w	$s8, $a0, $s4
	blt	$s4, $fp, .LBB6_319
# %bb.318:                              #   in Loop: Header=BB6_310 Depth=1
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_319:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i506
                                        #   in Loop: Header=BB6_310 Depth=1
	beqz	$s3, .LBB6_321
# %bb.320:                              #   in Loop: Header=BB6_310 Depth=1
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_321:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i508
                                        #   in Loop: Header=BB6_310 Depth=1
	add.d	$a0, $s2, $s4
	b	.LBB6_336
.LBB6_322:                              #   in Loop: Header=BB6_310 Depth=1
	sub.d	$s2, $a0, $s3
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beq	$s2, $a0, .LBB6_517
# %bb.323:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i513
                                        #   in Loop: Header=BB6_310 Depth=1
	move	$s0, $s8
	srai.d	$a0, $s2, 2
	ori	$fp, $zero, 1
	sltu	$a1, $fp, $a0
	masknez	$a2, $fp, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s8, $a1, $a0
	slli.d	$a0, $s8, 2
.Ltmp171:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp172:
# %bb.324:                              # %.noexc519
                                        #   in Loop: Header=BB6_310 Depth=1
	move	$s4, $a0
	stx.w	$s6, $a0, $s2
	blt	$s2, $fp, .LBB6_326
# %bb.325:                              #   in Loop: Header=BB6_310 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_326:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i515
                                        #   in Loop: Header=BB6_310 Depth=1
	beqz	$s3, .LBB6_328
# %bb.327:                              #   in Loop: Header=BB6_310 Depth=1
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_328:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i517
                                        #   in Loop: Header=BB6_310 Depth=1
	add.d	$a0, $s4, $s2
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	st.d	$s4, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s8, $s4, 2
	st.d	$a1, $a3, 16
	move	$s8, $s0
	ld.d	$s0, $sp, 152                   # 8-byte Folded Reload
	ori	$fp, $zero, 1
	addi.d	$s6, $s5, -1
	bne	$a0, $a1, .LBB6_308
.LBB6_329:                              #   in Loop: Header=BB6_310 Depth=1
	sub.d	$s3, $a1, $s4
	ld.d	$a0, $sp, 192                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB6_515
# %bb.330:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i522
                                        #   in Loop: Header=BB6_310 Depth=1
	srai.d	$a0, $s3, 2
	sltu	$a1, $fp, $a0
	masknez	$a2, $fp, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a3, $sp, 176                   # 8-byte Folded Reload
	sltu	$a2, $a0, $a3
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $a3, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a3, $a1
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
.Ltmp174:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp175:
# %bb.331:                              # %.noexc528
                                        #   in Loop: Header=BB6_310 Depth=1
	move	$s2, $a0
	stx.w	$s6, $a0, $s3
	blt	$s3, $fp, .LBB6_333
# %bb.332:                              #   in Loop: Header=BB6_310 Depth=1
	move	$a0, $s2
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_333:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i524
                                        #   in Loop: Header=BB6_310 Depth=1
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	beqz	$s4, .LBB6_335
# %bb.334:                              #   in Loop: Header=BB6_310 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_335:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i526
                                        #   in Loop: Header=BB6_310 Depth=1
	add.d	$a0, $s2, $s3
.LBB6_336:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit511
                                        #   in Loop: Header=BB6_310 Depth=1
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	st.d	$s2, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s5, $s2, 2
	st.d	$a1, $a3, 16
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	b	.LBB6_309
.LBB6_337:
	ld.w	$a1, $s5, 76
	beqz	$a1, .LBB6_466
# %bb.338:
	ld.w	$a1, $s7, 4
	ld.d	$a2, $a3, 16
	addi.d	$fp, $a1, -1
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	beq	$a0, $a2, .LBB6_467
.LBB6_339:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$s3, $s2
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	bnez	$a1, .LBB6_307
.LBB6_340:
	move	$s2, $s3
.LBB6_341:                              # %._crit_edge1001
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a4, $sp, 144                   # 8-byte Folded Reload
	addi.d	$s0, $a4, 1
	beq	$a0, $a1, .LBB6_343
# %bb.342:
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	b	.LBB6_350
.LBB6_343:
	ld.d	$s2, $a2, 0
	sub.d	$s3, $a0, $s2
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s3, $a0, .LBB6_539
# %bb.344:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i495
	srai.d	$a0, $s3, 2
	ori	$s1, $zero, 1
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
.Ltmp189:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp190:
# %bb.345:                              # %.noexc501
	move	$s4, $a0
	stx.w	$s0, $a0, $s3
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	blt	$s3, $s1, .LBB6_347
# %bb.346:
	move	$a0, $s4
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_347:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i497
	add.d	$s0, $s4, $s3
	beqz	$s2, .LBB6_349
# %bb.348:
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_349:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i499
	addi.d	$a0, $s0, 4
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$s4, $a1, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $a3, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s4, 2
	st.d	$a0, $a1, 16
.LBB6_350:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit502
	ld.d	$a5, $sp, 136                   # 8-byte Folded Reload
	ld.d	$a1, $a3, 8
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 8
	ld.d	$a2, $a4, 16
	srli.d	$a3, $a5, 2
	sub.d	$a1, $a1, $s2
	srli.d	$a1, $a1, 2
	sub.d	$s0, $a1, $a3
	beq	$a0, $a2, .LBB6_385
# %bb.351:
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
.LBB6_352:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit538
	ld.w	$a0, $s5, 60
	ld.w	$a1, $s5, 68
	addi.w	$a0, $a0, -1
	beq	$a1, $a0, .LBB6_392
.LBB6_353:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a0, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.w	$a4, $a0, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 8
	ld.d	$s2, $a3, 0
	ld.w	$a5, $s5, 56
	sub.d	$s1, $a0, $s2
	st.d	$s1, $sp, 192                   # 8-byte Folded Spill
	st.d	$a4, $sp, 176                   # 8-byte Folded Spill
	st.d	$a5, $sp, 152                   # 8-byte Folded Spill
	bltz	$s6, .LBB6_396
# %bb.354:                              # %.lr.ph1006.preheader
	ld.w	$a1, $s5, 76
	slli.d	$a1, $a1, 2
	ld.w	$a2, $s5, 64
	ldx.w	$fp, $s7, $a1
	beqz	$a2, .LBB6_393
# %bb.355:
	move	$s3, $s2
	beqz	$s6, .LBB6_395
.LBB6_356:                              # %.lr.ph1006.peel.next
	move	$s6, $zero
	addi.d	$s7, $fp, 1
	addi.w	$a1, $zero, -4
	lu52i.d	$s8, $a1, 2047
	ori	$s5, $zero, 1
	ld.d	$a1, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$fp, $a1, 511
	b	.LBB6_359
	.p2align	4, , 16
.LBB6_357:                              #   in Loop: Header=BB6_359 Depth=1
	st.w	$s1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	ori	$a1, $zero, 2
	move	$s2, $s4
.LBB6_358:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit556
                                        #   in Loop: Header=BB6_359 Depth=1
	add.d	$s7, $s7, $a1
	move	$s3, $s2
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	beq	$a1, $s6, .LBB6_396
.LBB6_359:                              # =>This Inner Loop Header: Depth=1
	ld.d	$a1, $sp, 168                   # 8-byte Folded Reload
	ld.w	$a2, $a1, 72
	ld.d	$a1, $a3, 16
	addi.w	$s6, $s6, 1
	bne	$s6, $a2, .LBB6_362
# %bb.360:                              #   in Loop: Header=BB6_359 Depth=1
	beq	$a0, $a1, .LBB6_364
# %bb.361:                              #   in Loop: Header=BB6_359 Depth=1
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	ori	$a1, $zero, 1
	move	$s2, $s3
	b	.LBB6_358
	.p2align	4, , 16
.LBB6_362:                              #   in Loop: Header=BB6_359 Depth=1
	beq	$a0, $a1, .LBB6_371
# %bb.363:                              #   in Loop: Header=BB6_359 Depth=1
	st.w	$s7, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$s4, $s3
	addi.d	$s1, $s7, 1
	bne	$a0, $a1, .LBB6_357
	b	.LBB6_378
.LBB6_364:                              #   in Loop: Header=BB6_359 Depth=1
	sub.d	$s4, $a0, $s3
	beq	$s4, $s8, .LBB6_513
# %bb.365:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i549
                                        #   in Loop: Header=BB6_359 Depth=1
	srai.d	$a0, $s4, 2
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s0, $a1, $a0
	slli.d	$a0, $s0, 2
.Ltmp214:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp215:
# %bb.366:                              # %.noexc555
                                        #   in Loop: Header=BB6_359 Depth=1
	move	$s2, $a0
	stx.w	$s7, $a0, $s4
	blt	$s4, $s5, .LBB6_368
# %bb.367:                              #   in Loop: Header=BB6_359 Depth=1
	move	$a0, $s2
	move	$a1, $s3
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_368:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i551
                                        #   in Loop: Header=BB6_359 Depth=1
	beqz	$s3, .LBB6_370
# %bb.369:                              #   in Loop: Header=BB6_359 Depth=1
	move	$a0, $s3
	move	$a1, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_370:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i553
                                        #   in Loop: Header=BB6_359 Depth=1
	add.d	$a0, $s2, $s4
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	st.d	$s2, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s0, $s2, 2
	st.d	$a1, $a3, 16
	ori	$a1, $zero, 1
	b	.LBB6_358
.LBB6_371:                              #   in Loop: Header=BB6_359 Depth=1
	sub.d	$s2, $a0, $s3
	beq	$s2, $s8, .LBB6_521
# %bb.372:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i558
                                        #   in Loop: Header=BB6_359 Depth=1
	srai.d	$a0, $s2, 2
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s0, $a1, $a0
	slli.d	$a0, $s0, 2
.Ltmp202:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp203:
# %bb.373:                              # %.noexc564
                                        #   in Loop: Header=BB6_359 Depth=1
	move	$s4, $a0
	stx.w	$s7, $a0, $s2
	blt	$s2, $s5, .LBB6_375
# %bb.374:                              #   in Loop: Header=BB6_359 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_375:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i560
                                        #   in Loop: Header=BB6_359 Depth=1
	beqz	$s3, .LBB6_377
# %bb.376:                              #   in Loop: Header=BB6_359 Depth=1
	move	$a0, $s3
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_377:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i562
                                        #   in Loop: Header=BB6_359 Depth=1
	add.d	$a0, $s4, $s2
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	st.d	$s4, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s0, $s4, 2
	st.d	$a1, $a3, 16
	addi.d	$s1, $s7, 1
	bne	$a0, $a1, .LBB6_357
.LBB6_378:                              #   in Loop: Header=BB6_359 Depth=1
	sub.d	$s3, $a1, $s4
	beq	$s3, $s8, .LBB6_519
# %bb.379:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i567
                                        #   in Loop: Header=BB6_359 Depth=1
	srai.d	$a0, $s3, 2
	sltu	$a1, $s5, $a0
	masknez	$a2, $s5, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	sltu	$a2, $a0, $fp
	maskeqz	$a0, $a0, $a2
	masknez	$a2, $fp, $a2
	or	$a0, $a0, $a2
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $fp, $a1
	or	$s0, $a1, $a0
	slli.d	$a0, $s0, 2
.Ltmp205:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp206:
# %bb.380:                              # %.noexc573
                                        #   in Loop: Header=BB6_359 Depth=1
	move	$s2, $a0
	stx.w	$s1, $a0, $s3
	blt	$s3, $s5, .LBB6_382
# %bb.381:                              #   in Loop: Header=BB6_359 Depth=1
	move	$a0, $s2
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_382:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i569
                                        #   in Loop: Header=BB6_359 Depth=1
	beqz	$s4, .LBB6_384
# %bb.383:                              #   in Loop: Header=BB6_359 Depth=1
	move	$a0, $s4
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_384:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i571
                                        #   in Loop: Header=BB6_359 Depth=1
	add.d	$a0, $s2, $s3
	addi.d	$a0, $a0, 4
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	st.d	$s2, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s0, $s2, 2
	st.d	$a1, $a3, 16
	ori	$a1, $zero, 2
	b	.LBB6_358
.LBB6_385:
	ld.d	$s1, $a4, 0
	sub.d	$s2, $a0, $s1
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s2, $a0, .LBB6_541
# %bb.386:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i531
	srai.d	$a0, $s2, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
.Ltmp191:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp192:
# %bb.387:                              # %.noexc537
	move	$fp, $a0
	stx.w	$s0, $a0, $s2
	blt	$s2, $s4, .LBB6_389
# %bb.388:
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_389:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i533
	add.d	$s0, $fp, $s2
	beqz	$s1, .LBB6_391
# %bb.390:
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_391:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i535
	addi.d	$a0, $s0, 4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$fp, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s3, $fp, 2
	st.d	$a0, $a1, 16
	ld.w	$a0, $s5, 60
	ld.w	$a1, $s5, 68
	addi.w	$a0, $a0, -1
	bne	$a1, $a0, .LBB6_353
.LBB6_392:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit583
	ld.w	$s2, $s5, 56
	ld.w	$a0, $s5, 64
	addi.w	$a1, $s2, -1
	beq	$a0, $a1, .LBB6_435
	b	.LBB6_414
.LBB6_393:
	ld.d	$a1, $a3, 16
	beq	$a0, $a1, .LBB6_474
# %bb.394:
	st.w	$fp, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	move	$s3, $s2
	bnez	$s6, .LBB6_356
.LBB6_395:
	move	$s2, $s3
.LBB6_396:                              # %._crit_edge1007
	ld.d	$a2, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	ld.d	$a4, $sp, 176                   # 8-byte Folded Reload
	ld.d	$a5, $sp, 152                   # 8-byte Folded Reload
	add.d	$s0, $a5, $a4
	beq	$a0, $a1, .LBB6_398
# %bb.397:
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 192                   # 8-byte Folded Reload
	b	.LBB6_405
.LBB6_398:
	ld.d	$s2, $a2, 0
	sub.d	$s3, $a0, $s2
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	ld.d	$s5, $sp, 168                   # 8-byte Folded Reload
	ld.d	$s6, $sp, 192                   # 8-byte Folded Reload
	beq	$s3, $a0, .LBB6_543
# %bb.399:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i540
	srai.d	$a0, $s3, 2
	ori	$s1, $zero, 1
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
.Ltmp220:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp221:
# %bb.400:                              # %.noexc546
	move	$s4, $a0
	stx.w	$s0, $a0, $s3
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	blt	$s3, $s1, .LBB6_402
# %bb.401:
	move	$a0, $s4
	move	$a1, $s2
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_402:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i542
	add.d	$s0, $s4, $s3
	beqz	$s2, .LBB6_404
# %bb.403:
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_404:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i544
	addi.d	$a0, $s0, 4
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$s4, $a1, 0
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$s2, $a3, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s4, 2
	st.d	$a0, $a1, 16
.LBB6_405:                              # %_ZNSt6vectorIiSaIiEE9push_backERKi.exit547
	ld.d	$a1, $a3, 8
	ld.d	$a4, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a4, 8
	ld.d	$a2, $a4, 16
	srli.d	$a3, $s6, 2
	sub.d	$a1, $a1, $s2
	srli.d	$a1, $a1, 2
	sub.d	$s0, $a1, $a3
	beq	$a0, $a2, .LBB6_407
# %bb.406:
	st.w	$s0, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a4, 8
	ld.w	$s2, $s5, 56
	ld.w	$a0, $s5, 64
	addi.w	$a1, $s2, -1
	beq	$a0, $a1, .LBB6_435
	b	.LBB6_414
.LBB6_407:
	ld.d	$s1, $a4, 0
	sub.d	$s2, $a0, $s1
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s2, $a0, .LBB6_545
# %bb.408:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i576
	srai.d	$a0, $s2, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
.Ltmp222:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp223:
# %bb.409:                              # %.noexc582
	move	$fp, $a0
	stx.w	$s0, $a0, $s2
	blt	$s2, $s4, .LBB6_411
# %bb.410:
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_411:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i578
	add.d	$s0, $fp, $s2
	beqz	$s1, .LBB6_413
# %bb.412:
	move	$a0, $s1
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_413:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i580
	addi.d	$a0, $s0, 4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$fp, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s3, $fp, 2
	st.d	$a0, $a1, 16
	ld.w	$s2, $s5, 56
	ld.w	$a0, $s5, 64
	addi.w	$a1, $s2, -1
	beq	$a0, $a1, .LBB6_435
.LBB6_414:
	ld.w	$a0, $s5, 60
	ld.w	$a1, $s5, 68
	addi.w	$a0, $a0, -1
	beq	$a1, $a0, .LBB6_435
# %bb.415:
	pcalau12i	$a0, %got_pc_hi20(_ZN8Parallel4mypeE)
	ld.d	$a2, $a0, %got_pc_lo12(_ZN8Parallel4mypeE)
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	ld.d	$a1, $a3, 8
	ld.d	$a0, $a3, 16
	ld.w	$s3, $a2, 0
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	addi.d	$s4, $a2, -2
	beq	$a1, $a0, .LBB6_418
# %bb.416:
	st.w	$s4, $a1, 0
	addi.d	$a1, $a1, 4
	st.d	$a1, $a3, 8
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	addi.d	$s4, $a2, -1
	beq	$a1, $a0, .LBB6_425
.LBB6_417:
	st.w	$s4, $a1, 0
	addi.d	$a0, $a1, 4
	st.d	$a0, $a3, 8
	b	.LBB6_432
.LBB6_418:
	ld.d	$s0, $a3, 0
	sub.d	$s1, $a1, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB6_547
# %bb.419:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i585
	srai.d	$a0, $s1, 2
	ori	$s6, $zero, 1
	sltu	$a1, $s6, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
.Ltmp230:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp231:
# %bb.420:                              # %.noexc591
	move	$fp, $a0
	stx.w	$s4, $a0, $s1
	blt	$s1, $s6, .LBB6_422
# %bb.421:
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_422:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i587
	add.d	$s4, $fp, $s1
	beqz	$s0, .LBB6_424
# %bb.423:
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_424:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i589
	addi.d	$a1, $s4, 4
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	st.d	$fp, $a3, 0
	st.d	$a1, $a3, 8
	alsl.d	$a0, $s5, $fp, 2
	st.d	$a0, $a3, 16
	ld.d	$a2, $sp, 160                   # 8-byte Folded Reload
	addi.d	$s4, $a2, -1
	bne	$a1, $a0, .LBB6_417
.LBB6_425:
	ld.d	$s0, $a3, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB6_549
# %bb.426:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i594
	srai.d	$a0, $s1, 2
	ori	$s6, $zero, 1
	sltu	$a1, $s6, $a0
	masknez	$a2, $s6, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s5, $a1, $a0
	slli.d	$a0, $s5, 2
.Ltmp232:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp233:
# %bb.427:                              # %.noexc600
	move	$fp, $a0
	stx.w	$s4, $a0, $s1
	blt	$s1, $s6, .LBB6_429
# %bb.428:
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_429:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i596
	add.d	$s4, $fp, $s1
	beqz	$s0, .LBB6_431
# %bb.430:
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_431:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i598
	addi.d	$a0, $s4, 4
	ld.d	$a1, $sp, 80                    # 8-byte Folded Reload
	st.d	$fp, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s5, $fp, 2
	st.d	$a0, $a1, 16
.LBB6_432:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit601
	ld.d	$a3, $sp, 40                    # 8-byte Folded Reload
	ld.d	$a0, $a3, 8
	ld.d	$a1, $a3, 16
	add.d	$a2, $s2, $s3
	addi.d	$s2, $a2, 1
	beq	$a0, $a1, .LBB6_437
# %bb.433:
	st.w	$s2, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a3, 8
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	beq	$a0, $a1, .LBB6_444
.LBB6_434:
	ori	$a1, $zero, 2
	st.w	$a1, $a0, 0
	addi.d	$a0, $a0, 4
	st.d	$a0, $a2, 8
.LBB6_435:                              # %_ZNSt6vectorIiSaIiEE9push_backEOi.exit619
	beqz	$s7, .LBB6_451
.LBB6_436:
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s7
	move	$a0, $s7
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
	ld.d	$s0, $a3, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB6_551
# %bb.438:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i603
	srai.d	$a0, $s1, 2
	ori	$s4, $zero, 1
	sltu	$a1, $s4, $a0
	masknez	$a2, $s4, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s3, $a1, $a0
	slli.d	$a0, $s3, 2
.Ltmp234:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp235:
# %bb.439:                              # %.noexc609
	move	$fp, $a0
	stx.w	$s2, $a0, $s1
	blt	$s1, $s4, .LBB6_441
# %bb.440:
	move	$a0, $fp
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_441:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i605
	add.d	$s2, $fp, $s1
	beqz	$s0, .LBB6_443
# %bb.442:
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_443:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJRKiEEEvDpOT_.exit.i607
	addi.d	$a0, $s2, 4
	ld.d	$a1, $sp, 40                    # 8-byte Folded Reload
	st.d	$fp, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $s3, $fp, 2
	st.d	$a0, $a1, 16
	ld.d	$a2, $sp, 32                    # 8-byte Folded Reload
	ld.d	$a0, $a2, 8
	ld.d	$a1, $a2, 16
	bne	$a0, $a1, .LBB6_434
.LBB6_444:
	ld.d	$s0, $a2, 0
	sub.d	$s1, $a0, $s0
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB6_553
# %bb.445:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i612
	srai.d	$a0, $s1, 2
	ori	$s3, $zero, 1
	sltu	$a1, $s3, $a0
	masknez	$a2, $s3, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
.Ltmp236:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp237:
# %bb.446:                              # %.noexc618
	move	$s2, $a0
	ori	$a0, $zero, 2
	stx.w	$a0, $s2, $s1
	blt	$s1, $s3, .LBB6_448
# %bb.447:
	move	$a0, $s2
	move	$a1, $s0
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_448:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i614
	add.d	$s3, $s2, $s1
	beqz	$s0, .LBB6_450
# %bb.449:
	move	$a0, $s0
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_450:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i616
	addi.d	$a0, $s3, 4
	ld.d	$a1, $sp, 32                    # 8-byte Folded Reload
	st.d	$s2, $a1, 0
	st.d	$a0, $a1, 8
	alsl.d	$a0, $fp, $s2, 2
	st.d	$a0, $a1, 16
	bnez	$s7, .LBB6_436
.LBB6_451:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit621
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
.LBB6_452:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB6_499
# %bb.453:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i414.peel
	move	$a1, $s1
	srai.d	$a0, $a1, 2
	ori	$s0, $zero, 1
	sltu	$a1, $s0, $a0
	masknez	$a2, $s0, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$fp, $a1, $a0
	slli.d	$a0, $fp, 2
.Ltmp106:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp107:
# %bb.454:                              # %.noexc420.peel
	move	$s6, $a0
	stx.w	$zero, $a0, $s1
	blt	$s1, $s0, .LBB6_456
# %bb.455:
	move	$a0, $s6
	move	$a1, $s4
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_456:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i416.peel
	add.d	$s0, $s6, $s1
	beqz	$s4, .LBB6_458
# %bb.457:
	move	$a0, $s4
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_458:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i418.peel
	addi.d	$a0, $s0, 4
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.d	$s6, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $fp, $s6, 2
	st.d	$a1, $a3, 16
	ori	$s0, $zero, 1
	ld.d	$a1, $sp, 120                   # 8-byte Folded Reload
	bnez	$a1, .LBB6_196
	b	.LBB6_227
.LBB6_459:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s2, $a0, .LBB6_501
# %bb.460:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i459.peel
	move	$a1, $s2
	srai.d	$a0, $a1, 2
	ori	$s1, $zero, 1
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s0, $a1, $a0
	slli.d	$a0, $s0, 2
.Ltmp137:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp138:
# %bb.461:                              # %.noexc465.peel
	move	$s6, $a0
	stx.w	$fp, $a0, $s2
	blt	$s2, $s1, .LBB6_463
# %bb.462:
	move	$a0, $s6
	move	$a1, $s4
	move	$a2, $s2
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_463:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i461.peel
	add.d	$fp, $s6, $s2
	beqz	$s4, .LBB6_465
# %bb.464:
	move	$a0, $s4
	move	$a1, $s2
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_465:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i463.peel
	addi.d	$a0, $fp, 4
	ld.d	$a3, $sp, 88                    # 8-byte Folded Reload
	st.d	$s6, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s0, $s6, 2
	st.d	$a1, $a3, 16
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	bnez	$a1, .LBB6_251
	b	.LBB6_283
.LBB6_466:
	ld.d	$a1, $sp, 160                   # 8-byte Folded Reload
	ld.d	$a2, $a3, 16
	addi.d	$fp, $a1, -1
	ld.d	$s4, $sp, 96                    # 8-byte Folded Reload
	bne	$a0, $a2, .LBB6_339
.LBB6_467:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB6_511
# %bb.468:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i504.peel
	move	$s7, $s1
	srai.d	$a0, $s1, 2
	ori	$s1, $zero, 1
	sltu	$a1, $s1, $a0
	masknez	$a2, $s1, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s0, $a1, $a0
	slli.d	$a0, $s0, 2
.Ltmp168:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp169:
# %bb.469:                              # %.noexc510.peel
	move	$s3, $a0
	stx.w	$fp, $a0, $s7
	blt	$s7, $s1, .LBB6_471
# %bb.470:
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s7
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_471:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i506.peel
	add.d	$fp, $s3, $s7
	beqz	$s2, .LBB6_473
# %bb.472:
	move	$a0, $s2
	move	$a1, $s7
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_473:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i508.peel
	addi.d	$a0, $fp, 4
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	st.d	$s3, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s0, $s3, 2
	st.d	$a1, $a3, 16
	ld.d	$a1, $sp, 72                    # 8-byte Folded Reload
	bnez	$a1, .LBB6_307
	b	.LBB6_340
.LBB6_474:
	addi.w	$a0, $zero, -4
	lu52i.d	$a0, $a0, 2047
	beq	$s1, $a0, .LBB6_513
# %bb.475:                              # %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i549.peel
	move	$a1, $s1
	srai.d	$a0, $a1, 2
	ori	$s0, $zero, 1
	sltu	$a1, $s0, $a0
	masknez	$a2, $s0, $a1
	maskeqz	$a1, $a0, $a1
	or	$a1, $a1, $a2
	add.d	$a0, $a1, $a0
	sltu	$a1, $a0, $a1
	ld.d	$a2, $sp, 184                   # 8-byte Folded Reload
	lu52i.d	$a2, $a2, 511
	sltu	$a3, $a0, $a2
	maskeqz	$a0, $a0, $a3
	masknez	$a3, $a2, $a3
	or	$a0, $a0, $a3
	masknez	$a0, $a0, $a1
	maskeqz	$a1, $a2, $a1
	or	$s4, $a1, $a0
	slli.d	$a0, $s4, 2
.Ltmp199:
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
.Ltmp200:
# %bb.476:                              # %.noexc555.peel
	move	$s3, $a0
	stx.w	$fp, $a0, $s1
	ld.d	$s6, $sp, 120                   # 8-byte Folded Reload
	blt	$s1, $s0, .LBB6_478
# %bb.477:
	move	$a0, $s3
	move	$a1, $s2
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memcpy)
	jirl	$ra, $ra, 0
.LBB6_478:                              # %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i.i551.peel
	add.d	$s0, $s3, $s1
	beqz	$s2, .LBB6_480
# %bb.479:
	move	$a0, $s2
	move	$a1, $s1
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_480:                              # %_ZNSt6vectorIiSaIiEE17_M_realloc_appendIJiEEEvDpOT_.exit.i.i553.peel
	addi.d	$a0, $s0, 4
	ld.d	$a3, $sp, 80                    # 8-byte Folded Reload
	st.d	$s3, $a3, 0
	st.d	$a0, $a3, 8
	alsl.d	$a1, $s4, $s3, 2
	st.d	$a1, $a3, 16
	bnez	$s6, .LBB6_356
	b	.LBB6_395
.LBB6_481:
.Ltmp253:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp254:
# %bb.482:                              # %.noexc347
.LBB6_483:
.Ltmp250:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp251:
# %bb.484:                              # %.noexc355
.LBB6_485:
.Ltmp61:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp62:
# %bb.486:                              # %.noexc626
.LBB6_487:
.Ltmp55:
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp56:
# %bb.488:                              # %.noexc639
.LBB6_489:
.Ltmp43:
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp44:
# %bb.490:                              # %.noexc667
.LBB6_491:
.Ltmp40:
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp41:
# %bb.492:                              # %.noexc681
.LBB6_493:
.Ltmp49:
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp50:
# %bb.494:                              # %.noexc653
.LBB6_495:                              # %.invoke
.Ltmp256:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp257:
# %bb.496:                              # %.cont
.LBB6_497:
	pcalau12i	$a0, %pc_hi20(.L.str.13)
	addi.d	$a0, $a0, %pc_lo12(.L.str.13)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB6_498:                              # %.noexc
	pcalau12i	$a0, %pc_hi20(.L.str.15)
	addi.d	$a0, $a0, %pc_lo12(.L.str.15)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.LBB6_499:                              # %.loopexit1030
.Ltmp124:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp125:
# %bb.500:                              # %.noexc419
.LBB6_501:                              # %.loopexit1047
.Ltmp155:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp156:
# %bb.502:                              # %.noexc464
.LBB6_503:                              # %.loopexit1026
.Ltmp115:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp116:
# %bb.504:                              # %.noexc437
.LBB6_505:                              # %.loopexit1023
.Ltmp118:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp119:
# %bb.506:                              # %.noexc428
.LBB6_507:                              # %.loopexit1043
.Ltmp146:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp147:
# %bb.508:                              # %.noexc482
.LBB6_509:                              # %.loopexit1039
.Ltmp149:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp150:
# %bb.510:                              # %.noexc473
.LBB6_511:                              # %.loopexit1064
.Ltmp186:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp187:
# %bb.512:                              # %.noexc509
.LBB6_513:                              # %.loopexit1077
.Ltmp217:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp218:
# %bb.514:                              # %.noexc554
.LBB6_515:                              # %.loopexit1060
.Ltmp177:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp178:
# %bb.516:                              # %.noexc527
.LBB6_517:                              # %.loopexit1056
.Ltmp180:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp181:
# %bb.518:                              # %.noexc518
.LBB6_519:                              # %.loopexit1074
.Ltmp208:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp209:
# %bb.520:                              # %.noexc572
.LBB6_521:                              # %.loopexit1070
.Ltmp211:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp212:
# %bb.522:                              # %.noexc563
.LBB6_523:
.Ltmp134:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp135:
# %bb.524:                              # %.noexc410
.LBB6_525:
.Ltmp131:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp132:
# %bb.526:                              # %.noexc446
.LBB6_527:
.Ltmp165:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp166:
# %bb.528:                              # %.noexc455
.LBB6_529:
.Ltmp162:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp163:
# %bb.530:                              # %.noexc491
.LBB6_531:
.Ltmp103:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp104:
# %bb.532:                              # %.noexc381
.LBB6_533:
.Ltmp100:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp101:
# %bb.534:                              # %.noexc390
.LBB6_535:
.Ltmp97:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp98:
# %bb.536:                              # %.noexc393
.LBB6_537:
.Ltmp94:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp95:
# %bb.538:                              # %.noexc401
.LBB6_539:
.Ltmp196:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp197:
# %bb.540:                              # %.noexc500
.LBB6_541:
.Ltmp193:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp194:
# %bb.542:                              # %.noexc536
.LBB6_543:
.Ltmp227:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp228:
# %bb.544:                              # %.noexc545
.LBB6_545:
.Ltmp224:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp225:
# %bb.546:                              # %.noexc581
.LBB6_547:
.Ltmp247:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp248:
# %bb.548:                              # %.noexc590
.LBB6_549:
.Ltmp244:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp245:
# %bb.550:                              # %.noexc599
.LBB6_551:
.Ltmp241:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp242:
# %bb.552:                              # %.noexc608
.LBB6_553:
.Ltmp238:
	pcalau12i	$a0, %pc_hi20(.L.str.14)
	addi.d	$a0, $a0, %pc_lo12(.L.str.14)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Ltmp239:
# %bb.554:                              # %.noexc617
.LBB6_555:                              # %.loopexit876.loopexit.split-lp
.Ltmp201:
	b	.LBB6_611
.LBB6_556:                              # %.loopexit891.loopexit.split-lp
.Ltmp170:
	b	.LBB6_617
.LBB6_557:                              # %.loopexit906.loopexit.split-lp
.Ltmp139:
	move	$s0, $a0
	b	.LBB6_622
.LBB6_558:                              # %.loopexit921.loopexit.split-lp
.Ltmp108:
	b	.LBB6_617
.LBB6_559:
.Ltmp240:
	b	.LBB6_600
.LBB6_560:
.Ltmp243:
	b	.LBB6_600
.LBB6_561:
.Ltmp246:
	b	.LBB6_600
.LBB6_562:
.Ltmp249:
	b	.LBB6_600
.LBB6_563:
.Ltmp226:
	b	.LBB6_600
.LBB6_564:
.Ltmp229:
	b	.LBB6_617
.LBB6_565:
.Ltmp195:
	b	.LBB6_600
.LBB6_566:
.Ltmp198:
	b	.LBB6_617
.LBB6_567:
.Ltmp96:
	b	.LBB6_600
.LBB6_568:
.Ltmp99:
	b	.LBB6_600
.LBB6_569:
.Ltmp102:
	b	.LBB6_600
.LBB6_570:
.Ltmp105:
	b	.LBB6_600
.LBB6_571:
.Ltmp164:
	b	.LBB6_600
.LBB6_572:
.Ltmp167:
	b	.LBB6_600
.LBB6_573:
.Ltmp133:
	b	.LBB6_600
.LBB6_574:
.Ltmp136:
	b	.LBB6_617
.LBB6_575:                              # %.loopexit876.loopexit
.Ltmp216:
	b	.LBB6_617
.LBB6_576:                              # %.loopexit.split-lp
.Ltmp213:
	b	.LBB6_617
.LBB6_577:                              # %.loopexit891.loopexit
.Ltmp185:
	b	.LBB6_617
.LBB6_578:                              # %.loopexit.split-lp872
.Ltmp210:
	b	.LBB6_617
.LBB6_579:                              # %.loopexit.split-lp882
.Ltmp182:
	b	.LBB6_611
.LBB6_580:                              # %.loopexit871
.Ltmp207:
	b	.LBB6_617
.LBB6_581:                              # %.loopexit.split-lp887
.Ltmp179:
	b	.LBB6_611
.LBB6_582:                              # %.loopexit
.Ltmp204:
	b	.LBB6_617
.LBB6_583:                              # %.loopexit886
.Ltmp176:
	b	.LBB6_611
.LBB6_584:                              # %.loopexit881
.Ltmp173:
	b	.LBB6_611
.LBB6_585:                              # %.loopexit.split-lp877
.Ltmp219:
	b	.LBB6_617
.LBB6_586:                              # %.loopexit.split-lp892
.Ltmp188:
	b	.LBB6_617
.LBB6_587:                              # %.loopexit906.loopexit
.Ltmp154:
	b	.LBB6_611
.LBB6_588:                              # %.loopexit.split-lp897
.Ltmp151:
	b	.LBB6_611
.LBB6_589:                              # %.loopexit921.loopexit
.Ltmp123:
	b	.LBB6_617
.LBB6_590:                              # %.loopexit.split-lp902
.Ltmp148:
	b	.LBB6_611
.LBB6_591:                              # %.loopexit.split-lp912
.Ltmp120:
	b	.LBB6_617
.LBB6_592:                              # %.loopexit901
.Ltmp145:
	b	.LBB6_611
.LBB6_593:                              # %.loopexit.split-lp917
.Ltmp117:
	b	.LBB6_617
.LBB6_594:                              # %.loopexit896
.Ltmp142:
	b	.LBB6_611
.LBB6_595:                              # %.loopexit916
.Ltmp114:
	b	.LBB6_617
.LBB6_596:                              # %.loopexit911
.Ltmp111:
	b	.LBB6_617
.LBB6_597:                              # %.loopexit.split-lp907
.Ltmp157:
	b	.LBB6_611
.LBB6_598:                              # %.loopexit.split-lp922
.Ltmp126:
	b	.LBB6_617
.LBB6_599:
.Ltmp258:
.LBB6_600:                              # %.loopexit921
	move	$s0, $a0
	b	.LBB6_621
.LBB6_601:                              # %.loopexit947
.Ltmp48:
	b	.LBB6_611
.LBB6_602:                              # %.loopexit942
.Ltmp39:
	b	.LBB6_611
.LBB6_603:                              # %.loopexit.split-lp948
.Ltmp51:
	move	$s0, $a0
	b	.LBB6_622
.LBB6_604:                              # %.loopexit.split-lp943
.Ltmp42:
	move	$s0, $a0
	b	.LBB6_622
.LBB6_605:                              # %.loopexit.split-lp938
.Ltmp45:
	move	$s0, $a0
	b	.LBB6_622
.LBB6_606:                              # %.loopexit937
.Ltmp36:
	b	.LBB6_611
.LBB6_607:                              # %.loopexit.split-lp953
.Ltmp57:
	move	$s0, $a0
	b	.LBB6_622
.LBB6_608:                              # %.loopexit952
.Ltmp54:
	b	.LBB6_611
.LBB6_609:                              # %.loopexit.split-lp958
.Ltmp63:
	b	.LBB6_611
.LBB6_610:                              # %.loopexit957
.Ltmp60:
.LBB6_611:                              # %.thread866
	move	$s0, $a0
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	b	.LBB6_622
.LBB6_612:                              # %.loopexit932
.Ltmp78:
	b	.LBB6_619
.LBB6_613:                              # %.loopexit927
.Ltmp75:
	b	.LBB6_619
.LBB6_614:                              # %.loopexit.split-lp933
.Ltmp252:
	move	$s0, $a0
	b	.LBB6_620
.LBB6_615:                              # %.loopexit.split-lp928
.Ltmp255:
	move	$s0, $a0
	b	.LBB6_620
.LBB6_616:
.Ltmp72:
.LBB6_617:                              # %.loopexit921
	move	$s0, $a0
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
	b	.LBB6_621
.LBB6_618:
.Ltmp81:
.LBB6_619:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit360
	move	$s0, $a0
	ld.d	$s7, $sp, 112                   # 8-byte Folded Reload
.LBB6_620:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit360
	ori	$a1, $zero, 24
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_621:                              # %.loopexit921
	beqz	$s7, .LBB6_623
.LBB6_622:                              # %.thread866
	ld.d	$a0, $sp, 24                    # 8-byte Folded Reload
	sub.d	$a1, $a0, $s7
	move	$a0, $s7
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB6_623:                              # %_ZNSt6vectorIiSaIiEED2Ev.exit623
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
	.uleb128 .Ltmp46-.Lfunc_begin1          # >> Call Site 8 <<
	.uleb128 .Ltmp47-.Ltmp46                #   Call between .Ltmp46 and .Ltmp47
	.uleb128 .Ltmp48-.Lfunc_begin1          #     jumps to .Ltmp48
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp64-.Lfunc_begin1          # >> Call Site 9 <<
	.uleb128 .Ltmp65-.Ltmp64                #   Call between .Ltmp64 and .Ltmp65
	.uleb128 .Ltmp258-.Lfunc_begin1         #     jumps to .Ltmp258
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp65-.Lfunc_begin1          # >> Call Site 10 <<
	.uleb128 .Ltmp66-.Ltmp65                #   Call between .Ltmp65 and .Ltmp66
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp66-.Lfunc_begin1          # >> Call Site 11 <<
	.uleb128 .Ltmp67-.Ltmp66                #   Call between .Ltmp66 and .Ltmp67
	.uleb128 .Ltmp258-.Lfunc_begin1         #     jumps to .Ltmp258
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp67-.Lfunc_begin1          # >> Call Site 12 <<
	.uleb128 .Ltmp68-.Ltmp67                #   Call between .Ltmp67 and .Ltmp68
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp68-.Lfunc_begin1          # >> Call Site 13 <<
	.uleb128 .Ltmp69-.Ltmp68                #   Call between .Ltmp68 and .Ltmp69
	.uleb128 .Ltmp258-.Lfunc_begin1         #     jumps to .Ltmp258
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp69-.Lfunc_begin1          # >> Call Site 14 <<
	.uleb128 .Ltmp70-.Ltmp69                #   Call between .Ltmp69 and .Ltmp70
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp70-.Lfunc_begin1          # >> Call Site 15 <<
	.uleb128 .Ltmp71-.Ltmp70                #   Call between .Ltmp70 and .Ltmp71
	.uleb128 .Ltmp72-.Lfunc_begin1          #     jumps to .Ltmp72
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp71-.Lfunc_begin1          # >> Call Site 16 <<
	.uleb128 .Ltmp73-.Ltmp71                #   Call between .Ltmp71 and .Ltmp73
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp73-.Lfunc_begin1          # >> Call Site 17 <<
	.uleb128 .Ltmp74-.Ltmp73                #   Call between .Ltmp73 and .Ltmp74
	.uleb128 .Ltmp75-.Lfunc_begin1          #     jumps to .Ltmp75
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp74-.Lfunc_begin1          # >> Call Site 18 <<
	.uleb128 .Ltmp76-.Ltmp74                #   Call between .Ltmp74 and .Ltmp76
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp76-.Lfunc_begin1          # >> Call Site 19 <<
	.uleb128 .Ltmp77-.Ltmp76                #   Call between .Ltmp76 and .Ltmp77
	.uleb128 .Ltmp78-.Lfunc_begin1          #     jumps to .Ltmp78
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp77-.Lfunc_begin1          # >> Call Site 20 <<
	.uleb128 .Ltmp79-.Ltmp77                #   Call between .Ltmp77 and .Ltmp79
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp79-.Lfunc_begin1          # >> Call Site 21 <<
	.uleb128 .Ltmp80-.Ltmp79                #   Call between .Ltmp79 and .Ltmp80
	.uleb128 .Ltmp81-.Lfunc_begin1          #     jumps to .Ltmp81
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp80-.Lfunc_begin1          # >> Call Site 22 <<
	.uleb128 .Ltmp82-.Ltmp80                #   Call between .Ltmp80 and .Ltmp82
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp82-.Lfunc_begin1          # >> Call Site 23 <<
	.uleb128 .Ltmp83-.Ltmp82                #   Call between .Ltmp82 and .Ltmp83
	.uleb128 .Ltmp258-.Lfunc_begin1         #     jumps to .Ltmp258
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp83-.Lfunc_begin1          # >> Call Site 24 <<
	.uleb128 .Ltmp84-.Ltmp83                #   Call between .Ltmp83 and .Ltmp84
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp84-.Lfunc_begin1          # >> Call Site 25 <<
	.uleb128 .Ltmp85-.Ltmp84                #   Call between .Ltmp84 and .Ltmp85
	.uleb128 .Ltmp258-.Lfunc_begin1         #     jumps to .Ltmp258
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp85-.Lfunc_begin1          # >> Call Site 26 <<
	.uleb128 .Ltmp86-.Ltmp85                #   Call between .Ltmp85 and .Ltmp86
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp86-.Lfunc_begin1          # >> Call Site 27 <<
	.uleb128 .Ltmp87-.Ltmp86                #   Call between .Ltmp86 and .Ltmp87
	.uleb128 .Ltmp105-.Lfunc_begin1         #     jumps to .Ltmp105
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp87-.Lfunc_begin1          # >> Call Site 28 <<
	.uleb128 .Ltmp88-.Ltmp87                #   Call between .Ltmp87 and .Ltmp88
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp88-.Lfunc_begin1          # >> Call Site 29 <<
	.uleb128 .Ltmp89-.Ltmp88                #   Call between .Ltmp88 and .Ltmp89
	.uleb128 .Ltmp102-.Lfunc_begin1         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp89-.Lfunc_begin1          # >> Call Site 30 <<
	.uleb128 .Ltmp90-.Ltmp89                #   Call between .Ltmp89 and .Ltmp90
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp90-.Lfunc_begin1          # >> Call Site 31 <<
	.uleb128 .Ltmp91-.Ltmp90                #   Call between .Ltmp90 and .Ltmp91
	.uleb128 .Ltmp99-.Lfunc_begin1          #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp91-.Lfunc_begin1          # >> Call Site 32 <<
	.uleb128 .Ltmp92-.Ltmp91                #   Call between .Ltmp91 and .Ltmp92
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp92-.Lfunc_begin1          # >> Call Site 33 <<
	.uleb128 .Ltmp93-.Ltmp92                #   Call between .Ltmp92 and .Ltmp93
	.uleb128 .Ltmp96-.Lfunc_begin1          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp93-.Lfunc_begin1          # >> Call Site 34 <<
	.uleb128 .Ltmp121-.Ltmp93               #   Call between .Ltmp93 and .Ltmp121
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp121-.Lfunc_begin1         # >> Call Site 35 <<
	.uleb128 .Ltmp122-.Ltmp121              #   Call between .Ltmp121 and .Ltmp122
	.uleb128 .Ltmp123-.Lfunc_begin1         #     jumps to .Ltmp123
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp122-.Lfunc_begin1         # >> Call Site 36 <<
	.uleb128 .Ltmp109-.Ltmp122              #   Call between .Ltmp122 and .Ltmp109
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp109-.Lfunc_begin1         # >> Call Site 37 <<
	.uleb128 .Ltmp110-.Ltmp109              #   Call between .Ltmp109 and .Ltmp110
	.uleb128 .Ltmp111-.Lfunc_begin1         #     jumps to .Ltmp111
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp110-.Lfunc_begin1         # >> Call Site 38 <<
	.uleb128 .Ltmp112-.Ltmp110              #   Call between .Ltmp110 and .Ltmp112
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp112-.Lfunc_begin1         # >> Call Site 39 <<
	.uleb128 .Ltmp113-.Ltmp112              #   Call between .Ltmp112 and .Ltmp113
	.uleb128 .Ltmp114-.Lfunc_begin1         #     jumps to .Ltmp114
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp113-.Lfunc_begin1         # >> Call Site 40 <<
	.uleb128 .Ltmp127-.Ltmp113              #   Call between .Ltmp113 and .Ltmp127
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp127-.Lfunc_begin1         # >> Call Site 41 <<
	.uleb128 .Ltmp128-.Ltmp127              #   Call between .Ltmp127 and .Ltmp128
	.uleb128 .Ltmp136-.Lfunc_begin1         #     jumps to .Ltmp136
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp128-.Lfunc_begin1         # >> Call Site 42 <<
	.uleb128 .Ltmp129-.Ltmp128              #   Call between .Ltmp128 and .Ltmp129
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp129-.Lfunc_begin1         # >> Call Site 43 <<
	.uleb128 .Ltmp130-.Ltmp129              #   Call between .Ltmp129 and .Ltmp130
	.uleb128 .Ltmp133-.Lfunc_begin1         #     jumps to .Ltmp133
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp130-.Lfunc_begin1         # >> Call Site 44 <<
	.uleb128 .Ltmp152-.Ltmp130              #   Call between .Ltmp130 and .Ltmp152
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp152-.Lfunc_begin1         # >> Call Site 45 <<
	.uleb128 .Ltmp153-.Ltmp152              #   Call between .Ltmp152 and .Ltmp153
	.uleb128 .Ltmp154-.Lfunc_begin1         #     jumps to .Ltmp154
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp153-.Lfunc_begin1         # >> Call Site 46 <<
	.uleb128 .Ltmp140-.Ltmp153              #   Call between .Ltmp153 and .Ltmp140
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp140-.Lfunc_begin1         # >> Call Site 47 <<
	.uleb128 .Ltmp141-.Ltmp140              #   Call between .Ltmp140 and .Ltmp141
	.uleb128 .Ltmp142-.Lfunc_begin1         #     jumps to .Ltmp142
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp141-.Lfunc_begin1         # >> Call Site 48 <<
	.uleb128 .Ltmp143-.Ltmp141              #   Call between .Ltmp141 and .Ltmp143
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp143-.Lfunc_begin1         # >> Call Site 49 <<
	.uleb128 .Ltmp144-.Ltmp143              #   Call between .Ltmp143 and .Ltmp144
	.uleb128 .Ltmp145-.Lfunc_begin1         #     jumps to .Ltmp145
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp144-.Lfunc_begin1         # >> Call Site 50 <<
	.uleb128 .Ltmp158-.Ltmp144              #   Call between .Ltmp144 and .Ltmp158
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp158-.Lfunc_begin1         # >> Call Site 51 <<
	.uleb128 .Ltmp159-.Ltmp158              #   Call between .Ltmp158 and .Ltmp159
	.uleb128 .Ltmp167-.Lfunc_begin1         #     jumps to .Ltmp167
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp159-.Lfunc_begin1         # >> Call Site 52 <<
	.uleb128 .Ltmp160-.Ltmp159              #   Call between .Ltmp159 and .Ltmp160
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp160-.Lfunc_begin1         # >> Call Site 53 <<
	.uleb128 .Ltmp161-.Ltmp160              #   Call between .Ltmp160 and .Ltmp161
	.uleb128 .Ltmp164-.Lfunc_begin1         #     jumps to .Ltmp164
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp161-.Lfunc_begin1         # >> Call Site 54 <<
	.uleb128 .Ltmp183-.Ltmp161              #   Call between .Ltmp161 and .Ltmp183
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp183-.Lfunc_begin1         # >> Call Site 55 <<
	.uleb128 .Ltmp184-.Ltmp183              #   Call between .Ltmp183 and .Ltmp184
	.uleb128 .Ltmp185-.Lfunc_begin1         #     jumps to .Ltmp185
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp184-.Lfunc_begin1         # >> Call Site 56 <<
	.uleb128 .Ltmp171-.Ltmp184              #   Call between .Ltmp184 and .Ltmp171
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp171-.Lfunc_begin1         # >> Call Site 57 <<
	.uleb128 .Ltmp172-.Ltmp171              #   Call between .Ltmp171 and .Ltmp172
	.uleb128 .Ltmp173-.Lfunc_begin1         #     jumps to .Ltmp173
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp172-.Lfunc_begin1         # >> Call Site 58 <<
	.uleb128 .Ltmp174-.Ltmp172              #   Call between .Ltmp172 and .Ltmp174
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp174-.Lfunc_begin1         # >> Call Site 59 <<
	.uleb128 .Ltmp175-.Ltmp174              #   Call between .Ltmp174 and .Ltmp175
	.uleb128 .Ltmp176-.Lfunc_begin1         #     jumps to .Ltmp176
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp175-.Lfunc_begin1         # >> Call Site 60 <<
	.uleb128 .Ltmp189-.Ltmp175              #   Call between .Ltmp175 and .Ltmp189
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp189-.Lfunc_begin1         # >> Call Site 61 <<
	.uleb128 .Ltmp190-.Ltmp189              #   Call between .Ltmp189 and .Ltmp190
	.uleb128 .Ltmp198-.Lfunc_begin1         #     jumps to .Ltmp198
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp190-.Lfunc_begin1         # >> Call Site 62 <<
	.uleb128 .Ltmp214-.Ltmp190              #   Call between .Ltmp190 and .Ltmp214
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp214-.Lfunc_begin1         # >> Call Site 63 <<
	.uleb128 .Ltmp215-.Ltmp214              #   Call between .Ltmp214 and .Ltmp215
	.uleb128 .Ltmp216-.Lfunc_begin1         #     jumps to .Ltmp216
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp215-.Lfunc_begin1         # >> Call Site 64 <<
	.uleb128 .Ltmp202-.Ltmp215              #   Call between .Ltmp215 and .Ltmp202
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp202-.Lfunc_begin1         # >> Call Site 65 <<
	.uleb128 .Ltmp203-.Ltmp202              #   Call between .Ltmp202 and .Ltmp203
	.uleb128 .Ltmp204-.Lfunc_begin1         #     jumps to .Ltmp204
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp203-.Lfunc_begin1         # >> Call Site 66 <<
	.uleb128 .Ltmp205-.Ltmp203              #   Call between .Ltmp203 and .Ltmp205
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp205-.Lfunc_begin1         # >> Call Site 67 <<
	.uleb128 .Ltmp206-.Ltmp205              #   Call between .Ltmp205 and .Ltmp206
	.uleb128 .Ltmp207-.Lfunc_begin1         #     jumps to .Ltmp207
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp206-.Lfunc_begin1         # >> Call Site 68 <<
	.uleb128 .Ltmp191-.Ltmp206              #   Call between .Ltmp206 and .Ltmp191
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp191-.Lfunc_begin1         # >> Call Site 69 <<
	.uleb128 .Ltmp192-.Ltmp191              #   Call between .Ltmp191 and .Ltmp192
	.uleb128 .Ltmp195-.Lfunc_begin1         #     jumps to .Ltmp195
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp192-.Lfunc_begin1         # >> Call Site 70 <<
	.uleb128 .Ltmp220-.Ltmp192              #   Call between .Ltmp192 and .Ltmp220
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp220-.Lfunc_begin1         # >> Call Site 71 <<
	.uleb128 .Ltmp221-.Ltmp220              #   Call between .Ltmp220 and .Ltmp221
	.uleb128 .Ltmp229-.Lfunc_begin1         #     jumps to .Ltmp229
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp221-.Lfunc_begin1         # >> Call Site 72 <<
	.uleb128 .Ltmp222-.Ltmp221              #   Call between .Ltmp221 and .Ltmp222
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp222-.Lfunc_begin1         # >> Call Site 73 <<
	.uleb128 .Ltmp223-.Ltmp222              #   Call between .Ltmp222 and .Ltmp223
	.uleb128 .Ltmp226-.Lfunc_begin1         #     jumps to .Ltmp226
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp223-.Lfunc_begin1         # >> Call Site 74 <<
	.uleb128 .Ltmp230-.Ltmp223              #   Call between .Ltmp223 and .Ltmp230
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp230-.Lfunc_begin1         # >> Call Site 75 <<
	.uleb128 .Ltmp231-.Ltmp230              #   Call between .Ltmp230 and .Ltmp231
	.uleb128 .Ltmp249-.Lfunc_begin1         #     jumps to .Ltmp249
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp231-.Lfunc_begin1         # >> Call Site 76 <<
	.uleb128 .Ltmp232-.Ltmp231              #   Call between .Ltmp231 and .Ltmp232
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp232-.Lfunc_begin1         # >> Call Site 77 <<
	.uleb128 .Ltmp233-.Ltmp232              #   Call between .Ltmp232 and .Ltmp233
	.uleb128 .Ltmp246-.Lfunc_begin1         #     jumps to .Ltmp246
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp233-.Lfunc_begin1         # >> Call Site 78 <<
	.uleb128 .Ltmp234-.Ltmp233              #   Call between .Ltmp233 and .Ltmp234
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp234-.Lfunc_begin1         # >> Call Site 79 <<
	.uleb128 .Ltmp235-.Ltmp234              #   Call between .Ltmp234 and .Ltmp235
	.uleb128 .Ltmp243-.Lfunc_begin1         #     jumps to .Ltmp243
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp235-.Lfunc_begin1         # >> Call Site 80 <<
	.uleb128 .Ltmp236-.Ltmp235              #   Call between .Ltmp235 and .Ltmp236
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp236-.Lfunc_begin1         # >> Call Site 81 <<
	.uleb128 .Ltmp237-.Ltmp236              #   Call between .Ltmp236 and .Ltmp237
	.uleb128 .Ltmp240-.Lfunc_begin1         #     jumps to .Ltmp240
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp237-.Lfunc_begin1         # >> Call Site 82 <<
	.uleb128 .Ltmp106-.Ltmp237              #   Call between .Ltmp237 and .Ltmp106
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp106-.Lfunc_begin1         # >> Call Site 83 <<
	.uleb128 .Ltmp107-.Ltmp106              #   Call between .Ltmp106 and .Ltmp107
	.uleb128 .Ltmp108-.Lfunc_begin1         #     jumps to .Ltmp108
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp107-.Lfunc_begin1         # >> Call Site 84 <<
	.uleb128 .Ltmp137-.Ltmp107              #   Call between .Ltmp107 and .Ltmp137
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp137-.Lfunc_begin1         # >> Call Site 85 <<
	.uleb128 .Ltmp138-.Ltmp137              #   Call between .Ltmp137 and .Ltmp138
	.uleb128 .Ltmp139-.Lfunc_begin1         #     jumps to .Ltmp139
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp138-.Lfunc_begin1         # >> Call Site 86 <<
	.uleb128 .Ltmp168-.Ltmp138              #   Call between .Ltmp138 and .Ltmp168
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp168-.Lfunc_begin1         # >> Call Site 87 <<
	.uleb128 .Ltmp169-.Ltmp168              #   Call between .Ltmp168 and .Ltmp169
	.uleb128 .Ltmp170-.Lfunc_begin1         #     jumps to .Ltmp170
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp169-.Lfunc_begin1         # >> Call Site 88 <<
	.uleb128 .Ltmp199-.Ltmp169              #   Call between .Ltmp169 and .Ltmp199
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp199-.Lfunc_begin1         # >> Call Site 89 <<
	.uleb128 .Ltmp200-.Ltmp199              #   Call between .Ltmp199 and .Ltmp200
	.uleb128 .Ltmp201-.Lfunc_begin1         #     jumps to .Ltmp201
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp200-.Lfunc_begin1         # >> Call Site 90 <<
	.uleb128 .Ltmp253-.Ltmp200              #   Call between .Ltmp200 and .Ltmp253
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp253-.Lfunc_begin1         # >> Call Site 91 <<
	.uleb128 .Ltmp254-.Ltmp253              #   Call between .Ltmp253 and .Ltmp254
	.uleb128 .Ltmp255-.Lfunc_begin1         #     jumps to .Ltmp255
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp250-.Lfunc_begin1         # >> Call Site 92 <<
	.uleb128 .Ltmp251-.Ltmp250              #   Call between .Ltmp250 and .Ltmp251
	.uleb128 .Ltmp252-.Lfunc_begin1         #     jumps to .Ltmp252
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp61-.Lfunc_begin1          # >> Call Site 93 <<
	.uleb128 .Ltmp62-.Ltmp61                #   Call between .Ltmp61 and .Ltmp62
	.uleb128 .Ltmp63-.Lfunc_begin1          #     jumps to .Ltmp63
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp55-.Lfunc_begin1          # >> Call Site 94 <<
	.uleb128 .Ltmp56-.Ltmp55                #   Call between .Ltmp55 and .Ltmp56
	.uleb128 .Ltmp57-.Lfunc_begin1          #     jumps to .Ltmp57
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp43-.Lfunc_begin1          # >> Call Site 95 <<
	.uleb128 .Ltmp44-.Ltmp43                #   Call between .Ltmp43 and .Ltmp44
	.uleb128 .Ltmp45-.Lfunc_begin1          #     jumps to .Ltmp45
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp40-.Lfunc_begin1          # >> Call Site 96 <<
	.uleb128 .Ltmp41-.Ltmp40                #   Call between .Ltmp40 and .Ltmp41
	.uleb128 .Ltmp42-.Lfunc_begin1          #     jumps to .Ltmp42
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp49-.Lfunc_begin1          # >> Call Site 97 <<
	.uleb128 .Ltmp50-.Ltmp49                #   Call between .Ltmp49 and .Ltmp50
	.uleb128 .Ltmp51-.Lfunc_begin1          #     jumps to .Ltmp51
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp256-.Lfunc_begin1         # >> Call Site 98 <<
	.uleb128 .Ltmp257-.Ltmp256              #   Call between .Ltmp256 and .Ltmp257
	.uleb128 .Ltmp258-.Lfunc_begin1         #     jumps to .Ltmp258
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp257-.Lfunc_begin1         # >> Call Site 99 <<
	.uleb128 .Ltmp124-.Ltmp257              #   Call between .Ltmp257 and .Ltmp124
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp124-.Lfunc_begin1         # >> Call Site 100 <<
	.uleb128 .Ltmp125-.Ltmp124              #   Call between .Ltmp124 and .Ltmp125
	.uleb128 .Ltmp126-.Lfunc_begin1         #     jumps to .Ltmp126
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp155-.Lfunc_begin1         # >> Call Site 101 <<
	.uleb128 .Ltmp156-.Ltmp155              #   Call between .Ltmp155 and .Ltmp156
	.uleb128 .Ltmp157-.Lfunc_begin1         #     jumps to .Ltmp157
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp115-.Lfunc_begin1         # >> Call Site 102 <<
	.uleb128 .Ltmp116-.Ltmp115              #   Call between .Ltmp115 and .Ltmp116
	.uleb128 .Ltmp117-.Lfunc_begin1         #     jumps to .Ltmp117
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp118-.Lfunc_begin1         # >> Call Site 103 <<
	.uleb128 .Ltmp119-.Ltmp118              #   Call between .Ltmp118 and .Ltmp119
	.uleb128 .Ltmp120-.Lfunc_begin1         #     jumps to .Ltmp120
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp146-.Lfunc_begin1         # >> Call Site 104 <<
	.uleb128 .Ltmp147-.Ltmp146              #   Call between .Ltmp146 and .Ltmp147
	.uleb128 .Ltmp148-.Lfunc_begin1         #     jumps to .Ltmp148
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp149-.Lfunc_begin1         # >> Call Site 105 <<
	.uleb128 .Ltmp150-.Ltmp149              #   Call between .Ltmp149 and .Ltmp150
	.uleb128 .Ltmp151-.Lfunc_begin1         #     jumps to .Ltmp151
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp186-.Lfunc_begin1         # >> Call Site 106 <<
	.uleb128 .Ltmp187-.Ltmp186              #   Call between .Ltmp186 and .Ltmp187
	.uleb128 .Ltmp188-.Lfunc_begin1         #     jumps to .Ltmp188
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp217-.Lfunc_begin1         # >> Call Site 107 <<
	.uleb128 .Ltmp218-.Ltmp217              #   Call between .Ltmp217 and .Ltmp218
	.uleb128 .Ltmp219-.Lfunc_begin1         #     jumps to .Ltmp219
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp177-.Lfunc_begin1         # >> Call Site 108 <<
	.uleb128 .Ltmp178-.Ltmp177              #   Call between .Ltmp177 and .Ltmp178
	.uleb128 .Ltmp179-.Lfunc_begin1         #     jumps to .Ltmp179
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp180-.Lfunc_begin1         # >> Call Site 109 <<
	.uleb128 .Ltmp181-.Ltmp180              #   Call between .Ltmp180 and .Ltmp181
	.uleb128 .Ltmp182-.Lfunc_begin1         #     jumps to .Ltmp182
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp208-.Lfunc_begin1         # >> Call Site 110 <<
	.uleb128 .Ltmp209-.Ltmp208              #   Call between .Ltmp208 and .Ltmp209
	.uleb128 .Ltmp210-.Lfunc_begin1         #     jumps to .Ltmp210
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp211-.Lfunc_begin1         # >> Call Site 111 <<
	.uleb128 .Ltmp212-.Ltmp211              #   Call between .Ltmp211 and .Ltmp212
	.uleb128 .Ltmp213-.Lfunc_begin1         #     jumps to .Ltmp213
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp134-.Lfunc_begin1         # >> Call Site 112 <<
	.uleb128 .Ltmp135-.Ltmp134              #   Call between .Ltmp134 and .Ltmp135
	.uleb128 .Ltmp136-.Lfunc_begin1         #     jumps to .Ltmp136
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp131-.Lfunc_begin1         # >> Call Site 113 <<
	.uleb128 .Ltmp132-.Ltmp131              #   Call between .Ltmp131 and .Ltmp132
	.uleb128 .Ltmp133-.Lfunc_begin1         #     jumps to .Ltmp133
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp165-.Lfunc_begin1         # >> Call Site 114 <<
	.uleb128 .Ltmp166-.Ltmp165              #   Call between .Ltmp165 and .Ltmp166
	.uleb128 .Ltmp167-.Lfunc_begin1         #     jumps to .Ltmp167
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp162-.Lfunc_begin1         # >> Call Site 115 <<
	.uleb128 .Ltmp163-.Ltmp162              #   Call between .Ltmp162 and .Ltmp163
	.uleb128 .Ltmp164-.Lfunc_begin1         #     jumps to .Ltmp164
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp103-.Lfunc_begin1         # >> Call Site 116 <<
	.uleb128 .Ltmp104-.Ltmp103              #   Call between .Ltmp103 and .Ltmp104
	.uleb128 .Ltmp105-.Lfunc_begin1         #     jumps to .Ltmp105
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp100-.Lfunc_begin1         # >> Call Site 117 <<
	.uleb128 .Ltmp101-.Ltmp100              #   Call between .Ltmp100 and .Ltmp101
	.uleb128 .Ltmp102-.Lfunc_begin1         #     jumps to .Ltmp102
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp97-.Lfunc_begin1          # >> Call Site 118 <<
	.uleb128 .Ltmp98-.Ltmp97                #   Call between .Ltmp97 and .Ltmp98
	.uleb128 .Ltmp99-.Lfunc_begin1          #     jumps to .Ltmp99
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp94-.Lfunc_begin1          # >> Call Site 119 <<
	.uleb128 .Ltmp95-.Ltmp94                #   Call between .Ltmp94 and .Ltmp95
	.uleb128 .Ltmp96-.Lfunc_begin1          #     jumps to .Ltmp96
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp196-.Lfunc_begin1         # >> Call Site 120 <<
	.uleb128 .Ltmp197-.Ltmp196              #   Call between .Ltmp196 and .Ltmp197
	.uleb128 .Ltmp198-.Lfunc_begin1         #     jumps to .Ltmp198
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp193-.Lfunc_begin1         # >> Call Site 121 <<
	.uleb128 .Ltmp194-.Ltmp193              #   Call between .Ltmp193 and .Ltmp194
	.uleb128 .Ltmp195-.Lfunc_begin1         #     jumps to .Ltmp195
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp227-.Lfunc_begin1         # >> Call Site 122 <<
	.uleb128 .Ltmp228-.Ltmp227              #   Call between .Ltmp227 and .Ltmp228
	.uleb128 .Ltmp229-.Lfunc_begin1         #     jumps to .Ltmp229
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp224-.Lfunc_begin1         # >> Call Site 123 <<
	.uleb128 .Ltmp225-.Ltmp224              #   Call between .Ltmp224 and .Ltmp225
	.uleb128 .Ltmp226-.Lfunc_begin1         #     jumps to .Ltmp226
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp247-.Lfunc_begin1         # >> Call Site 124 <<
	.uleb128 .Ltmp248-.Ltmp247              #   Call between .Ltmp247 and .Ltmp248
	.uleb128 .Ltmp249-.Lfunc_begin1         #     jumps to .Ltmp249
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp244-.Lfunc_begin1         # >> Call Site 125 <<
	.uleb128 .Ltmp245-.Ltmp244              #   Call between .Ltmp244 and .Ltmp245
	.uleb128 .Ltmp246-.Lfunc_begin1         #     jumps to .Ltmp246
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp241-.Lfunc_begin1         # >> Call Site 126 <<
	.uleb128 .Ltmp242-.Ltmp241              #   Call between .Ltmp241 and .Ltmp242
	.uleb128 .Ltmp243-.Lfunc_begin1         #     jumps to .Ltmp243
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp238-.Lfunc_begin1         # >> Call Site 127 <<
	.uleb128 .Ltmp239-.Ltmp238              #   Call between .Ltmp238 and .Ltmp239
	.uleb128 .Ltmp240-.Lfunc_begin1         #     jumps to .Ltmp240
	.byte	0                               #   On action: cleanup
	.uleb128 .Ltmp239-.Lfunc_begin1         # >> Call Site 128 <<
	.uleb128 .Lfunc_end6-.Ltmp239           #   Call between .Ltmp239 and .Lfunc_end6
	.byte	0                               #     has no landing pad
	.byte	0                               #   On action: cleanup
.Lcst_end1:
	.p2align	2, 0x0
                                        # -- End function
	.section	.text._ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag,"axG",@progbits,_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag,comdat
	.weak	_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag # -- Begin function _ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag
	.p2align	5
	.type	_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag,@function
_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag: # @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag
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
	beq	$a3, $a2, .LBB7_13
# %bb.1:
	move	$s1, $a2
	move	$fp, $a1
	move	$s0, $a0
	ld.d	$s7, $a0, 16
	ld.d	$s2, $a0, 8
	sub.d	$s3, $a3, $a2
	sub.d	$a0, $s7, $s2
	srai.d	$s5, $s3, 2
	bgeu	$a0, $s3, .LBB7_14
# %bb.2:
	ld.d	$s4, $s0, 0
	sub.d	$a0, $s2, $s4
	srai.d	$a1, $a0, 2
	addi.w	$a0, $zero, -1
	lu52i.d	$a0, $a0, 511
	sub.d	$a2, $a0, $a1
	bltu	$a2, $s5, .LBB7_46
# %bb.3:                                # %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit
	sltu	$a2, $s5, $a1
	masknez	$a3, $s5, $a2
	maskeqz	$a2, $a1, $a2
	or	$a2, $a2, $a3
	add.d	$a1, $a2, $a1
	sltu	$a2, $a1, $a2
	sltu	$a3, $a1, $a0
	maskeqz	$a1, $a1, $a3
	masknez	$a3, $a0, $a3
	or	$a1, $a1, $a3
	masknez	$a1, $a1, $a2
	maskeqz	$a0, $a0, $a2
	or	$s8, $a0, $a1
	beqz	$s8, .LBB7_28
# %bb.4:
	slli.d	$a0, $s8, 2
	pcaddu18i	$ra, %call36(_Znwm)
	jirl	$ra, $ra, 0
	move	$s5, $a0
	sub.d	$s6, $fp, $s4
	ori	$a0, $zero, 5
	blt	$s6, $a0, .LBB7_29
.LBB7_5:
	move	$a0, $s5
	move	$a1, $s4
	move	$a2, $s6
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB7_6:
	ori	$a0, $zero, 5
	add.d	$s6, $s5, $s6
	blt	$s3, $a0, .LBB7_31
# %bb.7:
	move	$a0, $s6
	move	$a1, $s1
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB7_8:
	sub.d	$s1, $s2, $fp
	ori	$a0, $zero, 5
	add.d	$s2, $s6, $s3
	blt	$s1, $a0, .LBB7_33
# %bb.9:
	move	$a0, $s2
	move	$a1, $fp
	move	$a2, $s1
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB7_10:
	add.d	$fp, $s2, $s1
	beqz	$s4, .LBB7_12
# %bb.11:
	sub.d	$a1, $s7, $s4
	move	$a0, $s4
	pcaddu18i	$ra, %call36(_ZdlPvm)
	jirl	$ra, $ra, 0
.LBB7_12:                               # %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit
	st.d	$s5, $s0, 0
	st.d	$fp, $s0, 8
	alsl.d	$a0, $s8, $s5, 2
	st.d	$a0, $s0, 16
.LBB7_13:                               # %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit
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
.LBB7_14:
	sub.d	$s4, $s2, $fp
	srai.d	$s6, $s4, 2
	bgeu	$s5, $s6, .LBB7_21
# %bb.15:
	slli.d	$a0, $s5, 2
	ori	$a1, $zero, 5
	sub.d	$s4, $s2, $a0
	blt	$s3, $a1, .LBB7_35
# %bb.16:
	move	$a0, $s2
	move	$a1, $s4
	move	$a2, $s3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
.LBB7_17:                               # %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit
	add.d	$a1, $a0, $s3
	sub.d	$a2, $s4, $fp
	srai.d	$a0, $a2, 2
	ori	$a3, $zero, 2
	st.d	$a1, $s0, 8
	blt	$a0, $a3, .LBB7_37
# %bb.18:
	slli.d	$a0, $a0, 2
	sub.d	$a0, $s2, $a0
	move	$a1, $fp
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
.LBB7_19:                               # %_ZSt13move_backwardIPiS0_ET0_T_S2_S1_.exit
	ori	$a0, $zero, 5
	blt	$s3, $a0, .LBB7_39
# %bb.20:
	move	$a0, $fp
	move	$a1, $s1
	move	$a2, $s3
	b	.LBB7_27
.LBB7_21:                               # %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElEvRT_T0_St26random_access_iterator_tag.exit
	add.d	$s3, $s1, $s4
	sub.d	$a2, $a3, $s3
	ori	$a0, $zero, 5
	blt	$a2, $a0, .LBB7_40
# %bb.22:
	move	$a0, $s2
	move	$a1, $s3
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.d	$s2, $s0, 8
.LBB7_23:                               # %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_iET0_T_S8_S7_RSaIT1_E.exit
	sub.d	$a0, $s5, $s6
	alsl.d	$a0, $a0, $s2, 2
	ori	$a1, $zero, 5
	st.d	$a0, $s0, 8
	blt	$s4, $a1, .LBB7_42
# %bb.24:
	move	$a1, $fp
	move	$a2, $s4
	pcaddu18i	$ra, %call36(memmove)
	jirl	$ra, $ra, 0
	ld.d	$a0, $s0, 8
.LBB7_25:                               # %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit52
	add.d	$a0, $a0, $s4
	sub.d	$a2, $s3, $s1
	ori	$a1, $zero, 5
	st.d	$a0, $s0, 8
	blt	$a2, $a1, .LBB7_44
# %bb.26:
	move	$a0, $fp
	move	$a1, $s1
.LBB7_27:
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
	pcaddu18i	$t8, %call36(memmove)
	jr	$t8
.LBB7_28:
	move	$s5, $zero
	sub.d	$s6, $fp, $s4
	ori	$a0, $zero, 5
	bge	$s6, $a0, .LBB7_5
.LBB7_29:
	ori	$a0, $zero, 4
	bne	$s6, $a0, .LBB7_6
# %bb.30:
	ld.w	$a0, $s4, 0
	st.w	$a0, $s5, 0
	b	.LBB7_6
.LBB7_31:
	ori	$a0, $zero, 4
	bne	$s3, $a0, .LBB7_8
# %bb.32:
	ld.w	$a0, $s1, 0
	st.w	$a0, $s6, 0
	b	.LBB7_8
.LBB7_33:
	ori	$a0, $zero, 4
	bne	$s1, $a0, .LBB7_10
# %bb.34:
	ld.w	$a0, $fp, 0
	st.w	$a0, $s2, 0
	b	.LBB7_10
.LBB7_35:
	ori	$a1, $zero, 4
	move	$a0, $s2
	bne	$s3, $a1, .LBB7_17
# %bb.36:
	ld.w	$a0, $s4, 0
	st.w	$a0, $s2, 0
	move	$a0, $s2
	b	.LBB7_17
.LBB7_37:
	ori	$a0, $zero, 4
	bne	$a2, $a0, .LBB7_19
# %bb.38:
	ld.w	$a0, $fp, 0
	st.w	$a0, $s2, -4
	b	.LBB7_19
.LBB7_39:
	ori	$a0, $zero, 4
	bne	$s3, $a0, .LBB7_13
	b	.LBB7_45
.LBB7_40:
	ori	$a0, $zero, 4
	bne	$a2, $a0, .LBB7_23
# %bb.41:
	ld.w	$a0, $s3, 0
	st.w	$a0, $s2, 0
	b	.LBB7_23
.LBB7_42:
	ori	$a1, $zero, 4
	bne	$s4, $a1, .LBB7_25
# %bb.43:
	ld.w	$a1, $fp, 0
	st.w	$a1, $a0, 0
	b	.LBB7_25
.LBB7_44:
	ori	$a0, $zero, 4
	bne	$a2, $a0, .LBB7_13
.LBB7_45:
	ld.w	$a0, $s1, 0
	st.w	$a0, $fp, 0
	b	.LBB7_13
.LBB7_46:
	pcalau12i	$a0, %pc_hi20(.L.str.16)
	addi.d	$a0, $a0, %pc_lo12(.L.str.16)
	pcaddu18i	$ra, %call36(_ZSt20__throw_length_errorPKc)
	jirl	$ra, $ra, 0
.Lfunc_end7:
	.size	_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag, .Lfunc_end7-_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag
	.cfi_endproc
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
.set _ZN7GenMeshC1EPK9InputFile, _ZN7GenMeshC2EPK9InputFile
	.globl	_ZN7GenMeshD1Ev
	.type	_ZN7GenMeshD1Ev,@function
.set _ZN7GenMeshD1Ev, _ZN7GenMeshD2Ev
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
